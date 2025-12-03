@interface HFTimeIntervalFormatter
- (id)stringForObjectValue:(id)value;
@end

@implementation HFTimeIntervalFormatter

- (id)stringForObjectValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [valueCopy doubleValue];
    v6 = v5;

    v7 = [(NSDateComponentsFormatter *)self stringFromTimeInterval:v6];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = HFTimeIntervalFormatter;
    v7 = [(NSDateComponentsFormatter *)&v9 stringForObjectValue:valueCopy];
  }

  return v7;
}

@end