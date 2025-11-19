@interface HFExecutionEnvironment
+ (BOOL)isCarousel;
+ (BOOL)isHomeApp;
+ (BOOL)isHomeControlService;
+ (BOOL)isHomeEnergyWidget;
+ (BOOL)isHomeNotification;
+ (BOOL)isHomeRelatedProcess;
+ (BOOL)isHomeUIService;
+ (BOOL)isHomeWidget;
+ (BOOL)isHomeWidgetIntents;
+ (BOOL)isHomeWidgetInteractive;
+ (BOOL)isHomeWidgetRelatedProcess;
+ (BOOL)isMacShortcuts;
+ (BOOL)isSettings;
+ (BOOL)isShortcuts;
+ (BOOL)isSpringBoard;
+ (BOOL)isWatchApp;
+ (BOOL)isWatchWidget;
+ (HFExecutionEnvironment)sharedInstance;
+ (id)stringForHFExecutionEnvironmentRunningState:(unint64_t)a3;
+ (void)_disablePreferencesCloudBackup;
- (HFExecutionEnvironment)init;
- (int64_t)hostProcess;
- (void)_recordMetricsForAppRunningState;
- (void)addObserver:(id)a3;
- (void)dispatchMessageToObserversWithBlock:(id)a3;
- (void)executionEnvironmentDidBecomeActive;
- (void)executionEnvironmentDidEnterBackground;
- (void)executionEnvironmentWillEnterForeground;
- (void)executionEnvironmentWillResignActive;
- (void)removeObserver:(id)a3;
- (void)setRunningState:(unint64_t)a3;
@end

@implementation HFExecutionEnvironment

+ (HFExecutionEnvironment)sharedInstance
{
  if (qword_280E02E98 != -1)
  {
    dispatch_once(&qword_280E02E98, &__block_literal_global_71);
  }

  v3 = _MergedGlobals_242;

  return v3;
}

void __40__HFExecutionEnvironment_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(HFExecutionEnvironment);
  v1 = _MergedGlobals_242;
  _MergedGlobals_242 = v0;
}

