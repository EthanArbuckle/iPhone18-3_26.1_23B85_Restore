@interface _DASWidgetRefreshScheduler
+ (id)sharedScheduler;
- (_DASWidgetRefreshScheduler)init;
- (id)createRefreshActivityForWidgetBudgetID:(id)d containingAppID:(id)iD refreshAfter:(id)after refreshBefore:(id)before widgetInfo:(id)info refreshHandler:(id)handler;
- (id)createRefreshActivityWithRateLimitConfigurationName:(id)name forWidgetBudgetID:(id)d withRemoteDeviceID:(id)iD containingAppID:(id)appID refreshAfter:(id)after refreshBefore:(id)before widgetInfo:(id)info refreshHandler:(id)self0;
- (id)createRefreshActivityWithWidgetParameters:(id)parameters;
- (id)createRefreshActivityWithWidgetParameters:(id)parameters refreshHandler:(id)handler;
- (id)createRefreshActivityWithWidgetParameters:(id)parameters withRefreshHandler:(id)handler;
- (id)decrementBudgetForWidgetID:(id)d by:(double)by;
- (id)sanitizeWidgetViews:(id)views;
- (void)createRateLimitConfigurationWithName:(id)name rateLimits:(id)limits;
- (void)recordWidgetRefreshes:(id)refreshes;
- (void)recordWidgetViews:(id)views;
- (void)setBudget:(id)budget;
- (void)setOverridesForWidgetBudgetIDs:(id)ds;
- (void)setSystemAddedWidgetBudgetIDs:(id)ds;
- (void)submitRefreshActivity:(id)activity;
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

    userContext = [MEMORY[0x1E6997A60] userContext];
    context = v2->_context;
    v2->_context = userContext;

    v13 = [MEMORY[0x1E6997A78] keyPathWithKey:@"/dasd/widgetOverride"];
    widgetOverrideKeypath = v2->_widgetOverrideKeypath;
    v2->_widgetOverrideKeypath = v13;

    v2->_lastWidgetViewLock._os_unfair_lock_opaque = 0;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    lastWidgetViewCache = v2->_lastWidgetViewCache;
    v2->_lastWidgetViewCache = dictionary;
  }

  return v2;
}

- (id)sanitizeWidgetViews:(id)views
{
  v62 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DF70];
  viewsCopy = views;
  array = [v4 array];
  context = objc_autoreleasePoolPush();
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v7 = [viewsCopy sortedArrayUsingComparator:&__block_literal_global_243];

  selfCopy = self;
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
        budgetID = [v9 budgetID];
        if (budgetID)
        {
          v11 = dictionary;
          array2 = [dictionary objectForKeyedSubscript:budgetID];
          if (!array2)
          {
            array2 = [MEMORY[0x1E695DF70] array];
          }

          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v13 = array2;
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
                startDate = [v9 startDate];
                endDate = [v18 endDate];
                [startDate timeIntervalSinceDate:endDate];
                v22 = v21;

                if (v22 < 5.0)
                {
                  log = selfCopy->_log;
                  v23 = v13;
                  dictionary = v11;
                  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
                  {
                    v32 = log;
                    budgetID2 = [v9 budgetID];
                    startDate2 = [v9 startDate];
                    *buf = 138412546;
                    v57 = budgetID2;
                    v58 = 2112;
                    v59 = startDate2;
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

          v23 = [(NSMutableDictionary *)selfCopy->_lastWidgetViewCache objectForKeyedSubscript:budgetID];
          if (v23 && ([v9 startDate], v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "timeIntervalSinceDate:", v23), v26 = v25, v24, v26 < 5.0))
          {
            v27 = selfCopy->_log;
            dictionary = v11;
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              v28 = v27;
              budgetID3 = [v9 budgetID];
              startDate3 = [v9 startDate];
              *buf = 138412546;
              v57 = budgetID3;
              v58 = 2112;
              v59 = startDate3;
              _os_log_debug_impl(&dword_1B6E2F000, v28, OS_LOG_TYPE_DEBUG, "Coalescing view for %@ at %@ (Cache)", buf, 0x16u);
            }
          }

          else
          {
            endDate2 = [v9 endDate];
            [(NSMutableDictionary *)selfCopy->_lastWidgetViewCache setObject:endDate2 forKeyedSubscript:budgetID];

            [v13 addObject:v9];
            dictionary = v11;
          }

LABEL_24:

          [dictionary setObject:v13 forKeyedSubscript:budgetID];
        }
      }

      v45 = [obj countByEnumeratingWithState:&v52 objects:v61 count:16];
    }

    while (v45);
  }

  os_unfair_lock_unlock(&selfCopy->_lastWidgetViewLock);
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __50___DASWidgetRefreshScheduler_sanitizeWidgetViews___block_invoke_244;
  v46[3] = &unk_1E7C8F2C8;
  v36 = array;
  v47 = v36;
  [dictionary enumerateKeysAndObjectsUsingBlock:v46];

  objc_autoreleasePoolPop(context);
  v37 = [v36 copy];

  v38 = *MEMORY[0x1E69E9840];

  return v37;
}

