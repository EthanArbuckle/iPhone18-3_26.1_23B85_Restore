@interface BlastDoorBasicEmojiTapback
- (BlastDoorBasicEmojiTapback)init;
- (BlastDoorBasicTapBack_MessageSummaryInfo)messageSummaryInfo;
- (NSString)description;
- (NSString)plainTextBody;
- (_NSRange)associatedMessageRange;
- (int64_t)associatedMessageType;
@end

@implementation BlastDoorBasicEmojiTapback

- (NSString)description
{
  v2 = *&self->basicEmojiTapback[OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback + 104];
  v3 = *&self->basicEmojiTapback[OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback + 136];
  v34 = *&self->basicEmojiTapback[OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback + 120];
  v35 = v3;
  v4 = *&self->basicEmojiTapback[OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback + 40];
  v5 = *&self->basicEmojiTapback[OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback + 72];
  v30 = *&self->basicEmojiTapback[OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback + 56];
  v31 = v5;
  v6 = *&self->basicEmojiTapback[OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback + 72];
  v7 = *&self->basicEmojiTapback[OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback + 104];
  v32 = *&self->basicEmojiTapback[OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback + 88];
  v33 = v7;
  v8 = *&self->basicEmojiTapback[OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback + 8];
  v27[0] = *(&self->super.isa + OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback);
  v27[1] = v8;
  v9 = *&self->basicEmojiTapback[OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback + 40];
  v11 = *(&self->super.isa + OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback);
  v10 = *&self->basicEmojiTapback[OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback + 8];
  v28 = *&self->basicEmojiTapback[OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback + 24];
  v29 = v9;
  v12 = *&self->basicEmojiTapback[OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback + 136];
  v24 = v34;
  v25 = v12;
  v20 = v30;
  v21 = v6;
  v22 = v32;
  v23 = v2;
  v16 = v11;
  v17 = v10;
  v36 = *&self->basicEmojiTapback[OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback + 152];
  v26 = *&self->basicEmojiTapback[OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback + 152];
  v18 = v28;
  v19 = v4;
  sub_2142E58CC(v27, v15);
  sub_2146D9608();
  v13 = sub_2146D9588();

  return v13;
}

- (int64_t)associatedMessageType
{
  if (*(&self->super.isa + OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback))
  {
    return 3006;
  }

  else
  {
    return 2006;
  }
}

- (_NSRange)associatedMessageRange
{
  v2 = sub_21457AF78(self, a2, &OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback);
  result.length = v3;
  result.location = v2;
  return result;
}

- (BlastDoorBasicTapBack_MessageSummaryInfo)messageSummaryInfo
{
  v2 = self + OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback;
  v3 = *&self->basicEmojiTapback[OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback + 136];
  if (v3 == 1)
  {
    v4 = 0;
  }

  else
  {
    v6 = *(v2 + 16);
    v5 = *(v2 + 17);
    v7 = type metadata accessor for _ObjCBasicTapBack_MessageSummaryInfoWrapper();
    v8 = objc_allocWithZone(v7);
    v9 = &v8[OBJC_IVAR___BlastDoorBasicTapBack_MessageSummaryInfo_basicTapBack_MessageSummaryInfo];
    *v9 = v6;
    *(v9 + 1) = v5;
    *(v9 + 2) = v3;
    v11.receiver = v8;
    v11.super_class = v7;

    v4 = [(BlastDoorBasicEmojiTapback *)&v11 init];
  }

  return v4;
}

- (NSString)plainTextBody
{
  v2 = *&self->basicEmojiTapback[OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback + 144];
  v3 = *&self->basicEmojiTapback[OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback + 152];

  v4 = sub_2146D9588();

  return v4;
}

- (BlastDoorBasicEmojiTapback)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end