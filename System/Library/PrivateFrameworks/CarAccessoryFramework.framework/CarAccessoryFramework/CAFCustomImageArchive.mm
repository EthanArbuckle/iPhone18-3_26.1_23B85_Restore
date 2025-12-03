@interface CAFCustomImageArchive
+ (void)load;
- (BOOL)registeredForGetImageArchive;
- (BOOL)registeredForIdentifier;
- (CAFGetImageArchiveControl)getImageArchiveControl;
- (CAFStringCharacteristic)identifierCharacteristic;
- (NSString)identifier;
- (void)getImageArchiveWithCompletion:(id)completion;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFCustomImageArchive

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFCustomImageArchive;
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
  v6.super_class = CAFCustomImageArchive;
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
  v6.super_class = CAFCustomImageArchive;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFStringCharacteristic)identifierCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000019"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000019"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSString)identifier
{
  identifierCharacteristic = [(CAFCustomImageArchive *)self identifierCharacteristic];
  stringValue = [identifierCharacteristic stringValue];

  return stringValue;
}

- (CAFGetImageArchiveControl)getImageArchiveControl
{
  objc_opt_class();
  v3 = [(CAFService *)self controlForType:@"0x0000000048000008"];
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

- (void)getImageArchiveWithCompletion:(id)completion
{
  completionCopy = completion;
  getImageArchiveControl = [(CAFCustomImageArchive *)self getImageArchiveControl];
  v6 = getImageArchiveControl;
  if (getImageArchiveControl)
  {
    [getImageArchiveControl getImageArchiveWithCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    v7 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__CAFCustomImageArchive_getImageArchiveWithCompletion___block_invoke;
    block[3] = &unk_27890D5E8;
    v9 = completionCopy;
    dispatch_async(v7, block);
  }
}

void __55__CAFCustomImageArchive_getImageArchiveWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [MEMORY[0x277CBEA90] data];
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:9 userInfo:0];
  (*(v1 + 16))(v1, v3, v2);
}

- (BOOL)registeredForIdentifier
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000019"];

  return v10;
}

- (BOOL)registeredForGetImageArchive
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier control:@"0x0000000048000008"];

  return v10;
}

@end