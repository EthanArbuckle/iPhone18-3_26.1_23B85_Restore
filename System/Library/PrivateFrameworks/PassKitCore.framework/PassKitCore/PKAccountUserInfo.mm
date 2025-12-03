@interface PKAccountUserInfo
+ (id)_pkRequiredStringFromDictionary:(id)dictionary forKey:(id)key;
+ (id)primaryUserFromDictionary:(id)dictionary;
- (PKAccountUserInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAccountUserInfo

+ (id)primaryUserFromDictionary:(id)dictionary
{
  v36[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v5 = objc_alloc_init(MEMORY[0x1E695CF18]);
  v6 = [dictionaryCopy PKDictionaryForKey:@"name"];
  v7 = [self _pkRequiredStringFromDictionary:v6 forKey:@"firstName"];
  v33 = v6;
  v8 = [self _pkRequiredStringFromDictionary:v6 forKey:@"lastName"];
  v32 = v7;
  [v5 setGivenName:v7];
  v31 = v8;
  [v5 setFamilyName:v8];
  v9 = [self _pkRequiredStringFromDictionary:dictionaryCopy forKey:@"email"];
  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x1E695CEE0]);
    v11 = [v10 initWithLabel:*MEMORY[0x1E695CB58] value:v9];
    v36[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
    [v5 setEmailAddresses:v12];
  }

  v34 = dictionaryCopy;
  v13 = [dictionaryCopy PKDictionaryForKey:@"billingAddress"];
  v14 = [self _pkRequiredStringFromDictionary:v13 forKey:@"addressLine1"];
  v15 = [v13 PKStringForKey:@"addressLine2"];
  v16 = [self _pkRequiredStringFromDictionary:v13 forKey:@"city"];
  v17 = [self _pkRequiredStringFromDictionary:v13 forKey:@"state"];
  v18 = [self _pkRequiredStringFromDictionary:v13 forKey:@"postalCode"];
  v19 = [self _pkRequiredStringFromDictionary:v13 forKey:@"countryCode"];
  v29 = v15;
  v30 = v9;
  if ([v15 length])
  {
    v20 = [v14 stringByAppendingFormat:@"\n%@", v15, v15, v9];

    v14 = v20;
  }

  v21 = objc_alloc_init(MEMORY[0x1E695CF30]);
  [v21 setStreet:v14];
  [v21 setCity:v16];
  [v21 setState:v17];
  [v21 setPostalCode:v18];
  [v21 setISOCountryCode:v19];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v23 = PKLocalizedStringForCountryCode(currentLocale, v19);
  [v21 setCountry:v23];

  v24 = objc_alloc(MEMORY[0x1E695CEE0]);
  v25 = [v24 initWithLabel:*MEMORY[0x1E695CB60] value:v21];
  v35 = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
  [v5 setPostalAddresses:v26];

  v27 = [v5 copy];

  return v27;
}

+ (id)_pkRequiredStringFromDictionary:(id)dictionary forKey:(id)key
{
  v11 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v6 = [dictionary PKStringForKey:keyCopy];
  if (![v6 length])
  {
    v7 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = keyCopy;
      _os_log_error_impl(&dword_1AD337000, v7, OS_LOG_TYPE_ERROR, "Account user info '%@' field is missing", &v9, 0xCu);
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  creditUserInfo = self->_creditUserInfo;
  coderCopy = coder;
  [coderCopy encodeObject:creditUserInfo forKey:@"creditUserInfo"];
  [coderCopy encodeObject:self->_savingsUserInfo forKey:@"savingsUserInfo"];
}

- (PKAccountUserInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKAccountUserInfo;
  v5 = [(PKAccountUserInfo *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creditUserInfo"];
    creditUserInfo = v5->_creditUserInfo;
    v5->_creditUserInfo = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"savingsUserInfo"];
    savingsUserInfo = v5->_savingsUserInfo;
    v5->_savingsUserInfo = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(PKCreditAccountUserInfo *)self->_creditUserInfo copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(PKSavingsAccountUserInfo *)self->_savingsUserInfo copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"%@: '%@'; ", @"creditUserInfo", self->_creditUserInfo];
  [v3 appendFormat:@"%@: '%@'; ", @"savingsUserInfo", self->_savingsUserInfo];
  [v3 appendFormat:@">"];
  v4 = [v3 copy];

  return v4;
}

@end