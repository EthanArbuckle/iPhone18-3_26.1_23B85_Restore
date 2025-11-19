@interface HPSDeviceAnalytics
- (HPSDeviceAnalytics)init;
- (void)resetAnalyticDict;
- (void)resetAnalyticDictFitTest;
- (void)resetAnalyticDictV2;
- (void)sendFeatureInfoEvent;
- (void)submitDeviceAnalytics;
- (void)submitDeviceAnalyticsVer2;
- (void)submitFitTestAnalytics;
- (void)updateEntryPoint:(int)a3;
- (void)updateFeatureChangeCount:(int)a3;
- (void)updateFeatureValue:(int)a3 value:(unsigned int)a4 featureValueString:(id)a5;
@end

@implementation HPSDeviceAnalytics

- (HPSDeviceAnalytics)init
{
  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Headphone Configs: init Analytics", buf, 2u);
  }

  v7.receiver = self;
  v7.super_class = HPSDeviceAnalytics;
  v4 = [(HPSDeviceAnalytics *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(HPSDeviceAnalytics *)v4 resetAnalyticDict];
    [(HPSDeviceAnalytics *)v5 resetAnalyticDictV2];
    [(HPSDeviceAnalytics *)v5 resetAnalyticDictFitTest];
  }

  return v5;
}

- (void)updateEntryPoint:(int)a3
{
  v10 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_6;
    }

    v4 = @"iOS_Info_Button";
  }

  else
  {
    v4 = @"iOS_Top_Level";
  }

  [(NSMutableDictionary *)self->_analyticDict setValue:v4 forKey:@"EntryPoint"];
LABEL_6:
  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(NSMutableDictionary *)self->_analyticDict valueForKey:@"EntryPoint"];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "Headphone Configs: Analytics, Update Entry Point: %@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateFeatureChangeCount:(int)a3
{
  v12 = *MEMORY[0x277D85DE8];
  if (a3 > 0x36)
  {
    v4 = &stru_286339F58;
  }

  else
  {
    v4 = off_2796ADF68[a3];
  }

  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "Headphone Configs: Analytics, Update Feature: %@", &v10, 0xCu);
  }

  v6 = MEMORY[0x277CCABB0];
  v7 = [(NSMutableDictionary *)self->_analyticDict objectForKeyedSubscript:v4];
  v8 = [v6 numberWithInt:{objc_msgSend(v7, "intValue") + 1}];
  [(NSMutableDictionary *)self->_analyticDict setObject:v8 forKeyedSubscript:v4];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateFeatureValue:(int)a3 value:(unsigned int)a4 featureValueString:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = v8;
  v10 = &stru_286339F58;
  v11 = a3 - 1;
  v12 = &stru_286339F58;
  switch(v11)
  {
    case 0:
      v12 = @"AdaptiveTransparencyValue";
      goto LABEL_62;
    case 2:
      if (a4 == 1)
      {
        v10 = @"On";
      }

      else
      {
        v10 = @"Off";
      }

      v12 = @"AdaptiveVolumeValue";
      goto LABEL_62;
    case 4:
      v12 = @"CaseSoundValue";
      goto LABEL_62;
    case 6:
      v13 = @"CrownRotationValue";
      v14 = @"BackToFront";
      v15 = @"CrownRotationValue";
      v16 = @"Unknown";
      v18 = @"CrownRotationValue";
      v19 = @"FrontToBack";
      goto LABEL_33;
    case 8:
      v12 = @"CycleBetweenLeftBudValue";
      goto LABEL_62;
    case 10:
      v12 = @"CycleBetweenRightBudValue";
      goto LABEL_62;
    case 12:
      v12 = @"CycleBetweenV2LeftBudValue";
      goto LABEL_62;
    case 14:
      v12 = @"CycleBetweenV2RightBudValue";
      goto LABEL_62;
    case 15:
      v12 = @"CycleBetweenSingleValue";
      goto LABEL_62;
    case 19:
      if (a4 < 5)
      {
        v10 = off_2796AE120[a4];
        v12 = @"DoubleTapLeftValue";
        goto LABEL_62;
      }

      v12 = @"DoubleTapLeftValue";
      goto LABEL_61;
    case 20:
      if (a4 < 5)
      {
        v10 = off_2796AE120[a4];
        v12 = @"DoubleTapRightValue";
        goto LABEL_62;
      }

      v12 = @"DoubleTapRightValue";
      goto LABEL_61;
    case 23:
      v13 = @"EndCallValue";
      v14 = @"PressOnce";
      v15 = @"EndCallValue";
      v16 = @"Unknown";
      v17 = @"EndCallValue";
      goto LABEL_19;
    case 25:
      v12 = @"FindMyNetworkValue";
      goto LABEL_62;
    case 28:
      v12 = @"InEarOnHeadDetectionValue";
      goto LABEL_62;
    case 30:
      if (a4 - 1 < 3)
      {
        v10 = off_2796AE148[a4 - 1];
        v12 = @"ListeningModeValue";
        goto LABEL_62;
      }

      v12 = @"ListeningModeValue";
      goto LABEL_61;
    case 32:
      if (a4 - 1 < 4)
      {
        v10 = off_2796AE160[a4 - 1];
        v12 = @"ListeningModeV2Value";
        goto LABEL_62;
      }

      v12 = @"ListeningModeV2Value";
      goto LABEL_61;
    case 34:
      if (a4 == 1)
      {
        v10 = @"On";
      }

      else
      {
        v10 = @"Off";
      }

      v12 = @"MagneticEarbudDetectValue";
      goto LABEL_62;
    case 36:
      if (a4 < 3)
      {
        v10 = off_2796AE180[a4];
        v12 = @"MicrophoneSwitchValue";
        goto LABEL_62;
      }

      v12 = @"MicrophoneSwitchValue";
      goto LABEL_61;
    case 38:
      v13 = @"MuteCallValue";
      v14 = @"PressOnce";
      v15 = @"MuteCallValue";
      v16 = @"Unknown";
      v17 = @"MuteCallValue";
LABEL_19:
      if (a4 == 3)
      {
        v16 = @"PressTwice";
        v15 = v17;
      }

      v20 = a4 == 2;
      goto LABEL_36;
    case 40:
      v12 = @"OptimizedBatteryChargingValue";
      goto LABEL_62;
    case 42:
      if (a4 - 1 < 7)
      {
        v10 = off_2796AE198[a4 - 1];
        v12 = @"PressHoldLeftBudValue";
        goto LABEL_62;
      }

      v12 = @"PressHoldLeftBudValue";
      goto LABEL_61;
    case 43:
      if (a4 - 1 >= 7)
      {
        v12 = @"PressHoldRightBudValue";
LABEL_61:
        v10 = @"Unknown";
      }

      else
      {
        v10 = off_2796AE198[a4 - 1];
        v12 = @"PressHoldRightBudValue";
      }

LABEL_62:
      if (v8)
      {
        v10 = v8;
      }

      v21 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 138412546;
        v24 = v12;
        v25 = 2112;
        v26 = v10;
        _os_log_impl(&dword_251143000, v21, OS_LOG_TYPE_DEFAULT, "Headphone Configs: Analytics, Update Feature: %@ Value: %@", &v23, 0x16u);
      }

      [(NSMutableDictionary *)self->_analyticDict setObject:v10 forKeyedSubscript:v12];
      v22 = *MEMORY[0x277D85DE8];
      return;
    case 48:
      v13 = @"SmartRoutingValue";
      v14 = @"Automatic";
      v15 = @"SmartRoutingValue";
      v16 = @"Unknown";
      v18 = @"SmartRoutingValue";
      v19 = @"LastConnect";
