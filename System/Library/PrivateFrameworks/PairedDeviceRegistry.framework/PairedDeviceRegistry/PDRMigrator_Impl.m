@interface PDRMigrator_Impl
- (Class)devicesExpectedToBeMigratableAfterRestore;
- (NSString)lastMigrationRequestPhoneName;
- (PDRMigrator_Impl)init;
- (id)devicesFromMigrationConsentRequestData:(id)a3;
- (id)migrationConsentRequestData;
- (id)migrationDataPreRestoreForConsentedDevices:(id)a3;
- (void)ingestPostRestoreMigrationDataForConsentedDevices:(id)a3;
- (void)isPhoneReadyToMigrateDevice:(id)a3 withCompletion:(id)a4;
@end

@implementation PDRMigrator_Impl

- (Class)devicesExpectedToBeMigratableAfterRestore
{
  type metadata accessor for PDRDevice();
  v0.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v0.super.isa;
}

- (id)migrationConsentRequestData
{
  v2.super.isa = Data._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (id)devicesFromMigrationConsentRequestData:(id)a3
{
  v3 = a3;
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  outlined consume of Data._Representation(v4, v5);

  type metadata accessor for PDRDevice();
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (id)migrationDataPreRestoreForConsentedDevices:(id)a3
{
  v3.super.isa = Data._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)ingestPostRestoreMigrationDataForConsentedDevices:(id)a3
{
  v5 = a3;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  outlined consume of Data._Representation(v3, v4);
}

- (NSString)lastMigrationRequestPhoneName
{
  v2 = MEMORY[0x2318DF040](0, 0xE000000000000000);

  return v2;
}

- (void)isPhoneReadyToMigrateDevice:(id)a3 withCompletion:(id)a4
{
  v4 = _Block_copy(a4);
  (*(v4 + 2))(v4, 0, 0);

  _Block_release(v4);
}

- (PDRMigrator_Impl)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for Migrator_Impl();
  return [(PDRMigrator_Impl *)&v3 init];
}

@end