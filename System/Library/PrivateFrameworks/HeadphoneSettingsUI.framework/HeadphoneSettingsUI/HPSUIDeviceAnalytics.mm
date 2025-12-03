@interface HPSUIDeviceAnalytics
- (HPSUIDeviceAnalytics)init;
- (void)resetAnalyticDict;
- (void)resetAnalyticDictFitTest;
- (void)resetAnalyticDictV2;
- (void)sendFeatureInfoEvent;
- (void)submitDeviceAnalytics;
- (void)submitDeviceAnalyticsVer2;
- (void)submitFitTestAnalytics;
- (void)updateEntryPoint:(int)point;
- (void)updateFeatureChangeCount:(int)count;
- (void)updateFeatureValue:(int)value value:(unsigned int)a4 featureValueString:(id)string;
- (void)updateFitTestValue:(int)value value:(int)a4;
- (void)updateProductID:(unsigned int)d;
@end

@implementation HPSUIDeviceAnalytics

- (HPSUIDeviceAnalytics)init
{
  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Headphone Configs: init Analytics", buf, 2u);
  }

  v7.receiver = self;
  v7.super_class = HPSUIDeviceAnalytics;
  v4 = [(HPSUIDeviceAnalytics *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(HPSUIDeviceAnalytics *)v4 resetAnalyticDict];
    [(HPSUIDeviceAnalytics *)v5 resetAnalyticDictV2];
    [(HPSUIDeviceAnalytics *)v5 resetAnalyticDictFitTest];
  }

  return v5;
}

- (void)updateProductID:(unsigned int)d
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&d];
  [(NSMutableDictionary *)self->_analyticDict setObject:v4 forKeyedSubscript:@"ProductID"];

  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(NSMutableDictionary *)self->_analyticDict valueForKey:@"ProductID"];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_1AC1C3000, v5, OS_LOG_TYPE_DEFAULT, "Headphone Configs: Analytics, Update Product ID: %@", &v7, 0xCu);
  }
}

- (void)updateEntryPoint:(int)point
{
  v9 = *MEMORY[0x1E69E9840];
  if (point)
  {
    if (point != 1)
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
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_1AC1C3000, v5, OS_LOG_TYPE_DEFAULT, "Headphone Configs: Analytics, Update Entry Point: %@", &v7, 0xCu);
  }
}

- (void)updateFeatureChangeCount:(int)count
{
  v11 = *MEMORY[0x1E69E9840];
  if (count > 0x36)
  {
    v4 = &stru_1F20FAB50;
  }

  else
  {
    v4 = off_1E7970800[count];
  }

  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_1AC1C3000, v5, OS_LOG_TYPE_DEFAULT, "Headphone Configs: Analytics, Update Feature: %@", &v9, 0xCu);
  }

  v6 = MEMORY[0x1E696AD98];
  v7 = [(NSMutableDictionary *)self->_analyticDict objectForKeyedSubscript:v4];
  v8 = [v6 numberWithInt:{objc_msgSend(v7, "intValue") + 1}];
  [(NSMutableDictionary *)self->_analyticDict setObject:v8 forKeyedSubscript:v4];
}

- (void)updateFeatureValue:(int)value value:(unsigned int)a4 featureValueString:(id)string
{
  v26 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v9 = stringCopy;
  v10 = &stru_1F20FAB50;
  v11 = value - 1;
  v12 = &stru_1F20FAB50;
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
        v10 = off_1E79709B8[a4];
        v12 = @"DoubleTapLeftValue";
        goto LABEL_62;
      }

      v12 = @"DoubleTapLeftValue";
      goto LABEL_61;
    case 20:
      if (a4 < 5)
      {
        v10 = off_1E79709B8[a4];
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
        v10 = off_1E79709E0[a4 - 1];
        v12 = @"ListeningModeValue";
        goto LABEL_62;
      }

      v12 = @"ListeningModeValue";
      goto LABEL_61;
    case 32:
      if (a4 - 1 < 4)
      {
        v10 = off_1E79709F8[a4 - 1];
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
        v10 = off_1E7970A18[a4];
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
        v10 = off_1E7970A30[a4 - 1];
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
        v10 = off_1E7970A30[a4 - 1];
        v12 = @"PressHoldRightBudValue";
      }

