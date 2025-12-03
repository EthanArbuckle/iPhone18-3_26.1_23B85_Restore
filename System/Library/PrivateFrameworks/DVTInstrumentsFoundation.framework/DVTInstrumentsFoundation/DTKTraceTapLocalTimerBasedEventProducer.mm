@interface DTKTraceTapLocalTimerBasedEventProducer
+ (BOOL)supportsConfig:(id)config;
- (DTKTraceTapLocalTimerBasedEventProducer)init;
- (unint64_t)_processInfoThermalStateToCLTMPressureLevel:(int64_t)level;
- (void)_emitThermalState:(int64_t)state currentState:(int64_t)currentState;
- (void)dealloc;
- (void)start;
- (void)stop;
@end

@implementation DTKTraceTapLocalTimerBasedEventProducer

+ (BOOL)supportsConfig:(id)config
{
  configCopy = config;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_247FE5BC8;
  v6[3] = &unk_278EF26B0;
  v6[4] = &v7;
  [configCopy enumerateTriggerConfigs:v6];
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (DTKTraceTapLocalTimerBasedEventProducer)init
{
  v7.receiver = self;
  v7.super_class = DTKTraceTapLocalTimerBasedEventProducer;
  v2 = [(DTKTraceTapLocalTimerBasedEventProducer *)&v7 init];
  if (v2)
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    v2->_currentThermalState = [processInfo thermalState];

    v4 = dispatch_queue_create("com.apple.dt.instruments.ktrace.localeventproducer", 0);
    workQueue = v2->_workQueue;
    v2->_workQueue = v4;

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
  v5.super_class = DTKTraceTapLocalTimerBasedEventProducer;
  [(DTKTraceTapLocalTimerBasedEventProducer *)&v5 dealloc];
}

- (unint64_t)_processInfoThermalStateToCLTMPressureLevel:(int64_t)level
{
  if ((level - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return 10 * level;
  }
}

- (void)_emitThermalState:(int64_t)state currentState:(int64_t)currentState
{
  [(DTKTraceTapLocalTimerBasedEventProducer *)self _processInfoThermalStateToCLTMPressureLevel:state];
  [(DTKTraceTapLocalTimerBasedEventProducer *)self _processInfoThermalStateToCLTMPressureLevel:currentState];
  kdebug_trace();
  v6 = MEMORY[0x277CFBB68];

  MEMORY[0x2821F9670](v6, sel_logSignpostWithConditionStates);
}

- (void)start
{
  v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_workQueue);
  timer = self->_timer;
  self->_timer = v3;

  v5 = self->_timer;
  v6 = dispatch_time(0, 100000000);
  dispatch_source_set_timer(v5, v6, 0x5F5E100uLL, 0xBEBC200uLL);
  objc_initWeak(&location, self);
  v7 = self->_timer;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_247FE5ED0;
  v8[3] = &unk_278EF1238;
  objc_copyWeak(&v9, &location);
  dispatch_source_set_event_handler(v7, v8);
  dispatch_resume(self->_timer);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)stop
{
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  thermalState = [processInfo thermalState];

  [(DTKTraceTapLocalTimerBasedEventProducer *)self _emitThermalState:thermalState currentState:thermalState];
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v6 = self->_timer;
    self->_timer = 0;
  }
}

@end