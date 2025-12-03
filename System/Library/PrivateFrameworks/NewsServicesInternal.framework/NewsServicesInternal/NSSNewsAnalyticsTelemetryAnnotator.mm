@interface NSSNewsAnalyticsTelemetryAnnotator
- (NSSNewsAnalyticsTelemetryAnnotator)init;
- (NSSNewsAnalyticsTelemetryAnnotator)initWithUserIDProvider:(id)provider;
- (void)annotateTelemetry:(id)telemetry withOptions:(unint64_t)options;
@end

@implementation NSSNewsAnalyticsTelemetryAnnotator

- (NSSNewsAnalyticsTelemetryAnnotator)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NSSNewsAnalyticsTelemetryAnnotator init]";
    v10 = 2080;
    v11 = "NSSNewsAnalyticsUtilities.m";
    v12 = 1024;
    v13 = 244;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BF0A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NSSNewsAnalyticsTelemetryAnnotator init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NSSNewsAnalyticsTelemetryAnnotator)initWithUserIDProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = NSSNewsAnalyticsTelemetryAnnotator;
  v6 = [(NSSNewsAnalyticsTelemetryAnnotator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userIDProvider, provider);
  }

  return v7;
}

- (void)annotateTelemetry:(id)telemetry withOptions:(unint64_t)options
{
  optionsCopy = options;
  telemetryCopy = telemetry;
  if (!telemetryCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NSSNewsAnalyticsTelemetryAnnotator annotateTelemetry:withOptions:];
    if ((optionsCopy & 1) == 0)
    {
LABEL_4:
      if ((optionsCopy & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_18;
    }
  }

  else if ((optionsCopy & 1) == 0)
  {
    goto LABEL_4;
  }

  v8 = NSSNTPBAnalyticsAppBuildNumberValue();
  [telemetryCopy setAppBuildNumber:v8];

  if ((optionsCopy & 2) == 0)
  {
LABEL_5:
    if ((optionsCopy & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = NSSNTPBAnalyticsAppVersionValue();
  [telemetryCopy setAppVersion:v9];

  if ((optionsCopy & 8) == 0)
  {
LABEL_6:
    if ((optionsCopy & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  [telemetryCopy setContentEnvironment:NSSNTPBAnalyticsContentEnvironmentValue()];
  if ((optionsCopy & 0x10) == 0)
  {
LABEL_7:
    if ((optionsCopy & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v10 = NSSNTPBAnalyticsCountryCodeValue();
  [telemetryCopy setCountryCode:v10];

  if ((optionsCopy & 0x20) == 0)
  {
LABEL_8:
    if ((optionsCopy & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v11 = NFDevicePlatform();
  [telemetryCopy setDeviceModel:v11];

  if ((optionsCopy & 0x40) == 0)
  {
LABEL_9:
    if ((optionsCopy & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v12 = NSSNTPBAnalyticsDevicePlatformValue();
  [telemetryCopy setDevicePlatform:v12];

  if ((optionsCopy & 0x80) == 0)
  {
LABEL_10:
    if ((optionsCopy & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  v13 = NSSNTPBAnalyticsLanguageCodeValue();
  [telemetryCopy setLanguageCode:v13];

  if ((optionsCopy & 0x100) == 0)
  {
LABEL_11:
    if ((optionsCopy & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_24:
  if (NFInternalBuild())
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  [telemetryCopy setOsInstallVariant:v14];
  if ((optionsCopy & 0x200) == 0)
  {
LABEL_12:
    if ((optionsCopy & 0x400) == 0)
    {
      goto LABEL_13;
    }

LABEL_29:
    userIDProvider = [(NSSNewsAnalyticsTelemetryAnnotator *)self userIDProvider];
    userID = [userIDProvider userID];
    [telemetryCopy setUserId:userID];

    if ((optionsCopy & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_28:
  v15 = NSSNTPBAnalyticsOsVersionValue();
  [telemetryCopy setOsVersion:v15];

  if ((optionsCopy & 0x400) != 0)
  {
    goto LABEL_29;
  }

LABEL_13:
  if ((optionsCopy & 0x800) != 0)
  {
LABEL_14:
    v7 = NSSNTPBAnalyticsUserStorefrontIdValue();
    [telemetryCopy setUserStorefrontId:v7];
  }

LABEL_15:
}

- (void)annotateTelemetry:withOptions:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF0A000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "telemetry", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end