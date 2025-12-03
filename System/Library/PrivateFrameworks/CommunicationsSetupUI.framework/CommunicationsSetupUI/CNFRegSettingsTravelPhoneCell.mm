@interface CNFRegSettingsTravelPhoneCell
- (CNFRegSettingsTravelPhoneCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation CNFRegSettingsTravelPhoneCell

- (CNFRegSettingsTravelPhoneCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v47.receiver = self;
  v47.super_class = CNFRegSettingsTravelPhoneCell;
  v4 = [(PSTableCell *)&v47 initWithStyle:style reuseIdentifier:identifier];
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
    contentView = [(CNFRegSettingsTravelPhoneCell *)v4 contentView];
    [contentView addSubview:v4->_phoneNumberLabel];

    v10 = objc_alloc_init(MEMORY[0x277D756B8]);
    descriptionLabel = v4->_descriptionLabel;
    v4->_descriptionLabel = v10;

    v12 = CommunicationsSetupUIBundle();
    v13 = CNFRegStringTableName();
    v14 = [v12 localizedStringForKey:@"FACETIME_SETTINGS_TRAVEL_PHONE_DESCRIPTION" value:&stru_2856D3978 table:v13];
    [(UILabel *)v4->_descriptionLabel setText:v14];

    [(UILabel *)v4->_descriptionLabel setNumberOfLines:0];
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v4->_descriptionLabel setTextColor:secondaryLabelColor];

    v16 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [(UILabel *)v4->_descriptionLabel setFont:v16];

    [(UILabel *)v4->_descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView2 = [(CNFRegSettingsTravelPhoneCell *)v4 contentView];
    [contentView2 addSubview:v4->_descriptionLabel];

    topAnchor = [(UILabel *)v4->_phoneNumberLabel topAnchor];
    contentView3 = [(CNFRegSettingsTravelPhoneCell *)v4 contentView];
    layoutMarginsGuide = [contentView3 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v22 setActive:1];

    leadingAnchor = [(UILabel *)v4->_phoneNumberLabel leadingAnchor];
    contentView4 = [(CNFRegSettingsTravelPhoneCell *)v4 contentView];
    layoutMarginsGuide2 = [contentView4 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide2 leadingAnchor];
    v27 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v27 setActive:1];

    topAnchor3 = [(UILabel *)v4->_descriptionLabel topAnchor];
    bottomAnchor = [(UILabel *)v4->_phoneNumberLabel bottomAnchor];
    v30 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:8.0];
    [v30 setActive:1];

    leadingAnchor3 = [(UILabel *)v4->_descriptionLabel leadingAnchor];
    contentView5 = [(CNFRegSettingsTravelPhoneCell *)v4 contentView];
    layoutMarginsGuide3 = [contentView5 layoutMarginsGuide];
    leadingAnchor4 = [layoutMarginsGuide3 leadingAnchor];
    v35 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [v35 setActive:1];

    trailingAnchor = [(UILabel *)v4->_descriptionLabel trailingAnchor];
    contentView6 = [(CNFRegSettingsTravelPhoneCell *)v4 contentView];
    layoutMarginsGuide4 = [contentView6 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide4 trailingAnchor];
    v40 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v40 setActive:1];

    bottomAnchor2 = [(UILabel *)v4->_descriptionLabel bottomAnchor];
    contentView7 = [(CNFRegSettingsTravelPhoneCell *)v4 contentView];
    layoutMarginsGuide5 = [contentView7 layoutMarginsGuide];
    bottomAnchor3 = [layoutMarginsGuide5 bottomAnchor];
    v45 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    [v45 setActive:1];
  }

  return v4;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v13.receiver = self;
  v13.super_class = CNFRegSettingsTravelPhoneCell;
  specifierCopy = specifier;
  [(PSTableCell *)&v13 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:@"cnfreg-travel-sim"];

  v6 = CommunicationsSetupUIBundle();
  v7 = CNFRegStringTableName();
  v8 = [v6 localizedStringForKey:@"FACETIME_SETTINGS_TRAVEL_PHONE_TITLE" value:&stru_2856D3978 table:v7];

  v9 = MEMORY[0x277CCACA8];
  displayName = [v5 displayName];
  v11 = [v9 localizedStringWithFormat:v8, displayName];
  phoneNumberLabel = [(CNFRegSettingsTravelPhoneCell *)self phoneNumberLabel];
  [phoneNumberLabel setText:v11];
}

@end