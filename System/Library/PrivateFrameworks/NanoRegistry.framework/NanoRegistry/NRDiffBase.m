@interface NRDiffBase
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation NRDiffBase

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (self)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 0;
  }

  v7 = !v6;
  return (isKindOfClass & 1) != 0 && v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [objc_opt_class() allocWithZone:a3];

  return [v3 init];
}

@end