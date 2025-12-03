@interface FINumberFormatter
- (id)stringFromNumber:(id)number;
@end

@implementation FINumberFormatter

- (id)stringFromNumber:(id)number
{
  numberCopy = number;
  if (![(FINumberFormatter *)self maximumFractionDigits])
  {
    [numberCopy doubleValue];
    v8 = v7;
    roundingMode = [(FINumberFormatter *)self roundingMode];
    if (roundingMode <= 3)
    {
      if (roundingMode && roundingMode != 2 || v8 >= 0.0)
      {
        goto LABEL_2;
      }

      v10 = -1.0;
    }

    else
    {
      if ((roundingMode - 4) < 2)
      {
        if (v8 >= 0.0 || v8 < -0.5)
        {
          goto LABEL_2;
        }

LABEL_18:
        v11 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];

        numberCopy = v11;
        goto LABEL_2;
      }

      if (roundingMode != 6 || v8 >= 0.0)
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
  v5 = [(FINumberFormatter *)&v12 stringFromNumber:numberCopy];

  return v5;
}

@end