@interface ICBluetoothKeyboardHintViewController
- (BOOL)forceShow;
- (BOOL)hasAttachedBluetoothKeyboard;
- (BOOL)hasEditedNote;
- (BOOL)hasShownHint;
- (BOOL)shouldShow;
- (ICBluetoothKeyboardHintViewController)initWithRootViewController:(id)controller;
- (ICBluetoothKeyboardHintViewController)initWithRootViewController:(id)controller userDefaults:(id)defaults buttonAction:(id)action;
- (void)didEditNote;
- (void)show;
- (void)showIfNeeded;
- (void)updateHardwareKeyboardMode;
- (void)viewDidLoad;
@end

@implementation ICBluetoothKeyboardHintViewController

- (ICBluetoothKeyboardHintViewController)initWithRootViewController:(id)controller
{
  v4 = MEMORY[0x277CBEBD0];
  controllerCopy = controller;
  standardUserDefaults = [v4 standardUserDefaults];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__ICBluetoothKeyboardHintViewController_initWithRootViewController___block_invoke;
  v9[3] = &unk_2781ABCF8;
  selfCopy = self;
  v7 = [(ICBluetoothKeyboardHintViewController *)selfCopy initWithRootViewController:controllerCopy userDefaults:standardUserDefaults buttonAction:v9];

  return v7;
}

uint64_t __68__ICBluetoothKeyboardHintViewController_initWithRootViewController___block_invoke(uint64_t a1)
{
  [MEMORY[0x277D75128] ic_openBluetoothSettings];
  v2 = *(a1 + 32);

  return [v2 hide];
}

- (ICBluetoothKeyboardHintViewController)initWithRootViewController:(id)controller userDefaults:(id)defaults buttonAction:(id)action
{
  defaultsCopy = defaults;
  v9 = MEMORY[0x277CCA8D8];
  actionCopy = action;
  controllerCopy = controller;
  mainBundle = [v9 mainBundle];
  v13 = [mainBundle localizedStringForKey:@"Connect a Keyboard" value:&stru_282757698 table:0];
  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  v15 = [mainBundle2 localizedStringForKey:@"Pair a Bluetooth keyboard or trackpad to make quick edits." value:&stru_282757698 table:0];
  mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
  v17 = [mainBundle3 localizedStringForKey:@"Go to Settings" value:&stru_282757698 table:0];
  v21.receiver = self;
  v21.super_class = ICBluetoothKeyboardHintViewController;
  v18 = [(ICHintViewController *)&v21 initWithRootViewController:controllerCopy showsCloseButton:1 hintTitle:v13 hintSubtitle:v15 buttonTitle:v17 buttonAction:actionCopy];

  if (v18)
  {
    objc_storeStrong(&v18->_userDefaults, defaults);
  }

  return v18;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = ICBluetoothKeyboardHintViewController;
  [(ICHintViewController *)&v4 viewDidLoad];
  [(ICBluetoothKeyboardHintViewController *)self updateHardwareKeyboardMode];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_keyboardDidChangeFrame_ name:*MEMORY[0x277D76B98] object:0];
}

- (void)didEditNote
{
  [(ICBluetoothKeyboardHintViewController *)self updateHardwareKeyboardMode];
  [(ICBluetoothKeyboardHintViewController *)self showIfNeeded];
  userDefaults = [(ICBluetoothKeyboardHintViewController *)self userDefaults];
  [userDefaults setBool:1 forKey:@"bluetoothKeyboardHintDidEditNote"];
}

- (BOOL)shouldShow
{
  if ([(ICBluetoothKeyboardHintViewController *)self forceShow])
  {
    LOBYTE(hasEditedNote) = 1;
  }

  else if ([(ICBluetoothKeyboardHintViewController *)self hasAttachedHardwareKeyboard]|| [(ICBluetoothKeyboardHintViewController *)self isInHardwareKeyboardMode])
  {
    LOBYTE(hasEditedNote) = 0;
  }

  else
  {
    hasEditedNote = [(ICBluetoothKeyboardHintViewController *)self hasEditedNote];
    if (hasEditedNote)
    {
      LOBYTE(hasEditedNote) = ![(ICBluetoothKeyboardHintViewController *)self hasShownHint];
    }
  }

  return hasEditedNote;
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
  userDefaults = [(ICBluetoothKeyboardHintViewController *)self userDefaults];
  [userDefaults setBool:1 forKey:@"bluetoothKeyboardHintDidShow"];
}

- (BOOL)forceShow
{
  userDefaults = [(ICBluetoothKeyboardHintViewController *)self userDefaults];
  v3 = [userDefaults BOOLForKey:@"bluetoothKeyboardForceShow"];

  return v3;
}

- (BOOL)hasAttachedBluetoothKeyboard
{
  userDefaults = [(ICBluetoothKeyboardHintViewController *)self userDefaults];
  v3 = [userDefaults BOOLForKey:@"bluetoothKeyboardHintHasAttachedHardwareKeyboard"];

  return v3;
}

- (BOOL)hasEditedNote
{
  userDefaults = [(ICBluetoothKeyboardHintViewController *)self userDefaults];
  v3 = [userDefaults BOOLForKey:@"bluetoothKeyboardHintDidEditNote"];

  return v3;
}

- (BOOL)hasShownHint
{
  userDefaults = [(ICBluetoothKeyboardHintViewController *)self userDefaults];
  v3 = [userDefaults BOOLForKey:@"bluetoothKeyboardHintDidShow"];

  return v3;
}

- (void)updateHardwareKeyboardMode
{
  -[ICBluetoothKeyboardHintViewController setIsInHardwareKeyboardMode:](self, "setIsInHardwareKeyboardMode:", [MEMORY[0x277D75658] isInHardwareKeyboardMode]);
  if ([(ICBluetoothKeyboardHintViewController *)self isInHardwareKeyboardMode])
  {
    userDefaults = [(ICBluetoothKeyboardHintViewController *)self userDefaults];
    [userDefaults setBool:1 forKey:@"bluetoothKeyboardHintHasAttachedHardwareKeyboard"];
  }
}

@end