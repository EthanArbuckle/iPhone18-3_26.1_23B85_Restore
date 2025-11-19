@interface MFWidgetController
+ (EFScheduler)scheduler;
+ (MFWidgetController)sharedController;
+ (OS_os_log)log;
+ (OS_os_log)signpostLog;
- (MFWidgetController)init;
- (unint64_t)signpostID;
- (void)reloadTimelinesWithReason:(id)a3;
@end

@implementation MFWidgetController

+ (OS_os_log)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__MFWidgetController_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_7 != -1)
  {
    dispatch_once(&log_onceToken_7, block);
  }

  v2 = log_log_7;

  return v2;
}

void __25__MFWidgetController_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_7;
  log_log_7 = v1;
}

+ (OS_os_log)signpostLog
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__MFWidgetController_signpostLog__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (signpostLog_onceToken_1 != -1)
  {
    dispatch_once(&signpostLog_onceToken_1, block);
  }

  v2 = signpostLog_log_1;

  return v2;
}

void __33__MFWidgetController_signpostLog__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email.signposts", [v3 UTF8String]);
  v2 = signpostLog_log_1;
  signpostLog_log_1 = v1;
}

- (unint64_t)signpostID
{
  v3 = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(v3, self);

  return v4;
}

+ (MFWidgetController)sharedController
{
  if (sharedController_onceToken != -1)
  {
    +[MFWidgetController sharedController];
  }

  v3 = sharedController_controller;

  return v3;
}

void __38__MFWidgetController_sharedController__block_invoke()
{
  v0 = objc_alloc_init(MFWidgetController);
  v1 = sharedController_controller;
  sharedController_controller = v0;
}

+ (EFScheduler)scheduler
{
  if (scheduler_onceToken != -1)
  {
    +[MFWidgetController scheduler];
  }

  v3 = scheduler_scheduler;

  return v3;
}

void __31__MFWidgetController_scheduler__block_invoke()
{
  v0 = [MEMORY[0x277D071B8] serialDispatchQueueSchedulerWithName:@"com.apple.mobilemail.reload-timeline" qualityOfService:25];
  v1 = scheduler_scheduler;
  scheduler_scheduler = v0;
}

- (MFWidgetController)init
{
  v7.receiver = self;
  v7.super_class = MFWidgetController;
  v2 = [(MFWidgetController *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CFA320]);
    v4 = [v3 initWithExtensionBundleIdentifier:*MEMORY[0x277D28650] kind:*MEMORY[0x277D28658]];
    timelineController = v2->_timelineController;
    v2->_timelineController = v4;
  }

  return v2;
}

- (void)reloadTimelinesWithReason:(id)a3
{
  v4 = a3;
  v5 = +[MFWidgetController signpostLog];
  v6 = os_signpost_id_generate(v5);
  v7 = v5;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2149C9000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "RELOAD WIDGET TIMELINE", "Perform block", buf, 2u);
  }

  v9 = +[MFWidgetController scheduler];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__MFWidgetController_reloadTimelinesWithReason___block_invoke;
  v12[3] = &unk_2781819D0;
  v10 = v8;
  v16 = v6;
  v13 = v10;
  v14 = self;
  v11 = v4;
  v15 = v11;
  [v9 performBlock:v12];
}

void __48__MFWidgetController_reloadTimelinesWithReason___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = v2;
  v4 = *(a1 + 56);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    LOWORD(v12[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_2149C9000, v3, OS_SIGNPOST_EVENT, v4, "RELOAD WIDGET TIMELINE", "Reload timelines", v12, 2u);
  }

  v5 = [*(a1 + 40) timelineController];
  v6 = [v5 reloadTimelineWithReason:*(a1 + 48)];

  if (v6)
  {
    v7 = +[MFWidgetController log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __48__MFWidgetController_reloadTimelinesWithReason___block_invoke_cold_1(v6, v7);
    }
  }

  else
  {
    v7 = +[MFWidgetController log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12[0]) = 0;
      _os_log_impl(&dword_2149C9000, v7, OS_LOG_TYPE_DEFAULT, "Reload timelines", v12, 2u);
    }
  }

  v8 = *(a1 + 32);
  v9 = v8;
  v10 = *(a1 + 56);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v12[0] = 67109120;
    v12[1] = v6 == 0;
    _os_signpost_emit_with_name_impl(&dword_2149C9000, v9, OS_SIGNPOST_INTERVAL_END, v10, "RELOAD WIDGET TIMELINE", "Reload timelines completed (success=%{BOOL}d) enableTelemetry=YES ", v12, 8u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __48__MFWidgetController_reloadTimelinesWithReason___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_2149C9000, a2, OS_LOG_TYPE_ERROR, "Reload timelines failed with error: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end