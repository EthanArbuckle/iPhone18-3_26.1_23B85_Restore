@interface EDPopulateSendersTableMigrationStep
+ (BOOL)_clearSendersAddressesTableWithConnection:(id)a3;
+ (BOOL)_clearSendersTableWithConnection:(id)a3;
+ (BOOL)_insertGroupedSendersWithoutContact:(id)a3 withConnection:(id)a4;
+ (BOOL)_insertSenderWithAddresses:(id)a3 contact:(id)a4 connection:(id)a5 error:(id *)a6;
+ (BOOL)_insertSendersGroupedByContact:(id)a3 withConnection:(id)a4;
+ (BOOL)runWithConnection:(id)a3 sentMailboxURLs:(id)a4 contactStore:(id)a5;
+ (id)_addressesForSenderIDs:(id)a3 withConnection:(id)a4;
+ (id)_allSenderAddressIDsWithConnection:(id)a3 sentMailboxURLStrings:(id)a4;
+ (id)_combineDictionary:(id)a3 withDictionary:(id)a4;
+ (id)_senderIDsGroupedByContactsForEmailAddressesByContact:(id)a3 withConnection:(id)a4;
+ (id)_senderIDsGroupedByContactsForSenderAddressesToIDs:(id)a3 withContactStore:(id)a4 unmatchedEmailAddresses:(id *)a5 otherEmailAddressesByContact:(id *)a6;
+ (id)_senderIDsGroupedBySimpleAddressForEmailAddresses:(id)a3 senderIDsByEmailAddress:(id)a4;
@end

@implementation EDPopulateSendersTableMigrationStep

void ___ef_log_EDPopulateSendersTableMigrationStep_block_invoke()
{
  v0 = os_log_create("com.apple.email", "EDPopulateSendersTableMigrationStep");
  v1 = _ef_log_EDPopulateSendersTableMigrationStep_log;
  _ef_log_EDPopulateSendersTableMigrationStep_log = v0;
}

+ (BOOL)runWithConnection:(id)a3 sentMailboxURLs:(id)a4 contactStore:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([a1 _clearSendersAddressesTableWithConnection:v8] && objc_msgSend(a1, "_clearSendersTableWithConnection:", v8))
  {
    v11 = [v9 ef_compactMapSelector:sel_absoluteString];
    v12 = [a1 _allSenderAddressIDsWithConnection:v8 sentMailboxURLStrings:v11];
    if (v12)
    {
      v13 = [a1 _addressesForSenderIDs:v12 withConnection:v8];
      if (v13)
      {
        v22 = 0;
        v23 = 0;
        v14 = [a1 _senderIDsGroupedByContactsForSenderAddressesToIDs:v13 withContactStore:v10 unmatchedEmailAddresses:&v23 otherEmailAddressesByContact:&v22];
        v21 = v23;
        v20 = v22;
        v15 = [a1 _senderIDsGroupedByContactsForEmailAddressesByContact:? withConnection:?];
        v16 = [a1 _combineDictionary:v14 withDictionary:v15];

        if ([a1 _insertSendersGroupedByContact:v16 withConnection:v8])
        {
          v17 = [a1 _senderIDsGroupedBySimpleAddressForEmailAddresses:v21 senderIDsByEmailAddress:v13];
          v18 = [a1 _insertGroupedSendersWithoutContact:v17 withConnection:v8];
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)_allSenderAddressIDsWithConnection:(id)a3 sentMailboxURLStrings:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"address" table:@"recipients"];
  v8 = *MEMORY[0x1E699B768];
  v9 = [v7 join:@"addresses" sourceColumn:@"address" targetColumn:*MEMORY[0x1E699B768]];
  v10 = [v7 join:@"messages" sourceColumn:@"message" targetColumn:v8];
  v11 = [v10 join:@"mailboxes" sourceColumn:@"mailbox" targetColumn:v8];
  v12 = [MEMORY[0x1E699B8C8] table:@"mailboxes" column:@"url"];
  v13 = [v12 in:v6];
  [v7 setWhere:v13];

  v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __96__EDPopulateSendersTableMigrationStep__allSenderAddressIDsWithConnection_sentMailboxURLStrings___block_invoke;
  v23[3] = &unk_1E8250300;
  v15 = v14;
  v24 = v15;
  v22 = 0;
  v16 = [v5 executeSelectStatement:v7 withBlock:v23 error:&v22];
  v17 = v22;
  if (v16)
  {
    v18 = [v15 allObjects];
  }

  else
  {
    v19 = _ef_log_EDPopulateSendersTableMigrationStep();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [v17 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      +[EDPopulateSendersTableMigrationStep _allSenderAddressIDsWithConnection:sentMailboxURLStrings:];
    }

    v18 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v18;
}

void __96__EDPopulateSendersTableMigrationStep__allSenderAddressIDsWithConnection_sentMailboxURLStrings___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 objectAtIndexedSubscript:0];
  v3 = [v4 numberValue];
  [v2 addObject:v3];
}

