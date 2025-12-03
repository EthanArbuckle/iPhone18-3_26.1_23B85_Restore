@interface CAFHistoricalNotification
+ (void)load;
- (BOOL)hasHistoricalNotificationUserActions;
- (BOOL)hasUserAction;
- (BOOL)hasUserDismissible;
- (BOOL)hasUserVisibleFullDescription;
- (BOOL)hidden;
- (BOOL)registeredForHidden;
- (BOOL)registeredForHistoricalNotificationUserActions;
- (BOOL)registeredForNotificationSeverity;
- (BOOL)registeredForSymbolName;
- (BOOL)registeredForTimestamp;
- (BOOL)registeredForUserAction;
- (BOOL)registeredForUserDismissible;
- (BOOL)registeredForUserVisibleDescription;
- (BOOL)registeredForUserVisibleFullDescription;
- (BOOL)registeredForUserVisibleLabel;
- (BOOL)userDismissible;
- (CAFBoolCharacteristic)hiddenCharacteristic;
- (CAFBoolCharacteristic)userDismissibleCharacteristic;
- (CAFHistoricalNotificationUserActions)historicalNotificationUserActions;
- (CAFHistoricalNotificationUserActionsCharacteristic)historicalNotificationUserActionsCharacteristic;
- (CAFMeasurementCharacteristic)timestampCharacteristic;
- (CAFMeasurementRange)timestampMeasurementRange;
- (CAFNotificationSeverityCharacteristic)notificationSeverityCharacteristic;
- (CAFStringCharacteristic)symbolNameCharacteristic;
- (CAFStringCharacteristic)userVisibleDescriptionCharacteristic;
- (CAFStringCharacteristic)userVisibleFullDescriptionCharacteristic;
- (CAFStringCharacteristic)userVisibleLabelCharacteristic;
- (CAFUInt64Range)timestampRange;
- (CAFUInt8Characteristic)userActionCharacteristic;
- (CAFUInt8Range)userActionRange;
- (NSMeasurement)timestamp;
- (NSString)symbolName;
- (NSString)userVisibleDescription;
- (NSString)userVisibleFullDescription;
- (NSString)userVisibleLabel;
- (id)name;
- (unsigned)notificationSeverity;
- (unsigned)userAction;
- (void)registerObserver:(id)observer;
- (void)setSymbolName:(id)name;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFHistoricalNotification

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFHistoricalNotification;
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
  v6.super_class = CAFHistoricalNotification;
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
  v6.super_class = CAFHistoricalNotification;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (id)name
{
  typeName = [(CAFService *)self typeName];
  userVisibleLabelCharacteristic = [(CAFHistoricalNotification *)self userVisibleLabelCharacteristic];
  formattedValue = [userVisibleLabelCharacteristic formattedValue];

  if ([formattedValue length])
  {
    v6 = [typeName stringByAppendingFormat:@"-%@", formattedValue];

    typeName = v6;
  }

  return typeName;
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
  userVisibleLabelCharacteristic = [(CAFHistoricalNotification *)self userVisibleLabelCharacteristic];
  stringValue = [userVisibleLabelCharacteristic stringValue];

  return stringValue;
}

- (CAFStringCharacteristic)userVisibleDescriptionCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000005"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000005"];
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

- (NSString)userVisibleDescription
{
  userVisibleDescriptionCharacteristic = [(CAFHistoricalNotification *)self userVisibleDescriptionCharacteristic];
  stringValue = [userVisibleDescriptionCharacteristic stringValue];

  return stringValue;
}

- (CAFStringCharacteristic)userVisibleFullDescriptionCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000049000004"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000049000004"];
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

- (NSString)userVisibleFullDescription
{
  userVisibleFullDescriptionCharacteristic = [(CAFHistoricalNotification *)self userVisibleFullDescriptionCharacteristic];
  stringValue = [userVisibleFullDescriptionCharacteristic stringValue];

  return stringValue;
}

- (BOOL)hasUserVisibleFullDescription
{
  userVisibleFullDescriptionCharacteristic = [(CAFHistoricalNotification *)self userVisibleFullDescriptionCharacteristic];
  v3 = userVisibleFullDescriptionCharacteristic != 0;

  return v3;
}

- (CAFMeasurementCharacteristic)timestampCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000049000003"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000049000003"];
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

- (NSMeasurement)timestamp
{
  timestampCharacteristic = [(CAFHistoricalNotification *)self timestampCharacteristic];
  measurementValue = [timestampCharacteristic measurementValue];

  return measurementValue;
}

