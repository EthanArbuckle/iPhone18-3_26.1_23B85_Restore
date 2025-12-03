@interface CELiftUIDataSource
- (_TtC21CloudRecommendationUI18CELiftUIDataSource)init;
- (_TtC21CloudRecommendationUI18CELiftUIDataSource)initWithAccount:(id)account;
@end

@implementation CELiftUIDataSource

- (_TtC21CloudRecommendationUI18CELiftUIDataSource)initWithAccount:(id)account
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC21CloudRecommendationUI18CELiftUIDataSource____lazy_storage___backupDeviceUUID) = xmmword_243AC4E80;
  *(&self->super.isa + OBJC_IVAR____TtC21CloudRecommendationUI18CELiftUIDataSource_account) = account;
  v8.receiver = self;
  v8.super_class = ObjectType;
  accountCopy = account;
  return [(CELiftUIDataSource *)&v8 init];
}

- (_TtC21CloudRecommendationUI18CELiftUIDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end