LABEL_33:
      if (a4 == 2)
      {
        v16 = v19;
        v15 = v18;
      }

      v20 = a4 == 1;
LABEL_36:
      if (v20)
      {
        v10 = v14;
      }

      else
      {
        v10 = v16;
      }

      if (v20)
      {
        v12 = v13;
      }

      else
      {
        v12 = v15;
      }

      goto LABEL_62;
    case 52:
      if (a4 == 1)
      {
        v10 = @"On";
      }

      else
      {
        v10 = @"Off";
      }

      v12 = @"SpeechDetectionValue";
      goto LABEL_62;
    default:
      goto LABEL_62;
  }
}

- (void)resetAnalyticDict
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{@"ProductID", &unk_28634DB70, @"AdaptiveTransparency", &stru_286339F58, @"AdaptiveTransparencyValue", &unk_28634DB70, @"AdaptiveVolume", &stru_286339F58, @"AdaptiveVolumeValue", &unk_28634DB70, @"CaseSound", &stru_286339F58, @"CaseSoundValue", &unk_28634DB70, @"CrownRotation", &stru_286339F58, @"CrownRotationValue", &unk_28634DB70, @"CycleBetweenLeftBud", &stru_286339F58, @"CycleBetweenLeftBudValue", &unk_28634DB70, @"CycleBetweenRightBud", &stru_286339F58, @"CycleBetweenRightBudValue", &unk_28634DB70, @"CycleBetweenV2LeftBud", &stru_286339F58, @"CycleBetweenV2LeftBudValue", &unk_28634DB70, @"CycleBetweenV2RightBud", &stru_286339F58, @"CycleBetweenV2RightBudValue", &stru_286339F58, @"CycleBetweenSingleValue", &unk_28634DB70, @"DeviceName", &unk_28634DB70, @"Disconnect", &unk_28634DB70, @"DoubleTap", &stru_286339F58, @"DoubleTapLeftValue", &stru_286339F58, @"DoubleTapRightValue", @"Unknown", @"EntryPoint", &unk_28634DB70, @"EarTipFitTest", &unk_28634DB70, @"EndCall", &stru_286339F58, @"EndCallValue", &unk_28634DB70, @"FindMyNetwork", &stru_286339F58, @"FindMyNetworkValue", &unk_28634DB70, @"ForgetDevice", &unk_28634DB70, @"InEarOnHeadDetection"}];
  analyticDict = self->_analyticDict;
  self->_analyticDict = v3;

  MEMORY[0x2821F96F8]();
}

