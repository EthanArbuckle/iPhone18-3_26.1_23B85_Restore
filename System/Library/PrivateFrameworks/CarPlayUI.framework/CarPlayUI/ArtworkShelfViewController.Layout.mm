@interface ArtworkShelfViewController.Layout
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset withScrollingVelocity:(CGPoint)velocity;
- (_TtCC9CarPlayUI26ArtworkShelfViewControllerP33_0605145B83C8F0D0362F9ABD7B0C16D96Layout)init;
- (_TtCC9CarPlayUI26ArtworkShelfViewControllerP33_0605145B83C8F0D0362F9ABD7B0C16D96Layout)initWithCoder:(id)coder;
@end

@implementation ArtworkShelfViewController.Layout

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset withScrollingVelocity:(CGPoint)velocity
{
  y = velocity.y;
  x = velocity.x;
  v6 = offset.y;
  v7 = offset.x;
  selfCopy = self;
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

- (_TtCC9CarPlayUI26ArtworkShelfViewControllerP33_0605145B83C8F0D0362F9ABD7B0C16D96Layout)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ArtworkShelfViewController.Layout();
  coderCopy = coder;
  v5 = [(UICollectionViewFlowLayout *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end