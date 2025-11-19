@interface HKJulianIndexedSevenDayQuantityChartPoint
- (HKJulianIndexedSevenDayQuantityChartPoint)initWithStartDate:(id)a3 endDate:(id)a4 displayType:(id)a5 unit:(id)a6 quantity:(id)a7;
- (NSString)description;
- (id)allYValues;
@end

@implementation HKJulianIndexedSevenDayQuantityChartPoint

- (HKJulianIndexedSevenDayQuantityChartPoint)initWithStartDate:(id)a3 endDate:(id)a4 displayType:(id)a5 unit:(id)a6 quantity:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v26.receiver = self;
  v26.super_class = HKJulianIndexedSevenDayQuantityChartPoint;
  v18 = [(HKJulianIndexedSevenDayQuantityChartPoint *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_xStart, a3);
    objc_storeStrong(&v19->_xEnd, a4);
    v20 = MEMORY[0x1E696AD98];
    [v17 doubleValueForUnit:v16];
    v21 = [v20 numberWithDouble:?];
    v22 = [v15 presentation];
    v23 = [v22 adjustedValueForDaemonValue:v21];
    yValue = v19->_yValue;
    v19->_yValue = v23;
  }

  return v19;
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

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = HKJulianIndexedSevenDayQuantityChartPoint;
  v4 = [(HKJulianIndexedSevenDayQuantityChartPoint *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ { (%@ - %@), %@ }", v4, self->_xStart, self->_xEnd, self->_yValue];

  return v5;
}

@end