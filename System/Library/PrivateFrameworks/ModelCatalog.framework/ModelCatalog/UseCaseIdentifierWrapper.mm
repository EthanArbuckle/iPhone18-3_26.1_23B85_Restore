@interface UseCaseIdentifierWrapper
- (NSString)description;
- (id)copyWithZone:(void *)zone;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UseCaseIdentifierWrapper

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  UseCaseIdentifierWrapper.encode(with:)(coderCopy);
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  UseCaseIdentifierWrapper.copy(with:)(v6);

  sub_18E1E15F4(v6, v6[3]);
  v4 = sub_18E44F3BC();
  sub_18E1C9934(v6);
  return v4;
}

- (NSString)description
{
  selfCopy = self;
  UseCaseIdentifierWrapper.description.getter();

  v3 = sub_18E44EA8C();

  return v3;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = UseCaseIdentifierWrapper.hash.getter();

  return v3;
}

@end