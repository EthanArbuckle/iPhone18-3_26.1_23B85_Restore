@interface CAFUIInputDevice
+ (void)load;
- (BOOL)registeredForUIInputDevicePurpose;
- (CAFUIInputDevicePurposeCharacteristic)uiInputDevicePurposeCharacteristic;
- (unsigned)uiInputDevicePurpose;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFUIInputDevice

+ (void)load
{
  v3 = objc_opt_class();
  if (v3 != objc_opt_class())
  {
    v4.receiver = a1;
    v4.super_class = &OBJC_METACLASS___CAFUIInputDevice;
    objc_msgSendSuper2(&v4, sel_load);
  }
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
  v6.super_class = CAFUIInputDevice;
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
  v6.super_class = CAFUIInputDevice;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFUIInputDevicePurposeCharacteristic)uiInputDevicePurposeCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000047000002"];

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
  v2 = [(CAFUIInputDevice *)self uiInputDevicePurposeCharacteristic];
  v3 = [v2 uIInputDevicePurposeValue];

  return v3;
}

- (BOOL)registeredForUIInputDevicePurpose
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000047000002"];

  return v10;
}

@end