@interface BDSSyncEngine
+ (_TtC13BookDataStore13BDSSyncEngine)shared;
- (BOOL)establishedSalt;
- (id)diagnosticSyncEngineInfo;
- (id)enabledCloudKitZones;
- (id)recordNameFromRecordType:(id)a3 identifier:(id)a4;
- (void)addSaltChangeObserver:(id)a3;
- (void)reestablishSalt;
- (void)reestablishSaltIfNeeded;
- (void)resetChangeToken:(id)a3;
- (void)resetCloudKitZone:(id)a3;
- (void)saltManager:(id)a3 updatedSaltWithVersion:(id)a4;
- (void)setCloudKitZone:(id)a3 enabled:(BOOL)a4;
- (void)setDatabase:(id)a3 config:(id)a4;
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

- (void)setDatabase:(id)a3 config:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  BDSSyncEngine.setDatabase(_:config:)(v6, v7);
}

- (void)addSaltChangeObserver:(id)a3
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  v5 = self;
  sub_1E46CA1E8(a3, v5);
  swift_unknownObjectRelease();
}

- (void)reestablishSalt
{
  v2 = self;
  BDSSyncEngine.reestablishSalt()();
}

- (void)reestablishSaltIfNeeded
{
  v2 = self;
  BDSSyncEngine.reestablishSaltIfNeeded()();
}

- (void)setCloudKitZone:(id)a3 enabled:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  BDSSyncEngine.setCloudKitZone(_:enabled:)(v6, a4);
}

- (id)enabledCloudKitZones
{
  v3 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_zoneLock;
  v4 = *(&self->super.isa + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_zoneLock);
  v5 = self;
  [v4 lock];
  v6 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_validCKZones;
  swift_beginAccess();
  v7 = *(&v5->super.isa + v6);
  v8 = *(&self->super.isa + v3);

  [v8 unlock];

  sub_1E45E2DE8(0, &unk_1ECF75C30, 0x1E695BA90);
  sub_1E46B93D0();
  v9 = sub_1E470B15C();

  return v9;
}

- (void)resetCloudKitZone:(id)a3
{
  v4 = a3;
  v5 = self;
  BDSSyncEngine.resetCloudKitZone(_:)(v4);
}

- (void)resetChangeToken:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E46C2208(v4);
}

- (void)saltManager:(id)a3 updatedSaltWithVersion:(id)a4
{
  v6 = sub_1E470AF1C();
  v8 = v7;
  v9 = a3;
  v10 = self;
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

- (id)recordNameFromRecordType:(id)a3 identifier:(id)a4
{
  v5 = sub_1E470AF1C();
  v7 = v6;
  v8 = sub_1E470AF1C();
  v10 = v9;
  v11 = self;
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
  v4 = *(&self->super.isa + v3);
  v5 = self;
  if (v4)
  {
    v4 = [v4 establishedSalt];
  }

  v6 = [objc_allocWithZone(BDSCloudSyncDiagnosticSyncEngineInfo) initWithEstablishedSalt_];

  return v6;
}

@end