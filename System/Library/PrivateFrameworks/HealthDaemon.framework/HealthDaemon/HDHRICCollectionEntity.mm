@interface HDHRICCollectionEntity
+ (id)databaseTable;
+ (id)foreignKeys;
+ (id)privateSubEntities;
- (_TtC12HealthDaemon22HDHRICCollectionEntity)init;
- (_TtC12HealthDaemon22HDHRICCollectionEntity)initWithPersistentID:(int64_t)d;
@end

@implementation HDHRICCollectionEntity

+ (id)databaseTable
{
  v2 = sub_22911C34C();

  return v2;
}

+ (id)foreignKeys
{
  sub_2289BF380();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_229163C40;
  *(inited + 32) = 0xD000000000000015;
  *(inited + 40) = 0x8000000229183F10;
  *(inited + 48) = [type metadata accessor for HDHRISnapshotCollectionEntity() defaultForeignKey];
  sub_2289B2670(inited);
  swift_setDeallocating();
  sub_2289B5A78(inited + 32);
  sub_2289BF458();
  v3 = sub_22911C2BC();

  return v3;
}

+ (id)privateSubEntities
{
  sub_2289BF80C();
  v2 = sub_22911C44C();

  return v2;
}

- (_TtC12HealthDaemon22HDHRICCollectionEntity)initWithPersistentID:(int64_t)d
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for HDHRICCollectionEntity();
  return [(HDSQLiteEntity *)&v5 initWithPersistentID:d];
}

- (_TtC12HealthDaemon22HDHRICCollectionEntity)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for HDHRICCollectionEntity();
  return [(HDHRICCollectionEntity *)&v3 init];
}

@end