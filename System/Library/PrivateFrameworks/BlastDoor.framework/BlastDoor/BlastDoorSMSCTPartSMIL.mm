@interface BlastDoorSMSCTPartSMIL
- (BlastDoorSMSCTPartSMIL)init;
- (NSString)description;
@end

@implementation BlastDoorSMSCTPartSMIL

- (NSString)description
{
  v4 = *&self->sMSCTPartSMIL[OBJC_IVAR___BlastDoorSMSCTPartSMIL_sMSCTPartSMIL];
  v5 = *&self->sMSCTPartSMIL[OBJC_IVAR___BlastDoorSMSCTPartSMIL_sMSCTPartSMIL + 8];
  v6 = *&self->sMSCTPartSMIL[OBJC_IVAR___BlastDoorSMSCTPartSMIL_sMSCTPartSMIL + 16];
  sub_214031CA0(*(&self->super.isa + OBJC_IVAR___BlastDoorSMSCTPartSMIL_sMSCTPartSMIL));

  sub_2146D9608();
  v2 = sub_2146D9588();

  return v2;
}

- (BlastDoorSMSCTPartSMIL)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end