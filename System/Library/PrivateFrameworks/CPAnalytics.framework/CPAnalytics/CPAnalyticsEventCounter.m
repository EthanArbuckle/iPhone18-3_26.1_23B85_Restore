@interface CPAnalyticsEventCounter
+ (id)_validateAndParseEventName:(id)a3;
- (CPAnalyticsEventCounter)initWithConfig:(id)a3;
- (CPAnalyticsEventCounter)initWithEventName:(id)a3;
- (CPAnalyticsEventCounter)initWithName:(id)a3 matcher:(id)a4;
- (id)description;
- (void)countEvent:(id)a3;
@end

@implementation CPAnalyticsEventCounter

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(CPAnalyticsEventCounter *)self name];
  v4 = [v2 stringWithFormat:@"Name: %@", v3];

  return v4;
}

- (void)countEvent:(id)a3
{
  v10 = a3;
  v4 = [(CPAnalyticsEventCounter *)self matcher];
  v5 = [v4 doesMatch:v10];

  if (v5)
  {
    v6 = [(CPAnalyticsEventCounter *)self countKey];
    if (!v6)
    {
      v9 = 1;
LABEL_11:
      [(CPAnalyticsEventCounter *)self setCount:[(CPAnalyticsEventCounter *)self count]+ v9];

      goto LABEL_12;
    }

    v7 = [v10 propertyForKey:v6];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 integerValue];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v9 = 1;
        goto LABEL_10;
      }

      v8 = [v7 count];
    }

    v9 = v8;
LABEL_10:

    goto LABEL_11;
  }

LABEL_12:
}

- (CPAnalyticsEventCounter)initWithName:(id)a3 matcher:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(CPAnalyticsEventCounter *)self init];
  if (v9)
  {
    v10 = [v7 length];
    if (v8 && v10)
    {
      objc_storeStrong(&v9->_matcher, a4);
      objc_storeStrong(&v9->_name, a3);
    }

    else
    {
      v11 = CPAnalyticsLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v14 = 138412546;
        v15 = v7;
        v16 = 2112;
        v17 = v8;
        _os_log_error_impl(&dword_24260A000, v11, OS_LOG_TYPE_ERROR, "Error creating event counter, name: %@, matcher: %@", &v14, 0x16u);
      }

      v9 = 0;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (CPAnalyticsEventCounter)initWithEventName:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(CPAnalyticsEventCounter *)self init];
  if (v6)
  {
    v7 = [CPAnalyticsEventMatcher eventMatcherWithEventName:v5];
    if ([v5 length] && v7)
    {
      objc_storeStrong(&v6->_matcher, v7);
      objc_storeStrong(&v6->_name, a3);
    }

    else
    {
      v8 = CPAnalyticsLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v11 = 138412546;
        v12 = v5;
        v13 = 2112;
        v14 = v7;
        _os_log_error_impl(&dword_24260A000, v8, OS_LOG_TYPE_ERROR, "Error creating event counter, eventName: %@, matcher: %@", &v11, 0x16u);
      }

      v6 = 0;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (CPAnalyticsEventCounter)initWithConfig:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CPAnalyticsEventCounter;
  v5 = [(CPAnalyticsEventCounter *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"matchCriteria"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [CPAnalyticsEventMatcher eventMatcherWithConfiguration:v6];
    }

    else
    {
      v7 = 0;
    }

    v8 = [v4 objectForKey:@"name"];
    v9 = [CPAnalyticsEventCounter _validateAndParseEventName:v8];

    if (!v9)
    {
      v9 = [v6 objectForKeyedSubscript:@"key"];
    }

    if ([v9 length] && v7)
    {
      objc_storeStrong(&v5->_matcher, v7);
      objc_storeStrong(&v5->_name, v9);
      v10 = [v4 objectForKeyedSubscript:@"countKey"];
      countKey = v5->_countKey;
      v5->_countKey = v10;
    }

    else
    {
      v12 = CPAnalyticsLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v17 = v4;
        v18 = 2112;
        v19 = v9;
        v20 = 2112;
        v21 = v7;
        _os_log_error_impl(&dword_24260A000, v12, OS_LOG_TYPE_ERROR, "Error creating event counter from config: %@, name: %@, matcher: %@", buf, 0x20u);
      }

      countKey = v5;
      v5 = 0;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (id)_validateAndParseEventName:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 length])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end