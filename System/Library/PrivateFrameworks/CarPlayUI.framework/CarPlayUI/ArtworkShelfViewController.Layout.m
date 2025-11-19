@interface ArtworkShelfViewController.Layout
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3 withScrollingVelocity:(CGPoint)a4;
- (_TtCC9CarPlayUI26ArtworkShelfViewControllerP33_0605145B83C8F0D0362F9ABD7B0C16D96Layout)init;
- (_TtCC9CarPlayUI26ArtworkShelfViewControllerP33_0605145B83C8F0D0362F9ABD7B0C16D96Layout)initWithCoder:(id)a3;
@end

@implementation ArtworkShelfViewController.Layout

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3 withScrollingVelocity:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
  v8 = self;
  v9 = ArtworkShelfViewController.Layout.targetContentOffset(forProposedContentOffset:withScrollingVelocity:)(v7, v6, x, y);
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (_TtCC9CarPlayUI26ArtworkShelfViewControllerP33_0605145B83C8F0D0362F9ABD7B0C16D96Layout)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ArtworkShelfViewController.Layout();
  return [(UICollectionViewFlowLayout *)&v3 init];
}

- (_TtCC9CarPlayUI26ArtworkShelfViewControllerP33_0605145B83C8F0D0362F9ABD7B0C16D96Layout)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ArtworkShelfViewController.Layout();
  v4 = a3;
  v5 = [(UICollectionViewFlowLayout *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end