@interface MFMailMessageLibraryAddMailboxActionsUpgradeStep
+ (id)_readSavedOperationsAtPath:(id)a3;
+ (int)runWithConnection:(id)a3;
@end

@implementation MFMailMessageLibraryAddMailboxActionsUpgradeStep

+ (int)runWithConnection:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v31 = a3;
  if ([v31 executeStatementString:@"CREATE TABLE IF NOT EXISTS mailbox_actions (ROWID INTEGER PRIMARY KEY AUTOINCREMENT errorMessage:{account_identifier TEXT, action_type INTEGER, mailbox_name TEXT);", @"Creating mailbox_actions table"}])
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = +[MailAccount mailAccounts];
    v26 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v26)
    {
      v27 = *v39;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v39 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v3 = *(*(&v38 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v4 = [v3 path];
            v30 = [v4 stringByAppendingPathComponent:@".OfflineCache/operations"];

            v25 = [a1 _readSavedOperationsAtPath:v30];
            v5 = [v31 preparedStatementForQueryString:{@"INSERT INTO mailbox_actions (account_identifier, action_type, mailbox_name) VALUES (?, ?, ?)"}];
            v36 = 0u;
            v37 = 0u;
            v34 = 0u;
            v35 = 0u;
            v6 = v25;
            v7 = [v6 countByEnumeratingWithState:&v34 objects:v43 count:16];
            if (v7)
            {
              v8 = *v35;
              while (2)
              {
                for (j = 0; j != v7; ++j)
                {
                  if (*v35 != v8)
                  {
                    objc_enumerationMutation(v6);
                  }

                  v10 = *(*(&v34 + 1) + 8 * j);
                  v11 = [v10 operationType];
                  v12 = [v3 identifier];
                  v13 = v12;
                  if (v11 == 1)
                  {
                    v14 = 1;
                  }

                  else
                  {
                    v14 = 2;
                  }

                  v42[0] = v12;
                  v15 = [MEMORY[0x1E696AD98] numberWithInteger:v14];
                  v42[1] = v15;
                  v16 = [v10 mailboxName];
                  v42[2] = v16;
                  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:3];

                  v33 = 0;
                  v18 = [v5 executeWithIndexedBindings:v17 usingBlock:0 error:&v33];
                  v19 = v33;
                  v20 = v19;
                  if ((v18 & 1) == 0)
                  {
                    v22 = EDLibraryLog();
                    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                    {
                      [(MFMailMessageLibraryAddMailboxActionsUpgradeStep *)v20 runWithConnection:v22];
                    }

                    v21 = 1;
                    goto LABEL_28;
                  }
                }

                v7 = [v6 countByEnumeratingWithState:&v34 objects:v43 count:16];
                if (v7)
                {
                  continue;
                }

                break;
              }
            }
          }
        }

        v21 = 0;
        v26 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
      }

      while (v26);
    }

    else
    {
      v21 = 0;
    }

LABEL_28:
  }

  else
  {
    v21 = 1;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v21;
}

+ (id)_readSavedOperationsAtPath:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  if (v3)
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v3 options:1 error:0];
    v6 = v5;
    if (v5)
    {
      v12 = 0;
      v7 = [v5 length];
      if (v7 >= 4)
      {
        do
        {
          v8 = [v6 bytes];
          if (*(v8 + v12) != 0x7FFF || *(v8 + v12 + 2) != 255)
          {
            break;
          }

          v12 += 3;
          v10 = [_MFOldIMAPOfflineOperation deserializedCopyFromData:v6 cursor:&v12];
          if (!v10)
          {
            break;
          }

          [v4 addObject:v10];
        }

        while (v12 + 3 < v7);
      }
    }
  }

  return v4;
}

+ (void)runWithConnection:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B0389000, a2, OS_LOG_TYPE_ERROR, "Got error %@ inserting mailboxAction", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end