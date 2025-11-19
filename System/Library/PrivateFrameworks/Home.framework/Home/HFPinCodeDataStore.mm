@interface HFPinCodeDataStore
- (HFPinCodeDataStore)init;
- (id)guestPinCodeFromItem:(id)a3;
- (id)pinCodeForCodeValue:(id)a3;
- (id)pinCodeFromItem:(id)a3;
- (void)mergeData:(id)a3;
- (void)updateWithPinCode:(id)a3 forOldCodeValue:(id)a4;
@end

@implementation HFPinCodeDataStore

- (HFPinCodeDataStore)init
{
  v12.receiver = self;
  v12.super_class = HFPinCodeDataStore;
  v2 = [(HFPinCodeDataStore *)&v12 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    userPINCodes = v2->_userPINCodes;
    v2->_userPINCodes = v3;

    v5 = [MEMORY[0x277CBEB38] dictionary];
    removedUserPINCodes = v2->_removedUserPINCodes;
    v2->_removedUserPINCodes = v5;

    v7 = [MEMORY[0x277CBEB38] dictionary];
    guestPINCodes = v2->_guestPINCodes;
    v2->_guestPINCodes = v7;

    v9 = [MEMORY[0x277CBEB38] dictionary];
    otherEcosystemGuestPINCodes = v2->_otherEcosystemGuestPINCodes;
    v2->_otherEcosystemGuestPINCodes = v9;
  }

  return v2;
}

- (void)mergeData:(id)a3
{
  v12 = a3;
  v4 = [(HFPinCodeDataStore *)self userPINCodes];
  v5 = [v12 userPINCodes];
  [v4 addEntriesFromDictionary:v5];

  v6 = [(HFPinCodeDataStore *)self removedUserPINCodes];
  v7 = [v12 removedUserPINCodes];
  [v6 addEntriesFromDictionary:v7];

  v8 = [(HFPinCodeDataStore *)self guestPINCodes];
  v9 = [v12 guestPINCodes];
  [v8 addEntriesFromDictionary:v9];

  v10 = [v12 currentUserPinCode];

  if (v10)
  {
    v11 = [v12 currentUserPinCode];
    [(HFPinCodeDataStore *)self setCurrentUserPinCode:v11];
  }
}

- (id)pinCodeFromItem:(id)a3
{
  v4 = a3;
  if ([v4 isUnknownGuestFromMatter])
  {
    v5 = [(HFPinCodeDataStore *)self otherEcosystemGuestPINCodes];
    v6 = [v4 unknownMatterGuestUniqueID];
    v7 = [v5 objectForKey:v6];
  }

  else
  {
    v5 = [v4 pinCodeValue];
    v7 = [(HFPinCodeDataStore *)self pinCodeForCodeValue:v5];
  }

  return v7;
}

- (id)pinCodeForCodeValue:(id)a3
{
  v4 = a3;
  v5 = [(HFPinCodeDataStore *)self guestPINCodes];
  v6 = [v5 objectForKey:v4];

  if (!v6)
  {
    v7 = [(HFPinCodeDataStore *)self userPINCodes];
    v6 = [v7 objectForKey:v4];
  }

  return v6;
}

- (id)guestPinCodeFromItem:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HFPinCodeDataStore *)self guestPINCodes];
  v6 = [v4 pinCodeValue];
  v7 = [v5 objectForKey:v6];

  if (!v7)
  {
    if (![v4 isUnknownGuestFromMatter])
    {
      goto LABEL_4;
    }

    v8 = [(HFPinCodeDataStore *)self otherEcosystemGuestPINCodes];
    v9 = [v4 unknownMatterGuestUniqueID];
    v7 = [v8 objectForKey:v9];

    if (!v7)
    {
LABEL_4:
      v10 = [(HFPinCodeDataStore *)self userPINCodes];
      v11 = [v4 pinCodeValue];
      v12 = [v10 objectForKey:v11];

      if (v12)
      {
        v13 = HFLogForCategory(0x37uLL);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v16 = 136315138;
          v17 = "[HFPinCodeDataStore guestPinCodeFromItem:]";
          _os_log_error_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_ERROR, "(%s) Expected a guest PIN Code, but found a user code instead.", &v16, 0xCu);
        }
      }

      v7 = 0;
    }
  }

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)updateWithPinCode:(id)a3 forOldCodeValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [v6 pinCodeValue];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __56__HFPinCodeDataStore_updateWithPinCode_forOldCodeValue___block_invoke;
    aBlock[3] = &unk_277DFCC78;
    v9 = v7;
    v19 = v9;
    v20 = v8;
    v21 = v6;
    v10 = v8;
    v11 = _Block_copy(aBlock);
    v12 = [(HFPinCodeDataStore *)self guestPINCodes];
    v13 = [v12 objectForKey:v9];

    if (v13)
    {
      v14 = [(HFPinCodeDataStore *)self guestPINCodes];
    }

    else
    {
      v15 = [(HFPinCodeDataStore *)self userPINCodes];
      v16 = [v15 objectForKey:v9];

      if (!v16)
      {
        NSLog(&cfstr_CouldNotFindPi.isa);
        goto LABEL_8;
      }

      v14 = [(HFPinCodeDataStore *)self userPINCodes];
    }

    v17 = v14;
    v11[2](v11, v14);

LABEL_8:
    goto LABEL_9;
  }

  NSLog(&cfstr_TryingToUpdate.isa);
LABEL_9:
}

void __56__HFPinCodeDataStore_updateWithPinCode_forOldCodeValue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) isEqualToString:*(a1 + 40)] & 1) == 0)
  {
    [v3 removeObjectForKey:*(a1 + 32)];
  }

  [v3 setValue:*(a1 + 48) forKey:*(a1 + 40)];
}

@end