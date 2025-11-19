@interface IMActionComposeText
- (IMActionComposeText)init;
- (IMActionComposeText)initWithPhoneNumber:(id)a3 text:(id)a4;
- (id)dictionaryRepresentation;
@end

@implementation IMActionComposeText

- (IMActionComposeText)initWithPhoneNumber:(id)a3 text:(id)a4
{
  v5 = sub_1A88C82E8();
  v7 = v6;
  v8 = sub_1A88C82E8();
  v9 = (self + OBJC_IVAR___IMActionComposeText_phoneNumber);
  *v9 = v5;
  v9[1] = v7;
  v10 = (self + OBJC_IVAR___IMActionComposeText_text);
  *v10 = v8;
  v10[1] = v11;
  v13.receiver = self;
  v13.super_class = IMActionComposeText;
  return [(IMActionComposeText *)&v13 init];
}

- (id)dictionaryRepresentation
{
  v2 = self;
  sub_1A8731D24();

  v3 = sub_1A88C8188();

  return v3;
}

- (IMActionComposeText)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end