@interface CPAnalyticsCoreDuetEventMatcher
- (CPAnalyticsCoreDuetEventMatcher)initWithConfig:(id)config;
@end

@implementation CPAnalyticsCoreDuetEventMatcher

- (CPAnalyticsCoreDuetEventMatcher)initWithConfig:(id)config
{
  configCopy = config;
  v5 = [configCopy objectForKeyedSubscript:@"sourceEventMatchCriteria"];
  v6 = [configCopy objectForKeyedSubscript:@"identifierPropertyName"];
  v7 = [configCopy objectForKeyedSubscript:@"subsetPropertyName"];
  v8 = [configCopy objectForKeyedSubscript:@"datasetName"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = CPAnalyticsLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_24260A000, v9, OS_LOG_TYPE_ERROR, "Error parsing KnowledgeStore event", buf, 2u);
    }

    goto LABEL_12;
  }

  v9 = [CPAnalyticsEventMatcher eventMatcherWithConfiguration:v5];
  if (!v9)
  {
LABEL_12:
    selfCopy = 0;
    goto LABEL_13;
  }

  v17.receiver = self;
  v17.super_class = CPAnalyticsCoreDuetEventMatcher;
  v10 = [(CPAnalyticsCoreDuetEventMatcher *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_eventMatcher, v9);
    objc_storeStrong(&v11->_identifierPropertyName, v6);
    objc_storeStrong(&v11->_subsetPropertyName, v7);
    objc_storeStrong(&v11->_datasetName, v8);
    v12 = [configCopy objectForKeyedSubscript:@"subsetPropertyValue"];
    subsetPropertyValue = v11->_subsetPropertyValue;
    v11->_subsetPropertyValue = v12;

    v14 = [configCopy objectForKeyedSubscript:@"matchNextEvent"];
    v11->_matchNextEvent = [v14 BOOLValue];
  }

  self = v11;
  selfCopy = self;
LABEL_13:

  return selfCopy;
}

@end