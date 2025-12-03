@interface IMActionDialEnriched
- (IMActionDialEnriched)init;
- (IMActionDialEnriched)initWithPhoneNumber:(id)number fallbackUrl:(id)url subject:(id)subject;
- (NSString)phoneNumber;
- (id)dictionaryRepresentation;
@end

@implementation IMActionDialEnriched

- (NSString)phoneNumber
{

  v2 = sub_1A88C82A8();

  return v2;
}

- (IMActionDialEnriched)initWithPhoneNumber:(id)number fallbackUrl:(id)url subject:(id)subject
{
  v8 = sub_1A88C82E8();
  v10 = v9;
  if (!url)
  {
    v12 = 0;
    if (subject)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    v14 = 0;
    goto LABEL_6;
  }

  url = sub_1A88C82E8();
  v12 = v11;
  if (!subject)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = sub_1A88C82E8();
LABEL_6:
  v15 = (self + OBJC_IVAR___IMActionDialEnriched_phoneNumber);
  *v15 = v8;
  v15[1] = v10;
  v16 = (self + OBJC_IVAR___IMActionDialEnriched_fallbackUrl);
  *v16 = url;
  v16[1] = v12;
  v17 = (self + OBJC_IVAR___IMActionDialEnriched_subject);
  *v17 = v13;
  v17[1] = v14;
  v19.receiver = self;
  v19.super_class = IMActionDialEnriched;
  return [(IMActionDialEnriched *)&v19 init];
}

- (id)dictionaryRepresentation
{
  selfCopy = self;
  sub_1A8824A98();

  v3 = sub_1A88C8188();

  return v3;
}

- (IMActionDialEnriched)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end