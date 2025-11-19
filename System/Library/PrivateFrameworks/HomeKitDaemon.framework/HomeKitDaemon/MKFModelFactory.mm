@interface MKFModelFactory
+ (id)createAccessoryNetworkProtectionGroupModelWithModelID:(id)a3;
+ (id)createAccountHandleModelWithModelID:(id)a3;
+ (id)createAccountModelWithModelID:(id)a3;
+ (id)createActionSetModelWithModelID:(id)a3;
+ (id)createAirPlayAccessoryModelWithModelID:(id)a3;
+ (id)createAnalysisEventBulletinRegistrationModelWithModelID:(id)a3;
+ (id)createAppleMediaAccessoryModelWithModelID:(id)a3;
+ (id)createAppleMediaAccessoryPowerActionModelWithModelID:(id)a3;
+ (id)createApplicationDataModelWithModelID:(id)a3;
+ (id)createBulletinRegistrationModelWithModelID:(id)a3;
+ (id)createCalendarEventModelWithModelID:(id)a3;
+ (id)createCameraAccessModeBulletinRegistrationModelWithModelID:(id)a3;
+ (id)createCameraReachabilityBulletinRegistrationModelWithModelID:(id)a3;
+ (id)createCameraSignificantEventBulletinRegistrationModelWithModelID:(id)a3;
+ (id)createCharacteristicBulletinRegistrationModelWithModelID:(id)a3;
+ (id)createCharacteristicModelWithInstanceID:(id)a3 service:(id)a4;
+ (id)createCharacteristicRangeEventModelWithModelID:(id)a3;
+ (id)createCharacteristicValueEventModelWithModelID:(id)a3;
+ (id)createCharacteristicWriteActionModelWithModelID:(id)a3;
+ (id)createDeviceModelWithModelID:(id)a3;
+ (id)createDurationEventModelWithModelID:(id)a3;
+ (id)createEventTriggerModelWithModelID:(id)a3;
+ (id)createFaceprintModelWithModelID:(id)a3;
+ (id)createFloatCharacteristicModelWithInstanceID:(id)a3 service:(id)a4;
+ (id)createGuestAccessCodeModelWithModelID:(id)a3;
+ (id)createGuestModelWithModelID:(id)a3;
+ (id)createHAPAccessoryModelWithModelID:(id)a3;
+ (id)createHAPMetadataModelWithModelID:(id)a3;
+ (id)createHomeManagerHomeModelWithModelID:(id)a3;
+ (id)createHomeManagerModelWithModelID:(id)a3;
+ (id)createHomeMediaSettingModelWithModelID:(id)a3;
+ (id)createHomeModelWithModelID:(id)a3;
+ (id)createHomeNetworkRouterManagingDeviceSettingModelWithModelID:(id)a3;
+ (id)createHomeNetworkRouterSettingModelWithModelID:(id)a3;
+ (id)createHomePersonManagerSettingModelWithModelID:(id)a3;
+ (id)createHomePersonModelWithModelID:(id)a3;
+ (id)createHomeSoftwareUpdateSettingModelWithModelID:(id)a3;
+ (id)createHomeThreadNetworkModelWithModelID:(id)a3;
+ (id)createIncomingInvitationModelWithModelID:(id)a3;
+ (id)createIntegerCharacteristicModelWithInstanceID:(id)a3 service:(id)a4;
+ (id)createLocationEventModelWithModelID:(id)a3;
+ (id)createMatterAttributeValueEventModelWithModelID:(id)a3;
+ (id)createMatterBulletinRegistrationModelWithModelID:(id)a3;
+ (id)createMatterCommandActionModelWithModelID:(id)a3;
+ (id)createMatterLocalKeyValuePairModelWithKey:(id)a3;
+ (id)createMatterPathModelWithModelID:(id)a3;
+ (id)createMediaPlaybackActionModelWithModelID:(id)a3;
+ (id)createNaturalLightingActionModelWithModelID:(id)a3;
+ (id)createNotificationRegistrationActionSetModelWithModelID:(id)a3;
+ (id)createNotificationRegistrationCharacteristicModelWithModelID:(id)a3;
+ (id)createNotificationRegistrationMediaPropertyModelWithModelID:(id)a3;
+ (id)createOutgoingInvitationModelWithModelID:(id)a3;
+ (id)createPhotosPersonModelWithModelID:(id)a3;
+ (id)createPresenceBulletinConditionModelWithModelID:(id)a3;
+ (id)createPresenceEventModelWithModelID:(id)a3;
+ (id)createRemovedUserAccessCodeModelWithModelID:(id)a3;
+ (id)createResidentModelWithModelID:(id)a3;
+ (id)createResidentSelectionModelWithModelID:(id)a3;
+ (id)createRoomModelWithModelID:(id)a3;
+ (id)createRoomPresenceModelWithModelID:(id)a3;
+ (id)createServiceGroupModelWithModelID:(id)a3;
+ (id)createServiceModelWithInstanceID:(id)a3 accessory:(id)a4;
+ (id)createShortcutActionModelWithModelID:(id)a3;
+ (id)createSignificantTimeEventModelWithModelID:(id)a3;
+ (id)createSoftwareUpdateModelWithModelID:(id)a3;
+ (id)createStringCharacteristicModelWithInstanceID:(id)a3 service:(id)a4;
+ (id)createSunriseSunsetTimeSpecificationModelWithModelID:(id)a3;
+ (id)createTimeOfDayTimeSpecificationModelWithModelID:(id)a3;
+ (id)createTimePeriodBulletinConditionModelWithModelID:(id)a3;
+ (id)createTimerTriggerModelWithModelID:(id)a3;
+ (id)createUserAccessCodeModelWithModelID:(id)a3;
+ (id)createUserActivityStatusModelWithModelID:(id)a3;
+ (id)createUserModelWithModelID:(id)a3;
+ (id)createWeekDayScheduleRuleModelWithModelID:(id)a3;
+ (id)createYearDayScheduleRuleModelWithModelID:(id)a3;
+ (id)createZoneModelWithModelID:(id)a3;
@end

