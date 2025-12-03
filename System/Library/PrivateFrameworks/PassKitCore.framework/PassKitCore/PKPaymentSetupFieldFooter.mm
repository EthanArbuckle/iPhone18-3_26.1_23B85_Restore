@interface PKPaymentSetupFieldFooter
- (PKPaymentSetupFieldFooter)initWithIdentifier:(id)identifier body:(id)body;
- (id)copyWithZone:(_NSZone *)zone;
- (void)updateWithAttribute:(id)attribute;
- (void)updateWithConfiguration:(id)configuration;
@end

@implementation PKPaymentSetupFieldFooter

- (PKPaymentSetupFieldFooter)initWithIdentifier:(id)identifier body:(id)body
{
  bodyCopy = body;
  v11.receiver = self;
  v11.super_class = PKPaymentSetupFieldFooter;
  v7 = [(PKPaymentSetupField *)&v11 initWithIdentifier:identifier type:4];
  v8 = v7;
  if (v7)
  {
    [(PKPaymentSetupFieldFooter *)v7 setBody:bodyCopy];
    string = [bodyCopy string];
    [(PKPaymentSetupField *)v8 setDefaultValue:string];
  }

  return v8;
}

- (void)updateWithAttribute:(id)attribute
{
  v7.receiver = self;
  v7.super_class = PKPaymentSetupFieldFooter;
  [(PKPaymentSetupFieldLabel *)&v7 updateWithAttribute:attribute];
  v4 = objc_alloc(MEMORY[0x1E696AAB0]);
  defaultValue = [(PKPaymentSetupField *)self defaultValue];
  v6 = [v4 initWithString:defaultValue];
  [(PKPaymentSetupFieldFooter *)self setBody:v6];
}

- (void)updateWithConfiguration:(id)configuration
{
  v10.receiver = self;
  v10.super_class = PKPaymentSetupFieldFooter;
  configurationCopy = configuration;
  [(PKPaymentSetupFieldLabel *)&v10 updateWithConfiguration:configurationCopy];
  v5 = [(PKPaymentSetupField *)self defaultValue:v10.receiver];
  v6 = PKAttributedStringByParsingLinksInString(v5, 0);

  [(PKPaymentSetupFieldFooter *)self setBody:v6];
  string = [v6 string];
  [(PKPaymentSetupField *)self setDefaultValue:string];

  v8 = [configurationCopy PKStringForKey:@"position"];

  if (v8)
  {
    if ([@"sticky" isEqualToString:v8])
    {
      v9 = 1;
    }

    else if ([@"inline" isEqualToString:v8])
    {
      v9 = 2;
    }

    else
    {
      v9 = 0;
    }

    [(PKPaymentSetupFieldFooter *)self setPosition:v9];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = PKPaymentSetupFieldFooter;
  v5 = [(PKPaymentSetupFieldLabel *)&v9 copyWithZone:?];
  v5[30] = self->_fontScale;
  v6 = [(NSAttributedString *)self->_body copyWithZone:zone];
  v7 = v5[31];
  v5[31] = v6;

  v5[32] = self->_position;
  return v5;
}

@end