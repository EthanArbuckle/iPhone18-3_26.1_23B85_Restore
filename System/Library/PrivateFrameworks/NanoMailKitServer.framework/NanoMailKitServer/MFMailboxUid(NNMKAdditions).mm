@interface MFMailboxUid(NNMKAdditions)
+ (uint64_t)nano_toMailboxType:()NNMKAdditions;
- (NNMKMailbox)nano_mailbox;
- (id)nano_displayName;
- (id)nano_mailboxId;
- (uint64_t)nano_mailboxType;
- (void)nano_mailboxId;
@end

@implementation MFMailboxUid(NNMKAdditions)

- (id)nano_mailboxId
{
  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  getActivePairedDevice = [mEMORY[0x277D2BCF8] getActivePairedDevice];

  v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"D8A5B9F1-722E-436E-B616-1398AEB94F1B"];
  v5 = [getActivePairedDevice supportsCapability:v4];

  if (v5)
  {
    v6 = [self URL];
    absoluteString = [v6 absoluteString];

    if (absoluteString && [absoluteString length])
    {
      v8 = absoluteString;
    }

    else
    {
      account = [self account];
      nano_accountId = [account nano_accountId];
      name = [self name];
      v8 = [NNMKMailbox generateLegacyMailboxIdWithAccountId:nano_accountId mailboxName:name];

      v15 = qword_28144D620;
      if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
      {
        [(MFMailboxUid(NNMKAdditions) *)v8 nano_mailboxId];
      }
    }
  }

  else
  {
    account2 = [self account];
    nano_accountId2 = [account2 nano_accountId];
    name2 = [self name];
    v8 = [NNMKMailbox generateLegacyMailboxIdWithAccountId:nano_accountId2 mailboxName:name2];
  }

  return v8;
}

+ (uint64_t)nano_toMailboxType:()NNMKAdditions
{
  if (a3 > 9)
  {
    return 1;
  }

  else
  {
    return qword_25B221BE8[a3];
  }
}

- (id)nano_displayName
{
  if ([self type] == 7)
  {
    [self displayNameUsingSpecialNames];
  }

  else
  {
    [self displayName];
  }
  v2 = ;

  return v2;
}

- (NNMKMailbox)nano_mailbox
{
  v2 = objc_alloc_init(NNMKMailbox);
  displayName = [self displayName];
  [(NNMKMailbox *)v2 setCustomName:displayName];

  nano_mailboxId = [self nano_mailboxId];
  [(NNMKMailbox *)v2 setMailboxId:nano_mailboxId];

  -[NNMKMailbox setType:](v2, "setType:", [self nano_mailboxType]);
  v5 = [self URL];
  [(NNMKMailbox *)v2 setUrl:v5];

  if ([(NNMKMailbox *)v2 type]== 1)
  {
    account = [self account];
    displayName2 = [account displayName];
    [(NNMKMailbox *)v2 setCustomName:displayName2];
  }

  account2 = [self account];
  nano_accountId = [account2 nano_accountId];
  [(NNMKMailbox *)v2 setAccountId:nano_accountId];

  return v2;
}

- (uint64_t)nano_mailboxType
{
  type = [self type];
  v3 = 5;
  if (type > 7)
  {
    if (type <= 102)
    {
      if (type > 100)
      {
        if (type == 101)
        {
          return v3;
        }

        return 3;
      }

      if (type == 8)
      {
        return 8;
      }

      return type == 100;
    }

    if (type <= 104)
    {
      if (type == 103)
      {
        return 4;
      }

      return 2;
    }

    if (type == 105)
    {
      return 6;
    }

    if (type != 106)
    {
      return 0;
    }

    return 7;
  }

  if (type > 3)
  {
    if (type <= 5)
    {
      if (type != 4)
      {
        return 6;
      }

      return 2;
    }

    if (type != 6)
    {
      return 1;
    }

    return 7;
  }

  if (type > 1)
  {
    if (type != 2)
    {
      return 4;
    }

    return 3;
  }

  if (type)
  {
    if (type != 1)
    {
      return 0;
    }
  }

  else
  {
    isNotesMailboxUid = [self isNotesMailboxUid];
    v3 = 9;
    if (isNotesMailboxUid)
    {
      return 0;
    }
  }

  return v3;
}

- (void)nano_mailboxId
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_25B19F000, a2, OS_LOG_TYPE_ERROR, "Missing mailbox url and falling back to legacy id: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end