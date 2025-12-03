@interface BDSSyncEngine
+ (_TtC14bookdatastored13BDSSyncEngine)shared;
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

+ (_TtC14bookdatastored13BDSSyncEngine)shared
{
  if (qword_10026EC78 != -1)
  {
    swift_once();
  }

  v3 = static BDSSyncEngine.shared;

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
  sub_10017C644(observer, selfCopy);
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
  v3 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_zoneLock;
  v4 = *(&self->super.isa + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_zoneLock);
  selfCopy = self;
  [v4 lock];
  v6 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_validCKZones;
  swift_beginAccess();
  v7 = *(&selfCopy->super.isa + v6);
  v8 = *(&self->super.isa + v3);

  [v8 unlock];

  sub_100088714(0, &qword_100270F20, CKRecordZoneID_ptr);
  sub_10012D0A0();
  v9.super.isa = sub_1001C63D8().super.isa;

  return v9.super.isa;
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
  sub_1001734A0(tokenCopy);
}

- (void)saltManager:(id)manager updatedSaltWithVersion:(id)version
{
  v6 = sub_1001C6018();
  v8 = v7;
  managerCopy = manager;
  selfCopy = self;
  sub_100182DC4(v6, v8);
}

- (BOOL)establishedSalt
{
  v3 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_saltManager;
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
  v5 = sub_1001C6018();
  v7 = v6;
  v8 = sub_1001C6018();
  v10 = v9;
  selfCopy = self;
  v12._countAndFlagsBits = v5;
  v12._object = v7;
  v13._countAndFlagsBits = v8;
  v13._object = v10;
  object = BDSSyncEngine.recordName(fromRecordType:identifier:)(v12, v13).value._object;

  if (object)
  {
    v15 = sub_1001C5FE8();
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)diagnosticSyncEngineInfo
{
  v3 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_saltManager;
  swift_beginAccess();
  establishedSalt = *(&self->super.isa + v3);
  selfCopy = self;
  if (establishedSalt)
  {
    establishedSalt = [establishedSalt establishedSalt];
  }

  v6 = [objc_allocWithZone(BDSCloudSyncDiagnosticSyncEngineInfo) initWithEstablishedSalt:establishedSalt];

  return v6;
}

@end