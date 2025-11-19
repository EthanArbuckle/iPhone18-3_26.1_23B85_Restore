@interface _CDHomeManagerUtilities
+ (id)sharedInstance;
- (_CDHomeManagerUtilities)init;
- (id)contactKeysToFetch;
- (id)contactsInHome;
@end

@implementation _CDHomeManagerUtilities

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken20_1 != -1)
  {
    +[_CDHomeManagerUtilities sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_4;

  return v3;
}

- (_CDHomeManagerUtilities)init
{
  v9.receiver = self;
  v9.super_class = _CDHomeManagerUtilities;
  v2 = [(_CDHomeManagerUtilities *)&v9 init];
  if (v2)
  {
    v3 = [objc_alloc(getHMHomeManagerConfigurationClass()) initWithOptions:8 cachePolicy:2];
    v4 = [objc_alloc(getHMHomeManagerClass()) initWithHomeMangerConfiguration:v3];
    homeManager = v2->_homeManager;
    v2->_homeManager = v4;

    v6 = objc_alloc_init(getCNContactStoreClass());
    contactStore = v2->_contactStore;
    v2->_contactStore = v6;
  }

  return v2;
}

- (id)contactsInHome
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v29 = objc_opt_new();
  [(HMHomeManager *)self->_homeManager setDelegate:self];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v30 = self;
  obj = [(HMHomeManager *)self->_homeManager homes];
  v4 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v41;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v41 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v40 + 1) + 8 * i);
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v9 = [v8 users];
        v10 = [v9 countByEnumeratingWithState:&v36 objects:v45 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v37;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v37 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v36 + 1) + 8 * j);
              v15 = [v14 userID];

              if (v15)
              {
                v16 = [v14 userID];
                [v3 addObject:v16];
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v36 objects:v45 count:16];
          }

          while (v11);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v5);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v17 = v3;
  v18 = [v17 countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v33;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v33 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [getCNContactClass() predicateForContactsMatchingEmailAddress:*(*(&v32 + 1) + 8 * k)];
        contactStore = v30->_contactStore;
        v24 = [(_CDHomeManagerUtilities *)v30 contactKeysToFetch];
        v25 = [(CNContactStore *)contactStore unifiedContactsMatchingPredicate:v22 keysToFetch:v24 error:0];
        v26 = [v25 firstObject];

        if (v26)
        {
          [v29 addObject:v26];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v32 objects:v44 count:16];
    }

    while (v19);
  }

  v27 = *MEMORY[0x1E69E9840];

  return v29;
}

- (id)contactKeysToFetch
{
  v14[9] = *MEMORY[0x1E69E9840];
  v2 = getCNContactIdentifierKey();
  v14[0] = v2;
  v3 = getCNContactBirthdayKey();
  v14[1] = v3;
  v4 = getCNContactRelationsKey();
  v14[2] = v4;
  v5 = getCNContactGivenNameKey();
  v14[3] = v5;
  v6 = getCNContactMiddleNameKey();
  v14[4] = v6;
  v7 = getCNContactFamilyNameKey();
  v14[5] = v7;
  v8 = getCNContactNicknameKey();
  v14[6] = v8;
  v9 = getCNContactPhoneNumbersKey();
  v14[7] = v9;
  v10 = getCNContactEmailAddressesKey();
  v14[8] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:9];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

@end