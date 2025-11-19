@interface HDHRConstellationSnapshotMEntity
- (_TtC12HealthDaemon32HDHRConstellationSnapshotMEntity)init;
- (_TtC12HealthDaemon32HDHRConstellationSnapshotMEntity)initWithPersistentID:(int64_t)a3;
@end

@implementation HDHRConstellationSnapshotMEntity

- (_TtC12HealthDaemon32HDHRConstellationSnapshotMEntity)initWithPersistentID:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for HDHRConstellationSnapshotMEntity();
  return [(HDHRMEntity *)&v5 initWithPersistentID:a3];
}

- (_TtC12HealthDaemon32HDHRConstellationSnapshotMEntity)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for HDHRConstellationSnapshotMEntity();
  return [(HDHRMEntity *)&v3 init];
}

@end