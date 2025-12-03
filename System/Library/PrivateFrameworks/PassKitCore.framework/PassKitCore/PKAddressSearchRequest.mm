@interface PKAddressSearchRequest
- (PKAddressSearchRequest)initWithEmailAddress:(id)address;
- (PKAddressSearchRequest)initWithFullText:(id)text;
- (PKAddressSearchRequest)initWithNameComponents:(id)components;
- (PKAddressSearchRequest)initWithPhoneNumber:(id)number;
- (PKAddressSearchRequest)initWithPostalAddress:(id)address;
- (id)_contactPropertyFilterForKey:(id)key propertyName:(id)name;
- (id)allKeys;
- (id)contactKeys;
- (id)postalAddressKeys;
@end

@implementation PKAddressSearchRequest

- (PKAddressSearchRequest)initWithFullText:(id)text
{
  textCopy = text;
  v17.receiver = self;
  v17.super_class = PKAddressSearchRequest;
  v5 = [(PKAddressSearchRequest *)&v17 init];
  v6 = v5;
  if (v5)
  {
    v5->_type = 0;
    v7 = [textCopy copy];
    fragment = v6->_fragment;
    v6->_fragment = v7;

    v9 = [MEMORY[0x1E695CD58] predicateForContactsMatchingFullTextSearch:textCopy containerIdentifiers:0 groupIdentifiers:0];
    predicate = v6->_predicate;
    v6->_predicate = v9;

    allKeys = [(PKAddressSearchRequest *)v6 allKeys];
    keysToFetch = v6->_keysToFetch;
    v6->_keysToFetch = allKeys;

    v13 = [(PKAddressSearchRequest *)v6 _contactPropertyFilterForKey:*MEMORY[0x1E695C360] propertyName:@"postalAddresses"];
    v14 = [v13 copy];
    contactFilter = v6->_contactFilter;
    v6->_contactFilter = v14;
  }

  return v6;
}

- (PKAddressSearchRequest)initWithNameComponents:(id)components
{
  componentsCopy = components;
  v17.receiver = self;
  v17.super_class = PKAddressSearchRequest;
  v5 = [(PKAddressSearchRequest *)&v17 init];
  v6 = v5;
  if (v5)
  {
    v5->_type = 1;
    v7 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:componentsCopy style:2 options:0];
    fragment = v6->_fragment;
    v6->_fragment = v7;

    v9 = [MEMORY[0x1E695CD58] predicateForContactsMatchingName:v6->_fragment options:3];
    predicate = v6->_predicate;
    v6->_predicate = v9;

    allKeys = [(PKAddressSearchRequest *)v6 allKeys];
    keysToFetch = v6->_keysToFetch;
    v6->_keysToFetch = allKeys;

    v13 = [(PKAddressSearchRequest *)v6 _contactPropertyFilterForKey:*MEMORY[0x1E695C360] propertyName:@"postalAddresses"];
    v14 = [v13 copy];
    contactFilter = v6->_contactFilter;
    v6->_contactFilter = v14;
  }

  return v6;
}

- (PKAddressSearchRequest)initWithPostalAddress:(id)address
{
  addressCopy = address;
  v18.receiver = self;
  v18.super_class = PKAddressSearchRequest;
  v5 = [(PKAddressSearchRequest *)&v18 init];
  v6 = v5;
  if (v5)
  {
    v5->_type = 2;
    v7 = [MEMORY[0x1E695CF68] singleLineStringFromPostalAddress:addressCopy addCountryName:0];
    fragment = v6->_fragment;
    v6->_fragment = v7;

    v9 = [MEMORY[0x1E695CD58] predicateForContactsMatchingPostalAddress:addressCopy];
    predicate = v6->_predicate;
    v6->_predicate = v9;

    postalAddressKeys = [(PKAddressSearchRequest *)v6 postalAddressKeys];
    keysToFetch = v6->_keysToFetch;
    v6->_keysToFetch = postalAddressKeys;

    v13 = *MEMORY[0x1E695C360];
    v14 = [(PKAddressSearchRequest *)v6 _contactPropertyFilterForKey:*MEMORY[0x1E695C360] propertyName:@"postalAddresses"];
    v15 = [v14 copy];
    contactFilter = v6->_contactFilter;
    v6->_contactFilter = v15;

    objc_storeStrong(&v6->_outputKey, v13);
  }

  return v6;
}

