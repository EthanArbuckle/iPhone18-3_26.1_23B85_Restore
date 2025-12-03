@interface EMSender
- (BOOL)isEqual:(id)equal;
- (EMSender)initWithCoder:(id)coder;
- (EMSender)initWithDatabaseID:(int64_t)d addresses:(id)addresses contactIdentifier:(id)identifier bucket:(int64_t)bucket;
- (NSString)displayName;
- (id)_bestDisplayNameFromDisplayNames:(id)names;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)compare:(id)compare;
- (void)addAddress:(id)address;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)removeAddress:(id)address;
@end

@implementation EMSender

- (EMSender)initWithDatabaseID:(int64_t)d addresses:(id)addresses contactIdentifier:(id)identifier bucket:(int64_t)bucket
{
  addressesCopy = addresses;
  identifierCopy = identifier;
  v21.receiver = self;
  v21.super_class = EMSender;
  v12 = [(EMSender *)&v21 init];
  v13 = v12;
  if (v12)
  {
    v12->_databaseID = d;
    v14 = objc_alloc(MEMORY[0x1E699B7F0]);
    v15 = [addressesCopy mutableCopy];
    v16 = [v14 initWithObject:v15];
    addresses = v13->_addresses;
    v13->_addresses = v16;

    v18 = [identifierCopy copy];
    contactIdentifier = v13->_contactIdentifier;
    v13->_contactIdentifier = v18;

    v13->_bucket = bucket;
  }

  return v13;
}

- (void)dealloc
{
  v3 = EFAtomicObjectRelease();
  v4.receiver = self;
  v4.super_class = EMSender;
  [(EMSender *)&v4 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else if (([(EMSender *)equalCopy isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    v5 = equalCopy;
    databaseID = [(EMSender *)self databaseID];
    v7 = databaseID == [(EMSender *)v5 databaseID];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  displayName = [(EMSender *)self displayName];
  displayName2 = [compareCopy displayName];
  v7 = [displayName localizedStandardCompare:displayName2];

  if (!v7)
  {
    addresses = [(EMSender *)self addresses];
    addresses2 = [compareCopy addresses];
    v10 = [addresses count];
    if (v10 >= [addresses2 count])
    {
      v11 = [addresses count];
      if (v11 <= [addresses2 count])
      {
        firstObject = [addresses firstObject];
        stringValue = [firstObject stringValue];
        firstObject2 = [addresses2 firstObject];
        stringValue2 = [firstObject2 stringValue];
        v7 = [stringValue localizedStandardCompare:stringValue2];
      }

      else
      {
        v7 = 1;
      }
    }

    else
    {
      v7 = -1;
    }
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  databaseID = [(EMSender *)self databaseID];
  addresses = [(EMSender *)self addresses];
  contactIdentifier = [(EMSender *)self contactIdentifier];
  v8 = [v4 initWithDatabaseID:databaseID addresses:addresses contactIdentifier:contactIdentifier bucket:{-[EMSender bucket](self, "bucket")}];

  return v8;
}

- (EMSender)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = EMSender;
  v5 = [(EMSender *)&v18 init];
  if (v5)
  {
    v5->_databaseID = [coderCopy decodeInt64ForKey:@"EFPropertyKey_databaseID"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_contactIdentifier"];
    contactIdentifier = v5->_contactIdentifier;
    v5->_contactIdentifier = v6;

    v5->_bucket = [coderCopy decodeIntegerForKey:@"EFPropertyKey_bucket"];
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"EFPropertyKey_addresses"];

    v13 = objc_alloc(MEMORY[0x1E699B7F0]);
    v14 = [v12 mutableCopy];
    v15 = [v13 initWithObject:v14];
    addresses = v5->_addresses;
    v5->_addresses = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[EMSender databaseID](self forKey:{"databaseID"), @"EFPropertyKey_databaseID"}];
  addresses = [(EMSender *)self addresses];
  [coderCopy encodeObject:addresses forKey:@"EFPropertyKey_addresses"];

  contactIdentifier = [(EMSender *)self contactIdentifier];
  [coderCopy encodeObject:contactIdentifier forKey:@"EFPropertyKey_contactIdentifier"];

  [coderCopy encodeInteger:-[EMSender bucket](self forKey:{"bucket"), @"EFPropertyKey_bucket"}];
}

- (void)addAddress:(id)address
{
  addressCopy = address;
  addresses = self->_addresses;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __23__EMSender_addAddress___block_invoke;
  v7[3] = &unk_1E826FA18;
  v8 = addressCopy;
  v6 = addressCopy;
  [(EFLocked *)addresses performWhileLocked:v7];
}

- (void)removeAddress:(id)address
{
  addressCopy = address;
  addresses = self->_addresses;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __26__EMSender_removeAddress___block_invoke;
  v7[3] = &unk_1E826FA18;
  v8 = addressCopy;
  v6 = addressCopy;
  [(EFLocked *)addresses performWhileLocked:v7];
}

- (NSString)displayName
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = EFAtomicObjectLoad();
  if (!v3)
  {
    addresses = [(EMSender *)self addresses];
    v17 = [addresses ef_compactMap:&__block_literal_global_48];
    v5 = [objc_alloc(MEMORY[0x1E696AB50]) initWithArray:v17];
    ef_mostCommonObjects = [v5 ef_mostCommonObjects];
    v7 = [ef_mostCommonObjects count];
    if (v7)
    {
      if (v7 == 1)
      {
        [ef_mostCommonObjects firstObject];
      }

      else
      {
        [(EMSender *)self _bestDisplayNameFromDisplayNames:ef_mostCommonObjects];
      }
      simpleAddress = ;
      if (!simpleAddress)
      {
LABEL_17:
        v3 = 0;
LABEL_20:

        goto LABEL_21;
      }
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v8 = addresses;
      v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        v10 = *v19;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v19 != v10)
            {
              objc_enumerationMutation(v8);
            }

            emailAddressValue = [*(*(&v18 + 1) + 8 * i) emailAddressValue];
            simpleAddress = [emailAddressValue simpleAddress];

            if (simpleAddress)
            {

              goto LABEL_19;
            }
          }

          v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

      firstObject = [v8 firstObject];
      simpleAddress = [firstObject stringValue];

      if (!simpleAddress)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    v3 = EFAtomicObjectSetIfNil();

    goto LABEL_20;
  }

LABEL_21:
  v15 = *MEMORY[0x1E69E9840];

  return v3;
}

id __23__EMSender_displayName__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 emailAddressValue];
  v3 = [v2 displayName];

  return v3;
}

