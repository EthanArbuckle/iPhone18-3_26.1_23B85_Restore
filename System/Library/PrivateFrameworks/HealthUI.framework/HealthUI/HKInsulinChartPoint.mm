@interface HKInsulinChartPoint
- (HKInsulinChartPoint)initWithStartDate:(id)a3 endDate:(id)a4;
- (id)allYValues;
@end

@implementation HKInsulinChartPoint

- (HKInsulinChartPoint)initWithStartDate:(id)a3 endDate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HKInsulinChartPoint;
  v9 = [(HKInsulinChartPoint *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_startDate, a3);
    v11 = HKUIMidDate(v7, v8);
    midDate = v10->_midDate;
    v10->_midDate = v11;
  }

  return v10;
}

- (id)allYValues
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = [(HKInsulinChartPoint *)self basalSum];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &unk_1F4384180;
  }

  v11[0] = v5;
  v6 = [(HKInsulinChartPoint *)self totalSum];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &unk_1F4384180;
  }

  v11[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];

  return v9;
}

@end