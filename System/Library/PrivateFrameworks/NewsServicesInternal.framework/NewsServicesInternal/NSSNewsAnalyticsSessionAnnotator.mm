@interface NSSNewsAnalyticsSessionAnnotator
- (NSSNewsAnalyticsSessionAnnotator)init;
- (void)annotateSession:(id)a3 withOptions:(unint64_t)a4;
@end

@implementation NSSNewsAnalyticsSessionAnnotator

- (NSSNewsAnalyticsSessionAnnotator)init
{
  v3.receiver = self;
  v3.super_class = NSSNewsAnalyticsSessionAnnotator;
  return [(NSSNewsAnalyticsSessionAnnotator *)&v3 init];
}

- (void)annotateSession:(id)a3 withOptions:(unint64_t)a4
{
  v4 = a4;
  v5 = a3;
  if (!v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NSSNewsAnalyticsSessionAnnotator annotateSession:withOptions:];
    if ((v4 & 1) == 0)
    {
LABEL_4:
      if ((v4 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_21;
    }
  }

  else if ((v4 & 1) == 0)
  {
    goto LABEL_4;
  }

  v7 = NSSNTPBAnalyticsAppBuildNumberValue();
  [v5 setAppBuildNumber:v7];

  if ((v4 & 2) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  v8 = NSSNTPBAnalyticsAppVersionValue();
  [v5 setAppVersion:v8];

  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  [v5 setCellularRadioAccessTechnology:NSSNTPBAnalyticsCellularRadioAccessTechnologyValue()];
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = NSSNTPBAnalyticsCountryCodeValue();
  [v5 setCountryCode:v9];

  if ((v4 & 0x20) == 0)
  {
LABEL_8:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = NFDevicePlatform();
  [v5 setDeviceModel:v10];

  if ((v4 & 0x40) == 0)
  {
LABEL_9:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  v11 = NSSNTPBAnalyticsDevicePlatformValue();
  [v5 setDevicePlatform:v11];

  if ((v4 & 0x80) == 0)
  {
LABEL_10:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  v12 = NSSNTPBAnalyticsLanguageCodeValue();
  [v5 setLanguageCode:v12];

  if ((v4 & 0x100) == 0)
  {
LABEL_11:
    if ((v4 & 0x200) == 0)
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

  [v5 setOsInstallVariant:v13];
  if ((v4 & 0x200) == 0)
  {
LABEL_12:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  v14 = NSSNTPBAnalyticsOsVersionValue();
  [v5 setOsVersion:v14];

  if ((v4 & 0x400) == 0)
  {
LABEL_13:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  [v5 setReachabilityStatus:NSSNTPBAnalyticsReachabilityStatusValue()];
  if ((v4 & 0x800) == 0)
  {
LABEL_14:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  [v5 setUtcOffset:NSSNTPBAnalyticsUtcOffsetValue()];
  if ((v4 & 0x1000) == 0)
  {
LABEL_15:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

LABEL_35:
    [v5 setSignedIntoIcloud:NSSNTPBAnalyticsSignedIntoIcloudValue()];
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_34:
  [v5 setPrivateDataSyncOn:NSSNTPBAnalyticsPrivateDataSyncOnValue()];
  if ((v4 & 0x2000) != 0)
  {
    goto LABEL_35;
  }

LABEL_16:
  if ((v4 & 0x4000) != 0)
  {
LABEL_17:
    v6 = NSSNTPBAnalyticsUserStorefrontIdValue();
    [v5 setUserStorefrontId:v6];
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