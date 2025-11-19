@interface HUAccessorySettingsDetailsViewControllerFactory
+ (id)_viewControllerForIdentifier:(id)a3 groupItem:(id)a4;
+ (id)_viewControllerForIdentifier:(id)a3 settingItem:(id)a4;
+ (id)viewControllerForGroup:(id)a3;
+ (id)viewControllerForSettingItem:(id)a3;
@end

@implementation HUAccessorySettingsDetailsViewControllerFactory

+ (id)_viewControllerForIdentifier:(id)a3 groupItem:(id)a4
{
  v5 = a4;
  v6 = a3;
  if (_MergedGlobals_639 != -1)
  {
    dispatch_once(&_MergedGlobals_639, &__block_literal_global_261_0);
  }

  v7 = qword_2811221F8;
  v8 = [v7 objectForKeyedSubscript:v6];

  v9 = [[v8 alloc] initWithAccessoryGroupItem:v5];

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

+ (id)_viewControllerForIdentifier:(id)a3 settingItem:(id)a4
{
  v5 = a4;
  v6 = a3;
  if (qword_281122200 != -1)
  {
    dispatch_once(&qword_281122200, &__block_literal_global_311_0);
  }

  v7 = qword_281122208;
  v8 = [v7 objectForKeyedSubscript:v6];

  v9 = [[v8 alloc] initWithAccessorySettingItem:v5];

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

+ (id)viewControllerForSettingItem:(id)a3
{
  v4 = a3;
  v5 = [v4 entity];
  v6 = [v5 userInfo];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13390]];

  v8 = [v4 settingKeyPath];
  LODWORD(v6) = [v8 isEqualToString:*MEMORY[0x277D139E0]];

  if (v6)
  {

    v7 = @"SiriTriggerPhraseSettingDetailsViewController";
  }

  else if (!v7)
  {
    v10 = 0;
LABEL_8:
    v11 = [[HUAccessorySettingsDetailsViewController alloc] initWithAccessorySettingItem:v4];

    goto LABEL_9;
  }

  v9 = [a1 _viewControllerForIdentifier:v7 settingItem:v4];
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

+ (id)viewControllerForGroup:(id)a3
{
  v4 = a3;
  v5 = [v4 entity];
  v6 = [v5 userInfo];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13390]];

  if (!v7)
  {
    v9 = 0;
LABEL_6:
    v10 = [[HUAccessorySettingsDetailsViewController alloc] initWithAccessoryGroupItem:v4];

    goto LABEL_7;
  }

  v8 = [a1 _viewControllerForIdentifier:v7 groupItem:v4];
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