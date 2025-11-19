@interface DASWidgetRefreshScheduler
@end

@implementation DASWidgetRefreshScheduler

uint64_t __45___DASWidgetRefreshScheduler_sharedScheduler__block_invoke()
{
  sharedScheduler_widgetScheduler = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __50___DASWidgetRefreshScheduler_sanitizeWidgetViews___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

void __40___DASWidgetRefreshScheduler_setBudget___block_invoke(uint64_t a1)
{
  v7 = [MEMORY[0x1E695DF90] dictionary];
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "dailyMaxBudget")}];
  [v7 setObject:v2 forKeyedSubscript:@"system-overall"];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "widgetMaxBudget")}];
  [v7 setObject:v3 forKeyedSubscript:@"individual"];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "systemAddedWidgetMaxBudget")}];
  [v7 setObject:v4 forKeyedSubscript:@"system-addedBySystem"];
  v5 = [*(a1 + 40) context];
  v6 = [MEMORY[0x1E6997A78] keyPathWithKey:@"/dasd/widgetBudget"];
  [v5 setObject:v7 forKeyedSubscript:v6];
}

void __61___DASWidgetRefreshScheduler_setOverridesForWidgetBudgetIDs___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_1B6E2F000, v2, OS_LOG_TYPE_DEFAULT, "Setting overrides widget refresh entries: %@", &v9, 0xCu);
  }

  v4 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v5 = *(a1 + 40);
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = [v4 context];
  v7 = [MEMORY[0x1E6997A78] keyPathWithKey:@"/dasd/widgetOverride"];
  [v6 setObject:v5 forKeyedSubscript:v7];

  v8 = *MEMORY[0x1E69E9840];
}

void __60___DASWidgetRefreshScheduler_setSystemAddedWidgetBudgetIDs___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_1B6E2F000, v2, OS_LOG_TYPE_DEFAULT, "Setting system added widget refresh entries: %@", &v9, 0xCu);
  }

  v4 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v5 = *(a1 + 40);
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = [v4 context];
  v7 = [MEMORY[0x1E6997A78] keyPathWithKey:@"/dasd/widgetSystemAdded"];
  [v6 setObject:v5 forKeyedSubscript:v7];

  v8 = *MEMORY[0x1E69E9840];
}

void __138___DASWidgetRefreshScheduler_createRefreshActivityForWidgetBudgetID_containingAppID_refreshAfter_refreshBefore_widgetInfo_refreshHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __138___DASWidgetRefreshScheduler_createRefreshActivityForWidgetBudgetID_containingAppID_refreshAfter_refreshBefore_widgetInfo_refreshHandler___block_invoke_cold_1();
  }

  v5 = *(a1 + 40);
  (*(*(a1 + 48) + 16))();
}

void __138___DASWidgetRefreshScheduler_createRefreshActivityForWidgetBudgetID_containingAppID_refreshAfter_refreshBefore_widgetInfo_refreshHandler___block_invoke_311(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __138___DASWidgetRefreshScheduler_createRefreshActivityForWidgetBudgetID_containingAppID_refreshAfter_refreshBefore_widgetInfo_refreshHandler___block_invoke_311_cold_1();
  }
}

void __188___DASWidgetRefreshScheduler_createRefreshActivityWithRateLimitConfigurationName_forWidgetBudgetID_withRemoteDeviceID_containingAppID_refreshAfter_refreshBefore_widgetInfo_refreshHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __188___DASWidgetRefreshScheduler_createRefreshActivityWithRateLimitConfigurationName_forWidgetBudgetID_withRemoteDeviceID_containingAppID_refreshAfter_refreshBefore_widgetInfo_refreshHandler___block_invoke_cold_1(v3);
  }

  v5 = *(a1 + 40);
  if (v5 || (v5 = *(a1 + 48)) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = &stru_1F2EC9F10;
  }

  (*(*(a1 + 56) + 16))();
}

void __188___DASWidgetRefreshScheduler_createRefreshActivityWithRateLimitConfigurationName_forWidgetBudgetID_withRemoteDeviceID_containingAppID_refreshAfter_refreshBefore_widgetInfo_refreshHandler___block_invoke_328(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __138___DASWidgetRefreshScheduler_createRefreshActivityForWidgetBudgetID_containingAppID_refreshAfter_refreshBefore_widgetInfo_refreshHandler___block_invoke_311_cold_1();
  }
}

void __72___DASWidgetRefreshScheduler_createRefreshActivityWithWidgetParameters___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __138___DASWidgetRefreshScheduler_createRefreshActivityForWidgetBudgetID_containingAppID_refreshAfter_refreshBefore_widgetInfo_refreshHandler___block_invoke_311_cold_1();
  }
}

void __87___DASWidgetRefreshScheduler_createRefreshActivityWithWidgetParameters_refreshHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __188___DASWidgetRefreshScheduler_createRefreshActivityWithRateLimitConfigurationName_forWidgetBudgetID_withRemoteDeviceID_containingAppID_refreshAfter_refreshBefore_widgetInfo_refreshHandler___block_invoke_cold_1(v3);
  }

  v5 = *(a1 + 48);
  v6 = [*(a1 + 40) widgetIdentifier];
  (*(v5 + 16))(v5, v6);
}

void __91___DASWidgetRefreshScheduler_createRefreshActivityWithWidgetParameters_withRefreshHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __188___DASWidgetRefreshScheduler_createRefreshActivityWithRateLimitConfigurationName_forWidgetBudgetID_withRemoteDeviceID_containingAppID_refreshAfter_refreshBefore_widgetInfo_refreshHandler___block_invoke_cold_1(v3);
  }

  (*(*(a1 + 40) + 16))();
}

void __138___DASWidgetRefreshScheduler_createRefreshActivityForWidgetBudgetID_containingAppID_refreshAfter_refreshBefore_widgetInfo_refreshHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1B6E2F000, v0, v1, "Start handler called on Widget Refresh activity %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __138___DASWidgetRefreshScheduler_createRefreshActivityForWidgetBudgetID_containingAppID_refreshAfter_refreshBefore_widgetInfo_refreshHandler___block_invoke_311_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1B6E2F000, v0, v1, "Suspend handler called on Widget Refresh activity %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __188___DASWidgetRefreshScheduler_createRefreshActivityWithRateLimitConfigurationName_forWidgetBudgetID_withRemoteDeviceID_containingAppID_refreshAfter_refreshBefore_widgetInfo_refreshHandler___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 debugDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1B6E2F000, v2, v3, "Start handler called on Widget Refresh activity %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

@end