@implementation MKFModelFactory

+ (id)createServiceGroupModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFServiceGroup entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createAccountModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFAccount entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createCharacteristicWriteActionModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFCharacteristicWriteAction entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createDurationEventModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFDurationEvent entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createPhotosPersonModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFPhotosPerson entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createHomePersonManagerSettingModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFHomePersonManagerSetting entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createHomeManagerHomeModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFHomeManagerHome entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createMediaPlaybackActionModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFMediaPlaybackAction entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createMatterAttributeValueEventModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFMatterAttributeValueEvent entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createSignificantTimeEventModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFSignificantTimeEvent entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createTimePeriodBulletinConditionModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFTimePeriodBulletinCondition entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createPresenceBulletinConditionModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFPresenceBulletinCondition entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createIncomingInvitationModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFIncomingInvitation entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createTimeOfDayTimeSpecificationModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFTimeOfDayTimeSpecification entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createCalendarEventModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFCalendarEvent entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createHomeModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFHome entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createLocationEventModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFLocationEvent entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createHomeThreadNetworkModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFHomeThreadNetwork entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createIntegerCharacteristicModelWithInstanceID:(id)a3 service:(id)a4
{
  v5 = MEMORY[0x277CBE438];
  v6 = a4;
  v7 = a3;
  v8 = [v5 alloc];
  v9 = +[_MKFIntegerCharacteristic entity];
  v10 = [v8 initWithEntity:v9 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  [v12 setValue:v7 forKey:@"instanceID"];
  [v12 setValue:v6 forKey:@"service"];

  return v12;
}

+ (id)createRoomPresenceModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFRoomPresence entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createUserModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFUser entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createDeviceModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFDevice entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createAppleMediaAccessoryPowerActionModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFAppleMediaAccessoryPowerAction entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createHomeNetworkRouterManagingDeviceSettingModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFHomeNetworkRouterManagingDeviceSetting entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createAirPlayAccessoryModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFAirPlayAccessory entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createMatterBulletinRegistrationModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFMatterBulletinRegistration entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createPresenceEventModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFPresenceEvent entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createGuestAccessCodeModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFGuestAccessCode entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createRoomModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFRoom entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createServiceModelWithInstanceID:(id)a3 accessory:(id)a4
{
  v5 = MEMORY[0x277CBE438];
  v6 = a4;
  v7 = a3;
  v8 = [v5 alloc];
  v9 = +[_MKFService entity];
  v10 = [v8 initWithEntity:v9 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  [v12 setValue:v7 forKey:@"instanceID"];
  [v12 setValue:v6 forKey:@"accessory"];
  v13 = [objc_opt_class() modelIDForKeyAttribute:v7 parent:v6];

  [v12 setValue:v13 forKey:@"modelID"];

  return v12;
}

+ (id)createHAPMetadataModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFHAPMetadata entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createHomeNetworkRouterSettingModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFHomeNetworkRouterSetting entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createCameraAccessModeBulletinRegistrationModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFCameraAccessModeBulletinRegistration entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createCameraSignificantEventBulletinRegistrationModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFCameraSignificantEventBulletinRegistration entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createResidentSelectionModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFResidentSelection entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createCharacteristicValueEventModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFCharacteristicValueEvent entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createResidentModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFResident entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createAppleMediaAccessoryModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFAppleMediaAccessory entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createUserAccessCodeModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFUserAccessCode entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createHomeManagerModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFHomeManager entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createCharacteristicModelWithInstanceID:(id)a3 service:(id)a4
{
  v5 = MEMORY[0x277CBE438];
  v6 = a4;
  v7 = a3;
  v8 = [v5 alloc];
  v9 = +[_MKFCharacteristic entity];
  v10 = [v8 initWithEntity:v9 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  [v12 setValue:v7 forKey:@"instanceID"];
  [v12 setValue:v6 forKey:@"service"];

  return v12;
}

+ (id)createUserActivityStatusModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFUserActivityStatus entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createBulletinRegistrationModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFBulletinRegistration entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createTimerTriggerModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFTimerTrigger entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createCameraReachabilityBulletinRegistrationModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFCameraReachabilityBulletinRegistration entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createShortcutActionModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFShortcutAction entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createSoftwareUpdateModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFSoftwareUpdate entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createGuestModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFGuest entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createHomePersonModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFHomePerson entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createStringCharacteristicModelWithInstanceID:(id)a3 service:(id)a4
{
  v5 = MEMORY[0x277CBE438];
  v6 = a4;
  v7 = a3;
  v8 = [v5 alloc];
  v9 = +[_MKFStringCharacteristic entity];
  v10 = [v8 initWithEntity:v9 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  [v12 setValue:v7 forKey:@"instanceID"];
  [v12 setValue:v6 forKey:@"service"];

  return v12;
}

+ (id)createMatterLocalKeyValuePairModelWithKey:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFMatterLocalKeyValuePair entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"key"];

  return v9;
}

+ (id)createHAPAccessoryModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFHAPAccessory entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createOutgoingInvitationModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFOutgoingInvitation entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createAccountHandleModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFAccountHandle entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createZoneModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFZone entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createAnalysisEventBulletinRegistrationModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFAnalysisEventBulletinRegistration entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createAccessoryNetworkProtectionGroupModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFAccessoryNetworkProtectionGroup entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createNotificationRegistrationMediaPropertyModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFNotificationRegistrationMediaProperty entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createYearDayScheduleRuleModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFYearDayScheduleRule entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createMatterPathModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFMatterPath entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createActionSetModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFActionSet entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createApplicationDataModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFApplicationData entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createSunriseSunsetTimeSpecificationModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFSunriseSunsetTimeSpecification entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createHomeMediaSettingModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFHomeMediaSetting entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createNaturalLightingActionModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFNaturalLightingAction entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createEventTriggerModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFEventTrigger entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createCharacteristicBulletinRegistrationModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFCharacteristicBulletinRegistration entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createFloatCharacteristicModelWithInstanceID:(id)a3 service:(id)a4
{
  v5 = MEMORY[0x277CBE438];
  v6 = a4;
  v7 = a3;
  v8 = [v5 alloc];
  v9 = +[_MKFFloatCharacteristic entity];
  v10 = [v8 initWithEntity:v9 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  [v12 setValue:v7 forKey:@"instanceID"];
  [v12 setValue:v6 forKey:@"service"];

  return v12;
}

+ (id)createRemovedUserAccessCodeModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFRemovedUserAccessCode entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createFaceprintModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFFaceprint entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createHomeSoftwareUpdateSettingModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFHomeSoftwareUpdateSetting entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createNotificationRegistrationActionSetModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFNotificationRegistrationActionSet entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createMatterCommandActionModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFMatterCommandAction entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createCharacteristicRangeEventModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFCharacteristicRangeEvent entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createWeekDayScheduleRuleModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFWeekDayScheduleRule entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

+ (id)createNotificationRegistrationCharacteristicModelWithModelID:(id)a3
{
  v3 = MEMORY[0x277CBE438];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[_MKFNotificationRegistrationCharacteristic entity];
  v7 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setValue:v4 forKey:@"modelID"];

  return v9;
}

@end