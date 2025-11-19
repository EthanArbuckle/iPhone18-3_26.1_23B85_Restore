@interface _DASWidgetRefreshScheduler
+ (id)sharedScheduler;
- (_DASWidgetRefreshScheduler)init;
- (id)createRefreshActivityForWidgetBudgetID:(id)a3 containingAppID:(id)a4 refreshAfter:(id)a5 refreshBefore:(id)a6 widgetInfo:(id)a7 refreshHandler:(id)a8;
- (id)createRefreshActivityWithRateLimitConfigurationName:(id)a3 forWidgetBudgetID:(id)a4 withRemoteDeviceID:(id)a5 containingAppID:(id)a6 refreshAfter:(id)a7 refreshBefore:(id)a8 widgetInfo:(id)a9 refreshHandler:(id)a10;
- (id)createRefreshActivityWithWidgetParameters:(id)a3;
- (id)createRefreshActivityWithWidgetParameters:(id)a3 refreshHandler:(id)a4;
- (id)createRefreshActivityWithWidgetParameters:(id)a3 withRefreshHandler:(id)a4;
- (id)decrementBudgetForWidgetID:(id)a3 by:(double)a4;
- (id)sanitizeWidgetViews:(id)a3;
- (void)createRateLimitConfigurationWithName:(id)a3 rateLimits:(id)a4;
- (void)recordWidgetRefreshes:(id)a3;
- (void)recordWidgetViews:(id)a3;
- (void)setBudget:(id)a3;
- (void)setOverridesForWidgetBudgetIDs:(id)a3;
- (void)setSystemAddedWidgetBudgetIDs:(id)a3;
- (void)submitRefreshActivity:(id)a3;
@end

@implementation _DASWidgetRefreshScheduler

+ (id)sharedScheduler
{
  if (sharedScheduler_onceToken != -1)
  {
    +[_DASWidgetRefreshScheduler sharedScheduler];
  }

  v3 = sharedScheduler_widgetScheduler;

  return v3;
}

- (_DASWidgetRefreshScheduler)init
{
  v18.receiver = self;
  v18.super_class = _DASWidgetRefreshScheduler;
  v2 = [(_DASWidgetRefreshScheduler *)&v18 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);
    v5 = dispatch_queue_create("com.apple.das.widgetRefreshScheduler", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = os_log_create("com.apple.duetactivityscheduler", "widgetRefreshScheduler");
    log = v2->_log;
    v2->_log = v7;

    v9 = +[_DASScheduler sharedScheduler];
    dasScheduler = v2->_dasScheduler;
    v2->_dasScheduler = v9;

    v11 = [MEMORY[0x1E6997A60] userContext];
    context = v2->_context;
    v2->_context = v11;

    v13 = [MEMORY[0x1E6997A78] keyPathWithKey:@"/dasd/widgetOverride"];
    widgetOverrideKeypath = v2->_widgetOverrideKeypath;
    v2->_widgetOverrideKeypath = v13;

    v2->_lastWidgetViewLock._os_unfair_lock_opaque = 0;
    v15 = [MEMORY[0x1E695DF90] dictionary];
    lastWidgetViewCache = v2->_lastWidgetViewCache;
    v2->_lastWidgetViewCache = v15;
  }

  return v2;
}

