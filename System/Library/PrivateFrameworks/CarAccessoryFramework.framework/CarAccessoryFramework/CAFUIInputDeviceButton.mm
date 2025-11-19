@interface CAFUIInputDeviceButton
+ (void)load;
- (BOOL)registeredForUIInputDeviceButtonEvent;
- (CAFUIInputDeviceButtonEventCharacteristic)uiInputDeviceButtonEventCharacteristic;
- (id)name;
- (unsigned)uiInputDeviceButtonEvent;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFUIInputDeviceButton

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFUIInputDeviceButton;
  objc_msgSendSuper2(&v2, sel_load);
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_2846AB5B0])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFUIInputDeviceButton;
  [(CAFUIInputDevice *)&v6 registerObserver:v5];
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_2846AB5B0])
  {
    v5 = v4;
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
  v3 = [(CAFService *)self typeName];
  v4 = [(CAFUIInputDevice *)self uiInputDevicePurposeCharacteristic];
  v5 = [v4 formattedValue];

  if ([v5 length])
  {
    v6 = [v3 stringByAppendingFormat:@"-%@", v5];

    v3 = v6;
  }

  return v3;
}

- (CAFUIInputDeviceButtonEventCharacteristic)uiInputDeviceButtonEventCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000047000003"];

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
  v2 = [(CAFUIInputDeviceButton *)self uiInputDeviceButtonEventCharacteristic];
  v3 = [v2 uIInputDeviceButtonEventValue];

  return v3;
}

- (BOOL)registeredForUIInputDeviceButtonEvent
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000047000003"];

  return v10;
}

@end