@interface PKPaymentSetupFieldBuiltInAdministrativeArea
- (PKPaymentSetupFieldBuiltInAdministrativeArea)initWithIdentifier:(id)identifier type:(unint64_t)type;
@end

@implementation PKPaymentSetupFieldBuiltInAdministrativeArea

- (PKPaymentSetupFieldBuiltInAdministrativeArea)initWithIdentifier:(id)identifier type:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = PKPaymentSetupFieldBuiltInAdministrativeArea;
  return [(PKPaymentSetupFieldText *)&v5 initWithIdentifier:@"administrativeArea" type:type];
}

@end