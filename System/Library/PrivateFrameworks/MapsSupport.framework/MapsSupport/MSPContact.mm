@interface MSPContact
+ (id)properties;
+ (id)shortName:(id)name;
+ (void)contactWithAccountIdentifier:(id)identifier completion:(id)completion;
@end

@implementation MSPContact

+ (id)properties
{
  if (properties_onceToken != -1)
  {
    +[MSPContact properties];
  }

  v3 = properties_properties;

  return v3;
}

void __24__MSPContact_properties__block_invoke()
{
  v11[14] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
  v1 = *MEMORY[0x277CBD068];
  v11[0] = v0;
  v11[1] = v1;
  v2 = *MEMORY[0x277CBD058];
  v11[2] = *MEMORY[0x277CBD000];
  v11[3] = v2;
  v3 = *MEMORY[0x277CBD070];
  v11[4] = *MEMORY[0x277CBCFF8];
  v11[5] = v3;
  v4 = *MEMORY[0x277CBD0B0];
  v11[6] = *MEMORY[0x277CBD078];
  v11[7] = v4;
  v5 = *MEMORY[0x277CBD0A8];
  v11[8] = *MEMORY[0x277CBD0B8];
  v11[9] = v5;
  v6 = *MEMORY[0x277CBCFC0];
  v11[10] = *MEMORY[0x277CBD090];
  v11[11] = v6;
  v7 = *MEMORY[0x277CBD160];
  v11[12] = *MEMORY[0x277CBD098];
  v11[13] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:14];
  v9 = properties_properties;
  properties_properties = v8;

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)contactWithAccountIdentifier:(id)identifier completion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__0;
  v29 = __Block_byref_object_dispose__0;
  v30 = 0;
  v8 = objc_alloc_init(MEMORY[0x277CBDAB8]);
  v9 = objc_alloc(MEMORY[0x277CBDA70]);
  v10 = +[MSPContact properties];
  v11 = [v9 initWithKeysToFetch:v10];

  [v11 setSortOrder:1];
  v12 = [identifierCopy containsString:@"@"];
  v13 = MEMORY[0x277CBDA58];
  if (v12)
  {
    v14 = [MEMORY[0x277CBDA58] predicateForContactMatchingEmailAddress:identifierCopy];
    [v11 setPredicate:v14];
  }

  else
  {
    v14 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:identifierCopy];
    v15 = [v13 predicateForContactsMatchingPhoneNumber:v14];
    [v11 setPredicate:v15];
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __54__MSPContact_contactWithAccountIdentifier_completion___block_invoke;
  v23[3] = &unk_279866268;
  v23[4] = &v25;
  v24 = 0;
  [v8 enumerateContactsWithFetchRequest:v11 error:&v24 usingBlock:v23];
  v16 = v24;
  if (v16)
  {
    v17 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v32 = v16;
      _os_log_impl(&dword_25813A000, v17, OS_LOG_TYPE_ERROR, "error resolving contact: %@", buf, 0xCu);
    }
  }

  if (completionCopy)
  {
    v18 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = v26[5];
      *buf = 138412290;
      v32 = v19;
      _os_log_impl(&dword_25813A000, v18, OS_LOG_TYPE_INFO, "contactWithAddress contact %@", buf, 0xCu);
    }

    v20 = [self shortName:v26[5]];
    identifier = [v26[5] identifier];
    completionCopy[2](completionCopy, v20, identifier);
  }

  _Block_object_dispose(&v25, 8);
  v22 = *MEMORY[0x277D85DE8];
}

void __54__MSPContact_contactWithAccountIdentifier_completion___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v6 = v7;
    *a3 = 1;
  }
}

+ (id)shortName:(id)name
{
  if (name)
  {
    v4 = [MEMORY[0x277CBDA78] stringFromContact:name style:1000];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end