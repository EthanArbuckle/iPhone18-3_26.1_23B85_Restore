@interface NSSExternalAnalyticsEvent
- (NSSExternalAnalyticsEvent)init;
- (NSSExternalAnalyticsEvent)initWithSession:(id)session requestQueryParameters:(id)parameters;
- (id)copy;
- (id)requestMetadataWithExternalAnalyticsIdentifier:(id)identifier;
@end

@implementation NSSExternalAnalyticsEvent

- (NSSExternalAnalyticsEvent)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NSSExternalAnalyticsEvent init]";
    v10 = 2080;
    v11 = "NSSExternalAnalyticsEvent.m";
    v12 = 1024;
    v13 = 46;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BF0A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NSSExternalAnalyticsEvent init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NSSExternalAnalyticsEvent)initWithSession:(id)session requestQueryParameters:(id)parameters
{
  sessionCopy = session;
  parametersCopy = parameters;
  if (!sessionCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NSSExternalAnalyticsEvent initWithSession:requestQueryParameters:];
    if (parametersCopy)
    {
      goto LABEL_6;
    }
  }

  else if (parametersCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NSSExternalAnalyticsEvent initWithSession:requestQueryParameters:];
  }

LABEL_6:
  v14.receiver = self;
  v14.super_class = NSSExternalAnalyticsEvent;
  v8 = [(NSSExternalAnalyticsEvent *)&v14 init];
  if (v8)
  {
    v9 = [sessionCopy copy];
    session = v8->_session;
    v8->_session = v9;

    v11 = [parametersCopy copy];
    requestQueryParameters = v8->_requestQueryParameters;
    v8->_requestQueryParameters = v11;
  }

  return v8;
}

- (id)copy
{
  v3.receiver = self;
  v3.super_class = NSSExternalAnalyticsEvent;
  return [(NSSExternalAnalyticsEvent *)&v3 copy];
}

- (id)requestMetadataWithExternalAnalyticsIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NSSExternalAnalyticsEvent requestMetadataWithExternalAnalyticsIdentifier:];
  }

  requestQueryParameters = [(NSSExternalAnalyticsEvent *)self requestQueryParameters];
  v6 = [requestQueryParameters objectForKey:@"udid"];
  v7 = [requestQueryParameters objectForKey:@"articleID"];
  v8 = [requestQueryParameters objectForKey:@"pub"];
  v9 = [requestQueryParameters objectForKey:@"event"];
  v10 = NTPBExternalAnalyticsEventTypeFromExternalEventURLQueryParameter(v9);

  v11 = [NSSExternalAnalyticsRequestMetadata alloc];
  session = [(NSSExternalAnalyticsEvent *)self session];
  v13 = [(NSSExternalAnalyticsRequestMetadata *)v11 initWithSession:session eventIdentifier:v6 externalAnalyticsIdentifier:identifierCopy contentViewedIdentifier:v7 publisherIdentifier:v8 eventType:v10];

  return v13;
}

- (void)initWithSession:requestQueryParameters:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF0A000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "session", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithSession:requestQueryParameters:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF0A000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "requestQueryParameters", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)requestMetadataWithExternalAnalyticsIdentifier:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF0A000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "externalAnalyticsIdentifier", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end