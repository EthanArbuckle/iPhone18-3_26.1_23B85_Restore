@interface GKMultiplayerViewControllerLayout
+ (UIEdgeInsets)minimumContentInsetIn:(id)a3;
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3;
- (CGSize)collectionViewContentSize;
- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)a3;
- (int64_t)cellLayoutMode;
- (void)prepareLayout;
@end

@implementation GKMultiplayerViewControllerLayout

- (void)prepareLayout
{
  v2 = self;
  sub_24E0744D4();
}

- (CGSize)collectionViewContentSize
{
  v2 = self;
  v3 = sub_24E0747A4();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (int64_t)cellLayoutMode
{
  v2 = self;
  v3 = sub_24E074928();

  return v3;
}

+ (UIEdgeInsets)minimumContentInsetIn:(id)a3
{
  v3 = a3;
  static GKMultiplayerViewControllerLayout.minimumContentInset(in:)(v3);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  v8 = sub_24E074BA8(x, y, width, height);

  return v8 & 1;
}

- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)a3
{
  v4 = sub_24E343518();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343498();
  v8 = self;
  v9 = sub_24E074CD8();

  (*(v5 + 8))(v7, v4);

  return v9;
}

@end