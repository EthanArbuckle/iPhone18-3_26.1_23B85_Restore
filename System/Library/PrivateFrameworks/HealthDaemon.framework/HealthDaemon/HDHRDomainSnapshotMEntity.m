@interface HDHRDomainSnapshotMEntity
- (_TtC12HealthDaemon25HDHRDomainSnapshotMEntity)init;
- (_TtC12HealthDaemon25HDHRDomainSnapshotMEntity)initWithPersistentID:(int64_t)a3;
@end

@implementation HDHRDomainSnapshotMEntity

- (_TtC12HealthDaemon25HDHRDomainSnapshotMEntity)initWithPersistentID:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for HDHRDomainSnapshotMEntity();
  return [(HDHRMEntity *)&v5 initWithPersistentID:a3];
}

- (_TtC12HealthDaemon25HDHRDomainSnapshotMEntity)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for HDHRDomainSnapshotMEntity();
  return [(HDHRMEntity *)&v3 init];
}

@end