- (void)recordWidgetViews:(id)views
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = [(_DASWidgetRefreshScheduler *)self sanitizeWidgetViews:views];
  v4 = BiomeLibrary();
  widgets = [v4 Widgets];
  viewed = [widgets Viewed];

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
        budgetID = [v7 budgetID];

        if (budgetID)
        {
          v9 = [(_DASWidgetRefreshScheduler *)self log];
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            [(_DASWidgetRefreshScheduler *)v47 recordWidgetViews:v7, &v48, v9];
          }

          v10 = objc_alloc(MEMORY[0x1E698F078]);
          budgetID2 = [v7 budgetID];
          endDate = [v7 endDate];
          extensionBundleID = [v7 extensionBundleID];
          v12 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v7, "inStack")}];
          v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v7, "pageID")}];
          startDate = [v7 startDate];
          v15 = MEMORY[0x1E696AD98];
          [v7 timeUntilContentExpiration];
          v17 = [v15 numberWithDouble:round(v16)];
          viewID = [v7 viewID];
          v19 = [v10 initWithBudgetID:budgetID2 bundleID:0 endDate:endDate extensionBundleID:extensionBundleID inStack:v12 pageID:v13 startDate:startDate timeUntilExpiration:v17 viewID:viewID];

          source = [viewed source];
          [source sendEvent:v19];

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
          budgetID3 = [v7 budgetID];
          v29 = [v27 stringWithFormat:@"%lul", objc_msgSend(budgetID3, "hash")];
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

