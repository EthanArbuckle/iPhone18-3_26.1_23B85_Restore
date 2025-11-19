@interface BlastDoorEncodedAttachments_RawData
- (BlastDoorEncodedAttachments_RawData)init;
- (NSData)data;
- (NSString)description;
@end

@implementation BlastDoorEncodedAttachments_RawData

- (NSString)description
{
  sub_21402D9F8(*(&self->super.isa + OBJC_IVAR___BlastDoorEncodedAttachments_RawData_encodedAttachments_RawData), *&self->encodedAttachments_RawData[OBJC_IVAR___BlastDoorEncodedAttachments_RawData_encodedAttachments_RawData]);
  sub_2146D9608();
  v2 = sub_2146D9588();

  return v2;
}

- (NSData)data
{
  v2 = *(&self->super.isa + OBJC_IVAR___BlastDoorEncodedAttachments_RawData_encodedAttachments_RawData);
  v3 = *&self->encodedAttachments_RawData[OBJC_IVAR___BlastDoorEncodedAttachments_RawData_encodedAttachments_RawData];
  sub_21402D9F8(v2, v3);
  v4 = sub_2146D8A38();
  sub_213FB54FC(v2, v3);

  return v4;
}

- (BlastDoorEncodedAttachments_RawData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end