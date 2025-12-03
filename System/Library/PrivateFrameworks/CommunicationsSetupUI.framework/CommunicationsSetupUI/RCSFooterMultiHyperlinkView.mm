@interface RCSFooterMultiHyperlinkView
+ (id)rcsFooterTextWithUncertifiedSubscriptions:(BOOL)subscriptions;
- (RCSFooterMultiHyperlinkView)initWithSpecifier:(id)specifier;
- (void)_launchCellularSettings:(id)settings;
- (void)_launchLearnMoreURL:(id)l;
@end

@implementation RCSFooterMultiHyperlinkView

- (RCSFooterMultiHyperlinkView)initWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = [(RCSFooterMultiHyperlinkView *)self initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v5)
  {
    v6 = MessagesSettingsLocalizedString(@"RCS_FOOTER_LEARN_MORE");
    v7 = [specifierCopy objectForKeyedSubscript:@"RCSFooterMultiHyperlinkViewUncertifiedSubscription"];
    bOOLValue = [v7 BOOLValue];

    v9 = [RCSFooterMultiHyperlinkView rcsFooterTextWithUncertifiedSubscriptions:bOOLValue];
    v10 = [specifierCopy propertyForKey:@"RCSFooterMultiHyperlinkViewSIMLabelKey"];
    if (v10)
    {
      v11 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.Cellular"];
      v12 = MessagesSettingsLocalizedString(@"CELLULAR_DATA_SETTINGS");
      v25 = v6;
      v13 = MEMORY[0x277CCACA8];
      v14 = MessagesSettingsLocalizedString(@"RCS_FOOTER_ACTIVATION_FAILURE_TEXT");
      v15 = [v13 localizedStringWithFormat:v14, v10, v12];

      v16 = [MEMORY[0x277CCACA8] localizedStringWithFormat:@"%@\n\n%@", v15, v9];

      v17 = [v16 localizedStandardRangeOfString:v12];
      v19 = v18;

      v20 = v11 != 0;
      v9 = v16;
      v6 = v25;
    }

    else
    {
      v20 = 0;
      v19 = 0;
      v17 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v21 = [v9 localizedStandardRangeOfString:v6];
    v23 = v22;
    [specifierCopy setProperty:v9 forKey:*MEMORY[0x277D3FF88]];
    if (v20 && v17 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [specifierCopy addFooterHyperlinkWithRange:v17 target:v19 action:{v5, sel__launchCellularSettings_}];
    }

    [specifierCopy addFooterHyperlinkWithRange:v21 target:v23 action:{v5, sel__launchLearnMoreURL_}];
    [(PSFooterMultiHyperlinkView *)v5 refreshContentsWithSpecifier:specifierCopy];
  }

  return v5;
}

- (void)_launchCellularSettings:(id)settings
{
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.Cellular"];
  [defaultWorkspace openSensitiveURL:v3 withOptions:0 error:0];
}

- (void)_launchLearnMoreURL:(id)l
{
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v3 = MEMORY[0x277CBEBC0];
  v4 = MessagesSettingsLocalizedString(@"RCS_LEARN_MORE_URL");
  v5 = [v3 URLWithString:v4];
  [defaultWorkspace openURL:v5 withOptions:0 error:0];
}

+ (id)rcsFooterTextWithUncertifiedSubscriptions:(BOOL)subscriptions
{
  subscriptionsCopy = subscriptions;
  v4 = MessagesSettingsLocalizedString(@"RCS_FOOTER_TEXT");
  v5 = MessagesSettingsLocalizedString(@"RCS_FOOTER_LEARN_MORE");
  if (subscriptionsCopy)
  {
    v6 = MessagesSettingsLocalizedString(@"RCS_FOOTER_UNCERTIFIED_CARRIER_FORMAT");
    v7 = MessagesSettingsLocalizedString(@"RCS_FOOTER_TEXT_UNCERTIFIED_CARRIER");
    v8 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v6, v4, v7, v5];
  }

  else
  {
    v6 = MessagesSettingsLocalizedString(@"RCS_FOOTER_FORMAT");
    v8 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v6, v4, v5];
  }

  return v8;
}

@end