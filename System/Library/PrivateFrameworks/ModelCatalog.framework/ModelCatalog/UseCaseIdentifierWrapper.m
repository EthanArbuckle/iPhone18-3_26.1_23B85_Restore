@interface UseCaseIdentifierWrapper
- (NSString)description;
- (id)copyWithZone:(void *)a3;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UseCaseIdentifierWrapper

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  UseCaseIdentifierWrapper.encode(with:)(v4);
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  UseCaseIdentifierWrapper.copy(with:)(v6);

  sub_18E1E15F4(v6, v6[3]);
  v4 = sub_18E44F3BC();
  sub_18E1C9934(v6);
  return v4;
}

- (NSString)description
{
  v2 = self;
  UseCaseIdentifierWrapper.description.getter();

  v3 = sub_18E44EA8C();

  return v3;
}

- (int64_t)hash
{
  v2 = self;
  v3 = UseCaseIdentifierWrapper.hash.getter();

  return v3;
}

@end