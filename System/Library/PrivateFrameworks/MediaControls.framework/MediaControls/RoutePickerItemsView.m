@interface RoutePickerItemsView
- (CGSize)sizeThatFits:(CGSize)a3;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
@end

@implementation RoutePickerItemsView

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  v5 = *(sub_1A212397C() + 16);

  v6 = *sub_1A221CF04();

  v7 = v6 * v5 + 14.0;
  v8 = width;
  result.height = v7;
  result.width = v8;
  return result;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = sub_1A22E56B8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A22E5698();
  v10 = a3;
  v11 = self;
  sub_1A22D60E4();
  v12 = sub_1A22E5688();
  [v10 deselectItemAtIndexPath:v12 animated:1];

  (*(v7 + 8))(v9, v6);
}

- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5
{
  sub_1A22E56B8();
  v7 = sub_1A22E6748();
  v8 = a3;
  v9 = self;
  v10 = sub_1A22D7D54(v7);

  return v10;
}

@end