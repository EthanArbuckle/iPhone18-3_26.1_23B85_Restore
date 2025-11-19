@interface ICSidecarServiceMenuItem
- (ICSidecarServiceMenuItem)init;
- (ICSidecarServiceMenuItem)initWithType:(id)a3 data:(id)a4;
- (NSData)data;
- (NSString)type;
@end

@implementation ICSidecarServiceMenuItem

- (NSString)type
{

  v2 = sub_2154A1D2C();

  return v2;
}

- (NSData)data
{
  v2 = *(self + OBJC_IVAR___ICSidecarServiceMenuItem_data);
  v3 = *(self + OBJC_IVAR___ICSidecarServiceMenuItem_data + 8);
  sub_215324200(v2, v3);
  v4 = sub_21549E58C();
  sub_215324170(v2, v3);

  return v4;
}

- (ICSidecarServiceMenuItem)initWithType:(id)a3 data:(id)a4
{
  ObjectType = swift_getObjectType();
  v7 = sub_2154A1D6C();
  v9 = v8;
  v10 = a4;
  v11 = sub_21549E59C();
  v13 = v12;

  v14 = (self + OBJC_IVAR___ICSidecarServiceMenuItem_type);
  *v14 = v7;
  v14[1] = v9;
  v15 = (self + OBJC_IVAR___ICSidecarServiceMenuItem_data);
  *v15 = v11;
  v15[1] = v13;
  v17.receiver = self;
  v17.super_class = ObjectType;
  return [(ICSidecarServiceMenuItem *)&v17 init];
}

- (ICSidecarServiceMenuItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end