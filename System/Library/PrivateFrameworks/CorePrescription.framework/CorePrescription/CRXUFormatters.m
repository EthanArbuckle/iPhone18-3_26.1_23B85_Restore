@interface CRXUFormatters
+ (id)BOOLAsString:(BOOL)a3;
+ (id)timeIntervalAsString:(double)a3;
@end

@implementation CRXUFormatters

+ (id)BOOLAsString:(BOOL)a3
{
  if (a3)
  {
    return @"YES";
  }

  else
  {
    return @"NO";
  }
}

+ (id)timeIntervalAsString:(double)a3
{
  v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v5 = v4;
  if (a3 < 0.0)
  {
    [v4 appendString:@"-"];
    a3 = -a3;
  }

  v6 = a3;
  v7 = (a3 - a3) * 1000.0;
  v8 = v6 % 0xE10;
  v9 = v6 % 0xE10 / 0x3C;
  v10 = v6 % 0xE10 % 0x3C;
  if (v6 >= 0xE10)
  {
    [v5 appendFormat:@"%lu:", v6 / 0xE10];
  }

  if ([v5 length])
  {
    v11 = @"%02lu:";
  }

  else
  {
    if (v8 < 0x3C)
    {
      goto LABEL_10;
    }

    v11 = @"%lu:";
  }

  [v5 appendFormat:v11, v9];
LABEL_10:
  if ([v5 length])
  {
    v12 = @"%02lu";
  }

  else
  {
    v12 = @"%lu";
  }

  [v5 appendFormat:v12, v10];
  if (v7)
  {
    [v5 appendFormat:@".%03lu", v7];
  }

  v13 = [MEMORY[0x277CCACA8] stringWithString:v5];

  return v13;
}

@end