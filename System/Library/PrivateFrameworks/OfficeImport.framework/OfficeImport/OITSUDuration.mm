@interface OITSUDuration
+ (id)durationWithTimeInterval:(double)a3;
- (OITSUDuration)initWithTimeInterval:(double)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation OITSUDuration

+ (id)durationWithTimeInterval:(double)a3
{
  v3 = [objc_alloc(objc_opt_class()) initWithTimeInterval:a3];

  return v3;
}

- (OITSUDuration)initWithTimeInterval:(double)a3
{
  v5.receiver = self;
  v5.super_class = OITSUDuration;
  result = [(OITSUDuration *)&v5 init];
  if (result)
  {
    result->mTimeInterval = a3;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  mTimeInterval = self->mTimeInterval;

  return [v4 initWithTimeInterval:mTimeInterval];
}

@end