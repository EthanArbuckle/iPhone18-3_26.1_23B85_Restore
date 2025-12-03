@interface CPAnalyticsEventMatcher
+ (id)eventMatcherWithConfiguration:(id)configuration;
+ (id)eventMatcherWithEventName:(id)name;
+ (id)eventMatcherWithEventName:(id)name properties:(id)properties;
- (BOOL)doesMatch:(id)match;
- (CPAnalyticsEventMatcher)initWithConfig:(id)config;
- (id)_validateAndParseConditionalChecks:(id)checks;
- (id)_validateAndParseEventKey:(id)key;
- (id)_validateAndParseEventProperties:(id)properties;
@end

@implementation CPAnalyticsEventMatcher

+ (id)eventMatcherWithEventName:(id)name properties:(id)properties
{
  v17 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  propertiesCopy = properties;
  if ([nameCopy length])
  {
    v8 = [self alloc];
    v13[0] = @"key";
    v13[1] = @"properties";
    v14[0] = nameCopy;
    v14[1] = propertiesCopy;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
    v10 = [v8 initWithConfig:v9];
  }

  else
  {
    v9 = CPAnalyticsLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = nameCopy;
      _os_log_error_impl(&dword_24260A000, v9, OS_LOG_TYPE_ERROR, "Invalid event name for event matcher: %@", buf, 0xCu);
    }

    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)eventMatcherWithEventName:(id)name
{
  v14 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if ([nameCopy length])
  {
    v5 = [self alloc];
    v10 = @"key";
    v11 = nameCopy;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v7 = [v5 initWithConfig:v6];
  }

  else
  {
    v6 = CPAnalyticsLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = nameCopy;
      _os_log_error_impl(&dword_24260A000, v6, OS_LOG_TYPE_ERROR, "Invalid event name for event matcher: %@", buf, 0xCu);
    }

    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)eventMatcherWithConfiguration:(id)configuration
{
  v29[1] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  if ([configurationCopy count] != 1)
  {
    goto LABEL_25;
  }

  allKeys = [configurationCopy allKeys];
  firstObject = [allKeys firstObject];

  if ([@"and" isEqual:firstObject] & 1) != 0 || (objc_msgSend(@"all", "isEqual:", firstObject))
  {
    v7 = 0;
    v8 = 1;
  }

  else if ([@"or" isEqual:firstObject] & 1) != 0 || (objc_msgSend(@"any", "isEqual:", firstObject))
  {
    v7 = 0;
    v8 = 2;
  }

  else
  {
    if (([@"not" isEqual:firstObject] & 1) == 0)
    {
      goto LABEL_24;
    }

    v7 = 1;
    v8 = 3;
  }

  v9 = [configurationCopy objectForKeyedSubscript:firstObject];
  v10 = v9;
  if (v7)
  {
    if (v9)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v29[0] = v10;
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];

        v10 = v11;
      }
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_24:
LABEL_25:
    v20 = [[self alloc] initWithConfig:configurationCopy];
    goto LABEL_26;
  }

  v23 = v8;
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v24 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = [self eventMatcherWithConfiguration:v18];
          if (v19)
          {
            [v12 addObject:v19];
          }
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v15);
  }

  v20 = [[CPAnalyticsCompoundEventMatcher alloc] initWithType:v23 subEventMatchers:v12];
  if (!v20)
  {
    goto LABEL_25;
  }

