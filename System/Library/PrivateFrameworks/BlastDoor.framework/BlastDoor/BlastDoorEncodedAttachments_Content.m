@interface BlastDoorEncodedAttachments_Content
- (BlastDoorEncodedAttachmentsEncodedContentWrapper)content;
- (BlastDoorEncodedAttachments_Content)init;
- (NSString)description;
@end

@implementation BlastDoorEncodedAttachments_Content

- (NSString)description
{
  sub_214592114(self + OBJC_IVAR___BlastDoorEncodedAttachments_Content_encodedAttachments_Content, &v4);
  sub_2146D9608();
  v2 = sub_2146D9588();

  return v2;
}

- (BlastDoorEncodedAttachmentsEncodedContentWrapper)content
{
  sub_214592114(self + OBJC_IVAR___BlastDoorEncodedAttachments_Content_encodedAttachments_Content, __src);
  memcpy(__dst, __src, 0x1DAuLL);
  v2 = type metadata accessor for _ObjCEnumEncodedAttachmentsEncodedContentWrapper();
  v3 = objc_allocWithZone(v2);
  sub_2143229E4(__dst, v3 + OBJC_IVAR___BlastDoorEncodedAttachmentsEncodedContentWrapper_encodedAttachments_EncodedContent);
  v6.receiver = v3;
  v6.super_class = v2;
  v4 = [(BlastDoorEncodedAttachments_Content *)&v6 init];
  sub_214593574(__dst);

  return v4;
}

- (BlastDoorEncodedAttachments_Content)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end