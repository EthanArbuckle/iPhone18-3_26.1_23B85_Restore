@interface OITSUDuration
+ (id)durationWithTimeInterval:(double)interval;
- (OITSUDuration)initWithTimeInterval:(double)interval;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation OITSUDuration

+ (id)durationWithTimeInterval:(double)interval
{
  v3 = [objc_alloc(objc_opt_class()) initWithTimeInterval:interval];

  return v3;
}

- (OITSUDuration)initWithTimeInterval:(double)interval
{
  v5.receiver = self;
  v5.super_class = OITSUDuration;
  result = [(OITSUDuration *)&v5 init];
  if (result)
  {
    result->mTimeInterval = interval;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  mTimeInterval = self->mTimeInterval;

  return [v4 initWithTimeInterval:mTimeInterval];
}

@end