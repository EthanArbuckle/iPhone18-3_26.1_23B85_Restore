@interface CalWidgetUtils
+ (void)_invalidateRelevanceForWidgetKinds:(id)kinds;
+ (void)_reloadTimelinesForWidgetKinds:(id)kinds reason:(id)reason;
+ (void)refreshDateWidgets;
+ (void)refreshEventWidgets;
@end

@implementation CalWidgetUtils

+ (void)refreshDateWidgets
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__CalWidgetUtils_refreshDateWidgets__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (refreshDateWidgets_onceToken != -1)
  {
    dispatch_once(&refreshDateWidgets_onceToken, block);
  }

  [refreshDateWidgets_refreshQueue executeBlock];
}

void __36__CalWidgetUtils_refreshDateWidgets__block_invoke(uint64_t a1)
{
  v2 = refreshDateWidgets_timelineWidgetKinds;
  refreshDateWidgets_timelineWidgetKinds = &unk_1F37B0538;

  v3 = [CalLimitingQueue alloc];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__CalWidgetUtils_refreshDateWidgets__block_invoke_2;
  v6[3] = &__block_descriptor_40_e5_v8__0l;
  v6[4] = *(a1 + 32);
  v4 = [(CalLimitingQueue *)v3 initWithQueue:0 andBlock:v6];
  v5 = refreshDateWidgets_refreshQueue;
  refreshDateWidgets_refreshQueue = v4;
}

+ (void)refreshEventWidgets
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__CalWidgetUtils_refreshEventWidgets__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (refreshEventWidgets_onceToken != -1)
  {
    dispatch_once(&refreshEventWidgets_onceToken, block);
  }

  [refreshEventWidgets_refreshQueue executeBlock];
}

void __37__CalWidgetUtils_refreshEventWidgets__block_invoke(uint64_t a1)
{
  v2 = refreshEventWidgets_timelineWidgetKinds;
  refreshEventWidgets_timelineWidgetKinds = &unk_1F37B0550;

  v3 = refreshEventWidgets_relevanceWidgetKinds;
  refreshEventWidgets_relevanceWidgetKinds = MEMORY[0x1E695E0F0];

  v4 = [CalLimitingQueue alloc];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__CalWidgetUtils_refreshEventWidgets__block_invoke_2;
  v7[3] = &__block_descriptor_40_e5_v8__0l;
  v7[4] = *(a1 + 32);
  v5 = [(CalLimitingQueue *)v4 initWithQueue:0 andBlock:v7];
  v6 = refreshEventWidgets_refreshQueue;
  refreshEventWidgets_refreshQueue = v5;
}

uint64_t __37__CalWidgetUtils_refreshEventWidgets__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _reloadTimelinesForWidgetKinds:refreshEventWidgets_timelineWidgetKinds reason:&stru_1F379FFA8];
  v2 = *(a1 + 32);
  v3 = refreshEventWidgets_relevanceWidgetKinds;

  return [v2 _invalidateRelevanceForWidgetKinds:v3];
}

+ (void)_reloadTimelinesForWidgetKinds:(id)kinds reason:(id)reason
{
  v33 = *MEMORY[0x1E69E9840];
  kindsCopy = kinds;
  reasonCopy = reason;
  _widgetBundleIdentifier = [self _widgetBundleIdentifier];
  if (ChronoServicesLibraryCore())
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x2050000000;
    v7 = getCHSTimelineControllerClass_softClass;
    v28 = getCHSTimelineControllerClass_softClass;
    if (!getCHSTimelineControllerClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getCHSTimelineControllerClass_block_invoke;
      v31 = &unk_1E7EC65D0;
      v32 = &v25;
      __getCHSTimelineControllerClass_block_invoke(buf);
      v7 = v26[3];
    }

    v8 = v7;
    _Block_object_dispose(&v25, 8);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = kindsCopy;
    v9 = [obj countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v9)
    {
      v10 = *v22;
      do
      {
        v11 = 0;
        do
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v21 + 1) + 8 * v11);
          v13 = [[v7 alloc] initWithExtensionBundleIdentifier:_widgetBundleIdentifier kind:v12];
          v14 = [v13 reloadTimelineWithReason:reasonCopy];
          v15 = +[CalFoundationLogSubsystem defaultCategory];
          v16 = v15;
          if (v14)
          {
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              *&buf[4] = v12;
              *&buf[12] = 2112;
              *&buf[14] = v14;
              _os_log_error_impl(&dword_1B990D000, v16, OS_LOG_TYPE_ERROR, "Error while trying to reload widget with kind %@: %@", buf, 0x16u);
            }
          }

          else if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            *&buf[4] = v12;
            _os_log_debug_impl(&dword_1B990D000, v16, OS_LOG_TYPE_DEBUG, "Successfully reload widget with kind %@", buf, 0xCu);
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [obj countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v9);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

+ (void)_invalidateRelevanceForWidgetKinds:(id)kinds
{
  v24 = *MEMORY[0x1E69E9840];
  kindsCopy = kinds;
  v4 = @"com.apple.mobilecal";
  if (ChronoServicesLibraryCore())
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2050000000;
    v5 = getCHSWidgetServiceClass_softClass;
    v22 = getCHSWidgetServiceClass_softClass;
    if (!getCHSWidgetServiceClass_softClass)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __getCHSWidgetServiceClass_block_invoke;
      v18[3] = &unk_1E7EC65D0;
      v18[4] = &v19;
      __getCHSWidgetServiceClass_block_invoke(v18);
      v5 = v20[3];
    }

    v6 = v5;
    _Block_object_dispose(&v19, 8);
    sharedWidgetService = [v5 sharedWidgetService];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = kindsCopy;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v23 count:16];
    if (v9)
    {
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v14 + 1) + 8 * i);
          [sharedWidgetService invalidateRelevancesOfKind:? inBundle:? completion:?];
        }

        v9 = [v8 countByEnumeratingWithState:&v14 objects:v23 count:16];
      }

      while (v9);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __53__CalWidgetUtils__invalidateRelevanceForWidgetKinds___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[CalFoundationLogSubsystem defaultCategory];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __53__CalWidgetUtils__invalidateRelevanceForWidgetKinds___block_invoke_cold_1(a1, v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __53__CalWidgetUtils__invalidateRelevanceForWidgetKinds___block_invoke_cold_2(a1, v5);
  }
}

void __53__CalWidgetUtils__invalidateRelevanceForWidgetKinds___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_1B990D000, log, OS_LOG_TYPE_ERROR, "Error while trying to invalidate widget relevances with kind %@: %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void __53__CalWidgetUtils__invalidateRelevanceForWidgetKinds___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_1B990D000, a2, OS_LOG_TYPE_DEBUG, "Successfully invalidate widget relevances with kind %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end