@interface BlastDoorSMSCTPartAttachment
- (BlastDoorSMSCTPartAttachment)init;
- (NSString)description;
@end

@implementation BlastDoorSMSCTPartAttachment

- (NSString)description
{
  v4 = *&self->sMSCTPartAttachment[OBJC_IVAR___BlastDoorSMSCTPartAttachment_sMSCTPartAttachment + 16];
  sub_213FDCA18(*(&self->super.isa + OBJC_IVAR___BlastDoorSMSCTPartAttachment_sMSCTPartAttachment), *&self->sMSCTPartAttachment[OBJC_IVAR___BlastDoorSMSCTPartAttachment_sMSCTPartAttachment]);

  sub_2146D9608();
  v2 = sub_2146D9588();

  return v2;
}

- (BlastDoorSMSCTPartAttachment)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end