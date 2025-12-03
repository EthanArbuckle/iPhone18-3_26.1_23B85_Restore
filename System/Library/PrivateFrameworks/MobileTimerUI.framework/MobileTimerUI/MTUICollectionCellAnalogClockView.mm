@interface MTUICollectionCellAnalogClockView
+ (CGPoint)handRotationalCenterForHand:(int64_t)hand;
+ (id)makeClockFaceForDaytime:(BOOL)daytime;
@end

@implementation MTUICollectionCellAnalogClockView

+ (CGPoint)handRotationalCenterForHand:(int64_t)hand
{
  v3 = 1.0;
  v4 = 0.5;
  if (hand >= 2)
  {
    if (hand == 2)
    {
      [self secondHandOverhangLength];
      v7 = v6;
      [self secondHandOverhangLength];
      v9 = v8;
      [self secondHandMainLength];
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

+ (id)makeClockFaceForDaytime:(BOOL)daytime
{
  if (daytime)
  {
    v4 = @"White";
  }

  else
  {
    v4 = @"Black";
  }

  v5 = [@"MTAnalogClockCollectionCell" stringByAppendingString:v4];
  v6 = MEMORY[0x277D218D0];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];
  v9 = [v6 numberingSystemForLocaleID:localeIdentifier];

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
  v12 = [self imageInBundleForName:v5];

  return v12;
}

@end