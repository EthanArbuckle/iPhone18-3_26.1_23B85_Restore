@interface HKChartableDataType
- (HKChartableDataType)initWithDisplayType:(id)type;
- (HKChartableDataType)initWithIdentifier:(id)identifier onlyOneValuePerDay:(BOOL)day;
- (id)hk_customSeriesPointIntervalComponentsForTimeScope:(int64_t)scope resolution:(int64_t)resolution;
- (unint64_t)hk_chartCalendarUnitForTimeScope:(int64_t)scope;
@end

@implementation HKChartableDataType

- (HKChartableDataType)initWithIdentifier:(id)identifier onlyOneValuePerDay:(BOOL)day
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = HKChartableDataType;
  v8 = [(HKChartableDataType *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_typeIdentifier, identifier);
    v9->_hasOnlyOneValuePerDay = day;
  }

  return v9;
}

- (id)hk_customSeriesPointIntervalComponentsForTimeScope:(int64_t)scope resolution:(int64_t)resolution
{
  v5 = [(HKChartableDataType *)self hasOnlyOneValuePerDay:scope];
  v6 = 0;
  if ((scope & 0xFFFFFFFFFFFFFFFELL) == 6 && v5)
  {
    v6 = objc_opt_new();
    [v6 setDay:1];
  }

  return v6;
}

- (unint64_t)hk_chartCalendarUnitForTimeScope:(int64_t)scope
{
  result = 16;
  if (scope <= 2)
  {
    v7 = 8;
    if (scope != 2)
    {
      v7 = 16;
    }

    if (scope >= 2)
    {
      return v7;
    }

    else
    {
      return 4;
    }
  }

  else if ((scope - 6) < 2)
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

  else if (scope == 3)
  {
    return 0x2000;
  }

  else if (scope == 8)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HKChartableDataType.m" lineNumber:58 description:{@"Invalid zoom level (%ld)", 8}];

    return 16;
  }

  return result;
}

- (HKChartableDataType)initWithDisplayType:(id)type
{
  typeCopy = type;
  displayTypeIdentifierString = [typeCopy displayTypeIdentifierString];
  presentation = [typeCopy presentation];

  v7 = [presentation configurationForTimeScope:5];
  v8 = -[HKChartableDataType initWithIdentifier:onlyOneValuePerDay:](self, "initWithIdentifier:onlyOneValuePerDay:", displayTypeIdentifierString, [v7 singleDailyValue]);

  return v8;
}

@end