- (CAFUInt64Range)timestampRange
{
  timestampCharacteristic = [(CAFHistoricalNotification *)self timestampCharacteristic];
  range = [timestampCharacteristic range];
  uInt64Range = [range uInt64Range];

  return uInt64Range;
}

- (CAFMeasurementRange)timestampMeasurementRange
{
  timestampRange = [(CAFHistoricalNotification *)self timestampRange];
  timestamp = [(CAFHistoricalNotification *)self timestamp];
  unit = [timestamp unit];
  v6 = [timestampRange measurementRangeWithUnit:unit];

  return v6;
}

- (CAFStringCharacteristic)symbolNameCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003000005E"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x000000003000005E"];
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

- (NSString)symbolName
{
  symbolNameCharacteristic = [(CAFHistoricalNotification *)self symbolNameCharacteristic];
  stringValue = [symbolNameCharacteristic stringValue];

  return stringValue;
}

- (void)setSymbolName:(id)name
{
  nameCopy = name;
  symbolNameCharacteristic = [(CAFHistoricalNotification *)self symbolNameCharacteristic];
  [symbolNameCharacteristic setStringValue:nameCopy];
}

- (CAFNotificationSeverityCharacteristic)notificationSeverityCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000049000002"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000049000002"];
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

- (unsigned)notificationSeverity
{
  notificationSeverityCharacteristic = [(CAFHistoricalNotification *)self notificationSeverityCharacteristic];
  notificationSeverityValue = [notificationSeverityCharacteristic notificationSeverityValue];

  return notificationSeverityValue;
}

- (CAFHistoricalNotificationUserActionsCharacteristic)historicalNotificationUserActionsCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000049000005"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000049000005"];
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

- (CAFHistoricalNotificationUserActions)historicalNotificationUserActions
{
  historicalNotificationUserActionsCharacteristic = [(CAFHistoricalNotification *)self historicalNotificationUserActionsCharacteristic];
  historicalNotificationUserActionsValue = [historicalNotificationUserActionsCharacteristic historicalNotificationUserActionsValue];

  return historicalNotificationUserActionsValue;
}

- (BOOL)hasHistoricalNotificationUserActions
{
  historicalNotificationUserActionsCharacteristic = [(CAFHistoricalNotification *)self historicalNotificationUserActionsCharacteristic];
  v3 = historicalNotificationUserActionsCharacteristic != 0;

  return v3;
}

- (CAFBoolCharacteristic)userDismissibleCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000063"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036000063"];
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

- (BOOL)userDismissible
{
  userDismissibleCharacteristic = [(CAFHistoricalNotification *)self userDismissibleCharacteristic];
  bOOLValue = [userDismissibleCharacteristic BOOLValue];

  return bOOLValue;
}

- (BOOL)hasUserDismissible
{
  userDismissibleCharacteristic = [(CAFHistoricalNotification *)self userDismissibleCharacteristic];
  v3 = userDismissibleCharacteristic != 0;

  return v3;
}

- (CAFBoolCharacteristic)hiddenCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000023"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036000023"];
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

- (BOOL)hidden
{
  hiddenCharacteristic = [(CAFHistoricalNotification *)self hiddenCharacteristic];
  bOOLValue = [hiddenCharacteristic BOOLValue];

  return bOOLValue;
}

- (CAFUInt8Characteristic)userActionCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000037000003"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000037000003"];
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

- (unsigned)userAction
{
  userActionCharacteristic = [(CAFHistoricalNotification *)self userActionCharacteristic];
  uint8Value = [userActionCharacteristic uint8Value];

  return uint8Value;
}

- (CAFUInt8Range)userActionRange
{
  userActionCharacteristic = [(CAFHistoricalNotification *)self userActionCharacteristic];
  range = [userActionCharacteristic range];

  return range;
}

- (BOOL)hasUserAction
{
  userActionCharacteristic = [(CAFHistoricalNotification *)self userActionCharacteristic];
  v3 = userActionCharacteristic != 0;

  return v3;
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

- (BOOL)registeredForUserVisibleDescription
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000005"];

  return v10;
}

- (BOOL)registeredForUserVisibleFullDescription
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000049000004"];

  return v10;
}

- (BOOL)registeredForTimestamp
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000049000003"];

  return v10;
}

- (BOOL)registeredForSymbolName
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003000005E"];

  return v10;
}

- (BOOL)registeredForNotificationSeverity
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000049000002"];

  return v10;
}

- (BOOL)registeredForHistoricalNotificationUserActions
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000049000005"];

  return v10;
}

- (BOOL)registeredForUserDismissible
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000063"];

  return v10;
}

- (BOOL)registeredForHidden
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000023"];

  return v10;
}

- (BOOL)registeredForUserAction
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000037000003"];

  return v10;
}

@end