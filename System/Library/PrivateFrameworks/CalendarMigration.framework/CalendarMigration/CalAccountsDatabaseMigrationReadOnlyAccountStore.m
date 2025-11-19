@interface CalAccountsDatabaseMigrationReadOnlyAccountStore
+ (id)_unarchiveData:(id)a3;
+ (int)_calendarDataClassIdentifier:(sqlite3 *)a3;
- (CalAccountsDatabaseMigrationReadOnlyAccountStore)initWithDatabaseURL:(id)a3;
- (id)accountWithIdentifier:(id)a3;
- (id)childAccountsForAccount:(id)a3 withTypeIdentifier:(id)a4;
- (id)topLevelAccountsWithAccountTypeIdentifier:(id)a3 error:(id *)a4;
- (void)dealloc;
@end

@implementation CalAccountsDatabaseMigrationReadOnlyAccountStore

- (CalAccountsDatabaseMigrationReadOnlyAccountStore)initWithDatabaseURL:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CalAccountsDatabaseMigrationReadOnlyAccountStore;
  v5 = [(CalAccountsDatabaseMigrationReadOnlyAccountStore *)&v11 init];
  if (v5 && ([v4 path], v6 = objc_claimAutoreleasedReturnValue(), v7 = sqlite3_open(objc_msgSend(v6, "UTF8String"), &v5->_database), v6, v7))
  {
    v8 = +[CalMigrationLog defaultCategory];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CalAccountsDatabaseMigrationReadOnlyAccountStore initWithDatabaseURL:?];
    }

    sqlite3_close(v5->_database);
    v9 = 0;
  }

  else
  {
    v9 = v5;
  }

  return v9;
}

- (void)dealloc
{
  sqlite3_close(self->_database);
  v3.receiver = self;
  v3.super_class = CalAccountsDatabaseMigrationReadOnlyAccountStore;
  [(CalAccountsDatabaseMigrationReadOnlyAccountStore *)&v3 dealloc];
}

- (id)accountWithIdentifier:(id)a3
{
  v4 = a3;
  ppStmt = 0;
  if (sqlite3_prepare_v2(self->_database, "SELECT ZACCOUNT.Z_PK, ZPARENTACCOUNT, ZACCOUNTTYPE.ZIDENTIFIER, ZACCOUNTDESCRIPTION, ZVISIBLE, ZAUTHENTICATED, ZUSERNAME, ? IN (SELECT Z_7ENABLEDDATACLASSES FROM Z_2ENABLEDDATACLASSES WHERE Z_2ENABLEDACCOUNTS = ZACCOUNT.Z_PK), ? IN (SELECT Z_7PROVISIONEDDATACLASSES FROM Z_2PROVISIONEDDATACLASSES WHERE Z_2PROVISIONEDACCOUNTS = ZACCOUNT.Z_PK) FROM ZACCOUNT JOIN ZACCOUNTTYPE ON (ZACCOUNT.ZACCOUNTTYPE = ZACCOUNTTYPE.Z_PK) WHERE ZACCOUNT.ZIDENTIFIER = ?", -1, &ppStmt, 0))
  {
    v5 = +[CalMigrationLog defaultCategory];
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
LABEL_4:

LABEL_15:
      v11 = 0;
      goto LABEL_16;
    }

LABEL_3:
    [CalAccountsDatabaseMigrationReadOnlyAccountStore accountWithIdentifier:?];
    goto LABEL_4;
  }

  v6 = ppStmt;
  v7 = [objc_opt_class() _calendarDataClassIdentifier:self->_database];
  if (sqlite3_bind_int(v6, 1, v7))
  {
    v8 = +[CalMigrationLog defaultCategory];
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
LABEL_14:

      sqlite3_finalize(ppStmt);
      goto LABEL_15;
    }

