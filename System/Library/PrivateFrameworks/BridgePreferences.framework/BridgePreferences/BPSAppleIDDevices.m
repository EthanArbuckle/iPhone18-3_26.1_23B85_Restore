@interface BPSAppleIDDevices
+ (BOOL)isNetworkError:(id)a3;
+ (void)fetchFamilyMemberForAltDSID:(id)a3 username:(id)a4 withCompletion:(id)a5;
+ (void)fetchFamilyMemberForDevice:(id)a3 withCompletion:(id)a4;
@end

@implementation BPSAppleIDDevices

+ (void)fetchFamilyMemberForDevice:(id)a3 withCompletion:(id)a4
{
  v5 = a4;
  v6 = *MEMORY[0x277D2BD30];
  v7 = a3;
  v8 = [v7 valueForProperty:v6];
  v9 = [v7 valueForProperty:*MEMORY[0x277D2BD38]];

  if (v8 | v9)
  {
    v11 = objc_opt_class();
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __63__BPSAppleIDDevices_fetchFamilyMemberForDevice_withCompletion___block_invoke;
    v12[3] = &unk_278D236E8;
    v13 = v5;
    [v11 fetchFamilyMemberForAltDSID:v8 username:v9 withCompletion:v12];
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"BPSAppleIDDevicesErrorDomain" code:1 userInfo:0];
    (*(v5 + 2))(v5, 0, v10);
  }
}

void __63__BPSAppleIDDevices_fetchFamilyMemberForDevice_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = v5;
  if (v8)
  {
    v7 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (!v5)
    {
      v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"BPSAppleIDDevicesErrorDomain" code:1 userInfo:0];
    }

    v7 = *(*(a1 + 32) + 16);
  }

  v7();
}

+ (void)fetchFamilyMemberForAltDSID:(id)a3 username:(id)a4 withCompletion:(id)a5
{
  v22[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x277D08280]);
  if (v7)
  {
    v22[0] = v7;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    [v10 setExpectedAltDSIDs:v11];
  }

  else
  {
    v12 = pbb_accountsignin_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241E74000, v12, OS_LOG_TYPE_DEFAULT, "Missing altDSID. Forcing a network fetch", buf, 2u);
    }

    [v10 setCachePolicy:2];
  }

  v13 = pbb_accountsignin_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241E74000, v13, OS_LOG_TYPE_DEFAULT, "FAFetchFamilyCircleRequest fetch start", buf, 2u);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __73__BPSAppleIDDevices_fetchFamilyMemberForAltDSID_username_withCompletion___block_invoke;
  v17[3] = &unk_278D23710;
  v19 = v8;
  v20 = v9;
  v18 = v7;
  v14 = v8;
  v15 = v7;
  v16 = v9;
  [v10 startRequestWithCompletionHandler:v17];
}

void __73__BPSAppleIDDevices_fetchFamilyMemberForAltDSID_username_withCompletion___block_invoke(void *a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pbb_accountsignin_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 localizedDescription];
    *buf = 138412290;
    v32 = v8;
    _os_log_impl(&dword_241E74000, v7, OS_LOG_TYPE_DEFAULT, "FAFetchFamilyCircleRequest fetch complete, error: %@", buf, 0xCu);
  }

  if (v6)
  {
    v9 = a1[6];
    v10 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CCA7E8];
    v30 = v6;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v12 = [v10 errorWithDomain:@"BPSAppleIDDevicesErrorDomain" code:2 userInfo:v11];
    (*(v9 + 16))(v9, 0, v12);
  }

  else if (a1[4])
  {
    v13 = a1[6];
    v14 = [v5 memberForAltDSID:?];
    (*(v13 + 16))(v13, v14, 0);
LABEL_19:
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = [v5 members];
    v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v25;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v24 + 1) + 8 * i);
          v20 = [v19 appleID];
          v21 = [v20 caseInsensitiveCompare:a1[5]];

          if (!v21)
          {
            (*(a1[6] + 16))(a1[6], v19, 0);
            goto LABEL_19;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v22 = pbb_accountsignin_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = a1[5];
      *buf = 138543362;
      v32 = v23;
      _os_log_impl(&dword_241E74000, v22, OS_LOG_TYPE_DEFAULT, "could not find family-member for account: %{public}@", buf, 0xCu);
    }

    (*(a1[6] + 16))();
  }
}

+ (BOOL)isNetworkError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:@"BPSAppleIDDevicesErrorDomain"])
  {
    v5 = [v3 code] == 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end