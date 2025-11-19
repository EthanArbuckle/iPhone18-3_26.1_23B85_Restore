@interface HKNumericChartPoint
- (HKNumericChartPoint)initWithXValue:(id)a3 yValue:(id)a4 userInfo:(id)a5;
- (id)allYValues;
@end

@implementation HKNumericChartPoint

- (HKNumericChartPoint)initWithXValue:(id)a3 yValue:(id)a4 userInfo:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HKNumericChartPoint;
  v12 = [(HKNumericChartPoint *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_xValue, a3);
    objc_storeStrong(&v13->_yValue, a4);
    objc_storeStrong(&v13->_userInfo, a5);
  }

  return v13;
}

- (id)allYValues
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (self->_yValue)
  {
    v4[0] = self->_yValue;
    v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  }

  else
  {
    v2 = MEMORY[0x1E695E0F0];
  }

  return v2;
}

@end