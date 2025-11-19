@interface HDHRIndicatorCollectionEntity
+ (id)databaseTable;
+ (id)foreignKeys;
+ (id)privateSubEntities;
- (_TtC12HealthDaemon29HDHRIndicatorCollectionEntity)init;
- (_TtC12HealthDaemon29HDHRIndicatorCollectionEntity)initWithPersistentID:(int64_t)a3;
@end

@implementation HDHRIndicatorCollectionEntity

+ (id)databaseTable
{
  v2 = sub_22911C34C();

  return v2;
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

+ (id)privateSubEntities
{
  sub_2289BF80C();
  v2 = sub_22911C44C();

  return v2;
}

- (_TtC12HealthDaemon29HDHRIndicatorCollectionEntity)initWithPersistentID:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for HDHRIndicatorCollectionEntity();
  return [(HDSQLiteEntity *)&v5 initWithPersistentID:a3];
}

- (_TtC12HealthDaemon29HDHRIndicatorCollectionEntity)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for HDHRIndicatorCollectionEntity();
  return [(HDHRIndicatorCollectionEntity *)&v3 init];
}

@end