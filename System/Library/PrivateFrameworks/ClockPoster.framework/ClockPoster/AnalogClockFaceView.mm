@interface AnalogClockFaceView
- (UIColor)tintColor;
- (void)layoutSubviews;
- (void)setTintColor:(id)color;
@end

@implementation AnalogClockFaceView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1E494A194();
}

- (UIColor)tintColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for AnalogClockFaceView();
  tintColor = [(AnalogClockFaceView *)&v4 tintColor];

  return tintColor;
}

- (void)setTintColor:(id)color
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for AnalogClockFaceView();
  colorCopy = color;
  v5 = v6.receiver;
  [(AnalogClockFaceView *)&v6 setTintColor:colorCopy];
  sub_1E494B0D8();
}

@end