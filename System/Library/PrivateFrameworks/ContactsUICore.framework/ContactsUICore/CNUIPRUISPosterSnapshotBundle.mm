@interface CNUIPRUISPosterSnapshotBundle
- (CNUIPRUISPosterSnapshotBundle)initWithWrappedBundle:(id)bundle;
- (NSArray)snapshotLevelSets;
- (id)snapshotForLevelSet:(id)set;
@end

@implementation CNUIPRUISPosterSnapshotBundle

- (CNUIPRUISPosterSnapshotBundle)initWithWrappedBundle:(id)bundle
{
  bundleCopy = bundle;
  v9.receiver = self;
  v9.super_class = CNUIPRUISPosterSnapshotBundle;
  v6 = [(CNUIPRUISPosterSnapshotBundle *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedSnapshotBundle, bundle);
  }

  return v7;
}

- (NSArray)snapshotLevelSets
{
  snapshotLevelSets = [(PRUISPosterSnapshotBundle *)self->_wrappedSnapshotBundle snapshotLevelSets];
  v3 = [snapshotLevelSets _cn_map:&__block_literal_global_54];

  return v3;
}

CNUIPRUISPosterLevelSet *__50__CNUIPRUISPosterSnapshotBundle_snapshotLevelSets__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[CNUIPRUISPosterLevelSet alloc] initWithWrappedLevelSet:v2];

  return v3;
}

- (id)snapshotForLevelSet:(id)set
{
  wrappedSnapshotBundle = self->_wrappedSnapshotBundle;
  wrappedLevelSet = [set wrappedLevelSet];
  v5 = [(PRUISPosterSnapshotBundle *)wrappedSnapshotBundle snapshotForLevelSet:wrappedLevelSet];

  return v5;
}

@end