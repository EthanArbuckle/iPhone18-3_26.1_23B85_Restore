@interface EDBusinessCommonPrefixGroupingUpgradeStep
+ (BOOL)_deleteExistingBusinessesWithConnection:(id)a3 error:(id *)a4;
+ (BOOL)_persistBusinesses:(id)a3 connection:(id)a4 error:(id *)a5;
+ (BOOL)_shouldUseSimpleAddressForHighLevelDomain:(id)a3 displayName:(id)a4;
+ (BOOL)runWithConnection:(id)a3 error:(id *)a4;
+ (id)_commonDomains;
+ (id)_getGroupableAndUngroupableAddresses:(id *)a3 connection:(id)a4 error:(id *)a5;
+ (id)_groupAddresses:(id)a3;
+ (id)log;
+ (void)_resetGroupingDefault;
@end

@implementation EDBusinessCommonPrefixGroupingUpgradeStep

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__EDBusinessCommonPrefixGroupingUpgradeStep_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_16 != -1)
  {
    dispatch_once(&log_onceToken_16, block);
  }

  v2 = log_log_16;

  return v2;
}

void __48__EDBusinessCommonPrefixGroupingUpgradeStep_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_16;
  log_log_16 = v1;
}

+ (BOOL)runWithConnection:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([a1 _deleteExistingBusinessesWithConnection:v6 error:a4])
  {
    v18 = 0;
    v7 = [a1 _getGroupableAndUngroupableAddresses:&v18 connection:v6 error:a4];
    v8 = v18;
    if (v7)
    {
      v9 = [a1 _groupAddresses:v7];
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __69__EDBusinessCommonPrefixGroupingUpgradeStep_runWithConnection_error___block_invoke;
      v16 = &unk_1E8250D70;
      v10 = v9;
      v17 = v10;
      [v8 enumerateKeysAndObjectsUsingBlock:&v13];
      v11 = [a1 _persistBusinesses:v10 connection:v6 error:{a4, v13, v14, v15, v16}];
      if (v11)
      {
        [a1 _resetGroupingDefault];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __69__EDBusinessCommonPrefixGroupingUpgradeStep_runWithConnection_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  v6 = [v5 emailAddressValue];
  v7 = [v6 simpleAddress];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [v5 stringValue];
  }

  v10 = v9;

  v11 = MEMORY[0x1E699B848];
  v12 = [v10 lowercaseString];
  v13 = [v11 pairWithFirst:v12 second:&stru_1F45B4608];

  v14 = [*(a1 + 32) objectForKeyedSubscript:v13];
  v15 = v14;
  if (v14)
  {
    [v14 addObject:v16];
  }

  else
  {
    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v16, 0}];
    [*(a1 + 32) setObject:? forKeyedSubscript:?];
  }
}

+ (BOOL)_deleteExistingBusinessesWithConnection:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x1E699B8E8]) initWithTable:@"businesses"];
  if ([v5 executeDeleteStatement:v6 error:a4])
  {
    v7 = [objc_alloc(MEMORY[0x1E699B8E8]) initWithTable:@"business_categories"];
    if ([v5 executeDeleteStatement:v7 error:a4])
    {
      v8 = [objc_alloc(MEMORY[0x1E699B8E8]) initWithTable:@"business_addresses"];
      v9 = [v5 executeDeleteStatement:v8 error:a4];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_getGroupableAndUngroupableAddresses:(id *)a3 connection:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"ROWID" table:@"addresses"];
  [v11 addResultColumn:@"address"];
  [v11 addResultColumn:@"comment"];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __99__EDBusinessCommonPrefixGroupingUpgradeStep__getGroupableAndUngroupableAddresses_connection_error___block_invoke;
  v17[3] = &unk_1E8250D98;
  v12 = v10;
  v18 = v12;
  v20 = a1;
  v13 = v9;
  v19 = v13;
  if ([v8 executeSelectStatement:v11 withBlock:v17 error:a5])
  {
    if (a3)
    {
      v14 = v12;
      *a3 = v12;
    }

    v15 = v13;
  }

  else
  {
    v15 = 0;
    if (a3)
    {
      *a3 = 0;
    }
  }

  return v15;
}

