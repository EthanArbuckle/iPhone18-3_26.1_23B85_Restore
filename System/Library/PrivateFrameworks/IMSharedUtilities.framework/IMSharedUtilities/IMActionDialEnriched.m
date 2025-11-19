@interface IMActionDialEnriched
- (IMActionDialEnriched)init;
- (IMActionDialEnriched)initWithPhoneNumber:(id)a3 fallbackUrl:(id)a4 subject:(id)a5;
- (NSString)phoneNumber;
- (id)dictionaryRepresentation;
@end

@implementation IMActionDialEnriched

- (NSString)phoneNumber
{

  v2 = sub_1A88C82A8();

  return v2;
}

- (IMActionDialEnriched)initWithPhoneNumber:(id)a3 fallbackUrl:(id)a4 subject:(id)a5
{
  v8 = sub_1A88C82E8();
  v10 = v9;
  if (!a4)
  {
    v12 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    v14 = 0;
    goto LABEL_6;
  }

  a4 = sub_1A88C82E8();
  v12 = v11;
  if (!a5)
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
  *v16 = a4;
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
  v2 = self;
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