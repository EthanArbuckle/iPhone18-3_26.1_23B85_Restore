@interface DTKTraceTapLocalShaderTimelineEventProducer
+ (BOOL)supportsConfig:(id)config;
- (DTKTraceTapLocalShaderTimelineEventProducer)init;
- (void)_notifyShaderBinaryInfo;
- (void)dealloc;
- (void)start;
- (void)stop;
@end

@implementation DTKTraceTapLocalShaderTimelineEventProducer

+ (BOOL)supportsConfig:(id)config
{
  configCopy = config;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_247FE60E8;
  v6[3] = &unk_278EF26B0;
  v6[4] = &v7;
  [configCopy enumerateTriggerConfigs:v6];
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (DTKTraceTapLocalShaderTimelineEventProducer)init
{
  v6.receiver = self;
  v6.super_class = DTKTraceTapLocalShaderTimelineEventProducer;
  v2 = [(DTKTraceTapLocalShaderTimelineEventProducer *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.dt.instruments.ktrace.shadertimelineproducer", 0);
    workQueue = v2->_workQueue;
    v2->_workQueue = v3;

    notify_register_check("com.apple.Metal.AGXEnableOSSignposts", &v2->_token);
  }

  return v2;
}

- (void)dealloc
{
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v4 = self->_timer;
    self->_timer = 0;
  }

  v5.receiver = self;
  v5.super_class = DTKTraceTapLocalShaderTimelineEventProducer;
  [(DTKTraceTapLocalShaderTimelineEventProducer *)&v5 dealloc];
}

- (void)_notifyShaderBinaryInfo
{
  notify_set_state(self->_token, 0);
  notify_post("com.apple.Metal.AGXEnableOSSignposts");
  v3 = dispatch_time(0, 100000000);
  v4 = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247FE6350;
  block[3] = &unk_278EF1070;
  block[4] = self;
  dispatch_after(v3, v4, block);
}

- (void)start
{
  v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_workQueue);
  timer = self->_timer;
  self->_timer = v3;

  v5 = self->_timer;
  v6 = dispatch_time(0, 5000000000);
  dispatch_source_set_timer(v5, v6, 0x12A05F200uLL, 0xBEBC200uLL);
  objc_initWeak(&location, self);
  v7 = self->_timer;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = sub_247FE64C0;
  handler[3] = &unk_278EF3A60;
  objc_copyWeak(&v9, &location);
  handler[4] = self;
  dispatch_source_set_event_handler(v7, handler);
  dispatch_resume(self->_timer);
  [(DTKTraceTapLocalShaderTimelineEventProducer *)self _notifyShaderBinaryInfo];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)stop
{
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v4 = self->_timer;
    self->_timer = 0;
  }

  notify_set_state(self->_token, 0);

  notify_post("com.apple.Metal.AGXEnableOSSignposts");
}

@end