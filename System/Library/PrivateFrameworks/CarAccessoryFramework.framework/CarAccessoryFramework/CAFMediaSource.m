@interface CAFMediaSource
+ (void)load;
- (BOOL)currentFrequencyInvalid;
- (BOOL)currentMediaItemIdentifierInvalid;
- (BOOL)disabled;
- (BOOL)hasCurrentFrequency;
- (BOOL)hasCurrentMediaItemIdentifier;
- (BOOL)hasMediaItemImages;
- (BOOL)hasMediaItems;
- (BOOL)hasUserVisibleLabel;
- (BOOL)registeredForCurrentFrequency;
- (BOOL)registeredForCurrentMediaItemIdentifier;
- (BOOL)registeredForDisabled;
- (BOOL)registeredForIdentifier;
- (BOOL)registeredForMediaItemImages;
- (BOOL)registeredForMediaItems;
- (BOOL)registeredForMediaSourceSemanticType;
- (BOOL)registeredForUserVisibleLabel;
- (CAFBoolCharacteristic)disabledCharacteristic;
- (CAFMediaItemImages)mediaItemImages;
- (CAFMediaItemImagesCharacteristic)mediaItemImagesCharacteristic;
- (CAFMediaItems)mediaItems;
- (CAFMediaItemsCharacteristic)mediaItemsCharacteristic;
- (CAFMediaSourceSemanticTypeCharacteristic)mediaSourceSemanticTypeCharacteristic;
- (CAFStringCharacteristic)currentMediaItemIdentifierCharacteristic;
- (CAFStringCharacteristic)identifierCharacteristic;
- (CAFStringCharacteristic)userVisibleLabelCharacteristic;
- (CAFUInt32Characteristic)currentFrequencyCharacteristic;
- (CAFUInt32Range)currentFrequencyRange;
- (NSString)currentMediaItemIdentifier;
- (NSString)identifier;
- (NSString)userVisibleLabel;
- (id)name;
- (int64_t)typeCompare:(id)a3;
- (unsigned)currentFrequency;
- (unsigned)mediaSourceSemanticType;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFMediaSource

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFMediaSource;
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
  v6.super_class = CAFMediaSource;
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
  v6.super_class = CAFMediaSource;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (id)name
{
  v3 = [(CAFService *)self typeName];
  v4 = [(CAFMediaSource *)self userVisibleLabelCharacteristic];
  v5 = [v4 formattedValue];

  if ([v5 length])
  {
    v6 = [v3 stringByAppendingFormat:@"-%@", v5];

    v3 = v6;
  }

  v7 = [(CAFMediaSource *)self mediaSourceSemanticTypeCharacteristic];
  v8 = [v7 formattedValue];

  if ([v8 length])
  {
    v9 = [v3 stringByAppendingFormat:@"-%@", v8];

    v3 = v9;
  }

  return v3;
}

- (CAFUInt32Characteristic)currentFrequencyCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000032000007"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000032000007"];
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

- (unsigned)currentFrequency
{
  v2 = [(CAFMediaSource *)self currentFrequencyCharacteristic];
  v3 = [v2 uint32Value];

  return v3;
}

- (CAFUInt32Range)currentFrequencyRange
{
  v2 = [(CAFMediaSource *)self currentFrequencyCharacteristic];
  v3 = [v2 range];

  return v3;
}

- (BOOL)hasCurrentFrequency
{
  v2 = [(CAFMediaSource *)self currentFrequencyCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)currentFrequencyInvalid
{
  v2 = [(CAFMediaSource *)self currentFrequencyCharacteristic];
  v3 = [v2 isInvalid];

  return v3;
}

- (CAFStringCharacteristic)currentMediaItemIdentifierCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000032000026"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000032000026"];
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

- (NSString)currentMediaItemIdentifier
{
  v2 = [(CAFMediaSource *)self currentMediaItemIdentifierCharacteristic];
  v3 = [v2 stringValue];

  return v3;
}

- (BOOL)hasCurrentMediaItemIdentifier
{
  v2 = [(CAFMediaSource *)self currentMediaItemIdentifierCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)currentMediaItemIdentifierInvalid
{
  v2 = [(CAFMediaSource *)self currentMediaItemIdentifierCharacteristic];
  v3 = [v2 isInvalid];

  return v3;
}

- (CAFMediaItemsCharacteristic)mediaItemsCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000032000012"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000032000012"];
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

- (CAFMediaItems)mediaItems
{
  v2 = [(CAFMediaSource *)self mediaItemsCharacteristic];
  v3 = [v2 mediaItemsValue];

  return v3;
}

- (BOOL)hasMediaItems
{
  v2 = [(CAFMediaSource *)self mediaItemsCharacteristic];
  v3 = v2 != 0;

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
  v2 = [(CAFMediaSource *)self userVisibleLabelCharacteristic];
  v3 = [v2 stringValue];

  return v3;
}

- (BOOL)hasUserVisibleLabel
{
  v2 = [(CAFMediaSource *)self userVisibleLabelCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFStringCharacteristic)identifierCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000030000019"];

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
  v2 = [(CAFMediaSource *)self identifierCharacteristic];
  v3 = [v2 stringValue];

  return v3;
}

- (CAFMediaSourceSemanticTypeCharacteristic)mediaSourceSemanticTypeCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000032000025"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000032000025"];
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

- (unsigned)mediaSourceSemanticType
{
  v2 = [(CAFMediaSource *)self mediaSourceSemanticTypeCharacteristic];
  v3 = [v2 mediaSourceSemanticTypeValue];

  return v3;
}

- (CAFBoolCharacteristic)disabledCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000032000011"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000032000011"];
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

- (BOOL)disabled
{
  v2 = [(CAFMediaSource *)self disabledCharacteristic];
  v3 = [v2 BOOLValue];

  return v3;
}

- (CAFMediaItemImagesCharacteristic)mediaItemImagesCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000032000031"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000032000031"];
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

- (CAFMediaItemImages)mediaItemImages
{
  v2 = [(CAFMediaSource *)self mediaItemImagesCharacteristic];
  v3 = [v2 mediaItemImagesValue];

  return v3;
}

- (BOOL)hasMediaItemImages
{
  v2 = [(CAFMediaSource *)self mediaItemImagesCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)registeredForCurrentFrequency
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000032000007"];

  return v10;
}

- (BOOL)registeredForCurrentMediaItemIdentifier
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000032000026"];

  return v10;
}

- (BOOL)registeredForMediaItems
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000032000012"];

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

- (BOOL)registeredForIdentifier
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000030000019"];

  return v10;
}

- (BOOL)registeredForMediaSourceSemanticType
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000032000025"];

  return v10;
}

- (BOOL)registeredForDisabled
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000032000011"];

  return v10;
}

- (BOOL)registeredForMediaItemImages
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000032000031"];

  return v10;
}

- (int64_t)typeCompare:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithUnsignedChar:{-[CAFMediaSource mediaSourceSemanticType](self, "mediaSourceSemanticType")}];
  v7 = [&unk_284683048 indexOfObject:v6];

  v8 = MEMORY[0x277CCABB0];
  v9 = [v5 mediaSourceSemanticType];

  v10 = [v8 numberWithUnsignedChar:v9];
  v11 = [&unk_284683048 indexOfObject:v10];

  v12 = -1;
  if (v7 >= v11)
  {
    v12 = 1;
  }

  if (v7 == v11)
  {
    return 0;
  }

  else
  {
    return v12;
  }
}

@end