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
- (int64_t)typeCompare:(id)compare;
- (unsigned)currentFrequency;
- (unsigned)mediaSourceSemanticType;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFMediaSource

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFMediaSource;
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
  v6.super_class = CAFMediaSource;
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
  v6.super_class = CAFMediaSource;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (id)name
{
  typeName = [(CAFService *)self typeName];
  userVisibleLabelCharacteristic = [(CAFMediaSource *)self userVisibleLabelCharacteristic];
  formattedValue = [userVisibleLabelCharacteristic formattedValue];

  if ([formattedValue length])
  {
    v6 = [typeName stringByAppendingFormat:@"-%@", formattedValue];

    typeName = v6;
  }

  mediaSourceSemanticTypeCharacteristic = [(CAFMediaSource *)self mediaSourceSemanticTypeCharacteristic];
  formattedValue2 = [mediaSourceSemanticTypeCharacteristic formattedValue];

  if ([formattedValue2 length])
  {
    v9 = [typeName stringByAppendingFormat:@"-%@", formattedValue2];

    typeName = v9;
  }

  return typeName;
}

- (CAFUInt32Characteristic)currentFrequencyCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000032000007"];

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
  currentFrequencyCharacteristic = [(CAFMediaSource *)self currentFrequencyCharacteristic];
  uint32Value = [currentFrequencyCharacteristic uint32Value];

  return uint32Value;
}

- (CAFUInt32Range)currentFrequencyRange
{
  currentFrequencyCharacteristic = [(CAFMediaSource *)self currentFrequencyCharacteristic];
  range = [currentFrequencyCharacteristic range];

  return range;
}

- (BOOL)hasCurrentFrequency
{
  currentFrequencyCharacteristic = [(CAFMediaSource *)self currentFrequencyCharacteristic];
  v3 = currentFrequencyCharacteristic != 0;

  return v3;
}

- (BOOL)currentFrequencyInvalid
{
  currentFrequencyCharacteristic = [(CAFMediaSource *)self currentFrequencyCharacteristic];
  isInvalid = [currentFrequencyCharacteristic isInvalid];

  return isInvalid;
}

- (CAFStringCharacteristic)currentMediaItemIdentifierCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000032000026"];

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
  currentMediaItemIdentifierCharacteristic = [(CAFMediaSource *)self currentMediaItemIdentifierCharacteristic];
  stringValue = [currentMediaItemIdentifierCharacteristic stringValue];

  return stringValue;
}

- (BOOL)hasCurrentMediaItemIdentifier
{
  currentMediaItemIdentifierCharacteristic = [(CAFMediaSource *)self currentMediaItemIdentifierCharacteristic];
  v3 = currentMediaItemIdentifierCharacteristic != 0;

  return v3;
}

- (BOOL)currentMediaItemIdentifierInvalid
{
  currentMediaItemIdentifierCharacteristic = [(CAFMediaSource *)self currentMediaItemIdentifierCharacteristic];
  isInvalid = [currentMediaItemIdentifierCharacteristic isInvalid];

  return isInvalid;
}

- (CAFMediaItemsCharacteristic)mediaItemsCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000032000012"];

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
  mediaItemsCharacteristic = [(CAFMediaSource *)self mediaItemsCharacteristic];
  mediaItemsValue = [mediaItemsCharacteristic mediaItemsValue];

  return mediaItemsValue;
}

- (BOOL)hasMediaItems
{
  mediaItemsCharacteristic = [(CAFMediaSource *)self mediaItemsCharacteristic];
  v3 = mediaItemsCharacteristic != 0;

  return v3;
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
  userVisibleLabelCharacteristic = [(CAFMediaSource *)self userVisibleLabelCharacteristic];
  stringValue = [userVisibleLabelCharacteristic stringValue];

  return stringValue;
}

- (BOOL)hasUserVisibleLabel
{
  userVisibleLabelCharacteristic = [(CAFMediaSource *)self userVisibleLabelCharacteristic];
  v3 = userVisibleLabelCharacteristic != 0;

  return v3;
}

- (CAFStringCharacteristic)identifierCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000019"];

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
  identifierCharacteristic = [(CAFMediaSource *)self identifierCharacteristic];
  stringValue = [identifierCharacteristic stringValue];

  return stringValue;
}

- (CAFMediaSourceSemanticTypeCharacteristic)mediaSourceSemanticTypeCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000032000025"];

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
  mediaSourceSemanticTypeCharacteristic = [(CAFMediaSource *)self mediaSourceSemanticTypeCharacteristic];
  mediaSourceSemanticTypeValue = [mediaSourceSemanticTypeCharacteristic mediaSourceSemanticTypeValue];

  return mediaSourceSemanticTypeValue;
}

- (CAFBoolCharacteristic)disabledCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000032000011"];

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
  disabledCharacteristic = [(CAFMediaSource *)self disabledCharacteristic];
  bOOLValue = [disabledCharacteristic BOOLValue];

  return bOOLValue;
}

- (CAFMediaItemImagesCharacteristic)mediaItemImagesCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000032000031"];

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
  mediaItemImagesCharacteristic = [(CAFMediaSource *)self mediaItemImagesCharacteristic];
  mediaItemImagesValue = [mediaItemImagesCharacteristic mediaItemImagesValue];

  return mediaItemImagesValue;
}

- (BOOL)hasMediaItemImages
{
  mediaItemImagesCharacteristic = [(CAFMediaSource *)self mediaItemImagesCharacteristic];
  v3 = mediaItemImagesCharacteristic != 0;

  return v3;
}

- (BOOL)registeredForCurrentFrequency
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000032000007"];

  return v10;
}

- (BOOL)registeredForCurrentMediaItemIdentifier
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000032000026"];

  return v10;
}

- (BOOL)registeredForMediaItems
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000032000012"];

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

- (BOOL)registeredForIdentifier
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000019"];

  return v10;
}

- (BOOL)registeredForMediaSourceSemanticType
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000032000025"];

  return v10;
}

- (BOOL)registeredForDisabled
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000032000011"];

  return v10;
}

- (BOOL)registeredForMediaItemImages
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000032000031"];

  return v10;
}

- (int64_t)typeCompare:(id)compare
{
  v4 = MEMORY[0x277CCABB0];
  compareCopy = compare;
  v6 = [v4 numberWithUnsignedChar:{-[CAFMediaSource mediaSourceSemanticType](self, "mediaSourceSemanticType")}];
  v7 = [&unk_284683048 indexOfObject:v6];

  v8 = MEMORY[0x277CCABB0];
  mediaSourceSemanticType = [compareCopy mediaSourceSemanticType];

  v10 = [v8 numberWithUnsignedChar:mediaSourceSemanticType];
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