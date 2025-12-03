@interface PBUIFixedReplicaSourceProvider
- (PBUIFixedReplicaSourceProvider)init;
- (void)dealloc;
- (void)setPortalSource:(id)source;
- (void)setSnapshotSource:(id)source;
@end

@implementation PBUIFixedReplicaSourceProvider

- (PBUIFixedReplicaSourceProvider)init
{
  v6.receiver = self;
  v6.super_class = PBUIFixedReplicaSourceProvider;
  v2 = [(PBUIFixedReplicaSourceProvider *)&v6 init];
  if (v2)
  {
    v3 = [[PBUIReplicaSourceObserverBox alloc] initWithIdentifier:@"FixedSourceProvider"];
    observers = v2->_observers;
    v2->_observers = v3;
  }

  return v2;
}

- (void)dealloc
{
  [(PBUIFixedReplicaSourceProvider *)self invalidate];
  v3.receiver = self;
  v3.super_class = PBUIFixedReplicaSourceProvider;
  [(PBUIFixedReplicaSourceProvider *)&v3 dealloc];
}

- (void)setPortalSource:(id)source
{
  sourceCopy = source;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_portalSource, source);
    [(PBUIReplicaSourceObserverBox *)self->_observers setNeedsSourceUpdate];
  }
}

- (void)setSnapshotSource:(id)source
{
  sourceCopy = source;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_snapshotSource, source);
    [(PBUIReplicaSourceObserverBox *)self->_observers setNeedsSourceUpdate];
  }
}

@end