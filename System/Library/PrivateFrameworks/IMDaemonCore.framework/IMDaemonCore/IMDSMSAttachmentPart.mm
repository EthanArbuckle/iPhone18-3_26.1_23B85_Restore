@interface IMDSMSAttachmentPart
- (IMDSMSAttachmentPart)initWithContentLocation:(id)a3;
@end

@implementation IMDSMSAttachmentPart

- (IMDSMSAttachmentPart)initWithContentLocation:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = IMDSMSAttachmentPart;
  v5 = [(IMDSMSAttachmentPart *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    contentLocation = v5->_contentLocation;
    v5->_contentLocation = v6;
  }

  return v5;
}

@end