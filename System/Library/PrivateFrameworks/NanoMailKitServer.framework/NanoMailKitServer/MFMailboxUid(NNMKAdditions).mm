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
  v2 = [MEMORY[0x277D2BCF8] sharedInstance];
  v3 = [v2 getActivePairedDevice];

  v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"D8A5B9F1-722E-436E-B616-1398AEB94F1B"];
  v5 = [v3 supportsCapability:v4];

  if (v5)
  {
    v6 = [a1 URL];
    v7 = [v6 absoluteString];

    if (v7 && [v7 length])
    {
      v8 = v7;
    }

    else
    {
      v12 = [a1 account];
      v13 = [v12 nano_accountId];
      v14 = [a1 name];
      v8 = [NNMKMailbox generateLegacyMailboxIdWithAccountId:v13 mailboxName:v14];

      v15 = qword_28144D620;
      if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
      {
        [(MFMailboxUid(NNMKAdditions) *)v8 nano_mailboxId];
      }
    }
  }

  else
  {
    v9 = [a1 account];
    v10 = [v9 nano_accountId];
    v11 = [a1 name];
    v8 = [NNMKMailbox generateLegacyMailboxIdWithAccountId:v10 mailboxName:v11];
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
  if ([a1 type] == 7)
  {
    [a1 displayNameUsingSpecialNames];
  }

  else
  {
    [a1 displayName];
  }
  v2 = ;

  return v2;
}

- (NNMKMailbox)nano_mailbox
{
  v2 = objc_alloc_init(NNMKMailbox);
  v3 = [a1 displayName];
  [(NNMKMailbox *)v2 setCustomName:v3];

  v4 = [a1 nano_mailboxId];
  [(NNMKMailbox *)v2 setMailboxId:v4];

  -[NNMKMailbox setType:](v2, "setType:", [a1 nano_mailboxType]);
  v5 = [a1 URL];
  [(NNMKMailbox *)v2 setUrl:v5];

  if ([(NNMKMailbox *)v2 type]== 1)
  {
    v6 = [a1 account];
    v7 = [v6 displayName];
    [(NNMKMailbox *)v2 setCustomName:v7];
  }

  v8 = [a1 account];
  v9 = [v8 nano_accountId];
  [(NNMKMailbox *)v2 setAccountId:v9];

  return v2;
}

- (uint64_t)nano_mailboxType
{
  v2 = [a1 type];
  v3 = 5;
  if (v2 > 7)
  {
    if (v2 <= 102)
    {
      if (v2 > 100)
      {
        if (v2 == 101)
        {
          return v3;
        }

        return 3;
      }

      if (v2 == 8)
      {
        return 8;
      }

      return v2 == 100;
    }

    if (v2 <= 104)
    {
      if (v2 == 103)
      {
        return 4;
      }

      return 2;
    }

    if (v2 == 105)
    {
      return 6;
    }

    if (v2 != 106)
    {
      return 0;
    }

    return 7;
  }

  if (v2 > 3)
  {
    if (v2 <= 5)
    {
      if (v2 != 4)
      {
        return 6;
      }

      return 2;
    }

    if (v2 != 6)
    {
      return 1;
    }

    return 7;
  }

  if (v2 > 1)
  {
    if (v2 != 2)
    {
      return 4;
    }

    return 3;
  }

  if (v2)
  {
    if (v2 != 1)
    {
      return 0;
    }
  }

  else
  {
    v4 = [a1 isNotesMailboxUid];
    v3 = 9;
    if (v4)
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
  v4 = a1;
  _os_log_error_impl(&dword_25B19F000, a2, OS_LOG_TYPE_ERROR, "Missing mailbox url and falling back to legacy id: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end