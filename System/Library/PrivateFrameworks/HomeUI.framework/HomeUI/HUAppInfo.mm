@interface HUAppInfo
- (_TtC6HomeUI9HUAppInfo)init;
- (_TtC6HomeUI9HUAppInfo)initWithBundleID:(id)a3 name:(id)a4;
@end

@implementation HUAppInfo

- (_TtC6HomeUI9HUAppInfo)initWithBundleID:(id)a3 name:(id)a4
{
  ObjectType = swift_getObjectType();
  v6 = sub_20D567838();
  v8 = v7;
  v9 = sub_20D567838();
  v10 = (self + OBJC_IVAR____TtC6HomeUI9HUAppInfo_bundleID);
  *v10 = v6;
  v10[1] = v8;
  v11 = (self + OBJC_IVAR____TtC6HomeUI9HUAppInfo_name);
  *v11 = v9;
  v11[1] = v12;
  v14.receiver = self;
  v14.super_class = ObjectType;
  return [(HUAppInfo *)&v14 init];
}

- (_TtC6HomeUI9HUAppInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end