LABEL_26:

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)_validateAndParseConditionalChecks:(id)checks
{
  v21 = *MEMORY[0x277D85DE8];
  checksCopy = checks;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = checksCopy;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = [CPAnalyticsConditional alloc];
          v12 = [(CPAnalyticsConditional *)v11 initWithConfig:v10, v16];
          if (v12)
          {
            [v4 addObject:v12];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    if ([v4 count])
    {
      v13 = [v4 copy];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_validateAndParseEventProperties:(id)properties
{
  v20 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    allKeys = [propertiesCopy allKeys];
    v6 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(allKeys);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = [propertiesCopy objectForKey:v10];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v4 setObject:v11 forKey:v10];
          }
        }

        v7 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    v12 = [v4 copy];
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_validateAndParseEventKey:(id)key
{
  keyCopy = key;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [keyCopy length])
  {
    v4 = keyCopy;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)doesMatch:(id)match
{
  v41 = *MEMORY[0x277D85DE8];
  matchCopy = match;
  eventKeyToMatch = [(CPAnalyticsEventMatcher *)self eventKeyToMatch];
  if (eventKeyToMatch && ([matchCopy name], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", eventKeyToMatch), v6, !v7))
  {
    v27 = 0;
  }

  else
  {
    [(CPAnalyticsEventMatcher *)self eventPropertiesToMatch];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v30 = v38 = 0u;
    allKeys = [v30 allKeys];
    v9 = [allKeys countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v36;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v36 != v11)
          {
            objc_enumerationMutation(allKeys);
          }

          v13 = *(*(&v35 + 1) + 8 * i);
          v14 = [matchCopy propertyForKey:v13];
          if (!v14)
          {
            goto LABEL_23;
          }

          v15 = v14;
          eventPropertiesToMatch = [(CPAnalyticsEventMatcher *)self eventPropertiesToMatch];
          v17 = [eventPropertiesToMatch valueForKey:v13];

          LODWORD(eventPropertiesToMatch) = [v17 isEqual:v15];
          if (!eventPropertiesToMatch)
          {
LABEL_23:
            v27 = 0;
            v18 = v30;
            goto LABEL_27;
          }
        }

        v10 = [allKeys countByEnumeratingWithState:&v35 objects:v40 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v18 = v30;
    if (eventKeyToMatch || [v30 count])
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      allKeys = [(CPAnalyticsEventMatcher *)self conditionalChecks];
      v19 = [allKeys countByEnumeratingWithState:&v31 objects:v39 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v32;
        while (2)
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v32 != v21)
            {
              objc_enumerationMutation(allKeys);
            }

            v23 = *(*(&v31 + 1) + 8 * j);
            property = [v23 property];
            v25 = [matchCopy propertyForKey:property];

            predicate = [v23 predicate];
            LODWORD(property) = [predicate evaluateWithObject:v25];

            if (!property)
            {
              v27 = 0;
              goto LABEL_27;
            }
          }

          v20 = [allKeys countByEnumeratingWithState:&v31 objects:v39 count:16];
          v27 = 1;
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v27 = 1;
      }

LABEL_27:
    }

    else
    {
      v27 = 0;
    }
  }

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

- (CPAnalyticsEventMatcher)initWithConfig:(id)config
{
  configCopy = config;
  v5 = [(CPAnalyticsEventMatcher *)self init];
  if (v5)
  {
    v6 = [configCopy objectForKeyedSubscript:@"key"];
    v7 = [(CPAnalyticsEventMatcher *)v5 _validateAndParseEventKey:v6];
    eventKeyToMatch = v5->_eventKeyToMatch;
    v5->_eventKeyToMatch = v7;

    v9 = [configCopy objectForKeyedSubscript:@"properties"];
    v10 = [(CPAnalyticsEventMatcher *)v5 _validateAndParseEventProperties:v9];
    eventPropertiesToMatch = v5->_eventPropertiesToMatch;
    v5->_eventPropertiesToMatch = v10;

    if (!v5->_eventKeyToMatch && ![(NSDictionary *)v5->_eventPropertiesToMatch count])
    {

      v15 = 0;
      goto LABEL_6;
    }

    v12 = [configCopy objectForKeyedSubscript:@"conditionalChecks"];
    v13 = [(CPAnalyticsEventMatcher *)v5 _validateAndParseConditionalChecks:v12];
    conditionalChecks = v5->_conditionalChecks;
    v5->_conditionalChecks = v13;
  }

  v15 = v5;
LABEL_6:

  return v15;
}

@end