- (void)resetAnalyticDictFitTest
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{@"BudMileage", &unk_28634DB70, @"ConfidenceL", &unk_28634DB70, @"ConfidenceR", &unk_28634DB70, @"FirstTimeUse", &unk_28634DB70, @"FitTestType", &unk_28634DB70, @"HeadphonePID", &unk_28634DB70, @"SealMetricL", &unk_28634DB70, @"SealMetricR", &unk_28634DB70, @"SessionTime", &unk_28634DB70, @"TestResult", 0}];
  analyticDictFitTest = self->_analyticDictFitTest;
  self->_analyticDictFitTest = v3;

  MEMORY[0x2821F96F8]();
}

- (void)resetAnalyticDictV2
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{@"FeatureChangeCount", &stru_286339F58, @"FeatureName", &stru_286339F58, @"FeatureValue", &unk_28634DB70, @"HeadphonePID", 0}];
  analyticDictV2 = self->_analyticDictV2;
  self->_analyticDictV2 = v3;

  MEMORY[0x2821F96F8]();
}

- (void)submitFitTestAnalytics
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = self->_analyticDictFitTest;
  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v2;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Headphone Configs: Analytics, Submit Analytics: %@", buf, 0xCu);
  }

  v6 = v2;
  v4 = v2;
  AnalyticsSendEventLazy();

  v5 = *MEMORY[0x277D85DE8];
}

- (void)submitDeviceAnalyticsVer2
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = self->_analyticDictV2;
  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v2;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Headphone Configs: Analytics, Submit Analytics: %@", buf, 0xCu);
  }

  v6 = v2;
  v4 = v2;
  AnalyticsSendEventLazy();

  v5 = *MEMORY[0x277D85DE8];
}

- (void)sendFeatureInfoEvent
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"AdaptiveVolume", @"CycleBetweenV2LeftBud", @"CycleBetweenV2RightBud", @"EndCall", @"ListeningModeV2", @"MuteCall", @"SpeechDetection", 0}];
  v4 = self->_analyticDict;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v3;
  v5 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)v4 objectForKeyedSubscript:v9];
        [(NSMutableDictionary *)self->_analyticDictV2 setObject:v10 forKeyedSubscript:@"FeatureChangeCount"];

        [(NSMutableDictionary *)self->_analyticDictV2 setObject:v9 forKeyedSubscript:@"FeatureName"];
        v11 = [v9 stringByAppendingString:@"Value"];
        v12 = [(NSMutableDictionary *)v4 objectForKeyedSubscript:v11];
        [(NSMutableDictionary *)self->_analyticDictV2 setObject:v12 forKeyedSubscript:@"FeatureValue"];

        v13 = [(NSMutableDictionary *)v4 objectForKeyedSubscript:@"ProductID"];
        [(NSMutableDictionary *)self->_analyticDictV2 setObject:v13 forKeyedSubscript:@"HeadphonePID"];

        [(HPSDeviceAnalytics *)self submitDeviceAnalyticsVer2];
      }

      v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }

  [(NSMutableDictionary *)self->_analyticDictV2 setObject:&unk_28634DB70 forKeyedSubscript:@"FeatureChangeCount"];
  [(NSMutableDictionary *)self->_analyticDictV2 setObject:@"ListeningMode_PersonalizedVolume_ConversationDetect" forKeyedSubscript:@"FeatureName"];
  v14 = MEMORY[0x277CCACA8];
  v15 = [(NSMutableDictionary *)v4 objectForKeyedSubscript:@"ListeningModeV2Value"];
  v16 = [(NSMutableDictionary *)v4 objectForKeyedSubscript:@"AdaptiveVolumeValue"];
  v17 = [(NSMutableDictionary *)v4 objectForKeyedSubscript:@"SpeechDetectionValue"];
  v18 = [v14 stringWithFormat:@"%@_%@_%@", v15, v16, v17];
  [(NSMutableDictionary *)self->_analyticDictV2 setObject:v18 forKeyedSubscript:@"FeatureValue"];

  v19 = [(NSMutableDictionary *)v4 objectForKeyedSubscript:@"ProductID"];
  [(NSMutableDictionary *)self->_analyticDictV2 setObject:v19 forKeyedSubscript:@"HeadphonePID"];

  [(HPSDeviceAnalytics *)self submitDeviceAnalyticsVer2];
  v20 = *MEMORY[0x277D85DE8];
}

- (void)submitDeviceAnalytics
{
  v10 = *MEMORY[0x277D85DE8];
  [(HPSDeviceAnalytics *)self sendFeatureInfoEvent];
  v3 = self->_analyticDict;
  v4 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = v3;
    _os_log_impl(&dword_251143000, v4, OS_LOG_TYPE_DEFAULT, "Headphone Configs: Analytics, Submit Analytics: %@", buf, 0xCu);
  }

  v7 = v3;
  v5 = v3;
  AnalyticsSendEventLazy();
  [(HPSDeviceAnalytics *)self resetAnalyticDict];
  [(HPSDeviceAnalytics *)self resetAnalyticDictV2];

  v6 = *MEMORY[0x277D85DE8];
}

@end