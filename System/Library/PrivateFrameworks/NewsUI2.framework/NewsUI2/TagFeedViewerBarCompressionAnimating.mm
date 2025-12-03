@interface TagFeedViewerBarCompressionAnimating
- (double)maximumBarHeightForTraitCollection:(id)collection;
- (double)topOffset;
- (void)scrollViewIsAtTop:(BOOL)top offset:(double)offset;
@end

@implementation TagFeedViewerBarCompressionAnimating

- (double)topOffset
{

  sub_219044CB4();
  v3 = v2;

  return v3;
}

- (void)scrollViewIsAtTop:(BOOL)top offset:(double)offset
{

  sub_219045294(top, offset);
}

- (double)maximumBarHeightForTraitCollection:(id)collection
{
  collectionCopy = collection;

  v4 = sub_219045810();

  return v4;
}

@end