@interface IPInflectionSettingsViewController
- (IPInflectionSettingsViewControllerDelegate)delegate;
- (id)specifiers;
- (id)thirdPartyCanAccessUserInflection;
- (void)setThirdPartyCanAccessUserInflection:(id)a3 specifier:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation IPInflectionSettingsViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = IPInflectionSettingsViewController;
  [(IPInflectionSettingsViewController *)&v4 viewDidLoad];
  v3 = [(IPInflectionSettingsViewController *)self table];
  [v3 setKeyboardDismissMode:1];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [(IPInflectionSettingsViewController *)self loadSpecifiersFromPlistName:@"InflectionSettings" target:self];
    v6 = [v5 specifierForID:@"INFLECTION_GROUP"];
    v7 = [(IPInflectionSettingsViewController *)self inflection];
    v8 = [v7 gender];

    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"GENDER_%ld_ID", v8];
    v10 = [v5 specifierForID:v9];
    [v6 setProperty:v10 forKey:*MEMORY[0x277D40090]];
    v11 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v19.receiver = self;
  v19.super_class = IPInflectionSettingsViewController;
  [(IPInflectionSettingsViewController *)&v19 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(IPInflectionSettingsViewController *)self inflection];

  if (!v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CCAEA8]);
    [(IPInflectionSettingsViewController *)self setInflection:v8];
  }

  v18 = 0x7FFFFFFFFFFFFFFFLL;
  [(IPInflectionSettingsViewController *)self getGroup:&v18 row:0 ofSpecifierID:@"INFLECTION_GROUP"];
  v9 = [v6 section];
  if (v9 == v18)
  {
    v10 = [(IPInflectionSettingsViewController *)self specifierAtIndexPath:v6];
    v11 = [v10 propertyForKey:*MEMORY[0x277D401A8]];
    v12 = [v11 integerValue];
    v13 = [(IPInflectionSettingsViewController *)self inflection];
    [v13 setGender:v12];

    v14 = [(IPInflectionSettingsViewController *)self inflection];
    [v14 setEnglishCustomPronoun:0];

    [(IPInflectionSettingsViewController *)self reloadSpecifiers];
    v15 = [(IPInflectionSettingsViewController *)self delegate];

    if (v15)
    {
      v16 = [(IPInflectionSettingsViewController *)self delegate];
      v17 = [(IPInflectionSettingsViewController *)self inflection];
      [v16 inflectionSettingsViewController:self inflectionDidChange:v17];
    }
  }
}

- (id)thirdPartyCanAccessUserInflection
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(IPInflectionSettingsViewController *)self canShareInflection];

  return [v2 numberWithBool:v3];
}

- (void)setThirdPartyCanAccessUserInflection:(id)a3 specifier:(id)a4
{
  v7 = a3;
  -[IPInflectionSettingsViewController setCanShareInflection:](self, "setCanShareInflection:", [v7 BOOLValue]);
  v5 = [(IPInflectionSettingsViewController *)self delegate];

  if (v5)
  {
    v6 = [(IPInflectionSettingsViewController *)self delegate];
    [v6 inflectionSettingViewController:self shareSettingDidChange:{objc_msgSend(v7, "BOOLValue")}];
  }
}

- (IPInflectionSettingsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end