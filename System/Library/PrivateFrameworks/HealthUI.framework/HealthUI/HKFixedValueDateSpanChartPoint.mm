@interface HKFixedValueDateSpanChartPoint
- (HKFixedValueDateSpanChartPoint)initWithTrendSpan:(id)span styleIdentifier:(int64_t)identifier localizableTrendDescription:(id)description fixedValueScalingBlock:(id)block;
- (id)_buildSinglePointData;
- (id)allYValues;
- (id)xValueAsGenericType;
- (id)yValue;
@end

@implementation HKFixedValueDateSpanChartPoint

- (HKFixedValueDateSpanChartPoint)initWithTrendSpan:(id)span styleIdentifier:(int64_t)identifier localizableTrendDescription:(id)description fixedValueScalingBlock:(id)block
{
  spanCopy = span;
  descriptionCopy = description;
  blockCopy = block;
  v25.receiver = self;
  v25.super_class = HKFixedValueDateSpanChartPoint;
  v13 = [(HKFixedValueDateSpanChartPoint *)&v25 init];
  if (v13)
  {
    trendDateInterval = [spanCopy trendDateInterval];
    startDate = [trendDateInterval startDate];
    xStart = v13->_xStart;
    v13->_xStart = startDate;

    trendDateInterval2 = [spanCopy trendDateInterval];
    endDate = [trendDateInterval2 endDate];
    xEnd = v13->_xEnd;
    v13->_xEnd = endDate;

    trendAverage = [spanCopy trendAverage];
    averageValue = v13->_averageValue;
    v13->_averageValue = trendAverage;

    v13->_styleIdentifier = identifier;
    objc_storeStrong(&v13->_localizableTrendDescription, description);
    v22 = _Block_copy(blockCopy);
    fixedValueScalingBlock = v13->_fixedValueScalingBlock;
    v13->_fixedValueScalingBlock = v22;
  }

  return v13;
}

- (id)_buildSinglePointData
{
  v3 = objc_alloc_init(HKInteractiveChartSinglePointData);
  preferredUnit = [(HKFixedValueDateSpanChartPoint *)self preferredUnit];
  if (preferredUnit)
  {
    preferredUnit2 = [(HKFixedValueDateSpanChartPoint *)self preferredUnit];
  }

  else
  {
    averageValue = [(HKFixedValueDateSpanChartPoint *)self averageValue];
    preferredUnit2 = [averageValue _unit];
  }

  averageValue2 = [(HKFixedValueDateSpanChartPoint *)self averageValue];
  [averageValue2 doubleValueForUnit:preferredUnit2];
  [(HKInteractiveChartSinglePointData *)v3 setValue:?];

  [(HKInteractiveChartSinglePointData *)v3 setUnit:preferredUnit2];
  [(HKInteractiveChartSinglePointData *)v3 setRepresentsRange:0];

  return v3;
}

- (id)xValueAsGenericType
{
  xStart = [(HKFixedValueDateSpanChartPoint *)self xStart];
  xEnd = [(HKFixedValueDateSpanChartPoint *)self xEnd];
  v5 = HKDateMidpoint(xStart, xEnd);

  return v5;
}

- (id)yValue
{
  preferredUnit = [(HKFixedValueDateSpanChartPoint *)self preferredUnit];
  if (preferredUnit)
  {
    preferredUnit2 = [(HKFixedValueDateSpanChartPoint *)self preferredUnit];
  }

  else
  {
    averageValue = [(HKFixedValueDateSpanChartPoint *)self averageValue];
    preferredUnit2 = [averageValue _unit];
  }

  averageValue2 = [(HKFixedValueDateSpanChartPoint *)self averageValue];
  [averageValue2 doubleValueForUnit:preferredUnit2];
  v8 = v7;

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
  fixedValueScalingBlock = [(HKFixedValueDateSpanChartPoint *)self fixedValueScalingBlock];

  if (fixedValueScalingBlock)
  {
    fixedValueScalingBlock2 = [(HKFixedValueDateSpanChartPoint *)self fixedValueScalingBlock];
    v12 = (fixedValueScalingBlock2)[2](fixedValueScalingBlock2, v9);

    v9 = v12;
  }

  return v9;
}

- (id)allYValues
{
  v5[1] = *MEMORY[0x1E69E9840];
  yValue = [(HKFixedValueDateSpanChartPoint *)self yValue];
  v5[0] = yValue;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

@end