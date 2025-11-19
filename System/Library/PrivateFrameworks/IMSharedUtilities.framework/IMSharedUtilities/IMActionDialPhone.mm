@interface IMActionDialPhone
- (IMActionDialPhone)init;
- (IMActionDialPhone)initWithPhoneNumber:(id)a3 fallbackUrl:(id)a4;
- (NSString)fallbackUrl;
- (NSString)phoneNumber;
- (id)dictionaryRepresentation;
@end

@implementation IMActionDialPhone

- (NSString)phoneNumber
{

  v2 = sub_1A88C82A8();

  return v2;
}

- (NSString)fallbackUrl
{
  if (*(self + OBJC_IVAR___IMActionDialPhone_fallbackUrl + 8))
  {

    v2 = sub_1A88C82A8();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (IMActionDialPhone)initWithPhoneNumber:(id)a3 fallbackUrl:(id)a4
{
  v6 = sub_1A88C82E8();
  v8 = v7;
  if (a4)
  {
    v9 = sub_1A88C82E8();
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v11 = (self + OBJC_IVAR___IMActionDialPhone_phoneNumber);
  *v11 = v6;
  v11[1] = v8;
  v12 = (self + OBJC_IVAR___IMActionDialPhone_fallbackUrl);
  *v12 = v9;
  v12[1] = v10;
  v14.receiver = self;
  v14.super_class = IMActionDialPhone;
  return [(IMActionDialPhone *)&v14 init];
}

- (id)dictionaryRepresentation
{
  v2 = self;
  sub_1A876FE58();

  v3 = sub_1A88C8188();

  return v3;
}

- (IMActionDialPhone)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end