- (id)sanitizeWidgetViews:(id)a3
{
  v62 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v40 = [v4 array];
  context = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x1E695DF90] dictionary];
  v7 = [v5 sortedArrayUsingComparator:&__block_literal_global_243];

  v43 = self;
  os_unfair_lock_lock(&self->_lastWidgetViewLock);
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v7;
  v45 = [obj countByEnumeratingWithState:&v52 objects:v61 count:16];
  if (v45)
  {
    v44 = *v53;
    do
    {
      for (i = 0; i != v45; ++i)
      {
        if (*v53 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v52 + 1) + 8 * i);
        v10 = [v9 budgetID];
        if (v10)
        {
          v11 = v6;
          v12 = [v6 objectForKeyedSubscript:v10];
          if (!v12)
          {
            v12 = [MEMORY[0x1E695DF70] array];
          }

          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v13 = v12;
          v14 = [v13 countByEnumeratingWithState:&v48 objects:v60 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v49;
            while (2)
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v49 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v48 + 1) + 8 * j);
                v19 = [v9 startDate];
                v20 = [v18 endDate];
                [v19 timeIntervalSinceDate:v20];
                v22 = v21;

                if (v22 < 5.0)
                {
                  log = v43->_log;
                  v23 = v13;
                  v6 = v11;
                  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
                  {
                    v32 = log;
                    v33 = [v9 budgetID];
                    v34 = [v9 startDate];
                    *buf = 138412546;
                    v57 = v33;
                    v58 = 2112;
                    v59 = v34;
                    _os_log_debug_impl(&dword_1B6E2F000, v32, OS_LOG_TYPE_DEBUG, "Coalescing view for %@ at %@", buf, 0x16u);

                    v23 = v13;
                  }

                  goto LABEL_24;
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v48 objects:v60 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }
          }

          v23 = [(NSMutableDictionary *)v43->_lastWidgetViewCache objectForKeyedSubscript:v10];
          if (v23 && ([v9 startDate], v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "timeIntervalSinceDate:", v23), v26 = v25, v24, v26 < 5.0))
          {
            v27 = v43->_log;
            v6 = v11;
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              v28 = v27;
              v29 = [v9 budgetID];
              v30 = [v9 startDate];
              *buf = 138412546;
              v57 = v29;
              v58 = 2112;
              v59 = v30;
              _os_log_debug_impl(&dword_1B6E2F000, v28, OS_LOG_TYPE_DEBUG, "Coalescing view for %@ at %@ (Cache)", buf, 0x16u);
            }
          }

          else
          {
            v35 = [v9 endDate];
            [(NSMutableDictionary *)v43->_lastWidgetViewCache setObject:v35 forKeyedSubscript:v10];

            [v13 addObject:v9];
            v6 = v11;
          }

LABEL_24:

          [v6 setObject:v13 forKeyedSubscript:v10];
        }
      }

      v45 = [obj countByEnumeratingWithState:&v52 objects:v61 count:16];
    }

    while (v45);
  }

  os_unfair_lock_unlock(&v43->_lastWidgetViewLock);
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __50___DASWidgetRefreshScheduler_sanitizeWidgetViews___block_invoke_244;
  v46[3] = &unk_1E7C8F2C8;
  v36 = v40;
  v47 = v36;
  [v6 enumerateKeysAndObjectsUsingBlock:v46];

  objc_autoreleasePoolPop(context);
  v37 = [v36 copy];

  v38 = *MEMORY[0x1E69E9840];

  return v37;
}