+ (id)_addressesForSenderIDs:(id)a3 withConnection:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc(MEMORY[0x1E699B948]);
  v8 = *MEMORY[0x1E699B768];
  v9 = [v7 initWithResultColumn:*MEMORY[0x1E699B768] table:@"addresses"];
  [v9 addResultColumn:@"comment"];
  [v9 addResultColumn:@"address"];
  v10 = [MEMORY[0x1E699B8C8] column:v8];
  v11 = [v10 in:v5];
  [v9 setWhere:v11];

  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __77__EDPopulateSendersTableMigrationStep__addressesForSenderIDs_withConnection___block_invoke;
  v22[3] = &unk_1E8250300;
  v13 = v12;
  v23 = v13;
  v21 = 0;
  v14 = [v6 executeSelectStatement:v9 withBlock:v22 error:&v21];
  v15 = v21;
  v16 = v13;
  if ((v14 & 1) == 0)
  {
    v17 = _ef_log_EDPopulateSendersTableMigrationStep();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [v15 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      +[EDPopulateSendersTableMigrationStep _addressesForSenderIDs:withConnection:];
    }

    v16 = 0;
  }

  v18 = v16;

  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

void __77__EDPopulateSendersTableMigrationStep__addressesForSenderIDs_withConnection___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 objectAtIndexedSubscript:0];
  v4 = [v3 numberValue];

  v5 = [v11 objectAtIndexedSubscript:1];
  v6 = [v5 stringValue];

  v7 = [v11 objectAtIndexedSubscript:2];
  v8 = [v7 stringValue];

  v9 = [objc_alloc(MEMORY[0x1E699B248]) initWithString:v8];
  [v9 setDisplayName:v6];
  v10 = [v9 emailAddressValue];
  if (v10)
  {
    [*(a1 + 32) setObject:v4 forKeyedSubscript:v10];
  }
}

+ (id)_senderIDsGroupedByContactsForEmailAddressesByContact:(id)a3 withConnection:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc(MEMORY[0x1E699B948]);
  v8 = [v7 initWithResultColumn:*MEMORY[0x1E699B768] table:@"addresses"];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __108__EDPopulateSendersTableMigrationStep__senderIDsGroupedByContactsForEmailAddressesByContact_withConnection___block_invoke;
  v13[3] = &unk_1E8255DC0;
  v14 = v8;
  v9 = v6;
  v15 = v9;
  v10 = v8;
  v11 = [v5 ef_mapValues:v13];

  return v11;
}

id __108__EDPopulateSendersTableMigrationStep__senderIDsGroupedByContactsForEmailAddressesByContact_withConnection___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v24 = a2;
  v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v24;
  v3 = [obj countByEnumeratingWithState:&v30 objects:v35 count:{16, v24}];
  if (v3)
  {
    v4 = *v31;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v31 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v30 + 1) + 8 * i);
        v7 = [v6 simpleAddress];
        if (!v7 || ([v6 simpleAddress], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "length") == 0, v8, v7, v9))
        {
          v12 = _ef_log_EDPopulateSendersTableMigrationStep();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_INFO, "Skipping sender because simple address is nil", buf, 2u);
          }
        }

        else
        {
          v10 = [MEMORY[0x1E699B8C8] column:@"address"];
          v11 = [v6 simpleAddress];
          v12 = [v10 equalTo:v11];

          v13 = [v6 displayName];
          v14 = v13;
          if (v13 && [v13 length])
          {
            v15 = [MEMORY[0x1E699B8C8] column:@"comment"];
            v16 = [v15 equalTo:v14];

            v17 = objc_alloc(MEMORY[0x1E699B898]);
            v34[0] = v12;
            v34[1] = v16;
            v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
            v19 = [v17 initWithExpressions:v18];
            [*(a1 + 32) setWhere:v19];
          }

          else
          {
            [*(a1 + 32) setWhere:v12];
          }

          v21 = *(a1 + 32);
          v20 = *(a1 + 40);
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __108__EDPopulateSendersTableMigrationStep__senderIDsGroupedByContactsForEmailAddressesByContact_withConnection___block_invoke_54;
          v27[3] = &unk_1E8250300;
          v28 = v25;
          [v20 executeSelectStatement:v21 withBlock:v27 error:0];
        }
      }

      v3 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v3);
  }

  v22 = *MEMORY[0x1E69E9840];

  return v25;
}

