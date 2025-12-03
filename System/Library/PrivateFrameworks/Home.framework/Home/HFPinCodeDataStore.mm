@interface HFPinCodeDataStore
- (HFPinCodeDataStore)init;
- (id)guestPinCodeFromItem:(id)item;
- (id)pinCodeForCodeValue:(id)value;
- (id)pinCodeFromItem:(id)item;
- (void)mergeData:(id)data;
- (void)updateWithPinCode:(id)code forOldCodeValue:(id)value;
@end

@implementation HFPinCodeDataStore

- (HFPinCodeDataStore)init
{
  v12.receiver = self;
  v12.super_class = HFPinCodeDataStore;
  v2 = [(HFPinCodeDataStore *)&v12 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    userPINCodes = v2->_userPINCodes;
    v2->_userPINCodes = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    removedUserPINCodes = v2->_removedUserPINCodes;
    v2->_removedUserPINCodes = dictionary2;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    guestPINCodes = v2->_guestPINCodes;
    v2->_guestPINCodes = dictionary3;

    dictionary4 = [MEMORY[0x277CBEB38] dictionary];
    otherEcosystemGuestPINCodes = v2->_otherEcosystemGuestPINCodes;
    v2->_otherEcosystemGuestPINCodes = dictionary4;
  }

  return v2;
}

- (void)mergeData:(id)data
{
  dataCopy = data;
  userPINCodes = [(HFPinCodeDataStore *)self userPINCodes];
  userPINCodes2 = [dataCopy userPINCodes];
  [userPINCodes addEntriesFromDictionary:userPINCodes2];

  removedUserPINCodes = [(HFPinCodeDataStore *)self removedUserPINCodes];
  removedUserPINCodes2 = [dataCopy removedUserPINCodes];
  [removedUserPINCodes addEntriesFromDictionary:removedUserPINCodes2];

  guestPINCodes = [(HFPinCodeDataStore *)self guestPINCodes];
  guestPINCodes2 = [dataCopy guestPINCodes];
  [guestPINCodes addEntriesFromDictionary:guestPINCodes2];

  currentUserPinCode = [dataCopy currentUserPinCode];

  if (currentUserPinCode)
  {
    currentUserPinCode2 = [dataCopy currentUserPinCode];
    [(HFPinCodeDataStore *)self setCurrentUserPinCode:currentUserPinCode2];
  }
}

- (id)pinCodeFromItem:(id)item
{
  itemCopy = item;
  if ([itemCopy isUnknownGuestFromMatter])
  {
    otherEcosystemGuestPINCodes = [(HFPinCodeDataStore *)self otherEcosystemGuestPINCodes];
    unknownMatterGuestUniqueID = [itemCopy unknownMatterGuestUniqueID];
    v7 = [otherEcosystemGuestPINCodes objectForKey:unknownMatterGuestUniqueID];
  }

  else
  {
    otherEcosystemGuestPINCodes = [itemCopy pinCodeValue];
    v7 = [(HFPinCodeDataStore *)self pinCodeForCodeValue:otherEcosystemGuestPINCodes];
  }

  return v7;
}

- (id)pinCodeForCodeValue:(id)value
{
  valueCopy = value;
  guestPINCodes = [(HFPinCodeDataStore *)self guestPINCodes];
  v6 = [guestPINCodes objectForKey:valueCopy];

  if (!v6)
  {
    userPINCodes = [(HFPinCodeDataStore *)self userPINCodes];
    v6 = [userPINCodes objectForKey:valueCopy];
  }

  return v6;
}

- (id)guestPinCodeFromItem:(id)item
{
  v18 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  guestPINCodes = [(HFPinCodeDataStore *)self guestPINCodes];
  pinCodeValue = [itemCopy pinCodeValue];
  v7 = [guestPINCodes objectForKey:pinCodeValue];

  if (!v7)
  {
    if (![itemCopy isUnknownGuestFromMatter])
    {
      goto LABEL_4;
    }

    otherEcosystemGuestPINCodes = [(HFPinCodeDataStore *)self otherEcosystemGuestPINCodes];
    unknownMatterGuestUniqueID = [itemCopy unknownMatterGuestUniqueID];
    v7 = [otherEcosystemGuestPINCodes objectForKey:unknownMatterGuestUniqueID];

    if (!v7)
    {
LABEL_4:
      userPINCodes = [(HFPinCodeDataStore *)self userPINCodes];
      pinCodeValue2 = [itemCopy pinCodeValue];
      v12 = [userPINCodes objectForKey:pinCodeValue2];

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

- (void)updateWithPinCode:(id)code forOldCodeValue:(id)value
{
  codeCopy = code;
  valueCopy = value;
  if (valueCopy)
  {
    pinCodeValue = [codeCopy pinCodeValue];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __56__HFPinCodeDataStore_updateWithPinCode_forOldCodeValue___block_invoke;
    aBlock[3] = &unk_277DFCC78;
    v9 = valueCopy;
    v19 = v9;
    v20 = pinCodeValue;
    v21 = codeCopy;
    v10 = pinCodeValue;
    v11 = _Block_copy(aBlock);
    guestPINCodes = [(HFPinCodeDataStore *)self guestPINCodes];
    v13 = [guestPINCodes objectForKey:v9];

    if (v13)
    {
      guestPINCodes2 = [(HFPinCodeDataStore *)self guestPINCodes];
    }

    else
    {
      userPINCodes = [(HFPinCodeDataStore *)self userPINCodes];
      v16 = [userPINCodes objectForKey:v9];

      if (!v16)
      {
        NSLog(&cfstr_CouldNotFindPi.isa);
        goto LABEL_8;
      }

      guestPINCodes2 = [(HFPinCodeDataStore *)self userPINCodes];
    }

    v17 = guestPINCodes2;
    v11[2](v11, guestPINCodes2);

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