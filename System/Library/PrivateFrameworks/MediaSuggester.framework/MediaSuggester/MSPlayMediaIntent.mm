@interface MSPlayMediaIntent
- (NSString)description;
- (id)copyWithZone:(void *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MSPlayMediaIntent

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_22CA1AE34(v6);

  sub_22C9D05CC(v6, v6[3]);
  v4 = sub_22CA21350();
  sub_22C9D04CC(v6);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_22CA1AF84(coderCopy);
}

- (NSString)description
{
  selfCopy = self;
  sub_22CA1B520();

  v3 = sub_22CA20E10();

  return v3;
}

@end