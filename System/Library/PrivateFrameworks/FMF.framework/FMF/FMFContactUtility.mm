@interface FMFContactUtility
+ (id)sharedInstance;
- (id)contactKeys;
- (id)displayNameForContact:(id)contact andHandle:(id)handle;
- (id)findOptimalContactInContacts:(id)contacts;
- (id)getContactForHandle:(id)handle;
- (id)getContactForHandle:(id)handle keysToFetch:(id)fetch;
- (id)shortDisplayNameForContact:(id)contact andHandle:(id)handle;
@end

@implementation FMFContactUtility

+ (id)sharedInstance
{
  if (sharedInstance_dispatch_predicate_3 != -1)
  {
    +[FMFContactUtility sharedInstance];
  }

  v3 = sharedInstance__instance_2;

  return v3;
}

void __35__FMFContactUtility_sharedInstance__block_invoke()
{
  v0 = LogCategory_Daemon();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_24A33F000, v0, OS_LOG_TYPE_INFO, "Creating shared instance of FMFContactUtility", v7, 2u);
  }

  v1 = objc_opt_new();
  v2 = sharedInstance__instance_2;
  sharedInstance__instance_2 = v1;

  v3 = [MEMORY[0x277CBDAB8] storeWithOptions:3];
  [sharedInstance__instance_2 setContactStore:v3];

  v4 = objc_alloc_init(MEMORY[0x277CBDA78]);
  [sharedInstance__instance_2 setContactFormatter:v4];

  v5 = [sharedInstance__instance_2 contactFormatter];
  [v5 setStyle:0];

  v6 = [sharedInstance__instance_2 contactStore];
  [v6 requestAccessForEntityType:0 completionHandler:&__block_literal_global_6];
}

void __35__FMFContactUtility_sharedInstance__block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  v5 = LogCategory_Daemon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __35__FMFContactUtility_sharedInstance__block_invoke_3_cold_1(a2, v4, v5);
  }
}

- (id)shortDisplayNameForContact:(id)contact andHandle:(id)handle
{
  v26 = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  handleCopy = handle;
  if (!contactCopy)
  {
    goto LABEL_8;
  }

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v8 = [standardUserDefaults BOOLForKey:@"NSPersonNameDefaultShouldPreferNicknamesPreference"];

  if (!v8 || ([contactCopy nickname], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "length"), v9, !v10))
  {
    givenName = [contactCopy givenName];
    v13 = [givenName length];

    if (v13)
    {
      givenName2 = [contactCopy givenName];
      goto LABEL_7;
    }

LABEL_8:
    v14 = &stru_285D7AA10;
    goto LABEL_9;
  }

  givenName2 = [contactCopy nickname];
LABEL_7:
  v14 = givenName2;
LABEL_9:
  if (([(__CFString *)v14 isEqualToString:&stru_285D7AA10]& 1) != 0 || !v14)
  {
    isPhoneNumber = [handleCopy isPhoneNumber];
    String = [handleCopy identifier];
    if (isPhoneNumber)
    {
      v17 = CFPhoneNumberCreate();

      String = CFPhoneNumberCreateString();
      if (v17)
      {
        CFRelease(v17);
      }
    }

    else
    {
    }
  }

  else
  {
    String = v14;
  }

  v18 = LogCategory_Daemon();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [handleCopy identifier];
    v22 = 138412546;
    v23 = String;
    v24 = 2112;
    v25 = identifier;
    _os_log_impl(&dword_24A33F000, v18, OS_LOG_TYPE_DEFAULT, "Short display name %@ found for handle %@", &v22, 0x16u);
  }

  v20 = *MEMORY[0x277D85DE8];

  return String;
}

- (id)displayNameForContact:(id)contact andHandle:(id)handle
{
  v25 = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  handleCopy = handle;
  if (contactCopy)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v9 = [standardUserDefaults BOOLForKey:@"NSPersonNameDefaultShouldPreferNicknamesPreference"];

    if (v9 && ([contactCopy nickname], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "length"), v10, v11))
    {
      nickname = [contactCopy nickname];
    }

    else
    {
      contactFormatter = [(FMFContactUtility *)self contactFormatter];
      nickname = [contactFormatter stringFromPotentiallySuggestedContact:contactCopy relatedToProperty:0];
    }
  }

  else
  {
    nickname = &stru_285D7AA10;
  }

  if (([(__CFString *)nickname isEqualToString:&stru_285D7AA10]& 1) != 0 || !nickname)
  {
    isPhoneNumber = [handleCopy isPhoneNumber];
    String = [handleCopy identifier];
    if (isPhoneNumber)
    {
      v16 = CFPhoneNumberCreate();

      String = CFPhoneNumberCreateString();
      if (v16)
      {
        CFRelease(v16);
      }
    }

    else
    {
    }
  }

  else
  {
    String = nickname;
  }

  v17 = LogCategory_Daemon();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [handleCopy identifier];
    v21 = 138412546;
    v22 = String;
    v23 = 2112;
    v24 = identifier;
    _os_log_impl(&dword_24A33F000, v17, OS_LOG_TYPE_DEFAULT, "Display name %@ found for handle %@", &v21, 0x16u);
  }

  v19 = *MEMORY[0x277D85DE8];

  return String;
}

- (id)getContactForHandle:(id)handle
{
  handleCopy = handle;
  contactKeys = [(FMFContactUtility *)self contactKeys];
  v6 = [(FMFContactUtility *)self getContactForHandle:handleCopy keysToFetch:contactKeys];

  return v6;
}

