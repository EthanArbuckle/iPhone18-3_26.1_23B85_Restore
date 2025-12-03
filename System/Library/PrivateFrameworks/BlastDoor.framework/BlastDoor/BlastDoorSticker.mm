@interface BlastDoorSticker
- (BlastDoorMessage)messageContent;
- (BlastDoorSticker)init;
- (NSArray)participantDestinationIdentifiers;
- (NSString)description;
- (_NSRange)associatedMessageRange;
@end

@implementation BlastDoorSticker

- (NSString)description
{
  v2 = *&self->sticker[OBJC_IVAR___BlastDoorSticker_sticker + 136];
  v3 = *&self->sticker[OBJC_IVAR___BlastDoorSticker_sticker + 168];
  v27 = *&self->sticker[OBJC_IVAR___BlastDoorSticker_sticker + 152];
  v28[0] = v3;
  *(v28 + 9) = *&self->sticker[OBJC_IVAR___BlastDoorSticker_sticker + 177];
  v4 = *&self->sticker[OBJC_IVAR___BlastDoorSticker_sticker + 72];
  v5 = *&self->sticker[OBJC_IVAR___BlastDoorSticker_sticker + 104];
  v23 = *&self->sticker[OBJC_IVAR___BlastDoorSticker_sticker + 88];
  v24 = v5;
  v6 = *&self->sticker[OBJC_IVAR___BlastDoorSticker_sticker + 104];
  v7 = *&self->sticker[OBJC_IVAR___BlastDoorSticker_sticker + 136];
  v25 = *&self->sticker[OBJC_IVAR___BlastDoorSticker_sticker + 120];
  v26 = v7;
  v8 = *&self->sticker[OBJC_IVAR___BlastDoorSticker_sticker + 8];
  v9 = *&self->sticker[OBJC_IVAR___BlastDoorSticker_sticker + 40];
  v19 = *&self->sticker[OBJC_IVAR___BlastDoorSticker_sticker + 24];
  v20 = v9;
  v10 = *&self->sticker[OBJC_IVAR___BlastDoorSticker_sticker + 40];
  v11 = *&self->sticker[OBJC_IVAR___BlastDoorSticker_sticker + 72];
  v21 = *&self->sticker[OBJC_IVAR___BlastDoorSticker_sticker + 56];
  v22 = v11;
  v12 = *&self->sticker[OBJC_IVAR___BlastDoorSticker_sticker + 8];
  v18[0] = *(&self->super.isa + OBJC_IVAR___BlastDoorSticker_sticker);
  v18[1] = v12;
  v13 = *&self->sticker[OBJC_IVAR___BlastDoorSticker_sticker + 168];
  v16[23] = v27;
  v17[0] = v13;
  *(v17 + 9) = *&self->sticker[OBJC_IVAR___BlastDoorSticker_sticker + 177];
  v16[19] = v23;
  v16[20] = v6;
  v16[21] = v25;
  v16[22] = v2;
  v16[15] = v19;
  v16[16] = v10;
  v16[17] = v21;
  v16[18] = v4;
  v16[13] = v18[0];
  v16[14] = v8;
  sub_214307F44(v18, v16);
  sub_2146D9608();
  v14 = sub_2146D9588();

  return v14;
}

- (_NSRange)associatedMessageRange
{
  selfCopy = self;
  v3 = sub_21457CB44();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (BlastDoorMessage)messageContent
{
  v2 = *&self->sticker[OBJC_IVAR___BlastDoorSticker_sticker + 128];
  v22 = *&self->sticker[OBJC_IVAR___BlastDoorSticker_sticker + 112];
  v23 = v2;
  v24 = *&self->sticker[OBJC_IVAR___BlastDoorSticker_sticker + 144];
  v25 = *&self->sticker[OBJC_IVAR___BlastDoorSticker_sticker + 160];
  v3 = *&self->sticker[OBJC_IVAR___BlastDoorSticker_sticker + 64];
  v18 = *&self->sticker[OBJC_IVAR___BlastDoorSticker_sticker + 48];
  v19 = v3;
  v4 = *&self->sticker[OBJC_IVAR___BlastDoorSticker_sticker + 96];
  v20 = *&self->sticker[OBJC_IVAR___BlastDoorSticker_sticker + 80];
  v21 = v4;
  v5 = type metadata accessor for _ObjCMessageWrapper();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR___BlastDoorMessage_message];
  v8 = v21;
  v10 = v18;
  v9 = v19;
  *(v7 + 2) = v20;
  *(v7 + 3) = v8;
  *v7 = v10;
  *(v7 + 1) = v9;
  v12 = v23;
  v11 = v24;
  v13 = v22;
  *(v7 + 14) = v25;
  *(v7 + 5) = v12;
  *(v7 + 6) = v11;
  *(v7 + 4) = v13;
  sub_214091538(&v18, v17);
  v16.receiver = v6;
  v16.super_class = v5;
  v14 = [(BlastDoorSticker *)&v16 init];

  return v14;
}

- (NSArray)participantDestinationIdentifiers
{
  if (*&self->sticker[OBJC_IVAR___BlastDoorSticker_sticker + 184])
  {
    v2 = *&self->sticker[OBJC_IVAR___BlastDoorSticker_sticker + 184];

    v3 = sub_2146D98E8();

    return v3;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

- (BlastDoorSticker)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end