@interface JFXAnalyticsManager
+ (id)allIncrementScalarEvents;
+ (id)bundleForAnalytics;
+ (id)sharedInstance;
- (BOOL)checkIfEventExistsWithName:(id)a3;
- (BOOL)isIncrementScalar:(id)a3;
- (JFXAnalyticsManager)init;
- (id)dictionaryWithEventName:(id)a3 value:(double)a4;
- (void)trackEventWithName:(id)a3;
- (void)trackKey:(id)a3 withCount:(unint64_t)a4;
- (void)trackKey:(id)a3 withPayload:(id)a4;
@end

@implementation JFXAnalyticsManager

- (JFXAnalyticsManager)init
{
  v3.receiver = self;
  v3.super_class = JFXAnalyticsManager;
  return [(JFXAnalyticsManager *)&v3 init];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_9 != -1)
  {
    +[JFXAnalyticsManager sharedInstance];
  }

  v3 = sharedInstance_analyticsManager_0;

  return v3;
}

uint64_t __37__JFXAnalyticsManager_sharedInstance__block_invoke()
{
  sharedInstance_analyticsManager_0 = objc_alloc_init(JFXAnalyticsManager);

  return MEMORY[0x2821F96F8]();
}

- (id)dictionaryWithEventName:(id)a3 value:(double)a4
{
  v12[3] = *MEMORY[0x277D85DE8];
  v12[0] = a3;
  v11[0] = @"AnalyticsEventNameKey";
  v11[1] = @"AnalyticsEventCountOrDurationValueKey";
  v5 = MEMORY[0x277CCABB0];
  v6 = a3;
  v7 = [v5 numberWithDouble:a4];
  v12[1] = v7;
  v11[2] = @"AnalyticsEventTimeStampKey";
  v8 = [MEMORY[0x277CBEAA8] date];
  v12[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];

  return v9;
}

- (BOOL)checkIfEventExistsWithName:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = +[JFXAnalyticsKeys allEventNames];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if ([v3 isEqualToString:*(*(&v9 + 1) + 8 * i)])
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (void)trackEventWithName:(id)a3
{
  v5 = a3;
  if ([(JFXAnalyticsManager *)self checkIfEventExistsWithName:?])
  {
    v4 = [(JFXAnalyticsManager *)self fullKeyFromEvent:v5];
    [(JFXAnalyticsManager *)self trackKey:v4 withCount:1];
  }
}

+ (id)bundleForAnalytics
{
  if (bundleForAnalytics_onceToken != -1)
  {
    +[JFXAnalyticsManager bundleForAnalytics];
  }

  v3 = bundleForAnalytics_bundle;

  return v3;
}

void __41__JFXAnalyticsManager_bundleForAnalytics__block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 bundleIdentifier];
  v5 = [v1 componentsSeparatedByString:@"."];

  v2 = [v5 lastObject];
  v3 = [v2 lowercaseString];
  v4 = bundleForAnalytics_bundle;
  bundleForAnalytics_bundle = v3;
}

- (void)trackKey:(id)a3 withPayload:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v6];
    v9 = [objc_opt_class() bundleForAnalytics];
    [v8 setValue:v9 forKey:@"hostApp"];

    v15 = v8;
    v10 = v8;
    v11 = AnalyticsSendEventLazy();
    v12 = JFXLog_DebugAnalytics();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      if (v11)
      {
        v13 = @"succeeded";
      }

      else
      {
        v13 = @"failed";
      }

      v14 = [v7 descriptionInStringsFileFormat];
      *buf = 138412802;
      v17 = v13;
      v18 = 2112;
      v19 = v5;
      v20 = 2112;
      v21 = v14;
      _os_log_debug_impl(&dword_242A3B000, v12, OS_LOG_TYPE_DEBUG, "Tracking key (%@) %@ : %@", buf, 0x20u);
    }
  }
}

- (void)trackKey:(id)a3 withCount:(unint64_t)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = @"itemCount";
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  v11[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  [(JFXAnalyticsManager *)self trackKey:v7 withPayload:v9];
}

- (BOOL)isIncrementScalar:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = +[JFXAnalyticsKeys allIncrementScalarEffectEvents];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([v3 hasPrefix:*(*(&v11 + 1) + 8 * i)])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v4 = +[JFXAnalyticsKeys allIncrementScalarEvents];
  v9 = [v4 containsObject:v3];
LABEL_11:

  return v9;
}

+ (id)allIncrementScalarEvents
{
  if (allIncrementScalarEvents_onceToken_0 != -1)
  {
    +[JFXAnalyticsManager allIncrementScalarEvents];
  }

  v3 = allIncrementScalarEvents_allIncrementScalarEvents_0;

  return v3;
}

void __47__JFXAnalyticsManager_allIncrementScalarEvents__block_invoke()
{
  v2[10] = *MEMORY[0x277D85DE8];
  v2[0] = @"thermalnominaltolight";
  v2[1] = @"thermallighttomoderate";
  v2[2] = @"thermalmoderatetoheavy";
  v2[3] = @"thermalheavytotrapping";
  v2[4] = @"thermaltrappingtosleeping";
  v2[5] = @"thermalsleepingtotrapping";
  v2[6] = @"thermaltrappingtoheavy";
  v2[7] = @"thermalheavytomoderate";
  v2[8] = @"thermalmoderatetolight";
  v2[9] = @"thermallighttonominal";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:10];
  v1 = allIncrementScalarEvents_allIncrementScalarEvents_0;
  allIncrementScalarEvents_allIncrementScalarEvents_0 = v0;
}

@end