LABEL_62:
      if (stringCopy)
      {
        v10 = stringCopy;
      }

      v21 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138412546;
        v23 = v12;
        v24 = 2112;
        v25 = v10;
        _os_log_impl(&dword_1AC1C3000, v21, OS_LOG_TYPE_DEFAULT, "Headphone Configs: Analytics, Update Feature: %@ Value: %@", &v22, 0x16u);
      }

      [(NSMutableDictionary *)self->_analyticDict setObject:v10 forKeyedSubscript:v12];
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
  self->_analyticDict = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{@"ProductID", &unk_1F2105430, @"AdaptiveTransparency", &stru_1F20FAB50, @"AdaptiveTransparencyValue", &unk_1F2105430, @"AdaptiveVolume", &stru_1F20FAB50, @"AdaptiveVolumeValue", &unk_1F2105430, @"CaseSound", &stru_1F20FAB50, @"CaseSoundValue", &unk_1F2105430, @"CrownRotation", &stru_1F20FAB50, @"CrownRotationValue", &unk_1F2105430, @"CycleBetweenLeftBud", &stru_1F20FAB50, @"CycleBetweenLeftBudValue", &unk_1F2105430, @"CycleBetweenRightBud", &stru_1F20FAB50, @"CycleBetweenRightBudValue", &unk_1F2105430, @"CycleBetweenV2LeftBud", &stru_1F20FAB50, @"CycleBetweenV2LeftBudValue", &unk_1F2105430, @"CycleBetweenV2RightBud", &stru_1F20FAB50, @"CycleBetweenV2RightBudValue", &stru_1F20FAB50, @"CycleBetweenSingleValue", &unk_1F2105430, @"DeviceName", &unk_1F2105430, @"Disconnect", &unk_1F2105430, @"DoubleTap", &stru_1F20FAB50, @"DoubleTapLeftValue", &stru_1F20FAB50, @"DoubleTapRightValue", @"Unknown", @"EntryPoint", &unk_1F2105430, @"EarTipFitTest", &unk_1F2105430, @"EndCall", &stru_1F20FAB50, @"EndCallValue", &unk_1F2105430, @"FindMyNetwork", &stru_1F20FAB50, @"FindMyNetworkValue", &unk_1F2105430, @"ForgetDevice", &unk_1F2105430, @"InEarOnHeadDetection"}];

  MEMORY[0x1EEE66BB8]();
}

- (void)resetAnalyticDictFitTest
{
  self->_analyticDictFitTest = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{@"BudMileage", &unk_1F2105430, @"ConfidenceL", &unk_1F2105430, @"ConfidenceR", &unk_1F2105430, @"FirstTimeUse", &unk_1F2105430, @"FitTestType", &unk_1F2105430, @"HeadphonePID", &unk_1F2105430, @"SealMetricL", &unk_1F2105430, @"SealMetricR", &unk_1F2105430, @"SessionTime", &unk_1F2105430, @"TestResult", 0}];

  MEMORY[0x1EEE66BB8]();
}

- (void)resetAnalyticDictV2
{
  self->_analyticDictV2 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{@"FeatureChangeCount", &stru_1F20FAB50, @"FeatureName", &stru_1F20FAB50, @"FeatureValue", &unk_1F2105430, @"HeadphonePID", 0}];

  MEMORY[0x1EEE66BB8]();
}

- (void)updateFitTestValue:(int)value value:(int)a4
{
  v4 = *&a4;
  v19 = *MEMORY[0x1E69E9840];
  v6 = &stru_1F20FAB50;
  if (value > 4)
  {
    v9 = @"SealMetricR";
    v10 = @"SessionTime";
    v11 = @"TestResult";
    if (value != 9)
    {
      v11 = &stru_1F20FAB50;
    }

    if (value != 8)
    {
      v10 = v11;
    }

    if (value != 7)
    {
      v9 = v10;
    }

    if (value == 6)
    {
      v6 = @"SealMetricL";
    }

    if (value == 5)
    {
      v6 = @"HeadphonePID";
    }

    if (value <= 6)
    {
      v12 = v6;
    }

    else
    {
      v12 = v9;
    }

    goto LABEL_25;
  }

  if (value <= 1)
  {
    if (!value)
    {
      return;
    }

    v7 = value == 1;
    v8 = @"ConfidenceL";
  }

  else
  {
    if (value == 2)
    {
      v12 = @"ConfidenceR";
      goto LABEL_25;
    }

    if (value == 3)
    {
      return;
    }

    v7 = value == 4;
    v8 = @"FitTestType";
  }

  if (v7)
  {
    v12 = v8;
  }

  else
  {
    v12 = &stru_1F20FAB50;
  }

LABEL_25:
  v13 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = v12;
    v17 = 1024;
    v18 = v4;
    _os_log_impl(&dword_1AC1C3000, v13, OS_LOG_TYPE_DEFAULT, "Headphone Configs: Analytics, Update Feature: %@ Value: %d", &v15, 0x12u);
  }

  v14 = [MEMORY[0x1E696AD98] numberWithInt:v4];
  [(NSMutableDictionary *)self->_analyticDictFitTest setObject:v14 forKeyedSubscript:v12];
}