- (id)_bestDisplayNameFromDisplayNames:(id)names
{
  v41 = *MEMORY[0x1E69E9840];
  namesCopy = names;
  v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = namesCopy;
  v3 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v3)
  {
    v28 = 0;
    v31 = 0;
    v34 = 0;
    v32 = *v36;
    do
    {
      v33 = v3;
      for (i = 0; i != v33; ++i)
      {
        if (*v36 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v35 + 1) + 8 * i);
        v6 = [MEMORY[0x1E6996790] componentsFromString:v5];
        givenName = [v6 givenName];
        v8 = givenName;
        v9 = givenName != 0;
        if (!v34 || givenName)
        {
          familyName = [v6 familyName];
          v11 = familyName;
          v30 = familyName != 0;
          if (!v31 || familyName)
          {
            v27 = v9;
            namePrefix = [v6 namePrefix];

            middleName = [v6 middleName];

            nameSuffix = [v6 nameSuffix];

            nickname = [v6 nickname];
            v16 = nickname;
            v17 = namePrefix != 0;
            v18 = 1;
            if (namePrefix)
            {
              v18 = 2;
            }

            if (middleName)
            {
              v17 = v18;
            }

            if (nameSuffix)
            {
              v19 = v17 + 1;
            }

            else
            {
              v19 = v17;
            }

            if (v16)
            {
              ++v19;
            }

            if (v28 <= v19)
            {
              if (v8 != 0 && !v34 || v11 != 0 && !v31 || v19 > v28)
              {
                [v26 removeAllObjects];
                v28 = v19;
                v31 = v30;
                v34 = v27;
              }

              [v26 addObject:v5];
            }
          }
        }
      }

      v3 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v3);
  }

  if ([v26 count] == 1)
  {
    firstObject = [v26 firstObject];
  }

  else
  {
    v21 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"length" ascending:0];
    v39 = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
    [v26 sortUsingDescriptors:v22];

    firstObject = [v26 firstObject];
  }

  v23 = *MEMORY[0x1E69E9840];

  return firstObject;
}

@end