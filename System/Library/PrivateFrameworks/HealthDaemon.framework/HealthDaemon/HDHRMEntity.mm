@interface HDHRMEntity
+ (id)databaseTable;
+ (id)foreignKeys;
+ (id)privateSubEntities;
- (_TtC12HealthDaemon11HDHRMEntity)init;
- (_TtC12HealthDaemon11HDHRMEntity)initWithPersistentID:(int64_t)d;
@end

@implementation HDHRMEntity

+ (id)databaseTable
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  (*(ObjCClassMetadata + 80))(v5);

  v3 = sub_22911C34C();

  return v3;
}

+ (id)foreignKeys
{
  swift_getObjCClassMetadata();
  sub_2289BF2A4();
  sub_2289BF458();
  v2 = sub_22911C2BC();

  return v2;
}

+ (id)privateSubEntities
{
  sub_2289BF80C();
  v2 = sub_22911C44C();

  return v2;
}

- (_TtC12HealthDaemon11HDHRMEntity)initWithPersistentID:(int64_t)d
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for HDHRMEntity();
  return [(HDSQLiteEntity *)&v5 initWithPersistentID:d];
}

- (_TtC12HealthDaemon11HDHRMEntity)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for HDHRMEntity();
  return [(HDHRMEntity *)&v3 init];
}

@end