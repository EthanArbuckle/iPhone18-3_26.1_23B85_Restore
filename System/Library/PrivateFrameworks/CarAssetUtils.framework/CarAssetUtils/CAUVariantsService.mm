@interface CAUVariantsService
+ (NSString)entitlement;
+ (id)machName;
- (_TtC13CarAssetUtils18CAUVariantsService)init;
@end

@implementation CAUVariantsService

+ (id)machName
{
  v0 = sub_242C1A490();

  return v0;
}

+ (NSString)entitlement
{
  v2 = sub_242C1A490();

  return v2;
}

- (_TtC13CarAssetUtils18CAUVariantsService)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CAUVariantsService();
  return [(CAUVariantsService *)&v3 init];
}

@end