@interface CAFVolume
+ (void)load;
- (BOOL)hasMute;
- (BOOL)hasUserVisibleLabel;
- (BOOL)mute;
- (BOOL)registeredForMute;
- (BOOL)registeredForUserVisibleLabel;
- (BOOL)registeredForVolume;
- (BOOL)registeredForVolumeType;
- (BOOL)volumeDisabled;
- (CAFBoolCharacteristic)muteCharacteristic;
- (CAFStringCharacteristic)userVisibleLabelCharacteristic;
- (CAFUInt8Characteristic)volumeCharacteristic;
- (CAFUInt8Range)volumeRange;
- (CAFVolumeTypeCharacteristic)volumeTypeCharacteristic;
- (NSString)userVisibleLabel;
- (id)name;
- (int64_t)typeCompare:(id)a3;
- (unsigned)volume;
- (unsigned)volumeType;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFVolume

- (int64_t)typeCompare:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v4, "volumeType")}];
  v6 = [&unk_284682F70 indexOfObject:v5];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[CAFVolume volumeType](self, "volumeType")}];
  v8 = [&unk_284682F70 indexOfObject:v7];

  if (v6 == v8)
  {
    if (v6 == 6)
    {
      v9 = [v4 userVisibleLabel];
      v10 = [(CAFVolume *)self userVisibleLabel];
      v11 = [v9 compare:v10 options:1];
    }

    else
    {
      v11 = 0;
    }
  }

  else if (v6 > v8)
  {
    v11 = -1;
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFVolume;
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
  v6.super_class = CAFVolume;
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
  v6.super_class = CAFVolume;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (id)name
{
  v3 = [(CAFService *)self typeName];
  v4 = [(CAFVolume *)self volumeTypeCharacteristic];
  v5 = [v4 formattedValue];

  if ([v5 length])
  {
    v6 = [v3 stringByAppendingFormat:@"-%@", v5];

    v3 = v6;
  }

  v7 = [(CAFVolume *)self userVisibleLabelCharacteristic];
  v8 = [v7 formattedValue];

  if ([v8 length])
  {
    v9 = [v3 stringByAppendingFormat:@"-%@", v8];

    v3 = v9;
  }

  return v3;
}

- (CAFVolumeTypeCharacteristic)volumeTypeCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000033000005"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000033000005"];
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

- (unsigned)volumeType
{
  v2 = [(CAFVolume *)self volumeTypeCharacteristic];
  v3 = [v2 volumeTypeValue];

  return v3;
}

- (CAFUInt8Characteristic)volumeCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000033000006"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000033000006"];
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

- (unsigned)volume
{
  v2 = [(CAFVolume *)self volumeCharacteristic];
  v3 = [v2 uint8Value];

  return v3;
}

- (CAFUInt8Range)volumeRange
{
  v2 = [(CAFVolume *)self volumeCharacteristic];
  v3 = [v2 range];

  return v3;
}

- (BOOL)volumeDisabled
{
  v2 = [(CAFVolume *)self volumeCharacteristic];
  v3 = [v2 isDisabled];

  return v3;
}

- (CAFStringCharacteristic)userVisibleLabelCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000030000001"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000001"];
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

- (NSString)userVisibleLabel
{
  v2 = [(CAFVolume *)self userVisibleLabelCharacteristic];
  v3 = [v2 stringValue];

  return v3;
}

- (BOOL)hasUserVisibleLabel
{
  v2 = [(CAFVolume *)self userVisibleLabelCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFBoolCharacteristic)muteCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000033000009"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000033000009"];
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

- (BOOL)mute
{
  v2 = [(CAFVolume *)self muteCharacteristic];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)hasMute
{
  v2 = [(CAFVolume *)self muteCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)registeredForVolumeType
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000033000005"];

  return v10;
}

- (BOOL)registeredForVolume
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000033000006"];

  return v10;
}

- (BOOL)registeredForUserVisibleLabel
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000030000001"];

  return v10;
}

- (BOOL)registeredForMute
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000033000009"];

  return v10;
}

@end