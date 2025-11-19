@interface HDHRConstellationSnapshotEntity
+ (id)databaseTable;
+ (id)defaultForeignKey;
+ (id)foreignKeys;
+ (id)privateSubEntities;
- (_TtC12HealthDaemon31HDHRConstellationSnapshotEntity)init;
- (_TtC12HealthDaemon31HDHRConstellationSnapshotEntity)initWithPersistentID:(int64_t)a3;
@end

@implementation HDHRConstellationSnapshotEntity

+ (id)databaseTable
{
  v2 = sub_22911C34C();

  return v2;
}

+ (id)defaultForeignKey
{
  swift_getObjCClassMetadata();
  v2 = objc_allocWithZone(MEMORY[0x277D10B38]);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = sub_22911C34C();
  v5 = [v2 initWithEntityClass:ObjCClassFromMetadata property:v4 deletionAction:2];

  return v5;
}

+ (id)foreignKeys
{
  sub_2289D173C(0, &qword_27D862B68, sub_2289B5A00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_229163C40;
  *(inited + 32) = sub_22911C35C();
  *(inited + 40) = v3;
  sub_2289B3D00(0, &qword_27D862B78, off_27860F338);
  *(inited + 48) = [swift_getObjCClassFromMetadata() defaultForeignKey];
  sub_2289B2670(inited);
  swift_setDeallocating();
  sub_2289B5A78(inited + 32);
  sub_2289B3D00(0, &qword_27D862AF8, 0x277D10B38);
  v4 = sub_22911C2BC();

  return v4;
}

+ (id)privateSubEntities
{
  sub_2289D173C(0, &qword_27D863158, sub_2289BF80C);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_229163C40;
  *(v2 + 32) = type metadata accessor for HDHRConstellationSnapshotMEntity();
  sub_2289BF80C();
  v3 = sub_22911C44C();

  return v3;
}

- (_TtC12HealthDaemon31HDHRConstellationSnapshotEntity)initWithPersistentID:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for HDHRConstellationSnapshotEntity();
  return [(HDSQLiteEntity *)&v5 initWithPersistentID:a3];
}

- (_TtC12HealthDaemon31HDHRConstellationSnapshotEntity)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for HDHRConstellationSnapshotEntity();
  return [(HDHRConstellationSnapshotEntity *)&v3 init];
}

@end