void __99__EDBusinessCommonPrefixGroupingUpgradeStep__getGroupableAndUngroupableAddresses_connection_error___block_invoke(uint64_t a1, void *a2)
{
  v18 = a2;
  v4 = [v18 objectAtIndexedSubscript:0];
  v5 = [v4 numberValue];

  v6 = [v18 objectAtIndexedSubscript:1];
  v7 = [v6 stringValue];

  v8 = [v18 objectAtIndexedSubscript:2];
  v9 = [v8 stringValue];

  v10 = [objc_alloc(MEMORY[0x1E699B248]) initWithString:v7];
  [v10 setDisplayName:v9];
  v11 = [v10 emailAddressValue];
  v12 = [v11 simpleAddress];

  if (v12)
  {
    v13 = [v11 highLevelDomainStrippingTopLevelDomain];
    v14 = [*(a1 + 48) _shouldUseSimpleAddressForHighLevelDomain:v13 displayName:v9];
    v15 = 40;
    if (v14)
    {
      v15 = 32;
    }

    [*(a1 + v15) setObject:v11 forKeyedSubscript:v5];
  }

  else
  {
    v13 = [v11 stringValue];
    v16 = v13;
    if (!v13)
    {
      v17 = [v10 stringValue];
      v2 = v17;
      if (v17)
      {
        v16 = v17;
      }

      else
      {
        v16 = v7;
      }
    }

    [*(a1 + 32) setObject:v16 forKeyedSubscript:v5];
    if (!v13)
    {
    }
  }
}

+ (BOOL)_shouldUseSimpleAddressForHighLevelDomain:(id)a3 displayName:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length] && (objc_msgSend(v7, "ef_stringByTrimmingWhitespaceAndNewlineCharacters"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "length"), v8, v9))
  {
    v10 = [a1 _commonDomains];
    v11 = [v10 containsObject:v6];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

+ (id)_commonDomains
{
  if (_commonDomains_onceToken != -1)
  {
    +[EDBusinessCommonPrefixGroupingUpgradeStep _commonDomains];
  }

  v3 = _commonDomains_sCommonDomains;

  return v3;
}

void __59__EDBusinessCommonPrefixGroupingUpgradeStep__commonDomains__block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F45E6E50];
  v1 = _commonDomains_sCommonDomains;
  _commonDomains_sCommonDomains = v0;
}

+ (id)_groupAddresses:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__EDBusinessCommonPrefixGroupingUpgradeStep__groupAddresses___block_invoke;
  v11[3] = &unk_1E8250D70;
  v5 = v4;
  v12 = v5;
  [v3 enumerateKeysAndObjectsUsingBlock:v11];
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__EDBusinessCommonPrefixGroupingUpgradeStep__groupAddresses___block_invoke_2;
  v9[3] = &unk_1E8250DC0;
  v7 = v6;
  v10 = v7;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];

  return v7;
}

void __61__EDBusinessCommonPrefixGroupingUpgradeStep__groupAddresses___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [v5 emailAddressValue];
  v7 = [v6 highLevelDomain];
  v8 = [v7 lowercaseString];

  v9 = [*(a1 + 32) objectForKeyedSubscript:v8];
  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [*(a1 + 32) setObject:? forKeyedSubscript:?];
  }

  [v9 setObject:v5 forKeyedSubscript:v10];
}

void __61__EDBusinessCommonPrefixGroupingUpgradeStep__groupAddresses___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(_EDDisplayNameGroupingTrie);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __61__EDBusinessCommonPrefixGroupingUpgradeStep__groupAddresses___block_invoke_3;
  v16[3] = &unk_1E8250D70;
  v8 = v7;
  v17 = v8;
  [v6 enumerateKeysAndObjectsUsingBlock:v16];
  v9 = [(_EDDisplayNameGroupingTrie *)v8 findGroups];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__EDBusinessCommonPrefixGroupingUpgradeStep__groupAddresses___block_invoke_4;
  v12[3] = &unk_1E82506B0;
  v10 = v6;
  v13 = v10;
  v11 = v5;
  v14 = v11;
  v15 = *(a1 + 32);
  [v9 enumerateKeysAndObjectsUsingBlock:v12];
}

void __61__EDBusinessCommonPrefixGroupingUpgradeStep__groupAddresses___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = *(a1 + 32);
  v6 = [a3 emailAddressValue];
  v7 = [v6 displayName];
  [v5 insertDisplayName:v7 addressID:v8];
}

