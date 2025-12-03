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
- (int64_t)typeCompare:(id)compare;
- (unsigned)volume;
- (unsigned)volumeType;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFVolume

- (int64_t)typeCompare:(id)compare
{
  compareCopy = compare;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(compareCopy, "volumeType")}];
  v6 = [&unk_284682F70 indexOfObject:v5];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[CAFVolume volumeType](self, "volumeType")}];
  v8 = [&unk_284682F70 indexOfObject:v7];

  if (v6 == v8)
  {
    if (v6 == 6)
    {
      userVisibleLabel = [compareCopy userVisibleLabel];
      userVisibleLabel2 = [(CAFVolume *)self userVisibleLabel];
      v11 = [userVisibleLabel compare:userVisibleLabel2 options:1];
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
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFVolume;
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
  v6.super_class = CAFVolume;
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
  v6.super_class = CAFVolume;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (id)name
{
  typeName = [(CAFService *)self typeName];
  volumeTypeCharacteristic = [(CAFVolume *)self volumeTypeCharacteristic];
  formattedValue = [volumeTypeCharacteristic formattedValue];

  if ([formattedValue length])
  {
    v6 = [typeName stringByAppendingFormat:@"-%@", formattedValue];

    typeName = v6;
  }

  userVisibleLabelCharacteristic = [(CAFVolume *)self userVisibleLabelCharacteristic];
  formattedValue2 = [userVisibleLabelCharacteristic formattedValue];

  if ([formattedValue2 length])
  {
    v9 = [typeName stringByAppendingFormat:@"-%@", formattedValue2];

    typeName = v9;
  }

  return typeName;
}

- (CAFVolumeTypeCharacteristic)volumeTypeCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000033000005"];

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
  volumeTypeCharacteristic = [(CAFVolume *)self volumeTypeCharacteristic];
  volumeTypeValue = [volumeTypeCharacteristic volumeTypeValue];

  return volumeTypeValue;
}

- (CAFUInt8Characteristic)volumeCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000033000006"];

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
  volumeCharacteristic = [(CAFVolume *)self volumeCharacteristic];
  uint8Value = [volumeCharacteristic uint8Value];

  return uint8Value;
}

- (CAFUInt8Range)volumeRange
{
  volumeCharacteristic = [(CAFVolume *)self volumeCharacteristic];
  range = [volumeCharacteristic range];

  return range;
}

- (BOOL)volumeDisabled
{
  volumeCharacteristic = [(CAFVolume *)self volumeCharacteristic];
  isDisabled = [volumeCharacteristic isDisabled];

  return isDisabled;
}

- (CAFStringCharacteristic)userVisibleLabelCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000001"];

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
  userVisibleLabelCharacteristic = [(CAFVolume *)self userVisibleLabelCharacteristic];
  stringValue = [userVisibleLabelCharacteristic stringValue];

  return stringValue;
}

- (BOOL)hasUserVisibleLabel
{
  userVisibleLabelCharacteristic = [(CAFVolume *)self userVisibleLabelCharacteristic];
  v3 = userVisibleLabelCharacteristic != 0;

  return v3;
}

- (CAFBoolCharacteristic)muteCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000033000009"];

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
  muteCharacteristic = [(CAFVolume *)self muteCharacteristic];
  bOOLValue = [muteCharacteristic BOOLValue];

  return bOOLValue;
}

- (BOOL)hasMute
{
  muteCharacteristic = [(CAFVolume *)self muteCharacteristic];
  v3 = muteCharacteristic != 0;

  return v3;
}

- (BOOL)registeredForVolumeType
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000033000005"];

  return v10;
}

- (BOOL)registeredForVolume
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000033000006"];

  return v10;
}

- (BOOL)registeredForUserVisibleLabel
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000001"];

  return v10;
}

- (BOOL)registeredForMute
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000033000009"];

  return v10;
}

@end