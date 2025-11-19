@interface NMCUIAccountsSettingsViewCell
- (NMCUIAccountsSettingsViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (UIActivityIndicatorView)spinner;
- (UILabel)warningLabel;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation NMCUIAccountsSettingsViewCell

- (NMCUIAccountsSettingsViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v5 = [objc_opt_class() reuseIdentifier];
  v13.receiver = self;
  v13.super_class = NMCUIAccountsSettingsViewCell;
  v6 = [(PSTableCell *)&v13 initWithStyle:3 reuseIdentifier:v5];

  if (v6)
  {
    v7 = soft_BPSCellHightlightColor();
    [(NMCUIAccountsSettingsViewCell *)v6 setSelectionTintColor:v7];

    v8 = soft_BPSTextColor();
    v9 = [(PSTableCell *)v6 titleLabel];
    [v9 setTextColor:v8];

    v10 = soft_BPSDetailTextColor();
    v11 = [(NMCUIAccountsSettingsViewCell *)v6 detailTextLabel];
    [v11 setTextColor:v10];
  }

  return v6;
}

- (UILabel)warningLabel
{
  warningLabel = self->_warningLabel;
  if (!warningLabel)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    v5 = self->_warningLabel;
    self->_warningLabel = v4;

    v6 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoMailCompanionUI"];
    v7 = [v6 localizedStringForKey:@"WATCH_ACCOUNT_NEEDS_REAUTHENTICATION" value:&stru_286C65BF0 table:@"NanoMailCompanionUI"];
    [(UILabel *)self->_warningLabel setText:v7];

    v8 = MEMORY[0x277D74300];
    [MEMORY[0x277D74300] systemFontSize];
    v9 = [v8 systemFontOfSize:?];
    [(UILabel *)self->_warningLabel setFont:v9];

    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v10 = getBPSBridgeTintColorSymbolLoc_ptr;
    v18 = getBPSBridgeTintColorSymbolLoc_ptr;
    if (!getBPSBridgeTintColorSymbolLoc_ptr)
    {
      v11 = BridgePreferencesLibrary();
      v16[3] = dlsym(v11, "BPSBridgeTintColor");
      getBPSBridgeTintColorSymbolLoc_ptr = v16[3];
      v10 = v16[3];
    }

    _Block_object_dispose(&v15, 8);
    if (!v10)
    {
      v14 = soft_BPSCellHightlightColor_cold_1();
      _Block_object_dispose(&v15, 8);
      _Unwind_Resume(v14);
    }

    v12 = v10();
    [(UILabel *)self->_warningLabel setTextColor:v12];

    [(UILabel *)self->_warningLabel sizeToFit];
    warningLabel = self->_warningLabel;
  }

  return warningLabel;
}

- (UIActivityIndicatorView)spinner
{
  spinner = self->_spinner;
  if (!spinner)
  {
    v4 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    v5 = self->_spinner;
    self->_spinner = v4;

    [(UIActivityIndicatorView *)self->_spinner setHidesWhenStopped:0];
    spinner = self->_spinner;
  }

  return spinner;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = NMCUIAccountsSettingsViewCell;
  [(PSTableCell *)&v3 prepareForReuse];
  [(UIActivityIndicatorView *)self->_spinner stopAnimating];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v19.receiver = self;
  v19.super_class = NMCUIAccountsSettingsViewCell;
  v4 = a3;
  [(PSSubtitleButtonCell *)&v19 refreshCellContentsWithSpecifier:v4];
  v5 = soft_BPSCellHightlightColor();
  [(NMCUIAccountsSettingsViewCell *)self setSelectionTintColor:v5, v19.receiver, v19.super_class];

  v6 = soft_BPSTextColor();
  v7 = [(PSTableCell *)self titleLabel];
  [v7 setTextColor:v6];

  v8 = soft_BPSDetailTextColor();
  v9 = [(NMCUIAccountsSettingsViewCell *)self detailTextLabel];
  [v9 setTextColor:v8];

  v10 = [(PSTableCell *)self titleLabel];
  [v10 setEnabled:1];

  v11 = [(NMCUIAccountsSettingsViewCell *)self detailTextLabel];
  [v11 setEnabled:1];

  v12 = [v4 objectForKeyedSubscript:@"MFNanoSettingsSpecifierDetailKey"];
  v13 = [(NMCUIAccountsSettingsViewCell *)self detailTextLabel];
  [v13 setText:v12];

  v14 = [v4 objectForKeyedSubscript:@"MFNanoSettingsSpecifierWarningKey"];
  v15 = [v4 objectForKeyedSubscript:@"MFNanoSettingsSpecifierLoadingKey"];

  if ([v15 BOOLValue])
  {
    v16 = [(NMCUIAccountsSettingsViewCell *)self spinner];
    [(NMCUIAccountsSettingsViewCell *)self setAccessoryView:v16];

    v17 = [(NMCUIAccountsSettingsViewCell *)self spinner];
    [v17 startAnimating];
  }

  else if ([v14 BOOLValue])
  {
    v18 = [(NMCUIAccountsSettingsViewCell *)self warningLabel];
    [(NMCUIAccountsSettingsViewCell *)self setAccessoryView:v18];
  }

  else
  {
    [(NMCUIAccountsSettingsViewCell *)self setAccessoryView:0];
  }
}

@end