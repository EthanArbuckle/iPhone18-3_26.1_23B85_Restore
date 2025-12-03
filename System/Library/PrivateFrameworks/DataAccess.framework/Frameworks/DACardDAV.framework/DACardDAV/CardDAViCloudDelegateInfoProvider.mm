@interface CardDAViCloudDelegateInfoProvider
- (BOOL)fetchGuardianStatus:(BOOL *)status family:(id)family account:(id)account error:(id *)error;
- (CardDAViCloudDelegateInfoProvider)init;
- (id)appleIDsOfExistingDelegates:(id)delegates;
- (id)cardDAVAccounts;
- (id)collectDelegatesForAccount:(id)account error:(id *)error;
- (id)familyCircleReturningError:(id *)error;
- (id)familyMembersPromise;
- (id)nonParentsInFamily:(id)family error:(id *)error;
@end

@implementation CardDAViCloudDelegateInfoProvider

- (CardDAViCloudDelegateInfoProvider)init
{
  v8.receiver = self;
  v8.super_class = CardDAViCloudDelegateInfoProvider;
  v2 = [(CardDAViCloudDelegateInfoProvider *)&v8 init];
  if (v2)
  {
    v3 = sharedDAAccountStore();
    v4 = [v3 accountTypeWithAccountTypeIdentifier:*MEMORY[0x277CB8BD8]];
    accountsType = v2->_accountsType;
    v2->_accountsType = v4;

    v6 = v2;
  }

  return v2;
}

- (id)collectDelegatesForAccount:(id)account error:(id *)error
{
  accountCopy = account;
  v13 = 0;
  v7 = [(CardDAViCloudDelegateInfoProvider *)self familyCircleReturningError:error];
  if (v7 && ([accountCopy displayAccount], v8 = objc_claimAutoreleasedReturnValue(), v9 = -[CardDAViCloudDelegateInfoProvider fetchGuardianStatus:family:account:error:](self, "fetchGuardianStatus:family:account:error:", &v13, v7, v8, error), v8, v9))
  {
    if (v13 == 1)
    {
      v10 = [(CardDAViCloudDelegateInfoProvider *)self nonParentsInFamily:v7 error:error];
      if (v10)
      {
        v11 = [objc_opt_class() delegateInfoForFamilyMembers:v10];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

CardDAVDelegateInfo *__66__CardDAViCloudDelegateInfoProvider_delegateInfoForFamilyMembers___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[CardDAVDelegateInfo alloc] initWithFamilyMember:v2];

  return v3;
}

- (id)cardDAVAccounts
{
  v3 = sharedDAAccountStore();
  accountsType = [(CardDAViCloudDelegateInfoProvider *)self accountsType];
  v5 = [v3 accountsWithAccountType:accountsType];

  return v5;
}

- (id)familyCircleReturningError:(id *)error
{
  v17 = *MEMORY[0x277D85DE8];
  familyMembersPromise = [(CardDAViCloudDelegateInfoProvider *)self familyMembersPromise];
  future = [familyMembersPromise future];
  v14 = 0;
  v6 = [future resultWithTimeout:&v14 error:30.0];
  v7 = v14;

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = DALoggingwithCategory();
    v10 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v9, v10))
    {
      *buf = 138412290;
      v16 = v7;
      _os_log_impl(&dword_24850D000, v9, v10, "Failed to fetch family circle data. error: %@", buf, 0xCu);
    }

    if (error)
    {
      v11 = v7;
      *error = v7;
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)familyMembersPromise
{
  v2 = objc_alloc_init(MEMORY[0x277CFBE90]);
  future = [v2 future];
  [future addSuccessBlock:&__block_literal_global_20];

  future2 = [v2 future];
  [future2 addFailureBlock:&__block_literal_global_24];

  v5 = objc_alloc_init(MEMORY[0x277D08280]);
  [v5 setPromptUserToResolveAuthenticatonFailure:0];
  completionHandlerAdapter = [v2 completionHandlerAdapter];
  [v5 startRequestWithCompletionHandler:completionHandlerAdapter];

  return v2;
}

void __57__CardDAViCloudDelegateInfoProvider_familyMembersPromise__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_impl(&dword_24850D000, v3, v4, "Family circle: %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __57__CardDAViCloudDelegateInfoProvider_familyMembersPromise__block_invoke_21(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v3, v4))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_impl(&dword_24850D000, v3, v4, "Error loading family members: %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (id)appleIDsOfExistingDelegates:(id)delegates
{
  v3 = MEMORY[0x277CBEB98];
  childAccounts = [delegates childAccounts];
  v5 = [childAccounts _cn_map:&__block_literal_global_29];
  v6 = [v3 setWithArray:v5];

  return v6;
}

- (id)nonParentsInFamily:(id)family error:(id *)error
{
  if (family)
  {
    members = [family members];
    v5 = [members _cn_filter:&__block_literal_global_32];

    v6 = [v5 _cn_filter:&__block_literal_global_34];
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CFBCD8] code:9 userInfo:0];
    v5 = v8;
    if (error)
    {
      v9 = v8;
      v6 = 0;
      *error = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

BOOL __62__CardDAViCloudDelegateInfoProvider_nonParentsInFamily_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 memberType] == 1 || objc_msgSend(v2, "memberType") == 2;

  return v3;
}

uint64_t __62__CardDAViCloudDelegateInfoProvider_nonParentsInFamily_error___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 dsid];

  if (!v3)
  {
    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277D03988] + 3);
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_12;
    }

    v12 = 138412290;
    v13 = v2;
    v9 = "Malformed family member; missing dsid: %@";
LABEL_11:
    _os_log_impl(&dword_24850D000, v7, v8, v9, &v12, 0xCu);
    goto LABEL_12;
  }

  v4 = [v2 altDSID];

  if (!v4)
  {
    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277D03988] + 3);
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_12;
    }

    v12 = 138412290;
    v13 = v2;
    v9 = "Malformed family member; missing altDSID: %@";
    goto LABEL_11;
  }

  v5 = [v2 appleID];

  if (!v5)
  {
    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v7, v8))
    {
      v12 = 138412290;
      v13 = v2;
      v9 = "Malformed family member; missing appleID: %@";
      goto LABEL_11;
    }

LABEL_12:

    v6 = 0;
    goto LABEL_13;
  }

  v6 = 1;
LABEL_13:

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)fetchGuardianStatus:(BOOL *)status family:(id)family account:(id)account error:(id *)error
{
  accountCopy = account;
  if (family)
  {
    members = [family members];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __78__CardDAViCloudDelegateInfoProvider_fetchGuardianStatus_family_account_error___block_invoke;
    v15[3] = &unk_278F1AE70;
    v16 = accountCopy;
    v11 = [members _cn_firstObjectPassingTest:v15];

    if (status)
    {
      if ([v11 isParent])
      {
        isOrganizer = 1;
      }

      else
      {
        isOrganizer = [v11 isOrganizer];
      }

      *status = isOrganizer;
    }
  }

  else
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CFBCD8] code:9 userInfo:0];
    if (error)
    {
      v13 = v13;
      *error = v13;
    }
  }

  return family != 0;
}

uint64_t __78__CardDAViCloudDelegateInfoProvider_fetchGuardianStatus_family_account_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 aa_altDSID];
  v5 = [v3 altDSID];

  v6 = [v4 isEqualToString:v5];
  return v6;
}

@end