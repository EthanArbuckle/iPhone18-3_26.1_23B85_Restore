@interface CNUIPRUISPosterSnapshotBundle
- (CNUIPRUISPosterSnapshotBundle)initWithWrappedBundle:(id)a3;
- (NSArray)snapshotLevelSets;
- (id)snapshotForLevelSet:(id)a3;
@end

@implementation CNUIPRUISPosterSnapshotBundle

- (CNUIPRUISPosterSnapshotBundle)initWithWrappedBundle:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CNUIPRUISPosterSnapshotBundle;
  v6 = [(CNUIPRUISPosterSnapshotBundle *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedSnapshotBundle, a3);
  }

  return v7;
}

- (NSArray)snapshotLevelSets
{
  v2 = [(PRUISPosterSnapshotBundle *)self->_wrappedSnapshotBundle snapshotLevelSets];
  v3 = [v2 _cn_map:&__block_literal_global_54];

  return v3;
}

CNUIPRUISPosterLevelSet *__50__CNUIPRUISPosterSnapshotBundle_snapshotLevelSets__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[CNUIPRUISPosterLevelSet alloc] initWithWrappedLevelSet:v2];

  return v3;
}

- (id)snapshotForLevelSet:(id)a3
{
  wrappedSnapshotBundle = self->_wrappedSnapshotBundle;
  v4 = [a3 wrappedLevelSet];
  v5 = [(PRUISPosterSnapshotBundle *)wrappedSnapshotBundle snapshotForLevelSet:v4];

  return v5;
}

@end