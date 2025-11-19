@interface ICBluetoothKeyboardHintViewController
- (BOOL)forceShow;
- (BOOL)hasAttachedBluetoothKeyboard;
- (BOOL)hasEditedNote;
- (BOOL)hasShownHint;
- (BOOL)shouldShow;
- (ICBluetoothKeyboardHintViewController)initWithRootViewController:(id)a3;
- (ICBluetoothKeyboardHintViewController)initWithRootViewController:(id)a3 userDefaults:(id)a4 buttonAction:(id)a5;
- (void)didEditNote;
- (void)show;
- (void)showIfNeeded;
- (void)updateHardwareKeyboardMode;
- (void)viewDidLoad;
@end

@implementation ICBluetoothKeyboardHintViewController

- (ICBluetoothKeyboardHintViewController)initWithRootViewController:(id)a3
{
  v4 = MEMORY[0x277CBEBD0];
  v5 = a3;
  v6 = [v4 standardUserDefaults];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__ICBluetoothKeyboardHintViewController_initWithRootViewController___block_invoke;
  v9[3] = &unk_2781ABCF8;
  v10 = self;
  v7 = [(ICBluetoothKeyboardHintViewController *)v10 initWithRootViewController:v5 userDefaults:v6 buttonAction:v9];

  return v7;
}

uint64_t __68__ICBluetoothKeyboardHintViewController_initWithRootViewController___block_invoke(uint64_t a1)
{
  [MEMORY[0x277D75128] ic_openBluetoothSettings];
  v2 = *(a1 + 32);

  return [v2 hide];
}

- (ICBluetoothKeyboardHintViewController)initWithRootViewController:(id)a3 userDefaults:(id)a4 buttonAction:(id)a5
{
  v20 = a4;
  v9 = MEMORY[0x277CCA8D8];
  v10 = a5;
  v11 = a3;
  v12 = [v9 mainBundle];
  v13 = [v12 localizedStringForKey:@"Connect a Keyboard" value:&stru_282757698 table:0];
  v14 = [MEMORY[0x277CCA8D8] mainBundle];
  v15 = [v14 localizedStringForKey:@"Pair a Bluetooth keyboard or trackpad to make quick edits." value:&stru_282757698 table:0];
  v16 = [MEMORY[0x277CCA8D8] mainBundle];
  v17 = [v16 localizedStringForKey:@"Go to Settings" value:&stru_282757698 table:0];
  v21.receiver = self;
  v21.super_class = ICBluetoothKeyboardHintViewController;
  v18 = [(ICHintViewController *)&v21 initWithRootViewController:v11 showsCloseButton:1 hintTitle:v13 hintSubtitle:v15 buttonTitle:v17 buttonAction:v10];

  if (v18)
  {
    objc_storeStrong(&v18->_userDefaults, a4);
  }

  return v18;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = ICBluetoothKeyboardHintViewController;
  [(ICHintViewController *)&v4 viewDidLoad];
  [(ICBluetoothKeyboardHintViewController *)self updateHardwareKeyboardMode];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel_keyboardDidChangeFrame_ name:*MEMORY[0x277D76B98] object:0];
}

- (void)didEditNote
{
  [(ICBluetoothKeyboardHintViewController *)self updateHardwareKeyboardMode];
  [(ICBluetoothKeyboardHintViewController *)self showIfNeeded];
  v3 = [(ICBluetoothKeyboardHintViewController *)self userDefaults];
  [v3 setBool:1 forKey:@"bluetoothKeyboardHintDidEditNote"];
}

- (BOOL)shouldShow
{
  if ([(ICBluetoothKeyboardHintViewController *)self forceShow])
  {
    LOBYTE(v3) = 1;
  }

  else if ([(ICBluetoothKeyboardHintViewController *)self hasAttachedHardwareKeyboard]|| [(ICBluetoothKeyboardHintViewController *)self isInHardwareKeyboardMode])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = [(ICBluetoothKeyboardHintViewController *)self hasEditedNote];
    if (v3)
    {
      LOBYTE(v3) = ![(ICBluetoothKeyboardHintViewController *)self hasShownHint];
    }
  }

  return v3;
}

- (void)showIfNeeded
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICBluetoothKeyboardHintViewController shouldShow](self, "shouldShow")}];
    v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICBluetoothKeyboardHintViewController forceShow](self, "forceShow")}];
    v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICBluetoothKeyboardHintViewController isInHardwareKeyboardMode](self, "isInHardwareKeyboardMode")}];
    v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICBluetoothKeyboardHintViewController hasAttachedHardwareKeyboard](self, "hasAttachedHardwareKeyboard")}];
    v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICBluetoothKeyboardHintViewController hasEditedNote](self, "hasEditedNote")}];
    v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICBluetoothKeyboardHintViewController hasShownHint](self, "hasShownHint")}];
    v10 = 138413570;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    v18 = 2112;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&dword_2151A1000, v3, OS_LOG_TYPE_DEFAULT, "Bluetooth Keyboard Hint Should Show: %@ (forceShow: %@, inHardwareKeyboardMode: %@, hasAttachedHardwareKeyboard: %@, hasEditedNote: %@, hasShownHint: %@)", &v10, 0x3Eu);
  }

  if ([(ICBluetoothKeyboardHintViewController *)self shouldShow])
  {
    [(ICBluetoothKeyboardHintViewController *)self show];
  }
}

- (void)show
{
  v4.receiver = self;
  v4.super_class = ICBluetoothKeyboardHintViewController;
  [(ICPillOrnamentViewController *)&v4 show];
  v3 = [(ICBluetoothKeyboardHintViewController *)self userDefaults];
  [v3 setBool:1 forKey:@"bluetoothKeyboardHintDidShow"];
}

- (BOOL)forceShow
{
  v2 = [(ICBluetoothKeyboardHintViewController *)self userDefaults];
  v3 = [v2 BOOLForKey:@"bluetoothKeyboardForceShow"];

  return v3;
}

- (BOOL)hasAttachedBluetoothKeyboard
{
  v2 = [(ICBluetoothKeyboardHintViewController *)self userDefaults];
  v3 = [v2 BOOLForKey:@"bluetoothKeyboardHintHasAttachedHardwareKeyboard"];

  return v3;
}

- (BOOL)hasEditedNote
{
  v2 = [(ICBluetoothKeyboardHintViewController *)self userDefaults];
  v3 = [v2 BOOLForKey:@"bluetoothKeyboardHintDidEditNote"];

  return v3;
}

- (BOOL)hasShownHint
{
  v2 = [(ICBluetoothKeyboardHintViewController *)self userDefaults];
  v3 = [v2 BOOLForKey:@"bluetoothKeyboardHintDidShow"];

  return v3;
}

- (void)updateHardwareKeyboardMode
{
  -[ICBluetoothKeyboardHintViewController setIsInHardwareKeyboardMode:](self, "setIsInHardwareKeyboardMode:", [MEMORY[0x277D75658] isInHardwareKeyboardMode]);
  if ([(ICBluetoothKeyboardHintViewController *)self isInHardwareKeyboardMode])
  {
    v3 = [(ICBluetoothKeyboardHintViewController *)self userDefaults];
    [v3 setBool:1 forKey:@"bluetoothKeyboardHintHasAttachedHardwareKeyboard"];
  }
}

@end