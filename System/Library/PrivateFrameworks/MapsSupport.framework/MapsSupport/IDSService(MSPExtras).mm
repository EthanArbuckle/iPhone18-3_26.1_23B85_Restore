@interface IDSService(MSPExtras)
+ (id)_msp_IDSIdentifierFor:()MSPExtras;
+ (id)_msp_IDSIdentifiersFor:()MSPExtras;
- (BOOL)_msp_hasValidIDSAccount;
- (id)_msp_accountFromIdentifier:()MSPExtras;
- (id)_msp_currentAccount;
- (id)_msp_currentAccountIdentifier;
- (id)_msp_removeSelfFrom:()MSPExtras;
@end

@implementation IDSService(MSPExtras)

- (BOOL)_msp_hasValidIDSAccount
{
  v1 = [a1 _msp_currentAccount];
  v2 = v1 != 0;

  return v2;
}

- (id)_msp_currentAccount
{
  v1 = [a1 accounts];
  v2 = [v1 allObjects];

  v3 = [v2 count];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4;
  v11 = __Block_byref_object_dispose__4;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__IDSService_MSPExtras___msp_currentAccount__block_invoke;
  v6[3] = &unk_279867EB0;
  v6[4] = &v7;
  v6[5] = v3;
  [v2 enumerateObjectsUsingBlock:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)_msp_currentAccountIdentifier
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [a1 _msp_currentAccount];
    v4 = [v3 aliasStrings];
    *buf = 138412290;
    v40 = v4;
    _os_log_impl(&dword_25813A000, v2, OS_LOG_TYPE_DEFAULT, "_msp_currentAccountIdentifier choosing from aliasStrings %@", buf, 0xCu);
  }

  v5 = [a1 _msp_currentAccount];
  v6 = [v5 aliasStrings];
  v7 = [v6 count];

  if (v7)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v8 = [a1 _msp_currentAccount];
    v9 = [v8 aliasStrings];

    v10 = [v9 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v34;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v34 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v33 + 1) + 8 * i);
          v15 = [a1 _msp_currentAccount];
          v16 = [v15 loginID];
          LOBYTE(v14) = [v14 isEqualToString:v16];

          if (v14)
          {
            v23 = [a1 _msp_currentAccount];
            v24 = [v23 loginID];
            goto LABEL_22;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v33 objects:v38 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v17 = [a1 _msp_currentAccount];
    v9 = [v17 aliasStrings];

    v18 = [v9 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v30;
      while (2)
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(v9);
          }

          v22 = *(*(&v29 + 1) + 8 * j);
          if ([v22 containsString:@"@"])
          {
            v26 = v22;
            goto LABEL_25;
          }
        }

        v19 = [v9 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    v9 = [a1 _msp_currentAccount];
    v23 = [v9 aliasStrings];
    v24 = [v23 objectAtIndexedSubscript:0];
LABEL_22:
    v25 = v24;
  }

  else
  {
    v9 = [a1 _msp_currentAccount];
    v26 = [v9 loginID];
LABEL_25:
    v25 = v26;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)_msp_accountFromIdentifier:()MSPExtras
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 accounts];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"uniqueID == %@", v4];
  v7 = [v5 filteredSetUsingPredicate:v6];

  v8 = [v7 allObjects];
  v9 = [v8 firstObject];

  v10 = MSPGetSharedTripLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v9)
  {
    if (v11)
    {
      *buf = 138412802;
      v17 = v9;
      v18 = 2112;
      v19 = v4;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_25813A000, v10, OS_LOG_TYPE_INFO, "_msp_accountFromIdentifier foundAccount %@ for identifier %@ from set %@", buf, 0x20u);
    }

    v12 = v9;
  }

  else
  {
    if (v11)
    {
      *buf = 138412546;
      v17 = v4;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_25813A000, v10, OS_LOG_TYPE_INFO, "_msp_accountFromIdentifier no account for identifier %@ from set %@", buf, 0x16u);
    }

    v13 = [v5 allObjects];
    v12 = [v13 firstObject];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_msp_removeSelfFrom:()MSPExtras
{
  v33 = *MEMORY[0x277D85DE8];
  v22 = a3;
  v4 = [v22 mutableCopy];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = [a1 activeAliases];
  v6 = [v5 copy];

  obj = v6;
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v12 = v22;
        v13 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v24;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v24 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v23 + 1) + 8 * j);
              if ([v17 containsString:v11])
              {
                [v4 removeObject:v17];
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v14);
        }
      }

      v8 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v8);
  }

  v18 = [v4 copy];
  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)_msp_IDSIdentifiersFor:()MSPExtras
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [objc_opt_class() _msp_IDSIdentifierFor:{*(*(&v14 + 1) + 8 * i), v14}];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)_msp_IDSIdentifierFor:()MSPExtras
{
  v3 = a3;
  v4 = [MEMORY[0x277D0EC70] sharedPlatform];
  if ([v4 isInternalInstall])
  {
    IsValid = MSPSharedTripVirtualReceiverIsValid(v3);

    if (IsValid)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  if (IDSIDHasToken())
  {
LABEL_6:
    v6 = v3;
    goto LABEL_8;
  }

  v6 = IDSCopyBestGuessIDForID();
LABEL_8:
  v7 = v6;

  return v7;
}

@end