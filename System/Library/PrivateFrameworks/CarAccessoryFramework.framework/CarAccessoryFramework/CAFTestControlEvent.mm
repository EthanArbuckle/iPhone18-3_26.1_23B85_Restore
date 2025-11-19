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
- (void)_controlDidUpdate:(id)a3;
- (void)registerObserver:(id)a3;
- (void)setTestAccEventNoParamsHandler:(id)a3;
- (void)setTestAccEventWithParamsHandler:(id)a3;
- (void)testDevEventNoParams;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFTestControlEvent

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFTestControlEvent;
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
  v6.super_class = CAFTestControlEvent;
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
  v2 = [(CAFTestControlEvent *)self testDevEventNoParamsControl];
  if (v2)
  {
    v3 = v2;
    [v2 testDevEventNoParams];
    v2 = v3;
  }
}

- (BOOL)hasTestDevEventNoParams
{
  v2 = [(CAFTestControlEvent *)self testDevEventNoParamsControl];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)testDevEventNoParamsError
{
  v2 = [(CAFTestControlEvent *)self testDevEventNoParamsControl];
  v3 = [v2 hasErrorState];

  return v3;
}

- (BOOL)testDevEventNoParamsDisabled
{
  v2 = [(CAFTestControlEvent *)self testDevEventNoParamsControl];
  v3 = [v2 isDisabled];

  return v3;
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
  v2 = [(CAFTestControlEvent *)self testDevEventWithParamsControl];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)testDevEventWithParamsError
{
  v2 = [(CAFTestControlEvent *)self testDevEventWithParamsControl];
  v3 = [v2 hasErrorState];

  return v3;
}

- (BOOL)testDevEventWithParamsDisabled
{
  v2 = [(CAFTestControlEvent *)self testDevEventWithParamsControl];
  v3 = [v2 isDisabled];

  return v3;
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
  v2 = [(CAFTestControlEvent *)self testAccEventNoParamsControl];
  v3 = [v2 handler];

  return v3;
}

- (void)setTestAccEventNoParamsHandler:(id)a3
{
  v4 = a3;
  v5 = [(CAFTestControlEvent *)self testAccEventNoParamsControl];
  [v5 setHandler:v4];
}

- (BOOL)hasTestAccEventNoParams
{
  v2 = [(CAFTestControlEvent *)self testAccEventNoParamsControl];
  v3 = v2 != 0;

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
  v2 = [(CAFTestControlEvent *)self testAccEventWithParamsControl];
  v3 = [v2 handler];

  return v3;
}

- (void)setTestAccEventWithParamsHandler:(id)a3
{
  v4 = a3;
  v5 = [(CAFTestControlEvent *)self testAccEventWithParamsControl];
  [v5 setHandler:v4];
}

- (BOOL)hasTestAccEventWithParams
{
  v2 = [(CAFTestControlEvent *)self testAccEventWithParamsControl];
  v3 = v2 != 0;

  return v3;
}

- (void)_controlDidUpdate:(id)a3
{
  v4 = a3;
  v5 = [v4 controlType];
  if ([v5 isEqual:@"0x00000000FF00002C"])
  {
    v6 = [v4 uniqueIdentifier];
    v7 = [(CAFTestControlEvent *)self testDevEventNoParamsControl];
    v8 = [v7 uniqueIdentifier];
    v9 = [v6 isEqual:v8];

    if (v9)
    {
      v10 = [(CAFService *)self observers];
      [v10 testControlEventServiceDidUpdateTestDevEventNoParams:self];
LABEL_8:

      goto LABEL_9;
    }
  }

  else
  {
  }

  v10 = [v4 controlType];
  if (![v10 isEqual:@"0x00000000FF00002D"])
  {
    goto LABEL_8;
  }

  v11 = [v4 uniqueIdentifier];
  v12 = [(CAFTestControlEvent *)self testDevEventWithParamsControl];
  v13 = [v12 uniqueIdentifier];
  v14 = [v11 isEqual:v13];

  if (v14)
  {
    v10 = [(CAFService *)self observers];
    [v10 testControlEventServiceDidUpdateTestDevEventWithParams:self];
    goto LABEL_8;
  }

LABEL_9:
  v15.receiver = self;
  v15.super_class = CAFTestControlEvent;
  [(CAFService *)&v15 _controlDidUpdate:v4];
}

- (BOOL)registeredForTestDevEventNoParams
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 control:@"0x00000000FF00002C"];

  return v10;
}

- (BOOL)registeredForTestDevEventWithParams
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 control:@"0x00000000FF00002D"];

  return v10;
}

- (BOOL)registeredForTestAccEventNoParams
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 control:@"0x00000000FF000032"];

  return v10;
}

- (BOOL)registeredForTestAccEventWithParams
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 control:@"0x00000000FF000033"];

  return v10;
}

@end