void __108__EDPopulateSendersTableMigrationStep__senderIDsGroupedByContactsForEmailAddressesByContact_withConnection___block_invoke_54(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 objectAtIndexedSubscript:0];
  v3 = [v4 numberValue];
  [v2 addObject:v3];
}

+ (BOOL)_insertSendersGroupedByContact:(id)a3 withConnection:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 1;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__32;
  v24 = __Block_byref_object_dispose__32;
  v25 = 0;
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __85__EDPopulateSendersTableMigrationStep__insertSendersGroupedByContact_withConnection___block_invoke;
  v15 = &unk_1E8255DE8;
  v17 = &v26;
  v19 = a1;
  v7 = v6;
  v16 = v7;
  v18 = &v20;
  [a3 enumerateKeysAndObjectsUsingBlock:&v12];
  if (v27[3])
  {
    v8 = 1;
  }

  else
  {
    v9 = _ef_log_EDPopulateSendersTableMigrationStep();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [v21[5] ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      +[EDPopulateSendersTableMigrationStep _insertSendersGroupedByContact:withConnection:];
    }

    v8 = *(v27 + 24);
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  v10 = *MEMORY[0x1E69E9840];
  return v8 & 1;
}

void __85__EDPopulateSendersTableMigrationStep__insertSendersGroupedByContact_withConnection___block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a1[4];
  v10 = a1[7];
  v11 = *(a1[6] + 8);
  obj = *(v11 + 40);
  v12 = [v10 _insertSenderWithAddresses:v8 contact:v7 connection:v9 error:&obj];
  objc_storeStrong((v11 + 40), obj);
  *(*(a1[5] + 8) + 24) = v12;
  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }
}

+ (BOOL)_insertGroupedSendersWithoutContact:(id)a3 withConnection:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v6;
  v9 = 0;
  v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = *v22;
    while (2)
    {
      v12 = 0;
      v13 = v9;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v21 + 1) + 8 * v12);
        v20 = v13;
        v15 = [a1 _insertSenderWithAddresses:v14 contact:0 connection:v7 error:&v20];
        v9 = v20;

        if ((v15 & 1) == 0)
        {

          v17 = _ef_log_EDPopulateSendersTableMigrationStep();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            [v9 ef_publicDescription];
            objc_claimAutoreleasedReturnValue();
            +[EDPopulateSendersTableMigrationStep _insertGroupedSendersWithoutContact:withConnection:];
          }

          v16 = 0;
          goto LABEL_13;
        }

        ++v12;
        v13 = v9;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v16 = 1;
  v17 = v8;
LABEL_13:

  v18 = *MEMORY[0x1E69E9840];
  return v16;
}

+ (BOOL)_clearSendersTableWithConnection:(id)a3
{
  v10[4] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E699B8E8]) initWithTable:@"senders"];
  v10[0] = 0;
  v5 = [v3 executeDeleteStatement:v4 error:v10];
  v6 = v10[0];
  if (v6)
  {
    v7 = _ef_log_EDPopulateSendersTableMigrationStep();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [v6 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      +[EDPopulateSendersTableMigrationStep _clearSendersTableWithConnection:];
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (BOOL)_clearSendersAddressesTableWithConnection:(id)a3
{
  v10[4] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E699B8E8]) initWithTable:@"sender_addresses"];
  v10[0] = 0;
  v5 = [v3 executeDeleteStatement:v4 error:v10];
  v6 = v10[0];
  if (v6)
  {
    v7 = _ef_log_EDPopulateSendersTableMigrationStep();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [v6 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      +[EDPopulateSendersTableMigrationStep _clearSendersAddressesTableWithConnection:];
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (BOOL)_insertSenderWithAddresses:(id)a3 contact:(id)a4 connection:(id)a5 error:(id *)a6
{
  v33 = *MEMORY[0x1E69E9840];
  v23 = a3;
  v25 = a4;
  v8 = a5;
  v24 = v8;
  v26 = [objc_alloc(MEMORY[0x1E699B910]) initWithTable:@"senders"];
  [v26 setObject:&unk_1F45E68B0 forKeyedSubscript:@"bucket"];
  [v26 setObject:&unk_1F45E68C8 forKeyedSubscript:@"user_initiated"];
  if (v25)
  {
    v9 = [v25 identifier];
    [v26 setObject:v9 forKeyedSubscript:@"contact_identifier"];
  }

  if ([v8 executeInsertStatement:v26 error:{a6, a6}])
  {
    v10 = [objc_alloc(MEMORY[0x1E699B910]) initWithTable:@"sender_addresses" conflictResolution:4];
    v11 = [v8 lastInsertedDatabaseID];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v23;
    v12 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v12)
    {
      v13 = *v29;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v28 + 1) + 8 * i);
          v16 = [v10 addValue];
          [v16 setObject:v15 forKeyedSubscript:@"address"];
          v17 = [MEMORY[0x1E696AD98] numberWithLongLong:v11];
          [v16 setObject:v17 forKeyedSubscript:@"sender"];
        }

        v12 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v12);
    }

    v18 = [v24 executeInsertStatement:v10 error:v22];
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

