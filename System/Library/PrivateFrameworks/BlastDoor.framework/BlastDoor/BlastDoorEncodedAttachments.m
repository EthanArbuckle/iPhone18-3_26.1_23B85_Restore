@interface BlastDoorEncodedAttachments
- (BlastDoorEncodedAttachments)init;
- (NSString)description;
@end

@implementation BlastDoorEncodedAttachments

- (NSString)description
{
  v4 = *(&self->super.isa + OBJC_IVAR___BlastDoorEncodedAttachments_encodedAttachments);

  sub_2146D9608();
  v2 = sub_2146D9588();

  return v2;
}

- (BlastDoorEncodedAttachments)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end