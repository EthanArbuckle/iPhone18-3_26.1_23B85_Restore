@interface NSSNewsAnalyticsEventAnnotator
- (NSSNewsAnalyticsEventAnnotator)initWithSessionManager:(id)a3 userIDProvider:(id)a4;
- (NSSNewsAnalyticsSessionManager)sessionManager;
- (void)annotateEvent:(id)a3 withOptions:(unint64_t)a4;
@end

@implementation NSSNewsAnalyticsEventAnnotator

- (NSSNewsAnalyticsEventAnnotator)initWithSessionManager:(id)a3 userIDProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = NSSNewsAnalyticsEventAnnotator;
  v8 = [(NSSNewsAnalyticsEventAnnotator *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_sessionManager, v6);
    objc_storeStrong(&v9->_userIDProvider, a4);
  }

  return v9;
}

- (void)annotateEvent:(id)a3 withOptions:(unint64_t)a4
{
  v4 = a4;
  v6 = a3;
  if (!v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NSSNewsAnalyticsEventAnnotator annotateEvent:withOptions:];
    if ((v4 & 1) == 0)
    {
LABEL_4:
      if ((v4 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }
  }

  else if ((v4 & 1) == 0)
  {
    goto LABEL_4;
  }

  v10 = NSSNTPBAnalyticsUserStorefrontIdValue();
  [v6 setUserStorefrontId:v10];

  if ((v4 & 2) == 0)
  {
LABEL_5:
    if ((v4 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  [v6 setReachabilityStatus:NSSNTPBAnalyticsReachabilityStatusValue()];
  if ((v4 & 4) == 0)
  {
LABEL_6:
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  [v6 setCellularRadioAccessTechnology:NSSNTPBAnalyticsCellularRadioAccessTechnologyValue()];
  if ((v4 & 8) == 0)
  {
LABEL_7:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v13 = [(NSSNewsAnalyticsEventAnnotator *)self sessionManager];
    v14 = [v13 currentSession];
    v15 = [v14 sessionId];
    [v6 setSessionId:v15];

    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_15:
  v11 = [(NSSNewsAnalyticsEventAnnotator *)self userIDProvider];
  v12 = [v11 userID];
  [v6 setUserId:v12];

  if ((v4 & 0x10) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v4 & 0x20) != 0)
  {
LABEL_9:
    v7 = [(NSSNewsAnalyticsEventAnnotator *)self sessionManager];
    v8 = [v7 currentSession];
    v9 = [v8 widgetSessionId];
    [v6 setWidgetSessionId:v9];
  }

LABEL_10:
}

- (NSSNewsAnalyticsSessionManager)sessionManager
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionManager);

  return WeakRetained;
}

- (void)annotateEvent:withOptions:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF0A000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "event", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end