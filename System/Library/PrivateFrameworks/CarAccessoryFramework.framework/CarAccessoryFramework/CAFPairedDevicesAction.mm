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
- (void)connectDeviceWithIdentifier:(id)a3 completion:(id)a4;
- (void)disconnectDeviceWithIdentifier:(id)a3 completion:(id)a4;
- (void)forgetDeviceWithIdentifier:(id)a3 completion:(id)a4;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFPairedDevicesAction

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFPairedDevicesAction;
  objc_msgSendSuper2(&v2, sel_load);
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_28468B230])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFPairedDevicesAction;
  [(CAFService *)&v6 registerObserver:v5];
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_28468B230])
  {
    v5 = v4;
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

- (void)connectDeviceWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CAFPairedDevicesAction *)self connectDeviceControl];
  v9 = v8;
  if (v8)
  {
    [v8 connectDeviceWithIdentifier:v6 completion:v7];
  }

  else if (v7)
  {
    v10 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__CAFPairedDevicesAction_connectDeviceWithIdentifier_completion___block_invoke;
    block[3] = &unk_27890D5E8;
    v12 = v7;
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
  v2 = [(CAFPairedDevicesAction *)self connectDeviceControl];
  v3 = v2 != 0;

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

- (void)disconnectDeviceWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CAFPairedDevicesAction *)self disconnectDeviceControl];
  v9 = v8;
  if (v8)
  {
    [v8 disconnectDeviceWithIdentifier:v6 completion:v7];
  }

  else if (v7)
  {
    v10 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__CAFPairedDevicesAction_disconnectDeviceWithIdentifier_completion___block_invoke;
    block[3] = &unk_27890D5E8;
    v12 = v7;
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
  v2 = [(CAFPairedDevicesAction *)self disconnectDeviceControl];
  v3 = v2 != 0;

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

- (void)forgetDeviceWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CAFPairedDevicesAction *)self forgetDeviceControl];
  v9 = v8;
  if (v8)
  {
    [v8 forgetDeviceWithIdentifier:v6 completion:v7];
  }

  else if (v7)
  {
    v10 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__CAFPairedDevicesAction_forgetDeviceWithIdentifier_completion___block_invoke;
    block[3] = &unk_27890D5E8;
    v12 = v7;
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
  v2 = [(CAFPairedDevicesAction *)self forgetDeviceControl];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)registeredForConnectDevice
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 control:@"0x000000003600001A"];

  return v10;
}

- (BOOL)registeredForDisconnectDevice
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 control:@"0x000000003600001B"];

  return v10;
}

- (BOOL)registeredForForgetDevice
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 control:@"0x000000003600001C"];

  return v10;
}

@end