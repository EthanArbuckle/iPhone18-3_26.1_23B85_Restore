@interface ReadDataResponseWrapper
- (NSString)description;
- (id)copyWithZone:(void *)zone;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ReadDataResponseWrapper

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  ReadDataResponseWrapper.encode(with:)(coderCopy);
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  ReadDataResponseWrapper.copy(with:)(v6);

  sub_18E158E00(v6, v6[3]);
  v4 = sub_18E1A7B80();
  sub_18E158EC4(v6);
  return v4;
}

- (NSString)description
{
  selfCopy = self;
  ReadDataResponseWrapper.description.getter();

  v3 = sub_18E1A7500();

  return v3;
}

- (int64_t)hash
{
  selfCopy = self;
  DataResponse = ReadDataResponseWrapper.hash.getter();

  return DataResponse;
}

@end