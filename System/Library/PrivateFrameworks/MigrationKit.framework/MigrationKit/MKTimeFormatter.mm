@interface MKTimeFormatter
- (MKTimeFormatter)init;
- (id)stringForObjectValue:(id)value;
@end

@implementation MKTimeFormatter

- (MKTimeFormatter)init
{
  v5.receiver = self;
  v5.super_class = MKTimeFormatter;
  v2 = [(MKTimeFormatter *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MKTimeFormatter *)v2 setNumberStyle:1];
    [(MKTimeFormatter *)v3 setMinimumFractionDigits:2];
    [(MKTimeFormatter *)v3 setMaximumFractionDigits:2];
    [(MKTimeFormatter *)v3 setPositiveSuffix:@" m"];
    [(MKTimeFormatter *)v3 setRoundingMode:6];
  }

  return v3;
}

- (id)stringForObjectValue:(id)value
{
  if (value)
  {
    v4 = MEMORY[0x277CCABB0];
    [value doubleValue];
    v6 = [v4 numberWithDouble:v5 / 60.0];
    v10.receiver = self;
    v10.super_class = MKTimeFormatter;
    v7 = [(MKTimeFormatter *)&v10 stringForObjectValue:v6];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = MKTimeFormatter;
    v7 = [(MKTimeFormatter *)&v9 stringForObjectValue:?];
  }

  return v7;
}

@end