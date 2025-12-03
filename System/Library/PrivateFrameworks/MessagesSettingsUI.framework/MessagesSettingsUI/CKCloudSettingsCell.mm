@interface CKCloudSettingsCell
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)updateConfigurationUsingState:(id)state;
@end

@implementation CKCloudSettingsCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v4.receiver = self;
  v4.super_class = CKCloudSettingsCell;
  [(PSTableCell *)&v4 refreshCellContentsWithSpecifier:specifier];
  [(CKCloudSettingsCell *)self setNeedsUpdateConfiguration];
}

- (void)updateConfigurationUsingState:(id)state
{
  stateCopy = state;
  specifier = [(PSTableCell *)self specifier];
  v5 = [stateCopy copy];

  v6 = *MEMORY[0x277D3FF38];
  v7 = [specifier objectForKeyedSubscript:*MEMORY[0x277D3FF38]];

  if (v7)
  {
    v8 = [specifier objectForKeyedSubscript:v6];
    bOOLValue = [v8 BOOLValue];

    v10 = bOOLValue ^ 1u;
  }

  else
  {
    v10 = 0;
  }

  [v5 setDisabled:v10];
  cellConfiguration = [MEMORY[0x277D756E0] cellConfiguration];
  v12 = [cellConfiguration updatedConfigurationForState:v5];

  [v12 setPrefersSideBySideTextAndSecondaryText:1];
  name = [specifier name];
  [v12 setText:name];

  value = [(PSTableCell *)self value];
  [v12 setSecondaryText:value];

  appearance = [MEMORY[0x277D3FA48] appearance];
  altTextColor = [appearance altTextColor];

  textProperties = [v12 textProperties];
  font = [textProperties font];
  secondaryTextProperties = [v12 secondaryTextProperties];
  [secondaryTextProperties setFont:font];

  secondaryTextProperties2 = [v12 secondaryTextProperties];
  [secondaryTextProperties2 setColor:altTextColor];

  identifier = [specifier identifier];
  [(CKCloudSettingsCell *)self setAccessibilityIdentifier:identifier];

  [(CKCloudSettingsCell *)self setContentConfiguration:v12];
}

@end