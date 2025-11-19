@interface OITSUShallowCopyPair
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation OITSUShallowCopyPair

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [OITSUShallowCopyPair allocWithZone:a3];
  v5 = [(OITSUPair *)self first];
  v6 = [(OITSUPair *)self second];

  return [(OITSUPair *)v4 initWithFirst:v5 second:v6];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [OITSUMutableShallowCopyPair allocWithZone:a3];
  v5 = [(OITSUPair *)self first];
  v6 = [(OITSUPair *)self second];

  return [(OITSUPair *)v4 initWithFirst:v5 second:v6];
}

@end