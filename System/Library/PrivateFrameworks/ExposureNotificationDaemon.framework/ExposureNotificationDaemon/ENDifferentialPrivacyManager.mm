@interface ENDifferentialPrivacyManager
+ (id)hashForServerExposureConfiguration:(id)a3;
+ (unsigned)userRiskScoreForExposureDetectionSummary:(id)a3;
- (BOOL)_submitVectorValue:(id)a3 toRecorder:(id)a4 description:(const char *)a5;
- (ENDifferentialPrivacyManager)initWithServerConfiguration:(id)a3 serverExposureConfiguration:(id)a4;
- (void)_submitValue:(id)a3 toRecorder:(id)a4 description:(const char *)a5;
- (void)reportUserDiagnosedVaccineStatus:(id)a3;
- (void)reportUserRiskScoreWithSummary:(id)a3;
- (void)updatedServerConfiguration:(id)a3 serverExposureConfiguration:(id)a4;
@end

@implementation ENDifferentialPrivacyManager

- (ENDifferentialPrivacyManager)initWithServerConfiguration:(id)a3 serverExposureConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v40.receiver = self;
  v40.super_class = ENDifferentialPrivacyManager;
  v8 = [(ENDifferentialPrivacyManager *)&v40 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D052F0]) initWithKey:@"com.apple.EN.UserRisk"];
    userRiskRecorder = v8->_userRiskRecorder;
    v8->_userRiskRecorder = v9;

    v11 = [objc_alloc(MEMORY[0x277D052F0]) initWithKey:@"com.apple.EN.UserRiskParameters"];
    userRiskParametersRecorder = v8->_userRiskParametersRecorder;
    v8->_userRiskParametersRecorder = v11;

    v13 = [objc_alloc(MEMORY[0x277D052F0]) initWithKey:@"com.apple.EN.BeaconCount"];
    userBeaconCountRecorder = v8->_userBeaconCountRecorder;
    v8->_userBeaconCountRecorder = v13;

    v15 = [objc_alloc(MEMORY[0x277D052F0]) initWithKey:@"com.apple.EN.UserNotification"];
    userNotificationRecorder = v8->_userNotificationRecorder;
    v8->_userNotificationRecorder = v15;

    v17 = [objc_alloc(MEMORY[0x277D052F0]) initWithKey:@"com.apple.EN.UserNotificationInteraction"];
    userNotificationInteractionRecorder = v8->_userNotificationInteractionRecorder;
    v8->_userNotificationInteractionRecorder = v17;

    v19 = [objc_alloc(MEMORY[0x277D052F0]) initWithKey:@"com.apple.EN.CodeVerified"];
    userCodeVerifiedRecorder = v8->_userCodeVerifiedRecorder;
    v8->_userCodeVerifiedRecorder = v19;

    v21 = [objc_alloc(MEMORY[0x277D052F0]) initWithKey:@"com.apple.EN.DiagnosedVaccineStatus"];
    userDiagnosedVaccineStatusRecorder = v8->_userDiagnosedVaccineStatusRecorder;
    v8->_userDiagnosedVaccineStatusRecorder = v21;

    v23 = [objc_alloc(MEMORY[0x277D052F0]) initWithKey:@"com.apple.EN.KeysUploaded"];
    userKeysUploadedRecorder = v8->_userKeysUploadedRecorder;
    v8->_userKeysUploadedRecorder = v23;

    v25 = [objc_alloc(MEMORY[0x277D052F0]) initWithKey:@"com.apple.EN.DateExposure"];
    userDateExposureRecorder = v8->_userDateExposureRecorder;
    v8->_userDateExposureRecorder = v25;

    v27 = [objc_alloc(MEMORY[0x277D052F0]) initWithKey:@"com.apple.EN.CodeVerifiedWithReportTypeV2D14"];
    userCodeVerifiedV2Recorder = v8->_userCodeVerifiedV2Recorder;
    v8->_userCodeVerifiedV2Recorder = v27;

    v29 = [objc_alloc(MEMORY[0x277D052F0]) initWithKey:@"com.apple.EN.KeysUploadedWithReportTypeV2D14"];
    userKeysUploadedV2Recorder = v8->_userKeysUploadedV2Recorder;
    v8->_userKeysUploadedV2Recorder = v29;

    v31 = [objc_alloc(MEMORY[0x277D052F0]) initWithKey:@"com.apple.EN.SecondaryAttackV2D14"];
    userSecondaryAttackV2Recorder = v8->_userSecondaryAttackV2Recorder;
    v8->_userSecondaryAttackV2Recorder = v31;

    v33 = [objc_alloc(MEMORY[0x277D052F0]) initWithKey:@"com.apple.EN.PeriodicExposureNotificationV2D14"];
    userNotificationV2Recorder = v8->_userNotificationV2Recorder;
    v8->_userNotificationV2Recorder = v33;

    v35 = [objc_alloc(MEMORY[0x277D052F0]) initWithKey:@"com.apple.EN.DiagnosedVaccineStatusV2D14"];
    userDiagnosedVaccineStatusV2Recorder = v8->_userDiagnosedVaccineStatusV2Recorder;
    v8->_userDiagnosedVaccineStatusV2Recorder = v35;

    v37 = [objc_alloc(MEMORY[0x277D052F0]) initWithKey:@"com.apple.EN.DateExposureV2D14"];
    userDateExposureV2Recorder = v8->_userDateExposureV2Recorder;
    v8->_userDateExposureV2Recorder = v37;

    [(ENDifferentialPrivacyManager *)v8 updatedServerConfiguration:v6 serverExposureConfiguration:v7];
  }

  return v8;
}