- (HFExecutionEnvironment)init
{
  v8.receiver = self;
  v8.super_class = HFExecutionEnvironment;
  v2 = [(HFExecutionEnvironment *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_runningState = 0;
    v2->_macScreenIsLocked = 0;
    v4 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v3->_observers;
    v3->_observers = v4;

    if (![(HFExecutionEnvironment *)v3 hostProcess])
    {
      v6 = dispatch_get_global_queue(-2, 0);
      dispatch_async(v6, &__block_literal_global_4_2);
    }
  }

  return v3;
}

+ (BOOL)isHomeApp
{
  v2 = +[HFExecutionEnvironment sharedInstance];
  v3 = [v2 hostProcess] == 0;

  return v3;
}

+ (BOOL)isWatchApp
{
  v2 = +[HFExecutionEnvironment sharedInstance];
  v3 = [v2 hostProcess] == 1;

  return v3;
}

+ (BOOL)isWatchWidget
{
  v2 = +[HFExecutionEnvironment sharedInstance];
  v3 = [v2 hostProcess] == 8;

  return v3;
}

+ (BOOL)isHomeUIService
{
  v2 = +[HFExecutionEnvironment sharedInstance];
  v3 = [v2 hostProcess] == 2;

  return v3;
}

+ (BOOL)isHomeControlService
{
  v2 = +[HFExecutionEnvironment sharedInstance];
  v3 = [v2 hostProcess] == 3;

  return v3;
}

+ (BOOL)isSpringBoard
{
  v2 = +[HFExecutionEnvironment sharedInstance];
  v3 = [v2 hostProcess] == 100;

  return v3;
}

+ (BOOL)isCarousel
{
  v2 = +[HFExecutionEnvironment sharedInstance];
  v3 = [v2 hostProcess] == 101;

  return v3;
}

+ (BOOL)isSettings
{
  v2 = +[HFExecutionEnvironment sharedInstance];
  v3 = [v2 hostProcess] == 102;

  return v3;
}

+ (BOOL)isMacShortcuts
{
  v2 = +[HFExecutionEnvironment sharedInstance];
  v3 = [v2 hostProcess] == 106;

  return v3;
}

+ (BOOL)isShortcuts
{
  if ([a1 isMacShortcuts])
  {
    return 1;
  }

  v3 = +[HFExecutionEnvironment sharedInstance];
  v2 = [v3 hostProcess] == 107;

  return v2;
}

+ (BOOL)isHomeNotification
{
  v2 = +[HFExecutionEnvironment sharedInstance];
  v3 = [v2 hostProcess] == 4;

  return v3;
}

+ (BOOL)isHomeWidget
{
  v2 = +[HFExecutionEnvironment sharedInstance];
  v3 = [v2 hostProcess] == 5;

  return v3;
}

+ (BOOL)isHomeWidgetInteractive
{
  v2 = +[HFExecutionEnvironment sharedInstance];
  v3 = [v2 hostProcess] == 6;

  return v3;
}

+ (BOOL)isHomeEnergyWidget
{
  v2 = +[HFExecutionEnvironment sharedInstance];
  v3 = [v2 hostProcess] == 7;

  return v3;
}

+ (BOOL)isHomeWidgetIntents
{
  v2 = +[HFExecutionEnvironment sharedInstance];
  v3 = [v2 hostProcess] == 10;

  return v3;
}

+ (BOOL)isHomeRelatedProcess
{
  if ([a1 isHomeApp] & 1) != 0 || (objc_msgSend(a1, "isWatchApp") & 1) != 0 || (objc_msgSend(a1, "isWatchWidget") & 1) != 0 || (objc_msgSend(a1, "isHomeUIService") & 1) != 0 || (objc_msgSend(a1, "isHomeControlService") & 1) != 0 || (objc_msgSend(a1, "isHomeNotification") & 1) != 0 || (objc_msgSend(a1, "isHomeWidget") & 1) != 0 || (objc_msgSend(a1, "isHomeEnergyWidget"))
  {
    return 1;
  }

  return [a1 isHomeWidgetInteractive];
}

+ (BOOL)isHomeWidgetRelatedProcess
{
  if ([a1 isHomeWidget] & 1) != 0 || (objc_msgSend(a1, "isHomeEnergyWidget") & 1) != 0 || (objc_msgSend(a1, "isHomeWidgetInteractive"))
  {
    return 1;
  }

  return [a1 isWatchWidget];
}

- (void)addObserver:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HFExecutionEnvironment *)self observers];
  [v5 addObject:v4];

  v6 = HFLogForCategory(8uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Added execution env observer: %@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)removeObserver:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HFExecutionEnvironment *)self observers];
  [v5 removeObject:v4];

  v6 = HFLogForCategory(8uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Removed execution env observer: %@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setRunningState:(unint64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_runningState != a3)
  {
    v7 = HFLogForCategory(8uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [HFExecutionEnvironment stringForHFExecutionEnvironmentRunningState:a3];
      *buf = 138412290;
      v12 = v8;
      _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Running state is now '%@'", buf, 0xCu);
    }

    self->_runningState = a3;
    [(HFExecutionEnvironment *)self _recordMetricsForAppRunningState];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __42__HFExecutionEnvironment_setRunningState___block_invoke;
    v10[3] = &unk_277DF9080;
    v10[4] = self;
    [(HFExecutionEnvironment *)self dispatchMessageToObserversWithBlock:v10];
    goto LABEL_10;
  }

  if (a3 || ([(HFExecutionEnvironment *)self appForegroundStartTime], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
LABEL_10:
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  v6 = *MEMORY[0x277D85DE8];

  [(HFExecutionEnvironment *)self _recordMetricsForAppRunningState];
}

void __42__HFExecutionEnvironment_setRunningState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 executionEnvironmentRunningStateDidChange:*(a1 + 32)];
  }
}

- (int64_t)hostProcess
{
  if (qword_280E02EA8 != -1)
  {
    dispatch_once(&qword_280E02EA8, &__block_literal_global_9_2);
  }

  return qword_280E02EA0;
}

