@interface CKCloudSettingsCell
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)updateConfigurationUsingState:(id)a3;
@end

@implementation CKCloudSettingsCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = CKCloudSettingsCell;
  [(PSTableCell *)&v4 refreshCellContentsWithSpecifier:a3];
  [(CKCloudSettingsCell *)self setNeedsUpdateConfiguration];
}

- (void)updateConfigurationUsingState:(id)a3
{
  v4 = a3;
  v22 = [(PSTableCell *)self specifier];
  v5 = [v4 copy];

  v6 = *MEMORY[0x277D3FF38];
  v7 = [v22 objectForKeyedSubscript:*MEMORY[0x277D3FF38]];

  if (v7)
  {
    v8 = [v22 objectForKeyedSubscript:v6];
    v9 = [v8 BOOLValue];

    v10 = v9 ^ 1u;
  }

  else
  {
    v10 = 0;
  }

  [v5 setDisabled:v10];
  v11 = [MEMORY[0x277D756E0] cellConfiguration];
  v12 = [v11 updatedConfigurationForState:v5];

  [v12 setPrefersSideBySideTextAndSecondaryText:1];
  v13 = [v22 name];
  [v12 setText:v13];

  v14 = [(PSTableCell *)self value];
  [v12 setSecondaryText:v14];

  v15 = [MEMORY[0x277D3FA48] appearance];
  v16 = [v15 altTextColor];

  v17 = [v12 textProperties];
  v18 = [v17 font];
  v19 = [v12 secondaryTextProperties];
  [v19 setFont:v18];

  v20 = [v12 secondaryTextProperties];
  [v20 setColor:v16];

  v21 = [v22 identifier];
  [(CKCloudSettingsCell *)self setAccessibilityIdentifier:v21];

  [(CKCloudSettingsCell *)self setContentConfiguration:v12];
}

@end