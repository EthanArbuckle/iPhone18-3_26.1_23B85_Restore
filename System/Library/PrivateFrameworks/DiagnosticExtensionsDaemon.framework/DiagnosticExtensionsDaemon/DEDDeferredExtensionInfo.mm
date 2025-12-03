@interface DEDDeferredExtensionInfo
+ (double)recommendedGracePeriodForDate:(id)date;
+ (id)activityStringForBugSessionIdentifier:(id)identifier dedIdentifier:(id)dedIdentifier;
+ (id)allInfo;
+ (id)archivedClasses;
+ (id)log;
+ (void)allInfo;
+ (void)checkIn;
- (BOOL)isEqual:(id)equal;
- (BOOL)isOverdue;
- (DEDDeferredExtensionInfo)initWithBugSessionIdentifier:(id)identifier dedIdentifier:(id)dedIdentifier runOnDate:(id)date withGracePeriod:(double)period;
- (DEDDeferredExtensionInfo)initWithCoder:(id)coder;
- (NSString)activityString;
- (id)criteria;
- (void)addToStore;
- (void)encodeWithCoder:(id)coder;
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

+ (double)recommendedGracePeriodForDate:(id)date
{
  [date timeIntervalSinceNow];
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

- (void)encodeWithCoder:(id)coder
{
  bugSessionIdentifier = self->_bugSessionIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:bugSessionIdentifier forKey:@"bugSessionIdentifier"];
  [coderCopy encodeObject:self->_dedIdentifier forKey:@"dedIdentifier"];
  [coderCopy encodeObject:self->_triggerDate forKey:@"triggerDate"];
  [coderCopy encodeObject:self->_parameters forKey:@"parameters"];
  [coderCopy encodeDouble:@"gracePeriod" forKey:self->_gracePeriod];
  [coderCopy encodeBool:self->_scheduled forKey:@"scheduled"];
  [coderCopy encodeBool:self->_requiresClassBDataAccess forKey:@"requiresClassBDataAccess"];
}

- (DEDDeferredExtensionInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = DEDDeferredExtensionInfo;
  v5 = [(DEDDeferredExtensionInfo *)&v23 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bugSessionIdentifier"];
    bugSessionIdentifier = v5->_bugSessionIdentifier;
    v5->_bugSessionIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dedIdentifier"];
    dedIdentifier = v5->_dedIdentifier;
    v5->_dedIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"triggerDate"];
    triggerDate = v5->_triggerDate;
    v5->_triggerDate = v10;

    [coderCopy decodeDoubleForKey:@"gracePeriod"];
    v5->_gracePeriod = v12;
    v5->_scheduled = [coderCopy decodeBoolForKey:@"scheduled"];
    v5->_requiresClassBDataAccess = [coderCopy decodeBoolForKey:@"requiresClassBDataAccess"];
    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = [v13 setWithObjects:{v14, v15, v16, v17, v18, objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"parameters"];
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

- (DEDDeferredExtensionInfo)initWithBugSessionIdentifier:(id)identifier dedIdentifier:(id)dedIdentifier runOnDate:(id)date withGracePeriod:(double)period
{
  identifierCopy = identifier;
  dedIdentifierCopy = dedIdentifier;
  dateCopy = date;
  v17.receiver = self;
  v17.super_class = DEDDeferredExtensionInfo;
  v14 = [(DEDDeferredExtensionInfo *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_bugSessionIdentifier, identifier);
    objc_storeStrong(&v15->_dedIdentifier, dedIdentifier);
    objc_storeStrong(&v15->_triggerDate, date);
    v15->_gracePeriod = period;
    v15->_scheduled = 0;
  }

  return v15;
}

+ (id)allInfo
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [standardUserDefaults objectForKey:@"deferred-execution-info"];
  if (v4)
  {
    v5 = MEMORY[0x277CCAAC8];
    archivedClasses = [self archivedClasses];
    v14 = 0;
    v7 = [v5 unarchivedObjectOfClasses:archivedClasses fromData:v4 error:&v14];
    v8 = v14;

    if (v8)
    {
      v9 = [self log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        +[(DEDDeferredExtensionInfo *)v8];
      }

      dictionary = [MEMORY[0x277CBEAC0] dictionary];
    }

    else
    {
      dictionary = v7;
    }

    dictionary2 = dictionary;
  }

  else
  {
    v11 = [self log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_248AD7000, v11, OS_LOG_TYPE_INFO, "Creating dictionary for deferred execution info", buf, 2u);
    }

    dictionary2 = [MEMORY[0x277CBEAC0] dictionary];
  }

  return dictionary2;
}

