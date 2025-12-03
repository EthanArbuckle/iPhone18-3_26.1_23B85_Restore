@interface HighlightTrackingView
- (_TtC12MobileSafari21HighlightTrackingView)initWithCoder:(id)coder;
- (_TtC12MobileSafari21HighlightTrackingView)initWithFrame:(CGRect)frame;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation HighlightTrackingView

- (_TtC12MobileSafari21HighlightTrackingView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12MobileSafari21HighlightTrackingView_touchForHighlight) = 0;
  v8 = (&self->super.super.super.isa + OBJC_IVAR____TtC12MobileSafari21HighlightTrackingView_touchForHighlightDidChange);
  v9 = type metadata accessor for HighlightTrackingView();
  *v8 = 0;
  v8[1] = 0;
  v11.receiver = self;
  v11.super_class = v9;
  return [(HighlightTrackingView *)&v11 initWithFrame:x, y, width, height];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  sub_18BBCFE10();
  sub_18BAAA034();
  v6 = sub_18BC20FD8();
  eventCopy = event;
  selfCopy = self;
  v9 = sub_18BC20FC8();
  v11.receiver = selfCopy;
  v11.super_class = type metadata accessor for HighlightTrackingView();
  [(HighlightTrackingView *)&v11 touchesBegan:v9 withEvent:eventCopy];

  v10 = sub_18BA61AC4(v6);

  sub_18BBCFA44(v10);
}

- (_TtC12MobileSafari21HighlightTrackingView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12MobileSafari21HighlightTrackingView_touchForHighlight) = 0;
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC12MobileSafari21HighlightTrackingView_touchForHighlightDidChange);
  *v4 = 0;
  v4[1] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for HighlightTrackingView();
  coderCopy = coder;
  v6 = [(HighlightTrackingView *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end