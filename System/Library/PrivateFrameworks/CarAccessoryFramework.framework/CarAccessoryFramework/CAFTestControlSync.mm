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
- (void)_controlDidUpdate:(id)a3;
- (void)registerObserver:(id)a3;
- (void)setTestAccRequestNoParamsHandler:(id)a3;
- (void)setTestAccRequestWithReqAndResParamsHandler:(id)a3;
- (void)setTestAccRequestWithReqParamsHandler:(id)a3;
- (void)setTestAccRequestWithResParamsHandler:(id)a3;
- (void)testDevRequestNoParamsWithCompletion:(id)a3;
- (void)testDevRequestWithResParamsWithCompletion:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFTestControlSync

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFTestControlSync;
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
  v6.super_class = CAFTestControlSync;
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

- (void)testDevRequestNoParamsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CAFTestControlSync *)self testDevRequestNoParamsControl];
  v6 = v5;
  if (v5)
  {
    [v5 testDevRequestNoParamsWithCompletion:v4];
  }

  else if (v4)
  {
    v7 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__CAFTestControlSync_testDevRequestNoParamsWithCompletion___block_invoke;
    block[3] = &unk_27890D5E8;
    v9 = v4;
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
  v2 = [(CAFTestControlSync *)self testDevRequestNoParamsControl];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)testDevRequestNoParamsError
{
  v2 = [(CAFTestControlSync *)self testDevRequestNoParamsControl];
  v3 = [v2 hasErrorState];

  return v3;
}

- (BOOL)testDevRequestNoParamsDisabled
{
  v2 = [(CAFTestControlSync *)self testDevRequestNoParamsControl];
  v3 = [v2 isDisabled];

  return v3;
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
  v2 = [(CAFTestControlSync *)self testDevRequestWithReqParamsControl];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)testDevRequestWithReqParamsError
{
  v2 = [(CAFTestControlSync *)self testDevRequestWithReqParamsControl];
  v3 = [v2 hasErrorState];

  return v3;
}

- (BOOL)testDevRequestWithReqParamsDisabled
{
  v2 = [(CAFTestControlSync *)self testDevRequestWithReqParamsControl];
  v3 = [v2 isDisabled];

  return v3;
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

- (void)testDevRequestWithResParamsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CAFTestControlSync *)self testDevRequestWithResParamsControl];
  v6 = v5;
  if (v5)
  {
    [v5 testDevRequestWithResParamsWithCompletion:v4];
  }

  else if (v4)
  {
    v7 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__CAFTestControlSync_testDevRequestWithResParamsWithCompletion___block_invoke;
    block[3] = &unk_27890D5E8;
    v9 = v4;
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
  v2 = [(CAFTestControlSync *)self testDevRequestWithResParamsControl];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)testDevRequestWithResParamsError
{
  v2 = [(CAFTestControlSync *)self testDevRequestWithResParamsControl];
  v3 = [v2 hasErrorState];

  return v3;
}

- (BOOL)testDevRequestWithResParamsDisabled
{
  v2 = [(CAFTestControlSync *)self testDevRequestWithResParamsControl];
  v3 = [v2 isDisabled];

  return v3;
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
  v2 = [(CAFTestControlSync *)self testDevRequestWithReqAndResParamsControl];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)testDevRequestWithReqAndResParamsError
{
  v2 = [(CAFTestControlSync *)self testDevRequestWithReqAndResParamsControl];
  v3 = [v2 hasErrorState];

  return v3;
}

- (BOOL)testDevRequestWithReqAndResParamsDisabled
{
  v2 = [(CAFTestControlSync *)self testDevRequestWithReqAndResParamsControl];
  v3 = [v2 isDisabled];

  return v3;
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
  v2 = [(CAFTestControlSync *)self testAccRequestNoParamsControl];
  v3 = [v2 handler];

  return v3;
}

- (void)setTestAccRequestNoParamsHandler:(id)a3
{
  v4 = a3;
  v5 = [(CAFTestControlSync *)self testAccRequestNoParamsControl];
  [v5 setHandler:v4];
}

- (BOOL)hasTestAccRequestNoParams
{
  v2 = [(CAFTestControlSync *)self testAccRequestNoParamsControl];
  v3 = v2 != 0;

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
  v2 = [(CAFTestControlSync *)self testAccRequestWithReqParamsControl];
  v3 = [v2 handler];

  return v3;
}

- (void)setTestAccRequestWithReqParamsHandler:(id)a3
{
  v4 = a3;
  v5 = [(CAFTestControlSync *)self testAccRequestWithReqParamsControl];
  [v5 setHandler:v4];
}

- (BOOL)hasTestAccRequestWithReqParams
{
  v2 = [(CAFTestControlSync *)self testAccRequestWithReqParamsControl];
  v3 = v2 != 0;

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
  v2 = [(CAFTestControlSync *)self testAccRequestWithResParamsControl];
  v3 = [v2 handler];

  return v3;
}

