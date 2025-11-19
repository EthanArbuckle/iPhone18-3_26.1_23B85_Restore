@interface EDWidgetUpdateController
+ (OS_os_log)log;
- (EDWidgetUpdateController)initWithWidgetBundleIdentifier:(id)a3 widgetKindIdentifiers:(id)a4 hookRegistry:(id)a5;
- (int64_t)_activityDelay;
- (void)_hasUserConfiguredMailWidget:(id)a3;
- (void)_refreshTimelinesWithReason:(id)a3;
- (void)_restoreFromUserDefaults;
- (void)_runActivity;
- (void)_scheduleActivityWithReason:(id)a3;
- (void)_updateLastUpdateInformation;
- (void)_writeUserDefaults;
- (void)dealloc;
- (void)persistenceDidAddMessages:(id)a3 generationWindow:(id)a4;
- (void)persistenceDidChangeFlags:(id)a3 messages:(id)a4 generationWindow:(id)a5;
@end

@implementation EDWidgetUpdateController

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__EDWidgetUpdateController_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_112 != -1)
  {
    dispatch_once(&log_onceToken_112, block);
  }

  v2 = log_log_112;

  return v2;
}

void __31__EDWidgetUpdateController_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_112;
  log_log_112 = v1;
}

- (EDWidgetUpdateController)initWithWidgetBundleIdentifier:(id)a3 widgetKindIdentifiers:(id)a4 hookRegistry:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v24.receiver = self;
  v24.super_class = EDWidgetUpdateController;
  v11 = [(EDWidgetUpdateController *)&v24 init];
  if (v11)
  {
    v12 = +[EDWidgetUpdateController log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "Waiting for updates", buf, 2u);
    }

    v13 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v9];
    identifiers = v11->_identifiers;
    v11->_identifiers = v13;

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __94__EDWidgetUpdateController_initWithWidgetBundleIdentifier_widgetKindIdentifiers_hookRegistry___block_invoke;
    v22[3] = &unk_1E8256328;
    v23 = v8;
    v15 = [v9 ef_map:v22];
    timelineControllers = v11->_timelineControllers;
    v11->_timelineControllers = v15;

    v30 = 0;
    v31 = &v30;
    v32 = 0x2050000000;
    v17 = getCHSWidgetConfigurationReaderClass_softClass;
    v33 = getCHSWidgetConfigurationReaderClass_softClass;
    if (!getCHSWidgetConfigurationReaderClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      v26 = 3221225472;
      v27 = __getCHSWidgetConfigurationReaderClass_block_invoke;
      v28 = &unk_1E8250000;
      v29 = &v30;
      __getCHSWidgetConfigurationReaderClass_block_invoke(buf);
      v17 = v31[3];
    }

    v18 = v17;
    _Block_object_dispose(&v30, 8);
    v19 = objc_alloc_init(v17);
    reader = v11->_reader;
    v11->_reader = v19;

    [v10 registerMessageChangeHookResponder:v11];
    [(EDWidgetUpdateController *)v11 _restoreFromUserDefaults];
    [(EDWidgetUpdateController *)v11 _runActivity];
  }

  return v11;
}

id __94__EDWidgetUpdateController_initWithWidgetBundleIdentifier_widgetKindIdentifiers_hookRegistry___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v4 = getCHSTimelineControllerClass_softClass;
  v12 = getCHSTimelineControllerClass_softClass;
  if (!getCHSTimelineControllerClass_softClass)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __getCHSTimelineControllerClass_block_invoke;
    v8[3] = &unk_1E8250000;
    v8[4] = &v9;
    __getCHSTimelineControllerClass_block_invoke(v8);
    v4 = v10[3];
  }

  v5 = v4;
  _Block_object_dispose(&v9, 8);
  v6 = [[v4 alloc] initWithExtensionBundleIdentifier:*(a1 + 32) kind:v3];

  return v6;
}

- (void)dealloc
{
  xpc_activity_unregister(EDWidgetUpdateActivityIdentifier);
  v3.receiver = self;
  v3.super_class = EDWidgetUpdateController;
  [(EDWidgetUpdateController *)&v3 dealloc];
}

- (void)_hasUserConfiguredMailWidget:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(EDWidgetUpdateController *)self reader];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__EDWidgetUpdateController__hasUserConfiguredMailWidget___block_invoke;
  v7[3] = &unk_1E82593D0;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [v5 allConfiguredWidgetsWithCompletion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __57__EDWidgetUpdateController__hasUserConfiguredMailWidget___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__EDWidgetUpdateController__hasUserConfiguredMailWidget___block_invoke_2;
  v10[3] = &unk_1E82593A8;
  objc_copyWeak(&v14, (a1 + 40));
  v7 = v5;
  v11 = v7;
  v13 = *(a1 + 32);
  v8 = v6;
  v12 = v8;
  v9 = [MEMORY[0x1E699B978] mainThreadScheduler];
  [v9 performBlock:v10];

  objc_destroyWeak(&v14);
}

