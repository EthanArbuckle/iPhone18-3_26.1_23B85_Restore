@interface CAFSingleSelectSetting
+ (void)load;
- (BOOL)hasSelectSettingEntryListNotificationInfo;
- (BOOL)hasUserVisibleDescription;
- (BOOL)hasUserVisibleDetailedDescription;
- (BOOL)registeredForSelectSettingEntryList;
- (BOOL)registeredForSelectSettingEntryListNotificationInfo;
- (BOOL)registeredForSelectedEntryIndex;
- (BOOL)registeredForUserVisibleDescription;
- (BOOL)registeredForUserVisibleDetailedDescription;
- (CAFSelectSettingEntryList)selectSettingEntryList;
- (CAFSelectSettingEntryListCharacteristic)selectSettingEntryListCharacteristic;
- (CAFSelectSettingNotificationEntryList)selectSettingEntryListNotificationInfo;
- (CAFSelectSettingNotificationEntryListCharacteristic)selectSettingEntryListNotificationInfoCharacteristic;
- (CAFStringCharacteristic)userVisibleDescriptionCharacteristic;
- (CAFUInt8Characteristic)selectedEntryIndexCharacteristic;
- (CAFUInt8Range)selectedEntryIndexRange;
- (CAFUserVisibleDetailedDescription)userVisibleDetailedDescription;
- (CAFUserVisibleDetailedDescriptionCharacteristic)userVisibleDetailedDescriptionCharacteristic;
- (NSString)userVisibleDescription;
- (id)name;
- (unsigned)selectedEntryIndex;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFSingleSelectSetting

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFSingleSelectSetting;
  objc_msgSendSuper2(&v2, sel_load);
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_2846A5928])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFSingleSelectSetting;
  [(CAFAutomakerSetting *)&v6 registerObserver:v5];
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_2846A5928])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFSingleSelectSetting;
  [(CAFAutomakerSetting *)&v6 unregisterObserver:v5];
}

- (id)name
{
  v3 = [(CAFService *)self typeName];
  v4 = [(CAFAutomakerSetting *)self categoryCharacteristic];
  v5 = [v4 formattedValue];

  if ([v5 length])
  {
    v6 = [v3 stringByAppendingFormat:@"-%@", v5];

    v3 = v6;
  }

  v7 = [(CAFAutomakerSetting *)self userVisibleLabelCharacteristic];
  v8 = [v7 formattedValue];

  if ([v8 length])
  {
    v9 = [v3 stringByAppendingFormat:@"-%@", v8];

    v3 = v9;
  }

  return v3;
}

- (CAFSelectSettingEntryListCharacteristic)selectSettingEntryListCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000036000024"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036000024"];
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

- (CAFSelectSettingEntryList)selectSettingEntryList
{
  v2 = [(CAFSingleSelectSetting *)self selectSettingEntryListCharacteristic];
  v3 = [v2 selectSettingEntryListValue];

  return v3;
}

- (CAFUInt8Characteristic)selectedEntryIndexCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000030000061"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000061"];
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

- (unsigned)selectedEntryIndex
{
  v2 = [(CAFSingleSelectSetting *)self selectedEntryIndexCharacteristic];
  v3 = [v2 uint8Value];

  return v3;
}

- (CAFUInt8Range)selectedEntryIndexRange
{
  v2 = [(CAFSingleSelectSetting *)self selectedEntryIndexCharacteristic];
  v3 = [v2 range];

  return v3;
}

- (CAFUserVisibleDetailedDescriptionCharacteristic)userVisibleDetailedDescriptionCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000036000029"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036000029"];
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

- (CAFUserVisibleDetailedDescription)userVisibleDetailedDescription
{
  v2 = [(CAFSingleSelectSetting *)self userVisibleDetailedDescriptionCharacteristic];
  v3 = [v2 userVisibleDetailedDescriptionValue];

  return v3;
}

- (BOOL)hasUserVisibleDetailedDescription
{
  v2 = [(CAFSingleSelectSetting *)self userVisibleDetailedDescriptionCharacteristic];
  v3 = v2 != 0;

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
  v2 = [(CAFSingleSelectSetting *)self userVisibleDescriptionCharacteristic];
  v3 = [v2 stringValue];

  return v3;
}

- (BOOL)hasUserVisibleDescription
{
  v2 = [(CAFSingleSelectSetting *)self userVisibleDescriptionCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFSelectSettingNotificationEntryListCharacteristic)selectSettingEntryListNotificationInfoCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000036000033"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036000033"];
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

- (CAFSelectSettingNotificationEntryList)selectSettingEntryListNotificationInfo
{
  v2 = [(CAFSingleSelectSetting *)self selectSettingEntryListNotificationInfoCharacteristic];
  v3 = [v2 selectSettingNotificationEntryListValue];

  return v3;
}

- (BOOL)hasSelectSettingEntryListNotificationInfo
{
  v2 = [(CAFSingleSelectSetting *)self selectSettingEntryListNotificationInfoCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)registeredForSelectSettingEntryList
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000036000024"];

  return v10;
}

- (BOOL)registeredForSelectedEntryIndex
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000030000061"];

  return v10;
}

- (BOOL)registeredForUserVisibleDetailedDescription
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000036000029"];

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

- (BOOL)registeredForSelectSettingEntryListNotificationInfo
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000036000033"];

  return v10;
}

@end