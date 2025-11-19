@interface MRUAnalytics
+ (void)sendEvent:(id)a3 withError:(id)a4 payload:(id)a5;
@end

@implementation MRUAnalytics

+ (void)sendEvent:(id)a3 withError:(id)a4 payload:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (sendEvent_withError_payload__once != -1)
  {
    +[MRUAnalytics sendEvent:withError:payload:];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __44__MRUAnalytics_sendEvent_withError_payload___block_invoke_2;
  aBlock[3] = &unk_1E7664778;
  v20 = v8;
  v21 = v9;
  v10 = v8;
  v11 = v9;
  v12 = _Block_copy(aBlock);
  v13 = sendEvent_withError_payload____analyticsQueue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __44__MRUAnalytics_sendEvent_withError_payload___block_invoke_3;
  v16[3] = &unk_1E7663FD8;
  v17 = v7;
  v18 = v12;
  v14 = v7;
  v15 = v12;
  dispatch_async(v13, v16);
}

void __44__MRUAnalytics_sendEvent_withError_payload___block_invoke()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);
  v1 = dispatch_queue_create("com.apple.mediacontrols.MRUAnalytics", v0);
  v2 = sendEvent_withError_payload____analyticsQueue;
  sendEvent_withError_payload____analyticsQueue = v1;
}

id __44__MRUAnalytics_sendEvent_withError_payload___block_invoke_2(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  v3 = [v2 mutableCopy];

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "code")}];
    [v3 setObject:v5 forKeyedSubscript:@"errorCode"];

    v6 = [*(a1 + 32) domain];
    [v3 setObject:v6 forKeyedSubscript:@"errorDomain"];
  }

  return v3;
}

void __44__MRUAnalytics_sendEvent_withError_payload___block_invoke_3(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (MSVDeviceOSIsInternalInstall())
  {
    v2 = (*(*(a1 + 40) + 16))();
    v3 = _MRLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 138412546;
      v8 = v4;
      v9 = 2112;
      v10 = v2;
      _os_log_impl(&dword_1A20FC000, v3, OS_LOG_TYPE_DEFAULT, "Logging to CoreAnalytics: %@\n%@", buf, 0x16u);
    }

    v6 = v2;
    v5 = v2;
    AnalyticsSendEventLazy();
  }

  else
  {

    AnalyticsSendEventLazy();
  }
}

@end