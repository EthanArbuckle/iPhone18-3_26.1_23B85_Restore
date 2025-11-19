@interface BDSSyncEngine
+ (_TtC14bookdatastored13BDSSyncEngine)shared;
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

+ (_TtC14bookdatastored13BDSSyncEngine)shared
{
  if (qword_10026EC78 != -1)
  {
    swift_once();
  }

  v3 = static BDSSyncEngine.shared;

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
  sub_10017C644(a3, v5);
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
  v3 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_zoneLock;
  v4 = *(&self->super.isa + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_zoneLock);
  v5 = self;
  [v4 lock];
  v6 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_validCKZones;
  swift_beginAccess();
  v7 = *(&v5->super.isa + v6);
  v8 = *(&self->super.isa + v3);

  [v8 unlock];

  sub_100088714(0, &qword_100270F20, CKRecordZoneID_ptr);
  sub_10012D0A0();
  v9.super.isa = sub_1001C63D8().super.isa;

  return v9.super.isa;
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
  sub_1001734A0(v4);
}

- (void)saltManager:(id)a3 updatedSaltWithVersion:(id)a4
{
  v6 = sub_1001C6018();
  v8 = v7;
  v9 = a3;
  v10 = self;
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

- (id)recordNameFromRecordType:(id)a3 identifier:(id)a4
{
  v5 = sub_1001C6018();
  v7 = v6;
  v8 = sub_1001C6018();
  v10 = v9;
  v11 = self;
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
  v4 = *(&self->super.isa + v3);
  v5 = self;
  if (v4)
  {
    v4 = [v4 establishedSalt];
  }

  v6 = [objc_allocWithZone(BDSCloudSyncDiagnosticSyncEngineInfo) initWithEstablishedSalt:v4];

  return v6;
}

@end