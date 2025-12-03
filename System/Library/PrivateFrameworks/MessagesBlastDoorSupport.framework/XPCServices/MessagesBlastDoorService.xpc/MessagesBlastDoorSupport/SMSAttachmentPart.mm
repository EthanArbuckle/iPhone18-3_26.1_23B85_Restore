@interface SMSAttachmentPart
- (SMSAttachmentPart)initWithContentLocation:(id)location;
@end

@implementation SMSAttachmentPart

- (SMSAttachmentPart)initWithContentLocation:(id)location
{
  locationCopy = location;
  v9.receiver = self;
  v9.super_class = SMSAttachmentPart;
  v5 = [(SMSAttachmentPart *)&v9 init];
  if (v5)
  {
    v6 = [locationCopy copy];
    contentLocation = v5->_contentLocation;
    v5->_contentLocation = v6;
  }

  return v5;
}

@end