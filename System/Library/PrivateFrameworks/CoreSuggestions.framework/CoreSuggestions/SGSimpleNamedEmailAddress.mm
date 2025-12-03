@interface SGSimpleNamedEmailAddress
+ (id)emailToNameDictionaryWithNamedEmailAddresses:(id)addresses;
+ (id)namedEmailAddressWithCSPerson:(id)person;
+ (id)namedEmailAddressWithFieldValue:(id)value;
+ (id)namedEmailAddressesWithEmailToNameDictionary:(id)dictionary;
+ (id)namedEmailAddressesWithFieldValues:(id)values;
+ (id)serializeAll:(id)all;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToNamedEmailAddress:(id)address;
- (SGSimpleNamedEmailAddress)initWithCoder:(id)coder;
- (SGSimpleNamedEmailAddress)initWithName:(id)name emailAddress:(id)address;
- (SGSimpleNamedEmailAddress)initWithNamedHandle:(id)handle;
- (id)asCSPerson;
- (id)serialized;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SGSimpleNamedEmailAddress

- (id)asCSPerson
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E6964E50]);
  name = self->_name;
  v9[0] = self->_emailAddress;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v6 = [v3 initWithDisplayName:name handles:v5 handleIdentifier:@"emailAddresses"];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)isEqualToNamedEmailAddress:(id)address
{
  addressCopy = address;
  v5 = self->_name;
  v6 = v5;
  if (v5 == addressCopy[2])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      v8 = 0;
      goto LABEL_9;
    }
  }

  v9 = self->_emailAddress;
  v10 = v9;
  if (v9 == addressCopy[1])
  {
    v8 = 1;
  }

  else
  {
    v8 = [(NSString *)v9 isEqual:?];
  }

LABEL_9:
  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGSimpleNamedEmailAddress *)self isEqualToNamedEmailAddress:v5];
  }

  return v6;
}

- (id)serialized
{
  if (self->_name)
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ <%@>", self->_name, self->_emailAddress];
  }

  else
  {
    v2 = self->_emailAddress;
  }

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeObject:self->_emailAddress forKey:@"emailAddress"];
}

- (SGSimpleNamedEmailAddress)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = SGSimpleNamedEmailAddress;
  v6 = [(SGSimpleNamedEmailAddress *)&v15 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"name"];
    name = v6->_name;
    v6->_name = v8;

    v10 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"emailAddress"];

    if (v11)
    {
      v12 = v11;
      emailAddress = v6->_emailAddress;
      v6->_emailAddress = v12;
    }

    else
    {
      emailAddress = [MEMORY[0x1E696AAA8] currentHandler];
      [emailAddress handleFailureInMethod:a2 object:v6 file:@"SGSimpleNamedEmailAddress.m" lineNumber:67 description:{@"nonnull property %s *%s was null when decoded", "NSString", "emailAddress"}];
    }
  }

  return v6;
}

- (SGSimpleNamedEmailAddress)initWithNamedHandle:(id)handle
{
  handleCopy = handle;
  name = [handleCopy name];
  handle = [handleCopy handle];

  v7 = [(SGSimpleNamedEmailAddress *)self initWithName:name emailAddress:handle];
  return v7;
}

- (SGSimpleNamedEmailAddress)initWithName:(id)name emailAddress:(id)address
{
  nameCopy = name;
  addressCopy = address;
  v12.receiver = self;
  v12.super_class = SGSimpleNamedEmailAddress;
  v9 = [(SGSimpleNamedEmailAddress *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, name);
    objc_storeStrong(&v10->_emailAddress, address);
  }

  return v10;
}

+ (id)serializeAll:(id)all
{
  v18 = *MEMORY[0x1E69E9840];
  allCopy = all;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(allCopy, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = allCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        serialized = [*(*(&v13 + 1) + 8 * i) serialized];
        [v4 addObject:serialized];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)emailToNameDictionaryWithNamedEmailAddresses:(id)addresses
{
  v23 = *MEMORY[0x1E69E9840];
  addressesCopy = addresses;
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(addressesCopy, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = addressesCopy;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        emailAddress = [v10 emailAddress];

        if (emailAddress)
        {
          name = [v10 name];
          v13 = name;
          if (name)
          {
            v14 = name;
          }

          else
          {
            v14 = &stru_1F385B250;
          }

          emailAddress2 = [v10 emailAddress];
          [v4 setObject:v14 forKeyedSubscript:emailAddress2];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)namedEmailAddressesWithEmailToNameDictionary:(id)dictionary
{
  if (dictionary)
  {
    v3 = MEMORY[0x1E695DF70];
    dictionaryCopy = dictionary;
    v5 = [[v3 alloc] initWithCapacity:{objc_msgSend(dictionaryCopy, "count")}];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __74__SGSimpleNamedEmailAddress_namedEmailAddressesWithEmailToNameDictionary___block_invoke;
    v8[3] = &unk_1E7EFC4E8;
    v6 = v5;
    v9 = v6;
    [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __74__SGSimpleNamedEmailAddress_namedEmailAddressesWithEmailToNameDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [[SGSimpleNamedEmailAddress alloc] initWithName:v5 emailAddress:v6];

  [v4 addObject:v7];
}

+ (id)namedEmailAddressesWithFieldValues:(id)values
{
  v18 = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(valuesCopy, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = valuesCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [SGSimpleNamedEmailAddress namedEmailAddressWithFieldValue:*(*(&v13 + 1) + 8 * i), v13];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)namedEmailAddressWithCSPerson:(id)person
{
  personCopy = person;
  handleIdentifier = [personCopy handleIdentifier];
  if (![handleIdentifier isEqual:@"emailAddresses"])
  {
    v11 = 0;
    goto LABEL_5;
  }

  handles = [personCopy handles];
  v7 = [handles count];

  if (v7)
  {
    v8 = [self alloc];
    handleIdentifier = [personCopy displayName];
    handles2 = [personCopy handles];
    firstObject = [handles2 firstObject];
    v11 = [v8 initWithName:handleIdentifier emailAddress:firstObject];

LABEL_5:
    goto LABEL_6;
  }

  v11 = 0;
LABEL_6:

  return v11;
}

+ (id)namedEmailAddressWithFieldValue:(id)value
{
  valueCopy = value;
  CStringPtr = CFStringGetCStringPtr(valueCopy, 0x600u);
  if (!CStringPtr)
  {
    CStringPtr = [(__CFString *)valueCopy UTF8String];
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__3103;
  v13 = __Block_byref_object_dispose__3104;
  v14 = 0;
  if (valueCopy)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __61__SGSimpleNamedEmailAddress_namedEmailAddressWithFieldValue___block_invoke;
    v8[3] = &unk_1E7EFC4C0;
    v8[4] = &v9;
    SGParseNamedEmailAddress(CStringPtr, v8);
    v5 = v10[5];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __61__SGSimpleNamedEmailAddress_namedEmailAddressWithFieldValue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (![v9 length] || objc_msgSend(v9, "isEqualToString:", v5))
  {

    v9 = 0;
  }

  v6 = [[SGSimpleNamedEmailAddress alloc] initWithName:v9 emailAddress:v5];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

@end