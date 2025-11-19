@interface UIImage(NTKWorldClockMap)
+ (id)ntk_gossamer_nightMaskForDate:()NTKWorldClockMap size:;
+ (id)ntk_pregossamer_nightMaskForDate:()NTKWorldClockMap size:;
@end

@implementation UIImage(NTKWorldClockMap)

+ (id)ntk_gossamer_nightMaskForDate:()NTKWorldClockMap size:
{
  if (a1 == *MEMORY[0x277CBF3A8] && a2 == *(MEMORY[0x277CBF3A8] + 8))
  {
    v18 = 0;
  }

  else
  {
    v8 = NTKWorldClock_DayOfYearForDate(a5);
    v12 = NTKWorldClock_NightMaskPathForDayOfYear(v9, v10, v11);
    v13 = [MEMORY[0x277D75208] bezierPath];
    if (sin((v8 + 284.0) * 0.98630137 * 0.0174532925) * 23.45 >= 0.0)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = a2;
    }

    [v13 moveToPoint:?];
    [v13 appendPath:v12];
    [v13 addLineToPoint:{a1, v14}];
    [v13 addLineToPoint:{0.0, v14}];
    v21.width = a1;
    v21.height = a2;
    UIGraphicsBeginImageContextWithOptions(v21, 0, 0.0);
    v15 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.45];
    [v15 setFill];

    CurrentContext = UIGraphicsGetCurrentContext();
    v22.origin.x = 0.0;
    v22.origin.y = 0.0;
    v22.size.width = a1;
    v22.size.height = a2;
    CGContextFillRect(CurrentContext, v22);
    v17 = [MEMORY[0x277D75348] whiteColor];
    [v17 setFill];

    [v13 fill];
    v18 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  return v18;
}

+ (id)ntk_pregossamer_nightMaskForDate:()NTKWorldClockMap size:
{
  if (a1 == *MEMORY[0x277CBF3A8] && a2 == *(MEMORY[0x277CBF3A8] + 8))
  {
    v17 = 0;
  }

  else
  {
    v8 = NTKWorldClock_DayOfYearForDate(a5);
    v12 = NTKWorldClock_NightMaskPathForDayOfYear(v9, v10, v11);
    v13 = [MEMORY[0x277D75208] bezierPath];
    if (sin((v8 + 284.0) * 0.98630137 * 0.0174532925) * 23.45 <= 0.0)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = a2;
    }

    [v13 moveToPoint:?];
    [v13 appendPath:v12];
    [v13 addLineToPoint:{a1, v14}];
    [v13 addLineToPoint:{0.0, v14}];
    v20.width = a1;
    v20.height = a2;
    UIGraphicsBeginImageContextWithOptions(v20, 0, 0.0);
    v15 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.65];
    [v15 setFill];

    [v13 fillWithBlendMode:17 alpha:1.0];
    v16 = [MEMORY[0x277D755B8] ntk_solarTerminatorStrokeColor];
    [v16 setStroke];
    [v12 stroke];
    v17 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  return v17;
}

@end