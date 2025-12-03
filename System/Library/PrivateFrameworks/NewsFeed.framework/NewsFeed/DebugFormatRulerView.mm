@interface DebugFormatRulerView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation DebugFormatRulerView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1D6321CB4();
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  v11.receiver = self;
  v11.super_class = swift_getObjectType();
  eventCopy = event;
  v8 = v11.receiver;
  if ([(DebugFormatRulerView *)&v11 pointInside:eventCopy withEvent:x, y])
  {
    [*&v8[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_horizontalRulerEdgeView] frame];
    v12.x = x;
    v12.y = y;
    if (CGRectContainsPoint(v14, v12))
    {
      v9 = 1;
    }

    else
    {
      [*&v8[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_verticalRulerEdgeView] frame];
      v13.x = x;
      v13.y = y;
      v9 = CGRectContainsPoint(v15, v13);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v9.receiver;
  [(DebugFormatRulerView *)&v9 traitCollectionDidChange:changeCopy];
  v6 = *&v5[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_borderLayer];
  separatorColor = [objc_opt_self() separatorColor];
  cGColor = [separatorColor CGColor];

  [v6 setStrokeColor_];
}

@end