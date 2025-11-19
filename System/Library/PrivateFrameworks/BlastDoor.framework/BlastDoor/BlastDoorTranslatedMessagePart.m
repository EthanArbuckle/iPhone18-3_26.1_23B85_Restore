@interface BlastDoorTranslatedMessagePart
- (BOOL)has_messagePartIndex;
- (BlastDoorTranslatedMessagePart)init;
- (NSAttributedString)translatedText;
- (NSString)description;
- (NSString)translationLanguage;
- (int64_t)messagePartIndex;
@end

@implementation BlastDoorTranslatedMessagePart

- (NSString)description
{
  v2 = *&self->translatedMessagePart[OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 72];
  v3 = *&self->translatedMessagePart[OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 104];
  v27 = *&self->translatedMessagePart[OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 88];
  v28 = v3;
  v4 = *&self->translatedMessagePart[OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 8];
  v5 = *&self->translatedMessagePart[OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 40];
  v23 = *&self->translatedMessagePart[OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 24];
  v24 = v5;
  v6 = *&self->translatedMessagePart[OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 40];
  v7 = *&self->translatedMessagePart[OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 72];
  v25 = *&self->translatedMessagePart[OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 56];
  v26 = v7;
  v8 = *&self->translatedMessagePart[OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 8];
  v22[0] = *(&self->super.isa + OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart);
  v22[1] = v8;
  v9 = *&self->translatedMessagePart[OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 104];
  v19 = v27;
  v20 = v9;
  v15 = v23;
  v16 = v6;
  v17 = v25;
  v18 = v2;
  v29 = *&self->translatedMessagePart[OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 120];
  v21 = *&self->translatedMessagePart[OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 120];
  v13 = v22[0];
  v14 = v4;
  sub_214308AB8(v22, v12);
  sub_2146D9608();
  v10 = sub_2146D9588();

  return v10;
}

- (BOOL)has_messagePartIndex
{
  if ((self->translatedMessagePart[OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 17] & 1) == 0)
  {
    return (self->translatedMessagePart[OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 16] & 1) == 0;
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

- (int64_t)messagePartIndex
{
  v2 = self + OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart;
  if (self->translatedMessagePart[OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 17])
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v3 = v2[24];
    v4 = *(v2 + 2);
    if (v3)
    {
      return 0;
    }

    else
    {
      return v4;
    }
  }

  return result;
}

- (NSString)translationLanguage
{
  v2 = *&self->translatedMessagePart[OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 88];
  if (v2)
  {
    if (v2 == 1)
    {
      result = sub_2146DA018();
      __break(1u);
      return result;
    }

    v4 = *&self->translatedMessagePart[OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 80];
    v5 = *&self->translatedMessagePart[OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 88];

    v6 = sub_2146D9588();
    sub_213FDC6D0(v4, v2);
    v3 = v6;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSAttributedString)translatedText
{
  v3 = self + OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart;
  if (*&self->translatedMessagePart[OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 104])
  {
    v6 = *&self->translatedMessagePart[OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 104];
    v7 = *(v3 + 15);
    v8 = *(v3 + 16);
    v4 = sub_214664BB8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BlastDoorTranslatedMessagePart)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end