@interface _DASSystemContext
+ (BOOL)isPluggedIn:(id)a3;
+ (id)defaultInexpensivePathEvaluator;
+ (id)defaultPathEvaluator;
+ (id)initWithContext:(id)a3;
+ (id)sharedInstance;
- (BOOL)allowDiscretionaryWorkForBackgroundTask:(id)a3 withParameters:(id)a4;
- (BOOL)allowDiscretionaryWorkForUtilityTask:(id)a3 withParameters:(id)a4;
- (BOOL)allowsDiscretionaryWorkForTask:(id)a3 withPriority:(unint64_t)a4 withParameters:(id)a5;
- (BOOL)isApplicationFocalForPushTask:(id)a3;
- (BOOL)isInexpensiveNetworkAvailable;
- (BOOL)isNetworkAvailable;
- (_DASSystemContext)init;
- (id)keyPathForPriority:(unint64_t)a3;
- (void)addNotificationHandlerForTaskName:(id)a3 withPriority:(unint64_t)a4 withParameters:(id)a5 withHandler:(id)a6;
- (void)removeNotificationHandlerForTaskName:(id)a3;
- (void)updateSystemConstraintsWithParameters:(id)a3;
@end

@implementation _DASSystemContext

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35___DASSystemContext_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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
    v3 = [MEMORY[0x1E6997A60] userContext];
    context = v2->_context;
    v2->_context = v3;

    v5 = os_log_create([@"com.apple.das" UTF8String], objc_msgSend(@"systemcontext", "UTF8String"));
    dasSystemContextLog = v2->_dasSystemContextLog;
    v2->_dasSystemContextLog = v5;
  }

  return v2;
}

+ (id)initWithContext:(id)a3
{
  v3 = a3;
  v4 = +[_DASSystemContext sharedInstance];
  [v4 setContext:v3];

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

+ (BOOL)isPluggedIn:(id)a3
{
  v3 = MEMORY[0x1E6997A68];
  v4 = a3;
  v5 = [v3 keyPathForPluginStatus];
  v6 = [v4 objectForKeyedSubscript:v5];

  LOBYTE(v4) = [v6 BOOLValue];
  return v4;
}

- (BOOL)isNetworkAvailable
{
  v2 = [objc_opt_class() defaultPathEvaluator];
  v3 = [v2 path];
  v4 = [v3 status];

  return v4 != 2;
}

- (BOOL)isInexpensiveNetworkAvailable
{
  v2 = [objc_opt_class() defaultInexpensivePathEvaluator];
  v3 = [v2 path];
  v4 = [v3 status];

  return v4 != 2;
}

- (BOOL)isApplicationFocalForPushTask:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if ([v4 hasPrefix:@"com.apple.apsd."])
  {
    v5 = [v4 substringFromIndex:{objc_msgSend(@"com.apple.apsd.", "length")}];
  }

  if ([v5 hasPrefix:@"com.apple.icloud-container."])
  {
    v6 = [v5 substringFromIndex:{objc_msgSend(@"com.apple.icloud-container.", "length")}];

    v5 = v6;
  }

  v7 = [v5 lowercaseString];

  context = self->_context;
  v9 = [MEMORY[0x1E6997A68] keyPathForAppUsageDataDictionaries];
  v10 = [(_CDLocalContext *)context objectForKeyedSubscript:v9];

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
        v16 = [MEMORY[0x1E6997A68] appUsageBundleID];
        v17 = [v15 objectForKeyedSubscript:v16];
        v18 = [v17 lowercaseString];

        if (v18 && ([v18 hasPrefix:v7] & 1) != 0)
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

- (BOOL)allowsDiscretionaryWorkForTask:(id)a3 withPriority:(unint64_t)a4 withParameters:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  if (_DASSchedulingPriorityBackground >= a4)
  {
    v13 = [(_DASSystemContext *)self allowDiscretionaryWorkForBackgroundTask:v8 withParameters:v9];
  }

  else if (_DASSchedulingPriorityDefault >= a4)
  {
    v13 = [(_DASSystemContext *)self allowDiscretionaryWorkForUtilityTask:v8 withParameters:v9];
  }

  else
  {
    v11 = [v9 objectForKeyedSubscript:kDASSystemContextKeyNetworkTask];
    v12 = [v11 BOOLValue];

    if (!v12)
    {
      v14 = 1;
      goto LABEL_8;
    }

    v13 = [(_DASSystemContext *)self isNetworkAvailable];
  }

  v14 = v13;
LABEL_8:
  objc_autoreleasePoolPop(v10);

  return v14;
}

- (id)keyPathForPriority:(unint64_t)a3
{
  if (_DASSchedulingPriorityBackground >= a3)
  {
    v7 = @"/das/maintenanceConstraints";
  }

  else
  {
    if (_DASSchedulingPriorityDefault < a3)
    {
      v5 = 0;

      return v5;
    }

    v7 = @"/das/utilityConstraints";
  }

  v5 = [MEMORY[0x1E6997A78] keyPathWithKey:{v7, v3}];

  return v5;
}