LABEL_7:
    [CalAccountsDatabaseMigrationReadOnlyAccountStore accountWithIdentifier:?];
    goto LABEL_14;
  }

  v9 = ppStmt;
  v10 = [objc_opt_class() _calendarDataClassIdentifier:self->_database];
  if (sqlite3_bind_int(v9, 2, v10))
  {
    v8 = +[CalMigrationLog defaultCategory];
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    goto LABEL_7;
  }

  if (sqlite3_bind_text(ppStmt, 3, [v4 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL))
  {
    v8 = +[CalMigrationLog defaultCategory];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CalAccountsDatabaseMigrationReadOnlyAccountStore accountWithIdentifier:?];
    }

    goto LABEL_14;
  }

  v13 = sqlite3_step(ppStmt);
  if (v13 != 100)
  {
    if (v13 == 101)
    {
      v8 = +[CalMigrationLog defaultCategory];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [CalAccountsDatabaseMigrationReadOnlyAccountStore accountWithIdentifier:];
      }
    }

    else
    {
      v8 = +[CalMigrationLog defaultCategory];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [CalAccountsDatabaseMigrationReadOnlyAccountStore accountWithIdentifier:?];
      }
    }

    goto LABEL_14;
  }

  v46 = sqlite3_column_int(ppStmt, 0);
  v45 = sqlite3_column_text(ppStmt, 1);
  v14 = sqlite3_column_text(ppStmt, 2);
  v15 = sqlite3_column_text(ppStmt, 3);
  v16 = sqlite3_column_int(ppStmt, 4);
  v17 = sqlite3_column_int(ppStmt, 5);
  v18 = sqlite3_column_text(ppStmt, 6);
  v19 = sqlite3_column_int(ppStmt, 7);
  v20 = sqlite3_column_int(ppStmt, 8);
  sqlite3_finalize(ppStmt);
  if (sqlite3_prepare_v2(self->_database, "SELECT ZKEY, ZVALUE FROM ZACCOUNTPROPERTY WHERE ZOWNER = ?", -1, &ppStmt, 0))
  {
    v5 = +[CalMigrationLog defaultCategory];
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v43 = v20;
  v44 = v19;
  if (sqlite3_bind_int(ppStmt, 1, v46))
  {
    v8 = +[CalMigrationLog defaultCategory];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CalAccountsDatabaseMigrationReadOnlyAccountStore accountWithIdentifier:?];
    }

    goto LABEL_14;
  }

  v42 = v16;
  *v47 = v14;
  v21 = objc_opt_new();
  while (sqlite3_step(ppStmt) == 100)
  {
    v22 = sqlite3_column_text(ppStmt, 0);
    v23 = sqlite3_column_blob(ppStmt, 1);
    v24 = sqlite3_column_bytes(ppStmt, 1);
    if (v22)
    {
      v25 = v23 == 0;
    }

    else
    {
      v25 = 1;
    }

    if (!v25 && v24 != 0)
    {
      v27 = v24;
      v28 = objc_opt_class();
      v29 = [MEMORY[0x277CBEA90] dataWithBytes:v23 length:v27];
      v30 = [v28 _unarchiveData:v29];

      v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:v22];
      [v21 setObject:v30 forKeyedSubscript:v31];
    }
  }

  sqlite3_finalize(ppStmt);
  v40 = [CalAccountsDatabaseMigrationReadOnlyAccount alloc];
  v32 = v45;
  if (v45)
  {
    v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:v45];
  }

  else
  {
    v41 = 0;
  }

  v33 = *v47;
  v34 = v15;
  if (*v47)
  {
    v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:*v47];
  }

  else
  {
    v35 = 0;
  }

  if (v15)
  {
    v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:v15];
  }

  else
  {
    v36 = 0;
  }

  if (v18)
  {
    v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:v18];
    BYTE1(v39) = v17 != 0;
    LOBYTE(v39) = v42 != 0;
    v34 = v15;
    v38 = v41;
    v32 = v45;
    v11 = [(CalAccountsDatabaseMigrationReadOnlyAccount *)v40 initWithIdentifier:v4 parentIdentifier:v41 accountTypeIdentifier:v35 description:v36 enabledForCalendarDataClass:v44 != 0 provisionedForCalendarDataClass:v43 != 0 visible:v39 authenticated:v37 username:v21 properties:?];

    v33 = *v47;
  }

  else
  {
    BYTE1(v39) = v17 != 0;
    LOBYTE(v39) = v42 != 0;
    v38 = v41;
    v11 = [(CalAccountsDatabaseMigrationReadOnlyAccount *)v40 initWithIdentifier:v4 parentIdentifier:v41 accountTypeIdentifier:v35 description:v36 enabledForCalendarDataClass:v44 != 0 provisionedForCalendarDataClass:v43 != 0 visible:v39 authenticated:0 username:v21 properties:?];
  }

  if (v34)
  {
  }

  if (v33)
  {
  }

  if (v32)
  {
  }

