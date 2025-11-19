@interface DEDDeferredExtensionInfo
+ (double)recommendedGracePeriodForDate:(id)a3;
+ (id)activityStringForBugSessionIdentifier:(id)a3 dedIdentifier:(id)a4;
+ (id)allInfo;
+ (id)archivedClasses;
+ (id)log;
+ (void)allInfo;
+ (void)checkIn;
- (BOOL)isEqual:(id)a3;
- (BOOL)isOverdue;
- (DEDDeferredExtensionInfo)initWithBugSessionIdentifier:(id)a3 dedIdentifier:(id)a4 runOnDate:(id)a5 withGracePeriod:(double)a6;
- (DEDDeferredExtensionInfo)initWithCoder:(id)a3;
- (NSString)activityString;
- (id)criteria;
- (void)addToStore;
- (void)encodeWithCoder:(id)a3;
- (void)removeFromStore;
- (void)run;
- (void)schedule;
- (void)unschedule;
@end

@implementation DEDDeferredExtensionInfo

+ (id)log
{
  if (log_onceToken_4 != -1)
  {
    +[DEDDeferredExtensionInfo log];
  }

  v3 = log__log;

  return v3;
}

void __31__DEDDeferredExtensionInfo_log__block_invoke()
{
  v2 = +[DEDConfiguration sharedInstance];
  v0 = os_log_create([v2 loggingSubsystem], "ded-deferred-info");
  v1 = log__log;
  log__log = v0;
}

+ (double)recommendedGracePeriodForDate:(id)a3
{
  [a3 timeIntervalSinceNow];
  v4 = 10.0;
  if (v3 > 60.0)
  {
    v4 = 30.0;
    if (v3 > 300.0)
    {
      if (v3 <= 1800.0)
      {
        return 60.0;
      }

      else if (v3 <= 3600.0)
      {
        return 600.0;
      }

      else if (v3 <= 21600.0)
      {
        return 900.0;
      }

      else
      {
        return dbl_248B53080[v3 > 43200.0];
      }
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  bugSessionIdentifier = self->_bugSessionIdentifier;
  v5 = a3;
  [v5 encodeObject:bugSessionIdentifier forKey:@"bugSessionIdentifier"];
  [v5 encodeObject:self->_dedIdentifier forKey:@"dedIdentifier"];
  [v5 encodeObject:self->_triggerDate forKey:@"triggerDate"];
  [v5 encodeObject:self->_parameters forKey:@"parameters"];
  [v5 encodeDouble:@"gracePeriod" forKey:self->_gracePeriod];
  [v5 encodeBool:self->_scheduled forKey:@"scheduled"];
  [v5 encodeBool:self->_requiresClassBDataAccess forKey:@"requiresClassBDataAccess"];
}

- (DEDDeferredExtensionInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = DEDDeferredExtensionInfo;
  v5 = [(DEDDeferredExtensionInfo *)&v23 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bugSessionIdentifier"];
    bugSessionIdentifier = v5->_bugSessionIdentifier;
    v5->_bugSessionIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dedIdentifier"];
    dedIdentifier = v5->_dedIdentifier;
    v5->_dedIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"triggerDate"];
    triggerDate = v5->_triggerDate;
    v5->_triggerDate = v10;

    [v4 decodeDoubleForKey:@"gracePeriod"];
    v5->_gracePeriod = v12;
    v5->_scheduled = [v4 decodeBoolForKey:@"scheduled"];
    v5->_requiresClassBDataAccess = [v4 decodeBoolForKey:@"requiresClassBDataAccess"];
    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = [v13 setWithObjects:{v14, v15, v16, v17, v18, objc_opt_class(), 0}];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"parameters"];
    parameters = v5->_parameters;
    v5->_parameters = v20;
  }

  return v5;
}

+ (id)archivedClasses
{
  v2 = MEMORY[0x277CBEB58];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v2 setWithObjects:{v3, v4, v5, v6, v7, objc_opt_class(), 0}];
  v9 = +[DEDExtensionIdentifier archivedClasses];
  [v8 unionSet:v9];

  return v8;
}

- (DEDDeferredExtensionInfo)initWithBugSessionIdentifier:(id)a3 dedIdentifier:(id)a4 runOnDate:(id)a5 withGracePeriod:(double)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = DEDDeferredExtensionInfo;
  v14 = [(DEDDeferredExtensionInfo *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_bugSessionIdentifier, a3);
    objc_storeStrong(&v15->_dedIdentifier, a4);
    objc_storeStrong(&v15->_triggerDate, a5);
    v15->_gracePeriod = a6;
    v15->_scheduled = 0;
  }

  return v15;
}

