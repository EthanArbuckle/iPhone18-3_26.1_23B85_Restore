@interface BlastDoorSMSCTPartAttributedChipList
- (BlastDoorSMSCTPartAttributedChipList)init;
- (NSDictionary)chipList;
- (NSString)description;
@end

@implementation BlastDoorSMSCTPartAttributedChipList

- (NSString)description
{
  v4 = *(&self->super.isa + OBJC_IVAR___BlastDoorSMSCTPartAttributedChipList_sMSCTPartAttributedChipList);
  v5 = self->sMSCTPartAttributedChipList[OBJC_IVAR___BlastDoorSMSCTPartAttributedChipList_sMSCTPartAttributedChipList];

  sub_2146D9608();
  v2 = sub_2146D9588();

  return v2;
}

- (NSDictionary)chipList
{
  if (*(&self->super.isa + OBJC_IVAR___BlastDoorSMSCTPartAttributedChipList_sMSCTPartAttributedChipList))
  {
    v5 = *(&self->super.isa + OBJC_IVAR___BlastDoorSMSCTPartAttributedChipList_sMSCTPartAttributedChipList);
    v6 = self->sMSCTPartAttributedChipList[OBJC_IVAR___BlastDoorSMSCTPartAttributedChipList_sMSCTPartAttributedChipList] & 1;
    v2 = self;

    MBDChipList.dictionaryRepresentation.getter();
    v3 = sub_2146D9468();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BlastDoorSMSCTPartAttributedChipList)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end