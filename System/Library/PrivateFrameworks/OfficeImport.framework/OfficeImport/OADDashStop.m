@interface OADDashStop
+ (void)addStopWithDash:(float)a3 space:(float)a4 toArray:(id)a5;
- (BOOL)isEqual:(id)a3;
- (OADDashStop)initWithDash:(float)a3 space:(float)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation OADDashStop

- (OADDashStop)initWithDash:(float)a3 space:(float)a4
{
  v7.receiver = self;
  v7.super_class = OADDashStop;
  result = [(OADDashStop *)&v7 init];
  if (result)
  {
    result->mDash = a3;
    result->mSpace = a4;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  *&v5 = self->mDash;
  *&v6 = self->mSpace;

  return [v4 initWithDash:v5 space:v6];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v5 == objc_opt_class() && self->mDash == v4[2] && self->mSpace == v4[3];

  return v6;
}

+ (void)addStopWithDash:(float)a3 space:(float)a4 toArray:(id)a5
{
  v11 = a5;
  v7 = [OADDashStop alloc];
  *&v8 = a3;
  *&v9 = a4;
  v10 = [(OADDashStop *)v7 initWithDash:v8 space:v9];
  [v11 addObject:v10];
}

@end