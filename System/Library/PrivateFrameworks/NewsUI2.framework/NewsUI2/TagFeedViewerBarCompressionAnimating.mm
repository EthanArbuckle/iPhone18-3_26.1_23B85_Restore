@interface TagFeedViewerBarCompressionAnimating
- (double)maximumBarHeightForTraitCollection:(id)a3;
- (double)topOffset;
- (void)scrollViewIsAtTop:(BOOL)a3 offset:(double)a4;
@end

@implementation TagFeedViewerBarCompressionAnimating

- (double)topOffset
{

  sub_219044CB4();
  v3 = v2;

  return v3;
}

- (void)scrollViewIsAtTop:(BOOL)a3 offset:(double)a4
{

  sub_219045294(a3, a4);
}

- (double)maximumBarHeightForTraitCollection:(id)a3
{
  v3 = a3;

  v4 = sub_219045810();

  return v4;
}

@end