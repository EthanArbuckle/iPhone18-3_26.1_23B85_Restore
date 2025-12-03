@interface CBDisplayStateUtilities
+ (id)stringForDisplayMode:(int64_t)mode;
+ (id)stringForFlipbookState:(int64_t)state;
+ (int64_t)displayModeFromProperty:(id)property;
@end

@implementation CBDisplayStateUtilities

+ (id)stringForDisplayMode:(int64_t)mode
{
  v4 = @"Unknown";
  switch(mode)
  {
    case 0:
      return @"Off";
    case 1:
      return @"Always On";
    case 2:
      return @"Always On Suppressed";
    case 3:
      return @"Active On";
    case 4:
      return @"Active Dimmed";
    case 5:
      return @"Invalid";
  }

  return v4;
}

+ (id)stringForFlipbookState:(int64_t)state
{
  v4 = @"Unknown";
  switch(state)
  {
    case 0:
      return @"Flipbook Will Turn On";
    case 1:
      return @"Flipbook Did Turn On";
    case 2:
      return @"Flipbook Will Turn Off";
    case 3:
      return @"Flipbook Did Turn Off";
  }

  return v4;
}

+ (int64_t)displayModeFromProperty:(id)property
{
  v5 = 5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [property objectForKey:@"Value"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return [v4 integerValue];
    }
  }

  return v5;
}

@end