@interface FINumberFormatter
- (id)stringFromNumber:(id)a3;
@end

@implementation FINumberFormatter

- (id)stringFromNumber:(id)a3
{
  v4 = a3;
  if (![(FINumberFormatter *)self maximumFractionDigits])
  {
    [v4 doubleValue];
    v8 = v7;
    v9 = [(FINumberFormatter *)self roundingMode];
    if (v9 <= 3)
    {
      if (v9 && v9 != 2 || v8 >= 0.0)
      {
        goto LABEL_2;
      }

      v10 = -1.0;
    }

    else
    {
      if ((v9 - 4) < 2)
      {
        if (v8 >= 0.0 || v8 < -0.5)
        {
          goto LABEL_2;
        }

LABEL_18:
        v11 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];

        v4 = v11;
        goto LABEL_2;
      }

      if (v9 != 6 || v8 >= 0.0)
      {
        goto LABEL_2;
      }

      v10 = -0.5;
    }

    if (v8 <= v10)
    {
      goto LABEL_2;
    }

    goto LABEL_18;
  }

LABEL_2:
  v12.receiver = self;
  v12.super_class = FINumberFormatter;
  v5 = [(FINumberFormatter *)&v12 stringFromNumber:v4];

  return v5;
}

@end