- (void)recordWidgetRefreshes:(id)refreshes
{
  v44 = *MEMORY[0x1E69E9840];
  refreshesCopy = refreshes;
  v4 = BiomeLibrary();
  widgets = [v4 Widgets];
  refresh = [widgets Refresh];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = refreshesCopy;
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
        budgetID = [v9 budgetID];

        if (budgetID)
        {
          v11 = objc_alloc(MEMORY[0x1E698F070]);
          budgetID2 = [v9 budgetID];
          extensionBundleID = [v9 extensionBundleID];
          v14 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v9, "isDASInitiated")}];
          refreshDate = [v9 refreshDate];
          refreshReason = [v9 refreshReason];
          v17 = [v11 initWithBudgetID:budgetID2 extensionBundleID:extensionBundleID isDASInitiated:v14 refreshDate:refreshDate refreshReason:refreshReason];

          source = [refresh source];
          [source sendEvent:v17];

          v19 = @"refreshed_notDAS";
          if ([v9 isDASInitiated])
          {
            context = [(_DASWidgetRefreshScheduler *)self context];
            v21 = [context objectForKeyedSubscript:self->_widgetOverrideKeypath];

            budgetID3 = [v9 budgetID];
            v19 = @"refreshed_DAS_override";
            if (([v21 containsObject:budgetID3] & 1) == 0)
            {
              context2 = [(_DASWidgetRefreshScheduler *)self context];
              keyPathForPluginStatus = [MEMORY[0x1E6997A68] keyPathForPluginStatus];
              v25 = [context2 objectForKeyedSubscript:keyPathForPluginStatus];
              bOOLValue = [v25 BOOLValue];

              if (bOOLValue)
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
          budgetID4 = [v9 budgetID];
          v29 = [v27 stringWithFormat:@"%llu", objc_msgSend(budgetID4, "hash")];
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

- (void)setBudget:(id)budget
{
  budgetCopy = budget;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40___DASWidgetRefreshScheduler_setBudget___block_invoke;
  v7[3] = &unk_1E7C8F1A0;
  v8 = budgetCopy;
  selfCopy = self;
  v6 = budgetCopy;
  dispatch_async(queue, v7);
}

- (void)setOverridesForWidgetBudgetIDs:(id)ds
{
  dsCopy = ds;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61___DASWidgetRefreshScheduler_setOverridesForWidgetBudgetIDs___block_invoke;
  v7[3] = &unk_1E7C8F1A0;
  v7[4] = self;
  v8 = dsCopy;
  v6 = dsCopy;
  dispatch_async(queue, v7);
}

- (id)decrementBudgetForWidgetID:(id)d by:(double)by
{
  v40 = *MEMORY[0x1E69E9840];
  dCopy = d;
  [(_DASScheduler *)self->_dasScheduler allBudgets];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = v30 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v8)
  {
    v9 = v8;
    selfCopy = self;
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

        if ([v13 containsString:dCopy])
        {
          v17 = objc_alloc_init(_DASWigetBudgetDecrementRequestResult);
          [(_DASWigetBudgetDecrementRequestResult *)v17 setWidgetBudgetID:dCopy];
          if (v16 <= 0.0)
          {
            v21 = MEMORY[0x1E696AD98];
            v22 = v16;
          }

          else
          {
            [(_DASScheduler *)selfCopy->_dasScheduler decrementBy:v13 forBudgetWithName:by];
            v18 = [(_DASWidgetRefreshScheduler *)selfCopy log];
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
              byCopy = by;
              _os_log_impl(&dword_1B6E2F000, v18, OS_LOG_TYPE_DEFAULT, "Decremented budget %@ with capacity %@ and balance %@ by %f", buf, 0x2Au);
            }

            v21 = MEMORY[0x1E696AD98];
            v22 = v16 - by;
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

- (void)setSystemAddedWidgetBudgetIDs:(id)ds
{
  dsCopy = ds;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60___DASWidgetRefreshScheduler_setSystemAddedWidgetBudgetIDs___block_invoke;
  v7[3] = &unk_1E7C8F1A0;
  v7[4] = self;
  v8 = dsCopy;
  v6 = dsCopy;
  dispatch_async(queue, v7);
}

- (id)createRefreshActivityForWidgetBudgetID:(id)d containingAppID:(id)iD refreshAfter:(id)after refreshBefore:(id)before widgetInfo:(id)info refreshHandler:(id)handler
{
  v31[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  beforeCopy = before;
  afterCopy = after;
  iDCopy = iD;
  v18 = [afterCopy dateByAddingTimeInterval:900.0];
  v19 = [beforeCopy laterDate:v18];

  dCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.widget.%@", dCopy];
  v21 = [_DASActivity activityWithName:dCopy priority:_DASSchedulingPriorityUtility duration:_DASActivityDurationShort startingAfter:afterCopy startingBefore:v19];

  [v21 setWidgetBudgetID:dCopy];
  v31[0] = iDCopy;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  [v21 setRelatedApplications:v22];

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __138___DASWidgetRefreshScheduler_createRefreshActivityForWidgetBudgetID_containingAppID_refreshAfter_refreshBefore_widgetInfo_refreshHandler___block_invoke;
  v28[3] = &unk_1E7C8F318;
  v29 = dCopy;
  v30 = handlerCopy;
  v28[4] = self;
  v23 = dCopy;
  v24 = handlerCopy;
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

- (id)createRefreshActivityWithRateLimitConfigurationName:(id)name forWidgetBudgetID:(id)d withRemoteDeviceID:(id)iD containingAppID:(id)appID refreshAfter:(id)after refreshBefore:(id)before widgetInfo:(id)info refreshHandler:(id)self0
{
  v43[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  dCopy = d;
  iDCopy = iD;
  appIDCopy = appID;
  afterCopy = after;
  beforeCopy = before;
  handlerCopy = handler;
  v23 = handlerCopy;
  if (nameCopy || dCopy || iDCopy)
  {
    v36 = handlerCopy;
    v26 = appIDCopy;
    v27 = [afterCopy dateByAddingTimeInterval:900.0];
    v37 = beforeCopy;
    v24 = [beforeCopy laterDate:v27];

    v28 = [MEMORY[0x1E696AD60] stringWithString:@"com.apple."];
    v29 = v28;
    if (iDCopy)
    {
      v30 = @"remotewidget";
    }

    else
    {
      v30 = @"widget";
    }

    [v28 appendString:v30];
    if (dCopy)
    {
      dCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@".%@", dCopy];
      [v29 appendString:dCopy];
    }

    v32 = [MEMORY[0x1E696AEC0] stringWithString:v29];
    v25 = [_DASActivity activityWithName:v32 priority:_DASSchedulingPriorityUtility duration:_DASActivityDurationShort startingAfter:afterCopy startingBefore:v24];

    if (nameCopy)
    {
      [v25 setRateLimitConfigurationName:nameCopy];
    }

    if (dCopy)
    {
      [v25 setWidgetBudgetID:dCopy];
    }

    if (iDCopy)
    {
      [v25 setRemoteDevice:iDCopy];
      [v25 setTargetDevice:3];
    }

    v43[0] = v26;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:1];
    [v25 setRelatedApplications:v33];

    appIDCopy = v26;
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __188___DASWidgetRefreshScheduler_createRefreshActivityWithRateLimitConfigurationName_forWidgetBudgetID_withRemoteDeviceID_containingAppID_refreshAfter_refreshBefore_widgetInfo_refreshHandler___block_invoke;
    v39[3] = &unk_1E7C8F368;
    v39[4] = self;
    v40 = dCopy;
    v41 = nameCopy;
    v23 = v36;
    v42 = v36;
    [v25 setStartHandler:v39];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __188___DASWidgetRefreshScheduler_createRefreshActivityWithRateLimitConfigurationName_forWidgetBudgetID_withRemoteDeviceID_containingAppID_refreshAfter_refreshBefore_widgetInfo_refreshHandler___block_invoke_328;
    v38[3] = &unk_1E7C8F340;
    v38[4] = self;
    [v25 setSuspendHandler:v38];

    beforeCopy = v37;
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

- (id)createRefreshActivityWithWidgetParameters:(id)parameters
{
  v35[1] = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  widgetBudgetIdentifier = [parametersCopy widgetBudgetIdentifier];
  if (widgetBudgetIdentifier || ([parametersCopy remoteDeviceIdentifier], (widgetBudgetIdentifier = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_4:
    refreshBeforeDate = [parametersCopy refreshBeforeDate];
    refreshAfterDate = [parametersCopy refreshAfterDate];
    v8 = [refreshAfterDate dateByAddingTimeInterval:900.0];
    v9 = [refreshBeforeDate laterDate:v8];

    v10 = [MEMORY[0x1E696AD60] stringWithString:@"com.apple."];
    remoteDeviceIdentifier = [parametersCopy remoteDeviceIdentifier];

    if (remoteDeviceIdentifier)
    {
      v12 = @"remotewidget";
    }

    else
    {
      v12 = @"widget";
    }

    [v10 appendString:v12];
    ratelimitConfigurationName = [parametersCopy ratelimitConfigurationName];

    if (ratelimitConfigurationName)
    {
      [v10 appendString:@".ratelimited"];
    }

    widgetIdentifier = [parametersCopy widgetIdentifier];
    widgetBudgetIdentifier2 = [parametersCopy widgetBudgetIdentifier];

    if (widgetBudgetIdentifier2)
    {
      widgetBudgetIdentifier3 = [parametersCopy widgetBudgetIdentifier];

      widgetIdentifier = widgetBudgetIdentifier3;
    }

    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@".%@", widgetIdentifier];
    [v10 appendString:v17];

    v18 = [MEMORY[0x1E696AEC0] stringWithString:v10];
    v19 = _DASSchedulingPriorityUtility;
    v20 = _DASActivityDurationShort;
    refreshAfterDate2 = [parametersCopy refreshAfterDate];
    v22 = [_DASActivity activityWithName:v18 priority:v19 duration:v20 startingAfter:refreshAfterDate2 startingBefore:v9];

    [v22 setWidgetID:widgetIdentifier];
    ratelimitConfigurationName2 = [parametersCopy ratelimitConfigurationName];

    if (ratelimitConfigurationName2)
    {
      ratelimitConfigurationName3 = [parametersCopy ratelimitConfigurationName];
      [v22 setRateLimitConfigurationName:ratelimitConfigurationName3];
    }

    widgetBudgetIdentifier4 = [parametersCopy widgetBudgetIdentifier];

    if (widgetBudgetIdentifier4)
    {
      widgetBudgetIdentifier5 = [parametersCopy widgetBudgetIdentifier];
      [v22 setWidgetBudgetID:widgetBudgetIdentifier5];
    }

    remoteDeviceIdentifier2 = [parametersCopy remoteDeviceIdentifier];

    if (remoteDeviceIdentifier2)
    {
      remoteDeviceIdentifier3 = [parametersCopy remoteDeviceIdentifier];
      [v22 setRemoteDevice:remoteDeviceIdentifier3];
      [v22 setTargetDevice:3];
    }

    appIdentifier = [parametersCopy appIdentifier];
    v35[0] = appIdentifier;
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

  ratelimitConfigurationName4 = [parametersCopy ratelimitConfigurationName];

  if (ratelimitConfigurationName4)
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

- (id)createRefreshActivityWithWidgetParameters:(id)parameters refreshHandler:(id)handler
{
  parametersCopy = parameters;
  handlerCopy = handler;
  v8 = [(_DASWidgetRefreshScheduler *)self createRefreshActivityWithWidgetParameters:parametersCopy];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __87___DASWidgetRefreshScheduler_createRefreshActivityWithWidgetParameters_refreshHandler___block_invoke;
  v12[3] = &unk_1E7C8F318;
  v13 = parametersCopy;
  v14 = handlerCopy;
  v12[4] = self;
  v9 = parametersCopy;
  v10 = handlerCopy;
  [v8 setStartHandler:v12];

  return v8;
}

- (id)createRefreshActivityWithWidgetParameters:(id)parameters withRefreshHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [(_DASWidgetRefreshScheduler *)self createRefreshActivityWithWidgetParameters:parameters];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __91___DASWidgetRefreshScheduler_createRefreshActivityWithWidgetParameters_withRefreshHandler___block_invoke;
  v10[3] = &unk_1E7C8F390;
  v10[4] = self;
  v11 = handlerCopy;
  v8 = handlerCopy;
  [v7 setStartHandler:v10];

  return v7;
}

- (void)submitRefreshActivity:(id)activity
{
  activityCopy = activity;
  dasScheduler = [(_DASWidgetRefreshScheduler *)self dasScheduler];
  [dasScheduler submitActivity:activityCopy];
}

- (void)createRateLimitConfigurationWithName:(id)name rateLimits:(id)limits
{
  v6 = [_DASActivityRateLimitConfiguration rateLimitConfigurationWithName:name andLimits:limits];
  dasScheduler = [(_DASWidgetRefreshScheduler *)self dasScheduler];
  [dasScheduler submitRateLimitConfiguration:v6];
}

- (void)recordWidgetViews:(void *)a3 .cold.1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 budgetID];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&dword_1B6E2F000, a4, OS_LOG_TYPE_DEBUG, "Recording widget view: %@", a1, 0xCu);
}

@end