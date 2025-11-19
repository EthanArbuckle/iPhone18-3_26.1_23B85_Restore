@interface FPDTelemetryService
- (FPDTelemetryService)init;
- (void)_replaceFPCKTelemetryValuesInTelemetryReport:(id)a3;
- (void)start;
- (void)transformTimeIntoRelativeAgeOnReport:(id)a3 from:(id)a4 to:(id)a5;
@end

@implementation FPDTelemetryService

- (FPDTelemetryService)init
{
  v7.receiver = self;
  v7.super_class = FPDTelemetryService;
  v2 = [(FPDTelemetryService *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("telemetry-service", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v2->_isExpired = 0;
  }

  return v2;
}

- (void)transformTimeIntoRelativeAgeOnReport:(id)a3 from:(id)a4 to:(id)a5
{
  v17 = a4;
  v7 = a5;
  v8 = a3;
  v9 = [v8 objectForKeyedSubscript:v17];
  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x1E695DF00]);
    [v9 doubleValue];
    v11 = [v10 initWithTimeIntervalSince1970:?];
    v12 = [MEMORY[0x1E695DF00] now];
    [v12 timeIntervalSinceDate:v11];

    v13 = [MEMORY[0x1E695DEE8] currentCalendar];
    v14 = [MEMORY[0x1E695DF00] now];
    v15 = [v13 components:16 fromDate:v11 toDate:v14 options:0];

    v16 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:{objc_msgSend(v15, "day")}];
    [v8 setObject:v16 forKeyedSubscript:v7];

    [v8 setObject:0 forKeyedSubscript:v17];
    v7 = v15;
    v8 = v11;
  }

  else
  {
    [v8 setObject:0 forKeyedSubscript:v17];
    [v8 setObject:0 forKeyedSubscript:v7];
  }
}

- (void)_replaceFPCKTelemetryValuesInTelemetryReport:(id)a3
{
  v4 = a3;
  [(FPDTelemetryService *)self transformTimeIntoRelativeAgeOnReport:v4 from:@"startTime" to:@"reportAge"];
  [(FPDTelemetryService *)self transformTimeIntoRelativeAgeOnReport:v4 from:@"lastUpdateTime" to:@"lastUpdateAge"];
  [(FPDTelemetryService *)self transformTimeIntoRelativeAgeOnReport:v4 from:@"spsTime" to:@"spsAge"];
  [(FPDTelemetryService *)self transformTimeIntoRelativeAgeOnReport:v4 from:@"consistencyTime" to:@"consistencyAge"];
}

- (void)start
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1CEFC7000, log, OS_LOG_TYPE_ERROR, "[ERROR] Failed to submit background task %{public}@ error: %{public}@", buf, 0x16u);
}

void __28__FPDTelemetryService_start__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  section = __fp_create_section();
  v26[1] = section;
  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __28__FPDTelemetryService_start__block_invoke_cold_1(section, v6);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained;
    objc_sync_enter(v9);
    *(v9 + 16) = 0;
    objc_sync_exit(v9);

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __28__FPDTelemetryService_start__block_invoke_30;
    v25[3] = &unk_1E83BE0B8;
    objc_copyWeak(v26, (a1 + 32));
    [v3 setExpirationHandler:v25];
    v10 = objc_opt_new();
    v11 = objc_opt_new();
    [v10 setObject:v11 forKeyedSubscript:&unk_1F4C62988];

    v12 = objc_opt_new();
    [v10 setObject:v12 forKeyedSubscript:&unk_1F4C629A0];

    v13 = dispatch_group_create();
    v14 = [*(v9 + 3) providerDomainsByID];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __28__FPDTelemetryService_start__block_invoke_37;
    v22[3] = &unk_1E83BE130;
    v22[4] = v9;
    v15 = v13;
    v23 = v15;
    v16 = v10;
    v24 = v16;
    [v14 enumerateKeysAndObjectsUsingBlock:v22];

    v17 = *(v9 + 1);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __28__FPDTelemetryService_start__block_invoke_4;
    block[3] = &unk_1E83BE158;
    v20 = v16;
    v21 = v3;
    v18 = v16;
    dispatch_group_notify(v15, v17, block);

    objc_destroyWeak(v26);
  }

  else
  {
    [v3 setTaskCompleted];
  }

  __fp_leave_section_Debug();
  objc_autoreleasePoolPop(v4);
}

