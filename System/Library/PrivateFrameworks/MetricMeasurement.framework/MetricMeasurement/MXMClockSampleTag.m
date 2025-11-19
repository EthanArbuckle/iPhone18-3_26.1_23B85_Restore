@interface MXMClockSampleTag
+ (MXMClockSampleTag)absoluteTime;
+ (MXMClockSampleTag)continuousTime;
+ (id)root;
@end

@implementation MXMClockSampleTag

+ (id)root
{
  v2 = [objc_alloc(objc_opt_class()) initWithDNString:@"clock.time"];

  return v2;
}

+ (MXMClockSampleTag)absoluteTime
{
  v2 = [objc_alloc(objc_opt_class()) initWithDNString:@"clock.time.absolute"];

  return v2;
}

+ (MXMClockSampleTag)continuousTime
{
  v2 = [objc_alloc(objc_opt_class()) initWithDNString:@"clock.time.continuous"];

  return v2;
}

@end