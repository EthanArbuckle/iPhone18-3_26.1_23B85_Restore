@interface MKFModelFactory
+ (id)createAccessoryNetworkProtectionGroupModelWithModelID:(id)d;
+ (id)createAccountHandleModelWithModelID:(id)d;
+ (id)createAccountModelWithModelID:(id)d;
+ (id)createActionSetModelWithModelID:(id)d;
+ (id)createAirPlayAccessoryModelWithModelID:(id)d;
+ (id)createAnalysisEventBulletinRegistrationModelWithModelID:(id)d;
+ (id)createAppleMediaAccessoryModelWithModelID:(id)d;
+ (id)createAppleMediaAccessoryPowerActionModelWithModelID:(id)d;
+ (id)createApplicationDataModelWithModelID:(id)d;
+ (id)createBulletinRegistrationModelWithModelID:(id)d;
+ (id)createCalendarEventModelWithModelID:(id)d;
+ (id)createCameraAccessModeBulletinRegistrationModelWithModelID:(id)d;
+ (id)createCameraReachabilityBulletinRegistrationModelWithModelID:(id)d;
+ (id)createCameraSignificantEventBulletinRegistrationModelWithModelID:(id)d;
+ (id)createCharacteristicBulletinRegistrationModelWithModelID:(id)d;
+ (id)createCharacteristicModelWithInstanceID:(id)d service:(id)service;
+ (id)createCharacteristicRangeEventModelWithModelID:(id)d;
+ (id)createCharacteristicValueEventModelWithModelID:(id)d;
+ (id)createCharacteristicWriteActionModelWithModelID:(id)d;
+ (id)createDeviceModelWithModelID:(id)d;
+ (id)createDurationEventModelWithModelID:(id)d;
+ (id)createEventTriggerModelWithModelID:(id)d;
+ (id)createFaceprintModelWithModelID:(id)d;
+ (id)createFloatCharacteristicModelWithInstanceID:(id)d service:(id)service;
+ (id)createGuestAccessCodeModelWithModelID:(id)d;
+ (id)createGuestModelWithModelID:(id)d;
+ (id)createHAPAccessoryModelWithModelID:(id)d;
+ (id)createHAPMetadataModelWithModelID:(id)d;
+ (id)createHomeManagerHomeModelWithModelID:(id)d;
+ (id)createHomeManagerModelWithModelID:(id)d;
+ (id)createHomeMediaSettingModelWithModelID:(id)d;
+ (id)createHomeModelWithModelID:(id)d;
+ (id)createHomeNetworkRouterManagingDeviceSettingModelWithModelID:(id)d;
+ (id)createHomeNetworkRouterSettingModelWithModelID:(id)d;
+ (id)createHomePersonManagerSettingModelWithModelID:(id)d;
+ (id)createHomePersonModelWithModelID:(id)d;
+ (id)createHomeSoftwareUpdateSettingModelWithModelID:(id)d;
+ (id)createHomeThreadNetworkModelWithModelID:(id)d;
+ (id)createIncomingInvitationModelWithModelID:(id)d;
+ (id)createIntegerCharacteristicModelWithInstanceID:(id)d service:(id)service;
+ (id)createLocationEventModelWithModelID:(id)d;
+ (id)createMatterAttributeValueEventModelWithModelID:(id)d;
+ (id)createMatterBulletinRegistrationModelWithModelID:(id)d;
+ (id)createMatterCommandActionModelWithModelID:(id)d;
+ (id)createMatterLocalKeyValuePairModelWithKey:(id)key;
+ (id)createMatterPathModelWithModelID:(id)d;
+ (id)createMediaPlaybackActionModelWithModelID:(id)d;
+ (id)createNaturalLightingActionModelWithModelID:(id)d;
+ (id)createNotificationRegistrationActionSetModelWithModelID:(id)d;
+ (id)createNotificationRegistrationCharacteristicModelWithModelID:(id)d;
+ (id)createNotificationRegistrationMediaPropertyModelWithModelID:(id)d;
+ (id)createOutgoingInvitationModelWithModelID:(id)d;
+ (id)createPhotosPersonModelWithModelID:(id)d;
+ (id)createPresenceBulletinConditionModelWithModelID:(id)d;
+ (id)createPresenceEventModelWithModelID:(id)d;
+ (id)createRemovedUserAccessCodeModelWithModelID:(id)d;
+ (id)createResidentModelWithModelID:(id)d;
+ (id)createResidentSelectionModelWithModelID:(id)d;
+ (id)createRoomModelWithModelID:(id)d;
+ (id)createRoomPresenceModelWithModelID:(id)d;
+ (id)createServiceGroupModelWithModelID:(id)d;
+ (id)createServiceModelWithInstanceID:(id)d accessory:(id)accessory;
+ (id)createShortcutActionModelWithModelID:(id)d;
+ (id)createSignificantTimeEventModelWithModelID:(id)d;
+ (id)createSoftwareUpdateModelWithModelID:(id)d;
+ (id)createStringCharacteristicModelWithInstanceID:(id)d service:(id)service;
+ (id)createSunriseSunsetTimeSpecificationModelWithModelID:(id)d;
+ (id)createTimeOfDayTimeSpecificationModelWithModelID:(id)d;
+ (id)createTimePeriodBulletinConditionModelWithModelID:(id)d;
+ (id)createTimerTriggerModelWithModelID:(id)d;
+ (id)createUserAccessCodeModelWithModelID:(id)d;
+ (id)createUserActivityStatusModelWithModelID:(id)d;
+ (id)createUserModelWithModelID:(id)d;
+ (id)createWeekDayScheduleRuleModelWithModelID:(id)d;
+ (id)createYearDayScheduleRuleModelWithModelID:(id)d;
+ (id)createZoneModelWithModelID:(id)d;
@end

