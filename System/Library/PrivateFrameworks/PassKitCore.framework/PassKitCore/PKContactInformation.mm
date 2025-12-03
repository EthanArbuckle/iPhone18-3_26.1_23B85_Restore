@interface PKContactInformation
+ (id)_keychainWrapper;
+ (id)contactInformationFromKeychain;
+ (void)deleteContactInformationFromKeychain;
+ (void)saveContactInformationToKeychain:(id)keychain;
- (PKContactInformation)initWithCoder:(id)coder;
- (PKContactInformation)initWithDictionary:(id)dictionary;
- (PKContactInformation)initWithKeychainData:(id)data;
- (PKContactInformation)initWithPostalAddresses:(id)addresses emailAddresses:(id)emailAddresses phoneNumbers:(id)numbers;
- (id)description;
- (id)keychainData;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKContactInformation

+ (id)contactInformationFromKeychain
{
  _keychainWrapper = [self _keychainWrapper];
  v4 = [_keychainWrapper objectForKey:*MEMORY[0x1E697B3C0]];
  v5 = [[self alloc] initWithKeychainData:v4];

  return v5;
}

+ (void)saveContactInformationToKeychain:(id)keychain
{
  keychainData = [keychain keychainData];
  if (keychainData)
  {
    v6 = keychainData;
    _keychainWrapper = [self _keychainWrapper];
    [_keychainWrapper setObject:v6 forKey:*MEMORY[0x1E697B3C0]];

    keychainData = v6;
  }
}

+ (void)deleteContactInformationFromKeychain
{
  _keychainWrapper = [self _keychainWrapper];
  [_keychainWrapper resetKeychainItem];
}

- (PKContactInformation)initWithPostalAddresses:(id)addresses emailAddresses:(id)emailAddresses phoneNumbers:(id)numbers
{
  addressesCopy = addresses;
  emailAddressesCopy = emailAddresses;
  numbersCopy = numbers;
  v15.receiver = self;
  v15.super_class = PKContactInformation;
  v12 = [(PKContactInformation *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_postalAddresses, addresses);
    objc_storeStrong(&v13->_emailAddresses, emailAddresses);
    objc_storeStrong(&v13->_phoneNumbers, numbers);
  }

  return v13;
}

- (PKContactInformation)initWithDictionary:(id)dictionary
{
  v77 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy PKArrayForKey:@"addresses"];
  v5 = 0x1E695D000uLL;
  v52 = v4;
  v53 = dictionaryCopy;
  if (v4)
  {
    v6 = v4;
    v56 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    obj = v6;
    v7 = [obj countByEnumeratingWithState:&v67 objects:v76 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v68;
      v10 = *MEMORY[0x1E695CB68];
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v68 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v67 + 1) + 8 * i);
          v13 = objc_alloc_init(MEMORY[0x1E695CF18]);
          v14 = [MEMORY[0x1E695CF60] postalAddressFromWebServiceDictionaryRepresentation:v12];
          if (v14)
          {
            v15 = [objc_alloc(MEMORY[0x1E695CEE0]) initWithLabel:v10 value:v14];
            v75 = v15;
            v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v75 count:1];
            [v13 setPostalAddresses:v16];

            v17 = [v13 copy];
            [v56 addObject:v17];
          }
        }

        v8 = [obj countByEnumeratingWithState:&v67 objects:v76 count:16];
      }

      while (v8);
    }

    if ([v56 count])
    {
      obja = [v56 copy];
    }

    else
    {
      obja = 0;
    }

    v5 = 0x1E695D000uLL;
  }

  else
  {
    obja = 0;
  }

  v18 = [dictionaryCopy PKArrayForKey:@"emails"];
  v50 = v18;
  if (v18)
  {
    v19 = v18;
    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v57 = v19;
    v21 = [v57 countByEnumeratingWithState:&v63 objects:v74 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v64;
      v24 = *MEMORY[0x1E695CB68];
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v64 != v23)
          {
            objc_enumerationMutation(v57);
          }

          v26 = *(*(&v63 + 1) + 8 * j);
          v27 = objc_alloc_init(MEMORY[0x1E695CF18]);
          v28 = [objc_alloc(MEMORY[0x1E695CEE0]) initWithLabel:v24 value:v26];
          v73 = v28;
          v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v73 count:1];
          [v27 setEmailAddresses:v29];

          v30 = [v27 copy];
          [v20 addObject:v30];
        }

        v22 = [v57 countByEnumeratingWithState:&v63 objects:v74 count:16];
      }

      while (v22);
    }

    v31 = [v20 copy];
    dictionaryCopy = v53;
    v5 = 0x1E695D000;
  }

  else
  {
    v31 = 0;
  }

  v32 = [dictionaryCopy PKArrayForKey:@"phoneNumbers"];
  if (v32)
  {
    v49 = v31;
    v33 = objc_alloc_init(*(v5 + 3952));
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v48 = v32;
    v58 = v32;
    v34 = [v58 countByEnumeratingWithState:&v59 objects:v72 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v60;
      v37 = *MEMORY[0x1E695CB68];
      do
      {
        for (k = 0; k != v35; ++k)
        {
          if (*v60 != v36)
          {
            objc_enumerationMutation(v58);
          }

          v39 = *(*(&v59 + 1) + 8 * k);
          v40 = objc_alloc_init(MEMORY[0x1E695CF18]);
          v41 = [objc_alloc(MEMORY[0x1E695CF50]) initWithStringValue:v39];
          if (v41)
          {
            v42 = [objc_alloc(MEMORY[0x1E695CEE0]) initWithLabel:v37 value:v41];
            v71 = v42;
            v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v71 count:1];
            [v40 setPhoneNumbers:v43];

            v44 = [v40 copy];
            [v33 addObject:v44];
          }
        }

        v35 = [v58 countByEnumeratingWithState:&v59 objects:v72 count:16];
      }

      while (v35);
    }

    if ([v33 count])
    {
      v45 = [v33 copy];
    }

    else
    {
      v45 = 0;
    }

    dictionaryCopy = v53;
    v31 = v49;

    v32 = v48;
  }

  else
  {
    v45 = 0;
  }

  v46 = [(PKContactInformation *)self initWithPostalAddresses:obja emailAddresses:v31 phoneNumbers:v45, v48];

  return v46;
}