void __61__EDBusinessCommonPrefixGroupingUpgradeStep__groupAddresses___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = a3;
  v5 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v6 = [v5 emailAddressValue];
  v7 = [v6 displayName];
  v8 = v7;
  v9 = &stru_1F45B4608;
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  v11 = [MEMORY[0x1E699B848] pairWithFirst:*(a1 + 40) second:v10];
  v12 = [v13 mutableCopy];
  [*(a1 + 48) setObject:v12 forKeyedSubscript:v11];
}

+ (BOOL)_persistBusinesses:(id)a3 connection:(id)a4 error:(id *)a5
{
  v7 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 1;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2;
  v21 = __Block_byref_object_dispose__2;
  v22 = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v16[3] = 1;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __81__EDBusinessCommonPrefixGroupingUpgradeStep__persistBusinesses_connection_error___block_invoke;
  v11[3] = &unk_1E8250DE8;
  v13 = v16;
  v14 = &v23;
  v8 = v7;
  v12 = v8;
  v15 = &v17;
  [a3 enumerateKeysAndObjectsUsingBlock:v11];
  if (a5)
  {
    *a5 = v18[5];
  }

  v9 = *(v24 + 24);

  _Block_object_dispose(v16, 8);
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  return v9;
}

void __81__EDBusinessCommonPrefixGroupingUpgradeStep__persistBusinesses_connection_error___block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v22 = a4;
  v34 = *MEMORY[0x1E69E9840];
  v24 = a2;
  v23 = a3;
  v25 = [objc_alloc(MEMORY[0x1E699B910]) initWithTable:@"businesses"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(*(a1[5] + 8) + 24)];
  [v25 setObject:v6 forKeyedSubscript:@"ROWID"];

  v7 = [v24 first];
  [v25 setObject:v7 forKeyedSubscript:@"domain"];

  v8 = [v24 second];
  [v25 setObject:v8 forKeyedSubscript:@"address_comment"];

  v9 = a1[4];
  v10 = *(a1[7] + 8);
  obj = *(v10 + 40);
  LOBYTE(v8) = [v9 executeInsertStatement:v25 error:&obj];
  objc_storeStrong((v10 + 40), obj);
  *(*(a1[6] + 8) + 24) = v8;
  if (*(*(a1[6] + 8) + 24))
  {
    v11 = [objc_alloc(MEMORY[0x1E699B910]) initWithTable:@"business_addresses"];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = v23;
    v12 = [v26 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v12)
    {
      v13 = *v29;
      do
      {
        v14 = 0;
        do
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(v26);
          }

          v15 = *(*(&v28 + 1) + 8 * v14);
          v16 = [v11 addValue];
          v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(*(a1[5] + 8) + 24)];
          [v16 setObject:v17 forKeyedSubscript:@"business"];

          [v16 setObject:v15 forKeyedSubscript:@"address"];
          ++v14;
        }

        while (v12 != v14);
        v12 = [v26 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v12);
    }

    v18 = a1[4];
    v19 = *(a1[7] + 8);
    v27 = *(v19 + 40);
    v20 = [v18 executeInsertStatement:v11 error:&v27];
    objc_storeStrong((v19 + 40), v27);
    *(*(a1[6] + 8) + 24) = v20;
    if (*(*(a1[6] + 8) + 24))
    {
      ++*(*(a1[5] + 8) + 24);
    }

    else
    {
      *v22 = 1;
    }
  }

  else
  {
    *v22 = 1;
  }

  v21 = *MEMORY[0x1E69E9840];
}

+ (void)_resetGroupingDefault
{
  if (_resetGroupingDefault_onceToken != -1)
  {
    +[EDBusinessCommonPrefixGroupingUpgradeStep _resetGroupingDefault];
  }

  v3 = _resetGroupingDefault_userDefaults;

  [v3 removeObjectForKey:@"PreferredGroupedSenderGroupingLogic"];
}

void __66__EDBusinessCommonPrefixGroupingUpgradeStep__resetGroupingDefault__block_invoke()
{
  v0 = [MEMORY[0x1E696AC08] defaultManager];
  v1 = [v0 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.mail"];

  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"group.com.apple.mail"];
  v3 = _resetGroupingDefault_userDefaults;
  _resetGroupingDefault_userDefaults = v2;
}

@end