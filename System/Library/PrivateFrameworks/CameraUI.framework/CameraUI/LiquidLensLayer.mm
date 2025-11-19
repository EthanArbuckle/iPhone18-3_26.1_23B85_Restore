@interface LiquidLensLayer
- (CGRect)bounds;
- (_TtC8CameraUI15LiquidLensLayer)initWithLayer:(id)a3;
- (double)cornerRadius;
- (void)layoutSublayers;
- (void)setBounds:(CGRect)a3;
- (void)setCornerRadius:(double)a3;
@end

@implementation LiquidLensLayer

- (_TtC8CameraUI15LiquidLensLayer)initWithLayer:(id)a3
{
  swift_unknownObjectRetain();
  sub_1A3A31E60();
  swift_unknownObjectRelease();
  return sub_1A39C8E6C(v4);
}

- (double)cornerRadius
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for LiquidLensLayer();
  [(LiquidLensLayer *)&v3 cornerRadius];
  return result;
}

- (void)setCornerRadius:(double)a3
{
  v4 = self;
  sub_1A39C9124(a3);
}

- (void)layoutSublayers
{
  v2 = self;
  sub_1A39CA1B8();
}

- (CGRect)bounds
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for LiquidLensLayer();
  [(LiquidLensLayer *)&v6 bounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9.receiver = self;
  v9.super_class = type metadata accessor for LiquidLensLayer();
  v7 = v9.receiver;
  [(LiquidLensLayer *)&v9 setBounds:x, y, width, height];
  v8 = v7;
  sub_1A39900D0(v8, v8);
}

@end