- (void)recordWidgetViews:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = [(_DASWidgetRefreshScheduler *)self sanitizeWidgetViews:a3];
  v4 = BiomeLibrary();
  v5 = [v4 Widgets];
  v36 = [v5 Viewed];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v3;
  v38 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v38)
  {
    v37 = *v42;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v42 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v41 + 1) + 8 * i);
        v8 = [v7 budgetID];

        if (v8)
        {
          v9 = [(_DASWidgetRefreshScheduler *)self log];
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            [(_DASWidgetRefreshScheduler *)v47 recordWidgetViews:v7, &v48, v9];
          }

          v10 = objc_alloc(MEMORY[0x1E698F078]);
          v39 = [v7 budgetID];
          v11 = [v7 endDate];
          v40 = [v7 extensionBundleID];
          v12 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v7, "inStack")}];
          v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v7, "pageID")}];
          v14 = [v7 startDate];
          v15 = MEMORY[0x1E696AD98];
          [v7 timeUntilContentExpiration];
          v17 = [v15 numberWithDouble:round(v16)];
          v18 = [v7 viewID];
          v19 = [v10 initWithBudgetID:v39 bundleID:0 endDate:v11 extensionBundleID:v40 inStack:v12 pageID:v13 startDate:v14 timeUntilExpiration:v17 viewID:v18];

          v20 = [v36 source];
          [v20 sendEvent:v19];

          [v7 timeUntilContentExpiration];
          v22 = @"viewed_fresh";
          if ((llround(v21) & 0x80000000) != 0)
          {
            v22 = @"viewed_stale";
          }

          v46[0] = v22;
          v45[0] = @"metricKey";
          v45[1] = @"metricValue";
          v23 = MEMORY[0x1E696AD98];
          [v7 timeUntilContentExpiration];
          LODWORD(v25) = llround(v24);
          v26 = [v23 numberWithInt:v25];
          v46[1] = v26;
          v45[2] = @"widgetID";
          v27 = MEMORY[0x1E696AEC0];
          v28 = [v7 budgetID];
          v29 = [v27 stringWithFormat:@"%lul", objc_msgSend(v28, "hash")];
          v46[2] = v29;
          v45[3] = @"page";
          v30 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v7, "pageID")}];
          v46[3] = v30;
          v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:4];

          v32 = v31;
          AnalyticsSendEventLazy();
        }
      }

      v38 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v38);
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (void)recordWidgetRefreshes:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = BiomeLibrary();
  v5 = [v4 Widgets];
  v35 = [v5 Refresh];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v3;
  v6 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v6)
  {
    v7 = v6;
    v36 = *v38;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v38 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v37 + 1) + 8 * i);
        v10 = [v9 budgetID];

        if (v10)
        {
          v11 = objc_alloc(MEMORY[0x1E698F070]);
          v12 = [v9 budgetID];
          v13 = [v9 extensionBundleID];
          v14 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v9, "isDASInitiated")}];
          v15 = [v9 refreshDate];
          v16 = [v9 refreshReason];
          v17 = [v11 initWithBudgetID:v12 extensionBundleID:v13 isDASInitiated:v14 refreshDate:v15 refreshReason:v16];

          v18 = [v35 source];
          [v18 sendEvent:v17];

          v19 = @"refreshed_notDAS";
          if ([v9 isDASInitiated])
          {
            v20 = [(_DASWidgetRefreshScheduler *)self context];
            v21 = [v20 objectForKeyedSubscript:self->_widgetOverrideKeypath];

            v22 = [v9 budgetID];
            v19 = @"refreshed_DAS_override";
            if (([v21 containsObject:v22] & 1) == 0)
            {
              v23 = [(_DASWidgetRefreshScheduler *)self context];
              v24 = [MEMORY[0x1E6997A68] keyPathForPluginStatus];
              v25 = [v23 objectForKeyedSubscript:v24];
              v26 = [v25 BOOLValue];

              if (v26)
              {
                v19 = @"refreshed_DAS_pluggedIn";
              }

              else
              {
                v19 = @"refreshed_DAS";
              }
            }
          }

          v41[0] = @"metricKey";
          v41[1] = @"metricValue";
          v42[0] = v19;
          v42[1] = &unk_1F2ED4958;
          v41[2] = @"widgetID";
          v27 = MEMORY[0x1E696AEC0];
          v28 = [v9 budgetID];
          v29 = [v27 stringWithFormat:@"%llu", objc_msgSend(v28, "hash")];
          v41[3] = @"page";
          v42[2] = v29;
          v42[3] = &unk_1F2ED4970;
          v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:4];

          v31 = v30;
          AnalyticsSendEventLazy();
        }
      }

      v7 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v7);
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (void)setBudget:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40___DASWidgetRefreshScheduler_setBudget___block_invoke;
  v7[3] = &unk_1E7C8F1A0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)setOverridesForWidgetBudgetIDs:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61___DASWidgetRefreshScheduler_setOverridesForWidgetBudgetIDs___block_invoke;
  v7[3] = &unk_1E7C8F1A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (id)decrementBudgetForWidgetID:(id)a3 by:(double)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [(_DASScheduler *)self->_dasScheduler allBudgets];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = v30 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v8)
  {
    v9 = v8;
    v26 = self;
    v10 = *v28;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        v13 = [v12 objectForKeyedSubscript:@"name"];
        v14 = [v12 objectForKeyedSubscript:@"balance"];
        [v14 doubleValue];
        v16 = v15;

        if ([v13 containsString:v6])
        {
          v17 = objc_alloc_init(_DASWigetBudgetDecrementRequestResult);
          [(_DASWigetBudgetDecrementRequestResult *)v17 setWidgetBudgetID:v6];
          if (v16 <= 0.0)
          {
            v21 = MEMORY[0x1E696AD98];
            v22 = v16;
          }

          else
          {
            [(_DASScheduler *)v26->_dasScheduler decrementBy:v13 forBudgetWithName:a4];
            v18 = [(_DASWidgetRefreshScheduler *)v26 log];
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v19 = [v12 objectForKeyedSubscript:@"capacity"];
              v20 = [v12 objectForKeyedSubscript:@"balance"];
              *buf = 138413058;
              v32 = v13;
              v33 = 2112;
              v34 = v19;
              v35 = 2112;
              v36 = v20;
              v37 = 2048;
              v38 = a4;
              _os_log_impl(&dword_1B6E2F000, v18, OS_LOG_TYPE_DEFAULT, "Decremented budget %@ with capacity %@ and balance %@ by %f", buf, 0x2Au);
            }

            v21 = MEMORY[0x1E696AD98];
            v22 = v16 - a4;
          }

          v23 = [v21 numberWithDouble:v22];
          [(_DASWigetBudgetDecrementRequestResult *)v17 setBalance:v23];

          [(_DASWigetBudgetDecrementRequestResult *)v17 setSuccessful:v16 > 0.0];
          goto LABEL_16;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v27 objects:v39 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v17 = 0;
LABEL_16:

  v24 = *MEMORY[0x1E69E9840];

  return v17;
}