+ (id)_senderIDsGroupedByContactsForSenderAddressesToIDs:(id)a3 withContactStore:(id)a4 unmatchedEmailAddresses:(id *)a5 otherEmailAddressesByContact:(id *)a6
{
  v46[3] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = *MEMORY[0x1E695C230];
  v46[0] = *MEMORY[0x1E695C240];
  v46[1] = v11;
  v46[2] = *MEMORY[0x1E695C208];
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:3];
  v13 = [v9 allKeys];
  v34 = [v13 ef_compactMapSelector:sel_simpleAddress];

  v31 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v34];
  v33 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __160__EDPopulateSendersTableMigrationStep__senderIDsGroupedByContactsForSenderAddressesToIDs_withContactStore_unmatchedEmailAddresses_otherEmailAddressesByContact___block_invoke;
  v38[3] = &unk_1E8255E10;
  v15 = v10;
  v39 = v15;
  v16 = v12;
  v40 = v16;
  v17 = v33;
  v41 = v17;
  v18 = v9;
  v42 = v18;
  v19 = v31;
  v43 = v19;
  v20 = v32;
  v44 = v20;
  v21 = v14;
  v45 = v21;
  [v18 enumerateKeysAndObjectsUsingBlock:v38];
  v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __160__EDPopulateSendersTableMigrationStep__senderIDsGroupedByContactsForSenderAddressesToIDs_withContactStore_unmatchedEmailAddresses_otherEmailAddressesByContact___block_invoke_2;
  v35[3] = &unk_1E8255E38;
  v23 = v16;
  v36 = v23;
  v37 = v22;
  v24 = v22;
  [v20 enumerateKeysAndObjectsUsingBlock:v35];
  v25 = v21;
  *a5 = v21;
  v26 = v24;
  *a6 = v24;
  v27 = v37;
  v28 = v17;

  v29 = *MEMORY[0x1E69E9840];
  return v17;
}

void __160__EDPopulateSendersTableMigrationStep__senderIDsGroupedByContactsForSenderAddressesToIDs_withContactStore_unmatchedEmailAddresses_otherEmailAddressesByContact___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v23 = a2;
  v24 = a3;
  v5 = [*(a1 + 32) em_fetchContactForEmailAddress:v23 keysToFetch:*(a1 + 40) createIfNeeded:0];
  if (v5)
  {
    v6 = [*(a1 + 48) objectForKeyedSubscript:v5];
    if (v6)
    {
      v22 = v6;
      [v6 addObject:v24];
    }

    else
    {
      v22 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v24, 0, 0}];
      [*(a1 + 48) setObject:? forKeyedSubscript:?];
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = [v5 emailAddresses];
    v8 = [v7 ef_compactMapSelector:sel_value];

    v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v9)
    {
      v10 = *v26;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = [*(*(&v25 + 1) + 8 * i) emailAddressValue];
          v13 = v12;
          if (v12)
          {
            v14 = [v12 displayName];

            if (v14)
            {
              v15 = [*(a1 + 56) objectForKeyedSubscript:v13];
              v16 = v15 == 0;

              if (!v16)
              {
                goto LABEL_20;
              }
            }

            else
            {
              v17 = *(a1 + 64);
              v18 = [v13 simpleAddress];
              LOBYTE(v17) = [v17 containsObject:v18];

              if (v17)
              {
                goto LABEL_20;
              }
            }

            v19 = [*(a1 + 72) objectForKeyedSubscript:v13];
            v20 = v19;
            if (v19)
            {
              [v19 ef_addObjectIfAbsent:v5];
            }

            else
            {
              v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v5, 0}];
              [*(a1 + 72) setObject:? forKeyedSubscript:?];
            }
          }

