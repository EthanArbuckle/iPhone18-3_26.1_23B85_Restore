@interface PKPaymentSetupPartner
- (PKPaymentSetupPartner)initWithDictionary:(id)dictionary;
@end

@implementation PKPaymentSetupPartner

- (PKPaymentSetupPartner)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = PKPaymentSetupPartner;
  v5 = [(PKPaymentSetupPartner *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [dictionaryCopy PKStringForKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v8;
  }

  return v5;
}

@end