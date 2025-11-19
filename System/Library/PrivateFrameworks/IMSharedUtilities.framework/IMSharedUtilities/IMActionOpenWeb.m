@interface IMActionOpenWeb
- (IMActionOpenWeb)init;
- (IMActionOpenWeb)initWithMode:(int64_t)a3 url:(id)a4 parameters:(id)a5;
- (id)dictionaryRepresentation;
@end

@implementation IMActionOpenWeb

- (IMActionOpenWeb)initWithMode:(int64_t)a3 url:(id)a4 parameters:(id)a5
{
  v7 = sub_1A88C82E8();
  v9 = v8;
  v10 = sub_1A88C82E8();
  *(self + OBJC_IVAR___IMActionOpenWeb_mode) = a3;
  v11 = (self + OBJC_IVAR___IMActionOpenWeb_url);
  *v11 = v7;
  v11[1] = v9;
  v12 = (self + OBJC_IVAR___IMActionOpenWeb_parameters);
  *v12 = v10;
  v12[1] = v13;
  v15.receiver = self;
  v15.super_class = IMActionOpenWeb;
  return [(IMActionOpenWeb *)&v15 init];
}

- (id)dictionaryRepresentation
{
  v2 = self;
  sub_1A87E8AE8();

  v3 = sub_1A88C8188();

  return v3;
}

- (IMActionOpenWeb)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end