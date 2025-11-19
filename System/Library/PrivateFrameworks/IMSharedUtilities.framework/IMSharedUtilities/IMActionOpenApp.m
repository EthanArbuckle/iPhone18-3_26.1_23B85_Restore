@interface IMActionOpenApp
- (IMActionOpenApp)init;
- (IMActionOpenApp)initWithUrl:(id)a3;
- (NSString)url;
- (id)dictionaryRepresentation;
@end

@implementation IMActionOpenApp

- (NSString)url
{

  v2 = sub_1A88C82A8();

  return v2;
}

- (IMActionOpenApp)initWithUrl:(id)a3
{
  v4 = sub_1A88C82E8();
  v5 = (self + OBJC_IVAR___IMActionOpenApp_url);
  *v5 = v4;
  v5[1] = v6;
  v8.receiver = self;
  v8.super_class = IMActionOpenApp;
  return [(IMActionOpenApp *)&v8 init];
}

- (id)dictionaryRepresentation
{
  sub_1A870CCE0(&qword_1EB303718);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88E14F0;
  *(inited + 32) = 7107189;
  *(inited + 40) = 0xE300000000000000;
  v4 = self;
  v5 = [(IMActionOpenApp *)v4 url];
  v6 = sub_1A88C82E8();
  v8 = v7;

  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v6;
  *(inited + 56) = v8;
  sub_1A8738AAC(inited);
  swift_setDeallocating();
  sub_1A8723F2C(inited + 32);

  v9 = sub_1A88C8188();

  return v9;
}

- (IMActionOpenApp)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end