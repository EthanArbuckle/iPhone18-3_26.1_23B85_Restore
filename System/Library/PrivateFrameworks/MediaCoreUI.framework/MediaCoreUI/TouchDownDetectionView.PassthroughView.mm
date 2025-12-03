@interface TouchDownDetectionView.PassthroughView
- (_TtCV11MediaCoreUIP33_F9332246B6179A9B3C5B9D04F10106EF22TouchDownDetectionView15PassthroughView)initWithCoder:(id)coder;
- (_TtCV11MediaCoreUIP33_F9332246B6179A9B3C5B9D04F10106EF22TouchDownDetectionView15PassthroughView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation TouchDownDetectionView.PassthroughView

- (_TtCV11MediaCoreUIP33_F9332246B6179A9B3C5B9D04F10106EF22TouchDownDetectionView15PassthroughView)initWithCoder:(id)coder
{
  result = sub_1C5BCBBC4();
  __break(1u);
  return result;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_1C5A46640(event, x, y);

  return v10;
}

- (_TtCV11MediaCoreUIP33_F9332246B6179A9B3C5B9D04F10106EF22TouchDownDetectionView15PassthroughView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end