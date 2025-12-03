@interface CDPRemoteUILocalSecretEntryViewController
- (CDPRemoteUILocalSecretEntryViewController)init;
- (CGSize)preferredContentSize;
- (id)pinInstructionsPrompt;
- (void)_startAnimating;
- (void)didAcceptEnteredPIN:(id)n;
- (void)didCancelEnteringPIN;
- (void)pinInstructionsPrompt;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CDPRemoteUILocalSecretEntryViewController

- (CDPRemoteUILocalSecretEntryViewController)init
{
  v8.receiver = self;
  v8.super_class = CDPRemoteUILocalSecretEntryViewController;
  v2 = [(CDPPassphraseEntryViewController *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(DevicePINController *)v2 setPinDelegate:v2];
    v4 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_285826188 target:0 set:0 get:0 detail:0 cell:13 edit:0];
    [v4 setEditPaneClass:objc_opt_class()];
    [v4 setProperty:v3 forKey:*MEMORY[0x277D401B8]];
    [(DevicePINController *)v3 setSpecifier:v4];
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      [(DevicePINController *)v3 setNumericPIN:0];
      [(CDPRemoteUILocalSecretEntryViewController *)v3 setModalPresentationStyle:2];
    }
  }

  return v3;
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = CDPRemoteUILocalSecretEntryViewController;
  [(PSDetailController *)&v12 viewDidLoad];
  extensionContext = [(CDPRemoteUILocalSecretEntryViewController *)self extensionContext];
  inputItems = [extensionContext inputItems];
  firstObject = [inputItems firstObject];

  userInfo = [firstObject userInfo];
  v7 = [userInfo objectForKeyedSubscript:@"forceInlineMode"];
  self->_finished = [v7 BOOLValue];

  userInfo2 = [firstObject userInfo];
  v9 = [userInfo2 objectForKeyedSubscript:@"title"];
  stringValue = [v9 stringValue];
  titleText = self->_titleText;
  self->_titleText = stringValue;
}

- (id)pinInstructionsPrompt
{
  if (self->_titleText)
  {
    v3 = _CDPLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(CDPRemoteUILocalSecretEntryViewController *)self pinInstructionsPrompt];
    }

    localizedString = self->_titleText;
  }

  else
  {
    v5 = [MEMORY[0x277CFD508] builderForKey:@"LOCAL_SECRET_ENTRY_REASON"];
    v6 = [v5 addSecretType:1];
    mEMORY[0x277CFD4F8] = [MEMORY[0x277CFD4F8] sharedInstance];
    deviceClass = [mEMORY[0x277CFD4F8] deviceClass];
    v9 = [v6 addDeviceClass:deviceClass];
    localizedString = [v9 localizedString];
  }

  return localizedString;
}

- (void)viewWillAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = CDPRemoteUILocalSecretEntryViewController;
  [(DevicePINController *)&v9 viewWillAppear:appear];
  navigationController = [(CDPRemoteUILocalSecretEntryViewController *)self navigationController];
  viewControllers = [navigationController viewControllers];
  firstObject = [viewControllers firstObject];

  if (firstObject == self)
  {
    navigationController2 = [(CDPRemoteUILocalSecretEntryViewController *)self navigationController];
    navigationBar = [navigationController2 navigationBar];
    [navigationBar _setBackgroundOpacity:0.0];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = CDPRemoteUILocalSecretEntryViewController;
  [(DevicePINController *)&v6 viewWillDisappear:disappear];
  if (!*(&self->_finished + 1))
  {
    *(&self->_finished + 1) = 1;
    extensionContext = [(CDPRemoteUILocalSecretEntryViewController *)self extensionContext];
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3072 userInfo:0];
    [extensionContext cancelRequestWithError:v5];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = CDPRemoteUILocalSecretEntryViewController;
  [(DevicePINController *)&v5 viewDidDisappear:disappear];
  if (!self->_finished)
  {
    if ([(NSString *)self->_titleText length])
    {
      mEMORY[0x277D3FA90] = [MEMORY[0x277D3FA90] sharedSpinnerManager];
      [mEMORY[0x277D3FA90] stopAnimatingForIdentifier:@"localSecretValidator"];
    }
  }
}

- (void)_startAnimating
{
  mEMORY[0x277D3FA90] = [MEMORY[0x277D3FA90] sharedSpinnerManager];
  navigationItem = [(CDPRemoteUILocalSecretEntryViewController *)self navigationItem];
  [mEMORY[0x277D3FA90] startAnimatingInNavItem:navigationItem forIdentifier:@"localSecretValidator" hideBackButton:1];

  v5 = *MEMORY[0x277D3FBE8];
  [*(&self->super.super.super.super.super.super.super.isa + v5) resignFirstResponder];
  v6 = *(&self->super.super.super.super.super.super.super.isa + v5);

  [v6 setUserInteractionEnabled:0];
}

- (void)didAcceptEnteredPIN:(id)n
{
  v15[2] = *MEMORY[0x277D85DE8];
  nCopy = n;
  *(&self->_finished + 1) = 1;
  v12 = 0;
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  [mEMORY[0x277D262A0] unlockScreenTypeWithOutSimplePasscodeType:&v12];

  if (v12 == -1)
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  if (!self->_finished && [(NSString *)self->_titleText length])
  {
    [(CDPRemoteUILocalSecretEntryViewController *)self _startAnimating];
  }

  if (self->_finished)
  {
    [(CDPRemoteUILocalSecretEntryViewController *)self _startAnimating];
  }

  if (nCopy)
  {
    extensionContext2 = objc_alloc_init(MEMORY[0x277CCA9D8]);
    v14[0] = @"localSecret";
    v14[1] = @"secretType";
    v15[0] = nCopy;
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
    v15[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
    [extensionContext2 setUserInfo:v9];

    extensionContext = [(CDPRemoteUILocalSecretEntryViewController *)self extensionContext];
    v13 = extensionContext2;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
    [extensionContext completeRequestReturningItems:v11 completionHandler:&__block_literal_global_4];
  }

  else
  {
    extensionContext2 = [(CDPRemoteUILocalSecretEntryViewController *)self extensionContext];
    extensionContext = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3072 userInfo:0];
    [extensionContext2 cancelRequestWithError:extensionContext];
  }
}

- (void)didCancelEnteringPIN
{
  *(&self->_finished + 1) = 1;
  extensionContext = [(CDPRemoteUILocalSecretEntryViewController *)self extensionContext];
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3072 userInfo:0];
  [extensionContext cancelRequestWithError:v2];
}

- (CGSize)preferredContentSize
{
  v2 = *MEMORY[0x277CBF3A8];
  v3 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)pinInstructionsPrompt
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = *a2;
  v8 = 138412546;
  v9 = v6;
  v10 = 2112;
  v11 = v7;
  _os_log_debug_impl(&dword_2451DB000, a3, OS_LOG_TYPE_DEBUG, "%@: title: %@", &v8, 0x16u);
}

@end