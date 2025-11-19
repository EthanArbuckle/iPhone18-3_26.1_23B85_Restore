@interface WDAppleInternalConsentViewController
- (WDAppleInternalConsentViewController)initWithPresentingViewController:(id)a3 completionBlock:(id)a4;
- (id)bottomAnchoredButtons;
- (void)acceptButtonTapped:(id)a3;
- (void)buttonAtIndexTapped:(int64_t)a3;
- (void)updateBodyTextAttributesWithMutableString:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation WDAppleInternalConsentViewController

- (WDAppleInternalConsentViewController)initWithPresentingViewController:(id)a3 completionBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = WDAppleInternalConsentViewController;
  v9 = [(HKTitledBuddyViewController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    [(WDAppleInternalConsentViewController *)v9 setTitle:&stru_1F4D16E38];
    objc_storeStrong(&v10->_actionViewController, a3);
    v11 = [v8 copy];
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
  v3 = [(WDAppleInternalConsentViewController *)self view];
  v4 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v3 setBackgroundColor:v4];

  [(WDAppleInternalConsentViewController *)self setEdgesForExtendedLayout:14];
  v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonTapped_];
  navigationCancelButton = self->_navigationCancelButton;
  self->_navigationCancelButton = v5;

  v7 = self->_navigationCancelButton;
  v8 = [(WDAppleInternalConsentViewController *)self navigationItem];
  [v8 setLeftBarButtonItem:v7];
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = WDAppleInternalConsentViewController;
  [(HKTitledBuddyViewController *)&v7 viewWillAppear:a3];
  v4 = [(WDAppleInternalConsentViewController *)self navigationController];
  v5 = [v4 navigationBar];
  v6 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v5 setBarTintColor:v6];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = WDAppleInternalConsentViewController;
  [(WDAppleInternalConsentViewController *)&v3 viewWillDisappear:a3];
}

- (void)updateBodyTextAttributesWithMutableString:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
        v12 = [(WDAppleInternalConsentViewController *)self bodyString];
        v13 = [v12 rangeOfString:v11];
        v15 = v14;

        [v4 addAttribute:v9 value:v5 range:{v13, v15}];
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

- (void)buttonAtIndexTapped:(int64_t)a3
{
  if (a3 == 1)
  {
    [(WDAppleInternalConsentViewController *)self declineButtonTapped:0];
  }

  else if (!a3)
  {
    [(WDAppleInternalConsentViewController *)self acceptButtonTapped:?];
  }
}

- (void)acceptButtonTapped:(id)a3
{
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v4 setBool:1 forKey:@"WDInternalHealthRecordsConsentScreenShownKey"];

  v5 = *(self->_completionBlock + 2);

  v5();
}

@end