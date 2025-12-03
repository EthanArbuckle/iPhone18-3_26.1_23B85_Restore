@interface NTKTimerComplication
+ (double)_durationFromComplication:(id)complication;
+ (int64_t)compareComplication:(id)complication toComplication:(id)toComplication;
@end

@implementation NTKTimerComplication

+ (double)_durationFromComplication:(id)complication
{
  complicationCopy = complication;
  objc_opt_class();
  v4 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    complicationDescriptor = [complicationCopy complicationDescriptor];
    userInfo = [complicationDescriptor userInfo];
    v7 = userInfo;
    if (userInfo)
    {
      v8 = [userInfo objectForKey:@"Duration"];
      v9 = v8;
      if (v8)
      {
        [v8 doubleValue];
        v4 = v10;
      }
    }
  }

  return v4;
}

+ (int64_t)compareComplication:(id)complication toComplication:(id)toComplication
{
  toComplicationCopy = toComplication;
  complicationCopy = complication;
  [objc_opt_class() _durationFromComplication:complicationCopy];
  v8 = v7;

  [objc_opt_class() _durationFromComplication:toComplicationCopy];
  v10 = v9;

  v11 = -1;
  if (v8 >= v10)
  {
    v11 = 1;
  }

  if (v8 == v10)
  {
    return 0;
  }

  else
  {
    return v11;
  }
}

@end