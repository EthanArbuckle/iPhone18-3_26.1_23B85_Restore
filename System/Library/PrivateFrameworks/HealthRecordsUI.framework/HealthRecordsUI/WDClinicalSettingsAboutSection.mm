@interface WDClinicalSettingsAboutSection
- (id)_tableViewPrivacyInfoCell:(id)a3;
- (id)cellForRow:(unint64_t)a3 table:(id)a4;
- (void)didSelectRow:(unint64_t)a3 representedByCell:(id)a4 withCompletion:(id)a5;
@end

@implementation WDClinicalSettingsAboutSection

- (id)cellForRow:(unint64_t)a3 table:(id)a4
{
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(WDClinicalSettingsAboutSection *)self _tableViewPrivacyInfoCell:a4, v4];
  }

  return v6;
}

- (id)_tableViewPrivacyInfoCell:(id)a3
{
  v3 = a3;
  v4 = +[WDClinicalSettingsViewAnalyticsDataCell defaultReuseIdentifier];
  v5 = [v3 dequeueReusableCellWithIdentifier:v4];

  v6 = HRLocalizedString(@"CLINICAL_ACCOUNTS_SETTINGS_OPT_IN_FOOTER_ABOUT_PRIVACY");
  v7 = [v5 textLabel];
  [v7 setText:v6];

  v8 = [MEMORY[0x1E69DC888] systemBlueColor];
  v9 = [v5 textLabel];
  [v9 setTextColor:v8];

  v10 = [v5 textLabel];
  [v10 setTextAlignment:1];

  v11 = [v5 textLabel];
  [v11 setNumberOfLines:0];

  [v5 setAccessoryType:0];

  return v5;
}

- (void)didSelectRow:(unint64_t)a3 representedByCell:(id)a4 withCompletion:(id)a5
{
  v6 = a5;
  v7 = +[HRViewControllerFactory shared];
  v9 = [v7 makeImproveHealthRecordsPrivacyPresenter];

  v8 = [(HRWDTableViewSection *)self delegate];
  [v9 setPresentingViewController:v8];
  [v9 present];
  v6[2](v6, 1, 0);
}

@end