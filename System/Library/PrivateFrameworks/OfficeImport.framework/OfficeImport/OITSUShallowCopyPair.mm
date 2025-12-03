@interface OITSUShallowCopyPair
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation OITSUShallowCopyPair

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [OITSUShallowCopyPair allocWithZone:zone];
  first = [(OITSUPair *)self first];
  second = [(OITSUPair *)self second];

  return [(OITSUPair *)v4 initWithFirst:first second:second];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [OITSUMutableShallowCopyPair allocWithZone:zone];
  first = [(OITSUPair *)self first];
  second = [(OITSUPair *)self second];

  return [(OITSUPair *)v4 initWithFirst:first second:second];
}

@end