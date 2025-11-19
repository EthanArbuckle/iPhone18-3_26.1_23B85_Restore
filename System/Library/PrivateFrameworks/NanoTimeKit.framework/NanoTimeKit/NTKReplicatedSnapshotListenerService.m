@interface NTKReplicatedSnapshotListenerService
- (NTKReplicatedSnapshotListenerService)init;
@end

@implementation NTKReplicatedSnapshotListenerService

- (NTKReplicatedSnapshotListenerService)init
{
  v3 = OBJC_IVAR___NTKReplicatedSnapshotListenerService_service;
  type metadata accessor for ReplicationListenerService();
  v4 = swift_allocObject();
  sub_22DC7E344();
  *(&self->super.isa + v3) = v4;
  v6.receiver = self;
  v6.super_class = NTKReplicatedSnapshotListenerService;
  return [(NTKReplicatedSnapshotListenerService *)&v6 init];
}

@end