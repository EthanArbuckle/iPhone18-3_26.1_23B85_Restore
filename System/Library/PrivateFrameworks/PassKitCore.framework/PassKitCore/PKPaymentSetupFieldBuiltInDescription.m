@interface PKPaymentSetupFieldBuiltInDescription
- (PKPaymentSetupFieldBuiltInDescription)initWithIdentifier:(id)a3 type:(unint64_t)a4;
@end

@implementation PKPaymentSetupFieldBuiltInDescription

- (PKPaymentSetupFieldBuiltInDescription)initWithIdentifier:(id)a3 type:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = PKPaymentSetupFieldBuiltInDescription;
  v4 = [(PKPaymentSetupFieldText *)&v7 initWithIdentifier:@"physicalCardDescription" type:1];
  v5 = v4;
  if (v4)
  {
    [(PKPaymentSetupFieldText *)v4 setMaxLength:64];
  }

  return v5;
}

@end