@interface PKPaymentSetupPartner
- (PKPaymentSetupPartner)initWithDictionary:(id)a3;
@end

@implementation PKPaymentSetupPartner

- (PKPaymentSetupPartner)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKPaymentSetupPartner;
  v5 = [(PKPaymentSetupPartner *)&v11 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 PKStringForKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v8;
  }

  return v5;
}

@end