+ (id)allInfo
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [v3 objectForKey:@"deferred-execution-info"];
  if (v4)
  {
    v5 = MEMORY[0x277CCAAC8];
    v6 = [a1 archivedClasses];
    v14 = 0;
    v7 = [v5 unarchivedObjectOfClasses:v6 fromData:v4 error:&v14];
    v8 = v14;

    if (v8)
    {
      v9 = [a1 log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        +[(DEDDeferredExtensionInfo *)v8];
      }

      v10 = [MEMORY[0x277CBEAC0] dictionary];
    }

    else
    {
      v10 = v7;
    }

    v12 = v10;
  }

  else
  {
    v11 = [a1 log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_248AD7000, v11, OS_LOG_TYPE_INFO, "Creating dictionary for deferred execution info", buf, 2u);
    }

    v12 = [MEMORY[0x277CBEAC0] dictionary];
  }

  return v12;
}

- (void)addToStore
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 activityString];
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_0_8(&dword_248AD7000, v2, v3, "Archiving failed for extension: %{public}@\nReason:%{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)removeFromStore
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 activityString];
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_0_8(&dword_248AD7000, v2, v3, "Archiving failed for extension: %{public}@\nReason: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)checkIn
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D86238];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __35__DEDDeferredExtensionInfo_checkIn__block_invoke;
  handler[3] = &__block_descriptor_40_e33_v16__0__NSObject_OS_xpc_object__8l;
  handler[4] = a1;
  xpc_activity_register("com.apple.diagnosticextensionsd.reschedule", v3, handler);
  v4 = [a1 log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248AD7000, v4, OS_LOG_TYPE_DEFAULT, "Rescheduling all activities", buf, 2u);
  }

  v5 = [objc_opt_class() allInfo];
  +[DEDAnalytics didCheckInDeferredExtensionsWithCount:](DEDAnalytics, "didCheckInDeferredExtensionsWithCount:", [v5 count]);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v5 allValues];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * v10++) schedule];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __35__DEDDeferredExtensionInfo_checkIn__block_invoke(uint64_t a1, xpc_activity_t activity)
{
  if (!xpc_activity_get_state(activity))
  {
    v3 = [*(a1 + 32) log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_248AD7000, v3, OS_LOG_TYPE_DEFAULT, "Reschedule activity checking in.", v4, 2u);
    }
  }
}

- (id)criteria
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v3, *MEMORY[0x277D86360], 0);
  if ([(DEDDeferredExtensionInfo *)self requiresClassBDataAccess])
  {
    xpc_dictionary_set_BOOL(v3, *MEMORY[0x277D86378], 1);
  }

  else
  {
    v4 = [(DEDDeferredExtensionInfo *)self triggerDate];
    [v4 timeIntervalSinceNow];
    v6 = v5;

    xpc_dictionary_set_int64(v3, *MEMORY[0x277D86250], v6);
  }

  v7 = *MEMORY[0x277D86270];
  [(DEDDeferredExtensionInfo *)self gracePeriod];
  xpc_dictionary_set_int64(v3, v7, v8);
  xpc_dictionary_set_string(v3, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);

  return v3;
}

- (void)schedule
{
  v19 = *MEMORY[0x277D85DE8];
  [(DEDDeferredExtensionInfo *)self setScheduled:1];
  v3 = MEMORY[0x277CCACA8];
  v4 = [(DEDDeferredExtensionInfo *)self activityString];
  v5 = [v3 stringWithFormat:@"transaction.%@", v4];

  [v5 UTF8String];
  v6 = os_transaction_create();
  v7 = [objc_opt_class() log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(DEDDeferredExtensionInfo *)self activityString];
    *buf = 138543362;
    v18 = v8;
    _os_log_impl(&dword_248AD7000, v7, OS_LOG_TYPE_DEFAULT, "Scheduling deferred DE: %{public}@", buf, 0xCu);
  }

  v9 = [(DEDDeferredExtensionInfo *)self activityString];
  v10 = [v9 UTF8String];
  v11 = *MEMORY[0x277D86238];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __36__DEDDeferredExtensionInfo_schedule__block_invoke;
  handler[3] = &unk_278F65D78;
  v15 = v6;
  v16 = self;
  v12 = v6;
  xpc_activity_register(v10, v11, handler);

  [(DEDDeferredExtensionInfo *)self addToStore];
  v13 = *MEMORY[0x277D85DE8];
}

