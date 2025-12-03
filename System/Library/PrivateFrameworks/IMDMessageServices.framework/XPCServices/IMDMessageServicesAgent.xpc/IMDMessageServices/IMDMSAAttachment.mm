@interface IMDMSAAttachment
- (IMDMSAAttachment)initWithAttachment:(_IMDAttachmentRecordStruct *)attachment;
- (void)dealloc;
@end

@implementation IMDMSAAttachment

- (IMDMSAAttachment)initWithAttachment:(_IMDAttachmentRecordStruct *)attachment
{
  v7.receiver = self;
  v7.super_class = IMDMSAAttachment;
  v4 = [(IMDMSAAttachment *)&v7 init];
  v5 = v4;
  if (v4)
  {
    if (attachment)
    {
      _IMDAttachmentRecordBulkCopy();
    }

    else
    {

      return 0;
    }
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IMDMSAAttachment;
  [(IMDMSAAttachment *)&v3 dealloc];
}

@end