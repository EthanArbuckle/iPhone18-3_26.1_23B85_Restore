@interface BlastDoorStickerTapBack
- (BlastDoorMessage)messageContent;
- (BlastDoorStickerTapBack)init;
- (BlastDoorTapBack_MessageSummaryInfo)messageSummaryInfo;
- (NSString)description;
- (NSString)plainTextBody;
- (_NSRange)associatedMessageRange;
@end

@implementation BlastDoorStickerTapBack

- (NSString)description
{
  memcpy(__dst, self + OBJC_IVAR___BlastDoorStickerTapBack_stickerTapBack, sizeof(__dst));
  memcpy(v6, self + OBJC_IVAR___BlastDoorStickerTapBack_stickerTapBack, sizeof(v6));
  sub_214301C44(__dst, &v5);
  sub_2146D9608();
  v3 = sub_2146D9588();

  return v3;
}

- (_NSRange)associatedMessageRange
{
  v2 = sub_21457AF78(self, a2, &OBJC_IVAR___BlastDoorStickerTapBack_stickerTapBack);
  result.length = v3;
  result.location = v2;
  return result;
}

- (BlastDoorMessage)messageContent
{
  v2 = *&self->stickerTapBack[OBJC_IVAR___BlastDoorStickerTapBack_stickerTapBack + 160];
  v22 = *&self->stickerTapBack[OBJC_IVAR___BlastDoorStickerTapBack_stickerTapBack + 144];
  v23 = v2;
  v24 = *&self->stickerTapBack[OBJC_IVAR___BlastDoorStickerTapBack_stickerTapBack + 176];
  v25 = *&self->stickerTapBack[OBJC_IVAR___BlastDoorStickerTapBack_stickerTapBack + 192];
  v3 = *&self->stickerTapBack[OBJC_IVAR___BlastDoorStickerTapBack_stickerTapBack + 96];
  v18 = *&self->stickerTapBack[OBJC_IVAR___BlastDoorStickerTapBack_stickerTapBack + 80];
  v19 = v3;
  v4 = *&self->stickerTapBack[OBJC_IVAR___BlastDoorStickerTapBack_stickerTapBack + 128];
  v20 = *&self->stickerTapBack[OBJC_IVAR___BlastDoorStickerTapBack_stickerTapBack + 112];
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
  v14 = [(BlastDoorStickerTapBack *)&v16 init];

  return v14;
}

- (BlastDoorTapBack_MessageSummaryInfo)messageSummaryInfo
{
  v21 = *&self->stickerTapBack[OBJC_IVAR___BlastDoorStickerTapBack_stickerTapBack + 200];
  v2 = *&self->stickerTapBack[OBJC_IVAR___BlastDoorStickerTapBack_stickerTapBack + 224];
  v22 = *&self->stickerTapBack[OBJC_IVAR___BlastDoorStickerTapBack_stickerTapBack + 216];
  v3 = *&self->stickerTapBack[OBJC_IVAR___BlastDoorStickerTapBack_stickerTapBack + 248];
  v18 = *&self->stickerTapBack[OBJC_IVAR___BlastDoorStickerTapBack_stickerTapBack + 232];
  v19 = v3;
  v20 = *&self->stickerTapBack[OBJC_IVAR___BlastDoorStickerTapBack_stickerTapBack + 264];
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
    v8 = [(BlastDoorStickerTapBack *)&v10 init];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)plainTextBody
{
  v2 = *&self->stickerTapBack[OBJC_IVAR___BlastDoorStickerTapBack_stickerTapBack + 280];
  v3 = *&self->stickerTapBack[OBJC_IVAR___BlastDoorStickerTapBack_stickerTapBack + 288];

  v4 = sub_2146D9588();

  return v4;
}

- (BlastDoorStickerTapBack)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end