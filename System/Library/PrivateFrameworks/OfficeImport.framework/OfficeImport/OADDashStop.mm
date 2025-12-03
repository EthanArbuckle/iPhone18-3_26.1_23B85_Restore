@interface OADDashStop
+ (void)addStopWithDash:(float)dash space:(float)space toArray:(id)array;
- (BOOL)isEqual:(id)equal;
- (OADDashStop)initWithDash:(float)dash space:(float)space;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation OADDashStop

- (OADDashStop)initWithDash:(float)dash space:(float)space
{
  v7.receiver = self;
  v7.super_class = OADDashStop;
  result = [(OADDashStop *)&v7 init];
  if (result)
  {
    result->mDash = dash;
    result->mSpace = space;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  *&v5 = self->mDash;
  *&v6 = self->mSpace;

  return [v4 initWithDash:v5 space:v6];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = v5 == objc_opt_class() && self->mDash == equalCopy[2] && self->mSpace == equalCopy[3];

  return v6;
}

+ (void)addStopWithDash:(float)dash space:(float)space toArray:(id)array
{
  arrayCopy = array;
  v7 = [OADDashStop alloc];
  *&v8 = dash;
  *&v9 = space;
  v10 = [(OADDashStop *)v7 initWithDash:v8 space:v9];
  [arrayCopy addObject:v10];
}

@end