- (void)updatedServerConfiguration:(id)a3 serverExposureConfiguration:(id)a4
{
  v16 = a3;
  v6 = a4;
  if (gLogCategory_ENDifferentialPrivacyManager <= 30 && (gLogCategory_ENDifferentialPrivacyManager != -1 || _LogCategory_Initialize()))
  {
    [ENDifferentialPrivacyManager updatedServerConfiguration:serverExposureConfiguration:];
  }

  v7 = [v16 region];
  v8 = [v7 countryCode];

  v9 = [v16 region];
  v10 = [v9 subdivisionCode];

  v11 = [ENDifferentialPrivacyManager hashForServerExposureConfiguration:v6];
  v12 = objc_alloc_init(MEMORY[0x277CBEB30]);
  [v12 setObject:v8 forKeyedSubscript:*MEMORY[0x277D05338]];
  [v12 setObject:v10 forKeyedSubscript:*MEMORY[0x277D053F8]];
  [v12 setObject:v11 forKeyedSubscript:*MEMORY[0x277D05418]];
  v13 = [v12 copy];
  metadata = self->_metadata;
  p_metadata = &self->_metadata;
  *p_metadata = v13;

  if (gLogCategory_ENDifferentialPrivacyManager <= 50 && (gLogCategory_ENDifferentialPrivacyManager != -1 || _LogCategory_Initialize()))
  {
    [ENDifferentialPrivacyManager updatedServerConfiguration:? serverExposureConfiguration:?];
  }
}

- (void)reportUserRiskScoreWithSummary:(id)a3
{
  v4 = [ENDifferentialPrivacyManager userRiskScoreForExposureDetectionSummary:a3];
  v5 = [MEMORY[0x277CCABA8] numberWithUnsignedShort:v4];
  [(ENDifferentialPrivacyManager *)self _submitValue:v5 toRecorder:self->_userRiskRecorder description:"user risk score"];
}

