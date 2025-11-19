@interface EMSender
- (BOOL)isEqual:(id)a3;
- (EMSender)initWithCoder:(id)a3;
- (EMSender)initWithDatabaseID:(int64_t)a3 addresses:(id)a4 contactIdentifier:(id)a5 bucket:(int64_t)a6;
- (NSString)displayName;
- (id)_bestDisplayNameFromDisplayNames:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)compare:(id)a3;
- (void)addAddress:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)removeAddress:(id)a3;
@end

@implementation EMSender

- (EMSender)initWithDatabaseID:(int64_t)a3 addresses:(id)a4 contactIdentifier:(id)a5 bucket:(int64_t)a6
{
  v10 = a4;
  v11 = a5;
  v21.receiver = self;
  v21.super_class = EMSender;
  v12 = [(EMSender *)&v21 init];
  v13 = v12;
  if (v12)
  {
    v12->_databaseID = a3;
    v14 = objc_alloc(MEMORY[0x1E699B7F0]);
    v15 = [v10 mutableCopy];
    v16 = [v14 initWithObject:v15];
    addresses = v13->_addresses;
    v13->_addresses = v16;

    v18 = [v11 copy];
    contactIdentifier = v13->_contactIdentifier;
    v13->_contactIdentifier = v18;

    v13->_bucket = a6;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else if (([(EMSender *)v4 isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    v5 = v4;
    v6 = [(EMSender *)self databaseID];
    v7 = v6 == [(EMSender *)v5 databaseID];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(EMSender *)self displayName];
  v6 = [v4 displayName];
  v7 = [v5 localizedStandardCompare:v6];

  if (!v7)
  {
    v8 = [(EMSender *)self addresses];
    v9 = [v4 addresses];
    v10 = [v8 count];
    if (v10 >= [v9 count])
    {
      v11 = [v8 count];
      if (v11 <= [v9 count])
      {
        v12 = [v8 firstObject];
        v13 = [v12 stringValue];
        v14 = [v9 firstObject];
        v15 = [v14 stringValue];
        v7 = [v13 localizedStandardCompare:v15];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(EMSender *)self databaseID];
  v6 = [(EMSender *)self addresses];
  v7 = [(EMSender *)self contactIdentifier];
  v8 = [v4 initWithDatabaseID:v5 addresses:v6 contactIdentifier:v7 bucket:{-[EMSender bucket](self, "bucket")}];

  return v8;
}

- (EMSender)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = EMSender;
  v5 = [(EMSender *)&v18 init];
  if (v5)
  {
    v5->_databaseID = [v4 decodeInt64ForKey:@"EFPropertyKey_databaseID"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_contactIdentifier"];
    contactIdentifier = v5->_contactIdentifier;
    v5->_contactIdentifier = v6;

    v5->_bucket = [v4 decodeIntegerForKey:@"EFPropertyKey_bucket"];
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"EFPropertyKey_addresses"];

    v13 = objc_alloc(MEMORY[0x1E699B7F0]);
    v14 = [v12 mutableCopy];
    v15 = [v13 initWithObject:v14];
    addresses = v5->_addresses;
    v5->_addresses = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeInt64:-[EMSender databaseID](self forKey:{"databaseID"), @"EFPropertyKey_databaseID"}];
  v4 = [(EMSender *)self addresses];
  [v6 encodeObject:v4 forKey:@"EFPropertyKey_addresses"];

  v5 = [(EMSender *)self contactIdentifier];
  [v6 encodeObject:v5 forKey:@"EFPropertyKey_contactIdentifier"];

  [v6 encodeInteger:-[EMSender bucket](self forKey:{"bucket"), @"EFPropertyKey_bucket"}];
}

- (void)addAddress:(id)a3
{
  v4 = a3;
  addresses = self->_addresses;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __23__EMSender_addAddress___block_invoke;
  v7[3] = &unk_1E826FA18;
  v8 = v4;
  v6 = v4;
  [(EFLocked *)addresses performWhileLocked:v7];
}

- (void)removeAddress:(id)a3
{
  v4 = a3;
  addresses = self->_addresses;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __26__EMSender_removeAddress___block_invoke;
  v7[3] = &unk_1E826FA18;
  v8 = v4;
  v6 = v4;
  [(EFLocked *)addresses performWhileLocked:v7];
}

- (NSString)displayName
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = EFAtomicObjectLoad();
  if (!v3)
  {
    v4 = [(EMSender *)self addresses];
    v17 = [v4 ef_compactMap:&__block_literal_global_48];
    v5 = [objc_alloc(MEMORY[0x1E696AB50]) initWithArray:v17];
    v6 = [v5 ef_mostCommonObjects];
    v7 = [v6 count];
    if (v7)
    {
      if (v7 == 1)
      {
        [v6 firstObject];
      }

      else
      {
        [(EMSender *)self _bestDisplayNameFromDisplayNames:v6];
      }
      v13 = ;
      if (!v13)
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
      v8 = v4;
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

            v12 = [*(*(&v18 + 1) + 8 * i) emailAddressValue];
            v13 = [v12 simpleAddress];

            if (v13)
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

      v14 = [v8 firstObject];
      v13 = [v14 stringValue];

      if (!v13)
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

- (id)_bestDisplayNameFromDisplayNames:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v25 = a3;
  v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v25;
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
        v7 = [v6 givenName];
        v8 = v7;
        v9 = v7 != 0;
        if (!v34 || v7)
        {
          v10 = [v6 familyName];
          v11 = v10;
          v30 = v10 != 0;
          if (!v31 || v10)
          {
            v27 = v9;
            v12 = [v6 namePrefix];

            v13 = [v6 middleName];

            v14 = [v6 nameSuffix];

            v15 = [v6 nickname];
            v16 = v15;
            v17 = v12 != 0;
            v18 = 1;
            if (v12)
            {
              v18 = 2;
            }

            if (v13)
            {
              v17 = v18;
            }

            if (v14)
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
    v20 = [v26 firstObject];
  }

  else
  {
    v21 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"length" ascending:0];
    v39 = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
    [v26 sortUsingDescriptors:v22];

    v20 = [v26 firstObject];
  }

  v23 = *MEMORY[0x1E69E9840];

  return v20;
}

@end