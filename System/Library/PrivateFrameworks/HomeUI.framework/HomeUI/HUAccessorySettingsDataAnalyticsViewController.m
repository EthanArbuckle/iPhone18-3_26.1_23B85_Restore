@interface HUAccessorySettingsDataAnalyticsViewController
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
@end

@implementation HUAccessorySettingsDataAnalyticsViewController

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(HUItemTableViewController *)self itemManager];
  v8 = [v7 footerTitleForSection:a4];

  if (v8)
  {
    v9 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:@"footerReuseIdentifier"];

    if (!v9)
    {
      v9 = [[HUItemTableSectionHeaderFooterView alloc] initWithReuseIdentifier:@"footerReuseIdentifier"];
    }

    [(HUItemTableSectionHeaderFooterView *)v9 setType:1];
    v10 = [(HUItemTableViewController *)self itemManager];
    v11 = [v10 displayedSectionIdentifierForSectionIndex:a4];

    if ([v11 isEqualToString:@"root.general.analytics.shareSpeakerAnalytics"])
    {
      v12 = HFLocalizedString();
      v13 = [MEMORY[0x277D14CE8] supportsAnalytics];
      v14 = MEMORY[0x277CCA898];
      if (v13)
      {
        v15 = HFLocalizedString();
        v16 = [MEMORY[0x277CBEBC0] hf_applePrivacyURL];
        [v14 hf_attributedString:v15 withAppendedLinkString:v12 linkURL:v16];
      }

      else
      {
        v15 = HFLocalizedString();
        v16 = [MEMORY[0x277CBEBC0] hf_applePrivacyURL];
        [v14 hf_attributedLinkStringForString:v15 linkString:v12 linkURL:v16];
      }
      v22 = ;
      [(HUItemTableSectionHeaderFooterView *)v9 setMessage:v22];
    }

    else if ([v11 isEqualToString:@"root.general.analytics.shareSiriAnalytics"])
    {
      v17 = MEMORY[0x277CCA898];
      v18 = HFLocalizedString();
      v19 = HFLocalizedString();
      v20 = [MEMORY[0x277D14C80] aboutImproveSiriAndDictationURL];
      v21 = [v17 hf_attributedString:v18 withAppendedLinkString:v19 linkURL:v20];
      [(HUItemTableSectionHeaderFooterView *)v9 setMessage:v21];
    }

    else
    {
      [(HUItemTableSectionHeaderFooterView *)v9 setMessage:v8];
    }

    v23 = [(HUItemTableSectionHeaderFooterView *)v9 messageTextView];
    [v23 setDelegate:self];
  }

  else
  {
    v25.receiver = self;
    v25.super_class = HUAccessorySettingsDataAnalyticsViewController;
    v9 = [(HUItemTableViewController *)&v25 tableView:v6 viewForFooterInSection:a4];
  }

  return v9;
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = self;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@: User tapped URL: %@", buf, 0x16u);
  }

  v9 = [MEMORY[0x277D14C80] aboutImproveSiriAndDictationURL];
  v10 = [v7 isEqual:v9];

  v11 = MEMORY[0x277D37678];
  if (v10)
  {
    v12 = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:*MEMORY[0x277D376D8]];
  }

  else
  {
    v13 = *MEMORY[0x277D376A8];
    v20[0] = *MEMORY[0x277D376A0];
    v20[1] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
    v12 = [v11 presenterForPrivacyUnifiedAboutWithIdentifiers:v14];
  }

  v15 = [(HUAccessorySettingsDataAnalyticsViewController *)self navigationController];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = self;
  }

  v18 = v17;

  [v12 setPresentingViewController:v18];
  [v12 present];

  return 0;
}

@end