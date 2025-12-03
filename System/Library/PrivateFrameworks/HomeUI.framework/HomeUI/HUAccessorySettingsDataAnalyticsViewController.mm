@interface HUAccessorySettingsDataAnalyticsViewController
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
@end

@implementation HUAccessorySettingsDataAnalyticsViewController

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  viewCopy = view;
  itemManager = [(HUItemTableViewController *)self itemManager];
  v8 = [itemManager footerTitleForSection:section];

  if (v8)
  {
    v9 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:@"footerReuseIdentifier"];

    if (!v9)
    {
      v9 = [[HUItemTableSectionHeaderFooterView alloc] initWithReuseIdentifier:@"footerReuseIdentifier"];
    }

    [(HUItemTableSectionHeaderFooterView *)v9 setType:1];
    itemManager2 = [(HUItemTableViewController *)self itemManager];
    v11 = [itemManager2 displayedSectionIdentifierForSectionIndex:section];

    if ([v11 isEqualToString:@"root.general.analytics.shareSpeakerAnalytics"])
    {
      v12 = HFLocalizedString();
      supportsAnalytics = [MEMORY[0x277D14CE8] supportsAnalytics];
      v14 = MEMORY[0x277CCA898];
      if (supportsAnalytics)
      {
        v15 = HFLocalizedString();
        hf_applePrivacyURL = [MEMORY[0x277CBEBC0] hf_applePrivacyURL];
        [v14 hf_attributedString:v15 withAppendedLinkString:v12 linkURL:hf_applePrivacyURL];
      }

      else
      {
        v15 = HFLocalizedString();
        hf_applePrivacyURL = [MEMORY[0x277CBEBC0] hf_applePrivacyURL];
        [v14 hf_attributedLinkStringForString:v15 linkString:v12 linkURL:hf_applePrivacyURL];
      }
      v22 = ;
      [(HUItemTableSectionHeaderFooterView *)v9 setMessage:v22];
    }

    else if ([v11 isEqualToString:@"root.general.analytics.shareSiriAnalytics"])
    {
      v17 = MEMORY[0x277CCA898];
      v18 = HFLocalizedString();
      v19 = HFLocalizedString();
      aboutImproveSiriAndDictationURL = [MEMORY[0x277D14C80] aboutImproveSiriAndDictationURL];
      v21 = [v17 hf_attributedString:v18 withAppendedLinkString:v19 linkURL:aboutImproveSiriAndDictationURL];
      [(HUItemTableSectionHeaderFooterView *)v9 setMessage:v21];
    }

    else
    {
      [(HUItemTableSectionHeaderFooterView *)v9 setMessage:v8];
    }

    messageTextView = [(HUItemTableSectionHeaderFooterView *)v9 messageTextView];
    [messageTextView setDelegate:self];
  }

  else
  {
    v25.receiver = self;
    v25.super_class = HUAccessorySettingsDataAnalyticsViewController;
    v9 = [(HUItemTableViewController *)&v25 tableView:viewCopy viewForFooterInSection:section];
  }

  return v9;
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  v25 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v23 = 2112;
    v24 = lCopy;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@: User tapped URL: %@", buf, 0x16u);
  }

  aboutImproveSiriAndDictationURL = [MEMORY[0x277D14C80] aboutImproveSiriAndDictationURL];
  v10 = [lCopy isEqual:aboutImproveSiriAndDictationURL];

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

  navigationController = [(HUAccessorySettingsDataAnalyticsViewController *)self navigationController];
  v16 = navigationController;
  if (navigationController)
  {
    selfCopy2 = navigationController;
  }

  else
  {
    selfCopy2 = self;
  }

  v18 = selfCopy2;

  [v12 setPresentingViewController:v18];
  [v12 present];

  return 0;
}

@end