- (BOOL)allowDiscretionaryWorkForBackgroundTask:(id)a3 withParameters:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(_DASSystemContext *)self keyPathForPriority:_DASSchedulingPriorityBackground];
  v9 = [(_CDLocalContext *)self->_context objectForKeyedSubscript:v8];
  v10 = [v9 unsignedIntegerValue];

  v11 = [v7 objectForKeyedSubscript:kDASSystemContextKeyPushTask];
  v12 = [v11 BOOLValue];

  if (v12 && [(_DASSystemContext *)self isApplicationFocalForPushTask:v6])
  {
    v13 = [(_DASSystemContext *)self dasSystemContextLog];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138412290;
      v26 = v6;
      _os_log_impl(&dword_1B6E2F000, v13, OS_LOG_TYPE_DEFAULT, "Task %@: Application focal", &v25, 0xCu);
    }
  }

  else
  {
    v14 = (v10 & 1) == 0;
    if (v10)
    {
      v15 = [(_DASSystemContext *)self dasSystemContextLog];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 138412546;
        v26 = v6;
        v27 = 2048;
        v28 = 30;
        _os_log_impl(&dword_1B6E2F000, v15, OS_LOG_TYPE_DEFAULT, "Task %@: Battery level below %lu returning NO", &v25, 0x16u);
      }
    }

    if ((v10 & 2) != 0)
    {
      v16 = [(_DASSystemContext *)self dasSystemContextLog];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 138412546;
        v26 = v6;
        v27 = 2048;
        v28 = 0;
        _os_log_impl(&dword_1B6E2F000, v16, OS_LOG_TYPE_DEFAULT, "Task %@: Thermal pressure level above %lu returning NO", &v25, 0x16u);
      }

      v14 = 0;
    }

    v17 = [v7 objectForKeyedSubscript:kDASSystemContextKeyBypassEnergyBudget];
    v18 = [v17 BOOLValue];

    if ((v18 & 1) == 0 && (v10 & 4) != 0)
    {
      v19 = [(_DASSystemContext *)self dasSystemContextLog];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 138412290;
        v26 = v6;
        _os_log_impl(&dword_1B6E2F000, v19, OS_LOG_TYPE_DEFAULT, "Task %@: Out of Energy budget returning NO", &v25, 0xCu);
      }

      v14 = 0;
    }

    v20 = [v7 objectForKeyedSubscript:kDASSystemContextKeyNetworkTask];
    v21 = [v20 BOOLValue];

    if (v21 && (v10 & 0x10) != 0)
    {
      v13 = [(_DASSystemContext *)self dasSystemContextLog];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 138412290;
        v26 = v6;
        _os_log_impl(&dword_1B6E2F000, v13, OS_LOG_TYPE_DEFAULT, "Task %@: Inexpensive network not available returning NO", &v25, 0xCu);
      }

      v22 = 0;
      goto LABEL_27;
    }

    if (!v14)
    {
      v22 = 0;
      goto LABEL_28;
    }

    v13 = [(_DASSystemContext *)self dasSystemContextLog];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [_DASSystemContext allowDiscretionaryWorkForBackgroundTask:v6 withParameters:v13];
    }
  }

  v22 = 1;
LABEL_27:

LABEL_28:
  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

- (BOOL)allowDiscretionaryWorkForUtilityTask:(id)a3 withParameters:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E6997A78] keyPathWithKey:@"/das/utilityConstraints"];
  v9 = [(_CDLocalContext *)self->_context objectForKeyedSubscript:v8];
  v10 = [v9 unsignedIntegerValue];

  v11 = [v7 objectForKeyedSubscript:kDASSystemContextKeyPushTask];
  v12 = [v11 BOOLValue];

  if (v12 && [(_DASSystemContext *)self isApplicationFocalForPushTask:v6])
  {
    v13 = [(_DASSystemContext *)self dasSystemContextLog];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 138412290;
      v29 = v6;
      _os_log_impl(&dword_1B6E2F000, v13, OS_LOG_TYPE_DEFAULT, "Task %@: Application focal", &v28, 0xCu);
    }

LABEL_24:
    v22 = 1;
