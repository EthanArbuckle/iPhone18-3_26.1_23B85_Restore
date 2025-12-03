@interface PKPaymentEligibilityFIDOProfile
- (PKPaymentEligibilityFIDOProfile)initWithDictionary:(id)dictionary;
@end

@implementation PKPaymentEligibilityFIDOProfile

- (PKPaymentEligibilityFIDOProfile)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = PKPaymentEligibilityFIDOProfile;
  v5 = [(PKPaymentEligibilityFIDOProfile *)&v17 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"relyingPartyIdentifier"];
    v7 = [v6 copy];
    relyingPartyIdentifier = v5->_relyingPartyIdentifier;
    v5->_relyingPartyIdentifier = v7;

    v9 = [dictionaryCopy objectForKeyedSubscript:@"accountHash"];
    v10 = [v9 copy];
    accountHash = v5->_accountHash;
    v5->_accountHash = v10;

    v12 = MEMORY[0x1E695DEF0];
    v13 = [dictionaryCopy objectForKeyedSubscript:@"keyHash"];
    v14 = [v12 dataWithHexEncodedString:v13];
    keyHash = v5->_keyHash;
    v5->_keyHash = v14;
  }

  return v5;
}

@end