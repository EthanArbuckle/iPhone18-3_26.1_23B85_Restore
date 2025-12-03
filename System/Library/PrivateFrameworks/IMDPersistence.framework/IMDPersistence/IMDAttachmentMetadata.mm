@interface IMDAttachmentMetadata
- (IMDAttachmentMetadata)init;
- (IMDAttachmentMetadata)initWithPermanentAttachmentGUID:(id)d messageGUID:(id)iD fromMe:(BOOL)me handleID:(id)handleID;
- (NSString)handleID;
- (void)encodeWithCoder:(id)coder;
- (void)setHandleID:(id)d;
@end

@implementation IMDAttachmentMetadata

- (NSString)handleID
{
  if (*(self + OBJC_IVAR___IMDAttachmentMetadata_handleID + 8))
  {
    v2 = *(self + OBJC_IVAR___IMDAttachmentMetadata_handleID);
    v3 = *(self + OBJC_IVAR___IMDAttachmentMetadata_handleID + 8);

    v4 = sub_1B7CFEA30();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHandleID:(id)d
{
  if (d)
  {
    v4 = sub_1B7CFEA60();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___IMDAttachmentMetadata_handleID);
  v7 = *(self + OBJC_IVAR___IMDAttachmentMetadata_handleID + 8);
  *v6 = v4;
  v6[1] = v5;
}

- (IMDAttachmentMetadata)initWithPermanentAttachmentGUID:(id)d messageGUID:(id)iD fromMe:(BOOL)me handleID:(id)handleID
{
  v9 = sub_1B7CFEA60();
  v11 = v10;
  v12 = sub_1B7CFEA60();
  v14 = v13;
  if (handleID)
  {
    v15 = sub_1B7CFEA60();
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  v17 = (self + OBJC_IVAR___IMDAttachmentMetadata_handleID);
  *v17 = 0;
  v17[1] = 0;
  v18 = (self + OBJC_IVAR___IMDAttachmentMetadata_permanentAttachmentGUID);
  *v18 = v9;
  v18[1] = v11;
  v19 = (self + OBJC_IVAR___IMDAttachmentMetadata_messageGUID);
  *v19 = v12;
  v19[1] = v14;
  *(self + OBJC_IVAR___IMDAttachmentMetadata_fromMe) = me;
  *v17 = v15;
  v17[1] = v16;
  v21.receiver = self;
  v21.super_class = IMDAttachmentMetadata;
  return [(IMDAttachmentMetadata *)&v21 init];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1B7C505E8(coderCopy);
}

- (IMDAttachmentMetadata)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end