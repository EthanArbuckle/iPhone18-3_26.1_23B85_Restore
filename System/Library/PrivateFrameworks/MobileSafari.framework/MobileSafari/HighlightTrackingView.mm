@interface HighlightTrackingView
- (_TtC12MobileSafari21HighlightTrackingView)initWithCoder:(id)a3;
- (_TtC12MobileSafari21HighlightTrackingView)initWithFrame:(CGRect)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation HighlightTrackingView

- (_TtC12MobileSafari21HighlightTrackingView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12MobileSafari21HighlightTrackingView_touchForHighlight) = 0;
  v8 = (&self->super.super.super.isa + OBJC_IVAR____TtC12MobileSafari21HighlightTrackingView_touchForHighlightDidChange);
  v9 = type metadata accessor for HighlightTrackingView();
  *v8 = 0;
  v8[1] = 0;
  v11.receiver = self;
  v11.super_class = v9;
  return [(HighlightTrackingView *)&v11 initWithFrame:x, y, width, height];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  sub_18BBCFE10();
  sub_18BAAA034();
  v6 = sub_18BC20FD8();
  v7 = a4;
  v8 = self;
  v9 = sub_18BC20FC8();
  v11.receiver = v8;
  v11.super_class = type metadata accessor for HighlightTrackingView();
  [(HighlightTrackingView *)&v11 touchesBegan:v9 withEvent:v7];

  v10 = sub_18BA61AC4(v6);

  sub_18BBCFA44(v10);
}

- (_TtC12MobileSafari21HighlightTrackingView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12MobileSafari21HighlightTrackingView_touchForHighlight) = 0;
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC12MobileSafari21HighlightTrackingView_touchForHighlightDidChange);
  *v4 = 0;
  v4[1] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for HighlightTrackingView();
  v5 = a3;
  v6 = [(HighlightTrackingView *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end