@interface MSPlayMediaIntent
- (NSString)description;
- (id)copyWithZone:(void *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MSPlayMediaIntent

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  sub_22CA1AE34(v6);

  sub_22C9D05CC(v6, v6[3]);
  v4 = sub_22CA21350();
  sub_22C9D04CC(v6);
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_22CA1AF84(v4);
}

- (NSString)description
{
  v2 = self;
  sub_22CA1B520();

  v3 = sub_22CA20E10();

  return v3;
}

@end