@interface BlastDoorEncodedAttachmentsEncodedContentWrapper
- (BlastDoorEncodedAttachmentsEncodedContentWrapper)init;
- (BlastDoorEncodedAttachments_EncodedAstc)astc;
- (BlastDoorEncodedAttachments_RawData)other;
- (NSString)description;
- (unint64_t)type;
@end

@implementation BlastDoorEncodedAttachmentsEncodedContentWrapper

- (NSString)description
{
  sub_2143229E4(self + OBJC_IVAR___BlastDoorEncodedAttachmentsEncodedContentWrapper_encodedAttachments_EncodedContent, &v4);
  sub_2146D9608();
  v2 = sub_2146D9588();

  return v2;
}

- (unint64_t)type
{
  sub_2143229E4(self + OBJC_IVAR___BlastDoorEncodedAttachmentsEncodedContentWrapper_encodedAttachments_EncodedContent, v4);
  v2 = v4[473];
  sub_214593574(v4);
  return v2;
}

- (BlastDoorEncodedAttachments_EncodedAstc)astc
{
  v2 = self;
  v3 = sub_21458FD30();

  return v3;
}

- (BlastDoorEncodedAttachments_RawData)other
{
  v2 = self;
  v3 = sub_21458FE38();

  return v3;
}

- (BlastDoorEncodedAttachmentsEncodedContentWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end