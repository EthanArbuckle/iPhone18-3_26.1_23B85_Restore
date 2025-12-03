@interface CAFPairedDevicesAction
+ (void)load;
- (BOOL)hasConnectDevice;
- (BOOL)hasDisconnectDevice;
- (BOOL)hasForgetDevice;
- (BOOL)registeredForConnectDevice;
- (BOOL)registeredForDisconnectDevice;
- (BOOL)registeredForForgetDevice;
- (CAFConnectDeviceControl)connectDeviceControl;
- (CAFDisconnectDeviceControl)disconnectDeviceControl;
- (CAFForgetDeviceControl)forgetDeviceControl;
- (void)connectDeviceWithIdentifier:(id)identifier completion:(id)completion;
- (void)disconnectDeviceWithIdentifier:(id)identifier completion:(id)completion;
- (void)forgetDeviceWithIdentifier:(id)identifier completion:(id)completion;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFPairedDevicesAction

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFPairedDevicesAction;
  objc_msgSendSuper2(&v2, sel_load);
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  if ([observerCopy conformsToProtocol:&unk_28468B230])
  {
    v5 = observerCopy;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFPairedDevicesAction;
  [(CAFService *)&v6 registerObserver:v5];
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  if ([observerCopy conformsToProtocol:&unk_28468B230])
  {
    v5 = observerCopy;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFPairedDevicesAction;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFConnectDeviceControl)connectDeviceControl
{
  objc_opt_class();
  v3 = [(CAFService *)self controlForType:@"0x000000003600001A"];
  if (v3 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)connectDeviceWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  connectDeviceControl = [(CAFPairedDevicesAction *)self connectDeviceControl];
  v9 = connectDeviceControl;
  if (connectDeviceControl)
  {
    [connectDeviceControl connectDeviceWithIdentifier:identifierCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    v10 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__CAFPairedDevicesAction_connectDeviceWithIdentifier_completion___block_invoke;
    block[3] = &unk_27890D5E8;
    v12 = completionCopy;
    dispatch_async(v10, block);
  }
}

void __65__CAFPairedDevicesAction_connectDeviceWithIdentifier_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:9 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

- (BOOL)hasConnectDevice
{
  connectDeviceControl = [(CAFPairedDevicesAction *)self connectDeviceControl];
  v3 = connectDeviceControl != 0;

  return v3;
}

- (CAFDisconnectDeviceControl)disconnectDeviceControl
{
  objc_opt_class();
  v3 = [(CAFService *)self controlForType:@"0x000000003600001B"];
  if (v3 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)disconnectDeviceWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  disconnectDeviceControl = [(CAFPairedDevicesAction *)self disconnectDeviceControl];
  v9 = disconnectDeviceControl;
  if (disconnectDeviceControl)
  {
    [disconnectDeviceControl disconnectDeviceWithIdentifier:identifierCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    v10 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__CAFPairedDevicesAction_disconnectDeviceWithIdentifier_completion___block_invoke;
    block[3] = &unk_27890D5E8;
    v12 = completionCopy;
    dispatch_async(v10, block);
  }
}

void __68__CAFPairedDevicesAction_disconnectDeviceWithIdentifier_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:9 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

- (BOOL)hasDisconnectDevice
{
  disconnectDeviceControl = [(CAFPairedDevicesAction *)self disconnectDeviceControl];
  v3 = disconnectDeviceControl != 0;

  return v3;
}

- (CAFForgetDeviceControl)forgetDeviceControl
{
  objc_opt_class();
  v3 = [(CAFService *)self controlForType:@"0x000000003600001C"];
  if (v3 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)forgetDeviceWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  forgetDeviceControl = [(CAFPairedDevicesAction *)self forgetDeviceControl];
  v9 = forgetDeviceControl;
  if (forgetDeviceControl)
  {
    [forgetDeviceControl forgetDeviceWithIdentifier:identifierCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    v10 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__CAFPairedDevicesAction_forgetDeviceWithIdentifier_completion___block_invoke;
    block[3] = &unk_27890D5E8;
    v12 = completionCopy;
    dispatch_async(v10, block);
  }
}

void __64__CAFPairedDevicesAction_forgetDeviceWithIdentifier_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:9 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

- (BOOL)hasForgetDevice
{
  forgetDeviceControl = [(CAFPairedDevicesAction *)self forgetDeviceControl];
  v3 = forgetDeviceControl != 0;

  return v3;
}

- (BOOL)registeredForConnectDevice
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier control:@"0x000000003600001A"];

  return v10;
}

- (BOOL)registeredForDisconnectDevice
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier control:@"0x000000003600001B"];

  return v10;
}

- (BOOL)registeredForForgetDevice
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier control:@"0x000000003600001C"];

  return v10;
}

@end