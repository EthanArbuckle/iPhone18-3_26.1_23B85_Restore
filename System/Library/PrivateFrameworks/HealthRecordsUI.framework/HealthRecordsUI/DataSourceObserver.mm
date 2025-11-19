@interface DataSourceObserver
- (void)snapshotDidChangeWithDataSourceID:(id)a3 snapshot:(id)a4 animated:(BOOL)a5;
@end

@implementation DataSourceObserver

- (void)snapshotDidChangeWithDataSourceID:(id)a3 snapshot:(id)a4 animated:(BOOL)a5
{
  sub_1D1080C34();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138F47C();
  Strong = swift_unknownObjectWeakLoadStrong();

  [Strong reloadData];

  (*(v7 + 8))(v9, v6);
}

@end