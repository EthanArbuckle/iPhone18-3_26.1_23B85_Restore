@interface SMSTextPart
- (SMSTextPart)initWithContentLocation:(id)a3;
- (void)appendText:(id)a3;
@end

@implementation SMSTextPart

- (SMSTextPart)initWithContentLocation:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SMSTextPart;
  v5 = [(SMSTextPart *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    contentLocation = v5->_contentLocation;
    v5->_contentLocation = v6;
  }

  return v5;
}

- (void)appendText:(id)a3
{
  text = self->_text;
  if (text)
  {

    [(NSMutableString *)text appendString:a3];
  }

  else
  {
    v5 = [a3 mutableCopy];
    v6 = self->_text;
    self->_text = v5;

    _objc_release_x1();
  }
}

@end