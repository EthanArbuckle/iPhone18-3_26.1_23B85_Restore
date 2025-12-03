@interface DebugFormatRulerEdgeView
- (_TtC8NewsFeed24DebugFormatRulerEdgeView)initWithFrame:(CGRect)frame;
- (void)didUpdatePan:(id)pan;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation DebugFormatRulerEdgeView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1D6208348();
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v9.receiver;
  [(DebugFormatRulerEdgeView *)&v9 traitCollectionDidChange:changeCopy];
  v6 = *&v5[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_markerLayer];
  separatorColor = [objc_opt_self() separatorColor];
  cGColor = [separatorColor CGColor];

  [v6 setStrokeColor_];
}

- (void)didUpdatePan:(id)pan
{
  panCopy = pan;
  selfCopy = self;
  sub_1D6209164(panCopy);
}

- (_TtC8NewsFeed24DebugFormatRulerEdgeView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end