- (void)submitFitTestAnalytics
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = self->_analyticDictFitTest;
  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = v2;
    _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Headphone Configs: Analytics, Submit Analytics: %@", buf, 0xCu);
  }

  v5 = v2;
  v4 = v2;
  AnalyticsSendEventLazy();
}

- (void)submitDeviceAnalyticsVer2
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = self->_analyticDictV2;
  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = v2;
    _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Headphone Configs: Analytics, Submit Analytics: %@", buf, 0xCu);
  }

  v5 = v2;
  v4 = v2;
  AnalyticsSendEventLazy();
}

- (void)sendFeatureInfoEvent
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"AdaptiveVolume", @"CycleBetweenV2LeftBud", @"CycleBetweenV2RightBud", @"EndCall", @"ListeningModeV2", @"MuteCall", @"SpeechDetection", 0}];
  v4 = self->_analyticDict;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v3;
  v5 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)v4 objectForKeyedSubscript:v9];
        [(NSMutableDictionary *)self->_analyticDictV2 setObject:v10 forKeyedSubscript:@"FeatureChangeCount"];

        [(NSMutableDictionary *)self->_analyticDictV2 setObject:v9 forKeyedSubscript:@"FeatureName"];
        v11 = [v9 stringByAppendingString:@"Value"];
        v12 = [(NSMutableDictionary *)v4 objectForKeyedSubscript:v11];
        [(NSMutableDictionary *)self->_analyticDictV2 setObject:v12 forKeyedSubscript:@"FeatureValue"];

        v13 = [(NSMutableDictionary *)v4 objectForKeyedSubscript:@"ProductID"];
        [(NSMutableDictionary *)self->_analyticDictV2 setObject:v13 forKeyedSubscript:@"HeadphonePID"];

        [(HPSUIDeviceAnalytics *)self submitDeviceAnalyticsVer2];
      }

      v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  [(NSMutableDictionary *)self->_analyticDictV2 setObject:&unk_1F2105430 forKeyedSubscript:@"FeatureChangeCount"];
  [(NSMutableDictionary *)self->_analyticDictV2 setObject:@"ListeningMode_PersonalizedVolume_ConversationDetect" forKeyedSubscript:@"FeatureName"];
  v14 = MEMORY[0x1E696AEC0];
  v15 = [(NSMutableDictionary *)v4 objectForKeyedSubscript:@"ListeningModeV2Value"];
  v16 = [(NSMutableDictionary *)v4 objectForKeyedSubscript:@"AdaptiveVolumeValue"];
  v17 = [(NSMutableDictionary *)v4 objectForKeyedSubscript:@"SpeechDetectionValue"];
  v18 = [v14 stringWithFormat:@"%@_%@_%@", v15, v16, v17];
  [(NSMutableDictionary *)self->_analyticDictV2 setObject:v18 forKeyedSubscript:@"FeatureValue"];

  v19 = [(NSMutableDictionary *)v4 objectForKeyedSubscript:@"ProductID"];
  [(NSMutableDictionary *)self->_analyticDictV2 setObject:v19 forKeyedSubscript:@"HeadphonePID"];

  [(HPSUIDeviceAnalytics *)self submitDeviceAnalyticsVer2];
}

- (void)submitDeviceAnalytics
{
  v9 = *MEMORY[0x1E69E9840];
  [(HPSUIDeviceAnalytics *)self sendFeatureInfoEvent];
  v3 = self->_analyticDict;
  v4 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1AC1C3000, v4, OS_LOG_TYPE_DEFAULT, "Headphone Configs: Analytics, Submit Analytics: %@", buf, 0xCu);
  }

  v6 = v3;
  v5 = v3;
  AnalyticsSendEventLazy();
  [(HPSUIDeviceAnalytics *)self resetAnalyticDict];
  [(HPSUIDeviceAnalytics *)self resetAnalyticDictV2];
}

@end