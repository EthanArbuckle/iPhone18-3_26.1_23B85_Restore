@interface HDHRDemoEntity
+ (id)databaseTable;
+ (id)defaultForeignKey;
+ (id)foreignKeys;
- (_TtC12HealthDaemon14HDHRDemoEntity)init;
- (_TtC12HealthDaemon14HDHRDemoEntity)initWithPersistentID:(int64_t)d;
@end

@implementation HDHRDemoEntity

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
  sub_2289B5B48(0, &qword_27D862B68, sub_2289B5A00);
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

- (_TtC12HealthDaemon14HDHRDemoEntity)initWithPersistentID:(int64_t)d
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for HDHRDemoEntity();
  return [(HDSQLiteEntity *)&v5 initWithPersistentID:d];
}

- (_TtC12HealthDaemon14HDHRDemoEntity)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for HDHRDemoEntity();
  return [(HDHRDemoEntity *)&v3 init];
}

@end