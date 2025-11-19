@interface PKPaymentSetupFieldFooter
- (PKPaymentSetupFieldFooter)initWithIdentifier:(id)a3 body:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)updateWithAttribute:(id)a3;
- (void)updateWithConfiguration:(id)a3;
@end

@implementation PKPaymentSetupFieldFooter

- (PKPaymentSetupFieldFooter)initWithIdentifier:(id)a3 body:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = PKPaymentSetupFieldFooter;
  v7 = [(PKPaymentSetupField *)&v11 initWithIdentifier:a3 type:4];
  v8 = v7;
  if (v7)
  {
    [(PKPaymentSetupFieldFooter *)v7 setBody:v6];
    v9 = [v6 string];
    [(PKPaymentSetupField *)v8 setDefaultValue:v9];
  }

  return v8;
}

- (void)updateWithAttribute:(id)a3
{
  v7.receiver = self;
  v7.super_class = PKPaymentSetupFieldFooter;
  [(PKPaymentSetupFieldLabel *)&v7 updateWithAttribute:a3];
  v4 = objc_alloc(MEMORY[0x1E696AAB0]);
  v5 = [(PKPaymentSetupField *)self defaultValue];
  v6 = [v4 initWithString:v5];
  [(PKPaymentSetupFieldFooter *)self setBody:v6];
}

- (void)updateWithConfiguration:(id)a3
{
  v10.receiver = self;
  v10.super_class = PKPaymentSetupFieldFooter;
  v4 = a3;
  [(PKPaymentSetupFieldLabel *)&v10 updateWithConfiguration:v4];
  v5 = [(PKPaymentSetupField *)self defaultValue:v10.receiver];
  v6 = PKAttributedStringByParsingLinksInString(v5, 0);

  [(PKPaymentSetupFieldFooter *)self setBody:v6];
  v7 = [v6 string];
  [(PKPaymentSetupField *)self setDefaultValue:v7];

  v8 = [v4 PKStringForKey:@"position"];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = PKPaymentSetupFieldFooter;
  v5 = [(PKPaymentSetupFieldLabel *)&v9 copyWithZone:?];
  v5[30] = self->_fontScale;
  v6 = [(NSAttributedString *)self->_body copyWithZone:a3];
  v7 = v5[31];
  v5[31] = v6;

  v5[32] = self->_position;
  return v5;
}

@end