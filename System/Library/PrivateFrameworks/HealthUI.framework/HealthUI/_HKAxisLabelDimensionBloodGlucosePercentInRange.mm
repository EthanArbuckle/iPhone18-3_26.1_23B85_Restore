@interface _HKAxisLabelDimensionBloodGlucosePercentInRange
- (_HKAxisLabelDimensionBloodGlucosePercentInRange)init;
@end

@implementation _HKAxisLabelDimensionBloodGlucosePercentInRange

- (_HKAxisLabelDimensionBloodGlucosePercentInRange)init
{
  v6.receiver = self;
  v6.super_class = _HKAxisLabelDimensionBloodGlucosePercentInRange;
  v2 = [(_HKAxisLabelDimensionBloodGlucosePercentInRange *)&v6 init];
  if (v2)
  {
    hk_percentNumberFormatter = [MEMORY[0x1E696ADA0] hk_percentNumberFormatter];
    formatter = v2->_formatter;
    v2->_formatter = hk_percentNumberFormatter;
  }

  return v2;
}

@end