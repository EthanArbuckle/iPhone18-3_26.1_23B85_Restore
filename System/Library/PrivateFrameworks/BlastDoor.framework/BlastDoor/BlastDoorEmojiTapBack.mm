@interface BlastDoorEmojiTapBack
- (BlastDoorEmojiTapBack)init;
- (BlastDoorTapBack_MessageSummaryInfo)messageSummaryInfo;
- (NSString)description;
- (NSString)plainTextBody;
- (_NSRange)associatedMessageRange;
@end

@implementation BlastDoorEmojiTapBack

- (NSString)description
{
  v2 = *&self->emojiTapBack[OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 168];
  v3 = *&self->emojiTapBack[OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 136];
  v28 = *&self->emojiTapBack[OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 152];
  v29 = v2;
  v4 = *&self->emojiTapBack[OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 168];
  v5 = *&self->emojiTapBack[OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 200];
  v30 = *&self->emojiTapBack[OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 184];
  v31 = v5;
  v6 = *&self->emojiTapBack[OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 104];
  v7 = *&self->emojiTapBack[OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 72];
  v24 = *&self->emojiTapBack[OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 88];
  v25 = v6;
  v8 = *&self->emojiTapBack[OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 104];
  v9 = *&self->emojiTapBack[OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 136];
  v26 = *&self->emojiTapBack[OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 120];
  v27 = v9;
  v10 = *&self->emojiTapBack[OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 40];
  v11 = *&self->emojiTapBack[OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 8];
  v20 = *&self->emojiTapBack[OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 24];
  v21 = v10;
  v12 = *&self->emojiTapBack[OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 40];
  v13 = *&self->emojiTapBack[OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 72];
  v22 = *&self->emojiTapBack[OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 56];
  v23 = v13;
  v14 = *&self->emojiTapBack[OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 8];
  v19[0] = *(&self->super.isa + OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack);
  v19[1] = v14;
  v18[24] = v28;
  v18[25] = v4;
  v15 = *&self->emojiTapBack[OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 200];
  v18[26] = v30;
  v18[27] = v15;
  v18[20] = v24;
  v18[21] = v8;
  v18[22] = v26;
  v18[23] = v3;
  v18[16] = v20;
  v18[17] = v12;
  v18[18] = v22;
  v18[19] = v7;
  v18[14] = v19[0];
  v18[15] = v11;
  sub_2142EEA58(v19, v18);
  sub_2146D9608();
  v16 = sub_2146D9588();

  return v16;
}

- (_NSRange)associatedMessageRange
{
  v2 = sub_21457AF78(self, a2, &OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack);
  result.length = v3;
  result.location = v2;
  return result;
}

- (BlastDoorTapBack_MessageSummaryInfo)messageSummaryInfo
{
  v21 = *&self->emojiTapBack[OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 120];
  v2 = *&self->emojiTapBack[OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 144];
  v22 = *&self->emojiTapBack[OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 136];
  v3 = *&self->emojiTapBack[OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 168];
  v18 = *&self->emojiTapBack[OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 152];
  v19 = v3;
  v20 = *&self->emojiTapBack[OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 184];
  v25 = v20;
  v26 = v21;
  v27 = v22;
  v23 = v18;
  v24 = v3;
  if (v2)
  {
    v4 = type metadata accessor for _ObjCTapBack_MessageSummaryInfoWrapper();
    v5 = objc_allocWithZone(v4);
    v6 = &v5[OBJC_IVAR___BlastDoorTapBack_MessageSummaryInfo_tapBack_MessageSummaryInfo];
    *v6 = v26;
    *(v6 + 2) = v27;
    *(v6 + 3) = v2;
    v7 = v24;
    *(v6 + 2) = v23;
    *(v6 + 3) = v7;
    *(v6 + 4) = v25;
    v12 = v21;
    v13 = v22;
    v14 = v2;
    v16 = v19;
    v17 = v20;
    v15 = v18;
    sub_214311D90(&v12, v11);
    v10.receiver = v5;
    v10.super_class = v4;
    v8 = [(BlastDoorEmojiTapBack *)&v10 init];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)plainTextBody
{
  v2 = *&self->emojiTapBack[OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 200];
  v3 = *&self->emojiTapBack[OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 208];

  v4 = sub_2146D9588();

  return v4;
}

- (BlastDoorEmojiTapBack)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end