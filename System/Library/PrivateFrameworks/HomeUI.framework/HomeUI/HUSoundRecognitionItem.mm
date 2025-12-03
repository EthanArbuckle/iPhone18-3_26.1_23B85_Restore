@interface HUSoundRecognitionItem
- (HUSoundRecognitionItem)initWithHome:(id)home;
- (id)_subclass_updateWithOptions:(id)options;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HUSoundRecognitionItem

- (HUSoundRecognitionItem)initWithHome:(id)home
{
  homeCopy = home;
  if (!homeCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUSoundRecognitionItem.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"home"}];
  }

  v11.receiver = self;
  v11.super_class = HUSoundRecognitionItem;
  v7 = [(HUSoundRecognitionItem *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_home, home);
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  home = [(HUSoundRecognitionItem *)self home];
  v6 = [v4 initWithHome:home];

  [v6 copyLatestResultsFromItem:self];
  return v6;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v4 = objc_opt_new();
  home = [(HUSoundRecognitionItem *)self home];
  if ([home hf_hasAtleastOneAudioAnalysisSupportedAccessory])
  {
    home2 = [(HUSoundRecognitionItem *)self home];
    v7 = [home2 hf_currentUserIsAdministrator] ^ 1;
  }

  else
  {
    v7 = 1;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithBool:v7];
  [v4 setObject:v8 forKeyedSubscript:*MEMORY[0x277D13FB8]];

  home3 = [(HUSoundRecognitionItem *)self home];
  audioAnalysisClassifierOptions = [home3 audioAnalysisClassifierOptions];

  v11 = _HULocalizedStringWithDefaultValue(@"HUListenSettings_Title", @"HUListenSettings_Title", 1);
  [v4 setObject:v11 forKeyedSubscript:*MEMORY[0x277D13F60]];

  if (audioAnalysisClassifierOptions)
  {
    v12 = @"HUSafetyAndSecuritySettingsNotifications_On";
  }

  else
  {
    v12 = @"HUSafetyAndSecuritySettingsNotifications_Off";
  }

  v13 = _HULocalizedStringWithDefaultValue(v12, v12, 1);
  [v4 setObject:v13 forKeyedSubscript:*MEMORY[0x277D13E20]];

  v14 = MEMORY[0x277CBEB98];
  home4 = [(HUSoundRecognitionItem *)self home];
  v16 = [v14 setWithObject:home4];
  [v4 setObject:v16 forKeyedSubscript:*MEMORY[0x277D13DA8]];

  v17 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v17;
}

@end