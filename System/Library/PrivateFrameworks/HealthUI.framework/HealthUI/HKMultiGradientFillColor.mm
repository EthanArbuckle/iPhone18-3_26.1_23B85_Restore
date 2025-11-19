@interface HKMultiGradientFillColor
- (HKMultiGradientFillColor)initWithColor:(id)a3 location:(id)a4;
@end

@implementation HKMultiGradientFillColor

- (HKMultiGradientFillColor)initWithColor:(id)a3 location:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HKMultiGradientFillColor;
  v9 = [(HKMultiGradientFillColor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_color, a3);
    objc_storeStrong(&v10->_location, a4);
  }

  return v10;
}

@end