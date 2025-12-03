@interface UIImage(NTKWorldClockMap)
+ (id)ntk_gossamer_nightMaskForDate:()NTKWorldClockMap size:;
+ (id)ntk_pregossamer_nightMaskForDate:()NTKWorldClockMap size:;
@end

@implementation UIImage(NTKWorldClockMap)

+ (id)ntk_gossamer_nightMaskForDate:()NTKWorldClockMap size:
{
  if (self == *MEMORY[0x277CBF3A8] && a2 == *(MEMORY[0x277CBF3A8] + 8))
  {
    v18 = 0;
  }

  else
  {
    v8 = NTKWorldClock_DayOfYearForDate(a5);
    v12 = NTKWorldClock_NightMaskPathForDayOfYear(v9, v10, v11);
    bezierPath = [MEMORY[0x277D75208] bezierPath];
    if (sin((v8 + 284.0) * 0.98630137 * 0.0174532925) * 23.45 >= 0.0)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = a2;
    }

    [bezierPath moveToPoint:?];
    [bezierPath appendPath:v12];
    [bezierPath addLineToPoint:{self, v14}];
    [bezierPath addLineToPoint:{0.0, v14}];
    v21.width = self;
    v21.height = a2;
    UIGraphicsBeginImageContextWithOptions(v21, 0, 0.0);
    v15 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.45];
    [v15 setFill];

    CurrentContext = UIGraphicsGetCurrentContext();
    v22.origin.x = 0.0;
    v22.origin.y = 0.0;
    v22.size.width = self;
    v22.size.height = a2;
    CGContextFillRect(CurrentContext, v22);
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [whiteColor setFill];

    [bezierPath fill];
    v18 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  return v18;
}

+ (id)ntk_pregossamer_nightMaskForDate:()NTKWorldClockMap size:
{
  if (self == *MEMORY[0x277CBF3A8] && a2 == *(MEMORY[0x277CBF3A8] + 8))
  {
    v17 = 0;
  }

  else
  {
    v8 = NTKWorldClock_DayOfYearForDate(a5);
    v12 = NTKWorldClock_NightMaskPathForDayOfYear(v9, v10, v11);
    bezierPath = [MEMORY[0x277D75208] bezierPath];
    if (sin((v8 + 284.0) * 0.98630137 * 0.0174532925) * 23.45 <= 0.0)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = a2;
    }

    [bezierPath moveToPoint:?];
    [bezierPath appendPath:v12];
    [bezierPath addLineToPoint:{self, v14}];
    [bezierPath addLineToPoint:{0.0, v14}];
    v20.width = self;
    v20.height = a2;
    UIGraphicsBeginImageContextWithOptions(v20, 0, 0.0);
    v15 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.65];
    [v15 setFill];

    [bezierPath fillWithBlendMode:17 alpha:1.0];
    ntk_solarTerminatorStrokeColor = [MEMORY[0x277D755B8] ntk_solarTerminatorStrokeColor];
    [ntk_solarTerminatorStrokeColor setStroke];
    [v12 stroke];
    v17 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  return v17;
}

@end