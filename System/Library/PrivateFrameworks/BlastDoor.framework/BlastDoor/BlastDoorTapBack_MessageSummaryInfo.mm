@interface BlastDoorTapBack_MessageSummaryInfo
- (BlastDoorTapBack_MessageSummaryInfo)init;
- (NSString)description;
- (NSString)pluginBundleID;
- (int64_t)contentType;
@end

@implementation BlastDoorTapBack_MessageSummaryInfo

- (NSString)description
{
  v2 = *&self->tapBack_MessageSummaryInfo[OBJC_IVAR___BlastDoorTapBack_MessageSummaryInfo_tapBack_MessageSummaryInfo + 8];
  v3 = *&self->tapBack_MessageSummaryInfo[OBJC_IVAR___BlastDoorTapBack_MessageSummaryInfo_tapBack_MessageSummaryInfo + 40];
  v10 = *&self->tapBack_MessageSummaryInfo[OBJC_IVAR___BlastDoorTapBack_MessageSummaryInfo_tapBack_MessageSummaryInfo + 24];
  v11 = v3;
  v4 = *&self->tapBack_MessageSummaryInfo[OBJC_IVAR___BlastDoorTapBack_MessageSummaryInfo_tapBack_MessageSummaryInfo + 40];
  v12 = *&self->tapBack_MessageSummaryInfo[OBJC_IVAR___BlastDoorTapBack_MessageSummaryInfo_tapBack_MessageSummaryInfo + 56];
  v5 = *&self->tapBack_MessageSummaryInfo[OBJC_IVAR___BlastDoorTapBack_MessageSummaryInfo_tapBack_MessageSummaryInfo + 8];
  v9[0] = *(&self->super.isa + OBJC_IVAR___BlastDoorTapBack_MessageSummaryInfo_tapBack_MessageSummaryInfo);
  v9[1] = v5;
  v8[7] = v10;
  v8[8] = v4;
  v8[9] = *&self->tapBack_MessageSummaryInfo[OBJC_IVAR___BlastDoorTapBack_MessageSummaryInfo_tapBack_MessageSummaryInfo + 56];
  v8[5] = v9[0];
  v8[6] = v2;
  sub_214311D90(v9, v8);
  sub_2146D9608();
  v6 = sub_2146D9588();

  return v6;
}

- (int64_t)contentType
{
  result = sub_21459366C(qword_214760648[*(&self->super.isa + OBJC_IVAR___BlastDoorTapBack_MessageSummaryInfo_tapBack_MessageSummaryInfo)]);
  if (v3)
  {
    __break(1u);
  }

  return result;
}

- (NSString)pluginBundleID
{
  v2 = *&self->tapBack_MessageSummaryInfo[OBJC_IVAR___BlastDoorTapBack_MessageSummaryInfo_tapBack_MessageSummaryInfo + 40];
  if (v2)
  {
    if (v2 == 1)
    {
      result = sub_2146DA018();
      __break(1u);
      return result;
    }

    v4 = *&self->tapBack_MessageSummaryInfo[OBJC_IVAR___BlastDoorTapBack_MessageSummaryInfo_tapBack_MessageSummaryInfo + 32];
    v5 = *&self->tapBack_MessageSummaryInfo[OBJC_IVAR___BlastDoorTapBack_MessageSummaryInfo_tapBack_MessageSummaryInfo + 40];

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

- (BlastDoorTapBack_MessageSummaryInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end