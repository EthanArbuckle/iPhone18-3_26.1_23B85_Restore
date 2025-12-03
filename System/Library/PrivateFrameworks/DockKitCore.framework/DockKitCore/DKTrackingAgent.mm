@interface DKTrackingAgent
- (BOOL)tracking;
- (BOOL)trackingButtonEnabled;
- (DKTrackingAgent)init;
- (DKTrackingAgent)initWithClientApplicationID:(id)d;
- (DKTrackingAgent)initWithConfiguration:(id)configuration;
- (DKTrackingAgent)initWithTrackerConfiguration:(id)configuration;
- (void)dealloc;
- (void)trackWithDetectedObjectsInfo:(id)info image:(id)image cameraPortType:(id)type cameraIntrinsics:(id)intrinsics referenceDimensions:(CGSize)dimensions orientation:(int)orientation completionHandler:(id)handler;
- (void)trackWithFocusObservations:(id)observations detectedObjectsInfo:(id)info cameraPortType:(id)type cameraIntrinsics:(id)intrinsics referenceDimensions:(CGSize)dimensions orientation:(int)orientation completionHandler:(id)handler;
- (void)trackWithMetadata:(id)metadata image:(id)image cameraPortType:(id)type cameraIntrinsics:(id)intrinsics referenceDimensions:(CGSize)dimensions orientation:(int)orientation completionHandler:(id)handler;
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

- (DKTrackingAgent)initWithClientApplicationID:(id)d
{
  dCopy = d;
  v13.receiver = self;
  v13.super_class = DKTrackingAgent;
  v5 = [(DKTrackingAgent *)&v13 init];
  if (v5)
  {
    v6 = [[ObjectTrackingAgent alloc] initWithAppID:dCopy];
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

- (DKTrackingAgent)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v13.receiver = self;
  v13.super_class = DKTrackingAgent;
  v5 = [(DKTrackingAgent *)&v13 init];
  if (v5)
  {
    v6 = [[ObjectTrackingAgent alloc] initWithConfig:configurationCopy];
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

- (DKTrackingAgent)initWithTrackerConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v13.receiver = self;
  v13.super_class = DKTrackingAgent;
  v5 = [(DKTrackingAgent *)&v13 init];
  if (v5)
  {
    v6 = [[ObjectTrackingAgent alloc] initWithTrackerConfig:configurationCopy];
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

- (void)trackWithMetadata:(id)metadata image:(id)image cameraPortType:(id)type cameraIntrinsics:(id)intrinsics referenceDimensions:(CGSize)dimensions orientation:(int)orientation completionHandler:(id)handler
{
  v10 = *&orientation;
  height = dimensions.height;
  width = dimensions.width;
  imageCopy = image;
  agent = self->_agent;
  handlerCopy = handler;
  intrinsicsCopy = intrinsics;
  typeCopy = type;
  metadataCopy = metadata;
  if ([(ObjectTrackingAgent *)agent customInferenceEnabled])
  {
    v22 = imageCopy;
  }

  else
  {
    v22 = 0;
  }

  [(ObjectTrackingAgent *)self->_agent trackWithMetadata:metadataCopy image:v22 cameraPortType:typeCopy cameraIntrinsics:intrinsicsCopy referenceDimensions:v10 orientation:handlerCopy completionHandler:width, height];
}

- (void)trackWithFocusObservations:(id)observations detectedObjectsInfo:(id)info cameraPortType:(id)type cameraIntrinsics:(id)intrinsics referenceDimensions:(CGSize)dimensions orientation:(int)orientation completionHandler:(id)handler
{
  v10 = *&orientation;
  height = dimensions.height;
  width = dimensions.width;
  typeCopy = type;
  intrinsicsCopy = intrinsics;
  handlerCopy = handler;
  agent = self->_agent;
  observationsCopy = observations;
  v21 = [(ObjectTrackingAgent *)agent getDockCoreObservationsWithDetectedObjectsInfo:info cameraPort:typeCopy];
  firstObject = [observationsCopy firstObject];

  if (firstObject && ([v21 count] || objc_msgSend(firstObject, "focusStrong")))
  {
    [(ObjectTrackingAgent *)self->_agent trackWithFocusObservation:firstObject metadata:MEMORY[0x277CBEBF8] image:0 cameraPortType:typeCopy cameraIntrinsics:intrinsicsCopy referenceDimensions:v10 orientation:width completionHandler:height, handlerCopy];
  }
}

- (void)trackWithDetectedObjectsInfo:(id)info image:(id)image cameraPortType:(id)type cameraIntrinsics:(id)intrinsics referenceDimensions:(CGSize)dimensions orientation:(int)orientation completionHandler:(id)handler
{
  v10 = *&orientation;
  height = dimensions.height;
  width = dimensions.width;
  imageCopy = image;
  agent = self->_agent;
  handlerCopy = handler;
  intrinsicsCopy = intrinsics;
  typeCopy = type;
  infoCopy = info;
  if ([(ObjectTrackingAgent *)agent customInferenceEnabled])
  {
    v22 = imageCopy;
  }

  else
  {
    v22 = 0;
  }

  [(ObjectTrackingAgent *)self->_agent trackWithDetectedObjectsInfo:infoCopy image:v22 cameraPortType:typeCopy cameraIntrinsics:intrinsicsCopy referenceDimensions:v10 orientation:handlerCopy completionHandler:width, height];
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