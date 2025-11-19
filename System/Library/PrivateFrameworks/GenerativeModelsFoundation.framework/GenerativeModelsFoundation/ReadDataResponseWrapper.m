@interface ReadDataResponseWrapper
- (NSString)description;
- (id)copyWithZone:(void *)a3;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ReadDataResponseWrapper

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  ReadDataResponseWrapper.encode(with:)(v4);
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  ReadDataResponseWrapper.copy(with:)(v6);

  sub_18E158E00(v6, v6[3]);
  v4 = sub_18E1A7B80();
  sub_18E158EC4(v6);
  return v4;
}

- (NSString)description
{
  v2 = self;
  ReadDataResponseWrapper.description.getter();

  v3 = sub_18E1A7500();

  return v3;
}

- (int64_t)hash
{
  v2 = self;
  DataResponse = ReadDataResponseWrapper.hash.getter();

  return DataResponse;
}

@end