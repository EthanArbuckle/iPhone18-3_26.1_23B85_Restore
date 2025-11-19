@interface BlastDoorBasicTapBack
- (BlastDoorBasicTapBack)init;
- (BlastDoorBasicTapBack_MessageSummaryInfo)messageSummaryInfo;
- (NSString)description;
- (NSString)plainTextBody;
- (_NSRange)associatedMessageRange;
- (int64_t)associatedMessageType;
@end

@implementation BlastDoorBasicTapBack

- (NSString)description
{
  v2 = *&self->basicTapBack[OBJC_IVAR___BlastDoorBasicTapBack_basicTapBack + 72];
  v3 = *&self->basicTapBack[OBJC_IVAR___BlastDoorBasicTapBack_basicTapBack + 40];
  v17 = *&self->basicTapBack[OBJC_IVAR___BlastDoorBasicTapBack_basicTapBack + 56];
  v18 = v2;
  v4 = *&self->basicTapBack[OBJC_IVAR___BlastDoorBasicTapBack_basicTapBack + 72];
  v5 = *&self->basicTapBack[OBJC_IVAR___BlastDoorBasicTapBack_basicTapBack + 104];
  v19 = *&self->basicTapBack[OBJC_IVAR___BlastDoorBasicTapBack_basicTapBack + 88];
  v20 = v5;
  v6 = *&self->basicTapBack[OBJC_IVAR___BlastDoorBasicTapBack_basicTapBack + 8];
  v14[0] = *(&self->super.isa + OBJC_IVAR___BlastDoorBasicTapBack_basicTapBack);
  v14[1] = v6;
  v7 = *&self->basicTapBack[OBJC_IVAR___BlastDoorBasicTapBack_basicTapBack + 40];
  v9 = *(&self->super.isa + OBJC_IVAR___BlastDoorBasicTapBack_basicTapBack);
  v8 = *&self->basicTapBack[OBJC_IVAR___BlastDoorBasicTapBack_basicTapBack + 8];
  v15 = *&self->basicTapBack[OBJC_IVAR___BlastDoorBasicTapBack_basicTapBack + 24];
  v16 = v7;
  v13[12] = v17;
  v13[13] = v4;
  v10 = *&self->basicTapBack[OBJC_IVAR___BlastDoorBasicTapBack_basicTapBack + 104];
  v13[14] = v19;
  v13[15] = v10;
  v13[8] = v9;
  v13[9] = v8;
  v13[10] = v15;
  v13[11] = v3;
  sub_2142E5C78(v14, v13);
  sub_2146D9608();
  v11 = sub_2146D9588();

  return v11;
}

- (int64_t)associatedMessageType
{
  result = sub_214591CF4(qword_214760440[*(&self->super.isa + OBJC_IVAR___BlastDoorBasicTapBack_basicTapBack)]);
  if (v3)
  {
    __break(1u);
  }

  return result;
}

- (_NSRange)associatedMessageRange
{
  v2 = sub_21457AF78(self, a2, &OBJC_IVAR___BlastDoorBasicTapBack_basicTapBack);
  result.length = v3;
  result.location = v2;
  return result;
}

- (BlastDoorBasicTapBack_MessageSummaryInfo)messageSummaryInfo
{
  v2 = self + OBJC_IVAR___BlastDoorBasicTapBack_basicTapBack;
  v3 = *&self->basicTapBack[OBJC_IVAR___BlastDoorBasicTapBack_basicTapBack + 96];
  if (v3 == 1)
  {
    v4 = 0;
  }

  else
  {
    v6 = *(v2 + 11);
    v5 = *(v2 + 12);
    v7 = type metadata accessor for _ObjCBasicTapBack_MessageSummaryInfoWrapper();
    v8 = objc_allocWithZone(v7);
    v9 = &v8[OBJC_IVAR___BlastDoorBasicTapBack_MessageSummaryInfo_basicTapBack_MessageSummaryInfo];
    *v9 = v6;
    *(v9 + 1) = v5;
    *(v9 + 2) = v3;
    v11.receiver = v8;
    v11.super_class = v7;

    v4 = [(BlastDoorBasicTapBack *)&v11 init];
  }

  return v4;
}

- (NSString)plainTextBody
{
  v2 = *&self->basicTapBack[OBJC_IVAR___BlastDoorBasicTapBack_basicTapBack + 104];
  v3 = *&self->basicTapBack[OBJC_IVAR___BlastDoorBasicTapBack_basicTapBack + 112];

  v4 = sub_2146D9588();

  return v4;
}

- (BlastDoorBasicTapBack)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end