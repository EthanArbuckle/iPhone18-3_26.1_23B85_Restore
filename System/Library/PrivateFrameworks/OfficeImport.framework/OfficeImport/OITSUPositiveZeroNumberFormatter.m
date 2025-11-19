@interface OITSUPositiveZeroNumberFormatter
- (id)stringForObjectValue:(id)a3;
@end

@implementation OITSUPositiveZeroNumberFormatter

- (id)stringForObjectValue:(id)a3
{
  if (objc_opt_respondsToSelector())
  {
    [a3 floatValue];
    v6 = v5;
    [-[OITSUPositiveZeroNumberFormatter multiplier](self "multiplier")];
    if (v7 != 0.0)
    {
      v6 = v6 * v7;
    }

    if (v6 > pow(0.1, [(OITSUPositiveZeroNumberFormatter *)self maximumFractionDigits]) * -0.5 && v6 <= 0.0)
    {
      a3 = &unk_286F6D788;
    }
  }

  v10.receiver = self;
  v10.super_class = OITSUPositiveZeroNumberFormatter;
  return [(OITSUPositiveZeroNumberFormatter *)&v10 stringForObjectValue:a3];
}

@end