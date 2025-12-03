@interface SafetyFailureWrapper
- (NSString)description;
- (id)copyWithZone:(void *)zone;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SafetyFailureWrapper

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  SafetyFailureWrapper.encode(with:)(coderCopy);
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  SafetyFailureWrapper.copy(with:)(v6);

  sub_18E1E15F4(v6, v6[3]);
  v4 = sub_18E44F3BC();
  sub_18E1C9934(v6);
  return v4;
}

- (NSString)description
{
  selfCopy = self;
  SafetyFailureWrapper.description.getter();

  v3 = sub_18E44EA8C();

  return v3;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = SafetyFailureWrapper.hash.getter();

  return v3;
}

@end