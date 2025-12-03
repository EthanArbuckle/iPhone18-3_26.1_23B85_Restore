@interface OverlayView
- (_TtC7ChatKitP33_6BA1EC2413358C7DCB03488D5B882EB711OverlayView)initWithCoder:(id)coder;
- (_TtC7ChatKitP33_6BA1EC2413358C7DCB03488D5B882EB711OverlayView)initWithFrame:(CGRect)frame;
@end

@implementation OverlayView

- (_TtC7ChatKitP33_6BA1EC2413358C7DCB03488D5B882EB711OverlayView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for OverlayView();
  return [(OverlayView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7ChatKitP33_6BA1EC2413358C7DCB03488D5B882EB711OverlayView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for OverlayView();
  coderCopy = coder;
  v5 = [(OverlayView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end