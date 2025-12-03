@interface WDClinicalSettingsAboutSection
- (id)_tableViewPrivacyInfoCell:(id)cell;
- (id)cellForRow:(unint64_t)row table:(id)table;
- (void)didSelectRow:(unint64_t)row representedByCell:(id)cell withCompletion:(id)completion;
@end

@implementation WDClinicalSettingsAboutSection

- (id)cellForRow:(unint64_t)row table:(id)table
{
  if (row)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(WDClinicalSettingsAboutSection *)self _tableViewPrivacyInfoCell:table, v4];
  }

  return v6;
}

- (id)_tableViewPrivacyInfoCell:(id)cell
{
  cellCopy = cell;
  v4 = +[WDClinicalSettingsViewAnalyticsDataCell defaultReuseIdentifier];
  v5 = [cellCopy dequeueReusableCellWithIdentifier:v4];

  v6 = HRLocalizedString(@"CLINICAL_ACCOUNTS_SETTINGS_OPT_IN_FOOTER_ABOUT_PRIVACY");
  textLabel = [v5 textLabel];
  [textLabel setText:v6];

  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  textLabel2 = [v5 textLabel];
  [textLabel2 setTextColor:systemBlueColor];

  textLabel3 = [v5 textLabel];
  [textLabel3 setTextAlignment:1];

  textLabel4 = [v5 textLabel];
  [textLabel4 setNumberOfLines:0];

  [v5 setAccessoryType:0];

  return v5;
}

- (void)didSelectRow:(unint64_t)row representedByCell:(id)cell withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[HRViewControllerFactory shared];
  makeImproveHealthRecordsPrivacyPresenter = [v7 makeImproveHealthRecordsPrivacyPresenter];

  delegate = [(HRWDTableViewSection *)self delegate];
  [makeImproveHealthRecordsPrivacyPresenter setPresentingViewController:delegate];
  [makeImproveHealthRecordsPrivacyPresenter present];
  completionCopy[2](completionCopy, 1, 0);
}

@end