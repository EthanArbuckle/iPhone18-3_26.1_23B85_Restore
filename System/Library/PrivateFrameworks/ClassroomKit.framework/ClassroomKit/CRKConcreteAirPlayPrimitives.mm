@interface CRKConcreteAirPlayPrimitives
- (CRKConcreteAirPlayPrimitives)initWithOutputContext:(id)context notificationCenter:(id)center;
- (CRKOutputDevice)currentOutputDevice;
- (CRKOutputDevice)localOutputDevice;
- (id)beginOutputDeviceBrowsingSession;
- (id)observeCurrentOutputDeviceChangesWithHandler:(id)handler;
@end

@implementation CRKConcreteAirPlayPrimitives

- (CRKConcreteAirPlayPrimitives)initWithOutputContext:(id)context notificationCenter:(id)center
{
  contextCopy = context;
  centerCopy = center;
  v12.receiver = self;
  v12.super_class = CRKConcreteAirPlayPrimitives;
  v9 = [(CRKConcreteAirPlayPrimitives *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_outputContext, context);
    objc_storeStrong(&v10->_notificationCenter, center);
  }

  return v10;
}

- (CRKOutputDevice)localOutputDevice
{
  v3 = [CRKConcreteOutputDevice alloc];
  mEMORY[0x277CB86A0] = [MEMORY[0x277CB86A0] sharedLocalDevice];
  outputContext = [(CRKConcreteAirPlayPrimitives *)self outputContext];
  v6 = [(CRKConcreteOutputDevice *)v3 initWithOutputDevice:mEMORY[0x277CB86A0] outputContext:outputContext];

  return v6;
}

- (CRKOutputDevice)currentOutputDevice
{
  v3 = [CRKConcreteOutputDevice alloc];
  outputContext = [(CRKConcreteAirPlayPrimitives *)self outputContext];
  outputDevice = [outputContext outputDevice];
  outputContext2 = [(CRKConcreteAirPlayPrimitives *)self outputContext];
  v7 = [(CRKConcreteOutputDevice *)v3 initWithOutputDevice:outputDevice outputContext:outputContext2];

  return v7;
}

- (id)observeCurrentOutputDeviceChangesWithHandler:(id)handler
{
  handlerCopy = handler;
  notificationCenter = [(CRKConcreteAirPlayPrimitives *)self notificationCenter];
  v6 = *MEMORY[0x277CB8628];
  outputContext = [(CRKConcreteAirPlayPrimitives *)self outputContext];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__CRKConcreteAirPlayPrimitives_observeCurrentOutputDeviceChangesWithHandler___block_invoke;
  v11[3] = &unk_278DC11E0;
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = [CRKNotificationObservation observationWithNotificationCenter:notificationCenter notificationName:v6 object:outputContext notificationHandler:v11];

  return v9;
}

- (id)beginOutputDeviceBrowsingSession
{
  outputContext = [(CRKConcreteAirPlayPrimitives *)self outputContext];
  notificationCenter = [(CRKConcreteAirPlayPrimitives *)self notificationCenter];
  v5 = [CRKConcreteOutputDeviceBrowsingSession sessionWithOutputContext:outputContext notificationCenter:notificationCenter];

  return v5;
}

@end