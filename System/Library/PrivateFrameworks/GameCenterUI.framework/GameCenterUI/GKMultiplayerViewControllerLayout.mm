@interface GKMultiplayerViewControllerLayout
+ (UIEdgeInsets)minimumContentInsetIn:(id)in;
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change;
- (CGSize)collectionViewContentSize;
- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)path;
- (int64_t)cellLayoutMode;
- (void)prepareLayout;
@end

@implementation GKMultiplayerViewControllerLayout

- (void)prepareLayout
{
  selfCopy = self;
  sub_24E0744D4();
}

- (CGSize)collectionViewContentSize
{
  selfCopy = self;
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
  selfCopy = self;
  v3 = sub_24E074928();

  return v3;
}

+ (UIEdgeInsets)minimumContentInsetIn:(id)in
{
  inCopy = in;
  static GKMultiplayerViewControllerLayout.minimumContentInset(in:)(inCopy);
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

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  y = change.origin.y;
  x = change.origin.x;
  selfCopy = self;
  v8 = sub_24E074BA8(x, y, width, height);

  return v8 & 1;
}

- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)path
{
  v4 = sub_24E343518();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343498();
  selfCopy = self;
  v9 = sub_24E074CD8();

  (*(v5 + 8))(v7, v4);

  return v9;
}

@end