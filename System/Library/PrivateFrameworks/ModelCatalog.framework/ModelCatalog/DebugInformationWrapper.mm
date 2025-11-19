@interface DebugInformationWrapper
- (id)copyWithZone:(void *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DebugInformationWrapper

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  DebugInformationWrapper.encode(with:)(v4);
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  DebugInformationWrapper.copy(with:)(v6);

  sub_18E1E15F4(v6, v6[3]);
  v4 = sub_18E44F3BC();
  sub_18E1C9934(v6);
  return v4;
}

@end