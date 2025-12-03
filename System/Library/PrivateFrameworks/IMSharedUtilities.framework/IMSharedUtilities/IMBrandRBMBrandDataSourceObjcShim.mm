@interface IMBrandRBMBrandDataSourceObjcShim
- (IMBrandRBMBrandDataSourceObjcShim)init;
- (IMBrandRBMBrandDataSourceObjcShim)initWithCacheClient:(id)client;
@end

@implementation IMBrandRBMBrandDataSourceObjcShim

- (IMBrandRBMBrandDataSourceObjcShim)initWithCacheClient:(id)client
{
  swift_unknownObjectRetain();
  v4 = sub_1A8605E4C(client);
  swift_unknownObjectRelease();
  return v4;
}

- (IMBrandRBMBrandDataSourceObjcShim)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end