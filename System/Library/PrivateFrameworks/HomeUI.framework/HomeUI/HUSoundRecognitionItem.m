@interface HUSoundRecognitionItem
- (HUSoundRecognitionItem)initWithHome:(id)a3;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HUSoundRecognitionItem

- (HUSoundRecognitionItem)initWithHome:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"HUSoundRecognitionItem.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"home"}];
  }

  v11.receiver = self;
  v11.super_class = HUSoundRecognitionItem;
  v7 = [(HUSoundRecognitionItem *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_home, a3);
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(HUSoundRecognitionItem *)self home];
  v6 = [v4 initWithHome:v5];

  [v6 copyLatestResultsFromItem:self];
  return v6;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = objc_opt_new();
  v5 = [(HUSoundRecognitionItem *)self home];
  if ([v5 hf_hasAtleastOneAudioAnalysisSupportedAccessory])
  {
    v6 = [(HUSoundRecognitionItem *)self home];
    v7 = [v6 hf_currentUserIsAdministrator] ^ 1;
  }

  else
  {
    v7 = 1;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithBool:v7];
  [v4 setObject:v8 forKeyedSubscript:*MEMORY[0x277D13FB8]];

  v9 = [(HUSoundRecognitionItem *)self home];
  v10 = [v9 audioAnalysisClassifierOptions];

  v11 = _HULocalizedStringWithDefaultValue(@"HUListenSettings_Title", @"HUListenSettings_Title", 1);
  [v4 setObject:v11 forKeyedSubscript:*MEMORY[0x277D13F60]];

  if (v10)
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
  v15 = [(HUSoundRecognitionItem *)self home];
  v16 = [v14 setWithObject:v15];
  [v4 setObject:v16 forKeyedSubscript:*MEMORY[0x277D13DA8]];

  v17 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v17;
}

@end