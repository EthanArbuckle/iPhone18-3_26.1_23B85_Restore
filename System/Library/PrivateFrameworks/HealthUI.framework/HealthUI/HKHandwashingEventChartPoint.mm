@interface HKHandwashingEventChartPoint
- (HKHandwashingEventChartPoint)initWithStartDate:(id)date endDate:(id)endDate;
- (id)allYValues;
@end

@implementation HKHandwashingEventChartPoint

- (HKHandwashingEventChartPoint)initWithStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v14.receiver = self;
  v14.super_class = HKHandwashingEventChartPoint;
  v9 = [(HKHandwashingEventChartPoint *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_startDate, date);
    objc_storeStrong(&v10->_endDate, endDate);
    v11 = HKUIMidDate(dateCopy, endDateCopy);
    midDate = v10->_midDate;
    v10->_midDate = v11;
  }

  return v10;
}

- (id)allYValues
{
  v5[1] = *MEMORY[0x1E69E9840];
  yValue = [(HKHandwashingEventChartPoint *)self yValue];
  v5[0] = yValue;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

@end