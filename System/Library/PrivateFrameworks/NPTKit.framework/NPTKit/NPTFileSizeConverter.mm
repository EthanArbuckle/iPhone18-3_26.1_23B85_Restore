@interface NPTFileSizeConverter
+ (int)fileSizeFromInt:(int64_t)a3;
@end

@implementation NPTFileSizeConverter

+ (int)fileSizeFromInt:(int64_t)a3
{
  if (a3 <= 49)
  {
    if (a3 > 19)
    {
      if (a3 > 29)
      {
        if (a3 == 30)
        {
          return 30;
        }

        if (a3 == 40)
        {
          return 40;
        }
      }

      else
      {
        if (a3 == 20)
        {
          return 20;
        }

        if (a3 == 25)
        {
          return 25;
        }
      }
    }

    else if (a3 > 4)
    {
      if (a3 == 5)
      {
        return 5;
      }

      if (a3 == 10)
      {
        return 10;
      }
    }

    else
    {
      if (a3 == 1)
      {
        return 1;
      }

      if (a3 == 2)
      {
        return 2;
      }
    }
  }

  else if (a3 <= 89)
  {
    if (a3 > 69)
    {
      if (a3 == 70)
      {
        return 70;
      }

      if (a3 == 80)
      {
        return 80;
      }
    }

    else
    {
      if (a3 == 50)
      {
        return 50;
      }

      if (a3 == 60)
      {
        return 60;
      }
    }
  }

  else if (a3 <= 249)
  {
    if (a3 == 90)
    {
      return 90;
    }

    if (a3 == 100)
    {
      return 100;
    }
  }

  else
  {
    switch(a3)
    {
      case 250:
        return 250;
      case 500:
        return 500;
      case 1000:
        return 1000;
    }
  }

  return 1001;
}

@end