void __37__HFExecutionEnvironment_hostProcess__block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v13 = [v0 bundleIdentifier];

  v1 = HFHomeAppBundleID();
  v2 = [v13 isEqualToString:v1];

  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v4 = HFNanoHomeAppBundleID();
    v5 = [v13 isEqualToString:v4];

    if (v5)
    {
      v3 = 1;
    }

    else
    {
      v6 = HFNanoHomeWidgetBundleID();
      v7 = [v13 isEqualToString:v6];

      if (v7)
      {
        v3 = 8;
      }

      else
      {
        v8 = HFHomeUIServiceBundleID();
        v9 = [v13 isEqualToString:v8];

        if (v9)
        {
          v3 = 2;
        }

        else
        {
          v10 = HFHomeControlServiceBundleID();
          v11 = [v13 isEqualToString:v10];

          if (v11)
          {
            v3 = 3;
          }

          else if ([v13 isEqualToString:@"com.apple.Home.HomeNotification"])
          {
            v3 = 4;
          }

          else if ([v13 isEqualToString:@"com.apple.Home.HomeWidget"])
          {
            v3 = 5;
          }

          else if ([v13 isEqualToString:@"com.apple.Home.HomeEnergyWidgets"])
          {
            v3 = 7;
          }

          else if ([v13 isEqualToString:@"com.apple.Home.HomeWidget.Interactive"])
          {
            v3 = 6;
          }

          else if ([v13 isEqualToString:@"com.apple.Home.HomeWidgetIntentsExtension"])
          {
            v3 = 10;
          }

          else if ([v13 isEqualToString:@"com.apple.springboard"])
          {
            v3 = 100;
          }

          else if ([v13 isEqualToString:@"com.apple.Carousel"])
          {
            v3 = 101;
          }

          else if ([v13 isEqualToString:@"com.apple.Preferences"])
          {
            v3 = 102;
          }

          else if ([v13 isEqualToString:@"com.apple.proximitycontrold"])
          {
            v3 = 104;
          }

          else if ([v13 isEqualToString:@"com.apple.PCViewService"])
          {
            v3 = 105;
          }

          else if ([v13 isEqualToString:@"com.apple.HomeControlServiceTestApp"])
          {
            v3 = 103;
          }

          else if ([v13 isEqualToString:@"com.apple.WorkflowUI.CatalystContentExtension"])
          {
            v3 = 106;
          }

          else
          {
            v12 = [v13 isEqualToString:@"com.apple.shortcuts"];
            v3 = 107;
            if (!v12)
            {
              v3 = -1;
            }
          }
        }
      }
    }
  }

  qword_280E02EA0 = v3;
}

- (void)executionEnvironmentWillEnterForeground
{
  v3 = HFLogForCategory(8uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "Application entering foreground", buf, 2u);
  }

  [(HFExecutionEnvironment *)self setRunningState:0];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__HFExecutionEnvironment_executionEnvironmentWillEnterForeground__block_invoke;
  v4[3] = &unk_277DF9080;
  v4[4] = self;
  [(HFExecutionEnvironment *)self dispatchMessageToObserversWithBlock:v4];
}

void __65__HFExecutionEnvironment_executionEnvironmentWillEnterForeground__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 executionEnvironmentWillEnterForeground:*(a1 + 32)];
  }
}

- (void)executionEnvironmentDidBecomeActive
{
  v3 = HFLogForCategory(8uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "Application became active", buf, 2u);
  }

  [(HFExecutionEnvironment *)self setRunningState:0];
  [(HFExecutionEnvironment *)self setActive:1];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__HFExecutionEnvironment_executionEnvironmentDidBecomeActive__block_invoke;
  v4[3] = &unk_277DF9080;
  v4[4] = self;
  [(HFExecutionEnvironment *)self dispatchMessageToObserversWithBlock:v4];
}

void __61__HFExecutionEnvironment_executionEnvironmentDidBecomeActive__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 executionEnvironmentDidBecomeActive:*(a1 + 32)];
  }
}

- (void)executionEnvironmentWillResignActive
{
  v3 = HFLogForCategory(8uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "Application resigning active", buf, 2u);
  }

  [(HFExecutionEnvironment *)self setActive:0];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__HFExecutionEnvironment_executionEnvironmentWillResignActive__block_invoke;
  v4[3] = &unk_277DF9080;
  v4[4] = self;
  [(HFExecutionEnvironment *)self dispatchMessageToObserversWithBlock:v4];
}

void __62__HFExecutionEnvironment_executionEnvironmentWillResignActive__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 executionEnvironmentWillResignActive:*(a1 + 32)];
  }
}