- (void)addToStore
{
  v10 = *MEMORY[0x277D85DE8];
  activityString = [self activityString];
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_0_8(&dword_248AD7000, v2, v3, "Archiving failed for extension: %{public}@\nReason:%{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)removeFromStore
{
  v10 = *MEMORY[0x277D85DE8];
  activityString = [self activityString];
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
  handler[4] = self;
  xpc_activity_register("com.apple.diagnosticextensionsd.reschedule", v3, handler);
  v4 = [self log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248AD7000, v4, OS_LOG_TYPE_DEFAULT, "Rescheduling all activities", buf, 2u);
  }

  allInfo = [objc_opt_class() allInfo];
  +[DEDAnalytics didCheckInDeferredExtensionsWithCount:](DEDAnalytics, "didCheckInDeferredExtensionsWithCount:", [allInfo count]);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  allValues = [allInfo allValues];
  v7 = [allValues countByEnumeratingWithState:&v12 objects:v18 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [*(*(&v12 + 1) + 8 * v10++) schedule];
      }

      while (v8 != v10);
      v8 = [allValues countByEnumeratingWithState:&v12 objects:v18 count:16];
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
    triggerDate = [(DEDDeferredExtensionInfo *)self triggerDate];
    [triggerDate timeIntervalSinceNow];
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
  activityString = [(DEDDeferredExtensionInfo *)self activityString];
  v5 = [v3 stringWithFormat:@"transaction.%@", activityString];

  [v5 UTF8String];
  v6 = os_transaction_create();
  v7 = [objc_opt_class() log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    activityString2 = [(DEDDeferredExtensionInfo *)self activityString];
    *buf = 138543362;
    v18 = activityString2;
    _os_log_impl(&dword_248AD7000, v7, OS_LOG_TYPE_DEFAULT, "Scheduling deferred DE: %{public}@", buf, 0xCu);
  }

  activityString3 = [(DEDDeferredExtensionInfo *)self activityString];
  uTF8String = [activityString3 UTF8String];
  v11 = *MEMORY[0x277D86238];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __36__DEDDeferredExtensionInfo_schedule__block_invoke;
  handler[3] = &unk_278F65D78;
  v15 = v6;
  selfCopy = self;
  v12 = v6;
  xpc_activity_register(uTF8String, v11, handler);

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
  controller = [v3 controller];
  bugSessionIdentifier = [(DEDDeferredExtensionInfo *)self bugSessionIdentifier];
  v6 = [controller sessionForIdentifier:bugSessionIdentifier];

  v7 = [objc_opt_class() log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    prettyDescription = [v6 prettyDescription];
    v12 = 138543362;
    v13 = prettyDescription;
    _os_log_impl(&dword_248AD7000, v7, OS_LOG_TYPE_DEFAULT, "Starting deferred DE for bug session: %{public}@", &v12, 0xCu);
  }

  dedIdentifier = [(DEDDeferredExtensionInfo *)self dedIdentifier];
  parameters = [(DEDDeferredExtensionInfo *)self parameters];
  [v6 finallyStartDiagnosticWithIdentifier:dedIdentifier parameters:parameters completion:0];

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
  activityString = [(DEDDeferredExtensionInfo *)self activityString];
  xpc_activity_unregister([activityString UTF8String]);

  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)isOverdue
{
  selfCopy = self;
  triggerDate = [(DEDDeferredExtensionInfo *)self triggerDate];
  date = [MEMORY[0x277CBEAA8] date];
  v5 = [triggerDate earlierDate:date];
  triggerDate2 = [(DEDDeferredExtensionInfo *)selfCopy triggerDate];
  LOBYTE(selfCopy) = v5 == triggerDate2;

  return selfCopy;
}

- (NSString)activityString
{
  activityString = self->_activityString;
  if (!activityString)
  {
    v4 = objc_opt_class();
    bugSessionIdentifier = [(DEDDeferredExtensionInfo *)self bugSessionIdentifier];
    dedIdentifier = [(DEDDeferredExtensionInfo *)self dedIdentifier];
    v7 = [v4 activityStringForBugSessionIdentifier:bugSessionIdentifier dedIdentifier:dedIdentifier];
    v8 = self->_activityString;
    self->_activityString = v7;

    activityString = self->_activityString;
  }

  return activityString;
}

+ (id)activityStringForBugSessionIdentifier:(id)identifier dedIdentifier:(id)dedIdentifier
{
  identifierCopy = identifier;
  dedIdentifierCopy = dedIdentifier;
  extensionIdentifier = [dedIdentifierCopy extensionIdentifier];
  v9 = [extensionIdentifier componentsSeparatedByString:@"."];
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

    extensionIdentifier = v14;
  }

  if ([identifierCopy length] >= 0x29)
  {
    v15 = [identifierCopy substringWithRange:{0, 40}];

    identifierCopy = v15;
  }

  if ([extensionIdentifier length] >= 0x33)
  {
    v16 = [extensionIdentifier substringWithRange:{0, 50}];

    extensionIdentifier = v16;
  }

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.diagnosticextensionsd.%@.%@", identifierCopy, extensionIdentifier];
  if ([dedIdentifierCopy invocationNumber] >= 1)
  {
    v18 = [v17 stringByAppendingFormat:@".%ld", objc_msgSend(dedIdentifierCopy, "invocationNumber")];

    v17 = v18;
  }

  if ([v17 length] >= 0x80)
  {
    v19 = [self log];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    activityString = [(DEDDeferredExtensionInfo *)self activityString];
    activityString2 = [v5 activityString];

    v8 = [activityString isEqualToString:activityString2];
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
  selfCopy = self;
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