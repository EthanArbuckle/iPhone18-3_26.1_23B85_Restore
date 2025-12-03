@interface HKAccessibilitySpan
- (HKAccessibilitySpan)initWithTitle:(id)title seriesType:(int64_t)type dataComprehensionMinYValue:(id)value dataComprehensionMaxYValue:(id)yValue dataComprehensionUnitForChart:(id)chart;
- (id)description;
@end

@implementation HKAccessibilitySpan

- (HKAccessibilitySpan)initWithTitle:(id)title seriesType:(int64_t)type dataComprehensionMinYValue:(id)value dataComprehensionMaxYValue:(id)yValue dataComprehensionUnitForChart:(id)chart
{
  titleCopy = title;
  valueCopy = value;
  yValueCopy = yValue;
  chartCopy = chart;
  v20.receiver = self;
  v20.super_class = HKAccessibilitySpan;
  v17 = [(HKAccessibilitySpan *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_dataSeriesTitle, title);
    v18->_dataSeriesType = type;
    objc_storeStrong(&v18->_dataComprehensionMinYValue, value);
    objc_storeStrong(&v18->_dataComprehensionMaxYValue, yValue);
    objc_storeStrong(&v18->_dataComprehensionUnitForChart, chart);
  }

  return v18;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"HKAccessibiltySpan %p:", self];
  [v3 addObject:v4];

  v5 = MEMORY[0x1E696AEC0];
  dataSeriesTitle = [(HKAccessibilitySpan *)self dataSeriesTitle];
  v7 = [v5 stringWithFormat:@"  dataSeriesTitle: '%@'", dataSeriesTitle];
  [v3 addObject:v7];

  dataSeriesType = [(HKAccessibilitySpan *)self dataSeriesType];
  if (dataSeriesType > 2)
  {
    v9 = @"Unknown";
  }

  else
  {
    v9 = off_1E81B8158[dataSeriesType];
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"  dataSeriesType = %@", v9];
  [v3 addObject:v10];

  v11 = MEMORY[0x1E696AEC0];
  dataComprehensionMinYValue = [(HKAccessibilitySpan *)self dataComprehensionMinYValue];
  v13 = [v11 stringWithFormat:@"  dataComprehensionMinYValue = %@", dataComprehensionMinYValue];
  [v3 addObject:v13];

  v14 = MEMORY[0x1E696AEC0];
  dataComprehensionMaxYValue = [(HKAccessibilitySpan *)self dataComprehensionMaxYValue];
  v16 = [v14 stringWithFormat:@"  dataComprehensionMaxYValue = %@", dataComprehensionMaxYValue];
  [v3 addObject:v16];

  v17 = MEMORY[0x1E696AEC0];
  dataComprehensionUnitForChart = [(HKAccessibilitySpan *)self dataComprehensionUnitForChart];
  v19 = [v17 stringWithFormat:@"  dataComprehensionUnitForChart = %@", dataComprehensionUnitForChart];
  [v3 addObject:v19];

  v20 = [v3 componentsJoinedByString:@"\n"];

  return v20;
}

@end