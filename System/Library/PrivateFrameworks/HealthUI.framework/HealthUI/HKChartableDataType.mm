@interface HKChartableDataType
- (HKChartableDataType)initWithDisplayType:(id)a3;
- (HKChartableDataType)initWithIdentifier:(id)a3 onlyOneValuePerDay:(BOOL)a4;
- (id)hk_customSeriesPointIntervalComponentsForTimeScope:(int64_t)a3 resolution:(int64_t)a4;
- (unint64_t)hk_chartCalendarUnitForTimeScope:(int64_t)a3;
@end

@implementation HKChartableDataType

- (HKChartableDataType)initWithIdentifier:(id)a3 onlyOneValuePerDay:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = HKChartableDataType;
  v8 = [(HKChartableDataType *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_typeIdentifier, a3);
    v9->_hasOnlyOneValuePerDay = a4;
  }

  return v9;
}

- (id)hk_customSeriesPointIntervalComponentsForTimeScope:(int64_t)a3 resolution:(int64_t)a4
{
  v5 = [(HKChartableDataType *)self hasOnlyOneValuePerDay:a3];
  v6 = 0;
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 6 && v5)
  {
    v6 = objc_opt_new();
    [v6 setDay:1];
  }

  return v6;
}

- (unint64_t)hk_chartCalendarUnitForTimeScope:(int64_t)a3
{
  result = 16;
  if (a3 <= 2)
  {
    v7 = 8;
    if (a3 != 2)
    {
      v7 = 16;
    }

    if (a3 >= 2)
    {
      return v7;
    }

    else
    {
      return 4;
    }
  }

  else if ((a3 - 6) < 2)
  {
    if ([(HKChartableDataType *)self hasOnlyOneValuePerDay])
    {
      return 16;
    }

    else
    {
      return 32;
    }
  }

  else if (a3 == 3)
  {
    return 0x2000;
  }

  else if (a3 == 8)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"HKChartableDataType.m" lineNumber:58 description:{@"Invalid zoom level (%ld)", 8}];

    return 16;
  }

  return result;
}

- (HKChartableDataType)initWithDisplayType:(id)a3
{
  v4 = a3;
  v5 = [v4 displayTypeIdentifierString];
  v6 = [v4 presentation];

  v7 = [v6 configurationForTimeScope:5];
  v8 = -[HKChartableDataType initWithIdentifier:onlyOneValuePerDay:](self, "initWithIdentifier:onlyOneValuePerDay:", v5, [v7 singleDailyValue]);

  return v8;
}

@end