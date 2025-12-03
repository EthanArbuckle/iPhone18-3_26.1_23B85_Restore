@interface CAFUIInputDevice
+ (void)load;
- (BOOL)registeredForUIInputDevicePurpose;
- (CAFUIInputDevicePurposeCharacteristic)uiInputDevicePurposeCharacteristic;
- (unsigned)uiInputDevicePurpose;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFUIInputDevice

+ (void)load
{
  v3 = objc_opt_class();
  if (v3 != objc_opt_class())
  {
    v4.receiver = self;
    v4.super_class = &OBJC_METACLASS___CAFUIInputDevice;
    objc_msgSendSuper2(&v4, sel_load);
  }
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
  v6.super_class = CAFUIInputDevice;
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
  v6.super_class = CAFUIInputDevice;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFUIInputDevicePurposeCharacteristic)uiInputDevicePurposeCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000047000002"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000047000002"];
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

- (unsigned)uiInputDevicePurpose
{
  uiInputDevicePurposeCharacteristic = [(CAFUIInputDevice *)self uiInputDevicePurposeCharacteristic];
  uIInputDevicePurposeValue = [uiInputDevicePurposeCharacteristic uIInputDevicePurposeValue];

  return uIInputDevicePurposeValue;
}

- (BOOL)registeredForUIInputDevicePurpose
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000047000002"];

  return v10;
}

@end