@interface NSSNewsAnalyticsEventAnnotator
- (NSSNewsAnalyticsEventAnnotator)initWithSessionManager:(id)manager userIDProvider:(id)provider;
- (NSSNewsAnalyticsSessionManager)sessionManager;
- (void)annotateEvent:(id)event withOptions:(unint64_t)options;
@end

@implementation NSSNewsAnalyticsEventAnnotator

- (NSSNewsAnalyticsEventAnnotator)initWithSessionManager:(id)manager userIDProvider:(id)provider
{
  managerCopy = manager;
  providerCopy = provider;
  v11.receiver = self;
  v11.super_class = NSSNewsAnalyticsEventAnnotator;
  v8 = [(NSSNewsAnalyticsEventAnnotator *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_sessionManager, managerCopy);
    objc_storeStrong(&v9->_userIDProvider, provider);
  }

  return v9;
}

- (void)annotateEvent:(id)event withOptions:(unint64_t)options
{
  optionsCopy = options;
  eventCopy = event;
  if (!eventCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NSSNewsAnalyticsEventAnnotator annotateEvent:withOptions:];
    if ((optionsCopy & 1) == 0)
    {
LABEL_4:
      if ((optionsCopy & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }
  }

  else if ((optionsCopy & 1) == 0)
  {
    goto LABEL_4;
  }

  v10 = NSSNTPBAnalyticsUserStorefrontIdValue();
  [eventCopy setUserStorefrontId:v10];

  if ((optionsCopy & 2) == 0)
  {
LABEL_5:
    if ((optionsCopy & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  [eventCopy setReachabilityStatus:NSSNTPBAnalyticsReachabilityStatusValue()];
  if ((optionsCopy & 4) == 0)
  {
LABEL_6:
    if ((optionsCopy & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  [eventCopy setCellularRadioAccessTechnology:NSSNTPBAnalyticsCellularRadioAccessTechnologyValue()];
  if ((optionsCopy & 8) == 0)
  {
LABEL_7:
    if ((optionsCopy & 0x10) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    sessionManager = [(NSSNewsAnalyticsEventAnnotator *)self sessionManager];
    currentSession = [sessionManager currentSession];
    sessionId = [currentSession sessionId];
    [eventCopy setSessionId:sessionId];

    if ((optionsCopy & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_15:
  userIDProvider = [(NSSNewsAnalyticsEventAnnotator *)self userIDProvider];
  userID = [userIDProvider userID];
  [eventCopy setUserId:userID];

  if ((optionsCopy & 0x10) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((optionsCopy & 0x20) != 0)
  {
LABEL_9:
    sessionManager2 = [(NSSNewsAnalyticsEventAnnotator *)self sessionManager];
    currentSession2 = [sessionManager2 currentSession];
    widgetSessionId = [currentSession2 widgetSessionId];
    [eventCopy setWidgetSessionId:widgetSessionId];
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