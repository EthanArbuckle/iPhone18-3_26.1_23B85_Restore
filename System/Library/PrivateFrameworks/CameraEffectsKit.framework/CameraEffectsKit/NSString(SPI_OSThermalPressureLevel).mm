@interface NSString(SPI_OSThermalPressureLevel)
+ (__CFString)stringFromOSThermalPressureLevel:()SPI_OSThermalPressureLevel;
@end

@implementation NSString(SPI_OSThermalPressureLevel)

+ (__CFString)stringFromOSThermalPressureLevel:()SPI_OSThermalPressureLevel
{
  v3 = @"heavy";
  v4 = @"trapping";
  v5 = @"sleeping";
  if (a3 != 50)
  {
    v5 = 0;
  }

  if (a3 != 40)
  {
    v4 = v5;
  }

  if (a3 != 30)
  {
    v3 = v4;
  }

  v6 = @"moderate";
  if (a3 != 20)
  {
    v6 = 0;
  }

  if (a3 == 10)
  {
    v6 = @"light";
  }

  if (!a3)
  {
    v6 = @"nominal";
  }

  if (a3 <= 29)
  {
    return v6;
  }

  else
  {
    return v3;
  }
}

@end