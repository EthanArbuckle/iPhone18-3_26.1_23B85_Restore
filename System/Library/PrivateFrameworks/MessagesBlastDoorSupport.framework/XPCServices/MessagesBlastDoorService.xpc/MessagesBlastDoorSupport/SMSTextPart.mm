@interface SMSTextPart
- (SMSTextPart)initWithContentLocation:(id)location;
- (void)appendText:(id)text;
@end

@implementation SMSTextPart

- (SMSTextPart)initWithContentLocation:(id)location
{
  locationCopy = location;
  v9.receiver = self;
  v9.super_class = SMSTextPart;
  v5 = [(SMSTextPart *)&v9 init];
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

    _objc_release_x1();
  }
}

@end