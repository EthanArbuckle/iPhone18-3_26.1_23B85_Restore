@interface _GEOLocationShiftRequestConfig
+ (id)standardConfig;
@end

@implementation _GEOLocationShiftRequestConfig

+ (id)standardConfig
{
  if (qword_100096040 != -1)
  {
    dispatch_once(&qword_100096040, &stru_100082250);
  }

  v3 = qword_100096048;

  return v3;
}

@end