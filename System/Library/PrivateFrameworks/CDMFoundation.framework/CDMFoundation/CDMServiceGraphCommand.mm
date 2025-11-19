@interface CDMServiceGraphCommand
- (CDMServiceGraphCommand)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CDMServiceGraphCommand

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CDMServiceGraphCommand;
  v4 = a3;
  [(CDMBaseCommand *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_locale forKey:{@"locale", v5.receiver, v5.super_class}];
}

- (CDMServiceGraphCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CDMServiceGraphCommand;
  v5 = [(CDMBaseCommand *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
    locale = v5->_locale;
    v5->_locale = v6;
  }

  return v5;
}

@end