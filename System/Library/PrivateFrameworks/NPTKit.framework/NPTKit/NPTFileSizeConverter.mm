@interface NPTFileSizeConverter
+ (int)fileSizeFromInt:(int64_t)int;
@end

@implementation NPTFileSizeConverter

+ (int)fileSizeFromInt:(int64_t)int
{
  if (int <= 49)
  {
    if (int > 19)
    {
      if (int > 29)
      {
        if (int == 30)
        {
          return 30;
        }

        if (int == 40)
        {
          return 40;
        }
      }

      else
      {
        if (int == 20)
        {
          return 20;
        }

        if (int == 25)
        {
          return 25;
        }
      }
    }

    else if (int > 4)
    {
      if (int == 5)
      {
        return 5;
      }

      if (int == 10)
      {
        return 10;
      }
    }

    else
    {
      if (int == 1)
      {
        return 1;
      }

      if (int == 2)
      {
        return 2;
      }
    }
  }

  else if (int <= 89)
  {
    if (int > 69)
    {
      if (int == 70)
      {
        return 70;
      }

      if (int == 80)
      {
        return 80;
      }
    }

    else
    {
      if (int == 50)
      {
        return 50;
      }

      if (int == 60)
      {
        return 60;
      }
    }
  }

  else if (int <= 249)
  {
    if (int == 90)
    {
      return 90;
    }

    if (int == 100)
    {
      return 100;
    }
  }

  else
  {
    switch(int)
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