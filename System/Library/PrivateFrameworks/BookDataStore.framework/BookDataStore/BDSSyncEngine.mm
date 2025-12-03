@interface BDSSyncEngine
+ (_TtC13BookDataStore13BDSSyncEngine)shared;
- (BOOL)establishedSalt;
- (id)diagnosticSyncEngineInfo;
- (id)enabledCloudKitZones;
- (id)recordNameFromRecordType:(id)type identifier:(id)identifier;
- (void)addSaltChangeObserver:(id)observer;
- (void)reestablishSalt;
- (void)reestablishSaltIfNeeded;
- (void)resetChangeToken:(id)token;
- (void)resetCloudKitZone:(id)zone;
- (void)saltManager:(id)manager updatedSaltWithVersion:(id)version;
- (void)setCloudKitZone:(id)zone enabled:(BOOL)enabled;
- (void)setDatabase:(id)database config:(id)config;
@end

@implementation BDSSyncEngine

+ (_TtC13BookDataStore13BDSSyncEngine)shared
{
  if (qword_1EE2AE3E8 != -1)
  {
    swift_once();
  }

  v3 = qword_1EE2AE3F0;

  return v3;
}

- (void)setDatabase:(id)database config:(id)config
{
  databaseCopy = database;
  configCopy = config;
  selfCopy = self;
  BDSSyncEngine.setDatabase(_:config:)(databaseCopy, configCopy);
}

- (void)addSaltChangeObserver:(id)observer
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1E46CA1E8(observer, selfCopy);
  swift_unknownObjectRelease();
}

- (void)reestablishSalt
{
  selfCopy = self;
  BDSSyncEngine.reestablishSalt()();
}

- (void)reestablishSaltIfNeeded
{
  selfCopy = self;
  BDSSyncEngine.reestablishSaltIfNeeded()();
}

- (void)setCloudKitZone:(id)zone enabled:(BOOL)enabled
{
  zoneCopy = zone;
  selfCopy = self;
  BDSSyncEngine.setCloudKitZone(_:enabled:)(zoneCopy, enabled);
}

- (id)enabledCloudKitZones
{
  v3 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_zoneLock;
  v4 = *(&self->super.isa + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_zoneLock);
  selfCopy = self;
  [v4 lock];
  v6 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_validCKZones;
  swift_beginAccess();
  v7 = *(&selfCopy->super.isa + v6);
  v8 = *(&self->super.isa + v3);

  [v8 unlock];

  sub_1E45E2DE8(0, &unk_1ECF75C30, 0x1E695BA90);
  sub_1E46B93D0();
  v9 = sub_1E470B15C();

  return v9;
}

- (void)resetCloudKitZone:(id)zone
{
  zoneCopy = zone;
  selfCopy = self;
  BDSSyncEngine.resetCloudKitZone(_:)(zoneCopy);
}

- (void)resetChangeToken:(id)token
{
  tokenCopy = token;
  selfCopy = self;
  sub_1E46C2208(tokenCopy);
}

- (void)saltManager:(id)manager updatedSaltWithVersion:(id)version
{
  v6 = sub_1E470AF1C();
  v8 = v7;
  managerCopy = manager;
  selfCopy = self;
  sub_1E46D08E8(v6, v8);
}

- (BOOL)establishedSalt
{
  v3 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_saltManager;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  if (v4)
  {
    LOBYTE(v4) = [v4 establishedSalt];
  }

  return v4;
}

- (id)recordNameFromRecordType:(id)type identifier:(id)identifier
{
  v5 = sub_1E470AF1C();
  v7 = v6;
  v8 = sub_1E470AF1C();
  v10 = v9;
  selfCopy = self;
  v12._countAndFlagsBits = v5;
  v12._object = v7;
  v13._countAndFlagsBits = v8;
  v13._object = v10;
  object = BDSSyncEngine.recordName(fromRecordType:identifier:)(v12, v13).value._object;

  if (object)
  {
    v15 = sub_1E470AF0C();
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)diagnosticSyncEngineInfo
{
  v3 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_saltManager;
  swift_beginAccess();
  establishedSalt = *(&self->super.isa + v3);
  selfCopy = self;
  if (establishedSalt)
  {
    establishedSalt = [establishedSalt establishedSalt];
  }

  initWithEstablishedSalt_ = [objc_allocWithZone(BDSCloudSyncDiagnosticSyncEngineInfo) initWithEstablishedSalt_];

  return initWithEstablishedSalt_;
}

@end