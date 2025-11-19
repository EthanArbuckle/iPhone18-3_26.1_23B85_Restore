@interface HKHandwashingEventChartPoint
- (HKHandwashingEventChartPoint)initWithStartDate:(id)a3 endDate:(id)a4;
- (id)allYValues;
@end

@implementation HKHandwashingEventChartPoint

- (HKHandwashingEventChartPoint)initWithStartDate:(id)a3 endDate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HKHandwashingEventChartPoint;
  v9 = [(HKHandwashingEventChartPoint *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_startDate, a3);
    objc_storeStrong(&v10->_endDate, a4);
    v11 = HKUIMidDate(v7, v8);
    midDate = v10->_midDate;
    v10->_midDate = v11;
  }

  return v10;
}

- (id)allYValues
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [(HKHandwashingEventChartPoint *)self yValue];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

@end