@interface CAFTestControlSync
+ (void)load;
- (BOOL)hasTestAccRequestNoParams;
- (BOOL)hasTestAccRequestWithReqAndResParams;
- (BOOL)hasTestAccRequestWithReqParams;
- (BOOL)hasTestAccRequestWithResParams;
- (BOOL)hasTestDevRequestNoParams;
- (BOOL)hasTestDevRequestWithReqAndResParams;
- (BOOL)hasTestDevRequestWithReqParams;
- (BOOL)hasTestDevRequestWithResParams;
- (BOOL)registeredForTestAccRequestNoParams;
- (BOOL)registeredForTestAccRequestWithReqAndResParams;
- (BOOL)registeredForTestAccRequestWithReqParams;
- (BOOL)registeredForTestAccRequestWithResParams;
- (BOOL)registeredForTestDevRequestNoParams;
- (BOOL)registeredForTestDevRequestWithReqAndResParams;
- (BOOL)registeredForTestDevRequestWithReqParams;
- (BOOL)registeredForTestDevRequestWithResParams;
- (BOOL)testDevRequestNoParamsDisabled;
- (BOOL)testDevRequestNoParamsError;
- (BOOL)testDevRequestWithReqAndResParamsDisabled;
- (BOOL)testDevRequestWithReqAndResParamsError;
- (BOOL)testDevRequestWithReqParamsDisabled;
- (BOOL)testDevRequestWithReqParamsError;
- (BOOL)testDevRequestWithResParamsDisabled;
- (BOOL)testDevRequestWithResParamsError;
- (CAFTestAccRequestNoParamsControl)testAccRequestNoParamsControl;
- (CAFTestAccRequestWithReqAndResParamsControl)testAccRequestWithReqAndResParamsControl;
- (CAFTestAccRequestWithReqParamsControl)testAccRequestWithReqParamsControl;
- (CAFTestAccRequestWithResParamsControl)testAccRequestWithResParamsControl;
- (CAFTestDevRequestNoParamsControl)testDevRequestNoParamsControl;
- (CAFTestDevRequestWithReqAndResParamsControl)testDevRequestWithReqAndResParamsControl;
- (CAFTestDevRequestWithReqParamsControl)testDevRequestWithReqParamsControl;
- (CAFTestDevRequestWithResParamsControl)testDevRequestWithResParamsControl;
- (id)testAccRequestNoParamsHandler;
- (id)testAccRequestWithReqAndResParamsHandler;
- (id)testAccRequestWithReqParamsHandler;
- (id)testAccRequestWithResParamsHandler;
- (void)_controlDidUpdate:(id)update;
- (void)registerObserver:(id)observer;
- (void)setTestAccRequestNoParamsHandler:(id)handler;
- (void)setTestAccRequestWithReqAndResParamsHandler:(id)handler;
- (void)setTestAccRequestWithReqParamsHandler:(id)handler;
- (void)setTestAccRequestWithResParamsHandler:(id)handler;
- (void)testDevRequestNoParamsWithCompletion:(id)completion;
- (void)testDevRequestWithResParamsWithCompletion:(id)completion;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFTestControlSync

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFTestControlSync;
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
  v6.super_class = CAFTestControlSync;
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
  v6.super_class = CAFTestControlSync;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFTestDevRequestNoParamsControl)testDevRequestNoParamsControl
{
  objc_opt_class();
  v3 = [(CAFService *)self controlForType:@"0x00000000FF000028"];
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

- (void)testDevRequestNoParamsWithCompletion:(id)completion
{
  completionCopy = completion;
  testDevRequestNoParamsControl = [(CAFTestControlSync *)self testDevRequestNoParamsControl];
  v6 = testDevRequestNoParamsControl;
  if (testDevRequestNoParamsControl)
  {
    [testDevRequestNoParamsControl testDevRequestNoParamsWithCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    v7 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__CAFTestControlSync_testDevRequestNoParamsWithCompletion___block_invoke;
    block[3] = &unk_27890D5E8;
    v9 = completionCopy;
    dispatch_async(v7, block);
  }
}

void __59__CAFTestControlSync_testDevRequestNoParamsWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:9 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

- (BOOL)hasTestDevRequestNoParams
{
  testDevRequestNoParamsControl = [(CAFTestControlSync *)self testDevRequestNoParamsControl];
  v3 = testDevRequestNoParamsControl != 0;

  return v3;
}

- (BOOL)testDevRequestNoParamsError
{
  testDevRequestNoParamsControl = [(CAFTestControlSync *)self testDevRequestNoParamsControl];
  hasErrorState = [testDevRequestNoParamsControl hasErrorState];

  return hasErrorState;
}

- (BOOL)testDevRequestNoParamsDisabled
{
  testDevRequestNoParamsControl = [(CAFTestControlSync *)self testDevRequestNoParamsControl];
  isDisabled = [testDevRequestNoParamsControl isDisabled];

  return isDisabled;
}

- (CAFTestDevRequestWithReqParamsControl)testDevRequestWithReqParamsControl
{
  objc_opt_class();
  v3 = [(CAFService *)self controlForType:@"0x00000000FF000029"];
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

void __86__CAFTestControlSync_testDevRequestWithReqParamsWithTestInput1_testInput2_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:9 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

- (BOOL)hasTestDevRequestWithReqParams
{
  testDevRequestWithReqParamsControl = [(CAFTestControlSync *)self testDevRequestWithReqParamsControl];
  v3 = testDevRequestWithReqParamsControl != 0;

  return v3;
}

- (BOOL)testDevRequestWithReqParamsError
{
  testDevRequestWithReqParamsControl = [(CAFTestControlSync *)self testDevRequestWithReqParamsControl];
  hasErrorState = [testDevRequestWithReqParamsControl hasErrorState];

  return hasErrorState;
}

- (BOOL)testDevRequestWithReqParamsDisabled
{
  testDevRequestWithReqParamsControl = [(CAFTestControlSync *)self testDevRequestWithReqParamsControl];
  isDisabled = [testDevRequestWithReqParamsControl isDisabled];

  return isDisabled;
}

- (CAFTestDevRequestWithResParamsControl)testDevRequestWithResParamsControl
{
  objc_opt_class();
  v3 = [(CAFService *)self controlForType:@"0x00000000FF00002A"];
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

- (void)testDevRequestWithResParamsWithCompletion:(id)completion
{
  completionCopy = completion;
  testDevRequestWithResParamsControl = [(CAFTestControlSync *)self testDevRequestWithResParamsControl];
  v6 = testDevRequestWithResParamsControl;
  if (testDevRequestWithResParamsControl)
  {
    [testDevRequestWithResParamsControl testDevRequestWithResParamsWithCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    v7 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__CAFTestControlSync_testDevRequestWithResParamsWithCompletion___block_invoke;
    block[3] = &unk_27890D5E8;
    v9 = completionCopy;
    dispatch_async(v7, block);
  }
}

void __64__CAFTestControlSync_testDevRequestWithResParamsWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:9 userInfo:0];
  (*(v1 + 16))(v1, 0, MEMORY[0x277CBEBF8], v2);
}

- (BOOL)hasTestDevRequestWithResParams
{
  testDevRequestWithResParamsControl = [(CAFTestControlSync *)self testDevRequestWithResParamsControl];
  v3 = testDevRequestWithResParamsControl != 0;

  return v3;
}

- (BOOL)testDevRequestWithResParamsError
{
  testDevRequestWithResParamsControl = [(CAFTestControlSync *)self testDevRequestWithResParamsControl];
  hasErrorState = [testDevRequestWithResParamsControl hasErrorState];

  return hasErrorState;
}

- (BOOL)testDevRequestWithResParamsDisabled
{
  testDevRequestWithResParamsControl = [(CAFTestControlSync *)self testDevRequestWithResParamsControl];
  isDisabled = [testDevRequestWithResParamsControl isDisabled];

  return isDisabled;
}

- (CAFTestDevRequestWithReqAndResParamsControl)testDevRequestWithReqAndResParamsControl
{
  objc_opt_class();
  v3 = [(CAFService *)self controlForType:@"0x00000000FF00002B"];
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

void __92__CAFTestControlSync_testDevRequestWithReqAndResParamsWithTestInput5_testInput6_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:9 userInfo:0];
  (*(v1 + 16))(v1, 0, MEMORY[0x277CBEBF8], v2);
}

- (BOOL)hasTestDevRequestWithReqAndResParams
{
  testDevRequestWithReqAndResParamsControl = [(CAFTestControlSync *)self testDevRequestWithReqAndResParamsControl];
  v3 = testDevRequestWithReqAndResParamsControl != 0;

  return v3;
}

- (BOOL)testDevRequestWithReqAndResParamsError
{
  testDevRequestWithReqAndResParamsControl = [(CAFTestControlSync *)self testDevRequestWithReqAndResParamsControl];
  hasErrorState = [testDevRequestWithReqAndResParamsControl hasErrorState];

  return hasErrorState;
}

- (BOOL)testDevRequestWithReqAndResParamsDisabled
{
  testDevRequestWithReqAndResParamsControl = [(CAFTestControlSync *)self testDevRequestWithReqAndResParamsControl];
  isDisabled = [testDevRequestWithReqAndResParamsControl isDisabled];

  return isDisabled;
}

- (CAFTestAccRequestNoParamsControl)testAccRequestNoParamsControl
{
  objc_opt_class();
  v3 = [(CAFService *)self controlForType:@"0x00000000FF00002E"];
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

- (id)testAccRequestNoParamsHandler
{
  testAccRequestNoParamsControl = [(CAFTestControlSync *)self testAccRequestNoParamsControl];
  handler = [testAccRequestNoParamsControl handler];

  return handler;
}

- (void)setTestAccRequestNoParamsHandler:(id)handler
{
  handlerCopy = handler;
  testAccRequestNoParamsControl = [(CAFTestControlSync *)self testAccRequestNoParamsControl];
  [testAccRequestNoParamsControl setHandler:handlerCopy];
}

- (BOOL)hasTestAccRequestNoParams
{
  testAccRequestNoParamsControl = [(CAFTestControlSync *)self testAccRequestNoParamsControl];
  v3 = testAccRequestNoParamsControl != 0;

  return v3;
}

- (CAFTestAccRequestWithReqParamsControl)testAccRequestWithReqParamsControl
{
  objc_opt_class();
  v3 = [(CAFService *)self controlForType:@"0x00000000FF00002F"];
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

- (id)testAccRequestWithReqParamsHandler
{
  testAccRequestWithReqParamsControl = [(CAFTestControlSync *)self testAccRequestWithReqParamsControl];
  handler = [testAccRequestWithReqParamsControl handler];

  return handler;
}

- (void)setTestAccRequestWithReqParamsHandler:(id)handler
{
  handlerCopy = handler;
  testAccRequestWithReqParamsControl = [(CAFTestControlSync *)self testAccRequestWithReqParamsControl];
  [testAccRequestWithReqParamsControl setHandler:handlerCopy];
}

- (BOOL)hasTestAccRequestWithReqParams
{
  testAccRequestWithReqParamsControl = [(CAFTestControlSync *)self testAccRequestWithReqParamsControl];
  v3 = testAccRequestWithReqParamsControl != 0;

  return v3;
}

- (CAFTestAccRequestWithResParamsControl)testAccRequestWithResParamsControl
{
  objc_opt_class();
  v3 = [(CAFService *)self controlForType:@"0x00000000FF000030"];
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

- (id)testAccRequestWithResParamsHandler
{
  testAccRequestWithResParamsControl = [(CAFTestControlSync *)self testAccRequestWithResParamsControl];
  handler = [testAccRequestWithResParamsControl handler];

  return handler;
}

- (void)setTestAccRequestWithResParamsHandler:(id)handler
{
  handlerCopy = handler;
  testAccRequestWithResParamsControl = [(CAFTestControlSync *)self testAccRequestWithResParamsControl];
  [testAccRequestWithResParamsControl setHandler:handlerCopy];
}

- (BOOL)hasTestAccRequestWithResParams
{
  testAccRequestWithResParamsControl = [(CAFTestControlSync *)self testAccRequestWithResParamsControl];
  v3 = testAccRequestWithResParamsControl != 0;

  return v3;
}

- (CAFTestAccRequestWithReqAndResParamsControl)testAccRequestWithReqAndResParamsControl
{
  objc_opt_class();
  v3 = [(CAFService *)self controlForType:@"0x00000000FF000031"];
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

- (id)testAccRequestWithReqAndResParamsHandler
{
  testAccRequestWithReqAndResParamsControl = [(CAFTestControlSync *)self testAccRequestWithReqAndResParamsControl];
  handler = [testAccRequestWithReqAndResParamsControl handler];

  return handler;
}

- (void)setTestAccRequestWithReqAndResParamsHandler:(id)handler
{
  handlerCopy = handler;
  testAccRequestWithReqAndResParamsControl = [(CAFTestControlSync *)self testAccRequestWithReqAndResParamsControl];
  [testAccRequestWithReqAndResParamsControl setHandler:handlerCopy];
}

- (BOOL)hasTestAccRequestWithReqAndResParams
{
  testAccRequestWithReqAndResParamsControl = [(CAFTestControlSync *)self testAccRequestWithReqAndResParamsControl];
  v3 = testAccRequestWithReqAndResParamsControl != 0;

  return v3;
}

- (void)_controlDidUpdate:(id)update
{
  updateCopy = update;
  controlType = [updateCopy controlType];
  if ([controlType isEqual:@"0x00000000FF000028"])
  {
    uniqueIdentifier = [updateCopy uniqueIdentifier];
    testDevRequestNoParamsControl = [(CAFTestControlSync *)self testDevRequestNoParamsControl];
    uniqueIdentifier2 = [testDevRequestNoParamsControl uniqueIdentifier];
    v9 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if (v9)
    {
      observers = [(CAFService *)self observers];
      [observers testControlSyncServiceDidUpdateTestDevRequestNoParams:self];
LABEL_16:

      goto LABEL_17;
    }
  }

  else
  {
  }

  controlType2 = [updateCopy controlType];
  if ([controlType2 isEqual:@"0x00000000FF000029"])
  {
    uniqueIdentifier3 = [updateCopy uniqueIdentifier];
    testDevRequestWithReqParamsControl = [(CAFTestControlSync *)self testDevRequestWithReqParamsControl];
    uniqueIdentifier4 = [testDevRequestWithReqParamsControl uniqueIdentifier];
    v15 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

    if (v15)
    {
      observers = [(CAFService *)self observers];
      [observers testControlSyncServiceDidUpdateTestDevRequestWithReqParams:self];
      goto LABEL_16;
    }
  }

  else
  {
  }

  controlType3 = [updateCopy controlType];
  if ([controlType3 isEqual:@"0x00000000FF00002A"])
  {
    uniqueIdentifier5 = [updateCopy uniqueIdentifier];
    testDevRequestWithResParamsControl = [(CAFTestControlSync *)self testDevRequestWithResParamsControl];
    uniqueIdentifier6 = [testDevRequestWithResParamsControl uniqueIdentifier];
    v20 = [uniqueIdentifier5 isEqual:uniqueIdentifier6];

    if (v20)
    {
      observers = [(CAFService *)self observers];
      [observers testControlSyncServiceDidUpdateTestDevRequestWithResParams:self];
      goto LABEL_16;
    }
  }

  else
  {
  }

  observers = [updateCopy controlType];
  if (![observers isEqual:@"0x00000000FF00002B"])
  {
    goto LABEL_16;
  }

  uniqueIdentifier7 = [updateCopy uniqueIdentifier];
  testDevRequestWithReqAndResParamsControl = [(CAFTestControlSync *)self testDevRequestWithReqAndResParamsControl];
  uniqueIdentifier8 = [testDevRequestWithReqAndResParamsControl uniqueIdentifier];
  v24 = [uniqueIdentifier7 isEqual:uniqueIdentifier8];

  if (v24)
  {
    observers = [(CAFService *)self observers];
    [observers testControlSyncServiceDidUpdateTestDevRequestWithReqAndResParams:self];
    goto LABEL_16;
  }

LABEL_17:
  v25.receiver = self;
  v25.super_class = CAFTestControlSync;
  [(CAFService *)&v25 _controlDidUpdate:updateCopy];
}

- (BOOL)registeredForTestDevRequestNoParams
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier control:@"0x00000000FF000028"];

  return v10;
}

- (BOOL)registeredForTestDevRequestWithReqParams
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier control:@"0x00000000FF000029"];

  return v10;
}

- (BOOL)registeredForTestDevRequestWithResParams
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier control:@"0x00000000FF00002A"];

  return v10;
}

- (BOOL)registeredForTestDevRequestWithReqAndResParams
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier control:@"0x00000000FF00002B"];

  return v10;
}

- (BOOL)registeredForTestAccRequestNoParams
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier control:@"0x00000000FF00002E"];

  return v10;
}

- (BOOL)registeredForTestAccRequestWithReqParams
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier control:@"0x00000000FF00002F"];

  return v10;
}

- (BOOL)registeredForTestAccRequestWithResParams
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier control:@"0x00000000FF000030"];

  return v10;
}

- (BOOL)registeredForTestAccRequestWithReqAndResParams
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier control:@"0x00000000FF000031"];

  return v10;
}

@end