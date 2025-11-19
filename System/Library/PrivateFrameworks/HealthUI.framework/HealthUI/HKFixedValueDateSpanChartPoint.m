@interface HKFixedValueDateSpanChartPoint
- (HKFixedValueDateSpanChartPoint)initWithTrendSpan:(id)a3 styleIdentifier:(int64_t)a4 localizableTrendDescription:(id)a5 fixedValueScalingBlock:(id)a6;
- (id)_buildSinglePointData;
- (id)allYValues;
- (id)xValueAsGenericType;
- (id)yValue;
@end

@implementation HKFixedValueDateSpanChartPoint

- (HKFixedValueDateSpanChartPoint)initWithTrendSpan:(id)a3 styleIdentifier:(int64_t)a4 localizableTrendDescription:(id)a5 fixedValueScalingBlock:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v25.receiver = self;
  v25.super_class = HKFixedValueDateSpanChartPoint;
  v13 = [(HKFixedValueDateSpanChartPoint *)&v25 init];
  if (v13)
  {
    v14 = [v10 trendDateInterval];
    v15 = [v14 startDate];
    xStart = v13->_xStart;
    v13->_xStart = v15;

    v17 = [v10 trendDateInterval];
    v18 = [v17 endDate];
    xEnd = v13->_xEnd;
    v13->_xEnd = v18;

    v20 = [v10 trendAverage];
    averageValue = v13->_averageValue;
    v13->_averageValue = v20;

    v13->_styleIdentifier = a4;
    objc_storeStrong(&v13->_localizableTrendDescription, a5);
    v22 = _Block_copy(v12);
    fixedValueScalingBlock = v13->_fixedValueScalingBlock;
    v13->_fixedValueScalingBlock = v22;
  }

  return v13;
}

- (id)_buildSinglePointData
{
  v3 = objc_alloc_init(HKInteractiveChartSinglePointData);
  v4 = [(HKFixedValueDateSpanChartPoint *)self preferredUnit];
  if (v4)
  {
    v5 = [(HKFixedValueDateSpanChartPoint *)self preferredUnit];
  }

  else
  {
    v6 = [(HKFixedValueDateSpanChartPoint *)self averageValue];
    v5 = [v6 _unit];
  }

  v7 = [(HKFixedValueDateSpanChartPoint *)self averageValue];
  [v7 doubleValueForUnit:v5];
  [(HKInteractiveChartSinglePointData *)v3 setValue:?];

  [(HKInteractiveChartSinglePointData *)v3 setUnit:v5];
  [(HKInteractiveChartSinglePointData *)v3 setRepresentsRange:0];

  return v3;
}

- (id)xValueAsGenericType
{
  v3 = [(HKFixedValueDateSpanChartPoint *)self xStart];
  v4 = [(HKFixedValueDateSpanChartPoint *)self xEnd];
  v5 = HKDateMidpoint(v3, v4);

  return v5;
}

- (id)yValue
{
  v3 = [(HKFixedValueDateSpanChartPoint *)self preferredUnit];
  if (v3)
  {
    v4 = [(HKFixedValueDateSpanChartPoint *)self preferredUnit];
  }

  else
  {
    v5 = [(HKFixedValueDateSpanChartPoint *)self averageValue];
    v4 = [v5 _unit];
  }

  v6 = [(HKFixedValueDateSpanChartPoint *)self averageValue];
  [v6 doubleValueForUnit:v4];
  v8 = v7;

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
  v10 = [(HKFixedValueDateSpanChartPoint *)self fixedValueScalingBlock];

  if (v10)
  {
    v11 = [(HKFixedValueDateSpanChartPoint *)self fixedValueScalingBlock];
    v12 = (v11)[2](v11, v9);

    v9 = v12;
  }

  return v9;
}

- (id)allYValues
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [(HKFixedValueDateSpanChartPoint *)self yValue];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

@end