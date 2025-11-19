@interface HFTimeIntervalFormatter
- (id)stringForObjectValue:(id)a3;
@end

@implementation HFTimeIntervalFormatter

- (id)stringForObjectValue:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 doubleValue];
    v6 = v5;

    v7 = [(NSDateComponentsFormatter *)self stringFromTimeInterval:v6];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = HFTimeIntervalFormatter;
    v7 = [(NSDateComponentsFormatter *)&v9 stringForObjectValue:v4];
  }

  return v7;
}

@end