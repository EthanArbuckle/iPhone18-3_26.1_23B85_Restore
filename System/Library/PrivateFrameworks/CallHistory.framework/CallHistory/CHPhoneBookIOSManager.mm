@interface CHPhoneBookIOSManager
- (CHPhoneBookIOSManager)initWithContactStore:(id)store;
- (id)fetchCNContact:(id)contact countryCode:(id)code isEmail:(BOOL)email;
- (id)fetchCNContactsMatchingPredicate:(id)predicate keysToKetch:(id)ketch error:(id *)error;
- (id)fetchFullCNContactForContactIdentifier:(id)identifier isEmail:(BOOL)email;
- (id)getLocalizedCallerIdLabelForContact:(id)contact forCallerId:(id)id withCallerIdIsEmail:(BOOL)email;
- (id)getPersonsNameForContact:(id)contact;
@end

@implementation CHPhoneBookIOSManager

- (CHPhoneBookIOSManager)initWithContactStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = CHPhoneBookIOSManager;
  v6 = [(CHPhoneBookIOSManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactStore, store);
  }

  return v7;
}

- (id)fetchCNContact:(id)contact countryCode:(id)code isEmail:(BOOL)email
{
  emailCopy = email;
  v34 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  codeCopy = code;
  v10 = +[CHLogServer sharedInstance];
  v11 = [v10 logHandleForDomain:"ch.pbm"];

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v31 = contactCopy;
    v32 = 1024;
    LODWORD(v33) = emailCopy;
    _os_log_impl(&dword_1C3E90000, v11, OS_LOG_TYPE_DEFAULT, "fetchCNContact! Trying to find contact info for %@, isEmail? %d", buf, 0x12u);
  }

  v12 = objc_opt_new();
  if (emailCopy)
  {
    [MEMORY[0x1E695CD58] predicateForContactsMatchingEmailAddress:contactCopy];
  }

  else
  {
    [MEMORY[0x1E695CD58] predicateForContactMatchingPhoneNumberWithDigits:contactCopy countryCode:codeCopy];
  }
  v13 = ;
  v14 = +[CHLogServer sharedInstance];
  v15 = [v14 logHandleForDomain:"ch.pbm"];

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138739971;
    v31 = v13;
    _os_log_impl(&dword_1C3E90000, v15, OS_LOG_TYPE_DEFAULT, "The predicate used to find contact: %{sensitive}@", buf, 0xCu);
  }

  v29 = 0;
  v16 = [(CHPhoneBookIOSManager *)self fetchCNContactsMatchingPredicate:v13 keysToKetch:MEMORY[0x1E695E0F0] error:&v29];
  v17 = v29;
  v18 = +[CHLogServer sharedInstance];
  v19 = [v18 logHandleForDomain:"ch.pbm"];

  v20 = v19;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [v16 count];
    *buf = 134218243;
    v31 = v21;
    v32 = 2117;
    v33 = contactCopy;
    _os_log_impl(&dword_1C3E90000, v20, OS_LOG_TYPE_DEFAULT, "Num of contacts found: %lu for %{sensitive}@", buf, 0x16u);
  }

  if ([v16 count])
  {
    firstObject = [v16 firstObject];
    if (firstObject)
    {
      v23 = firstObject;
      identifier = [firstObject identifier];

      goto LABEL_18;
    }
  }

  else if (!v16)
  {
    v25 = +[CHLogServer sharedInstance];
    v26 = [v25 logHandleForDomain:"ch.pbm"];

    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [CHPhoneBookIOSManager fetchCNContact:countryCode:isEmail:];
    }
  }

  identifier = @"kCNContactInfoNotFound";
LABEL_18:
  [v12 setValue:identifier forKey:@"kCHABCacheCNContactIdKey"];

  v27 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)fetchFullCNContactForContactIdentifier:(id)identifier isEmail:(BOOL)email
{
  emailCopy = email;
  v24[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v7 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v8 = v7;
  v9 = MEMORY[0x1E695C208];
  if (!emailCopy)
  {
    v9 = MEMORY[0x1E695C330];
  }

  v10 = *v9;
  v24[0] = v7;
  v24[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];

  v12 = MEMORY[0x1E695CD58];
  v23 = identifierCopy;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  v14 = [v12 predicateForContactsWithIdentifiers:v13];
  v22 = 0;
  v15 = [(CHPhoneBookIOSManager *)self fetchCNContactsMatchingPredicate:v14 keysToKetch:v11 error:&v22];
  v16 = v22;
  firstObject = [v15 firstObject];

  if (!firstObject)
  {
    v18 = +[CHLogServer sharedInstance];
    v19 = [v18 logHandleForDomain:"ch.pbm"];

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [CHPhoneBookIOSManager fetchFullCNContactForContactIdentifier:isEmail:];
    }
  }

  v20 = *MEMORY[0x1E69E9840];

  return firstObject;
}

