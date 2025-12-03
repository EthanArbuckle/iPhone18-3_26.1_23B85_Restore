@interface _DASSystemContext
+ (BOOL)isPluggedIn:(id)in;
+ (id)defaultInexpensivePathEvaluator;
+ (id)defaultPathEvaluator;
+ (id)initWithContext:(id)context;
+ (id)sharedInstance;
- (BOOL)allowDiscretionaryWorkForBackgroundTask:(id)task withParameters:(id)parameters;
- (BOOL)allowDiscretionaryWorkForUtilityTask:(id)task withParameters:(id)parameters;
- (BOOL)allowsDiscretionaryWorkForTask:(id)task withPriority:(unint64_t)priority withParameters:(id)parameters;
- (BOOL)isApplicationFocalForPushTask:(id)task;
- (BOOL)isInexpensiveNetworkAvailable;
- (BOOL)isNetworkAvailable;
- (_DASSystemContext)init;
- (id)keyPathForPriority:(unint64_t)priority;
- (void)addNotificationHandlerForTaskName:(id)name withPriority:(unint64_t)priority withParameters:(id)parameters withHandler:(id)handler;
- (void)removeNotificationHandlerForTaskName:(id)name;
- (void)updateSystemConstraintsWithParameters:(id)parameters;
@end

@implementation _DASSystemContext

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35___DASSystemContext_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

- (_DASSystemContext)init
{
  v8.receiver = self;
  v8.super_class = _DASSystemContext;
  v2 = [(_DASSystemContext *)&v8 init];
  if (v2)
  {
    userContext = [MEMORY[0x1E6997A60] userContext];
    context = v2->_context;
    v2->_context = userContext;

    v5 = os_log_create([@"com.apple.das" UTF8String], objc_msgSend(@"systemcontext", "UTF8String"));
    dasSystemContextLog = v2->_dasSystemContextLog;
    v2->_dasSystemContextLog = v5;
  }

  return v2;
}

+ (id)initWithContext:(id)context
{
  contextCopy = context;
  v4 = +[_DASSystemContext sharedInstance];
  [v4 setContext:contextCopy];

  return v4;
}

+ (id)defaultPathEvaluator
{
  if (defaultPathEvaluator_onceToken != -1)
  {
    +[_DASSystemContext defaultPathEvaluator];
  }

  v3 = defaultPathEvaluator_defaultPathEvaluator;

  return v3;
}

+ (id)defaultInexpensivePathEvaluator
{
  if (defaultInexpensivePathEvaluator_onceToken != -1)
  {
    +[_DASSystemContext defaultInexpensivePathEvaluator];
  }

  v3 = defaultInexpensivePathEvaluator_defaultInexpensivePathEvaluator;

  return v3;
}

+ (BOOL)isPluggedIn:(id)in
{
  v3 = MEMORY[0x1E6997A68];
  inCopy = in;
  keyPathForPluginStatus = [v3 keyPathForPluginStatus];
  v6 = [inCopy objectForKeyedSubscript:keyPathForPluginStatus];

  LOBYTE(inCopy) = [v6 BOOLValue];
  return inCopy;
}

- (BOOL)isNetworkAvailable
{
  defaultPathEvaluator = [objc_opt_class() defaultPathEvaluator];
  path = [defaultPathEvaluator path];
  status = [path status];

  return status != 2;
}

- (BOOL)isInexpensiveNetworkAvailable
{
  defaultInexpensivePathEvaluator = [objc_opt_class() defaultInexpensivePathEvaluator];
  path = [defaultInexpensivePathEvaluator path];
  status = [path status];

  return status != 2;
}

