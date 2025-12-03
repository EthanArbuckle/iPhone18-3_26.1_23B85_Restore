@interface IMActionDialVideo
- (IMActionDialVideo)init;
- (IMActionDialVideo)initWithPhoneNumber:(id)number fallbackUrl:(id)url;
- (NSString)fallbackUrl;
- (NSString)phoneNumber;
- (id)dictionaryRepresentation;
@end

@implementation IMActionDialVideo

- (NSString)phoneNumber
{

  v2 = sub_1A88C82A8();

  return v2;
}

- (NSString)fallbackUrl
{
  if (*(self + OBJC_IVAR___IMActionDialVideo_fallbackUrl + 8))
  {

    v2 = sub_1A88C82A8();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (IMActionDialVideo)initWithPhoneNumber:(id)number fallbackUrl:(id)url
{
  v6 = sub_1A88C82E8();
  v8 = v7;
  if (url)
  {
    v9 = sub_1A88C82E8();
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v11 = (self + OBJC_IVAR___IMActionDialVideo_phoneNumber);
  *v11 = v6;
  v11[1] = v8;
  v12 = (self + OBJC_IVAR___IMActionDialVideo_fallbackUrl);
  *v12 = v9;
  v12[1] = v10;
  v14.receiver = self;
  v14.super_class = IMActionDialVideo;
  return [(IMActionDialVideo *)&v14 init];
}

- (id)dictionaryRepresentation
{
  selfCopy = self;
  sub_1A876FE58();

  v3 = sub_1A88C8188();

  return v3;
}

- (IMActionDialVideo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end