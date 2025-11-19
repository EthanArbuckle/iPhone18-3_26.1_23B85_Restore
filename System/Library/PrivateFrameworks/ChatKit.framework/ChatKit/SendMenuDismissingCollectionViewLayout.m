@interface SendMenuDismissingCollectionViewLayout
- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)a3;
- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
@end

@implementation SendMenuDismissingCollectionViewLayout

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v4 = sub_190D51C00();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D51BC0();
  v8 = self;
  v9 = sub_1908512F8(v7);

  (*(v5 + 8))(v7, v4);

  return v9;
}

- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)a3
{
  v4 = sub_190D51C00();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D51BC0();
  v8 = self;
  v9 = sub_190D51BB0();
  v10 = [(SendMenuDismissingCollectionViewLayout *)v8 layoutAttributesForItemAtIndexPath:v9];

  (*(v5 + 8))(v7, v4);

  return v10;
}

- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)a3
{
  v3 = sub_190D51C00();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D51BC0();
  (*(v4 + 8))(v6, v3);

  return 0;
}

@end