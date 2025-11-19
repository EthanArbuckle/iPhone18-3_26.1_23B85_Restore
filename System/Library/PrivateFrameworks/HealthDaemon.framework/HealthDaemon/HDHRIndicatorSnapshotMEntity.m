@interface HDHRIndicatorSnapshotMEntity
- (_TtC12HealthDaemon28HDHRIndicatorSnapshotMEntity)init;
- (_TtC12HealthDaemon28HDHRIndicatorSnapshotMEntity)initWithPersistentID:(int64_t)a3;
@end

@implementation HDHRIndicatorSnapshotMEntity

- (_TtC12HealthDaemon28HDHRIndicatorSnapshotMEntity)initWithPersistentID:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for HDHRIndicatorSnapshotMEntity();
  return [(HDHRMEntity *)&v5 initWithPersistentID:a3];
}

- (_TtC12HealthDaemon28HDHRIndicatorSnapshotMEntity)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for HDHRIndicatorSnapshotMEntity();
  return [(HDHRMEntity *)&v3 init];
}

@end