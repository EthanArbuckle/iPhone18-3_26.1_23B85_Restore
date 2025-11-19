@interface DebugFormatRulerView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation DebugFormatRulerView

- (void)layoutSubviews
{
  v2 = self;
  sub_1D6321CB4();
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v11.receiver = self;
  v11.super_class = swift_getObjectType();
  v7 = a4;
  v8 = v11.receiver;
  if ([(DebugFormatRulerView *)&v11 pointInside:v7 withEvent:x, y])
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

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v9.receiver;
  [(DebugFormatRulerView *)&v9 traitCollectionDidChange:v4];
  v6 = *&v5[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_borderLayer];
  v7 = [objc_opt_self() separatorColor];
  v8 = [v7 CGColor];

  [v6 setStrokeColor_];
}

@end