void __28__FPDTelemetryService_start__block_invoke_30(uint64_t a1)
{
  obj = objc_loadWeakRetained((a1 + 32));
  objc_sync_enter(obj);
  obj[16] = 1;
  objc_sync_exit(obj);
}

void __28__FPDTelemetryService_start__block_invoke_37(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v5 = [v3 fp_toProviderID];
  v6 = [v4 providerWithIdentifier:v5 reason:0];

  if (v6)
  {
    v7 = [v3 fp_toDomainIdentifier];
    v8 = [v6 domainForIdentifier:v7 reason:0];

    if (v8)
    {
      if ([v8 isUsingFPFS])
      {
        v9 = *(a1 + 32);
        objc_sync_enter(v9);
        v10 = *(*(a1 + 32) + 16);
        objc_sync_exit(v9);

        if ((v10 & 1) == 0)
        {
          v11 = [v8 defaultBackend];
          v12 = objc_opt_respondsToSelector();

          if (v12)
          {
            dispatch_group_enter(*(a1 + 40));
            v13 = [v8 defaultBackend];
            v15[0] = MEMORY[0x1E69E9820];
            v15[1] = 3221225472;
            v15[2] = __28__FPDTelemetryService_start__block_invoke_2;
            v15[3] = &unk_1E83BE108;
            v14 = *(a1 + 40);
            v15[4] = *(a1 + 32);
            v16 = v14;
            v17 = v6;
            v18 = v8;
            v19 = *(a1 + 48);
            [v13 fetchTelemetryReportWithAlwaysFetchExpandedUsageStats:0 completionHandler:v15];
          }
        }
      }
    }
  }
}

void __28__FPDTelemetryService_start__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__FPDTelemetryService_start__block_invoke_3;
  block[3] = &unk_1E83BE0E0;
  v12 = v3;
  *&v5 = *(a1 + 40);
  *(&v5 + 1) = *(a1 + 32);
  v10 = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v13 = v10;
  v14 = v8;
  v15 = *(a1 + 64);
  v9 = v3;
  dispatch_async(v4, block);
}

void __28__FPDTelemetryService_start__block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:*(a1 + 32)];
    [*(a1 + 48) _replaceFPCKTelemetryValuesInTelemetryReport:v10];
    v2 = [*(a1 + 56) identifier];
    [v10 setObject:v2 forKeyedSubscript:*MEMORY[0x1E699C720]];

    v3 = [*(a1 + 56) bundleVersion];
    [v10 setObject:v3 forKeyedSubscript:*MEMORY[0x1E699C728]];

    v4 = MEMORY[0x1E696AD98];
    v5 = [*(a1 + 64) volume];
    v6 = [v4 numberWithUnsignedInt:{objc_msgSend(v5, "role")}];
    [v10 setObject:v6 forKeyedSubscript:@"volumeRole"];

    v7 = [*(a1 + 72) objectForKeyedSubscript:&unk_1F4C62988];
    [v7 addObject:v10];

    v8 = [*(a1 + 72) objectForKeyedSubscript:&unk_1F4C629A0];
    [v8 addObject:v10];

    dispatch_group_leave(*(a1 + 40));
  }

  else
  {
    v9 = *(a1 + 40);

    dispatch_group_leave(v9);
  }
}

uint64_t __28__FPDTelemetryService_start__block_invoke_4(uint64_t a1)
{
  v2 = [MEMORY[0x1E699C730] defaultManager];
  [v2 postMultipleReports:*(a1 + 32) type:1 userinfo:0 session:0 observer:0];

  v3 = *(a1 + 40);

  return [v3 setTaskCompleted];
}

void __28__FPDTelemetryService_start__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_debug_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx gathering and reporting FPFS usage telemetry", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end