@interface CAFTirePressureMonitoringSystem
+ (void)load;
- (BOOL)hasReset;
- (BOOL)registeredForReset;
- (CAFResetControl)resetControl;
- (void)registerObserver:(id)observer;
- (void)resetWithCompletion:(id)completion;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFTirePressureMonitoringSystem

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFTirePressureMonitoringSystem;
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
  v6.super_class = CAFTirePressureMonitoringSystem;
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

- (void)resetWithCompletion:(id)completion
{
  completionCopy = completion;
  resetControl = [(CAFTirePressureMonitoringSystem *)self resetControl];
  v6 = resetControl;
  if (resetControl)
  {
    [resetControl resetWithCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    v7 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__CAFTirePressureMonitoringSystem_resetWithCompletion___block_invoke;
    block[3] = &unk_27890D5E8;
    v9 = completionCopy;
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
  resetControl = [(CAFTirePressureMonitoringSystem *)self resetControl];
  v3 = resetControl != 0;

  return v3;
}

- (BOOL)registeredForReset
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier control:@"0x0000000030000062"];

  return v10;
}

@end