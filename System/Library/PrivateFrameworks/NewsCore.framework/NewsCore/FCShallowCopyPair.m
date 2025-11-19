@interface FCShallowCopyPair
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation FCShallowCopyPair

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [FCShallowCopyPair allocWithZone:a3];
  v5 = [(FCPair *)self first];
  v6 = [(FCPair *)self second];
  v7 = [(FCPair *)v4 initWithFirst:v5 second:v6];

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [FCMutableShallowCopyPair allocWithZone:a3];
  v5 = [(FCPair *)self first];
  v6 = [(FCPair *)self second];
  v7 = [(FCPair *)v4 initWithFirst:v5 second:v6];

  return v7;
}

@end