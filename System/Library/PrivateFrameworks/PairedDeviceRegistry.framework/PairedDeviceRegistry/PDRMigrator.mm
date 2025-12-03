@interface PDRMigrator
- (BOOL)migrationIsAvailable;
- (NSArray)devicesExpectedToBeMigratableAfterRestore;
- (NSArray)migratableDevices;
- (NSArray)migratableDevicesRequiringConsent;
- (id)beginMigrationWithDevice:(id)device;
- (id)beginMigrationWithDevice:(id)device passcode:(id)passcode;
- (id)devicesFromMigrationConsentRequestData:(id)data;
- (id)migrationConsentRequestData;
- (id)migrationDataPreRestoreForConsentedDevices:(id)devices;
- (id)setMigrationConsented:(BOOL)consented forDevice:(id)device;
- (void)ingestPostRestoreMigrationDataForConsentedDevices:(id)devices;
- (void)isPhoneReadyToMigrateDevice:(id)device withCompletion:(id)completion;
@end

@implementation PDRMigrator

- (id)setMigrationConsented:(BOOL)consented forDevice:(id)device
{
  OUTLINED_FUNCTION_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)beginMigrationWithDevice:(id)device passcode:(id)passcode
{
  OUTLINED_FUNCTION_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)migrationConsentRequestData
{
  OUTLINED_FUNCTION_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)devicesFromMigrationConsentRequestData:(id)data
{
  OUTLINED_FUNCTION_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  NSRequestConcreteImplementation();
  return 0;
}

- (BOOL)migrationIsAvailable
{
  OUTLINED_FUNCTION_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  NSRequestConcreteImplementation();
  return 0;
}

- (NSArray)devicesExpectedToBeMigratableAfterRestore
{
  OUTLINED_FUNCTION_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  NSRequestConcreteImplementation();
  return 0;
}

- (NSArray)migratableDevicesRequiringConsent
{
  OUTLINED_FUNCTION_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  NSRequestConcreteImplementation();
  return 0;
}

- (NSArray)migratableDevices
{
  OUTLINED_FUNCTION_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)migrationDataPreRestoreForConsentedDevices:(id)devices
{
  OUTLINED_FUNCTION_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)ingestPostRestoreMigrationDataForConsentedDevices:(id)devices
{
  OUTLINED_FUNCTION_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();

  NSRequestConcreteImplementation();
}

- (void)isPhoneReadyToMigrateDevice:(id)device withCompletion:(id)completion
{
  OUTLINED_FUNCTION_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();

  NSRequestConcreteImplementation();
}

- (id)beginMigrationWithDevice:(id)device
{
  OUTLINED_FUNCTION_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  NSRequestConcreteImplementation();
  return 0;
}

@end