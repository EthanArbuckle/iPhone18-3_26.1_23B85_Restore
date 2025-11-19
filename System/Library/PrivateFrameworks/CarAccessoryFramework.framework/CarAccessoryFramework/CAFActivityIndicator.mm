@interface CAFActivityIndicator
+ (void)load;
- (BOOL)cameraActive;
- (BOOL)hasCameraActive;
- (BOOL)hasMicrophoneActive;
- (BOOL)microphoneActive;
- (BOOL)registeredForCameraActive;
- (BOOL)registeredForMicrophoneActive;
- (CAFBoolCharacteristic)cameraActiveCharacteristic;
- (CAFBoolCharacteristic)microphoneActiveCharacteristic;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFActivityIndicator

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFActivityIndicator;
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
  v6.super_class = CAFActivityIndicator;
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
  v6.super_class = CAFActivityIndicator;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFBoolCharacteristic)cameraActiveCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000036100004"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036100004"];
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

- (BOOL)cameraActive
{
  v2 = [(CAFActivityIndicator *)self cameraActiveCharacteristic];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)hasCameraActive
{
  v2 = [(CAFActivityIndicator *)self cameraActiveCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFBoolCharacteristic)microphoneActiveCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000036100005"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036100005"];
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

- (BOOL)microphoneActive
{
  v2 = [(CAFActivityIndicator *)self microphoneActiveCharacteristic];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)hasMicrophoneActive
{
  v2 = [(CAFActivityIndicator *)self microphoneActiveCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)registeredForCameraActive
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000036100004"];

  return v10;
}

- (BOOL)registeredForMicrophoneActive
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000036100005"];

  return v10;
}

@end