void __57__EDWidgetUpdateController__hasUserConfiguredMailWidget___block_invoke_2(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      obj = v3;
      v16 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
      if (v16)
      {
        v17 = *v25;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v25 != v17)
            {
              objc_enumerationMutation(obj);
            }

            v4 = *(*(&v24 + 1) + 8 * i);
            v20 = 0u;
            v21 = 0u;
            v22 = 0u;
            v23 = 0u;
            v5 = [v4 widgetConfigurations];
            v6 = [v5 countByEnumeratingWithState:&v20 objects:v29 count:16];
            if (v6)
            {
              v7 = *v21;
              while (2)
              {
                for (j = 0; j != v6; ++j)
                {
                  if (*v21 != v7)
                  {
                    objc_enumerationMutation(v5);
                  }

                  v9 = *(*(&v20 + 1) + 8 * j);
                  v10 = [WeakRetained identifiers];
                  v11 = [v9 widget];
                  v12 = [v11 kind];
                  v13 = [v10 containsObject:v12];

                  if (v13)
                  {
                    (*(*(a1 + 48) + 16))();

                    goto LABEL_23;
                  }
                }

                v6 = [v5 countByEnumeratingWithState:&v20 objects:v29 count:16];
                if (v6)
                {
                  continue;
                }

                break;
              }
            }
          }

          v16 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
        }

        while (v16);
      }
    }

    else
    {
      obj = +[EDWidgetUpdateController log];
      if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
      {
        v14 = [*(a1 + 40) ef_publicDescription];
        __57__EDWidgetUpdateController__hasUserConfiguredMailWidget___block_invoke_2_cold_1(v14, buf, obj);
      }
    }

    (*(*(a1 + 48) + 16))();
  }

LABEL_23:

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_scheduleActivityWithReason:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__EDWidgetUpdateController__scheduleActivityWithReason___block_invoke;
  v6[3] = &unk_1E8259418;
  v6[4] = self;
  objc_copyWeak(&v8, &location);
  v7 = v4;
  v5 = v4;
  [(EDWidgetUpdateController *)self _hasUserConfiguredMailWidget:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __56__EDWidgetUpdateController__scheduleActivityWithReason___block_invoke(id *a1, char a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = [a1[4] _activityDelay];
    v4 = +[EDWidgetUpdateController log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v13 = v3;
      _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_DEFAULT, "Schedule activity with %llds delay", buf, 0xCu);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __56__EDWidgetUpdateController__scheduleActivityWithReason___block_invoke_21;
    aBlock[3] = &__block_descriptor_40_e33_v16__0__NSObject_OS_xpc_object__8l;
    aBlock[4] = v3;
    v5 = _Block_copy(aBlock);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __56__EDWidgetUpdateController__scheduleActivityWithReason___block_invoke_2;
    v8[3] = &unk_1E82571D0;
    objc_copyWeak(&v10, a1 + 6);
    v9 = a1[5];
    v6 = _Block_copy(v8);
    ef_xpc_activity_register_withcriteria();

    objc_destroyWeak(&v10);
  }

  else
  {
    v5 = +[EDWidgetUpdateController log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "Skip widget update - no Mail widgets are configured", buf, 2u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __56__EDWidgetUpdateController__scheduleActivityWithReason___block_invoke_21(uint64_t a1, void *a2)
{
  xdict = a2;
  xpc_dictionary_set_int64(xdict, *MEMORY[0x1E69E9C68], *(a1 + 32));
  xpc_dictionary_set_int64(xdict, *MEMORY[0x1E69E9C98], *MEMORY[0x1E69E9CD0]);
  xpc_dictionary_set_string(xdict, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D78]);
}

void __56__EDWidgetUpdateController__scheduleActivityWithReason___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _refreshTimelinesWithReason:*(a1 + 32)];
    if (!xpc_activity_set_state(v3, 5))
    {
      v6 = +[EDWidgetUpdateController log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __56__EDWidgetUpdateController__scheduleActivityWithReason___block_invoke_2_cold_1(v6);
      }
    }
  }
}

- (void)_runActivity
{
  objc_initWeak(&location, self);
  objc_copyWeak(&v2, &location);
  ef_xpc_activity_run_if_necessary();
  objc_destroyWeak(&v2);
  objc_destroyWeak(&location);
}

void __40__EDWidgetUpdateController__runActivity__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _refreshTimelinesWithReason:@"daemonLaunched"];
}

