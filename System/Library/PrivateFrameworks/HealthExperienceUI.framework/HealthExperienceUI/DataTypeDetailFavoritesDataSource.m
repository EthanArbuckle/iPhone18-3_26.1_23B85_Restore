@interface DataTypeDetailFavoritesDataSource
- (void)snapshotDidChangeWithDataSourceID:(id)a3 snapshot:(id)a4 animated:(BOOL)a5;
@end

@implementation DataTypeDetailFavoritesDataSource

- (void)snapshotDidChangeWithDataSourceID:(id)a3 snapshot:(id)a4 animated:(BOOL)a5
{
  sub_1B9F12538();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v13 = v12;
  sub_1BA4A45C8();

  sub_1BA2E7DA4(v11, v13, v14, a5);

  (*(v8 + 8))(v10, v7);
}

@end