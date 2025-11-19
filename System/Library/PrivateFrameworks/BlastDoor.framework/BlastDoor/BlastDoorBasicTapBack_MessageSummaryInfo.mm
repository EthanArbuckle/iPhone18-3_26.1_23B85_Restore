@interface BlastDoorBasicTapBack_MessageSummaryInfo
- (BlastDoorBasicTapBack_MessageSummaryInfo)init;
- (NSString)description;
@end

@implementation BlastDoorBasicTapBack_MessageSummaryInfo

- (NSString)description
{
  v4 = *(&self->super.isa + OBJC_IVAR___BlastDoorBasicTapBack_MessageSummaryInfo_basicTapBack_MessageSummaryInfo);
  v5 = *&self->basicTapBack_MessageSummaryInfo[OBJC_IVAR___BlastDoorBasicTapBack_MessageSummaryInfo_basicTapBack_MessageSummaryInfo];
  v6 = *&self->basicTapBack_MessageSummaryInfo[OBJC_IVAR___BlastDoorBasicTapBack_MessageSummaryInfo_basicTapBack_MessageSummaryInfo + 8];

  sub_2146D9608();
  v2 = sub_2146D9588();

  return v2;
}

- (BlastDoorBasicTapBack_MessageSummaryInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end