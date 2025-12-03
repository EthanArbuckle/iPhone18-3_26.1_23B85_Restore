@interface CAFPairedDevicesInformation
+ (void)load;
- (BOOL)registeredForPairedDeviceList;
- (CAFPairedDeviceList)pairedDeviceList;
- (CAFPairedDeviceListCharacteristic)pairedDeviceListCharacteristic;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFPairedDevicesInformation

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFPairedDevicesInformation;
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
  v6.super_class = CAFPairedDevicesInformation;
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
  v6.super_class = CAFPairedDevicesInformation;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFPairedDeviceListCharacteristic)pairedDeviceListCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000013"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036000013"];
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

- (CAFPairedDeviceList)pairedDeviceList
{
  pairedDeviceListCharacteristic = [(CAFPairedDevicesInformation *)self pairedDeviceListCharacteristic];
  pairedDeviceListValue = [pairedDeviceListCharacteristic pairedDeviceListValue];

  return pairedDeviceListValue;
}

- (BOOL)registeredForPairedDeviceList
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000013"];

  return v10;
}

@end