LABEL_20:
        }

        v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v9);
    }
  }

  else
  {
    [*(a1 + 80) addObject:v23];
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __160__EDPopulateSendersTableMigrationStep__senderIDsGroupedByContactsForSenderAddressesToIDs_withContactStore_unmatchedEmailAddresses_otherEmailAddressesByContact___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = MEMORY[0x1E695CD58];
  v7 = [v11 displayName];
  v8 = [v6 em_bestMatchForName:v7 fromContacts:v5 keysToCheck:*(a1 + 32)];

  if (v8)
  {
    v9 = [*(a1 + 40) objectForKeyedSubscript:v8];
    v10 = v9;
    if (v9)
    {
      [v9 ef_addObjectIfAbsent:v11];
    }

    else
    {
      v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v11, 0}];
      [*(a1 + 40) setObject:? forKeyedSubscript:?];
    }
  }
}

+ (id)_senderIDsGroupedBySimpleAddressForEmailAddresses:(id)a3 senderIDsByEmailAddress:(id)a4
{
  v5 = a4;
  v6 = [a3 ef_groupBy:&__block_literal_global_73_2];
  v7 = [v6 allValues];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __113__EDPopulateSendersTableMigrationStep__senderIDsGroupedBySimpleAddressForEmailAddresses_senderIDsByEmailAddress___block_invoke_2;
  v11[3] = &unk_1E8255EA8;
  v8 = v5;
  v12 = v8;
  v9 = [v7 ef_compactMap:v11];

  return v9;
}

id __113__EDPopulateSendersTableMigrationStep__senderIDsGroupedBySimpleAddressForEmailAddresses_senderIDsByEmailAddress___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 simpleAddress];

  return v2;
}

id __113__EDPopulateSendersTableMigrationStep__senderIDsGroupedBySimpleAddressForEmailAddresses_senderIDsByEmailAddress___block_invoke_2(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __113__EDPopulateSendersTableMigrationStep__senderIDsGroupedBySimpleAddressForEmailAddresses_senderIDsByEmailAddress___block_invoke_3;
  v6[3] = &unk_1E8255E80;
  v7 = *(a1 + 32);
  v3 = [a2 ef_compactMap:v6];
  v4 = [v3 ef_notEmpty];

  return v4;
}

id __113__EDPopulateSendersTableMigrationStep__senderIDsGroupedBySimpleAddressForEmailAddresses_senderIDsByEmailAddress___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:a2];

  return v2;
}

+ (id)_combineDictionary:(id)a3 withDictionary:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    if ([v6 count])
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __73__EDPopulateSendersTableMigrationStep__combineDictionary_withDictionary___block_invoke;
      v18[3] = &unk_1E8255ED0;
      v8 = v6;
      v19 = v8;
      v9 = v7;
      v20 = v9;
      [v5 enumerateKeysAndObjectsUsingBlock:v18];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __73__EDPopulateSendersTableMigrationStep__combineDictionary_withDictionary___block_invoke_2;
      v15[3] = &unk_1E8255ED0;
      v16 = v5;
      v10 = v9;
      v17 = v10;
      [v8 enumerateKeysAndObjectsUsingBlock:v15];
      v11 = v17;
      v12 = v10;

      goto LABEL_7;
    }

    v13 = v5;
  }

  else
  {
    v13 = v6;
  }

  v12 = v13;
LABEL_7:

  return v12;
}

void __73__EDPopulateSendersTableMigrationStep__combineDictionary_withDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v8 = v7;
  if (v7)
  {
    v12[0] = v6;
    v12[1] = v7;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    v10 = [v9 ef_flatten];
    [*(a1 + 40) setObject:v10 forKeyedSubscript:v5];
  }

  else
  {
    [*(a1 + 40) setObject:v6 forKeyedSubscript:v5];
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __73__EDPopulateSendersTableMigrationStep__combineDictionary_withDictionary___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v7];

  if (!v6)
  {
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v7];
  }
}

+ (void)_allSenderAddressIDsWithConnection:sentMailboxURLStrings:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Failed to find recipients of sent messages with error: %{public}@", v5);
}

+ (void)_addressesForSenderIDs:withConnection:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Failed to get addresses for recipients of sent messages: %{public}@", v5);
}

+ (void)_insertSendersGroupedByContact:withConnection:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Failed to insert senders with contacts with error: %{public}@", v5);
}

+ (void)_insertGroupedSendersWithoutContact:withConnection:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Failed to insert senders without contacts with error: %{public}@", v5);
}

+ (void)_clearSendersTableWithConnection:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Failed to clear senders table: %{public}@", v5);
}

+ (void)_clearSendersAddressesTableWithConnection:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Failed to clear sender addresses table: %{public}@", v5);
}

@end