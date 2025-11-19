@interface HKAccessibilitySpan
- (HKAccessibilitySpan)initWithTitle:(id)a3 seriesType:(int64_t)a4 dataComprehensionMinYValue:(id)a5 dataComprehensionMaxYValue:(id)a6 dataComprehensionUnitForChart:(id)a7;
- (id)description;
@end

@implementation HKAccessibilitySpan

- (HKAccessibilitySpan)initWithTitle:(id)a3 seriesType:(int64_t)a4 dataComprehensionMinYValue:(id)a5 dataComprehensionMaxYValue:(id)a6 dataComprehensionUnitForChart:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = HKAccessibilitySpan;
  v17 = [(HKAccessibilitySpan *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_dataSeriesTitle, a3);
    v18->_dataSeriesType = a4;
    objc_storeStrong(&v18->_dataComprehensionMinYValue, a5);
    objc_storeStrong(&v18->_dataComprehensionMaxYValue, a6);
    objc_storeStrong(&v18->_dataComprehensionUnitForChart, a7);
  }

  return v18;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"HKAccessibiltySpan %p:", self];
  [v3 addObject:v4];

  v5 = MEMORY[0x1E696AEC0];
  v6 = [(HKAccessibilitySpan *)self dataSeriesTitle];
  v7 = [v5 stringWithFormat:@"  dataSeriesTitle: '%@'", v6];
  [v3 addObject:v7];

  v8 = [(HKAccessibilitySpan *)self dataSeriesType];
  if (v8 > 2)
  {
    v9 = @"Unknown";
  }

  else
  {
    v9 = off_1E81B8158[v8];
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"  dataSeriesType = %@", v9];
  [v3 addObject:v10];

  v11 = MEMORY[0x1E696AEC0];
  v12 = [(HKAccessibilitySpan *)self dataComprehensionMinYValue];
  v13 = [v11 stringWithFormat:@"  dataComprehensionMinYValue = %@", v12];
  [v3 addObject:v13];

  v14 = MEMORY[0x1E696AEC0];
  v15 = [(HKAccessibilitySpan *)self dataComprehensionMaxYValue];
  v16 = [v14 stringWithFormat:@"  dataComprehensionMaxYValue = %@", v15];
  [v3 addObject:v16];

  v17 = MEMORY[0x1E696AEC0];
  v18 = [(HKAccessibilitySpan *)self dataComprehensionUnitForChart];
  v19 = [v17 stringWithFormat:@"  dataComprehensionUnitForChart = %@", v18];
  [v3 addObject:v19];

  v20 = [v3 componentsJoinedByString:@"\n"];

  return v20;
}

@end