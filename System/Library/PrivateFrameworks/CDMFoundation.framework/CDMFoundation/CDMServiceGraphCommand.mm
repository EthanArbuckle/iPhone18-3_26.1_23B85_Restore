@interface CDMServiceGraphCommand
- (CDMServiceGraphCommand)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CDMServiceGraphCommand

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CDMServiceGraphCommand;
  coderCopy = coder;
  [(CDMBaseCommand *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_locale forKey:{@"locale", v5.receiver, v5.super_class}];
}

- (CDMServiceGraphCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CDMServiceGraphCommand;
  v5 = [(CDMBaseCommand *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
    locale = v5->_locale;
    v5->_locale = v6;
  }

  return v5;
}

@end