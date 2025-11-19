@interface CAFTirePressureMonitoringSystem
+ (void)load;
- (BOOL)hasReset;
- (BOOL)registeredForReset;
- (CAFResetControl)resetControl;
- (void)registerObserver:(id)a3;
- (void)resetWithCompletion:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFTirePressureMonitoringSystem

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFTirePressureMonitoringSystem;
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
  v6.super_class = CAFTirePressureMonitoringSystem;
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
  v6.super_class = CAFTirePressureMonitoringSystem;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFResetControl)resetControl
{
  objc_opt_class();
  v3 = [(CAFService *)self controlForType:@"0x0000000030000062"];
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

- (void)resetWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CAFTirePressureMonitoringSystem *)self resetControl];
  v6 = v5;
  if (v5)
  {
    [v5 resetWithCompletion:v4];
  }

  else if (v4)
  {
    v7 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__CAFTirePressureMonitoringSystem_resetWithCompletion___block_invoke;
    block[3] = &unk_27890D5E8;
    v9 = v4;
    dispatch_async(v7, block);
  }
}

void __55__CAFTirePressureMonitoringSystem_resetWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:9 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

- (BOOL)hasReset
{
  v2 = [(CAFTirePressureMonitoringSystem *)self resetControl];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)registeredForReset
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 control:@"0x0000000030000062"];

  return v10;
}

@end