- (void)setSystemAddedWidgetBudgetIDs:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60___DASWidgetRefreshScheduler_setSystemAddedWidgetBudgetIDs___block_invoke;
  v7[3] = &unk_1E7C8F1A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (id)createRefreshActivityForWidgetBudgetID:(id)a3 containingAppID:(id)a4 refreshAfter:(id)a5 refreshBefore:(id)a6 widgetInfo:(id)a7 refreshHandler:(id)a8
{
  v31[1] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a8;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = [v16 dateByAddingTimeInterval:900.0];
  v19 = [v15 laterDate:v18];

  v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.widget.%@", v13];
  v21 = [_DASActivity activityWithName:v20 priority:_DASSchedulingPriorityUtility duration:_DASActivityDurationShort startingAfter:v16 startingBefore:v19];

  [v21 setWidgetBudgetID:v13];
  v31[0] = v17;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  [v21 setRelatedApplications:v22];

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __138___DASWidgetRefreshScheduler_createRefreshActivityForWidgetBudgetID_containingAppID_refreshAfter_refreshBefore_widgetInfo_refreshHandler___block_invoke;
  v28[3] = &unk_1E7C8F318;
  v29 = v13;
  v30 = v14;
  v28[4] = self;
  v23 = v13;
  v24 = v14;
  [v21 setStartHandler:v28];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __138___DASWidgetRefreshScheduler_createRefreshActivityForWidgetBudgetID_containingAppID_refreshAfter_refreshBefore_widgetInfo_refreshHandler___block_invoke_311;
  v27[3] = &unk_1E7C8F340;
  v27[4] = self;
  [v21 setSuspendHandler:v27];

  v25 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)createRefreshActivityWithRateLimitConfigurationName:(id)a3 forWidgetBudgetID:(id)a4 withRemoteDeviceID:(id)a5 containingAppID:(id)a6 refreshAfter:(id)a7 refreshBefore:(id)a8 widgetInfo:(id)a9 refreshHandler:(id)a10
{
  v43[1] = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a10;
  v23 = v22;
  if (v16 || v17 || v18)
  {
    v36 = v22;
    v26 = v19;
    v27 = [v20 dateByAddingTimeInterval:900.0];
    v37 = v21;
    v24 = [v21 laterDate:v27];

    v28 = [MEMORY[0x1E696AD60] stringWithString:@"com.apple."];
    v29 = v28;
    if (v18)
    {
      v30 = @"remotewidget";
    }

    else
    {
      v30 = @"widget";
    }

    [v28 appendString:v30];
    if (v17)
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@".%@", v17];
      [v29 appendString:v31];
    }

    v32 = [MEMORY[0x1E696AEC0] stringWithString:v29];
    v25 = [_DASActivity activityWithName:v32 priority:_DASSchedulingPriorityUtility duration:_DASActivityDurationShort startingAfter:v20 startingBefore:v24];

    if (v16)
    {
      [v25 setRateLimitConfigurationName:v16];
    }

    if (v17)
    {
      [v25 setWidgetBudgetID:v17];
    }

    if (v18)
    {
      [v25 setRemoteDevice:v18];
      [v25 setTargetDevice:3];
    }

    v43[0] = v26;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:1];
    [v25 setRelatedApplications:v33];

    v19 = v26;
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __188___DASWidgetRefreshScheduler_createRefreshActivityWithRateLimitConfigurationName_forWidgetBudgetID_withRemoteDeviceID_containingAppID_refreshAfter_refreshBefore_widgetInfo_refreshHandler___block_invoke;
    v39[3] = &unk_1E7C8F368;
    v39[4] = self;
    v40 = v17;
    v41 = v16;
    v23 = v36;
    v42 = v36;
    [v25 setStartHandler:v39];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __188___DASWidgetRefreshScheduler_createRefreshActivityWithRateLimitConfigurationName_forWidgetBudgetID_withRemoteDeviceID_containingAppID_refreshAfter_refreshBefore_widgetInfo_refreshHandler___block_invoke_328;
    v38[3] = &unk_1E7C8F340;
    v38[4] = self;
    [v25 setSuspendHandler:v38];

    v21 = v37;
  }

  else
  {
    v24 = [(_DASWidgetRefreshScheduler *)self log];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [_DASWidgetRefreshScheduler createRefreshActivityWithRateLimitConfigurationName:v24 forWidgetBudgetID:? withRemoteDeviceID:? containingAppID:? refreshAfter:? refreshBefore:? widgetInfo:? refreshHandler:?];
    }

    v25 = 0;
  }

  v34 = *MEMORY[0x1E69E9840];

  return v25;
}

