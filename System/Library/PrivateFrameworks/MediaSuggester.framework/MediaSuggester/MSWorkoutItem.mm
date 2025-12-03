@interface MSWorkoutItem
- (NSString)description;
- (id)copyWithZone:(void *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MSWorkoutItem

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_22C9E9C50(v6);

  sub_22C9D05CC(v6, v6[3]);
  v4 = sub_22CA21350();
  sub_22C9D04CC(v6);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_22C9E9E1C();
}

- (NSString)description
{
  selfCopy = self;
  sub_22C9EC220();

  v3 = sub_22CA20E10();

  return v3;
}

@end