@interface NSSNewsAnalyticsSessionAnnotator
- (NSSNewsAnalyticsSessionAnnotator)init;
- (void)annotateSession:(id)session withOptions:(unint64_t)options;
@end

@implementation NSSNewsAnalyticsSessionAnnotator

- (NSSNewsAnalyticsSessionAnnotator)init
{
  v3.receiver = self;
  v3.super_class = NSSNewsAnalyticsSessionAnnotator;
  return [(NSSNewsAnalyticsSessionAnnotator *)&v3 init];
}

- (void)annotateSession:(id)session withOptions:(unint64_t)options
{
  optionsCopy = options;
  sessionCopy = session;
  if (!sessionCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NSSNewsAnalyticsSessionAnnotator annotateSession:withOptions:];
    if ((optionsCopy & 1) == 0)
    {
LABEL_4:
      if ((optionsCopy & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_21;
    }
  }

  else if ((optionsCopy & 1) == 0)
  {
    goto LABEL_4;
  }

  v7 = NSSNTPBAnalyticsAppBuildNumberValue();
  [sessionCopy setAppBuildNumber:v7];

  if ((optionsCopy & 2) == 0)
  {
LABEL_5:
    if ((optionsCopy & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  v8 = NSSNTPBAnalyticsAppVersionValue();
  [sessionCopy setAppVersion:v8];

  if ((optionsCopy & 8) == 0)
  {
LABEL_6:
    if ((optionsCopy & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  [sessionCopy setCellularRadioAccessTechnology:NSSNTPBAnalyticsCellularRadioAccessTechnologyValue()];
  if ((optionsCopy & 0x10) == 0)
  {
LABEL_7:
    if ((optionsCopy & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = NSSNTPBAnalyticsCountryCodeValue();
  [sessionCopy setCountryCode:v9];

  if ((optionsCopy & 0x20) == 0)
  {
LABEL_8:
    if ((optionsCopy & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = NFDevicePlatform();
  [sessionCopy setDeviceModel:v10];

  if ((optionsCopy & 0x40) == 0)
  {
LABEL_9:
    if ((optionsCopy & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  v11 = NSSNTPBAnalyticsDevicePlatformValue();
  [sessionCopy setDevicePlatform:v11];

  if ((optionsCopy & 0x80) == 0)
  {
LABEL_10:
    if ((optionsCopy & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  v12 = NSSNTPBAnalyticsLanguageCodeValue();
  [sessionCopy setLanguageCode:v12];

  if ((optionsCopy & 0x100) == 0)
  {
LABEL_11:
    if ((optionsCopy & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_27:
  if (NFInternalBuild())
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  [sessionCopy setOsInstallVariant:v13];
  if ((optionsCopy & 0x200) == 0)
  {
LABEL_12:
    if ((optionsCopy & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  v14 = NSSNTPBAnalyticsOsVersionValue();
  [sessionCopy setOsVersion:v14];

  if ((optionsCopy & 0x400) == 0)
  {
LABEL_13:
    if ((optionsCopy & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  [sessionCopy setReachabilityStatus:NSSNTPBAnalyticsReachabilityStatusValue()];
  if ((optionsCopy & 0x800) == 0)
  {
LABEL_14:
    if ((optionsCopy & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  [sessionCopy setUtcOffset:NSSNTPBAnalyticsUtcOffsetValue()];
  if ((optionsCopy & 0x1000) == 0)
  {
LABEL_15:
    if ((optionsCopy & 0x2000) == 0)
    {
      goto LABEL_16;
    }

LABEL_35:
    [sessionCopy setSignedIntoIcloud:NSSNTPBAnalyticsSignedIntoIcloudValue()];
    if ((optionsCopy & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_34:
  [sessionCopy setPrivateDataSyncOn:NSSNTPBAnalyticsPrivateDataSyncOnValue()];
  if ((optionsCopy & 0x2000) != 0)
  {
    goto LABEL_35;
  }

LABEL_16:
  if ((optionsCopy & 0x4000) != 0)
  {
LABEL_17:
    v6 = NSSNTPBAnalyticsUserStorefrontIdValue();
    [sessionCopy setUserStorefrontId:v6];
  }

LABEL_18:
}

- (void)annotateSession:withOptions:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF0A000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "session", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end