- (id)createRefreshActivityWithWidgetParameters:(id)a3
{
  v35[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 widgetBudgetIdentifier];
  if (v5 || ([v4 remoteDeviceIdentifier], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_4:
    v6 = [v4 refreshBeforeDate];
    v7 = [v4 refreshAfterDate];
    v8 = [v7 dateByAddingTimeInterval:900.0];
    v9 = [v6 laterDate:v8];

    v10 = [MEMORY[0x1E696AD60] stringWithString:@"com.apple."];
    v11 = [v4 remoteDeviceIdentifier];

    if (v11)
    {
      v12 = @"remotewidget";
    }

    else
    {
      v12 = @"widget";
    }

    [v10 appendString:v12];
    v13 = [v4 ratelimitConfigurationName];

    if (v13)
    {
      [v10 appendString:@".ratelimited"];
    }

    v14 = [v4 widgetIdentifier];
    v15 = [v4 widgetBudgetIdentifier];

    if (v15)
    {
      v16 = [v4 widgetBudgetIdentifier];

      v14 = v16;
    }

    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@".%@", v14];
    [v10 appendString:v17];

    v18 = [MEMORY[0x1E696AEC0] stringWithString:v10];
    v19 = _DASSchedulingPriorityUtility;
    v20 = _DASActivityDurationShort;
    v21 = [v4 refreshAfterDate];
    v22 = [_DASActivity activityWithName:v18 priority:v19 duration:v20 startingAfter:v21 startingBefore:v9];

    [v22 setWidgetID:v14];
    v23 = [v4 ratelimitConfigurationName];

    if (v23)
    {
      v24 = [v4 ratelimitConfigurationName];
      [v22 setRateLimitConfigurationName:v24];
    }

    v25 = [v4 widgetBudgetIdentifier];

    if (v25)
    {
      v26 = [v4 widgetBudgetIdentifier];
      [v22 setWidgetBudgetID:v26];
    }

    v27 = [v4 remoteDeviceIdentifier];

    if (v27)
    {
      v28 = [v4 remoteDeviceIdentifier];
      [v22 setRemoteDevice:v28];
      [v22 setTargetDevice:3];
    }

    v29 = [v4 appIdentifier];
    v35[0] = v29;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
    [v22 setRelatedApplications:v30];

    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __72___DASWidgetRefreshScheduler_createRefreshActivityWithWidgetParameters___block_invoke;
    v34[3] = &unk_1E7C8F340;
    v34[4] = self;
    [v22 setSuspendHandler:v34];

    goto LABEL_18;
  }

  v33 = [v4 ratelimitConfigurationName];

  if (v33)
  {
    goto LABEL_4;
  }

  v9 = [(_DASWidgetRefreshScheduler *)self log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [_DASWidgetRefreshScheduler createRefreshActivityWithRateLimitConfigurationName:v9 forWidgetBudgetID:? withRemoteDeviceID:? containingAppID:? refreshAfter:? refreshBefore:? widgetInfo:? refreshHandler:?];
  }

  v22 = 0;
LABEL_18:

  v31 = *MEMORY[0x1E69E9840];

  return v22;
}

