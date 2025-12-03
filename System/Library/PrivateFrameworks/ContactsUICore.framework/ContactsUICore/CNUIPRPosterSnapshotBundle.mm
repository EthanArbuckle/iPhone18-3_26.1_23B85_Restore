@interface CNUIPRPosterSnapshotBundle
- (CNUIPRPosterSnapshotBundle)initWithWrappedBundle:(id)bundle;
- (id)snapshotForLevelSet:(id)set;
@end

@implementation CNUIPRPosterSnapshotBundle

- (CNUIPRPosterSnapshotBundle)initWithWrappedBundle:(id)bundle
{
  bundleCopy = bundle;
  v9.receiver = self;
  v9.super_class = CNUIPRPosterSnapshotBundle;
  v6 = [(CNUIPRPosterSnapshotBundle *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedSnapshotBundle, bundle);
  }

  return v7;
}

- (id)snapshotForLevelSet:(id)set
{
  wrappedSnapshotBundle = self->_wrappedSnapshotBundle;
  wrappedLevelSet = [set wrappedLevelSet];
  v5 = [(PRPosterSnapshotBundle *)wrappedSnapshotBundle snapshotForLevelSet:wrappedLevelSet];

  return v5;
}

@end