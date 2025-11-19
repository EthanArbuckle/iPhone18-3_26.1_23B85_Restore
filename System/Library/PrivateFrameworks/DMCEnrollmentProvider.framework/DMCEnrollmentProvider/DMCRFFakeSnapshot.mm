@interface DMCRFFakeSnapshot
- (DMCRFSnapshotIdentifier)identifier;
@end

@implementation DMCRFFakeSnapshot

- (DMCRFSnapshotIdentifier)identifier
{
  v2 = objc_alloc_init(DMCRFFakeSnapshotIdentifier);

  return v2;
}

@end