@interface AnalogClockFaceView
- (UIColor)tintColor;
- (void)layoutSubviews;
- (void)setTintColor:(id)a3;
@end

@implementation AnalogClockFaceView

- (void)layoutSubviews
{
  v2 = self;
  sub_1E494A194();
}

- (UIColor)tintColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for AnalogClockFaceView();
  v2 = [(AnalogClockFaceView *)&v4 tintColor];

  return v2;
}

- (void)setTintColor:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for AnalogClockFaceView();
  v4 = a3;
  v5 = v6.receiver;
  [(AnalogClockFaceView *)&v6 setTintColor:v4];
  sub_1E494B0D8();
}

@end