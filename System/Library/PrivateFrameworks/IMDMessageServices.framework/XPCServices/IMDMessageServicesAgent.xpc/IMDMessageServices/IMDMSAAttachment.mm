@interface IMDMSAAttachment
- (IMDMSAAttachment)initWithAttachment:(_IMDAttachmentRecordStruct *)a3;
- (void)dealloc;
@end

@implementation IMDMSAAttachment

- (IMDMSAAttachment)initWithAttachment:(_IMDAttachmentRecordStruct *)a3
{
  v7.receiver = self;
  v7.super_class = IMDMSAAttachment;
  v4 = [(IMDMSAAttachment *)&v7 init];
  v5 = v4;
  if (v4)
  {
    if (a3)
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