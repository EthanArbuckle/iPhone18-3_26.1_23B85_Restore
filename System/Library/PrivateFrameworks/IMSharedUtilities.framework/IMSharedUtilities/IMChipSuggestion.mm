@interface IMChipSuggestion
- (IMChipSuggestion)init;
- (IMChipSuggestion)initWithDisplayText:(id)text postback:(id)postback inReplyToID:(id)d;
- (NSString)displayText;
- (id)dictionaryRepresentation;
- (void)setDisplayText:(id)text;
@end

@implementation IMChipSuggestion

- (NSString)displayText
{

  v2 = sub_1A88C82A8();

  return v2;
}

- (void)setDisplayText:(id)text
{
  v4 = sub_1A88C82E8();
  v5 = (self + OBJC_IVAR___IMChipSuggestion_displayText);
  *v5 = v4;
  v5[1] = v6;
}

- (IMChipSuggestion)initWithDisplayText:(id)text postback:(id)postback inReplyToID:(id)d
{
  v8 = sub_1A88C82E8();
  v10 = v9;
  if (!postback)
  {
    v12 = 0;
    if (d)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    v14 = 0;
    goto LABEL_6;
  }

  postback = sub_1A88C82E8();
  v12 = v11;
  if (!d)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = sub_1A88C82E8();
LABEL_6:
  v15 = (self + OBJC_IVAR___IMChipSuggestion_postback);
  *v15 = 0;
  v15[1] = 0;
  v16 = (self + OBJC_IVAR___IMChipSuggestion_inReplyToID);
  *v16 = 0;
  v16[1] = 0;
  v17 = (self + OBJC_IVAR___IMChipSuggestion_displayText);
  *v17 = v8;
  v17[1] = v10;
  *v15 = postback;
  v15[1] = v12;
  *v16 = v13;
  v16[1] = v14;
  v19.receiver = self;
  v19.super_class = IMChipSuggestion;
  return [(IMChipSuggestion *)&v19 init];
}

- (id)dictionaryRepresentation
{
  selfCopy = self;
  sub_1A8797C48();

  v3 = sub_1A88C8188();

  return v3;
}

- (IMChipSuggestion)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end