@implementation MKFModelFactory

+ (id)createServiceGroupModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createAccountModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createCharacteristicWriteActionModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createDurationEventModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createPhotosPersonModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createHomePersonManagerSettingModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createHomeManagerHomeModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createMediaPlaybackActionModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createMatterAttributeValueEventModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createSignificantTimeEventModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createTimePeriodBulletinConditionModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createPresenceBulletinConditionModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createIncomingInvitationModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createTimeOfDayTimeSpecificationModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createCalendarEventModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createHomeModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createLocationEventModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createHomeThreadNetworkModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createIntegerCharacteristicModelWithInstanceID:(id)d service:(id)service
{
  v5 = MEMORY[0x277CBE438];
  serviceCopy = service;
  dCopy = d;
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

  [v12 setValue:dCopy forKey:@"instanceID"];
  [v12 setValue:serviceCopy forKey:@"service"];

  return v12;
}

+ (id)createRoomPresenceModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createUserModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createDeviceModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createAppleMediaAccessoryPowerActionModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createHomeNetworkRouterManagingDeviceSettingModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createAirPlayAccessoryModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createMatterBulletinRegistrationModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createPresenceEventModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createGuestAccessCodeModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createRoomModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createServiceModelWithInstanceID:(id)d accessory:(id)accessory
{
  v5 = MEMORY[0x277CBE438];
  accessoryCopy = accessory;
  dCopy = d;
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

  [v12 setValue:dCopy forKey:@"instanceID"];
  [v12 setValue:accessoryCopy forKey:@"accessory"];
  v13 = [objc_opt_class() modelIDForKeyAttribute:dCopy parent:accessoryCopy];

  [v12 setValue:v13 forKey:@"modelID"];

  return v12;
}

+ (id)createHAPMetadataModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createHomeNetworkRouterSettingModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createCameraAccessModeBulletinRegistrationModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createCameraSignificantEventBulletinRegistrationModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createResidentSelectionModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createCharacteristicValueEventModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createResidentModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createAppleMediaAccessoryModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createUserAccessCodeModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createHomeManagerModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createCharacteristicModelWithInstanceID:(id)d service:(id)service
{
  v5 = MEMORY[0x277CBE438];
  serviceCopy = service;
  dCopy = d;
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

  [v12 setValue:dCopy forKey:@"instanceID"];
  [v12 setValue:serviceCopy forKey:@"service"];

  return v12;
}

+ (id)createUserActivityStatusModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createBulletinRegistrationModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createTimerTriggerModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createCameraReachabilityBulletinRegistrationModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createShortcutActionModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createSoftwareUpdateModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createGuestModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createHomePersonModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createStringCharacteristicModelWithInstanceID:(id)d service:(id)service
{
  v5 = MEMORY[0x277CBE438];
  serviceCopy = service;
  dCopy = d;
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

  [v12 setValue:dCopy forKey:@"instanceID"];
  [v12 setValue:serviceCopy forKey:@"service"];

  return v12;
}

+ (id)createMatterLocalKeyValuePairModelWithKey:(id)key
{
  v3 = MEMORY[0x277CBE438];
  keyCopy = key;
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

  [v9 setValue:keyCopy forKey:@"key"];

  return v9;
}

+ (id)createHAPAccessoryModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createOutgoingInvitationModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createAccountHandleModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createZoneModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createAnalysisEventBulletinRegistrationModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createAccessoryNetworkProtectionGroupModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createNotificationRegistrationMediaPropertyModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createYearDayScheduleRuleModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createMatterPathModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createActionSetModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createApplicationDataModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createSunriseSunsetTimeSpecificationModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createHomeMediaSettingModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createNaturalLightingActionModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createEventTriggerModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createCharacteristicBulletinRegistrationModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createFloatCharacteristicModelWithInstanceID:(id)d service:(id)service
{
  v5 = MEMORY[0x277CBE438];
  serviceCopy = service;
  dCopy = d;
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

  [v12 setValue:dCopy forKey:@"instanceID"];
  [v12 setValue:serviceCopy forKey:@"service"];

  return v12;
}

+ (id)createRemovedUserAccessCodeModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createFaceprintModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createHomeSoftwareUpdateSettingModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createNotificationRegistrationActionSetModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createMatterCommandActionModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createCharacteristicRangeEventModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createWeekDayScheduleRuleModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

+ (id)createNotificationRegistrationCharacteristicModelWithModelID:(id)d
{
  v3 = MEMORY[0x277CBE438];
  dCopy = d;
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

  [v9 setValue:dCopy forKey:@"modelID"];

  return v9;
}

@end