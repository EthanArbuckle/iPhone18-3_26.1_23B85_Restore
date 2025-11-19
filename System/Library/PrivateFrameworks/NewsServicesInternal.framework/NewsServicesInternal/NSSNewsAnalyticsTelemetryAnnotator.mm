@interface NSSNewsAnalyticsTelemetryAnnotator
- (NSSNewsAnalyticsTelemetryAnnotator)init;
- (NSSNewsAnalyticsTelemetryAnnotator)initWithUserIDProvider:(id)a3;
- (void)annotateTelemetry:(id)a3 withOptions:(unint64_t)a4;
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

- (NSSNewsAnalyticsTelemetryAnnotator)initWithUserIDProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NSSNewsAnalyticsTelemetryAnnotator;
  v6 = [(NSSNewsAnalyticsTelemetryAnnotator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userIDProvider, a3);
  }

  return v7;
}

- (void)annotateTelemetry:(id)a3 withOptions:(unint64_t)a4
{
  v4 = a4;
  v6 = a3;
  if (!v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NSSNewsAnalyticsTelemetryAnnotator annotateTelemetry:withOptions:];
    if ((v4 & 1) == 0)
    {
LABEL_4:
      if ((v4 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_18;
    }
  }

  else if ((v4 & 1) == 0)
  {
    goto LABEL_4;
  }

  v8 = NSSNTPBAnalyticsAppBuildNumberValue();
  [v6 setAppBuildNumber:v8];

  if ((v4 & 2) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = NSSNTPBAnalyticsAppVersionValue();
  [v6 setAppVersion:v9];

  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  [v6 setContentEnvironment:NSSNTPBAnalyticsContentEnvironmentValue()];
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v10 = NSSNTPBAnalyticsCountryCodeValue();
  [v6 setCountryCode:v10];

  if ((v4 & 0x20) == 0)
  {
LABEL_8:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v11 = NFDevicePlatform();
  [v6 setDeviceModel:v11];

  if ((v4 & 0x40) == 0)
  {
LABEL_9:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v12 = NSSNTPBAnalyticsDevicePlatformValue();
  [v6 setDevicePlatform:v12];

  if ((v4 & 0x80) == 0)
  {
LABEL_10:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  v13 = NSSNTPBAnalyticsLanguageCodeValue();
  [v6 setLanguageCode:v13];

  if ((v4 & 0x100) == 0)
  {
LABEL_11:
    if ((v4 & 0x200) == 0)
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

  [v6 setOsInstallVariant:v14];
  if ((v4 & 0x200) == 0)
  {
LABEL_12:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_13;
    }

LABEL_29:
    v16 = [(NSSNewsAnalyticsTelemetryAnnotator *)self userIDProvider];
    v17 = [v16 userID];
    [v6 setUserId:v17];

    if ((v4 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_28:
  v15 = NSSNTPBAnalyticsOsVersionValue();
  [v6 setOsVersion:v15];

  if ((v4 & 0x400) != 0)
  {
    goto LABEL_29;
  }

LABEL_13:
  if ((v4 & 0x800) != 0)
  {
LABEL_14:
    v7 = NSSNTPBAnalyticsUserStorefrontIdValue();
    [v6 setUserStorefrontId:v7];
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