- (id)fetchCNContactsMatchingPredicate:(id)predicate keysToKetch:(id)ketch error:(id *)error
{
  v8 = MEMORY[0x1E695CD78];
  ketchCopy = ketch;
  predicateCopy = predicate;
  v11 = [[v8 alloc] initWithKeysToFetch:ketchCopy];

  [v11 setPredicate:predicateCopy];
  [v11 setUnifyResults:0];
  array = [MEMORY[0x1E695DF70] array];
  contactStore = [(CHPhoneBookIOSManager *)self contactStore];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __76__CHPhoneBookIOSManager_fetchCNContactsMatchingPredicate_keysToKetch_error___block_invoke;
  v17[3] = &unk_1E81DC278;
  v14 = array;
  v18 = v14;
  LODWORD(error) = [contactStore enumerateContactsWithFetchRequest:v11 error:error usingBlock:v17];

  if (error)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)getPersonsNameForContact:(id)contact
{
  contactCopy = contact;
  v5 = +[CHLogServer sharedInstance];
  v6 = [v5 logHandleForDomain:"ch.pbm"];

  v7 = v6;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(CHPhoneBookIOSManager *)a2 getPersonsNameForContact:v7];
  }

  if (contactCopy)
  {
    v8 = [MEMORY[0x1E695CD80] stringFromContact:contactCopy style:0];
  }

  else
  {
    v8 = 0;
  }

  v9 = +[CHLogServer sharedInstance];
  v10 = [v9 logHandleForDomain:"ch.pbm"];

  v11 = v10;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [(CHPhoneBookIOSManager *)a2 getPersonsNameForContact:v8, v11];
  }

  return v8;
}

- (id)getLocalizedCallerIdLabelForContact:(id)contact forCallerId:(id)id withCallerIdIsEmail:(BOOL)email
{
  emailCopy = email;
  v47 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  idCopy = id;
  if (contactCopy)
  {
    v36 = contactCopy;
    if (emailCopy)
    {
      emailAddresses = [contactCopy emailAddresses];
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v10 = [emailAddresses countByEnumeratingWithState:&v41 objects:v46 count:16];
      v11 = 0;
      if (v10)
      {
        v12 = *v42;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v42 != v12)
            {
              objc_enumerationMutation(emailAddresses);
            }

            v14 = *(*(&v41 + 1) + 8 * i);
            value = [v14 value];
            v16 = [value isEqualToString:idCopy];

            if (v16)
            {
              v17 = v14;

              v11 = v17;
            }
          }

          v10 = [emailAddresses countByEnumeratingWithState:&v41 objects:v46 count:16];
        }

        while (v10);
        v18 = v11;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      emailAddresses = [contactCopy phoneNumbers];
      v20 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:idCopy];
      if (v20)
      {
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v35 = emailAddresses;
        v21 = emailAddresses;
        v22 = [v21 countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (v22)
        {
          v23 = v22;
          v11 = 0;
          v24 = *v38;
          do
          {
            for (j = 0; j != v23; ++j)
            {
              if (*v38 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = *(*(&v37 + 1) + 8 * j);
              value2 = [v26 value];
              v28 = [value2 isLikePhoneNumber:v20];

              if (v28)
              {
                v29 = v26;

                v11 = v29;
              }
            }

            v23 = [v21 countByEnumeratingWithState:&v37 objects:v45 count:16];
          }

          while (v23);
        }

        else
        {
          v11 = 0;
        }

        emailAddresses = v35;
      }

      else
      {
        v11 = 0;
      }

      v18 = 0;
      v10 = v11;
    }

    v30 = MEMORY[0x1E695CEE0];
    label = [v11 label];
    v32 = [v30 localizedStringForLabel:label];

    v19 = v32;
    contactCopy = v36;
  }

  else
  {
    v19 = 0;
  }

  v33 = *MEMORY[0x1E69E9840];

  return v19;
}

- (void)fetchCNContact:countryCode:isEmail:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_1C3E90000, v0, v1, "Error looking for contacts matching caller ID %{sensitive}@, error: %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)fetchFullCNContactForContactIdentifier:isEmail:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_1C3E90000, v0, v1, "Can't find contact for identifier %{sensitive}@, error: %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)getPersonsNameForContact:(const char *)a1 .cold.1(const char *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = NSStringFromSelector(a1);
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_1C3E90000, a2, OS_LOG_TYPE_DEBUG, "==> %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

- (void)getPersonsNameForContact:(NSObject *)a3 .cold.2(const char *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_0_3();
  v8 = a2;
  _os_log_debug_impl(&dword_1C3E90000, a3, OS_LOG_TYPE_DEBUG, "%@ <== %@", v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end