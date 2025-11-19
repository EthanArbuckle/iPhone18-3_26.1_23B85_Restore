@interface DKSystemEventsAgent
- (DKSystemEventsAgent)init;
- (void)cameraShutterModeChanged:(unsigned __int8)a3;
- (void)dealloc;
- (void)deregisterForSystemEvents:(id)a3;
- (void)handleSystemEvent:(id)a3 callback:(id)a4;
- (void)registerForSystemEvents:(id)a3;
- (void)registerForSystemEvents:(id)a3 forConnectedEvents:(id)a4;
- (void)startCaptureIfNeeded:(unsigned __int8)a3 orientation:(unsigned __int8)a4 finished:(id)a5;
- (void)stopCaptureIfNeeded:(unsigned __int8)a3;
@end

@implementation DKSystemEventsAgent

- (DKSystemEventsAgent)init
{
  v9.receiver = self;
  v9.super_class = DKSystemEventsAgent;
  v2 = [(DKSystemEventsAgent *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(SystemEventsAgent);
    agent = v2->_agent;
    v2->_agent = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.systemEventsAgent", v5);
    workQueue = v2->_workQueue;
    v2->_workQueue = v6;
  }

  return v2;
}

- (void)registerForSystemEvents:(id)a3 forConnectedEvents:(id)a4
{
  v6 = a3;
  v7 = a4;
  agent = self->_agent;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__DKSystemEventsAgent_registerForSystemEvents_forConnectedEvents___block_invoke;
  v13[3] = &unk_27852A1E8;
  v13[4] = self;
  v14 = v6;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__DKSystemEventsAgent_registerForSystemEvents_forConnectedEvents___block_invoke_2;
  v11[3] = &unk_27852A210;
  v12 = v7;
  v9 = v7;
  v10 = v6;
  [(SystemEventsAgent *)agent registerWithCallback:v13 connectedCallback:v11 completionHandler:&__block_literal_global_0];
}

- (void)registerForSystemEvents:(id)a3
{
  v4 = a3;
  agent = self->_agent;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__DKSystemEventsAgent_registerForSystemEvents___block_invoke;
  v7[3] = &unk_27852A1E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(SystemEventsAgent *)agent registerWithCallback:v7 completionHandler:&__block_literal_global_26];
}

- (void)handleSystemEvent:(id)a3 callback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 header];
  if (v8 == +[_TtC11DockKitCore20AccessorySystemEvent kHeaderCameraShutter])
  {
    v9 = 0;
    v10 = [v6 payload];
  }

  else
  {
    v11 = [v6 header];
    if (v11 == +[_TtC11DockKitCore20AccessorySystemEvent kHeaderCameraFlip])
    {
      v10 = [v6 payload];
      v9 = 1;
    }

    else
    {
      v12 = [v6 header];
      if (v12 == +[_TtC11DockKitCore20AccessorySystemEvent kHeaderCameraZoom])
      {
        v10 = [v6 payload] / 100.0;
        v9 = 2;
      }

      else
      {
        v9 = 3;
        v10 = 0.0;
      }
    }
  }

  v13 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
  v14 = [[DKSystemEvent alloc] initWithType:v9 value:v13];
  workQueue = self->_workQueue;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __50__DKSystemEventsAgent_handleSystemEvent_callback___block_invoke;
  v18[3] = &unk_27852A238;
  v19 = v14;
  v20 = v7;
  v16 = v14;
  v17 = v7;
  dispatch_async(workQueue, v18);
}

- (void)startCaptureIfNeeded:(unsigned __int8)a3 orientation:(unsigned __int8)a4 finished:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v9 = v8;
  if (!v6)
  {
    agent = self->_agent;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __65__DKSystemEventsAgent_startCaptureIfNeeded_orientation_finished___block_invoke;
    v11[3] = &unk_27852A210;
    v12 = v8;
    [(SystemEventsAgent *)agent startPanoramaCaptureWithOrientation:v5 finishedCallback:v11 completionHandler:&__block_literal_global_31];
  }
}

- (void)stopCaptureIfNeeded:(unsigned __int8)a3
{
  if (!a3)
  {
    [(SystemEventsAgent *)self->_agent stopPanoramaCaptureWithCompletionHandler:&__block_literal_global_33];
  }
}

- (void)cameraShutterModeChanged:(unsigned __int8)a3
{
  agent = self->_agent;
  if (a3)
  {
    [(SystemEventsAgent *)agent deinitializePanoramaWithCompletionHandler:&__block_literal_global_37];
  }

  else
  {
    [(SystemEventsAgent *)agent initializePanoramaWithCompletionHandler:&__block_literal_global_35];
  }
}

- (void)deregisterForSystemEvents:(id)a3
{
  v4 = a3;
  agent = self->_agent;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__DKSystemEventsAgent_deregisterForSystemEvents___block_invoke;
  v7[3] = &unk_27852A288;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(SystemEventsAgent *)agent deregisterWithCompletionHandler:v7];
}

void __49__DKSystemEventsAgent_deregisterForSystemEvents___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__DKSystemEventsAgent_deregisterForSystemEvents___block_invoke_2;
  block[3] = &unk_27852A260;
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

- (void)dealloc
{
  NSLog(&cfstr_Dksystemevents.isa, a2);
  agent = self->_agent;
  self->_agent = 0;

  v4.receiver = self;
  v4.super_class = DKSystemEventsAgent;
  [(DKSystemEventsAgent *)&v4 dealloc];
}

@end