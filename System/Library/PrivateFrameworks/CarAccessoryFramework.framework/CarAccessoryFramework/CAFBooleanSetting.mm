@interface CAFBooleanSetting
+ (void)load;
- (BOOL)hasBooleanNotificationInfo;
- (BOOL)hasUserVisibleDescription;
- (BOOL)hasUserVisibleDetailedDescription;
- (BOOL)on;
- (BOOL)registeredForBooleanNotificationInfo;
- (BOOL)registeredForOn;
- (BOOL)registeredForUserVisibleDescription;
- (BOOL)registeredForUserVisibleDetailedDescription;
- (CAFBoolCharacteristic)onCharacteristic;
- (CAFBooleanSettingNotificationEntry)BOOLeanNotificationInfo;
- (CAFBooleanSettingNotificationEntryCharacteristic)BOOLeanNotificationInfoCharacteristic;
- (CAFStringCharacteristic)userVisibleDescriptionCharacteristic;
- (CAFUserVisibleDetailedDescription)userVisibleDetailedDescription;
- (CAFUserVisibleDetailedDescriptionCharacteristic)userVisibleDetailedDescriptionCharacteristic;
- (NSString)userVisibleDescription;
- (id)name;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFBooleanSetting

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFBooleanSetting;
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
  v6.super_class = CAFBooleanSetting;
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
  v6.super_class = CAFBooleanSetting;
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

- (CAFBoolCharacteristic)onCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000030000002"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000002"];
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

- (BOOL)on
{
  v2 = [(CAFBooleanSetting *)self onCharacteristic];
  v3 = [v2 BOOLValue];

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
  v2 = [(CAFBooleanSetting *)self userVisibleDetailedDescriptionCharacteristic];
  v3 = [v2 userVisibleDetailedDescriptionValue];

  return v3;
}

- (BOOL)hasUserVisibleDetailedDescription
{
  v2 = [(CAFBooleanSetting *)self userVisibleDetailedDescriptionCharacteristic];
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
  v2 = [(CAFBooleanSetting *)self userVisibleDescriptionCharacteristic];
  v3 = [v2 stringValue];

  return v3;
}

- (BOOL)hasUserVisibleDescription
{
  v2 = [(CAFBooleanSetting *)self userVisibleDescriptionCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFBooleanSettingNotificationEntryCharacteristic)BOOLeanNotificationInfoCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000036000032"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036000032"];
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

- (CAFBooleanSettingNotificationEntry)BOOLeanNotificationInfo
{
  v2 = [(CAFBooleanSetting *)self BOOLeanNotificationInfoCharacteristic];
  v3 = [v2 BOOLeanSettingNotificationEntryValue];

  return v3;
}

- (BOOL)hasBooleanNotificationInfo
{
  v2 = [(CAFBooleanSetting *)self BOOLeanNotificationInfoCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)registeredForOn
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000030000002"];

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

- (BOOL)registeredForBooleanNotificationInfo
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000036000032"];

  return v10;
}

@end