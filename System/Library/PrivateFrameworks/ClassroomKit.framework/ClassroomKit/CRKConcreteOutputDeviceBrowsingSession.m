@interface CRKConcreteOutputDeviceBrowsingSession
+ (id)sessionWithOutputContext:(id)a3 notificationCenter:(id)a4;
- (CRKConcreteOutputDeviceBrowsingSession)initWithDiscoverySession:(id)a3 outputContext:(id)a4 notificationCenter:(id)a5;
- (NSArray)outputDevices;
- (id)observeBrowsedOutputDeviceChangesWithHandler:(id)a3;
- (void)invalidate;
@end

@implementation CRKConcreteOutputDeviceBrowsingSession

- (CRKConcreteOutputDeviceBrowsingSession)initWithDiscoverySession:(id)a3 outputContext:(id)a4 notificationCenter:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CRKConcreteOutputDeviceBrowsingSession;
  v12 = [(CRKConcreteOutputDeviceBrowsingSession *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_discoverySession, a3);
    objc_storeStrong(&v13->_outputContext, a4);
    objc_storeStrong(&v13->_notificationCenter, a5);
  }

  return v13;
}

+ (id)sessionWithOutputContext:(id)a3 notificationCenter:(id)a4
{
  v6 = MEMORY[0x277CB86B0];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithDeviceFeatures:2];
  [v9 setDiscoveryMode:2];
  v10 = [[a1 alloc] initWithDiscoverySession:v9 outputContext:v8 notificationCenter:v7];

  return v10;
}

- (NSArray)outputDevices
{
  v3 = [(CRKConcreteOutputDeviceBrowsingSession *)self discoverySession];
  v4 = [v3 availableOutputDevicesObject];

  v5 = [v4 recentlyUsedDevices];
  v6 = [v4 otherDevices];
  v7 = [v5 arrayByAddingObjectsFromArray:v6];

  v8 = [MEMORY[0x277CBEB98] setWithArray:v7];
  v9 = [v8 allObjects];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__CRKConcreteOutputDeviceBrowsingSession_outputDevices__block_invoke;
  v12[3] = &unk_278DC3578;
  v12[4] = self;
  v10 = [v9 crk_mapUsingBlock:v12];

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

- (id)observeBrowsedOutputDeviceChangesWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(CRKConcreteOutputDeviceBrowsingSession *)self notificationCenter];
  v6 = *MEMORY[0x277CB8668];
  v7 = [(CRKConcreteOutputDeviceBrowsingSession *)self discoverySession];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __87__CRKConcreteOutputDeviceBrowsingSession_observeBrowsedOutputDeviceChangesWithHandler___block_invoke;
  v11[3] = &unk_278DC11E0;
  v12 = v4;
  v8 = v4;
  v9 = [CRKNotificationObservation observationWithNotificationCenter:v5 notificationName:v6 object:v7 notificationHandler:v11];

  return v9;
}

- (void)invalidate
{
  v2 = [(CRKConcreteOutputDeviceBrowsingSession *)self discoverySession];
  [v2 setDiscoveryMode:0];
}

@end