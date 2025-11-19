@interface NTKCompanionMonogramEntryViewController
+ (NSString)localizedDescription;
- (NTKCompanionMonogramEntryViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_doneTapped;
- (void)_resetEntryField;
- (void)returnPressedAtEnd;
- (void)setCustomMonogram:(id)a3 specifier:(id)a4;
- (void)setShowsDoneButton:(BOOL)a3;
- (void)textFieldDidEndEditing:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation NTKCompanionMonogramEntryViewController

+ (NSString)localizedDescription
{
  v2 = [MEMORY[0x277CBBAE8] currentDevice];
  if ([v2 deviceCategory] == 1)
  {
    v3 = @"MONOGRAM_DESCRIPTION";
  }

  else if ([v2 supportsPDRCapability:3588072423])
  {
    v3 = @"MONOGRAM_DESCRIPTION_TYPOGRAPH";
  }

  else if ([v2 isRunningGraceOrLater])
  {
    v3 = @"MONOGRAM_DESCRIPTION_MERIDIAN_CALIFORNIA";
  }

  else
  {
    v3 = @"MONOGRAM_DESCRIPTION_INFOGRAPH";
  }

  v4 = NTKCBundleLocalizedString(v3, @"description");

  return v4;
}

- (NTKCompanionMonogramEntryViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = NTKCompanionMonogramEntryViewController;
  v4 = [(NTKCompanionMonogramEntryViewController *)&v7 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = +[NTKCompanionMonogramEntryViewController localizedTitle];
    [(NTKCompanionMonogramEntryViewController *)v4 setTitle:v5];
  }

  return v4;
}

- (void)viewWillAppear:(BOOL)a3
{
  v23[1] = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = NTKCompanionMonogramEntryViewController;
  [(NTKCompanionMonogramEntryViewController *)&v22 viewWillAppear:a3];
  v4 = [(NTKCompanionMonogramEntryViewController *)self specifier];
  v5 = [v4 identifier];

  if (v5)
  {
    v6 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoClockBridgeSettings"];
    if (([v6 isLoaded] & 1) == 0)
    {
      [v6 load];
    }

    v7 = [v6 bundleURL];

    if (v7)
    {
      v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v9 = objc_alloc(MEMORY[0x277CCAEB8]);
      v10 = [MEMORY[0x277CBEAF8] currentLocale];
      v11 = [v8 bundleURL];
      v12 = [v9 initWithKey:@"MONOGRAM" table:@"NanoTimeKitCompanion" locale:v10 bundleURL:v11];

      v13 = objc_alloc(MEMORY[0x277CCAEB8]);
      v14 = [MEMORY[0x277CBEAF8] currentLocale];
      v15 = [v6 bundleURL];
      v16 = [v13 initWithKey:@"PANE_TITLE" table:@"NanoClockBridgeSettings" locale:v14 bundleURL:v15];

      v17 = MEMORY[0x277CF3470];
      v23[0] = v16;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
      v19 = MEMORY[0x277CBEBC0];
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"bridge:root=%@&path=%@", @"com.apple.NanoClockBridgeSettings", v5];
      v21 = [v19 URLWithString:v20];
      [v17 emitNavigationEventForApplicationSettingWithIconSpecifierIdentifier:@"com.apple.NanoClockBridgeSettings" title:v12 localizedNavigationComponents:v18 deepLink:v21];
    }
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = NTKCompanionMonogramEntryViewController;
  [(NTKCompanionMonogramEntryViewController *)&v5 viewWillDisappear:a3];
  v4 = [(NTKCompanionMonogramEntryViewController *)self presentingViewController];

  if (v4)
  {
    [(UITextField *)self->_monogramEntry resignFirstResponder];
  }
}

- (id)specifiers
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:0 edit:0];
    v6 = [MEMORY[0x277D3FB40] preferenceSpecifierNamed:0 target:self set:sel_setCustomMonogram_specifier_ get:sel_customMonogram_ detail:0 cell:8 edit:0];
    v7 = +[NTKCompanionMonogramEntryViewController localizedDescription];
    [v5 setProperty:v7 forKey:*MEMORY[0x277D3FF88]];

    v11[0] = v5;
    v11[1] = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
    v9 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v8;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v10.receiver = self;
  v10.super_class = NTKCompanionMonogramEntryViewController;
  v5 = [(NTKCompanionMonogramEntryViewController *)&v10 tableView:a3 cellForRowAtIndexPath:a4];
  if ([v5 tag] == 8)
  {
    v6 = [v5 editableTextField];
    [(NTKCompanionMonogramEntryViewController *)self setMonogramEntry:v6];

    [(UITextField *)self->_monogramEntry setAcceptsEmoji:0];
    [(UITextField *)self->_monogramEntry setAutocorrectionType:1];
    [(UITextField *)self->_monogramEntry setSpellCheckingType:1];
    [(UITextField *)self->_monogramEntry becomeFirstResponder];
    v7 = [v5 editableTextField];
    [v7 setClearButtonMode:3];

    v8 = [v5 editableTextField];
    [v8 setDelegate:self];
  }

  return v5;
}

- (void)returnPressedAtEnd
{
  v3 = [MEMORY[0x277D75DA0] _applicationKeyWindow];
  v2 = [v3 firstResponder];
  [v2 resignFirstResponder];
}

- (void)textFieldDidEndEditing:(id)a3
{
  v4 = [(UITextField *)self->_monogramEntry text];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [(UITextField *)self->_monogramEntry text];
    v7 = [v6 length];

    if (v7 >= 5)
    {
      v8 = 5;
    }

    else
    {
      v8 = v7;
    }

    v9 = [(UITextField *)self->_monogramEntry text];
    v10 = [v9 rangeOfComposedCharacterSequencesForRange:{0, v8}];
    v12 = v11;

    v13 = [(UITextField *)self->_monogramEntry text];
    v14 = [v13 substringWithRange:{v10, v12}];

    v15 = [MEMORY[0x277CBEAF8] currentLocale];
    v16 = [v14 uppercaseStringWithLocale:v15];

    [(UITextField *)self->_monogramEntry setText:v16];
  }

  v17 = [(UITextField *)self->_monogramEntry text];
  v18 = [v17 length];

  if (v18)
  {
    v19 = [(UITextField *)self->_monogramEntry text];
    [(NTKCompanionMonogramEntryViewController *)self setCustomMonogram:v19 specifier:*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20])];
  }
}

- (void)setCustomMonogram:(id)a3 specifier:(id)a4
{
  v5 = a3;
  if ([v5 ntk_isValidMonogram])
  {
    v4 = +[NTKCustomMonogramStore sharedInstance];
    [v4 setCustomMonogram:v5];
  }
}

- (void)setShowsDoneButton:(BOOL)a3
{
  if (self->_showsDoneButton != a3)
  {
    self->_showsDoneButton = a3;
    if (a3)
    {
      v6 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel__doneTapped];
      v5 = [(NTKCompanionMonogramEntryViewController *)self navigationItem];
      [v5 setRightBarButtonItem:v6];
    }

    else
    {
      v6 = [(NTKCompanionMonogramEntryViewController *)self navigationItem];
      [v6 setRightBarButtonItem:0];
    }
  }
}

- (void)_resetEntryField
{
  v3 = [(NTKCompanionMonogramEntryViewController *)self customMonogram:*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20])];
  [(UITextField *)self->_monogramEntry setText:v3];
}

- (void)_doneTapped
{
  v2 = [(NTKCompanionMonogramEntryViewController *)self presentingViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

@end