- (int64_t)_activityDelay
{
  v2 = *MEMORY[0x1E69E9CD0];
  v3 = [(EDWidgetUpdateController *)self lastUpdate];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DEE8] currentCalendar];
    v5 = [v4 dateByAddingUnit:64 value:10 toDate:v3 options:0];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:600.0];
    }

    v8 = v7;

    v9 = [MEMORY[0x1E695DF00] date];
    v10 = [v9 ef_isEarlierThanDate:v8];

    if (v10)
    {
      v2 = *MEMORY[0x1E69E9CE8];
    }
  }

  return v2;
}

- (void)_refreshTimelinesWithReason:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(EDWidgetUpdateController *)self timelineControllers];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v7)
  {
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) reloadTimelineWithReason:v4];
        [v5 ef_addOptionalObject:v10];
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v7);
  }

  [(EDWidgetUpdateController *)self _updateLastUpdateInformation];
  if ([v5 count])
  {
    v11 = +[EDWidgetUpdateController log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(EDWidgetUpdateController *)v5 _refreshTimelinesWithReason:v11];
    }
  }

  else
  {
    v11 = +[EDWidgetUpdateController log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(EDWidgetUpdateController *)self numberOfUpdates];
      *buf = 134217984;
      v19 = v12;
      _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_DEFAULT, "Successfully updated widget (%ld)", buf, 0xCu);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_updateLastUpdateInformation
{
  v6 = [MEMORY[0x1E695DF00] date];
  v3 = [(EDWidgetUpdateController *)self lastUpdate];
  v4 = [MEMORY[0x1E695DEE8] currentCalendar];
  if ([v4 isDateInToday:v3] && objc_msgSend(v4, "isDateInToday:", v6))
  {
    v5 = [(EDWidgetUpdateController *)self numberOfUpdates]+ 1;
  }

  else
  {
    v5 = 1;
  }

  [(EDWidgetUpdateController *)self setNumberOfUpdates:v5];
  [(EDWidgetUpdateController *)self setLastUpdate:v6];
  [(EDWidgetUpdateController *)self _writeUserDefaults];
}

- (void)persistenceDidAddMessages:(id)a3 generationWindow:(id)a4
{
  v5 = [EDWidgetUpdateController log:a3];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "Persistence did add messages", v6, 2u);
  }

  [(EDWidgetUpdateController *)self _scheduleActivityWithReason:@"messageAdded"];
}

- (void)persistenceDidChangeFlags:(id)a3 messages:(id)a4 generationWindow:(id)a5
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([v6 hasChanges] && ((objc_msgSend(v6, "readChanged") & 1) != 0 || objc_msgSend(v6, "deletedChanged")))
  {
    v7 = +[EDWidgetUpdateController log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 ef_publicDescription];
      v12 = 138543362;
      v13 = v8;
      _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "Persistence did change flags: %{public}@", &v12, 0xCu);
    }

    [(EDWidgetUpdateController *)self _scheduleActivityWithReason:@"flagChanged"];
  }

  else
  {
    v9 = +[EDWidgetUpdateController log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [v6 ef_publicDescription];
      [EDWidgetUpdateController persistenceDidChangeFlags:v10 messages:&v12 generationWindow:v9];
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_restoreFromUserDefaults
{
  v9 = [MEMORY[0x1E695E000] em_userDefaults];
  v3 = [v9 objectForKey:@"kLastWidgetUpdateDefaultsKey"];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DF00] distantPast];
  }

  [(EDWidgetUpdateController *)self setLastUpdate:v4];
  if (!v3)
  {
  }

  v5 = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = [(EDWidgetUpdateController *)self lastUpdate];
  v7 = [v5 isDateInToday:v6];

  if (v7)
  {
    v8 = [v9 objectForKey:@"kNumberOfWidgetUpdatesDefaultsKey"];
    -[EDWidgetUpdateController setNumberOfUpdates:](self, "setNumberOfUpdates:", [v8 integerValue]);
  }

  else
  {
    [(EDWidgetUpdateController *)self setNumberOfUpdates:0];
  }
}

- (void)_writeUserDefaults
{
  v5 = [MEMORY[0x1E695E000] em_userDefaults];
  v3 = [(EDWidgetUpdateController *)self lastUpdate];
  [v5 setObject:v3 forKey:@"kLastWidgetUpdateDefaultsKey"];

  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[EDWidgetUpdateController numberOfUpdates](self, "numberOfUpdates")}];
  [v5 setObject:v4 forKey:@"kNumberOfWidgetUpdatesDefaultsKey"];
}

void __57__EDWidgetUpdateController__hasUserConfiguredMailWidget___block_invoke_2_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Failed to get widget configuration: %{public}@", buf, 0xCu);
}

- (void)_refreshTimelinesWithReason:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_ERROR, "Update timelines failed: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)persistenceDidChangeFlags:(void *)a1 messages:(uint8_t *)buf generationWindow:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1C61EF000, log, OS_LOG_TYPE_DEBUG, "Persistence did change flag which is not relevant: %{public}@", buf, 0xCu);
}

@end