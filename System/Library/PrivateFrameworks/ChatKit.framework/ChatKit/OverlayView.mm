@interface OverlayView
- (_TtC7ChatKitP33_6BA1EC2413358C7DCB03488D5B882EB711OverlayView)initWithCoder:(id)a3;
- (_TtC7ChatKitP33_6BA1EC2413358C7DCB03488D5B882EB711OverlayView)initWithFrame:(CGRect)a3;
@end

@implementation OverlayView

- (_TtC7ChatKitP33_6BA1EC2413358C7DCB03488D5B882EB711OverlayView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for OverlayView();
  return [(OverlayView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7ChatKitP33_6BA1EC2413358C7DCB03488D5B882EB711OverlayView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for OverlayView();
  v4 = a3;
  v5 = [(OverlayView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end