- (BOOL)_submitVectorValue:(id)a3 toRecorder:(id)a4 description:(const char *)a5
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v7 = MEMORY[0x277CBEA68];
  v8 = a4;
  v9 = a3;
  v10 = [v7 arrayWithObjects:&v14 count:1];
  v11 = [v8 recordBitVectors:v10 metadata:{self->_metadata, v14, v15}];

  if (v11)
  {
    if (gLogCategory_ENDifferentialPrivacyManager <= 50 && (gLogCategory_ENDifferentialPrivacyManager != -1 || _LogCategory_Initialize()))
    {
      [ENDifferentialPrivacyManager _submitVectorValue:toRecorder:description:];
    }
  }

  else
  {
    [ENDifferentialPrivacyManager _submitVectorValue:toRecorder:description:];
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)_submitValue:(id)a3 toRecorder:(id)a4 description:(const char *)a5
{
  v13 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v7 = MEMORY[0x277CBEA68];
  v8 = a4;
  v9 = a3;
  v10 = [v7 arrayWithObjects:&v12 count:1];
  LOBYTE(self) = [v8 record:v10 metadata:{self->_metadata, v12, v13}];

  if (self)
  {
    if (gLogCategory_ENDifferentialPrivacyManager <= 50 && (gLogCategory_ENDifferentialPrivacyManager != -1 || _LogCategory_Initialize()))
    {
      [ENDifferentialPrivacyManager _submitValue:toRecorder:description:];
    }
  }

  else
  {
    [ENDifferentialPrivacyManager _submitValue:toRecorder:description:];
  }

  v11 = *MEMORY[0x277D85DE8];
}

