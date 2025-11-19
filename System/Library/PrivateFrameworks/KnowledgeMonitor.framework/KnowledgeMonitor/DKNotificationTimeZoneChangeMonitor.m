@interface DKNotificationTimeZoneChangeMonitor
@end

@implementation DKNotificationTimeZoneChangeMonitor

uint64_t __43___DKNotificationTimeZoneChangeMonitor_log__block_invoke()
{
  v0 = os_log_create("com.apple.coreduet.monitors", "_DKNotificationTimeZoneChangeMonitor");
  v1 = log_log_3;
  log_log_3 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __48___DKNotificationTimeZoneChangeMonitor_activate__block_invoke(uint64_t a1)
{
  if ((*(*(a1 + 32) + 154) & 1) == 0)
  {
    v2 = [objc_opt_class() log];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22595A000, v2, OS_LOG_TYPE_DEFAULT, "Checking current state of timezone stream", buf, 2u);
    }

    v3 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:0 endDate:0 maxEvents:1 lastN:1 reversed:0];
    v4 = BiomeLibrary();
    v5 = [v4 Device];
    v6 = [v5 TimeZone];
    v7 = [v6 publisherWithOptions:v3];

    *buf = 0;
    v21 = buf;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__7;
    v24 = __Block_byref_object_dispose__7;
    v25 = 0;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __48___DKNotificationTimeZoneChangeMonitor_activate__block_invoke_2;
    v19[3] = &unk_27856F840;
    v19[4] = *(a1 + 32);
    v19[5] = buf;
    v8 = [v7 sinkWithCompletion:&__block_literal_global_27_0 receiveInput:v19];
    Current = CFAbsoluteTimeGetCurrent();
    [*(v21 + 5) timestamp];
    v11 = v10;
    v12 = [*(v21 + 5) eventBody];
    v13 = [v12 isEqual:*(a1 + 40)];
    if (Current - v11 <= 604800.0)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      v15 = [*(v21 + 5) eventBody];
      v16 = *(a1 + 32);
      v17 = *(v16 + 168);
      *(v16 + 168) = v15;

      [*(v21 + 5) timestamp];
      *(*(a1 + 32) + 160) = v18;
    }

    else
    {
      [*(a1 + 32) _updateWithTimeZone:*(a1 + 40) timestamp:*(a1 + 48)];
    }

    _Block_object_dispose(buf, 8);
  }
}

void __48___DKNotificationTimeZoneChangeMonitor_activate__block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v5 = *(a1 + 32);
  v6 = [objc_opt_class() log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 eventBody];
    [v4 timestamp];
    v10 = 138412546;
    v11 = v7;
    v12 = 2048;
    v13 = v8;
    _os_log_impl(&dword_22595A000, v6, OS_LOG_TYPE_DEFAULT, "Loaded last timezone event %@ at %f", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __61___DKNotificationTimeZoneChangeMonitor_enqueueTimeZoneUpdate__block_invoke(uint64_t result)
{
  if ((*(*(result + 32) + 154) & 1) == 0)
  {
    v1 = result;
    Current = CFAbsoluteTimeGetCurrent();
    v3 = *(v1 + 4);
    v4 = *(v3 + 160);
    result = [*(v3 + 168) isEqual:*(v1 + 5)];
    if (!result || Current - v4 > 604800.0)
    {
      v5 = *(v1 + 4);
      v6 = *(v1 + 5);
      v7 = v1[6];

      return [v5 _updateWithTimeZone:v6 timestamp:v7];
    }
  }

  return result;
}

@end