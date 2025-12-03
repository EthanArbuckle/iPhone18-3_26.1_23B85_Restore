@interface HKMultiGradientFillColor
- (HKMultiGradientFillColor)initWithColor:(id)color location:(id)location;
@end

@implementation HKMultiGradientFillColor

- (HKMultiGradientFillColor)initWithColor:(id)color location:(id)location
{
  colorCopy = color;
  locationCopy = location;
  v12.receiver = self;
  v12.super_class = HKMultiGradientFillColor;
  v9 = [(HKMultiGradientFillColor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_color, color);
    objc_storeStrong(&v10->_location, location);
  }

  return v10;
}

@end