- (void)executionEnvironmentDidEnterBackground
{
  v3 = HFLogForCategory(8uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "Application entered background", buf, 2u);
  }

  [(HFExecutionEnvironment *)self setRunningState:1];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__HFExecutionEnvironment_executionEnvironmentDidEnterBackground__block_invoke;
  v4[3] = &unk_277DF9080;
  v4[4] = self;
  [(HFExecutionEnvironment *)self dispatchMessageToObserversWithBlock:v4];
}

void __64__HFExecutionEnvironment_executionEnvironmentDidEnterBackground__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 executionEnvironmentDidEnterBackground:*(a1 + 32)];
  }
}

- (void)_recordMetricsForAppRunningState
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(HFExecutionEnvironment *)self runningState];
  if (v3 == 1)
  {
    v7 = [(HFExecutionEnvironment *)self appForegroundStartTime];

    if (!v7)
    {
      v6 = HFLogForCategory(6uLL);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "Expected appForegroundStartTime to be non-nil when entering background so we could record total foreground time. No metrics will be recorded.", buf, 2u);
      }

      goto LABEL_13;
    }

    v8 = [MEMORY[0x277CBEAA8] date];
    v9 = [(HFExecutionEnvironment *)self appForegroundStartTime];
    [v8 timeIntervalSinceDate:v9];
    v11 = v10;

    [(HFExecutionEnvironment *)self setAppForegroundStartTime:0];
    if (v11 > 1.0)
    {
      v6 = +[HFHomeKitDispatcher sharedDispatcher];
      v12 = [v6 allHomesFuture];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __58__HFExecutionEnvironment__recordMetricsForAppRunningState__block_invoke;
      v16[3] = &__block_descriptor_40_e29_v24__0__NSArray_8__NSError_16l;
      *&v16[4] = v11;
      v13 = [v12 addCompletionBlock:v16];

LABEL_13:
    }
  }

  else if (!v3)
  {
    v4 = [(HFExecutionEnvironment *)self appForegroundStartTime];

    if (v4)
    {
      v5 = HFLogForCategory(6uLL);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v15 = [(HFExecutionEnvironment *)self appForegroundStartTime];
        *buf = 138412290;
        v18 = v15;
        _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "Expected appForegroundStartTime to be nil when entering foreground but found value: %@", buf, 0xCu);
      }
    }

    v6 = [MEMORY[0x277CBEAA8] date];
    [(HFExecutionEnvironment *)self setAppForegroundStartTime:v6];
    goto LABEL_13;
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __58__HFExecutionEnvironment__recordMetricsForAppRunningState__block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v4)
  {
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [*(*(&v13 + 1) + 8 * i) accessories];
        v8 = [v7 count];

        if (v8)
        {
          v4 = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v13 objects:v19 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v17[0] = @"foregroundDuration";
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 32)];
  v18[0] = v9;
  v17[1] = @"userHasAccessories";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:v4];
  v18[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

  [HFAnalytics sendEvent:0 withData:v11];
  v12 = *MEMORY[0x277D85DE8];
}

+ (id)stringForHFExecutionEnvironmentRunningState:(unint64_t)a3
{
  v3 = @"inactive";
  if (a3 == 1)
  {
    v3 = @"background";
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"foreground";
  }
}

- (void)dispatchMessageToObserversWithBlock:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [(HFExecutionEnvironment *)self observers];
  v6 = [v5 allObjects];

  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    v10 = MEMORY[0x277D85CD0];
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __62__HFExecutionEnvironment_dispatchMessageToObserversWithBlock___block_invoke;
        v15[3] = &unk_277DF2AD8;
        v13 = v4;
        v15[4] = v12;
        v16 = v13;
        dispatch_async(v10, v15);

        ++v11;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];
}

+ (void)_disablePreferencesCloudBackup
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [v2 containerURLForSecurityApplicationGroupIdentifier:@"com.apple.Home.group"];

  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Library/Preferences/%@.plist", @"com.apple.Home.group"];
  v5 = [v3 URLByAppendingPathComponent:v4];
  v6 = *MEMORY[0x277CBECB0];
  v11 = 0;
  v7 = [v5 setResourceValue:MEMORY[0x277CBEC38] forKey:v6 error:&v11];
  v8 = v11;
  if ((v7 & 1) == 0)
  {
    v9 = HFLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v13 = @"com.apple.Home.group";
      v14 = 2112;
      v15 = v8;
      _os_log_error_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_ERROR, "Failed to set resource flag for disabling iCloud backups on %@ preferences. Error: %@", buf, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end