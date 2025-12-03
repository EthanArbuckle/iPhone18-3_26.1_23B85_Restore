@interface HUAccessorySettingsDetailsViewControllerFactory
+ (id)_viewControllerForIdentifier:(id)identifier groupItem:(id)item;
+ (id)_viewControllerForIdentifier:(id)identifier settingItem:(id)item;
+ (id)viewControllerForGroup:(id)group;
+ (id)viewControllerForSettingItem:(id)item;
@end

@implementation HUAccessorySettingsDetailsViewControllerFactory

+ (id)_viewControllerForIdentifier:(id)identifier groupItem:(id)item
{
  itemCopy = item;
  identifierCopy = identifier;
  if (_MergedGlobals_639 != -1)
  {
    dispatch_once(&_MergedGlobals_639, &__block_literal_global_261_0);
  }

  v7 = qword_2811221F8;
  v8 = [v7 objectForKeyedSubscript:identifierCopy];

  v9 = [[v8 alloc] initWithAccessoryGroupItem:itemCopy];

  return v9;
}

void __90__HUAccessorySettingsDetailsViewControllerFactory__viewControllerForIdentifier_groupItem___block_invoke_2()
{
  v3[11] = *MEMORY[0x277D85DE8];
  v2[0] = @"AnalyticsLogsViewController";
  v3[0] = objc_opt_class();
  v2[1] = @"AnalyticsViewController";
  v3[1] = objc_opt_class();
  v2[2] = @"AppleMusicAccountViewController";
  v3[2] = objc_opt_class();
  v2[3] = @"DataAnalyticsViewController";
  v3[3] = objc_opt_class();
  v2[4] = @"DoorbellChimeDevicesViewController";
  v3[4] = objc_opt_class();
  v2[5] = @"PlaybackInfluencesViewController";
  v3[5] = objc_opt_class();
  v2[6] = @"ProfilesViewController";
  v3[6] = objc_opt_class();
  v2[7] = @"SiriHistoryViewController";
  v3[7] = objc_opt_class();
  v2[8] = @"SiriOutputVoiceViewController";
  v3[8] = objc_opt_class();
  v2[9] = @"SiriPersonalRequestsViewController";
  v3[9] = objc_opt_class();
  v2[10] = @"SiriRecognitionLanguageViewController";
  v3[10] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:11];
  v1 = qword_2811221F8;
  qword_2811221F8 = v0;
}

+ (id)_viewControllerForIdentifier:(id)identifier settingItem:(id)item
{
  itemCopy = item;
  identifierCopy = identifier;
  if (qword_281122200 != -1)
  {
    dispatch_once(&qword_281122200, &__block_literal_global_311_0);
  }

  v7 = qword_281122208;
  v8 = [v7 objectForKeyedSubscript:identifierCopy];

  v9 = [[v8 alloc] initWithAccessorySettingItem:itemCopy];

  return v9;
}

void __92__HUAccessorySettingsDetailsViewControllerFactory__viewControllerForIdentifier_settingItem___block_invoke_2()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2[0] = @"AnnounceSettingsViewController";
  v3[0] = objc_opt_class();
  v2[1] = @"AudioAnalysisSettingsViewController";
  v3[1] = objc_opt_class();
  v2[2] = @"PlaybackInfluencesViewController";
  v3[2] = objc_opt_class();
  v2[3] = @"SiriTriggerPhraseSettingDetailsViewController";
  v3[3] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:4];
  v1 = qword_281122208;
  qword_281122208 = v0;
}

+ (id)viewControllerForSettingItem:(id)item
{
  itemCopy = item;
  entity = [itemCopy entity];
  userInfo = [entity userInfo];
  v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D13390]];

  settingKeyPath = [itemCopy settingKeyPath];
  LODWORD(userInfo) = [settingKeyPath isEqualToString:*MEMORY[0x277D139E0]];

  if (userInfo)
  {

    v7 = @"SiriTriggerPhraseSettingDetailsViewController";
  }

  else if (!v7)
  {
    v10 = 0;
LABEL_8:
    v11 = [[HUAccessorySettingsDetailsViewController alloc] initWithAccessorySettingItem:itemCopy];

    goto LABEL_9;
  }

  v9 = [self _viewControllerForIdentifier:v7 settingItem:itemCopy];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_8;
  }

  v11 = v9;
  if (([(HUAccessorySettingsDetailsViewController *)v9 conformsToProtocol:&unk_2824FE920]& 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v11;
}

+ (id)viewControllerForGroup:(id)group
{
  groupCopy = group;
  entity = [groupCopy entity];
  userInfo = [entity userInfo];
  v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D13390]];

  if (!v7)
  {
    v9 = 0;
LABEL_6:
    v10 = [[HUAccessorySettingsDetailsViewController alloc] initWithAccessoryGroupItem:groupCopy];

    goto LABEL_7;
  }

  v8 = [self _viewControllerForIdentifier:v7 groupItem:groupCopy];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_6;
  }

  v10 = v8;
  if (([(HUAccessorySettingsDetailsViewController *)v8 conformsToProtocol:&unk_2824FE920]& 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v10;
}

@end