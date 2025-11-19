@interface PDRMigrator
- (BOOL)migrationIsAvailable;
- (NSArray)devicesExpectedToBeMigratableAfterRestore;
- (NSArray)migratableDevices;
- (NSArray)migratableDevicesRequiringConsent;
- (id)beginMigrationWithDevice:(id)a3;
- (id)beginMigrationWithDevice:(id)a3 passcode:(id)a4;
- (id)devicesFromMigrationConsentRequestData:(id)a3;
- (id)migrationConsentRequestData;
- (id)migrationDataPreRestoreForConsentedDevices:(id)a3;
- (id)setMigrationConsented:(BOOL)a3 forDevice:(id)a4;
- (void)ingestPostRestoreMigrationDataForConsentedDevices:(id)a3;
- (void)isPhoneReadyToMigrateDevice:(id)a3 withCompletion:(id)a4;
@end

@implementation PDRMigrator

- (id)setMigrationConsented:(BOOL)a3 forDevice:(id)a4
{
  OUTLINED_FUNCTION_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)beginMigrationWithDevice:(id)a3 passcode:(id)a4
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

- (id)devicesFromMigrationConsentRequestData:(id)a3
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

- (id)migrationDataPreRestoreForConsentedDevices:(id)a3
{
  OUTLINED_FUNCTION_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)ingestPostRestoreMigrationDataForConsentedDevices:(id)a3
{
  OUTLINED_FUNCTION_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();

  NSRequestConcreteImplementation();
}

- (void)isPhoneReadyToMigrateDevice:(id)a3 withCompletion:(id)a4
{
  OUTLINED_FUNCTION_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();

  NSRequestConcreteImplementation();
}

- (id)beginMigrationWithDevice:(id)a3
{
  OUTLINED_FUNCTION_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  NSRequestConcreteImplementation();
  return 0;
}

@end