- (void)setTestAccRequestWithResParamsHandler:(id)a3
{
  v4 = a3;
  v5 = [(CAFTestControlSync *)self testAccRequestWithResParamsControl];
  [v5 setHandler:v4];
}

- (BOOL)hasTestAccRequestWithResParams
{
  v2 = [(CAFTestControlSync *)self testAccRequestWithResParamsControl];
  v3 = v2 != 0;

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
  v2 = [(CAFTestControlSync *)self testAccRequestWithReqAndResParamsControl];
  v3 = [v2 handler];

  return v3;
}

- (void)setTestAccRequestWithReqAndResParamsHandler:(id)a3
{
  v4 = a3;
  v5 = [(CAFTestControlSync *)self testAccRequestWithReqAndResParamsControl];
  [v5 setHandler:v4];
}

- (BOOL)hasTestAccRequestWithReqAndResParams
{
  v2 = [(CAFTestControlSync *)self testAccRequestWithReqAndResParamsControl];
  v3 = v2 != 0;

  return v3;
}

- (void)_controlDidUpdate:(id)a3
{
  v4 = a3;
  v5 = [v4 controlType];
  if ([v5 isEqual:@"0x00000000FF000028"])
  {
    v6 = [v4 uniqueIdentifier];
    v7 = [(CAFTestControlSync *)self testDevRequestNoParamsControl];
    v8 = [v7 uniqueIdentifier];
    v9 = [v6 isEqual:v8];

    if (v9)
    {
      v10 = [(CAFService *)self observers];
      [v10 testControlSyncServiceDidUpdateTestDevRequestNoParams:self];
LABEL_16:

      goto LABEL_17;
    }
  }

  else
  {
  }

  v11 = [v4 controlType];
  if ([v11 isEqual:@"0x00000000FF000029"])
  {
    v12 = [v4 uniqueIdentifier];
    v13 = [(CAFTestControlSync *)self testDevRequestWithReqParamsControl];
    v14 = [v13 uniqueIdentifier];
    v15 = [v12 isEqual:v14];

    if (v15)
    {
      v10 = [(CAFService *)self observers];
      [v10 testControlSyncServiceDidUpdateTestDevRequestWithReqParams:self];
      goto LABEL_16;
    }
  }

  else
  {
  }

  v16 = [v4 controlType];
  if ([v16 isEqual:@"0x00000000FF00002A"])
  {
    v17 = [v4 uniqueIdentifier];
    v18 = [(CAFTestControlSync *)self testDevRequestWithResParamsControl];
    v19 = [v18 uniqueIdentifier];
    v20 = [v17 isEqual:v19];

    if (v20)
    {
      v10 = [(CAFService *)self observers];
      [v10 testControlSyncServiceDidUpdateTestDevRequestWithResParams:self];
      goto LABEL_16;
    }
  }

  else
  {
  }

  v10 = [v4 controlType];
  if (![v10 isEqual:@"0x00000000FF00002B"])
  {
    goto LABEL_16;
  }

  v21 = [v4 uniqueIdentifier];
  v22 = [(CAFTestControlSync *)self testDevRequestWithReqAndResParamsControl];
  v23 = [v22 uniqueIdentifier];
  v24 = [v21 isEqual:v23];

  if (v24)
  {
    v10 = [(CAFService *)self observers];
    [v10 testControlSyncServiceDidUpdateTestDevRequestWithReqAndResParams:self];
    goto LABEL_16;
  }

LABEL_17:
  v25.receiver = self;
  v25.super_class = CAFTestControlSync;
  [(CAFService *)&v25 _controlDidUpdate:v4];
}

- (BOOL)registeredForTestDevRequestNoParams
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 control:@"0x00000000FF000028"];

  return v10;
}

- (BOOL)registeredForTestDevRequestWithReqParams
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 control:@"0x00000000FF000029"];

  return v10;
}

- (BOOL)registeredForTestDevRequestWithResParams
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 control:@"0x00000000FF00002A"];

  return v10;
}

- (BOOL)registeredForTestDevRequestWithReqAndResParams
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 control:@"0x00000000FF00002B"];

  return v10;
}

- (BOOL)registeredForTestAccRequestNoParams
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 control:@"0x00000000FF00002E"];

  return v10;
}

- (BOOL)registeredForTestAccRequestWithReqParams
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 control:@"0x00000000FF00002F"];

  return v10;
}

- (BOOL)registeredForTestAccRequestWithResParams
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 control:@"0x00000000FF000030"];

  return v10;
}

- (BOOL)registeredForTestAccRequestWithReqAndResParams
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 control:@"0x00000000FF000031"];

  return v10;
}

@end