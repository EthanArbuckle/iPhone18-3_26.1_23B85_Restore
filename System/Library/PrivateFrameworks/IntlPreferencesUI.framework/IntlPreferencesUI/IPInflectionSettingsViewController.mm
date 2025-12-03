@interface IPInflectionSettingsViewController
- (IPInflectionSettingsViewControllerDelegate)delegate;
- (id)specifiers;
- (id)thirdPartyCanAccessUserInflection;
- (void)setThirdPartyCanAccessUserInflection:(id)inflection specifier:(id)specifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation IPInflectionSettingsViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = IPInflectionSettingsViewController;
  [(IPInflectionSettingsViewController *)&v4 viewDidLoad];
  table = [(IPInflectionSettingsViewController *)self table];
  [table setKeyboardDismissMode:1];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [(IPInflectionSettingsViewController *)self loadSpecifiersFromPlistName:@"InflectionSettings" target:self];
    v6 = [v5 specifierForID:@"INFLECTION_GROUP"];
    inflection = [(IPInflectionSettingsViewController *)self inflection];
    gender = [inflection gender];

    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"GENDER_%ld_ID", gender];
    v10 = [v5 specifierForID:v9];
    [v6 setProperty:v10 forKey:*MEMORY[0x277D40090]];
    v11 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v19.receiver = self;
  v19.super_class = IPInflectionSettingsViewController;
  [(IPInflectionSettingsViewController *)&v19 tableView:view didSelectRowAtIndexPath:pathCopy];
  inflection = [(IPInflectionSettingsViewController *)self inflection];

  if (!inflection)
  {
    v8 = objc_alloc_init(MEMORY[0x277CCAEA8]);
    [(IPInflectionSettingsViewController *)self setInflection:v8];
  }

  v18 = 0x7FFFFFFFFFFFFFFFLL;
  [(IPInflectionSettingsViewController *)self getGroup:&v18 row:0 ofSpecifierID:@"INFLECTION_GROUP"];
  section = [pathCopy section];
  if (section == v18)
  {
    v10 = [(IPInflectionSettingsViewController *)self specifierAtIndexPath:pathCopy];
    v11 = [v10 propertyForKey:*MEMORY[0x277D401A8]];
    integerValue = [v11 integerValue];
    inflection2 = [(IPInflectionSettingsViewController *)self inflection];
    [inflection2 setGender:integerValue];

    inflection3 = [(IPInflectionSettingsViewController *)self inflection];
    [inflection3 setEnglishCustomPronoun:0];

    [(IPInflectionSettingsViewController *)self reloadSpecifiers];
    delegate = [(IPInflectionSettingsViewController *)self delegate];

    if (delegate)
    {
      delegate2 = [(IPInflectionSettingsViewController *)self delegate];
      inflection4 = [(IPInflectionSettingsViewController *)self inflection];
      [delegate2 inflectionSettingsViewController:self inflectionDidChange:inflection4];
    }
  }
}

- (id)thirdPartyCanAccessUserInflection
{
  v2 = MEMORY[0x277CCABB0];
  canShareInflection = [(IPInflectionSettingsViewController *)self canShareInflection];

  return [v2 numberWithBool:canShareInflection];
}

- (void)setThirdPartyCanAccessUserInflection:(id)inflection specifier:(id)specifier
{
  inflectionCopy = inflection;
  -[IPInflectionSettingsViewController setCanShareInflection:](self, "setCanShareInflection:", [inflectionCopy BOOLValue]);
  delegate = [(IPInflectionSettingsViewController *)self delegate];

  if (delegate)
  {
    delegate2 = [(IPInflectionSettingsViewController *)self delegate];
    [delegate2 inflectionSettingViewController:self shareSettingDidChange:{objc_msgSend(inflectionCopy, "BOOLValue")}];
  }
}

- (IPInflectionSettingsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end