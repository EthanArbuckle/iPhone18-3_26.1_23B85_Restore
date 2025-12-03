@interface HDHRFAMeasureCollectionEntity
+ (id)databaseTable;
- (_TtC12HealthDaemon29HDHRFAMeasureCollectionEntity)init;
- (_TtC12HealthDaemon29HDHRFAMeasureCollectionEntity)initWithPersistentID:(int64_t)d;
@end

@implementation HDHRFAMeasureCollectionEntity

+ (id)databaseTable
{
  v2 = sub_22911C34C();

  return v2;
}

- (_TtC12HealthDaemon29HDHRFAMeasureCollectionEntity)initWithPersistentID:(int64_t)d
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for HDHRFAMeasureCollectionEntity();
  return [(HDSQLiteEntity *)&v5 initWithPersistentID:d];
}

- (_TtC12HealthDaemon29HDHRFAMeasureCollectionEntity)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for HDHRFAMeasureCollectionEntity();
  return [(HDHRFAMeasureCollectionEntity *)&v3 init];
}

@end