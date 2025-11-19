@interface DKTrackingAgent
- (BOOL)tracking;
- (BOOL)trackingButtonEnabled;
- (DKTrackingAgent)init;
- (DKTrackingAgent)initWithClientApplicationID:(id)a3;
- (DKTrackingAgent)initWithConfiguration:(id)a3;
- (DKTrackingAgent)initWithTrackerConfiguration:(id)a3;
- (void)dealloc;
- (void)trackWithDetectedObjectsInfo:(id)a3 image:(id)a4 cameraPortType:(id)a5 cameraIntrinsics:(id)a6 referenceDimensions:(CGSize)a7 orientation:(int)a8 completionHandler:(id)a9;
- (void)trackWithFocusObservations:(id)a3 detectedObjectsInfo:(id)a4 cameraPortType:(id)a5 cameraIntrinsics:(id)a6 referenceDimensions:(CGSize)a7 orientation:(int)a8 completionHandler:(id)a9;
- (void)trackWithMetadata:(id)a3 image:(id)a4 cameraPortType:(id)a5 cameraIntrinsics:(id)a6 referenceDimensions:(CGSize)a7 orientation:(int)a8 completionHandler:(id)a9;
@end

@implementation DKTrackingAgent

- (BOOL)tracking
{
  agent = self->_agent;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __27__DKTrackingAgent_tracking__block_invoke;
  v7[3] = &unk_27852A1A0;
  v7[4] = self;
  [(ObjectTrackingAgent *)agent isTrackingWithCompletionHandler:v7];
  isTrackingSemaphore = self->_isTrackingSemaphore;
  v5 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(isTrackingSemaphore, v5);
  LOBYTE(isTrackingSemaphore) = self->_isTracking;
  dispatch_semaphore_signal(self->_isTrackingSemaphore);
  return isTrackingSemaphore;
}

intptr_t __27__DKTrackingAgent_tracking__block_invoke(uint64_t a1, char a2)
{
  v4 = *(*(a1 + 32) + 16);
  v5 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v4, v5);
  *(*(a1 + 32) + 24) = a2;
  v6 = *(*(a1 + 32) + 16);

  return dispatch_semaphore_signal(v6);
}

- (DKTrackingAgent)init
{
  v10.receiver = self;
  v10.super_class = DKTrackingAgent;
  v2 = [(DKTrackingAgent *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(ObjectTrackingAgent);
    agent = v2->_agent;
    v2->_agent = v3;

    v5 = dispatch_semaphore_create(1);
    isTrackingSemaphore = v2->_isTrackingSemaphore;
    v2->_isTrackingSemaphore = v5;

    v7 = dispatch_semaphore_create(1);
    isButtonEnabledSemaphore = v2->_isButtonEnabledSemaphore;
    v2->_isButtonEnabledSemaphore = v7;

    v2->_isTracking = 0;
    v2->_trackingButtonEnabled = 0;
  }

  return v2;
}

- (DKTrackingAgent)initWithClientApplicationID:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = DKTrackingAgent;
  v5 = [(DKTrackingAgent *)&v13 init];
  if (v5)
  {
    v6 = [[ObjectTrackingAgent alloc] initWithAppID:v4];
    agent = v5->_agent;
    v5->_agent = v6;

    v8 = dispatch_semaphore_create(1);
    isTrackingSemaphore = v5->_isTrackingSemaphore;
    v5->_isTrackingSemaphore = v8;

    v10 = dispatch_semaphore_create(1);
    isButtonEnabledSemaphore = v5->_isButtonEnabledSemaphore;
    v5->_isButtonEnabledSemaphore = v10;

    v5->_isTracking = 0;
    v5->_trackingButtonEnabled = 0;
  }

  return v5;
}

- (DKTrackingAgent)initWithConfiguration:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = DKTrackingAgent;
  v5 = [(DKTrackingAgent *)&v13 init];
  if (v5)
  {
    v6 = [[ObjectTrackingAgent alloc] initWithConfig:v4];
    agent = v5->_agent;
    v5->_agent = v6;

    v8 = dispatch_semaphore_create(1);
    isTrackingSemaphore = v5->_isTrackingSemaphore;
    v5->_isTrackingSemaphore = v8;

    v10 = dispatch_semaphore_create(1);
    isButtonEnabledSemaphore = v5->_isButtonEnabledSemaphore;
    v5->_isButtonEnabledSemaphore = v10;

    v5->_isTracking = 0;
    v5->_trackingButtonEnabled = 0;
  }

  return v5;
}

