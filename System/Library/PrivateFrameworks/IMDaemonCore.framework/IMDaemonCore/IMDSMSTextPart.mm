@interface IMDSMSTextPart
- (IMDSMSTextPart)initWithContentLocation:(id)location;
- (void)appendText:(id)text;
@end

@implementation IMDSMSTextPart

- (IMDSMSTextPart)initWithContentLocation:(id)location
{
  locationCopy = location;
  v9.receiver = self;
  v9.super_class = IMDSMSTextPart;
  v5 = [(IMDSMSTextPart *)&v9 init];
  if (v5)
  {
    v6 = [locationCopy copy];
    contentLocation = v5->_contentLocation;
    v5->_contentLocation = v6;
  }

  return v5;
}

- (void)appendText:(id)text
{
  text = self->_text;
  if (text)
  {

    [(NSMutableString *)text appendString:text];
  }

  else
  {
    v5 = [text mutableCopy];
    v6 = self->_text;
    self->_text = v5;

    MEMORY[0x2821F96F8]();
  }
}

@end