- (PKAddressSearchRequest)initWithEmailAddress:(id)address
{
  addressCopy = address;
  v18.receiver = self;
  v18.super_class = PKAddressSearchRequest;
  v5 = [(PKAddressSearchRequest *)&v18 init];
  v6 = v5;
  if (v5)
  {
    v5->_type = 3;
    v7 = [addressCopy copy];
    fragment = v6->_fragment;
    v6->_fragment = v7;

    v9 = [MEMORY[0x1E695CD58] pk_predicateForContactsMatchingEmailAddress:addressCopy];
    predicate = v6->_predicate;
    v6->_predicate = v9;

    contactKeys = [(PKAddressSearchRequest *)v6 contactKeys];
    keysToFetch = v6->_keysToFetch;
    v6->_keysToFetch = contactKeys;

    v13 = *MEMORY[0x1E695C208];
    v14 = [(PKAddressSearchRequest *)v6 _contactPropertyFilterForKey:*MEMORY[0x1E695C208] propertyName:@"emailAddresses"];
    v15 = [v14 copy];
    contactFilter = v6->_contactFilter;
    v6->_contactFilter = v15;

    objc_storeStrong(&v6->_outputKey, v13);
  }

  return v6;
}

- (PKAddressSearchRequest)initWithPhoneNumber:(id)number
{
  numberCopy = number;
  v18.receiver = self;
  v18.super_class = PKAddressSearchRequest;
  v5 = [(PKAddressSearchRequest *)&v18 init];
  v6 = v5;
  if (v5)
  {
    v5->_type = 4;
    stringValue = [numberCopy stringValue];
    fragment = v6->_fragment;
    v6->_fragment = stringValue;

    v9 = [MEMORY[0x1E695CD58] pk_predicateForContactsMatchingPhoneNumber:numberCopy];
    predicate = v6->_predicate;
    v6->_predicate = v9;

    contactKeys = [(PKAddressSearchRequest *)v6 contactKeys];
    keysToFetch = v6->_keysToFetch;
    v6->_keysToFetch = contactKeys;

    v13 = *MEMORY[0x1E695C330];
    v14 = [(PKAddressSearchRequest *)v6 _contactPropertyFilterForKey:*MEMORY[0x1E695C330] propertyName:@"phoneNumbers"];
    v15 = [v14 copy];
    contactFilter = v6->_contactFilter;
    v6->_contactFilter = v15;

    objc_storeStrong(&v6->_outputKey, v13);
  }

  return v6;
}

- (id)allKeys
{
  v8[8] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695C330];
  v8[0] = *MEMORY[0x1E695C208];
  v8[1] = v2;
  v3 = *MEMORY[0x1E695C328];
  v8[2] = *MEMORY[0x1E695C360];
  v8[3] = v3;
  v4 = *MEMORY[0x1E695C240];
  v8[4] = *MEMORY[0x1E695C230];
  v8[5] = v4;
  v5 = *MEMORY[0x1E695C348];
  v8[6] = *MEMORY[0x1E695C340];
  v8[7] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:8];

  return v6;
}

- (id)postalAddressKeys
{
  v7[6] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695C230];
  v7[0] = *MEMORY[0x1E695C360];
  v7[1] = v2;
  v3 = *MEMORY[0x1E695C328];
  v7[2] = *MEMORY[0x1E695C240];
  v7[3] = v3;
  v4 = *MEMORY[0x1E695C348];
  v7[4] = *MEMORY[0x1E695C340];
  v7[5] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:6];

  return v5;
}

- (id)contactKeys
{
  v7[7] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695C330];
  v7[0] = *MEMORY[0x1E695C208];
  v7[1] = v2;
  v3 = *MEMORY[0x1E695C240];
  v7[2] = *MEMORY[0x1E695C230];
  v7[3] = v3;
  v4 = *MEMORY[0x1E695C340];
  v7[4] = *MEMORY[0x1E695C328];
  v7[5] = v4;
  v7[6] = *MEMORY[0x1E695C348];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:7];

  return v5;
}

- (id)_contactPropertyFilterForKey:(id)key propertyName:(id)name
{
  keyCopy = key;
  nameCopy = name;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__PKAddressSearchRequest__contactPropertyFilterForKey_propertyName___block_invoke;
  v11[3] = &unk_1E79D5640;
  v12 = keyCopy;
  v13 = nameCopy;
  v7 = nameCopy;
  v8 = keyCopy;
  v9 = _Block_copy(v11);

  return v9;
}

BOOL __68__PKAddressSearchRequest__contactPropertyFilterForKey_propertyName___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isKeyAvailable:*(a1 + 32)])
  {
    v4 = [v3 valueForKey:*(a1 + 40)];
    objc_opt_class();
    v5 = ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)) && [v4 count] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end