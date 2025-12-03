@interface CAFUIInputDeviceButton
+ (void)load;
- (BOOL)registeredForUIInputDeviceButtonEvent;
- (CAFUIInputDeviceButtonEventCharacteristic)uiInputDeviceButtonEventCharacteristic;
- (id)name;
- (unsigned)uiInputDeviceButtonEvent;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFUIInputDeviceButton

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFUIInputDeviceButton;
  objc_msgSendSuper2(&v2, sel_load);
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  if ([observerCopy conformsToProtocol:&unk_2846AB5B0])
  {
    v5 = observerCopy;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFUIInputDeviceButton;
  [(CAFUIInputDevice *)&v6 registerObserver:v5];
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  if ([observerCopy conformsToProtocol:&unk_2846AB5B0])
  {
    v5 = observerCopy;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFUIInputDeviceButton;
  [(CAFUIInputDevice *)&v6 unregisterObserver:v5];
}

- (id)name
{
  typeName = [(CAFService *)self typeName];
  uiInputDevicePurposeCharacteristic = [(CAFUIInputDevice *)self uiInputDevicePurposeCharacteristic];
  formattedValue = [uiInputDevicePurposeCharacteristic formattedValue];

  if ([formattedValue length])
  {
    v6 = [typeName stringByAppendingFormat:@"-%@", formattedValue];

    typeName = v6;
  }

  return typeName;
}

- (CAFUIInputDeviceButtonEventCharacteristic)uiInputDeviceButtonEventCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000047000003"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000047000003"];
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

- (unsigned)uiInputDeviceButtonEvent
{
  uiInputDeviceButtonEventCharacteristic = [(CAFUIInputDeviceButton *)self uiInputDeviceButtonEventCharacteristic];
  uIInputDeviceButtonEventValue = [uiInputDeviceButtonEventCharacteristic uIInputDeviceButtonEventValue];

  return uIInputDeviceButtonEventValue;
}

- (BOOL)registeredForUIInputDeviceButtonEvent
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000047000003"];

  return v10;
}

@end