- (BOOL)isApplicationFocalForPushTask:(id)task
{
  v26 = *MEMORY[0x1E69E9840];
  taskCopy = task;
  v5 = taskCopy;
  if ([taskCopy hasPrefix:@"com.apple.apsd."])
  {
    v5 = [taskCopy substringFromIndex:{objc_msgSend(@"com.apple.apsd.", "length")}];
  }

  if ([v5 hasPrefix:@"com.apple.icloud-container."])
  {
    v6 = [v5 substringFromIndex:{objc_msgSend(@"com.apple.icloud-container.", "length")}];

    v5 = v6;
  }

  lowercaseString = [v5 lowercaseString];

  context = self->_context;
  keyPathForAppUsageDataDictionaries = [MEMORY[0x1E6997A68] keyPathForAppUsageDataDictionaries];
  v10 = [(_CDLocalContext *)context objectForKeyedSubscript:keyPathForAppUsageDataDictionaries];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = *v22;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        appUsageBundleID = [MEMORY[0x1E6997A68] appUsageBundleID];
        v17 = [v15 objectForKeyedSubscript:appUsageBundleID];
        lowercaseString2 = [v17 lowercaseString];

        if (lowercaseString2 && ([lowercaseString2 hasPrefix:lowercaseString] & 1) != 0)
        {

          LOBYTE(v12) = 1;
          goto LABEL_16;
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  v19 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)allowsDiscretionaryWorkForTask:(id)task withPriority:(unint64_t)priority withParameters:(id)parameters
{
  taskCopy = task;
  parametersCopy = parameters;
  v10 = objc_autoreleasePoolPush();
  if (_DASSchedulingPriorityBackground >= priority)
  {
    isNetworkAvailable = [(_DASSystemContext *)self allowDiscretionaryWorkForBackgroundTask:taskCopy withParameters:parametersCopy];
  }

  else if (_DASSchedulingPriorityDefault >= priority)
  {
    isNetworkAvailable = [(_DASSystemContext *)self allowDiscretionaryWorkForUtilityTask:taskCopy withParameters:parametersCopy];
  }

  else
  {
    v11 = [parametersCopy objectForKeyedSubscript:kDASSystemContextKeyNetworkTask];
    bOOLValue = [v11 BOOLValue];

    if (!bOOLValue)
    {
      v14 = 1;
      goto LABEL_8;
    }

    isNetworkAvailable = [(_DASSystemContext *)self isNetworkAvailable];
  }

  v14 = isNetworkAvailable;
LABEL_8:
  objc_autoreleasePoolPop(v10);

  return v14;
}

- (id)keyPathForPriority:(unint64_t)priority
{
  if (_DASSchedulingPriorityBackground >= priority)
  {
    v7 = @"/das/maintenanceConstraints";
  }

  else
  {
    if (_DASSchedulingPriorityDefault < priority)
    {
      v5 = 0;

      return v5;
    }

    v7 = @"/das/utilityConstraints";
  }

  v5 = [MEMORY[0x1E6997A78] keyPathWithKey:{v7, v3}];

  return v5;
}

- (BOOL)allowDiscretionaryWorkForBackgroundTask:(id)task withParameters:(id)parameters
{
  v29 = *MEMORY[0x1E69E9840];
  taskCopy = task;
  parametersCopy = parameters;
  v8 = [(_DASSystemContext *)self keyPathForPriority:_DASSchedulingPriorityBackground];
  v9 = [(_CDLocalContext *)self->_context objectForKeyedSubscript:v8];
  unsignedIntegerValue = [v9 unsignedIntegerValue];

  v11 = [parametersCopy objectForKeyedSubscript:kDASSystemContextKeyPushTask];
  bOOLValue = [v11 BOOLValue];

  if (bOOLValue && [(_DASSystemContext *)self isApplicationFocalForPushTask:taskCopy])
  {
    dasSystemContextLog = [(_DASSystemContext *)self dasSystemContextLog];
    if (os_log_type_enabled(dasSystemContextLog, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138412290;
      v26 = taskCopy;
      _os_log_impl(&dword_1B6E2F000, dasSystemContextLog, OS_LOG_TYPE_DEFAULT, "Task %@: Application focal", &v25, 0xCu);
    }
  }

  else
  {
    v14 = (unsignedIntegerValue & 1) == 0;
    if (unsignedIntegerValue)
    {
      dasSystemContextLog2 = [(_DASSystemContext *)self dasSystemContextLog];
      if (os_log_type_enabled(dasSystemContextLog2, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 138412546;
        v26 = taskCopy;
        v27 = 2048;
        v28 = 30;
        _os_log_impl(&dword_1B6E2F000, dasSystemContextLog2, OS_LOG_TYPE_DEFAULT, "Task %@: Battery level below %lu returning NO", &v25, 0x16u);
      }
    }

    if ((unsignedIntegerValue & 2) != 0)
    {
      dasSystemContextLog3 = [(_DASSystemContext *)self dasSystemContextLog];
      if (os_log_type_enabled(dasSystemContextLog3, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 138412546;
        v26 = taskCopy;
        v27 = 2048;
        v28 = 0;
        _os_log_impl(&dword_1B6E2F000, dasSystemContextLog3, OS_LOG_TYPE_DEFAULT, "Task %@: Thermal pressure level above %lu returning NO", &v25, 0x16u);
      }

      v14 = 0;
    }

    v17 = [parametersCopy objectForKeyedSubscript:kDASSystemContextKeyBypassEnergyBudget];
    bOOLValue2 = [v17 BOOLValue];

    if ((bOOLValue2 & 1) == 0 && (unsignedIntegerValue & 4) != 0)
    {
      dasSystemContextLog4 = [(_DASSystemContext *)self dasSystemContextLog];
      if (os_log_type_enabled(dasSystemContextLog4, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 138412290;
        v26 = taskCopy;
        _os_log_impl(&dword_1B6E2F000, dasSystemContextLog4, OS_LOG_TYPE_DEFAULT, "Task %@: Out of Energy budget returning NO", &v25, 0xCu);
      }

      v14 = 0;
    }

    v20 = [parametersCopy objectForKeyedSubscript:kDASSystemContextKeyNetworkTask];
    bOOLValue3 = [v20 BOOLValue];

    if (bOOLValue3 && (unsignedIntegerValue & 0x10) != 0)
    {
      dasSystemContextLog = [(_DASSystemContext *)self dasSystemContextLog];
      if (os_log_type_enabled(dasSystemContextLog, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 138412290;
        v26 = taskCopy;
        _os_log_impl(&dword_1B6E2F000, dasSystemContextLog, OS_LOG_TYPE_DEFAULT, "Task %@: Inexpensive network not available returning NO", &v25, 0xCu);
      }

      v22 = 0;
      goto LABEL_27;
    }

    if (!v14)
    {
      v22 = 0;
      goto LABEL_28;
    }

    dasSystemContextLog = [(_DASSystemContext *)self dasSystemContextLog];
    if (os_log_type_enabled(dasSystemContextLog, OS_LOG_TYPE_DEBUG))
    {
      [_DASSystemContext allowDiscretionaryWorkForBackgroundTask:taskCopy withParameters:dasSystemContextLog];
    }
  }

  v22 = 1;
LABEL_27:

LABEL_28:
  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

- (BOOL)allowDiscretionaryWorkForUtilityTask:(id)task withParameters:(id)parameters
{
  v32 = *MEMORY[0x1E69E9840];
  taskCopy = task;
  parametersCopy = parameters;
  v8 = [MEMORY[0x1E6997A78] keyPathWithKey:@"/das/utilityConstraints"];
  v9 = [(_CDLocalContext *)self->_context objectForKeyedSubscript:v8];
  unsignedIntegerValue = [v9 unsignedIntegerValue];

  v11 = [parametersCopy objectForKeyedSubscript:kDASSystemContextKeyPushTask];
  bOOLValue = [v11 BOOLValue];

  if (bOOLValue && [(_DASSystemContext *)self isApplicationFocalForPushTask:taskCopy])
  {
    dasSystemContextLog = [(_DASSystemContext *)self dasSystemContextLog];
    if (os_log_type_enabled(dasSystemContextLog, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 138412290;
      v29 = taskCopy;
      _os_log_impl(&dword_1B6E2F000, dasSystemContextLog, OS_LOG_TYPE_DEFAULT, "Task %@: Application focal", &v28, 0xCu);
    }

LABEL_24:
    v22 = 1;
LABEL_30:

    goto LABEL_31;
  }

  v14 = (unsignedIntegerValue & 1) == 0;
  if (unsignedIntegerValue)
  {
    dasSystemContextLog2 = [(_DASSystemContext *)self dasSystemContextLog];
    if (os_log_type_enabled(dasSystemContextLog2, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 138412546;
      v29 = taskCopy;
      v30 = 2048;
      v31 = 20;
      _os_log_impl(&dword_1B6E2F000, dasSystemContextLog2, OS_LOG_TYPE_DEFAULT, "Task %@: Battery level below %lu returning NO", &v28, 0x16u);
    }
  }

  if ((unsignedIntegerValue & 2) != 0)
  {
    dasSystemContextLog3 = [(_DASSystemContext *)self dasSystemContextLog];
    if (os_log_type_enabled(dasSystemContextLog3, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 138412546;
      v29 = taskCopy;
      v30 = 2048;
      v31 = 20;
      _os_log_impl(&dword_1B6E2F000, dasSystemContextLog3, OS_LOG_TYPE_DEFAULT, "Task %@: Thermal pressure level above %lu returning NO", &v28, 0x16u);
    }

    v14 = 0;
  }

  v17 = [parametersCopy objectForKeyedSubscript:kDASSystemContextKeyBypassEnergyBudget];
  bOOLValue2 = [v17 BOOLValue];

  if ((bOOLValue2 & 1) == 0 && (unsignedIntegerValue & 4) != 0)
  {
    dasSystemContextLog4 = [(_DASSystemContext *)self dasSystemContextLog];
    if (os_log_type_enabled(dasSystemContextLog4, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 138412290;
      v29 = taskCopy;
      _os_log_impl(&dword_1B6E2F000, dasSystemContextLog4, OS_LOG_TYPE_DEFAULT, "Task %@: Out of Energy budget returning NO", &v28, 0xCu);
    }

    v14 = 0;
  }

  v20 = [parametersCopy objectForKeyedSubscript:kDASSystemContextKeyNetworkTask];
  bOOLValue3 = [v20 BOOLValue];

  if (bOOLValue3)
  {
    if ((unsignedIntegerValue & 0x20) != 0)
    {
      dasSystemContextLog = [(_DASSystemContext *)self dasSystemContextLog];
      if (!os_log_type_enabled(dasSystemContextLog, OS_LOG_TYPE_DEFAULT))
      {
LABEL_29:
        v22 = 0;
        goto LABEL_30;
      }

      v28 = 138412290;
      v29 = taskCopy;
      v23 = "Task %@: Network not available returning NO";
LABEL_28:
      _os_log_impl(&dword_1B6E2F000, dasSystemContextLog, OS_LOG_TYPE_DEFAULT, v23, &v28, 0xCu);
      goto LABEL_29;
    }

    if ((unsignedIntegerValue & 0x10) != 0)
    {
      v26 = [parametersCopy objectForKeyedSubscript:kDASSystemContextKeyBypassDataBudget];
      bOOLValue4 = [v26 BOOLValue];

      if ((bOOLValue4 & 1) == 0 && (unsignedIntegerValue & 8) != 0)
      {
        dasSystemContextLog = [(_DASSystemContext *)self dasSystemContextLog];
        if (!os_log_type_enabled(dasSystemContextLog, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_29;
        }

        v28 = 138412290;
        v29 = taskCopy;
        v23 = "Task %@: Out of data budget returning NO";
        goto LABEL_28;
      }
    }
  }

  if (v14)
  {
    dasSystemContextLog = [(_DASSystemContext *)self dasSystemContextLog];
    if (os_log_type_enabled(dasSystemContextLog, OS_LOG_TYPE_DEBUG))
    {
      [_DASSystemContext allowDiscretionaryWorkForBackgroundTask:taskCopy withParameters:dasSystemContextLog];
    }

    goto LABEL_24;
  }

  v22 = 0;
LABEL_31:

  v24 = *MEMORY[0x1E69E9840];
  return v22;
}

- (void)updateSystemConstraintsWithParameters:(id)parameters
{
  v11 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  dasSystemContextLog = [(_DASSystemContext *)self dasSystemContextLog];
  if (os_log_type_enabled(dasSystemContextLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [parametersCopy description];
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_1B6E2F000, dasSystemContextLog, OS_LOG_TYPE_DEFAULT, "Updating system constraints to: %@", &v9, 0xCu);
  }

  v7 = +[_DASScheduler sharedScheduler];
  [v7 updateSystemConstraintsWithParameters:parametersCopy];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)addNotificationHandlerForTaskName:(id)name withPriority:(unint64_t)priority withParameters:(id)parameters withHandler:(id)handler
{
  nameCopy = name;
  parametersCopy = parameters;
  handlerCopy = handler;
  v13 = MEMORY[0x1E6997A80];
  v14 = [(_DASSystemContext *)self keyPathForPriority:priority];
  v15 = [v13 predicateForChangeAtKeyPath:v14];

  objc_initWeak(&location, self);
  v16 = MEMORY[0x1E6997A70];
  nameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.das.systemcontext.%@", nameCopy];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __95___DASSystemContext_addNotificationHandlerForTaskName_withPriority_withParameters_withHandler___block_invoke;
  v26[3] = &unk_1E7C8F690;
  objc_copyWeak(v30, &location);
  v18 = handlerCopy;
  v29 = v18;
  v19 = nameCopy;
  v27 = v19;
  v30[1] = priority;
  v20 = parametersCopy;
  v28 = v20;
  v21 = [v16 localNonWakingRegistrationWithIdentifier:nameCopy contextualPredicate:v15 callback:v26];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  registrations = selfCopy->_registrations;
  if (!registrations)
  {
    array = [MEMORY[0x1E695DF70] array];
    v25 = selfCopy->_registrations;
    selfCopy->_registrations = array;

    registrations = selfCopy->_registrations;
  }

  [(NSMutableArray *)registrations addObject:v21];
  objc_sync_exit(selfCopy);

  [(_CDLocalContext *)selfCopy->_context registerCallback:v21];
  (*(v18 + 2))(v18, [(_DASSystemContext *)selfCopy allowsDiscretionaryWorkForTask:v19 withPriority:priority withParameters:v20]);

  objc_destroyWeak(v30);
  objc_destroyWeak(&location);
}

- (void)removeNotificationHandlerForTaskName:(id)name
{
  v21 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  nameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.das.systemcontext.%@", nameCopy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = selfCopy->_registrations;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = *v17;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v17 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = *(*(&v16 + 1) + 8 * v10);
      identifier = [v11 identifier];
      v13 = [identifier isEqualToString:nameCopy];

      if (v13)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v14 = v11;

    if (!v14)
    {
      goto LABEL_12;
    }

    [(NSMutableArray *)selfCopy->_registrations removeObject:v14];
    objc_sync_exit(selfCopy);

    [(_CDLocalContext *)selfCopy->_context deregisterCallback:v14];
    selfCopy = v14;
  }

  else
  {
LABEL_9:

LABEL_12:
    objc_sync_exit(selfCopy);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)allowDiscretionaryWorkForBackgroundTask:(uint64_t)a1 withParameters:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1B6E2F000, a2, OS_LOG_TYPE_DEBUG, "Task %@: Returning YES", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end