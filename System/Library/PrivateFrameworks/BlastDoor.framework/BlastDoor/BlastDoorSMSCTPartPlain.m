@interface BlastDoorSMSCTPartPlain
- (BlastDoorSMSCTPartPlain)init;
- (NSString)description;
@end

@implementation BlastDoorSMSCTPartPlain

- (NSString)description
{
  v4 = *(&self->super.isa + OBJC_IVAR___BlastDoorSMSCTPartPlain_sMSCTPartPlain);
  v5 = *&self->sMSCTPartPlain[OBJC_IVAR___BlastDoorSMSCTPartPlain_sMSCTPartPlain];

  sub_2146D9608();
  v2 = sub_2146D9588();

  return v2;
}

- (BlastDoorSMSCTPartPlain)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end