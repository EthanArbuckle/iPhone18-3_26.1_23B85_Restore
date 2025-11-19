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
- (void)registerObserver:(id)a3;
- (void)setSymbolName:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFHistoricalNotification

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFHistoricalNotification;
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
  v6.super_class = CAFHistoricalNotification;
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
  v6.super_class = CAFHistoricalNotification;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (id)name
{
  v3 = [(CAFService *)self typeName];
  v4 = [(CAFHistoricalNotification *)self userVisibleLabelCharacteristic];
  v5 = [v4 formattedValue];

  if ([v5 length])
  {
    v6 = [v3 stringByAppendingFormat:@"-%@", v5];

    v3 = v6;
  }

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
  v2 = [(CAFHistoricalNotification *)self userVisibleLabelCharacteristic];
  v3 = [v2 stringValue];

  return v3;
}

- (CAFStringCharacteristic)userVisibleDescriptionCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000030000005"];

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
  v2 = [(CAFHistoricalNotification *)self userVisibleDescriptionCharacteristic];
  v3 = [v2 stringValue];

  return v3;
}

- (CAFStringCharacteristic)userVisibleFullDescriptionCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000049000004"];

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
  v2 = [(CAFHistoricalNotification *)self userVisibleFullDescriptionCharacteristic];
  v3 = [v2 stringValue];

  return v3;
}

- (BOOL)hasUserVisibleFullDescription
{
  v2 = [(CAFHistoricalNotification *)self userVisibleFullDescriptionCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFMeasurementCharacteristic)timestampCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000049000003"];

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
  v2 = [(CAFHistoricalNotification *)self timestampCharacteristic];
  v3 = [v2 measurementValue];

  return v3;
}

- (CAFUInt64Range)timestampRange
{
  v2 = [(CAFHistoricalNotification *)self timestampCharacteristic];
  v3 = [v2 range];
  v4 = [v3 uInt64Range];

  return v4;
}

- (CAFMeasurementRange)timestampMeasurementRange
{
  v3 = [(CAFHistoricalNotification *)self timestampRange];
  v4 = [(CAFHistoricalNotification *)self timestamp];
  v5 = [v4 unit];
  v6 = [v3 measurementRangeWithUnit:v5];

  return v6;
}

- (CAFStringCharacteristic)symbolNameCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x000000003000005E"];

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
  v2 = [(CAFHistoricalNotification *)self symbolNameCharacteristic];
  v3 = [v2 stringValue];

  return v3;
}

- (void)setSymbolName:(id)a3
{
  v4 = a3;
  v5 = [(CAFHistoricalNotification *)self symbolNameCharacteristic];
  [v5 setStringValue:v4];
}

- (CAFNotificationSeverityCharacteristic)notificationSeverityCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000049000002"];

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
  v2 = [(CAFHistoricalNotification *)self notificationSeverityCharacteristic];
  v3 = [v2 notificationSeverityValue];

  return v3;
}

- (CAFHistoricalNotificationUserActionsCharacteristic)historicalNotificationUserActionsCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000049000005"];

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
  v2 = [(CAFHistoricalNotification *)self historicalNotificationUserActionsCharacteristic];
  v3 = [v2 historicalNotificationUserActionsValue];

  return v3;
}

- (BOOL)hasHistoricalNotificationUserActions
{
  v2 = [(CAFHistoricalNotification *)self historicalNotificationUserActionsCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFBoolCharacteristic)userDismissibleCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000036000063"];

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
  v2 = [(CAFHistoricalNotification *)self userDismissibleCharacteristic];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)hasUserDismissible
{
  v2 = [(CAFHistoricalNotification *)self userDismissibleCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFBoolCharacteristic)hiddenCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000036000023"];

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
  v2 = [(CAFHistoricalNotification *)self hiddenCharacteristic];
  v3 = [v2 BOOLValue];

  return v3;
}

- (CAFUInt8Characteristic)userActionCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000037000003"];

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
  v2 = [(CAFHistoricalNotification *)self userActionCharacteristic];
  v3 = [v2 uint8Value];

  return v3;
}

- (CAFUInt8Range)userActionRange
{
  v2 = [(CAFHistoricalNotification *)self userActionCharacteristic];
  v3 = [v2 range];

  return v3;
}

- (BOOL)hasUserAction
{
  v2 = [(CAFHistoricalNotification *)self userActionCharacteristic];
  v3 = v2 != 0;

  return v3;
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

- (BOOL)registeredForUserVisibleDescription
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000030000005"];

  return v10;
}

- (BOOL)registeredForUserVisibleFullDescription
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000049000004"];

  return v10;
}

- (BOOL)registeredForTimestamp
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000049000003"];

  return v10;
}

- (BOOL)registeredForSymbolName
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x000000003000005E"];

  return v10;
}

- (BOOL)registeredForNotificationSeverity
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000049000002"];

  return v10;
}

- (BOOL)registeredForHistoricalNotificationUserActions
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000049000005"];

  return v10;
}

- (BOOL)registeredForUserDismissible
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000036000063"];

  return v10;
}

- (BOOL)registeredForHidden
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000036000023"];

  return v10;
}

- (BOOL)registeredForUserAction
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000037000003"];

  return v10;
}

@end