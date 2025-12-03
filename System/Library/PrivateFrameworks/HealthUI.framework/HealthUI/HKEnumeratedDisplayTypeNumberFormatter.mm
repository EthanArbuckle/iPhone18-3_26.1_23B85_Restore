@interface HKEnumeratedDisplayTypeNumberFormatter
- (HKEnumeratedDisplayTypeNumberFormatter)initWithDisplayType:(id)type;
@end

@implementation HKEnumeratedDisplayTypeNumberFormatter

- (HKEnumeratedDisplayTypeNumberFormatter)initWithDisplayType:(id)type
{
  typeCopy = type;
  v9.receiver = self;
  v9.super_class = HKEnumeratedDisplayTypeNumberFormatter;
  v5 = [(HKEnumeratedDisplayTypeNumberFormatter *)&v9 init];
  if (v5)
  {
    hk_enumeratedValueLabels = [typeCopy hk_enumeratedValueLabels];
    valueLabels = v5->_valueLabels;
    v5->_valueLabels = hk_enumeratedValueLabels;
  }

  return v5;
}

@end