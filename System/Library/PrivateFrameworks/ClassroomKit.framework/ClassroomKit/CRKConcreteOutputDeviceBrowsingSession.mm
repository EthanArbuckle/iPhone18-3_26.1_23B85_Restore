@interface CRKConcreteOutputDeviceBrowsingSession
+ (id)sessionWithOutputContext:(id)context notificationCenter:(id)center;
- (CRKConcreteOutputDeviceBrowsingSession)initWithDiscoverySession:(id)session outputContext:(id)context notificationCenter:(id)center;
- (NSArray)outputDevices;
- (id)observeBrowsedOutputDeviceChangesWithHandler:(id)handler;
- (void)invalidate;
@end

@implementation CRKConcreteOutputDeviceBrowsingSession

- (CRKConcreteOutputDeviceBrowsingSession)initWithDiscoverySession:(id)session outputContext:(id)context notificationCenter:(id)center
{
  sessionCopy = session;
  contextCopy = context;
  centerCopy = center;
  v15.receiver = self;
  v15.super_class = CRKConcreteOutputDeviceBrowsingSession;
  v12 = [(CRKConcreteOutputDeviceBrowsingSession *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_discoverySession, session);
    objc_storeStrong(&v13->_outputContext, context);
    objc_storeStrong(&v13->_notificationCenter, center);
  }

  return v13;
}

+ (id)sessionWithOutputContext:(id)context notificationCenter:(id)center
{
  v6 = MEMORY[0x277CB86B0];
  centerCopy = center;
  contextCopy = context;
  v9 = [[v6 alloc] initWithDeviceFeatures:2];
  [v9 setDiscoveryMode:2];
  v10 = [[self alloc] initWithDiscoverySession:v9 outputContext:contextCopy notificationCenter:centerCopy];

  return v10;
}

- (NSArray)outputDevices
{
  discoverySession = [(CRKConcreteOutputDeviceBrowsingSession *)self discoverySession];
  availableOutputDevicesObject = [discoverySession availableOutputDevicesObject];

  recentlyUsedDevices = [availableOutputDevicesObject recentlyUsedDevices];
  otherDevices = [availableOutputDevicesObject otherDevices];
  v7 = [recentlyUsedDevices arrayByAddingObjectsFromArray:otherDevices];

  v8 = [MEMORY[0x277CBEB98] setWithArray:v7];
  allObjects = [v8 allObjects];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__CRKConcreteOutputDeviceBrowsingSession_outputDevices__block_invoke;
  v12[3] = &unk_278DC3578;
  v12[4] = self;
  v10 = [allObjects crk_mapUsingBlock:v12];

  return v10;
}

CRKConcreteOutputDevice *__55__CRKConcreteOutputDeviceBrowsingSession_outputDevices__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CRKConcreteOutputDevice alloc];
  v5 = [*(a1 + 32) outputContext];
  v6 = [(CRKConcreteOutputDevice *)v4 initWithOutputDevice:v3 outputContext:v5];

  return v6;
}

- (id)observeBrowsedOutputDeviceChangesWithHandler:(id)handler
{
  handlerCopy = handler;
  notificationCenter = [(CRKConcreteOutputDeviceBrowsingSession *)self notificationCenter];
  v6 = *MEMORY[0x277CB8668];
  discoverySession = [(CRKConcreteOutputDeviceBrowsingSession *)self discoverySession];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __87__CRKConcreteOutputDeviceBrowsingSession_observeBrowsedOutputDeviceChangesWithHandler___block_invoke;
  v11[3] = &unk_278DC11E0;
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = [CRKNotificationObservation observationWithNotificationCenter:notificationCenter notificationName:v6 object:discoverySession notificationHandler:v11];

  return v9;
}

- (void)invalidate
{
  discoverySession = [(CRKConcreteOutputDeviceBrowsingSession *)self discoverySession];
  [discoverySession setDiscoveryMode:0];
}

@end