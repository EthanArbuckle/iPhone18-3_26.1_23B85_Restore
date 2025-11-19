@interface CNFRegSettingsTravelPhoneCell
- (CNFRegSettingsTravelPhoneCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation CNFRegSettingsTravelPhoneCell

- (CNFRegSettingsTravelPhoneCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v47.receiver = self;
  v47.super_class = CNFRegSettingsTravelPhoneCell;
  v4 = [(PSTableCell *)&v47 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D756B8]);
    phoneNumberLabel = v4->_phoneNumberLabel;
    v4->_phoneNumberLabel = v5;

    [(UILabel *)v4->_phoneNumberLabel setText:&stru_2856D3978];
    v7 = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v4->_phoneNumberLabel setTextColor:v7];

    v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v4->_phoneNumberLabel setFont:v8];

    [(UILabel *)v4->_phoneNumberLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [(CNFRegSettingsTravelPhoneCell *)v4 contentView];
    [v9 addSubview:v4->_phoneNumberLabel];

    v10 = objc_alloc_init(MEMORY[0x277D756B8]);
    descriptionLabel = v4->_descriptionLabel;
    v4->_descriptionLabel = v10;

    v12 = CommunicationsSetupUIBundle();
    v13 = CNFRegStringTableName();
    v14 = [v12 localizedStringForKey:@"FACETIME_SETTINGS_TRAVEL_PHONE_DESCRIPTION" value:&stru_2856D3978 table:v13];
    [(UILabel *)v4->_descriptionLabel setText:v14];

    [(UILabel *)v4->_descriptionLabel setNumberOfLines:0];
    v15 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v4->_descriptionLabel setTextColor:v15];

    v16 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [(UILabel *)v4->_descriptionLabel setFont:v16];

    [(UILabel *)v4->_descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = [(CNFRegSettingsTravelPhoneCell *)v4 contentView];
    [v17 addSubview:v4->_descriptionLabel];

    v18 = [(UILabel *)v4->_phoneNumberLabel topAnchor];
    v19 = [(CNFRegSettingsTravelPhoneCell *)v4 contentView];
    v20 = [v19 layoutMarginsGuide];
    v21 = [v20 topAnchor];
    v22 = [v18 constraintEqualToAnchor:v21];
    [v22 setActive:1];

    v23 = [(UILabel *)v4->_phoneNumberLabel leadingAnchor];
    v24 = [(CNFRegSettingsTravelPhoneCell *)v4 contentView];
    v25 = [v24 layoutMarginsGuide];
    v26 = [v25 leadingAnchor];
    v27 = [v23 constraintEqualToAnchor:v26];
    [v27 setActive:1];

    v28 = [(UILabel *)v4->_descriptionLabel topAnchor];
    v29 = [(UILabel *)v4->_phoneNumberLabel bottomAnchor];
    v30 = [v28 constraintEqualToAnchor:v29 constant:8.0];
    [v30 setActive:1];

    v31 = [(UILabel *)v4->_descriptionLabel leadingAnchor];
    v32 = [(CNFRegSettingsTravelPhoneCell *)v4 contentView];
    v33 = [v32 layoutMarginsGuide];
    v34 = [v33 leadingAnchor];
    v35 = [v31 constraintEqualToAnchor:v34];
    [v35 setActive:1];

    v36 = [(UILabel *)v4->_descriptionLabel trailingAnchor];
    v37 = [(CNFRegSettingsTravelPhoneCell *)v4 contentView];
    v38 = [v37 layoutMarginsGuide];
    v39 = [v38 trailingAnchor];
    v40 = [v36 constraintEqualToAnchor:v39];
    [v40 setActive:1];

    v41 = [(UILabel *)v4->_descriptionLabel bottomAnchor];
    v42 = [(CNFRegSettingsTravelPhoneCell *)v4 contentView];
    v43 = [v42 layoutMarginsGuide];
    v44 = [v43 bottomAnchor];
    v45 = [v41 constraintEqualToAnchor:v44];
    [v45 setActive:1];
  }

  return v4;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v13.receiver = self;
  v13.super_class = CNFRegSettingsTravelPhoneCell;
  v4 = a3;
  [(PSTableCell *)&v13 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 propertyForKey:@"cnfreg-travel-sim"];

  v6 = CommunicationsSetupUIBundle();
  v7 = CNFRegStringTableName();
  v8 = [v6 localizedStringForKey:@"FACETIME_SETTINGS_TRAVEL_PHONE_TITLE" value:&stru_2856D3978 table:v7];

  v9 = MEMORY[0x277CCACA8];
  v10 = [v5 displayName];
  v11 = [v9 localizedStringWithFormat:v8, v10];
  v12 = [(CNFRegSettingsTravelPhoneCell *)self phoneNumberLabel];
  [v12 setText:v11];
}

@end