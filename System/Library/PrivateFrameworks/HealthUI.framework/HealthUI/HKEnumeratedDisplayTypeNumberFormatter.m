@interface HKEnumeratedDisplayTypeNumberFormatter
- (HKEnumeratedDisplayTypeNumberFormatter)initWithDisplayType:(id)a3;
@end

@implementation HKEnumeratedDisplayTypeNumberFormatter

- (HKEnumeratedDisplayTypeNumberFormatter)initWithDisplayType:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKEnumeratedDisplayTypeNumberFormatter;
  v5 = [(HKEnumeratedDisplayTypeNumberFormatter *)&v9 init];
  if (v5)
  {
    v6 = [v4 hk_enumeratedValueLabels];
    valueLabels = v5->_valueLabels;
    v5->_valueLabels = v6;
  }

  return v5;
}

@end