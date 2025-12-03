@interface HKInsulinChartPoint
- (HKInsulinChartPoint)initWithStartDate:(id)date endDate:(id)endDate;
- (id)allYValues;
@end

@implementation HKInsulinChartPoint

- (HKInsulinChartPoint)initWithStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v14.receiver = self;
  v14.super_class = HKInsulinChartPoint;
  v9 = [(HKInsulinChartPoint *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_startDate, date);
    v11 = HKUIMidDate(dateCopy, endDateCopy);
    midDate = v10->_midDate;
    v10->_midDate = v11;
  }

  return v10;
}

- (id)allYValues
{
  v11[2] = *MEMORY[0x1E69E9840];
  basalSum = [(HKInsulinChartPoint *)self basalSum];
  v4 = basalSum;
  if (basalSum)
  {
    v5 = basalSum;
  }

  else
  {
    v5 = &unk_1F4384180;
  }

  v11[0] = v5;
  totalSum = [(HKInsulinChartPoint *)self totalSum];
  v7 = totalSum;
  if (totalSum)
  {
    v8 = totalSum;
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