@interface DMCRFMBSnapshotIdentifier
- (DMCRFMBSnapshotIdentifier)initWithMBSnapshotIdentifier:(id)a3;
@end

@implementation DMCRFMBSnapshotIdentifier

- (DMCRFMBSnapshotIdentifier)initWithMBSnapshotIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DMCRFMBSnapshotIdentifier;
  v6 = [(DMCRFMBSnapshotIdentifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedValue, a3);
  }

  return v7;
}

@end