void __36__DEDDeferredExtensionInfo_schedule__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state)
  {
    if (state == 2)
    {
      v5 = *(a1 + 40);
      v6 = [objc_opt_class() log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [*(a1 + 40) activityString];
        v13 = 138543362;
        v14 = v7;
        _os_log_impl(&dword_248AD7000, v6, OS_LOG_TYPE_DEFAULT, "Deferred DE is now executing (%{public}@)", &v13, 0xCu);
      }

      [*(a1 + 40) run];
    }
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = [objc_opt_class() log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 40) activityString];
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_248AD7000, v9, OS_LOG_TYPE_DEFAULT, "Deferred DE is checking in (%{public}@)", &v13, 0xCu);
    }

    v11 = [*(a1 + 40) criteria];
    xpc_activity_set_criteria(v3, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)run
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = +[DEDDaemon sharedInstance];
  v4 = [v3 controller];
  v5 = [(DEDDeferredExtensionInfo *)self bugSessionIdentifier];
  v6 = [v4 sessionForIdentifier:v5];

  v7 = [objc_opt_class() log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 prettyDescription];
    v12 = 138543362;
    v13 = v8;
    _os_log_impl(&dword_248AD7000, v7, OS_LOG_TYPE_DEFAULT, "Starting deferred DE for bug session: %{public}@", &v12, 0xCu);
  }

  v9 = [(DEDDeferredExtensionInfo *)self dedIdentifier];
  v10 = [(DEDDeferredExtensionInfo *)self parameters];
  [v6 finallyStartDiagnosticWithIdentifier:v9 parameters:v10 completion:0];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)unschedule
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [objc_opt_class() log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[DEDDeferredExtensionInfo unschedule]";
    _os_log_impl(&dword_248AD7000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  [(DEDDeferredExtensionInfo *)self setScheduled:0];
  [(DEDDeferredExtensionInfo *)self removeFromStore];
  v4 = [(DEDDeferredExtensionInfo *)self activityString];
  xpc_activity_unregister([v4 UTF8String]);

  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)isOverdue
{
  v2 = self;
  v3 = [(DEDDeferredExtensionInfo *)self triggerDate];
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = [v3 earlierDate:v4];
  v6 = [(DEDDeferredExtensionInfo *)v2 triggerDate];
  LOBYTE(v2) = v5 == v6;

  return v2;
}

- (NSString)activityString
{
  activityString = self->_activityString;
  if (!activityString)
  {
    v4 = objc_opt_class();
    v5 = [(DEDDeferredExtensionInfo *)self bugSessionIdentifier];
    v6 = [(DEDDeferredExtensionInfo *)self dedIdentifier];
    v7 = [v4 activityStringForBugSessionIdentifier:v5 dedIdentifier:v6];
    v8 = self->_activityString;
    self->_activityString = v7;

    activityString = self->_activityString;
  }

  return activityString;
}

+ (id)activityStringForBugSessionIdentifier:(id)a3 dedIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 extensionIdentifier];
  v9 = [v8 componentsSeparatedByString:@"."];
  v10 = [v9 mutableCopy];

  v11 = [v10 ded_mapWithBlock:&__block_literal_global_60_0];
  v12 = [v11 ded_rejectItemsPassingTest:&__block_literal_global_63];

  if ([v12 count] >= 3)
  {
    v13 = [v12 subarrayWithRange:{objc_msgSend(v12, "count") - 2, 2}];

    v12 = v13;
  }

  if ([v12 count])
  {
    v14 = [v12 componentsJoinedByString:@"."];

    v8 = v14;
  }

  if ([v6 length] >= 0x29)
  {
    v15 = [v6 substringWithRange:{0, 40}];

    v6 = v15;
  }

  if ([v8 length] >= 0x33)
  {
    v16 = [v8 substringWithRange:{0, 50}];

    v8 = v16;
  }

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.diagnosticextensionsd.%@.%@", v6, v8];
  if ([v7 invocationNumber] >= 1)
  {
    v18 = [v17 stringByAppendingFormat:@".%ld", objc_msgSend(v7, "invocationNumber")];

    v17 = v18;
  }

  if ([v17 length] >= 0x80)
  {
    v19 = [a1 log];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [DEDDeferredExtensionInfo activityStringForBugSessionIdentifier:v17 dedIdentifier:?];
    }

    v20 = [v17 substringWithRange:{0, 127}];

    v17 = v20;
  }

  return v17;
}

uint64_t __80__DEDDeferredExtensionInfo_activityStringForBugSessionIdentifier_dedIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isEqualToString:@"com"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"apple") & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"diagnosticextension"))
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isEqualToString:@"diagnosticextensions"];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(DEDDeferredExtensionInfo *)self activityString];
    v7 = [v5 activityString];

    v8 = [v6 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (void)allInfo
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_248AD7000, a2, OS_LOG_TYPE_ERROR, "Unarchiving failed for reason: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)activityStringForBugSessionIdentifier:(void *)a1 dedIdentifier:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 length];
  OUTLINED_FUNCTION_0_8(&dword_248AD7000, v1, v2, "XPC activity identifier %@ is longer than %lu characters; truncating", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

@end