@interface CAFTestControlEvent
+ (void)load;
- (BOOL)hasTestAccEventNoParams;
- (BOOL)hasTestAccEventWithParams;
- (BOOL)hasTestDevEventNoParams;
- (BOOL)hasTestDevEventWithParams;
- (BOOL)registeredForTestAccEventNoParams;
- (BOOL)registeredForTestAccEventWithParams;
- (BOOL)registeredForTestDevEventNoParams;
- (BOOL)registeredForTestDevEventWithParams;
- (BOOL)testDevEventNoParamsDisabled;
- (BOOL)testDevEventNoParamsError;
- (BOOL)testDevEventWithParamsDisabled;
- (BOOL)testDevEventWithParamsError;
- (CAFTestAccEventNoParamsControl)testAccEventNoParamsControl;
- (CAFTestAccEventWithParamsControl)testAccEventWithParamsControl;
- (CAFTestDevEventNoParamsControl)testDevEventNoParamsControl;
- (CAFTestDevEventWithParamsControl)testDevEventWithParamsControl;
- (id)testAccEventNoParamsHandler;
- (id)testAccEventWithParamsHandler;
- (void)_controlDidUpdate:(id)update;
- (void)registerObserver:(id)observer;
- (void)setTestAccEventNoParamsHandler:(id)handler;
- (void)setTestAccEventWithParamsHandler:(id)handler;
- (void)testDevEventNoParams;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFTestControlEvent

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFTestControlEvent;
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
  v6.super_class = CAFTestControlEvent;
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
  v6.super_class = CAFTestControlEvent;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFTestDevEventNoParamsControl)testDevEventNoParamsControl
{
  objc_opt_class();
  v3 = [(CAFService *)self controlForType:@"0x00000000FF00002C"];
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

- (void)testDevEventNoParams
{
  testDevEventNoParamsControl = [(CAFTestControlEvent *)self testDevEventNoParamsControl];
  if (testDevEventNoParamsControl)
  {
    v3 = testDevEventNoParamsControl;
    [testDevEventNoParamsControl testDevEventNoParams];
    testDevEventNoParamsControl = v3;
  }
}

- (BOOL)hasTestDevEventNoParams
{
  testDevEventNoParamsControl = [(CAFTestControlEvent *)self testDevEventNoParamsControl];
  v3 = testDevEventNoParamsControl != 0;

  return v3;
}

- (BOOL)testDevEventNoParamsError
{
  testDevEventNoParamsControl = [(CAFTestControlEvent *)self testDevEventNoParamsControl];
  hasErrorState = [testDevEventNoParamsControl hasErrorState];

  return hasErrorState;
}

- (BOOL)testDevEventNoParamsDisabled
{
  testDevEventNoParamsControl = [(CAFTestControlEvent *)self testDevEventNoParamsControl];
  isDisabled = [testDevEventNoParamsControl isDisabled];

  return isDisabled;
}

- (CAFTestDevEventWithParamsControl)testDevEventWithParamsControl
{
  objc_opt_class();
  v3 = [(CAFService *)self controlForType:@"0x00000000FF00002D"];
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

- (BOOL)hasTestDevEventWithParams
{
  testDevEventWithParamsControl = [(CAFTestControlEvent *)self testDevEventWithParamsControl];
  v3 = testDevEventWithParamsControl != 0;

  return v3;
}

- (BOOL)testDevEventWithParamsError
{
  testDevEventWithParamsControl = [(CAFTestControlEvent *)self testDevEventWithParamsControl];
  hasErrorState = [testDevEventWithParamsControl hasErrorState];

  return hasErrorState;
}

- (BOOL)testDevEventWithParamsDisabled
{
  testDevEventWithParamsControl = [(CAFTestControlEvent *)self testDevEventWithParamsControl];
  isDisabled = [testDevEventWithParamsControl isDisabled];

  return isDisabled;
}

- (CAFTestAccEventNoParamsControl)testAccEventNoParamsControl
{
  objc_opt_class();
  v3 = [(CAFService *)self controlForType:@"0x00000000FF000032"];
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

- (id)testAccEventNoParamsHandler
{
  testAccEventNoParamsControl = [(CAFTestControlEvent *)self testAccEventNoParamsControl];
  handler = [testAccEventNoParamsControl handler];

  return handler;
}

- (void)setTestAccEventNoParamsHandler:(id)handler
{
  handlerCopy = handler;
  testAccEventNoParamsControl = [(CAFTestControlEvent *)self testAccEventNoParamsControl];
  [testAccEventNoParamsControl setHandler:handlerCopy];
}

- (BOOL)hasTestAccEventNoParams
{
  testAccEventNoParamsControl = [(CAFTestControlEvent *)self testAccEventNoParamsControl];
  v3 = testAccEventNoParamsControl != 0;

  return v3;
}

- (CAFTestAccEventWithParamsControl)testAccEventWithParamsControl
{
  objc_opt_class();
  v3 = [(CAFService *)self controlForType:@"0x00000000FF000033"];
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

- (id)testAccEventWithParamsHandler
{
  testAccEventWithParamsControl = [(CAFTestControlEvent *)self testAccEventWithParamsControl];
  handler = [testAccEventWithParamsControl handler];

  return handler;
}

- (void)setTestAccEventWithParamsHandler:(id)handler
{
  handlerCopy = handler;
  testAccEventWithParamsControl = [(CAFTestControlEvent *)self testAccEventWithParamsControl];
  [testAccEventWithParamsControl setHandler:handlerCopy];
}

- (BOOL)hasTestAccEventWithParams
{
  testAccEventWithParamsControl = [(CAFTestControlEvent *)self testAccEventWithParamsControl];
  v3 = testAccEventWithParamsControl != 0;

  return v3;
}

- (void)_controlDidUpdate:(id)update
{
  updateCopy = update;
  controlType = [updateCopy controlType];
  if ([controlType isEqual:@"0x00000000FF00002C"])
  {
    uniqueIdentifier = [updateCopy uniqueIdentifier];
    testDevEventNoParamsControl = [(CAFTestControlEvent *)self testDevEventNoParamsControl];
    uniqueIdentifier2 = [testDevEventNoParamsControl uniqueIdentifier];
    v9 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if (v9)
    {
      observers = [(CAFService *)self observers];
      [observers testControlEventServiceDidUpdateTestDevEventNoParams:self];
LABEL_8:

      goto LABEL_9;
    }
  }

  else
  {
  }

  observers = [updateCopy controlType];
  if (![observers isEqual:@"0x00000000FF00002D"])
  {
    goto LABEL_8;
  }

  uniqueIdentifier3 = [updateCopy uniqueIdentifier];
  testDevEventWithParamsControl = [(CAFTestControlEvent *)self testDevEventWithParamsControl];
  uniqueIdentifier4 = [testDevEventWithParamsControl uniqueIdentifier];
  v14 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

  if (v14)
  {
    observers = [(CAFService *)self observers];
    [observers testControlEventServiceDidUpdateTestDevEventWithParams:self];
    goto LABEL_8;
  }

LABEL_9:
  v15.receiver = self;
  v15.super_class = CAFTestControlEvent;
  [(CAFService *)&v15 _controlDidUpdate:updateCopy];
}

- (BOOL)registeredForTestDevEventNoParams
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier control:@"0x00000000FF00002C"];

  return v10;
}

- (BOOL)registeredForTestDevEventWithParams
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier control:@"0x00000000FF00002D"];

  return v10;
}

- (BOOL)registeredForTestAccEventNoParams
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier control:@"0x00000000FF000032"];

  return v10;
}

- (BOOL)registeredForTestAccEventWithParams
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier control:@"0x00000000FF000033"];

  return v10;
}

@end