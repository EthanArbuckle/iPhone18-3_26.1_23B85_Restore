@interface FCShallowCopyPair
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation FCShallowCopyPair

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [FCShallowCopyPair allocWithZone:zone];
  first = [(FCPair *)self first];
  second = [(FCPair *)self second];
  v7 = [(FCPair *)v4 initWithFirst:first second:second];

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [FCMutableShallowCopyPair allocWithZone:zone];
  first = [(FCPair *)self first];
  second = [(FCPair *)self second];
  v7 = [(FCPair *)v4 initWithFirst:first second:second];

  return v7;
}

@end