- (id)getContactForHandle:(id)handle keysToFetch:(id)fetch
{
  v29 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  fetchCopy = fetch;
  if (!handleCopy)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
LABEL_15:
    v23 = 0;
    goto LABEL_17;
  }

  v8 = objc_autoreleasePoolPush();
  if (![handleCopy isPhoneNumber])
  {
    v16 = MEMORY[0x277CBDA58];
    identifier = [handleCopy identifier];
    v12 = [v16 predicateForContactsMatchingEmailAddress:identifier];
    goto LABEL_7;
  }

  v9 = objc_alloc(MEMORY[0x277CBDB70]);
  identifier2 = [handleCopy identifier];
  identifier = [v9 initWithStringValue:identifier2];

  if (identifier)
  {
    v12 = [MEMORY[0x277CBDA58] predicateForContactsMatchingPhoneNumber:identifier];
LABEL_7:
    v13 = v12;
    goto LABEL_8;
  }

  v13 = 0;
LABEL_8:

  v17 = [MEMORY[0x277CBEBF8] arrayByAddingObject:*MEMORY[0x277CBD028]];
  v18 = v17;
  if (fetchCopy)
  {
    v19 = [v17 arrayByAddingObjectsFromArray:fetchCopy];

    v18 = v19;
  }

  v20 = LogCategory_Daemon();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24A33F000, v20, OS_LOG_TYPE_DEFAULT, "Get contacts...", buf, 2u);
  }

  contactStore = [(FMFContactUtility *)self contactStore];
  v26 = 0;
  v14 = [contactStore unifiedContactsMatchingPredicate:v13 keysToFetch:v18 error:&v26];
  v15 = v26;

  v22 = LogCategory_Daemon();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v14;
    _os_log_impl(&dword_24A33F000, v22, OS_LOG_TYPE_DEFAULT, "Contacts: %@", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  if (v15)
  {
    goto LABEL_15;
  }

  v23 = [(FMFContactUtility *)self findOptimalContactInContacts:v14];
LABEL_17:

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)findOptimalContactInContacts:(id)contacts
{
  v24 = *MEMORY[0x277D85DE8];
  contactsCopy = contacts;
  firstObject = [contactsCopy firstObject];
  if ([contactsCopy count] >= 2)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = contactsCopy;
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          imageData = [v10 imageData];

          if (imageData)
          {
            v14 = v10;

            firstObject = v14;
            goto LABEL_17;
          }

          if ([firstObject isSuggested] && (objc_msgSend(v10, "isSuggested") & 1) == 0)
          {
            v12 = LogCategory_Daemon();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
            {
              [(FMFContactUtility *)&v17 findOptimalContactInContacts:v18, v12];
            }

            v13 = v10;
            firstObject = v13;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:
  }

  v15 = *MEMORY[0x277D85DE8];

  return firstObject;
}

- (id)contactKeys
{
  v21[32] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBD048];
  v21[0] = *MEMORY[0x277CBD018];
  v21[1] = v2;
  v3 = *MEMORY[0x277CBD000];
  v21[2] = *MEMORY[0x277CBD068];
  v21[3] = v3;
  v4 = *MEMORY[0x277CBCFF8];
  v21[4] = *MEMORY[0x277CBD058];
  v21[5] = v4;
  v5 = *MEMORY[0x277CBD070];
  v21[6] = *MEMORY[0x277CBD0E0];
  v21[7] = v5;
  v6 = *MEMORY[0x277CBD0B0];
  v21[8] = *MEMORY[0x277CBD078];
  v21[9] = v6;
  v7 = *MEMORY[0x277CBD0A8];
  v21[10] = *MEMORY[0x277CBD0B8];
  v21[11] = v7;
  v8 = *MEMORY[0x277CBCFB8];
  v21[12] = *MEMORY[0x277CBD090];
  v21[13] = v8;
  v9 = *MEMORY[0x277CBCF90];
  v21[14] = *MEMORY[0x277CBD040];
  v21[15] = v9;
  v10 = *MEMORY[0x277CBD088];
  v21[16] = *MEMORY[0x277CBD080];
  v21[17] = v10;
  v11 = *MEMORY[0x277CBD158];
  v21[18] = *MEMORY[0x277CBD028];
  v21[19] = v11;
  v12 = *MEMORY[0x277CBD0D0];
  v21[20] = *MEMORY[0x277CBD0D8];
  v21[21] = v12;
  v13 = *MEMORY[0x277CBD160];
  v21[22] = *MEMORY[0x277CBD020];
  v21[23] = v13;
  v14 = *MEMORY[0x277CBCFC0];
  v21[24] = *MEMORY[0x277CBD098];
  v21[25] = v14;
  v15 = *MEMORY[0x277CBCFB0];
  v21[26] = *MEMORY[0x277CBD0C8];
  v21[27] = v15;
  v16 = *MEMORY[0x277CBD120];
  v21[28] = *MEMORY[0x277CBD168];
  v21[29] = v16;
  v17 = *MEMORY[0x277CBD038];
  v21[30] = *MEMORY[0x277CBD138];
  v21[31] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:32];
  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

void __35__FMFContactUtility_sharedInstance__block_invoke_3_cold_1(char a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 67109378;
  v4[1] = a1 & 1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_24A33F000, log, OS_LOG_TYPE_ERROR, "Request access to contact store %d %@", v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)findOptimalContactInContacts:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_24A33F000, log, OS_LOG_TYPE_DEBUG, "Overriding suggested contact with new contact", buf, 2u);
}

@end