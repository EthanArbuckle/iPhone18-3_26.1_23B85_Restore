@interface DKSystemEventsAgent
- (DKSystemEventsAgent)init;
- (void)cameraShutterModeChanged:(unsigned __int8)changed;
- (void)dealloc;
- (void)deregisterForSystemEvents:(id)events;
- (void)handleSystemEvent:(id)event callback:(id)callback;
- (void)registerForSystemEvents:(id)events;
- (void)registerForSystemEvents:(id)events forConnectedEvents:(id)connectedEvents;
- (void)startCaptureIfNeeded:(unsigned __int8)needed orientation:(unsigned __int8)orientation finished:(id)finished;
- (void)stopCaptureIfNeeded:(unsigned __int8)needed;
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

- (void)registerForSystemEvents:(id)events forConnectedEvents:(id)connectedEvents
{
  eventsCopy = events;
  connectedEventsCopy = connectedEvents;
  agent = self->_agent;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__DKSystemEventsAgent_registerForSystemEvents_forConnectedEvents___block_invoke;
  v13[3] = &unk_27852A1E8;
  v13[4] = self;
  v14 = eventsCopy;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__DKSystemEventsAgent_registerForSystemEvents_forConnectedEvents___block_invoke_2;
  v11[3] = &unk_27852A210;
  v12 = connectedEventsCopy;
  v9 = connectedEventsCopy;
  v10 = eventsCopy;
  [(SystemEventsAgent *)agent registerWithCallback:v13 connectedCallback:v11 completionHandler:&__block_literal_global_0];
}

- (void)registerForSystemEvents:(id)events
{
  eventsCopy = events;
  agent = self->_agent;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__DKSystemEventsAgent_registerForSystemEvents___block_invoke;
  v7[3] = &unk_27852A1E8;
  v7[4] = self;
  v8 = eventsCopy;
  v6 = eventsCopy;
  [(SystemEventsAgent *)agent registerWithCallback:v7 completionHandler:&__block_literal_global_26];
}

- (void)handleSystemEvent:(id)event callback:(id)callback
{
  eventCopy = event;
  callbackCopy = callback;
  header = [eventCopy header];
  if (header == +[_TtC11DockKitCore20AccessorySystemEvent kHeaderCameraShutter])
  {
    v9 = 0;
    payload = [eventCopy payload];
  }

  else
  {
    header2 = [eventCopy header];
    if (header2 == +[_TtC11DockKitCore20AccessorySystemEvent kHeaderCameraFlip])
    {
      payload = [eventCopy payload];
      v9 = 1;
    }

    else
    {
      header3 = [eventCopy header];
      if (header3 == +[_TtC11DockKitCore20AccessorySystemEvent kHeaderCameraZoom])
      {
        payload = [eventCopy payload] / 100.0;
        v9 = 2;
      }

      else
      {
        v9 = 3;
        payload = 0.0;
      }
    }
  }

  v13 = [MEMORY[0x277CCABB0] numberWithDouble:payload];
  v14 = [[DKSystemEvent alloc] initWithType:v9 value:v13];
  workQueue = self->_workQueue;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __50__DKSystemEventsAgent_handleSystemEvent_callback___block_invoke;
  v18[3] = &unk_27852A238;
  v19 = v14;
  v20 = callbackCopy;
  v16 = v14;
  v17 = callbackCopy;
  dispatch_async(workQueue, v18);
}

- (void)startCaptureIfNeeded:(unsigned __int8)needed orientation:(unsigned __int8)orientation finished:(id)finished
{
  orientationCopy = orientation;
  neededCopy = needed;
  finishedCopy = finished;
  v9 = finishedCopy;
  if (!neededCopy)
  {
    agent = self->_agent;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __65__DKSystemEventsAgent_startCaptureIfNeeded_orientation_finished___block_invoke;
    v11[3] = &unk_27852A210;
    v12 = finishedCopy;
    [(SystemEventsAgent *)agent startPanoramaCaptureWithOrientation:orientationCopy finishedCallback:v11 completionHandler:&__block_literal_global_31];
  }
}

- (void)stopCaptureIfNeeded:(unsigned __int8)needed
{
  if (!needed)
  {
    [(SystemEventsAgent *)self->_agent stopPanoramaCaptureWithCompletionHandler:&__block_literal_global_33];
  }
}

- (void)cameraShutterModeChanged:(unsigned __int8)changed
{
  agent = self->_agent;
  if (changed)
  {
    [(SystemEventsAgent *)agent deinitializePanoramaWithCompletionHandler:&__block_literal_global_37];
  }

  else
  {
    [(SystemEventsAgent *)agent initializePanoramaWithCompletionHandler:&__block_literal_global_35];
  }
}

- (void)deregisterForSystemEvents:(id)events
{
  eventsCopy = events;
  agent = self->_agent;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__DKSystemEventsAgent_deregisterForSystemEvents___block_invoke;
  v7[3] = &unk_27852A288;
  v7[4] = self;
  v8 = eventsCopy;
  v6 = eventsCopy;
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