- (PKContactInformation)initWithKeychainData:(id)data
{
  v16 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (!dataCopy)
  {
    v5 = 0;
    goto LABEL_7;
  }

  v11 = 0;
  v5 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v11];
  v6 = v11;
  if (!v6)
  {
LABEL_7:
    v5 = v5;
    v9 = v5;
    goto LABEL_8;
  }

  v7 = v6;
  v8 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "%@: Error initializing from Keychain data: %@", buf, 0x16u);
  }

  v9 = 0;
LABEL_8:

  return v9;
}

- (id)keychainData
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v8];
  v4 = v8;
  if (v4)
  {
    v5 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = self;
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "%@: Error serializing data for Keychain: %@", buf, 0x16u);
    }

    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  postalAddresses = self->_postalAddresses;
  coderCopy = coder;
  [coderCopy encodeObject:postalAddresses forKey:@"postalAddresses"];
  [coderCopy encodeObject:self->_emailAddresses forKey:@"emailAddresses"];
  [coderCopy encodeObject:self->_phoneNumbers forKey:@"phoneNumbers"];
}

- (PKContactInformation)initWithCoder:(id)coder
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = [v4 alloc];
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v8 = [v6 initWithArray:v7];

  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"postalAddresses"];
  v10 = [coderCopy decodeObjectOfClasses:v8 forKey:@"emailAddresses"];
  v11 = [coderCopy decodeObjectOfClasses:v8 forKey:@"phoneNumbers"];

  v12 = [(PKContactInformation *)self initWithPostalAddresses:v9 emailAddresses:v10 phoneNumbers:v11];
  return v12;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"%@: %@; ", @"postalAddresses", self->_postalAddresses];
  [v3 appendFormat:@"%@: %@; ", @"emailAddresses", self->_emailAddresses];
  [v3 appendFormat:@"%@: %@; ", @"phoneNumbers", self->_phoneNumbers];
  [v3 appendFormat:@">"];
  v4 = [v3 copy];

  return v4;
}

+ (id)_keychainWrapper
{
  v2 = +[PKPaymentOptionsSynchronization shouldSyncToCloud];
  if (v2)
  {
    v3 = @"contactInformation";
  }

  else
  {
    v3 = [@"contactInformation" stringByAppendingFormat:@"Local"];
  }

  v4 = [[PKKeychainItemWrapper alloc] initWithIdentifier:v3 accessGroup:@"com.apple.PassbookUIService" serviceName:@"com.apple.passkit" type:v2 invisible:0 accessibility:1];
  [(PKKeychainItemWrapper *)v4 setLabel:@"com.apple.passkit"];

  return v4;
}

@end