- (id)createRefreshActivityWithWidgetParameters:(id)a3 refreshHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_DASWidgetRefreshScheduler *)self createRefreshActivityWithWidgetParameters:v6];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __87___DASWidgetRefreshScheduler_createRefreshActivityWithWidgetParameters_refreshHandler___block_invoke;
  v12[3] = &unk_1E7C8F318;
  v13 = v6;
  v14 = v7;
  v12[4] = self;
  v9 = v6;
  v10 = v7;
  [v8 setStartHandler:v12];

  return v8;
}

- (id)createRefreshActivityWithWidgetParameters:(id)a3 withRefreshHandler:(id)a4
{
  v6 = a4;
  v7 = [(_DASWidgetRefreshScheduler *)self createRefreshActivityWithWidgetParameters:a3];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __91___DASWidgetRefreshScheduler_createRefreshActivityWithWidgetParameters_withRefreshHandler___block_invoke;
  v10[3] = &unk_1E7C8F390;
  v10[4] = self;
  v11 = v6;
  v8 = v6;
  [v7 setStartHandler:v10];

  return v7;
}

- (void)submitRefreshActivity:(id)a3
{
  v4 = a3;
  v5 = [(_DASWidgetRefreshScheduler *)self dasScheduler];
  [v5 submitActivity:v4];
}

- (void)createRateLimitConfigurationWithName:(id)a3 rateLimits:(id)a4
{
  v6 = [_DASActivityRateLimitConfiguration rateLimitConfigurationWithName:a3 andLimits:a4];
  v5 = [(_DASWidgetRefreshScheduler *)self dasScheduler];
  [v5 submitRateLimitConfiguration:v6];
}

- (void)recordWidgetViews:(void *)a3 .cold.1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 budgetID];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&dword_1B6E2F000, a4, OS_LOG_TYPE_DEBUG, "Recording widget view: %@", a1, 0xCu);
}

@end