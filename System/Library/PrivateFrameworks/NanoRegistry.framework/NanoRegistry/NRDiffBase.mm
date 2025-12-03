@interface NRDiffBase
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation NRDiffBase

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (self)
  {
    v6 = equalCopy == 0;
  }

  else
  {
    v6 = 0;
  }

  v7 = !v6;
  return (isKindOfClass & 1) != 0 && v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [objc_opt_class() allocWithZone:zone];

  return [v3 init];
}

@end