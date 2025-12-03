@interface OADInnerShadowEffect
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation OADInnerShadowEffect

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithShadowEffect:self type:0];
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADInnerShadowEffect;
  v2 = [(OADShadowEffect *)&v4 description];

  return v2;
}

@end