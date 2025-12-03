@interface DMCRFMBSnapshotIdentifier
- (DMCRFMBSnapshotIdentifier)initWithMBSnapshotIdentifier:(id)identifier;
@end

@implementation DMCRFMBSnapshotIdentifier

- (DMCRFMBSnapshotIdentifier)initWithMBSnapshotIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = DMCRFMBSnapshotIdentifier;
  v6 = [(DMCRFMBSnapshotIdentifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedValue, identifier);
  }

  return v7;
}

@end