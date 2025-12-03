@interface WDAppleInternalConsentViewController
- (WDAppleInternalConsentViewController)initWithPresentingViewController:(id)controller completionBlock:(id)block;
- (id)bottomAnchoredButtons;
- (void)acceptButtonTapped:(id)tapped;
- (void)buttonAtIndexTapped:(int64_t)tapped;
- (void)updateBodyTextAttributesWithMutableString:(id)string;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation WDAppleInternalConsentViewController

- (WDAppleInternalConsentViewController)initWithPresentingViewController:(id)controller completionBlock:(id)block
{
  controllerCopy = controller;
  blockCopy = block;
  v14.receiver = self;
  v14.super_class = WDAppleInternalConsentViewController;
  v9 = [(HKTitledBuddyViewController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    [(WDAppleInternalConsentViewController *)v9 setTitle:&stru_1F4D16E38];
    objc_storeStrong(&v10->_actionViewController, controller);
    v11 = [blockCopy copy];
    completionBlock = v10->_completionBlock;
    v10->_completionBlock = v11;
  }

  return v10;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = WDAppleInternalConsentViewController;
  [(HKTitledBuddyViewController *)&v9 viewDidLoad];
  view = [(WDAppleInternalConsentViewController *)self view];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [view setBackgroundColor:systemBackgroundColor];

  [(WDAppleInternalConsentViewController *)self setEdgesForExtendedLayout:14];
  v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonTapped_];
  navigationCancelButton = self->_navigationCancelButton;
  self->_navigationCancelButton = v5;

  v7 = self->_navigationCancelButton;
  navigationItem = [(WDAppleInternalConsentViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v7];
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = WDAppleInternalConsentViewController;
  [(HKTitledBuddyViewController *)&v7 viewWillAppear:appear];
  navigationController = [(WDAppleInternalConsentViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [navigationBar setBarTintColor:systemBackgroundColor];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = WDAppleInternalConsentViewController;
  [(WDAppleInternalConsentViewController *)&v3 viewWillDisappear:disappear];
}

- (void)updateBodyTextAttributesWithMutableString:(id)string
{
  v21 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v5 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] variant:1024];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [&unk_1F4D36EF0 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    v9 = *MEMORY[0x1E69DB648];
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(&unk_1F4D36EF0);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        bodyString = [(WDAppleInternalConsentViewController *)self bodyString];
        v13 = [bodyString rangeOfString:v11];
        v15 = v14;

        [stringCopy addAttribute:v9 value:v5 range:{v13, v15}];
        ++v10;
      }

      while (v7 != v10);
      v7 = [&unk_1F4D36EF0 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }
}

- (id)bottomAnchoredButtons
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = HRLocalizedLegalString(@"APPLE_INTERNAL_CONSENT_UNDERSTAND", a2);
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (void)buttonAtIndexTapped:(int64_t)tapped
{
  if (tapped == 1)
  {
    [(WDAppleInternalConsentViewController *)self declineButtonTapped:0];
  }

  else if (!tapped)
  {
    [(WDAppleInternalConsentViewController *)self acceptButtonTapped:?];
  }
}

- (void)acceptButtonTapped:(id)tapped
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:1 forKey:@"WDInternalHealthRecordsConsentScreenShownKey"];

  v5 = *(self->_completionBlock + 2);

  v5();
}

@end