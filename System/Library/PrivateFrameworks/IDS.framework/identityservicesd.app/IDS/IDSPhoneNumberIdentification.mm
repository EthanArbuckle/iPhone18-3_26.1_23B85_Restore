@interface IDSPhoneNumberIdentification
- (IDSPhoneNumberIdentification)initWithPhoneNumber:(id)a3 phoneToken:(id)a4;
@end

@implementation IDSPhoneNumberIdentification

- (IDSPhoneNumberIdentification)initWithPhoneNumber:(id)a3 phoneToken:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IDSPhoneNumberIdentification;
  v9 = [(IDSPhoneNumberIdentification *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_phoneNumber, a3);
    objc_storeStrong(&v10->_phoneToken, a4);
  }

  return v10;
}

@end