@interface IMDAttachmentMetadata
- (IMDAttachmentMetadata)init;
- (IMDAttachmentMetadata)initWithPermanentAttachmentGUID:(id)a3 messageGUID:(id)a4 fromMe:(BOOL)a5 handleID:(id)a6;
- (NSString)handleID;
- (void)encodeWithCoder:(id)a3;
- (void)setHandleID:(id)a3;
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

- (void)setHandleID:(id)a3
{
  if (a3)
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

- (IMDAttachmentMetadata)initWithPermanentAttachmentGUID:(id)a3 messageGUID:(id)a4 fromMe:(BOOL)a5 handleID:(id)a6
{
  v9 = sub_1B7CFEA60();
  v11 = v10;
  v12 = sub_1B7CFEA60();
  v14 = v13;
  if (a6)
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
  *(self + OBJC_IVAR___IMDAttachmentMetadata_fromMe) = a5;
  *v17 = v15;
  v17[1] = v16;
  v21.receiver = self;
  v21.super_class = IMDAttachmentMetadata;
  return [(IMDAttachmentMetadata *)&v21 init];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B7C505E8(v4);
}

- (IMDAttachmentMetadata)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end