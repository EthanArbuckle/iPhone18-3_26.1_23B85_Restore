@interface IDSPhoneNumberIdentification
- (IDSPhoneNumberIdentification)initWithPhoneNumber:(id)number phoneToken:(id)token;
@end

@implementation IDSPhoneNumberIdentification

- (IDSPhoneNumberIdentification)initWithPhoneNumber:(id)number phoneToken:(id)token
{
  numberCopy = number;
  tokenCopy = token;
  v12.receiver = self;
  v12.super_class = IDSPhoneNumberIdentification;
  v9 = [(IDSPhoneNumberIdentification *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_phoneNumber, number);
    objc_storeStrong(&v10->_phoneToken, token);
  }

  return v10;
}

@end