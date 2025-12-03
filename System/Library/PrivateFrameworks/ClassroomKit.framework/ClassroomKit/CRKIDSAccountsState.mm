@interface CRKIDSAccountsState
+ (id)stateForAccounts:(id)accounts;
- (BOOL)isEqual:(id)equal;
- (CRKIDSAccountsState)init;
- (CRKIDSAccountsState)initWithActiveLoginIDs:(id)ds inactiveLoginIDs:(id)iDs;
- (NSDictionary)debugInfo;
- (id)description;
- (unint64_t)summary;
@end

@implementation CRKIDSAccountsState

+ (id)stateForAccounts:(id)accounts
{
  v26 = *MEMORY[0x277D85DE8];
  accountsCopy = accounts;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = accountsCopy;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        isActive = [v12 isActive];
        loginID = [v12 loginID];
        if (isActive)
        {
          v15 = v5;
        }

        else
        {
          v15 = v6;
        }

        [v15 addObject:loginID];
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v16 = [self alloc];
  v17 = [v5 copy];
  v18 = [v6 copy];
  v19 = [v16 initWithActiveLoginIDs:v17 inactiveLoginIDs:v18];

  return v19;
}

- (CRKIDSAccountsState)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [(CRKIDSAccountsState *)self initWithActiveLoginIDs:v3 inactiveLoginIDs:v4];

  return v5;
}

- (CRKIDSAccountsState)initWithActiveLoginIDs:(id)ds inactiveLoginIDs:(id)iDs
{
  dsCopy = ds;
  iDsCopy = iDs;
  v14.receiver = self;
  v14.super_class = CRKIDSAccountsState;
  v8 = [(CRKIDSAccountsState *)&v14 init];
  if (v8)
  {
    v9 = [dsCopy copy];
    activeLoginIDs = v8->_activeLoginIDs;
    v8->_activeLoginIDs = v9;

    v11 = [iDsCopy copy];
    inactiveLoginIDs = v8->_inactiveLoginIDs;
    v8->_inactiveLoginIDs = v11;
  }

  return v8;
}

- (unint64_t)summary
{
  activeLoginIDs = [(CRKIDSAccountsState *)self activeLoginIDs];
  if ([activeLoginIDs count])
  {
  }

  else
  {
    inactiveLoginIDs = [(CRKIDSAccountsState *)self inactiveLoginIDs];
    v5 = [inactiveLoginIDs count];

    if (!v5)
    {
      return 0;
    }
  }

  activeLoginIDs2 = [(CRKIDSAccountsState *)self activeLoginIDs];
  v7 = [activeLoginIDs2 count];

  if (v7)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (NSDictionary)debugInfo
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"summary";
  summary = [(CRKIDSAccountsState *)self summary];
  if (summary > 2)
  {
    v4 = @"UNKNOWN-ThisIsABug";
  }

  else
  {
    v4 = off_278DC2FB8[summary];
  }

  v10[0] = v4;
  v9[1] = @"activeLoginIDs";
  activeLoginIDs = [(CRKIDSAccountsState *)self activeLoginIDs];
  v10[1] = activeLoginIDs;
  v9[2] = @"inactiveLoginIDs";
  inactiveLoginIDs = [(CRKIDSAccountsState *)self inactiveLoginIDs];
  v10[2] = inactiveLoginIDs;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  v30 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  v5 = [@"activeLoginIDs inactiveLoginIDs"];
  v6 = [v5 mutableCopy];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __crk_tokenized_properties_block_invoke_17;
  v28[3] = &unk_278DC1280;
  v7 = v6;
  v29 = v7;
  [v7 enumerateObjectsUsingBlock:v28];

  selfCopy = self;
  v9 = equalCopy;
  v10 = v7;
  if (selfCopy == v9)
  {
    v21 = 1;
  }

  else if ([(CRKIDSAccountsState *)v9 isMemberOfClass:objc_opt_class()])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v23 = v10;
      v14 = *v25;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v24 + 1) + 8 * i);
          v17 = v9;
          v18 = [(CRKIDSAccountsState *)selfCopy valueForKey:v16];
          v19 = [(CRKIDSAccountsState *)v17 valueForKey:v16];

          if (v18 | v19)
          {
            v20 = [v18 isEqual:v19];

            if (!v20)
            {
              v21 = 0;
              goto LABEL_16;
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }

      v21 = 1;
LABEL_16:
      v10 = v23;
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  summary = [(CRKIDSAccountsState *)self summary];
  if (summary > 2)
  {
    v6 = @"UNKNOWN-ThisIsABug";
  }

  else
  {
    v6 = off_278DC2FB8[summary];
  }

  activeLoginIDs = [(CRKIDSAccountsState *)self activeLoginIDs];
  crk_stableDescription = [activeLoginIDs crk_stableDescription];
  inactiveLoginIDs = [(CRKIDSAccountsState *)self inactiveLoginIDs];
  crk_stableDescription2 = [inactiveLoginIDs crk_stableDescription];
  v11 = [v3 stringWithFormat:@"<%@: %p { summary = %@, activeLoginIDs = %@, inactiveLoginIDs = %@ }>", v4, self, v6, crk_stableDescription, crk_stableDescription2];

  return v11;
}

@end