LABEL_30:

    goto LABEL_31;
  }

  v14 = (v10 & 1) == 0;
  if (v10)
  {
    v15 = [(_DASSystemContext *)self dasSystemContextLog];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 138412546;
      v29 = v6;
      v30 = 2048;
      v31 = 20;
      _os_log_impl(&dword_1B6E2F000, v15, OS_LOG_TYPE_DEFAULT, "Task %@: Battery level below %lu returning NO", &v28, 0x16u);
    }
  }

  if ((v10 & 2) != 0)
  {
    v16 = [(_DASSystemContext *)self dasSystemContextLog];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 138412546;
      v29 = v6;
      v30 = 2048;
      v31 = 20;
      _os_log_impl(&dword_1B6E2F000, v16, OS_LOG_TYPE_DEFAULT, "Task %@: Thermal pressure level above %lu returning NO", &v28, 0x16u);
    }

    v14 = 0;
  }

  v17 = [v7 objectForKeyedSubscript:kDASSystemContextKeyBypassEnergyBudget];
  v18 = [v17 BOOLValue];

  if ((v18 & 1) == 0 && (v10 & 4) != 0)
  {
    v19 = [(_DASSystemContext *)self dasSystemContextLog];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 138412290;
      v29 = v6;
      _os_log_impl(&dword_1B6E2F000, v19, OS_LOG_TYPE_DEFAULT, "Task %@: Out of Energy budget returning NO", &v28, 0xCu);
    }

    v14 = 0;
  }

  v20 = [v7 objectForKeyedSubscript:kDASSystemContextKeyNetworkTask];
  v21 = [v20 BOOLValue];

  if (v21)
  {
    if ((v10 & 0x20) != 0)
    {
      v13 = [(_DASSystemContext *)self dasSystemContextLog];
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
LABEL_29:
        v22 = 0;
        goto LABEL_30;
      }

      v28 = 138412290;
      v29 = v6;
      v23 = "Task %@: Network not available returning NO";
LABEL_28:
      _os_log_impl(&dword_1B6E2F000, v13, OS_LOG_TYPE_DEFAULT, v23, &v28, 0xCu);
      goto LABEL_29;
    }

    if ((v10 & 0x10) != 0)
    {
      v26 = [v7 objectForKeyedSubscript:kDASSystemContextKeyBypassDataBudget];
      v27 = [v26 BOOLValue];

      if ((v27 & 1) == 0 && (v10 & 8) != 0)
      {
        v13 = [(_DASSystemContext *)self dasSystemContextLog];
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_29;
        }

        v28 = 138412290;
        v29 = v6;
        v23 = "Task %@: Out of data budget returning NO";
        goto LABEL_28;
      }
    }
  }

  if (v14)
  {
    v13 = [(_DASSystemContext *)self dasSystemContextLog];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [_DASSystemContext allowDiscretionaryWorkForBackgroundTask:v6 withParameters:v13];
    }

    goto LABEL_24;
  }

  v22 = 0;
LABEL_31:

  v24 = *MEMORY[0x1E69E9840];
  return v22;
}

- (void)updateSystemConstraintsWithParameters:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_DASSystemContext *)self dasSystemContextLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 description];
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_1B6E2F000, v5, OS_LOG_TYPE_DEFAULT, "Updating system constraints to: %@", &v9, 0xCu);
  }

  v7 = +[_DASScheduler sharedScheduler];
  [v7 updateSystemConstraintsWithParameters:v4];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)addNotificationHandlerForTaskName:(id)a3 withPriority:(unint64_t)a4 withParameters:(id)a5 withHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = MEMORY[0x1E6997A80];
  v14 = [(_DASSystemContext *)self keyPathForPriority:a4];
  v15 = [v13 predicateForChangeAtKeyPath:v14];

  objc_initWeak(&location, self);
  v16 = MEMORY[0x1E6997A70];
  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.das.systemcontext.%@", v10];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __95___DASSystemContext_addNotificationHandlerForTaskName_withPriority_withParameters_withHandler___block_invoke;
  v26[3] = &unk_1E7C8F690;
  objc_copyWeak(v30, &location);
  v18 = v12;
  v29 = v18;
  v19 = v10;
  v27 = v19;
  v30[1] = a4;
  v20 = v11;
  v28 = v20;
  v21 = [v16 localNonWakingRegistrationWithIdentifier:v17 contextualPredicate:v15 callback:v26];

  v22 = self;
  objc_sync_enter(v22);
  registrations = v22->_registrations;
  if (!registrations)
  {
    v24 = [MEMORY[0x1E695DF70] array];
    v25 = v22->_registrations;
    v22->_registrations = v24;

    registrations = v22->_registrations;
  }

  [(NSMutableArray *)registrations addObject:v21];
  objc_sync_exit(v22);

  [(_CDLocalContext *)v22->_context registerCallback:v21];
  (*(v18 + 2))(v18, [(_DASSystemContext *)v22 allowsDiscretionaryWorkForTask:v19 withPriority:a4 withParameters:v20]);

  objc_destroyWeak(v30);
  objc_destroyWeak(&location);
}

- (void)removeNotificationHandlerForTaskName:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.das.systemcontext.%@", v4];
  v6 = self;
  objc_sync_enter(v6);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v6->_registrations;
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
      v12 = [v11 identifier];
      v13 = [v12 isEqualToString:v5];

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

    [(NSMutableArray *)v6->_registrations removeObject:v14];
    objc_sync_exit(v6);

    [(_CDLocalContext *)v6->_context deregisterCallback:v14];
    v6 = v14;
  }

  else
  {
LABEL_9:

LABEL_12:
    objc_sync_exit(v6);
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