LABEL_16:

  return v11;
}

- (id)topLevelAccountsWithAccountTypeIdentifier:(id)a3 error:(id *)a4
{
  ppStmt = 0;
  p_database = &self->_database;
  if (sqlite3_prepare_v2(self->_database, "SELECT ZIDENTIFIER FROM ZACCOUNT WHERE ZPARENTACCOUNT ISNULL", -1, &ppStmt, 0))
  {
    v7 = +[CalMigrationLog defaultCategory];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CalAccountsDatabaseMigrationReadOnlyAccountStore accountWithIdentifier:?];
    }

    if (a4)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"kCalAccountsDatabaseMigrationReadOnlyAccountStoreErrorDomain" code:0 userInfo:0];
      *a4 = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = objc_opt_new();
    if (sqlite3_step(ppStmt) == 100)
    {
      while (1)
      {
        v9 = sqlite3_column_text(ppStmt, 0);
        if (!v9)
        {
          break;
        }

        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
        v11 = [(CalAccountsDatabaseMigrationReadOnlyAccountStore *)self accountWithIdentifier:v10];

        if (!v11)
        {
          goto LABEL_15;
        }

        [v8 addObject:v11];

        if (sqlite3_step(ppStmt) != 100)
        {
          goto LABEL_18;
        }
      }

      v12 = +[CalMigrationLog defaultCategory];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [CalAccountsDatabaseMigrationReadOnlyAccountStore topLevelAccountsWithAccountTypeIdentifier:v12 error:?];
      }

LABEL_15:
      if (a4)
      {
        *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kCalAccountsDatabaseMigrationReadOnlyAccountStoreErrorDomain" code:0 userInfo:0];
      }

      v8 = 0;
    }

LABEL_18:
    sqlite3_finalize(ppStmt);
  }

  return v8;
}

- (id)childAccountsForAccount:(id)a3 withTypeIdentifier:(id)a4
{
  v5 = a3;
  ppStmt = 0;
  p_database = &self->_database;
  if (sqlite3_prepare_v2(self->_database, "SELECT ZIDENTIFIER FROM ZACCOUNT WHERE ZPARENTACCOUNT = ?", -1, &ppStmt, 0))
  {
    v7 = +[CalMigrationLog defaultCategory];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CalAccountsDatabaseMigrationReadOnlyAccountStore accountWithIdentifier:?];
    }

LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  v8 = ppStmt;
  v9 = [v5 identifier];
  LODWORD(v8) = sqlite3_bind_text(v8, 1, [v9 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

  if (v8)
  {
    v10 = +[CalMigrationLog defaultCategory];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CalAccountsDatabaseMigrationReadOnlyAccountStore childAccountsForAccount:? withTypeIdentifier:?];
    }

    sqlite3_finalize(ppStmt);
    goto LABEL_9;
  }

  v11 = objc_opt_new();
  if (sqlite3_step(ppStmt) == 100)
  {
    while (1)
    {
      v13 = sqlite3_column_text(ppStmt, 0);
      if (!v13)
      {
        break;
      }

      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:v13];
      v15 = [(CalAccountsDatabaseMigrationReadOnlyAccountStore *)self accountWithIdentifier:v14];

      if (!v15)
      {
        goto LABEL_21;
      }

      [v11 addObject:v15];

      if (sqlite3_step(ppStmt) != 100)
      {
        goto LABEL_22;
      }
    }

    v16 = +[CalMigrationLog defaultCategory];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [CalAccountsDatabaseMigrationReadOnlyAccountStore childAccountsForAccount:v16 withTypeIdentifier:?];
    }

