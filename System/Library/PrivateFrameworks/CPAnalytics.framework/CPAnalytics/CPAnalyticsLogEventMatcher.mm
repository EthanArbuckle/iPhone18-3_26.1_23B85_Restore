@interface CPAnalyticsLogEventMatcher
- (CPAnalyticsLogEventMatcher)initWithConfig:(id)config;
@end

@implementation CPAnalyticsLogEventMatcher

- (CPAnalyticsLogEventMatcher)initWithConfig:(id)config
{
  v49 = *MEMORY[0x277D85DE8];
  configCopy = config;
  v5 = [configCopy objectForKeyedSubscript:@"label"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 length])
  {
    v6 = [configCopy objectForKeyedSubscript:@"shouldLogEventName"];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v7 = CPAnalyticsLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v48 = configCopy;
        _os_log_error_impl(&dword_24260A000, v7, OS_LOG_TYPE_ERROR, "Malformed shouldLogEventName in log event matcher configuration %@", buf, 0xCu);
      }

      selfCopy = 0;
    }

    else
    {
      v7 = [configCopy objectForKeyedSubscript:@"eventPropertiesToLog"];
      if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v14 = CPAnalyticsLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v48 = configCopy;
          _os_log_error_impl(&dword_24260A000, v14, OS_LOG_TYPE_ERROR, "Malformed eventPropertiesToLog in log event matcher configuration %@", buf, 0xCu);
        }

        selfCopy = 0;
      }

      else
      {
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v34 = v7;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v41 objects:v46 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v42;
          while (2)
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v42 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v41 + 1) + 8 * i);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v29 = CPAnalyticsLog();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v48 = configCopy;
                  _os_log_error_impl(&dword_24260A000, v29, OS_LOG_TYPE_ERROR, "Malformed eventPropertiesToLog in log event matcher configuration %@", buf, 0xCu);
                }

                selfCopy = 0;
                v14 = v8;
                v7 = v34;
                goto LABEL_49;
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v41 objects:v46 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

        v14 = [configCopy objectForKeyedSubscript:@"eventPublicPropertiesToLog"];
        if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          obj = CPAnalyticsLog();
          if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v48 = configCopy;
            _os_log_error_impl(&dword_24260A000, obj, OS_LOG_TYPE_ERROR, "Malformed eventPublicPropertiesToLog in log event matcher configuration %@", buf, 0xCu);
          }

          selfCopy = 0;
          v7 = v34;
        }

        else
        {
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v33 = v14;
          obj = v14;
          v15 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v38;
            while (2)
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v38 != v17)
                {
                  objc_enumerationMutation(obj);
                }

                v19 = *(*(&v37 + 1) + 8 * j);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v30 = CPAnalyticsLog();
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v48 = configCopy;
                    _os_log_error_impl(&dword_24260A000, v30, OS_LOG_TYPE_ERROR, "Malformed eventPublicPropertyToLog in log event matcher configuration %@", buf, 0xCu);
                  }

                  selfCopy = 0;
                  goto LABEL_44;
                }
              }

              v16 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
              if (v16)
              {
                continue;
              }

              break;
            }
          }

          selfCopy = [CPAnalyticsEventMatcher eventMatcherWithConfiguration:configCopy];
          if (selfCopy)
          {
            v36.receiver = self;
            v36.super_class = CPAnalyticsLogEventMatcher;
            v21 = [(CPAnalyticsLogEventMatcher *)&v36 init];
            v22 = v21;
            if (v21)
            {
              objc_storeStrong(&v21->_eventMatcher, selfCopy);
              v23 = [v5 copy];
              eventTypeLabel = v22->_eventTypeLabel;
              v22->_eventTypeLabel = v23;

              v22->_shouldLogEventName = [v6 BOOLValue];
              v25 = [v8 copy];
              eventPropertiesToLog = v22->_eventPropertiesToLog;
              v22->_eventPropertiesToLog = v25;

              v27 = [obj copy];
              eventPublicPropertiesToLog = v22->_eventPublicPropertiesToLog;
              v22->_eventPublicPropertiesToLog = v27;
            }

            self = v22;
            obj = &selfCopy->super.super;
            selfCopy = self;
          }

          else
          {
            obj = 0;
          }

LABEL_44:
          v14 = v33;
          v7 = v34;
        }
      }

LABEL_49:
    }
  }

  else
  {
    v6 = CPAnalyticsLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v48 = configCopy;
      _os_log_error_impl(&dword_24260A000, v6, OS_LOG_TYPE_ERROR, "Malformed label in log event matcher configuration %@", buf, 0xCu);
    }

    selfCopy = 0;
  }

  v31 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

@end