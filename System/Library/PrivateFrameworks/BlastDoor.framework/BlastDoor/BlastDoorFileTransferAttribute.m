@interface BlastDoorFileTransferAttribute
- (BlastDoorFileTransferAttribute)init;
- (BlastDoorFileTransferAttributeAttachmentSubtypeWrapper)attachmentSubtype;
- (BlastDoorFileTransferAttribute_ImageInfo)imageInfo;
- (NSArray)attachments;
- (NSNumber)legacyAnimoji;
- (NSString)description;
- (NSString)name;
- (unint64_t)datasize;
- (void)setAttachmentSubtype:(id)a3;
- (void)setAttachments:(id)a3;
- (void)setDatasize:(unint64_t)a3;
- (void)setName:(id)a3;
@end

@implementation BlastDoorFileTransferAttribute

- (NSArray)attachments
{
  v3 = OBJC_IVAR___BlastDoorFileTransferAttribute_attachments;
  swift_beginAccess();
  v4 = *(self + v3);
  type metadata accessor for _ObjCFileTransferAttribute_AttachmentInfoWrapper(0);

  v5 = sub_2146D98E8();

  return v5;
}

- (void)setAttachments:(id)a3
{
  type metadata accessor for _ObjCFileTransferAttribute_AttachmentInfoWrapper(0);
  v4 = sub_2146D9918();
  v5 = OBJC_IVAR___BlastDoorFileTransferAttribute_attachments;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (BlastDoorFileTransferAttribute_ImageInfo)imageInfo
{
  v3 = OBJC_IVAR___BlastDoorFileTransferAttribute_imageInfo;
  swift_beginAccess();
  return *(self + v3);
}

- (BlastDoorFileTransferAttributeAttachmentSubtypeWrapper)attachmentSubtype
{
  v3 = OBJC_IVAR___BlastDoorFileTransferAttribute_attachmentSubtype;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAttachmentSubtype:(id)a3
{
  v5 = OBJC_IVAR___BlastDoorFileTransferAttribute_attachmentSubtype;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (NSString)name
{
  v2 = (self + OBJC_IVAR___BlastDoorFileTransferAttribute_name);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  v5 = sub_2146D9588();

  return v5;
}

- (void)setName:(id)a3
{
  v4 = sub_2146D95B8();
  v6 = v5;
  v7 = (self + OBJC_IVAR___BlastDoorFileTransferAttribute_name);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (unint64_t)datasize
{
  v3 = OBJC_IVAR___BlastDoorFileTransferAttribute_datasize;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setDatasize:(unint64_t)a3
{
  v5 = OBJC_IVAR___BlastDoorFileTransferAttribute_datasize;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (NSNumber)legacyAnimoji
{
  v3 = OBJC_IVAR___BlastDoorFileTransferAttribute_legacyAnimoji;
  swift_beginAccess();
  return *(self + v3);
}

- (NSString)description
{
  v2 = self;
  sub_214666BC4();

  v3 = sub_2146D9588();

  return v3;
}

- (BlastDoorFileTransferAttribute)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end