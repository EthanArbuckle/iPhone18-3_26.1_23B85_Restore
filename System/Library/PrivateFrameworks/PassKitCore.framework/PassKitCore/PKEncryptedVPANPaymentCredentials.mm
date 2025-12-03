@interface PKEncryptedVPANPaymentCredentials
- (PKEncryptedVPANPaymentCredentials)initWithDictionary:(id)dictionary;
@end

@implementation PKEncryptedVPANPaymentCredentials

- (PKEncryptedVPANPaymentCredentials)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = PKEncryptedVPANPaymentCredentials;
  v5 = [(PKEncryptedVPANPaymentCredentials *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"ephemeralPublicKey"];
    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v6 options:0];
      ephemeralPublicKey = v5->_ephemeralPublicKey;
      v5->_ephemeralPublicKey = v7;
    }

    v9 = [dictionaryCopy PKStringForKey:@"encryptedData"];
    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v9 options:0];
      encryptedCardData = v5->_encryptedCardData;
      v5->_encryptedCardData = v10;
    }
  }

  return v5;
}

@end