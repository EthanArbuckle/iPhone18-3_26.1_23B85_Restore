@interface HDHREntity
+ (id)databaseTable;
+ (id)foreignKeys;
+ (id)privateSubEntities;
- (_TtC12HealthDaemon10HDHREntity)init;
- (_TtC12HealthDaemon10HDHREntity)initWithPersistentID:(int64_t)d;
@end

@implementation HDHREntity

+ (id)databaseTable
{
  v2 = sub_22911C34C();

  return v2;
}

+ (id)foreignKeys
{
  sub_2289D3CA4(0, &qword_27D862B68, sub_2289B5A00);
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
  _s12HealthDaemon10HDHREntityC18privateSubEntitiesSayyXlXpGyFZ_0();
  sub_2289BF80C();
  v2 = sub_22911C44C();

  return v2;
}

- (_TtC12HealthDaemon10HDHREntity)initWithPersistentID:(int64_t)d
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(HDSQLiteEntity *)&v5 initWithPersistentID:d];
}

- (_TtC12HealthDaemon10HDHREntity)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(HDHREntity *)&v3 init];
}

@end