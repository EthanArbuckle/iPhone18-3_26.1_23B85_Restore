@interface IMDSMSTextPart
- (IMDSMSTextPart)initWithContentLocation:(id)a3;
- (void)appendText:(id)a3;
@end

@implementation IMDSMSTextPart

- (IMDSMSTextPart)initWithContentLocation:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = IMDSMSTextPart;
  v5 = [(IMDSMSTextPart *)&v9 init];
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

    MEMORY[0x2821F96F8]();
  }
}

@end