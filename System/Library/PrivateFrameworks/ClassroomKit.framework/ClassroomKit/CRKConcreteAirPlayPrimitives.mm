@interface CRKConcreteAirPlayPrimitives
- (CRKConcreteAirPlayPrimitives)initWithOutputContext:(id)a3 notificationCenter:(id)a4;
- (CRKOutputDevice)currentOutputDevice;
- (CRKOutputDevice)localOutputDevice;
- (id)beginOutputDeviceBrowsingSession;
- (id)observeCurrentOutputDeviceChangesWithHandler:(id)a3;
@end

@implementation CRKConcreteAirPlayPrimitives

- (CRKConcreteAirPlayPrimitives)initWithOutputContext:(id)a3 notificationCenter:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CRKConcreteAirPlayPrimitives;
  v9 = [(CRKConcreteAirPlayPrimitives *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_outputContext, a3);
    objc_storeStrong(&v10->_notificationCenter, a4);
  }

  return v10;
}

- (CRKOutputDevice)localOutputDevice
{
  v3 = [CRKConcreteOutputDevice alloc];
  v4 = [MEMORY[0x277CB86A0] sharedLocalDevice];
  v5 = [(CRKConcreteAirPlayPrimitives *)self outputContext];
  v6 = [(CRKConcreteOutputDevice *)v3 initWithOutputDevice:v4 outputContext:v5];

  return v6;
}

- (CRKOutputDevice)currentOutputDevice
{
  v3 = [CRKConcreteOutputDevice alloc];
  v4 = [(CRKConcreteAirPlayPrimitives *)self outputContext];
  v5 = [v4 outputDevice];
  v6 = [(CRKConcreteAirPlayPrimitives *)self outputContext];
  v7 = [(CRKConcreteOutputDevice *)v3 initWithOutputDevice:v5 outputContext:v6];

  return v7;
}

- (id)observeCurrentOutputDeviceChangesWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(CRKConcreteAirPlayPrimitives *)self notificationCenter];
  v6 = *MEMORY[0x277CB8628];
  v7 = [(CRKConcreteAirPlayPrimitives *)self outputContext];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__CRKConcreteAirPlayPrimitives_observeCurrentOutputDeviceChangesWithHandler___block_invoke;
  v11[3] = &unk_278DC11E0;
  v12 = v4;
  v8 = v4;
  v9 = [CRKNotificationObservation observationWithNotificationCenter:v5 notificationName:v6 object:v7 notificationHandler:v11];

  return v9;
}

- (id)beginOutputDeviceBrowsingSession
{
  v3 = [(CRKConcreteAirPlayPrimitives *)self outputContext];
  v4 = [(CRKConcreteAirPlayPrimitives *)self notificationCenter];
  v5 = [CRKConcreteOutputDeviceBrowsingSession sessionWithOutputContext:v3 notificationCenter:v4];

  return v5;
}

@end