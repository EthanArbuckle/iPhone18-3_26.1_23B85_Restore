@interface NTPBTodayPersonalizationUpdate(FCTodayExtension)
- (void)addEvent:()FCTodayExtension;
@end

@implementation NTPBTodayPersonalizationUpdate(FCTodayExtension)

- (void)addEvent:()FCTodayExtension
{
  v4 = a3;
  objc_opt_class();
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = v5;

  if (v7)
  {
    events = [self events];
    [events addObject:v7];
  }
}

@end