LABEL_21:
    v11 = 0;
  }

LABEL_22:
  sqlite3_finalize(ppStmt);
LABEL_10:

  return v11;
}

+ (id)_unarchiveData:(id)a3
{
  v13[4] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB98];
  v4 = a3;
  v5 = [v3 alloc];
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v13[2] = objc_opt_class();
  v13[3] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:4];
  v7 = [v5 initWithArray:v6];

  v12 = 0;
  v8 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v7 fromData:v4 error:&v12];

  if (v8)
  {
    v9 = v8;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (int)_calendarDataClassIdentifier:(sqlite3 *)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __81__CalAccountsDatabaseMigrationReadOnlyAccountStore__calendarDataClassIdentifier___block_invoke;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  v4[4] = a3;
  v4[5] = a1;
  if (_calendarDataClassIdentifier__onceToken != -1)
  {
    dispatch_once(&_calendarDataClassIdentifier__onceToken, v4);
  }

  return _calendarDataClassIdentifier__dataClassID;
}

void __81__CalAccountsDatabaseMigrationReadOnlyAccountStore__calendarDataClassIdentifier___block_invoke(uint64_t a1)
{
  ppStmt = 0;
  v2 = (a1 + 32);
  if (sqlite3_prepare_v2(*(a1 + 32), "SELECT Z_PK, ZNAME FROM ZDATACLASS", -1, &ppStmt, 0))
  {
    v3 = +[CalMigrationLog defaultCategory];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [CalAccountsDatabaseMigrationReadOnlyAccountStore accountWithIdentifier:v2];
    }
  }

  else
  {
    if (sqlite3_step(ppStmt) == 100)
    {
      while (1)
      {
        v4 = MEMORY[0x277CBEA90];
        v5 = sqlite3_column_blob(ppStmt, 1);
        v6 = [v4 dataWithBytes:v5 length:{sqlite3_column_bytes(ppStmt, 1)}];
        v7 = [*(a1 + 40) _unarchiveData:v6];
        if ([@"com.apple.Dataclass.Calendars" isEqual:v7])
        {
          break;
        }

        if (sqlite3_step(ppStmt) != 100)
        {
          goto LABEL_10;
        }
      }

      _calendarDataClassIdentifier__dataClassID = sqlite3_column_int(ppStmt, 0);
    }

LABEL_10:
    sqlite3_finalize(ppStmt);
  }
}

- (void)initWithDatabaseURL:(sqlite3 *)a1 .cold.1(sqlite3 **a1)
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0(a1);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(&dword_2428EA000, v2, v3, "Failed to open database: %s", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)accountWithIdentifier:(sqlite3 *)a1 .cold.1(sqlite3 **a1)
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0(a1);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(&dword_2428EA000, v2, v3, "Failed to prepare statement: %s", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)accountWithIdentifier:(sqlite3 *)a1 .cold.2(sqlite3 **a1)
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0(a1);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(&dword_2428EA000, v2, v3, "Failed to bind calendar dataclass ID: %s", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)accountWithIdentifier:(sqlite3 *)a1 .cold.4(sqlite3 **a1)
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0(a1);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(&dword_2428EA000, v2, v3, "Failed to bind account identifier: %s", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)accountWithIdentifier:(sqlite3 *)a1 .cold.6(sqlite3 **a1)
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0(a1);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(&dword_2428EA000, v2, v3, "Failed to bind account rowid: %s", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)accountWithIdentifier:.cold.7()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(&dword_2428EA000, v0, OS_LOG_TYPE_ERROR, "Account not found for identifier: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)accountWithIdentifier:(sqlite3 *)a1 .cold.8(sqlite3 **a1)
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0(a1);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(&dword_2428EA000, v2, v3, "Failed to execute query: %s", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)childAccountsForAccount:(sqlite3 *)a1 withTypeIdentifier:.cold.2(sqlite3 **a1)
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0(a1);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(&dword_2428EA000, v2, v3, "Failed to bind parent account identifier: %s", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

@end