- (DKTrackingAgent)initWithTrackerConfiguration:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = DKTrackingAgent;
  v5 = [(DKTrackingAgent *)&v13 init];
  if (v5)
  {
    v6 = [[ObjectTrackingAgent alloc] initWithTrackerConfig:v4];
    agent = v5->_agent;
    v5->_agent = v6;

    v8 = dispatch_semaphore_create(1);
    isTrackingSemaphore = v5->_isTrackingSemaphore;
    v5->_isTrackingSemaphore = v8;

    v10 = dispatch_semaphore_create(1);
    isButtonEnabledSemaphore = v5->_isButtonEnabledSemaphore;
    v5->_isButtonEnabledSemaphore = v10;

    v5->_isTracking = 0;
    v5->_trackingButtonEnabled = 0;
  }

  return v5;
}

- (void)dealloc
{
  NSLog(&cfstr_Dktrackingagen.isa, a2);
  [(ObjectTrackingAgent *)self->_agent stop];
  agent = self->_agent;
  self->_agent = 0;

  v4.receiver = self;
  v4.super_class = DKTrackingAgent;
  [(DKTrackingAgent *)&v4 dealloc];
}

- (void)trackWithMetadata:(id)a3 image:(id)a4 cameraPortType:(id)a5 cameraIntrinsics:(id)a6 referenceDimensions:(CGSize)a7 orientation:(int)a8 completionHandler:(id)a9
{
  v10 = *&a8;
  height = a7.height;
  width = a7.width;
  v23 = a4;
  agent = self->_agent;
  v18 = a9;
  v19 = a6;
  v20 = a5;
  v21 = a3;
  if ([(ObjectTrackingAgent *)agent customInferenceEnabled])
  {
    v22 = v23;
  }

  else
  {
    v22 = 0;
  }

  [(ObjectTrackingAgent *)self->_agent trackWithMetadata:v21 image:v22 cameraPortType:v20 cameraIntrinsics:v19 referenceDimensions:v10 orientation:v18 completionHandler:width, height];
}

- (void)trackWithFocusObservations:(id)a3 detectedObjectsInfo:(id)a4 cameraPortType:(id)a5 cameraIntrinsics:(id)a6 referenceDimensions:(CGSize)a7 orientation:(int)a8 completionHandler:(id)a9
{
  v10 = *&a8;
  height = a7.height;
  width = a7.width;
  v23 = a5;
  v17 = a6;
  v18 = a9;
  agent = self->_agent;
  v20 = a3;
  v21 = [(ObjectTrackingAgent *)agent getDockCoreObservationsWithDetectedObjectsInfo:a4 cameraPort:v23];
  v22 = [v20 firstObject];

  if (v22 && ([v21 count] || objc_msgSend(v22, "focusStrong")))
  {
    [(ObjectTrackingAgent *)self->_agent trackWithFocusObservation:v22 metadata:MEMORY[0x277CBEBF8] image:0 cameraPortType:v23 cameraIntrinsics:v17 referenceDimensions:v10 orientation:width completionHandler:height, v18];
  }
}

- (void)trackWithDetectedObjectsInfo:(id)a3 image:(id)a4 cameraPortType:(id)a5 cameraIntrinsics:(id)a6 referenceDimensions:(CGSize)a7 orientation:(int)a8 completionHandler:(id)a9
{
  v10 = *&a8;
  height = a7.height;
  width = a7.width;
  v23 = a4;
  agent = self->_agent;
  v18 = a9;
  v19 = a6;
  v20 = a5;
  v21 = a3;
  if ([(ObjectTrackingAgent *)agent customInferenceEnabled])
  {
    v22 = v23;
  }

  else
  {
    v22 = 0;
  }

  [(ObjectTrackingAgent *)self->_agent trackWithDetectedObjectsInfo:v21 image:v22 cameraPortType:v20 cameraIntrinsics:v19 referenceDimensions:v10 orientation:v18 completionHandler:width, height];
}

- (BOOL)trackingButtonEnabled
{
  agent = self->_agent;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__DKTrackingAgent_trackingButtonEnabled__block_invoke;
  v7[3] = &unk_27852A1A0;
  v7[4] = self;
  [(ObjectTrackingAgent *)agent trackingButtonEnabledWithCompletionHandler:v7];
  isButtonEnabledSemaphore = self->_isButtonEnabledSemaphore;
  v5 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(isButtonEnabledSemaphore, v5);
  LOBYTE(isButtonEnabledSemaphore) = self->_trackingButtonEnabled;
  dispatch_semaphore_signal(self->_isButtonEnabledSemaphore);
  return isButtonEnabledSemaphore;
}

intptr_t __40__DKTrackingAgent_trackingButtonEnabled__block_invoke(uint64_t a1, char a2)
{
  v4 = *(*(a1 + 32) + 32);
  v5 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v4, v5);
  *(*(a1 + 32) + 40) = a2;
  v6 = *(*(a1 + 32) + 32);

  return dispatch_semaphore_signal(v6);
}

@end