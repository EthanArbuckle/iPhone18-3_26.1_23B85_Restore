@interface CAFCabin
+ (void)load;
- (BOOL)compressorOn;
- (BOOL)compressorOnDisabled;
- (BOOL)compressorOnInvalid;
- (BOOL)compressorOnRestricted;
- (BOOL)hasCompressorOn;
- (BOOL)hasHvacOn;
- (BOOL)hasMaxACOn;
- (BOOL)hasMaxDefrostOn;
- (BOOL)hvacOn;
- (BOOL)hvacOnInvalid;
- (BOOL)maxACOn;
- (BOOL)maxACOnDisabled;
- (BOOL)maxACOnInvalid;
- (BOOL)maxACOnRestricted;
- (BOOL)maxDefrostOn;
- (BOOL)maxDefrostOnDisabled;
- (BOOL)maxDefrostOnInvalid;
- (BOOL)maxDefrostOnRestricted;
- (BOOL)registeredForACCompressorOn;
- (BOOL)registeredForHVACOn;
- (BOOL)registeredForMaxACOn;
- (BOOL)registeredForMaxDefrostOn;
- (CAFBoolCharacteristic)compressorOnCharacteristic;
- (CAFBoolCharacteristic)hvacOnCharacteristic;
- (CAFBoolCharacteristic)maxACOnCharacteristic;
- (CAFBoolCharacteristic)maxDefrostOnCharacteristic;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFCabin

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFCabin;
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
  v6.super_class = CAFCabin;
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
  v6.super_class = CAFCabin;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFBoolCharacteristic)maxACOnCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000031000022"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000031000022"];
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

- (BOOL)maxACOn
{
  v2 = [(CAFCabin *)self maxACOnCharacteristic];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)hasMaxACOn
{
  v2 = [(CAFCabin *)self maxACOnCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)maxACOnDisabled
{
  v2 = [(CAFCabin *)self maxACOnCharacteristic];
  v3 = [v2 isDisabled];

  return v3;
}

- (BOOL)maxACOnInvalid
{
  v2 = [(CAFCabin *)self maxACOnCharacteristic];
  v3 = [v2 isInvalid];

  return v3;
}

- (BOOL)maxACOnRestricted
{
  v2 = [(CAFCabin *)self maxACOnCharacteristic];
  v3 = [v2 isRestricted];

  return v3;
}

- (CAFBoolCharacteristic)maxDefrostOnCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000031000029"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000031000029"];
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

- (BOOL)maxDefrostOn
{
  v2 = [(CAFCabin *)self maxDefrostOnCharacteristic];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)hasMaxDefrostOn
{
  v2 = [(CAFCabin *)self maxDefrostOnCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)maxDefrostOnDisabled
{
  v2 = [(CAFCabin *)self maxDefrostOnCharacteristic];
  v3 = [v2 isDisabled];

  return v3;
}

- (BOOL)maxDefrostOnInvalid
{
  v2 = [(CAFCabin *)self maxDefrostOnCharacteristic];
  v3 = [v2 isInvalid];

  return v3;
}

- (BOOL)maxDefrostOnRestricted
{
  v2 = [(CAFCabin *)self maxDefrostOnCharacteristic];
  v3 = [v2 isRestricted];

  return v3;
}

- (CAFBoolCharacteristic)hvacOnCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000031000002"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000031000002"];
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

- (BOOL)hvacOn
{
  v2 = [(CAFCabin *)self hvacOnCharacteristic];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)hasHvacOn
{
  v2 = [(CAFCabin *)self hvacOnCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)hvacOnInvalid
{
  v2 = [(CAFCabin *)self hvacOnCharacteristic];
  v3 = [v2 isInvalid];

  return v3;
}

- (CAFBoolCharacteristic)compressorOnCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000031000003"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000031000003"];
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

- (BOOL)compressorOn
{
  v2 = [(CAFCabin *)self compressorOnCharacteristic];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)hasCompressorOn
{
  v2 = [(CAFCabin *)self compressorOnCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)compressorOnDisabled
{
  v2 = [(CAFCabin *)self compressorOnCharacteristic];
  v3 = [v2 isDisabled];

  return v3;
}

- (BOOL)compressorOnInvalid
{
  v2 = [(CAFCabin *)self compressorOnCharacteristic];
  v3 = [v2 isInvalid];

  return v3;
}

- (BOOL)compressorOnRestricted
{
  v2 = [(CAFCabin *)self compressorOnCharacteristic];
  v3 = [v2 isRestricted];

  return v3;
}

- (BOOL)registeredForMaxACOn
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000031000022"];

  return v10;
}

- (BOOL)registeredForMaxDefrostOn
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000031000029"];

  return v10;
}

- (BOOL)registeredForHVACOn
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000031000002"];

  return v10;
}

- (BOOL)registeredForACCompressorOn
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000031000003"];

  return v10;
}

@end