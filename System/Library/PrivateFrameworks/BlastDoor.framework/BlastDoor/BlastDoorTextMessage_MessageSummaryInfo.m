@interface BlastDoorTextMessage_MessageSummaryInfo
- (BlastDoorTextMessage_MessageSummaryInfo)init;
- (NSString)associatedBalloonBundleID;
- (NSString)description;
- (NSString)sourceApplicationID;
@end

@implementation BlastDoorTextMessage_MessageSummaryInfo

- (NSString)description
{
  v2 = *&self->textMessage_MessageSummaryInfo[OBJC_IVAR___BlastDoorTextMessage_MessageSummaryInfo_textMessage_MessageSummaryInfo + 40];
  v3 = *&self->textMessage_MessageSummaryInfo[OBJC_IVAR___BlastDoorTextMessage_MessageSummaryInfo_textMessage_MessageSummaryInfo + 8];
  v11 = *&self->textMessage_MessageSummaryInfo[OBJC_IVAR___BlastDoorTextMessage_MessageSummaryInfo_textMessage_MessageSummaryInfo + 24];
  v12 = v2;
  v4 = *&self->textMessage_MessageSummaryInfo[OBJC_IVAR___BlastDoorTextMessage_MessageSummaryInfo_textMessage_MessageSummaryInfo + 40];
  v13[0] = *&self->textMessage_MessageSummaryInfo[OBJC_IVAR___BlastDoorTextMessage_MessageSummaryInfo_textMessage_MessageSummaryInfo + 56];
  *(v13 + 9) = *&self->textMessage_MessageSummaryInfo[OBJC_IVAR___BlastDoorTextMessage_MessageSummaryInfo_textMessage_MessageSummaryInfo + 65];
  v5 = *&self->textMessage_MessageSummaryInfo[OBJC_IVAR___BlastDoorTextMessage_MessageSummaryInfo_textMessage_MessageSummaryInfo + 8];
  v10[0] = *(&self->super.isa + OBJC_IVAR___BlastDoorTextMessage_MessageSummaryInfo_textMessage_MessageSummaryInfo);
  v10[1] = v5;
  v8[8] = v11;
  v8[9] = v4;
  v9[0] = *&self->textMessage_MessageSummaryInfo[OBJC_IVAR___BlastDoorTextMessage_MessageSummaryInfo_textMessage_MessageSummaryInfo + 56];
  *(v9 + 9) = *&self->textMessage_MessageSummaryInfo[OBJC_IVAR___BlastDoorTextMessage_MessageSummaryInfo_textMessage_MessageSummaryInfo + 65];
  v8[6] = v10[0];
  v8[7] = v3;
  sub_2143140D0(v10, v8);
  sub_2146D9608();
  v6 = sub_2146D9588();

  return v6;
}

- (NSString)sourceApplicationID
{
  v2 = *&self->textMessage_MessageSummaryInfo[OBJC_IVAR___BlastDoorTextMessage_MessageSummaryInfo_textMessage_MessageSummaryInfo + 32];
  if (v2)
  {
    if (v2 == 1)
    {
      result = sub_2146DA018();
      __break(1u);
      return result;
    }

    v4 = *&self->textMessage_MessageSummaryInfo[OBJC_IVAR___BlastDoorTextMessage_MessageSummaryInfo_textMessage_MessageSummaryInfo + 24];
    v5 = *&self->textMessage_MessageSummaryInfo[OBJC_IVAR___BlastDoorTextMessage_MessageSummaryInfo_textMessage_MessageSummaryInfo + 32];

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

- (NSString)associatedBalloonBundleID
{
  v2 = *&self->textMessage_MessageSummaryInfo[OBJC_IVAR___BlastDoorTextMessage_MessageSummaryInfo_textMessage_MessageSummaryInfo + 72];
  if (v2)
  {
    if (v2 == 1)
    {
      result = sub_2146DA018();
      __break(1u);
      return result;
    }

    v4 = *&self->textMessage_MessageSummaryInfo[OBJC_IVAR___BlastDoorTextMessage_MessageSummaryInfo_textMessage_MessageSummaryInfo + 64];
    v5 = *&self->textMessage_MessageSummaryInfo[OBJC_IVAR___BlastDoorTextMessage_MessageSummaryInfo_textMessage_MessageSummaryInfo + 72];

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

- (BlastDoorTextMessage_MessageSummaryInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end