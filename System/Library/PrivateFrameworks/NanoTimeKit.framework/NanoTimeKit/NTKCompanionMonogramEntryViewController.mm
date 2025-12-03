@interface NTKCompanionMonogramEntryViewController
+ (NSString)localizedDescription;
- (NTKCompanionMonogramEntryViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_doneTapped;
- (void)_resetEntryField;
- (void)returnPressedAtEnd;
- (void)setCustomMonogram:(id)monogram specifier:(id)specifier;
- (void)setShowsDoneButton:(BOOL)button;
- (void)textFieldDidEndEditing:(id)editing;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation NTKCompanionMonogramEntryViewController

+ (NSString)localizedDescription
{
  currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
  if ([currentDevice deviceCategory] == 1)
  {
    v3 = @"MONOGRAM_DESCRIPTION";
  }

  else if ([currentDevice supportsPDRCapability:3588072423])
  {
    v3 = @"MONOGRAM_DESCRIPTION_TYPOGRAPH";
  }

  else if ([currentDevice isRunningGraceOrLater])
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

- (NTKCompanionMonogramEntryViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = NTKCompanionMonogramEntryViewController;
  v4 = [(NTKCompanionMonogramEntryViewController *)&v7 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = +[NTKCompanionMonogramEntryViewController localizedTitle];
    [(NTKCompanionMonogramEntryViewController *)v4 setTitle:v5];
  }

  return v4;
}

- (void)viewWillAppear:(BOOL)appear
{
  v23[1] = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = NTKCompanionMonogramEntryViewController;
  [(NTKCompanionMonogramEntryViewController *)&v22 viewWillAppear:appear];
  specifier = [(NTKCompanionMonogramEntryViewController *)self specifier];
  identifier = [specifier identifier];

  if (identifier)
  {
    v6 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoClockBridgeSettings"];
    if (([v6 isLoaded] & 1) == 0)
    {
      [v6 load];
    }

    bundleURL = [v6 bundleURL];

    if (bundleURL)
    {
      v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v9 = objc_alloc(MEMORY[0x277CCAEB8]);
      currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
      bundleURL2 = [v8 bundleURL];
      v12 = [v9 initWithKey:@"MONOGRAM" table:@"NanoTimeKitCompanion" locale:currentLocale bundleURL:bundleURL2];

      v13 = objc_alloc(MEMORY[0x277CCAEB8]);
      currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
      bundleURL3 = [v6 bundleURL];
      v16 = [v13 initWithKey:@"PANE_TITLE" table:@"NanoClockBridgeSettings" locale:currentLocale2 bundleURL:bundleURL3];

      v17 = MEMORY[0x277CF3470];
      v23[0] = v16;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
      v19 = MEMORY[0x277CBEBC0];
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"bridge:root=%@&path=%@", @"com.apple.NanoClockBridgeSettings", identifier];
      v21 = [v19 URLWithString:v20];
      [v17 emitNavigationEventForApplicationSettingWithIconSpecifierIdentifier:@"com.apple.NanoClockBridgeSettings" title:v12 localizedNavigationComponents:v18 deepLink:v21];
    }
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = NTKCompanionMonogramEntryViewController;
  [(NTKCompanionMonogramEntryViewController *)&v5 viewWillDisappear:disappear];
  presentingViewController = [(NTKCompanionMonogramEntryViewController *)self presentingViewController];

  if (presentingViewController)
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v10.receiver = self;
  v10.super_class = NTKCompanionMonogramEntryViewController;
  v5 = [(NTKCompanionMonogramEntryViewController *)&v10 tableView:view cellForRowAtIndexPath:path];
  if ([v5 tag] == 8)
  {
    editableTextField = [v5 editableTextField];
    [(NTKCompanionMonogramEntryViewController *)self setMonogramEntry:editableTextField];

    [(UITextField *)self->_monogramEntry setAcceptsEmoji:0];
    [(UITextField *)self->_monogramEntry setAutocorrectionType:1];
    [(UITextField *)self->_monogramEntry setSpellCheckingType:1];
    [(UITextField *)self->_monogramEntry becomeFirstResponder];
    editableTextField2 = [v5 editableTextField];
    [editableTextField2 setClearButtonMode:3];

    editableTextField3 = [v5 editableTextField];
    [editableTextField3 setDelegate:self];
  }

  return v5;
}

- (void)returnPressedAtEnd
{
  _applicationKeyWindow = [MEMORY[0x277D75DA0] _applicationKeyWindow];
  firstResponder = [_applicationKeyWindow firstResponder];
  [firstResponder resignFirstResponder];
}

- (void)textFieldDidEndEditing:(id)editing
{
  text = [(UITextField *)self->_monogramEntry text];
  v5 = [text length];

  if (v5)
  {
    text2 = [(UITextField *)self->_monogramEntry text];
    v7 = [text2 length];

    if (v7 >= 5)
    {
      v8 = 5;
    }

    else
    {
      v8 = v7;
    }

    text3 = [(UITextField *)self->_monogramEntry text];
    v10 = [text3 rangeOfComposedCharacterSequencesForRange:{0, v8}];
    v12 = v11;

    text4 = [(UITextField *)self->_monogramEntry text];
    v14 = [text4 substringWithRange:{v10, v12}];

    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v16 = [v14 uppercaseStringWithLocale:currentLocale];

    [(UITextField *)self->_monogramEntry setText:v16];
  }

  text5 = [(UITextField *)self->_monogramEntry text];
  v18 = [text5 length];

  if (v18)
  {
    text6 = [(UITextField *)self->_monogramEntry text];
    [(NTKCompanionMonogramEntryViewController *)self setCustomMonogram:text6 specifier:*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20])];
  }
}

- (void)setCustomMonogram:(id)monogram specifier:(id)specifier
{
  monogramCopy = monogram;
  if ([monogramCopy ntk_isValidMonogram])
  {
    v4 = +[NTKCustomMonogramStore sharedInstance];
    [v4 setCustomMonogram:monogramCopy];
  }
}

- (void)setShowsDoneButton:(BOOL)button
{
  if (self->_showsDoneButton != button)
  {
    self->_showsDoneButton = button;
    if (button)
    {
      navigationItem2 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel__doneTapped];
      navigationItem = [(NTKCompanionMonogramEntryViewController *)self navigationItem];
      [navigationItem setRightBarButtonItem:navigationItem2];
    }

    else
    {
      navigationItem2 = [(NTKCompanionMonogramEntryViewController *)self navigationItem];
      [navigationItem2 setRightBarButtonItem:0];
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
  presentingViewController = [(NTKCompanionMonogramEntryViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

@end