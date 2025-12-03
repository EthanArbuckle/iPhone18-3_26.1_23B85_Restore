@interface PKPaymentSetupFieldBuiltInSubLocality
- (PKPaymentSetupFieldBuiltInSubLocality)initWithIdentifier:(id)identifier type:(unint64_t)type;
@end

@implementation PKPaymentSetupFieldBuiltInSubLocality

- (PKPaymentSetupFieldBuiltInSubLocality)initWithIdentifier:(id)identifier type:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = PKPaymentSetupFieldBuiltInSubLocality;
  return [(PKPaymentSetupFieldText *)&v5 initWithIdentifier:@"subLocality" type:type];
}

@end