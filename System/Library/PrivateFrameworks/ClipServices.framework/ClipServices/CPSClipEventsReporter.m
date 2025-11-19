@interface CPSClipEventsReporter
+ (id)reporter;
- (CPSClipEventsReporter)init;
- (void)logClipLaunchEventForSession:(id)a3;
@end

@implementation CPSClipEventsReporter

+ (id)reporter
{
  if (reporter_onceToken != -1)
  {
    +[CPSClipEventsReporter reporter];
  }

  v3 = reporter_reporter;

  return v3;
}

uint64_t __33__CPSClipEventsReporter_reporter__block_invoke()
{
  reporter_reporter = objc_alloc_init(CPSClipEventsReporter);

  return MEMORY[0x2821F96F8]();
}

- (CPSClipEventsReporter)init
{
  v14.receiver = self;
  v14.super_class = CPSClipEventsReporter;
  v2 = [(CPSClipEventsReporter *)&v14 init];
  if (v2)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2050000000;
    v3 = getBMStreamsClass_softClass;
    v19 = getBMStreamsClass_softClass;
    if (!getBMStreamsClass_softClass)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __getBMStreamsClass_block_invoke;
      v15[3] = &unk_278DCDC00;
      v15[4] = &v16;
      __getBMStreamsClass_block_invoke(v15);
      v3 = v17[3];
    }

    v4 = v3;
    _Block_object_dispose(&v16, 8);
    if (v3)
    {
      v5 = [v3 appClipLaunch];
      v6 = [v5 source];
      source = v2->_source;
      v2->_source = v6;
    }

    else
    {
      v8 = CPS_LOG_CHANNEL_PREFIXClipServices();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(CPSClipEventsReporter *)v8 init];
      }
    }

    v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v10 = dispatch_queue_create("com.apple.ClipServices.clipserviced.EventReporting", v9);
    logQueue = v2->_logQueue;
    v2->_logQueue = v10;

    v12 = v2;
  }

  return v2;
}

- (void)logClipLaunchEventForSession:(id)a3
{
  v4 = a3;
  logQueue = self->_logQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__CPSClipEventsReporter_logClipLaunchEventForSession___block_invoke;
  v7[3] = &unk_278DCDE58;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(logQueue, v7);
}

void __54__CPSClipEventsReporter_logClipLaunchEventForSession___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1;
    v4 = *(a1 + 32);
    v5 = v2;
    v6 = [v4 metadata];
    v7 = [v6 clipURLHash];
    *buf = 138412546;
    *&buf[4] = v4;
    *&buf[12] = 2112;
    *&buf[14] = v7;
    _os_log_impl(&dword_2436ED000, v5, OS_LOG_TYPE_DEFAULT, "Logging Biome Event with session: %@ for clip with hash: %@", buf, 0x16u);

    a1 = v3;
  }

  v23 = a1;
  v8 = (a1 + 32);
  v9 = [*(a1 + 32) metadata];
  v24 = [*v8 url];
  v10 = [*v8 configuration];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2050000000;
  v11 = getBMAppClipLaunchEventClass_softClass;
  v28 = getBMAppClipLaunchEventClass_softClass;
  if (!getBMAppClipLaunchEventClass_softClass)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __getBMAppClipLaunchEventClass_block_invoke;
    v30 = &unk_278DCDC00;
    v31 = &v25;
    __getBMAppClipLaunchEventClass_block_invoke(buf);
    v11 = v26[3];
  }

  v12 = v11;
  _Block_object_dispose(&v25, 8);
  v13 = [v11 alloc];
  v14 = [v9 clipURLHash];
  v15 = [v9 clipBundleID];
  v16 = [v9 fullAppBundleID];
  v17 = [v9 webClipID];
  v18 = [v10 analyticsLaunchReason];
  if ([v10 analyticsShouldIncludeReferrerURL])
  {
    v19 = v24;
  }

  else
  {
    v19 = 0;
  }

  v20 = [v10 analyticsReferrerBundleID];
  v21 = [v13 initWithURLHash:v14 clipBundleID:v15 appBundleID:v16 webAppBundleID:v17 launchReason:v18 fullURL:v24 referrerURL:v19 referrerBundleID:v20];

  [*(*(v23 + 40) + 8) sendEvent:v21];
  v22 = *MEMORY[0x277D85DE8];
}

@end