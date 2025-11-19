@interface SMSAttachmentPart
- (SMSAttachmentPart)initWithContentLocation:(id)a3;
@end

@implementation SMSAttachmentPart

- (SMSAttachmentPart)initWithContentLocation:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SMSAttachmentPart;
  v5 = [(SMSAttachmentPart *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    contentLocation = v5->_contentLocation;
    v5->_contentLocation = v6;
  }

  return v5;
}

@end