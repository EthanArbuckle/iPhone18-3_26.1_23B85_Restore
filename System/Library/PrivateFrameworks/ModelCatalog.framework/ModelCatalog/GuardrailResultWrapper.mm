@interface GuardrailResultWrapper
- (NSString)description;
- (id)copyWithZone:(void *)zone;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GuardrailResultWrapper

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  GuardrailResultWrapper.encode(with:)(coderCopy);
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  GuardrailResultWrapper.copy(with:)(v6);

  sub_18E1E15F4(v6, v6[3]);
  v4 = sub_18E44F3BC();
  sub_18E1C9934(v6);
  return v4;
}

- (NSString)description
{
  selfCopy = self;
  GuardrailResultWrapper.description.getter();

  v3 = sub_18E44EA8C();

  return v3;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = GuardrailResultWrapper.hash.getter();

  return v3;
}

@end