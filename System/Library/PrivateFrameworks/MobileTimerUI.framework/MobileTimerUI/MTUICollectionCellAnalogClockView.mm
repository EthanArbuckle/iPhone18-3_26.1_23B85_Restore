@interface MTUICollectionCellAnalogClockView
+ (CGPoint)handRotationalCenterForHand:(int64_t)a3;
+ (id)makeClockFaceForDaytime:(BOOL)a3;
@end

@implementation MTUICollectionCellAnalogClockView

+ (CGPoint)handRotationalCenterForHand:(int64_t)a3
{
  v3 = 1.0;
  v4 = 0.5;
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      [a1 secondHandOverhangLength];
      v7 = v6;
      [a1 secondHandOverhangLength];
      v9 = v8;
      [a1 secondHandMainLength];
      v3 = 1.0 - v7 / (v9 + v10);
    }

    else
    {
      v4 = *MEMORY[0x277CBF348];
      v3 = *(MEMORY[0x277CBF348] + 8);
    }
  }

  v11 = v4;
  result.y = v3;
  result.x = v11;
  return result;
}

+ (id)makeClockFaceForDaytime:(BOOL)a3
{
  if (a3)
  {
    v4 = @"White";
  }

  else
  {
    v4 = @"Black";
  }

  v5 = [@"MTAnalogClockCollectionCell" stringByAppendingString:v4];
  v6 = MEMORY[0x277D218D0];
  v7 = [MEMORY[0x277CBEAF8] currentLocale];
  v8 = [v7 localeIdentifier];
  v9 = [v6 numberingSystemForLocaleID:v8];

  if ([v9 isEqualToString:@"arab"])
  {
    v10 = @"Arabic";
  }

  else
  {
    if (![v9 isEqualToString:@"deva"])
    {
      goto LABEL_9;
    }

    v10 = @"Devanagari";
  }

  v11 = [v5 stringByAppendingString:v10];

  v5 = v11;
LABEL_9:
  v12 = [a1 imageInBundleForName:v5];

  return v12;
}

@end