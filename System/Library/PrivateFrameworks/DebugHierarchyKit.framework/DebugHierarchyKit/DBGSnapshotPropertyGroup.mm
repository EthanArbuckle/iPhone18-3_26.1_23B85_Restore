@interface DBGSnapshotPropertyGroup
- (DBGSnapshot)snapshot;
@end

@implementation DBGSnapshotPropertyGroup

- (DBGSnapshot)snapshot
{
  WeakRetained = objc_loadWeakRetained(&self->_snapshot);

  return WeakRetained;
}

@end