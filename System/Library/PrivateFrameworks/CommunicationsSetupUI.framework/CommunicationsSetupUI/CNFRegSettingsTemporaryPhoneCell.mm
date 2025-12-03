@interface CNFRegSettingsTemporaryPhoneCell
- (CNFRegSettingsTemporaryPhoneCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (unint64_t)daysUntilExpiration:(id)expiration;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation CNFRegSettingsTemporaryPhoneCell

- (CNFRegSettingsTemporaryPhoneCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v62.receiver = self;
  v62.super_class = CNFRegSettingsTemporaryPhoneCell;
  v4 = [(PSTableCell *)&v62 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D756B8]);
    phoneNumberLabel = v4->_phoneNumberLabel;
    v4->_phoneNumberLabel = v5;

    [(UILabel *)v4->_phoneNumberLabel setText:&stru_2856D3978];
    labelColor = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v4->_phoneNumberLabel setTextColor:labelColor];

    v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v4->_phoneNumberLabel setFont:v8];

    [(UILabel *)v4->_phoneNumberLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(CNFRegSettingsTemporaryPhoneCell *)v4 contentView];
    [contentView addSubview:v4->_phoneNumberLabel];

    v10 = objc_alloc_init(MEMORY[0x277D756B8]);
    expirationLabel = v4->_expirationLabel;
    v4->_expirationLabel = v10;

    [(UILabel *)v4->_expirationLabel setText:&stru_2856D3978];
    labelColor2 = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v4->_expirationLabel setTextColor:labelColor2];

    v13 = *MEMORY[0x277D769D0];
    v14 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [(UILabel *)v4->_expirationLabel setFont:v14];

    [(UILabel *)v4->_expirationLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView2 = [(CNFRegSettingsTemporaryPhoneCell *)v4 contentView];
    [contentView2 addSubview:v4->_expirationLabel];

    v16 = objc_alloc_init(MEMORY[0x277D756B8]);
    descriptionLabel = v4->_descriptionLabel;
    v4->_descriptionLabel = v16;

    LODWORD(contentView2) = _os_feature_enabled_impl();
    v18 = CommunicationsSetupUIBundle();
    v19 = CNFRegStringTableName();
    if (contentView2)
    {
      v20 = @"FACETIME_SETTINGS_TEMPORARY_PHONE_DESCRIPTION_APPLEACCOUNT";
    }

    else
    {
      v20 = @"FACETIME_SETTINGS_TEMPORARY_PHONE_DESCRIPTION";
    }

    v21 = [v18 localizedStringForKey:v20 value:&stru_2856D3978 table:v19];
    [(UILabel *)v4->_descriptionLabel setText:v21];

    [(UILabel *)v4->_descriptionLabel setNumberOfLines:0];
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v4->_descriptionLabel setTextColor:secondaryLabelColor];

    v23 = [MEMORY[0x277D74300] preferredFontForTextStyle:v13];
    [(UILabel *)v4->_descriptionLabel setFont:v23];

    [(UILabel *)v4->_descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView3 = [(CNFRegSettingsTemporaryPhoneCell *)v4 contentView];
    [contentView3 addSubview:v4->_descriptionLabel];

    topAnchor = [(UILabel *)v4->_phoneNumberLabel topAnchor];
    contentView4 = [(CNFRegSettingsTemporaryPhoneCell *)v4 contentView];
    layoutMarginsGuide = [contentView4 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v29 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v29 setActive:1];

    leadingAnchor = [(UILabel *)v4->_phoneNumberLabel leadingAnchor];
    contentView5 = [(CNFRegSettingsTemporaryPhoneCell *)v4 contentView];
    layoutMarginsGuide2 = [contentView5 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide2 leadingAnchor];
    v34 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v34 setActive:1];

    centerYAnchor = [(UILabel *)v4->_expirationLabel centerYAnchor];
    centerYAnchor2 = [(UILabel *)v4->_phoneNumberLabel centerYAnchor];
    v37 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v37 setActive:1];

    trailingAnchor = [(UILabel *)v4->_expirationLabel trailingAnchor];
    contentView6 = [(CNFRegSettingsTemporaryPhoneCell *)v4 contentView];
    layoutMarginsGuide3 = [contentView6 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide3 trailingAnchor];
    v42 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v42 setActive:1];

    topAnchor3 = [(UILabel *)v4->_descriptionLabel topAnchor];
    bottomAnchor = [(UILabel *)v4->_phoneNumberLabel bottomAnchor];
    v45 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:8.0];
    [v45 setActive:1];

    leadingAnchor3 = [(UILabel *)v4->_descriptionLabel leadingAnchor];
    contentView7 = [(CNFRegSettingsTemporaryPhoneCell *)v4 contentView];
    layoutMarginsGuide4 = [contentView7 layoutMarginsGuide];
    leadingAnchor4 = [layoutMarginsGuide4 leadingAnchor];
    v50 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [v50 setActive:1];

    trailingAnchor3 = [(UILabel *)v4->_descriptionLabel trailingAnchor];
    contentView8 = [(CNFRegSettingsTemporaryPhoneCell *)v4 contentView];
    layoutMarginsGuide5 = [contentView8 layoutMarginsGuide];
    trailingAnchor4 = [layoutMarginsGuide5 trailingAnchor];
    v55 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    [v55 setActive:1];

    bottomAnchor2 = [(UILabel *)v4->_descriptionLabel bottomAnchor];
    contentView9 = [(CNFRegSettingsTemporaryPhoneCell *)v4 contentView];
    layoutMarginsGuide6 = [contentView9 layoutMarginsGuide];
    bottomAnchor3 = [layoutMarginsGuide6 bottomAnchor];
    v60 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    [v60 setActive:1];
  }

  return v4;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v15.receiver = self;
  v15.super_class = CNFRegSettingsTemporaryPhoneCell;
  specifierCopy = specifier;
  [(PSTableCell *)&v15 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:@"cnfreg-temp-alias"];

  displayName = [v5 displayName];
  phoneNumberLabel = [(CNFRegSettingsTemporaryPhoneCell *)self phoneNumberLabel];
  [phoneNumberLabel setText:displayName];

  v8 = MEMORY[0x277CCACA8];
  v9 = CommunicationsSetupUIBundle();
  v10 = CNFRegStringTableName();
  v11 = [v9 localizedStringForKey:@"FACETIME_SETTINGS_TEMPORARY_PHONE_DAYS_REMAINING" value:&stru_2856D3978 table:v10];
  expirationDate = [v5 expirationDate];
  v13 = [v8 stringWithFormat:v11, -[CNFRegSettingsTemporaryPhoneCell daysUntilExpiration:](self, "daysUntilExpiration:", expirationDate)];
  expirationLabel = [(CNFRegSettingsTemporaryPhoneCell *)self expirationLabel];
  [expirationLabel setText:v13];
}

- (unint64_t)daysUntilExpiration:(id)expiration
{
  [expiration timeIntervalSinceNow];
  if (v3 >= 0.0)
  {
    return v3 / 0x15180;
  }

  else
  {
    return 0;
  }
}

@end