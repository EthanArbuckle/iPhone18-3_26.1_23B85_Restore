@interface MTWidgetUtilities
+ (id)reloadAlarmWidgetTimeline;
+ (id)timeZonesForCurrentClockWidgets;
@end

@implementation MTWidgetUtilities

+ (id)timeZonesForCurrentClockWidgets
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v3 = getCHSWidgetConfigurationReaderClass_softClass;
  v16 = getCHSWidgetConfigurationReaderClass_softClass;
  if (!getCHSWidgetConfigurationReaderClass_softClass)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __getCHSWidgetConfigurationReaderClass_block_invoke;
    v12[3] = &unk_1E7B0C600;
    v12[4] = &v13;
    __getCHSWidgetConfigurationReaderClass_block_invoke(v12);
    v3 = v14[3];
  }

  v4 = v3;
  _Block_object_dispose(&v13, 8);
  v5 = objc_alloc_init(v3);
  v6 = objc_opt_new();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__MTWidgetUtilities_timeZonesForCurrentClockWidgets__block_invoke;
  v9[3] = &unk_1E7B0C7E8;
  selfCopy = self;
  v7 = v6;
  v10 = v7;
  [v5 allConfiguredWidgetsWithCompletion:v9];

  return v7;
}

void __52__MTWidgetUtilities_timeZonesForCurrentClockWidgets__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v62 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    obj = v5;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v44 = [v5 countByEnumeratingWithState:&v52 objects:v61 count:16];
    v8 = 0;
    if (!v44)
    {
      goto LABEL_33;
    }

    v43 = *v53;
    while (1)
    {
      v9 = 0;
      do
      {
        if (*v53 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v45 = v9;
        v10 = [*(*(&v52 + 1) + 8 * v9) widgetConfigurations];
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v46 = v10;
        v11 = [v10 countByEnumeratingWithState:&v48 objects:v60 count:16];
        if (v11)
        {
          v12 = v11;
          v47 = *v49;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v49 != v47)
              {
                objc_enumerationMutation(v46);
              }

              v14 = *(*(&v48 + 1) + 8 * i);
              v15 = [v14 widget];
              v16 = [v15 intent];

              if (v16)
              {
                v17 = a1;
                v18 = [v14 widget];
                v19 = [v18 intent];
                v20 = [v19 _className];
                v21 = objc_opt_class();
                v22 = NSStringFromClass(v21);
                v23 = [v20 isEqualToString:v22];

                if (v23)
                {
                  v24 = MTLogForCategory(8);
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
                  {
                    a1 = v17;
                    v25 = *(v17 + 40);
                    *buf = 138543362;
                    v57 = v25;
                    v26 = v24;
                    v27 = "%{public}@ read widget intent ClocksIntent";
                    goto LABEL_22;
                  }

                  a1 = v17;
                  goto LABEL_24;
                }

                v28 = [v14 widget];
                v29 = [v28 intent];
                v30 = [v29 _className];
                v31 = objc_opt_class();
                v32 = NSStringFromClass(v31);
                v33 = [v30 isEqualToString:v32];

                if (v33)
                {
                  v24 = MTLogForCategory(8);
                  a1 = v17;
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
                  {
                    v34 = *(v17 + 40);
                    *buf = 138543362;
                    v57 = v34;
                    v26 = v24;
                    v27 = "%{public}@ read widget intent ClocksSingleIntent";
LABEL_22:
                    _os_log_impl(&dword_1B1F9F000, v26, OS_LOG_TYPE_INFO, v27, buf, 0xCu);
                  }

LABEL_24:

                  v35 = [v14 widget];
                  v36 = [v35 intent];
                  v37 = [v36 valueForKey:@"cities"];

                  v38 = [*(a1 + 40) timeZoneFromCities:v37];

                  v8 = v38;
                }

                else
                {
                  a1 = v17;
                }

                v39 = MTLogForCategory(8);
                if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
                {
                  v40 = *(a1 + 40);
                  *buf = 138543618;
                  v57 = v40;
                  v58 = 2114;
                  v59 = v8;
                  _os_log_impl(&dword_1B1F9F000, v39, OS_LOG_TYPE_INFO, "%{public}@ read clock widget timezones: %{public}@", buf, 0x16u);
                }

                continue;
              }
            }

            v12 = [v46 countByEnumeratingWithState:&v48 objects:v60 count:16];
          }

          while (v12);
        }

        v9 = v45 + 1;
      }

      while (v45 + 1 != v44);
      v44 = [obj countByEnumeratingWithState:&v52 objects:v61 count:16];
      if (!v44)
      {
LABEL_33:
        [*(a1 + 32) finishWithResult:v8];

        v6 = 0;
        v5 = obj;
        goto LABEL_34;
      }
    }
  }

  v7 = MTLogForCategory(8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __52__MTWidgetUtilities_timeZonesForCurrentClockWidgets__block_invoke_cold_1(a1, v6, v7);
  }

  [*(a1 + 32) finishWithError:v6];
LABEL_34:

  v41 = *MEMORY[0x1E69E9840];
}

+ (id)reloadAlarmWidgetTimeline
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = @"com.apple.mobiletimer.WorldClockWidget";
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ reloading widget timeline for %{bundleIdentifier}@", buf, 0x16u);
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v4 = getCHSTimelineControllerClass_softClass;
  v14 = getCHSTimelineControllerClass_softClass;
  if (!getCHSTimelineControllerClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getCHSTimelineControllerClass_block_invoke;
    v16 = &unk_1E7B0C600;
    v17 = &v11;
    __getCHSTimelineControllerClass_block_invoke(buf);
    v4 = v12[3];
  }

  v5 = v4;
  _Block_object_dispose(&v11, 8);
  v6 = [v4 alloc];
  v7 = [v6 initWithExtensionBundleIdentifier:@"com.apple.mobiletimer.WorldClockWidget" kind:{@"com.apple.mobiletimer.alarm", v11}];
  v8 = [v7 reloadTimelineWithReason:@"alarm update"];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

void __52__MTWidgetUtilities_timeZonesForCurrentClockWidgets__block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_1B1F9F000, log, OS_LOG_TYPE_ERROR, "%{public}@ error reading into widgets config: %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end