+ (unsigned)userRiskScoreForExposureDetectionSummary:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v3 = [a3 daySummaries];
  v4 = [v3 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v27;
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = [v11 daySummary];
        [v12 maximumScore];
        v14 = v13;

        v15 = [v11 daySummary];
        [v15 scoreSum];
        v17 = v16;

        v18 = [v11 daySummary];
        [v18 weightedDurationSum];
        v20 = v19;

        if (v14 > v9)
        {
          v9 = v14;
        }

        if (v17 > v8)
        {
          v8 = v17;
        }

        if (v20 > v7)
        {
          v7 = v20;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
  }

  for (j = 0; j != 7; ++j)
  {
    if (v9 <= dbl_24A28BEC8[j])
    {
      break;
    }
  }

  for (k = 0; k != 7; ++k)
  {
    if (v8 <= dbl_24A28BF00[k])
    {
      break;
    }
  }

  for (m = 0; m != 7; ++m)
  {
    if (v7 <= dbl_24A28BF38[m])
    {
      break;
    }
  }

  if (gLogCategory_ENDifferentialPrivacyManager <= 30 && (gLogCategory_ENDifferentialPrivacyManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  v24 = *MEMORY[0x277D85DE8];
  return k + 8 * j + (m << 6);
}

- (void)reportUserDiagnosedVaccineStatus:(id)a3
{
  v4 = a3;
  userDiagnosedVaccineStatusRecorder = self->_userDiagnosedVaccineStatusRecorder;
  v12 = v4;
  if ([ENDifferentialPrivacyManager _submitVectorValue:"_submitVectorValue:toRecorder:description:" toRecorder:? description:?])
  {
    if ([(ENDifferentialPrivacyManager *)self _submitVectorValue:v12 toRecorder:self->_userDiagnosedVaccineStatusV2Recorder description:"user diagnosed vaccine status v2"])
    {
      v6 = v12;
      v7 = [v12 bytes];
      if ([v12 length])
      {
        v8 = 0;
        do
        {
          if (*(v7 + v8) == 1)
          {
            v9 = +[ENLoggingPrefs sharedENLoggingPrefs];
            v10 = [v9 isSensitiveLoggingAllowed];

            if (v10)
            {
              if (gLogCategory_ENDifferentialPrivacyManager <= 50 && (gLogCategory_ENDifferentialPrivacyManager != -1 || _LogCategory_Initialize()))
              {
                v11 = v8;
                LogPrintF_safe();
              }
            }
          }

          ++v8;
        }

        while (v8 < [v12 length]);
      }
    }
  }
}

+ (id)hashForServerExposureConfiguration:(id)a3
{
  v3 = a3;
  bzero(v31, 0x87uLL);
  if (v3)
  {
    v4 = [v3 exposureConfigurationValues];
    v30[0] = CFDictionaryGetInt64Ranged();
    v30[1] = OUTLINED_FUNCTION_0_6();
    v30[2] = OUTLINED_FUNCTION_0_6();
    v30[3] = OUTLINED_FUNCTION_0_6();
    CFArrayGetTypeID();
    v5 = CFDictionaryGetTypedValue();
    if (v5)
    {
      v6 = NSArrayGetNSNumberAtIndex();
      v7 = NSArrayGetNSNumberAtIndex();
      v8 = NSArrayGetNSNumberAtIndex();
      v31[0] = [v6 unsignedCharValue];
      v31[1] = [v7 unsignedCharValue];
      v31[2] = [v8 unsignedCharValue];
    }

    v27 = v5;
    CFDictionaryGetTypeID();
    v9 = CFDictionaryGetTypedValue();
    if (v9)
    {
      v10 = 0;
      v11 = 0;
      v12 = -14;
      do
      {
        [MEMORY[0x277CCABA8] numberWithInteger:v12];
        v10 |= (OUTLINED_FUNCTION_2_1() & 3) << v11;
        v11 += 2;
        ++v12;
      }

      while (v11 != 58);
      v32 = v10;
    }

    v33 = OUTLINED_FUNCTION_0_6();
    v34 = OUTLINED_FUNCTION_0_6();
    v35 = OUTLINED_FUNCTION_0_6();
    v36 = OUTLINED_FUNCTION_0_6();
    v37 = OUTLINED_FUNCTION_0_6();
    v38 = OUTLINED_FUNCTION_2_1();
    v28 = v4;
    v39 = OUTLINED_FUNCTION_2_1();
    v29 = v3;
    v13 = [v3 classificationCriteria];
    v26 = v9;
    if ([v13 count] > 3)
    {
      v14 = 4;
    }

    else
    {
      v14 = [v13 count];
      if (!v14)
      {
LABEL_14:
        v22 = [objc_alloc(MEMORY[0x277CBEA98]) initWithBytes:v30 length:143];
        v23 = [v22 sha256];
        [v23 bytes];
        [v23 length];
        [v23 length];
        v24 = NSPrintF();

        v3 = v29;
        goto LABEL_15;
      }
    }

    v15 = 0;
    v16 = &v40;
    do
    {
      v17 = [OUTLINED_FUNCTION_3_2() objectAtIndexedSubscript:?];
      v18 = [v17 perDaySumERVThresholdsByDiagnosisReportType];

      *(v16 - 6) = OUTLINED_FUNCTION_1_3();
      *(v16 - 5) = OUTLINED_FUNCTION_1_3();
      *(v16 - 4) = OUTLINED_FUNCTION_1_3();
      *(v16 - 3) = OUTLINED_FUNCTION_1_3();
      v19 = [OUTLINED_FUNCTION_3_2() objectAtIndexedSubscript:?];
      *(v16 - 2) = [v19 perDaySumERVThreshold];

      v20 = [OUTLINED_FUNCTION_3_2() objectAtIndexedSubscript:?];
      *(v16 - 1) = [v20 perDayMaxERVThreshold];

      v21 = [OUTLINED_FUNCTION_3_2() objectAtIndexedSubscript:?];
      *v16 = [v21 weightedDurationAtAttenuationThreshold];
      v16 += 28;

      ++v15;
    }

    while (v14 != v15);
    goto LABEL_14;
  }

  v24 = 0;
LABEL_15:

  return v24;
}

- (uint64_t)_submitVectorValue:toRecorder:description:.cold.1()
{
  if (gLogCategory__ENDifferentialPrivacyManager <= 90)
  {
    if (gLogCategory__ENDifferentialPrivacyManager != -1)
    {
      return LogPrintF_safe();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF_safe();
    }
  }

  return result;
}

- (uint64_t)_submitValue:toRecorder:description:.cold.1()
{
  if (gLogCategory__ENDifferentialPrivacyManager <= 90)
  {
    if (gLogCategory__ENDifferentialPrivacyManager != -1)
    {
      return LogPrintF_safe();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF_safe();
    }
  }

  return result;
}

@end