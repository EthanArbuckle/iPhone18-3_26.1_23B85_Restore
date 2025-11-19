@interface IPSQLDatabase
- (IPSQLDatabase)initWithBMSQL:(id)a3 databases:(id)a4 sets:(id)a5 useCase:(id)a6 error:(id *)a7;
- (IPSQLDatabase)initWithStreams:(id)a3 databases:(id)a4 sets:(id)a5 useCase:(id)a6 library:(id)a7 privileges:(id)a8 isColumnAccessLoggingEnabled:(BOOL)a9 error:(id *)a10;
- (id)executeWithQuery:(id)a3 error:(id *)a4;
@end

@implementation IPSQLDatabase

- (IPSQLDatabase)initWithStreams:(id)a3 databases:(id)a4 sets:(id)a5 useCase:(id)a6 library:(id)a7 privileges:(id)a8 isColumnAccessLoggingEnabled:(BOOL)a9 error:(id *)a10
{
  v15 = MEMORY[0x277CF1A88];
  v16 = a8;
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = a3;
  v22 = [[v15 alloc] initWithStreams:v21 library:v17 privileges:v16 isColumnAccessLoggingEnabled:a9 error:a10];

  v23 = [(IPSQLDatabase *)self initWithBMSQL:v22 databases:v20 sets:v19 useCase:v18 error:a10];
  return v23;
}

- (IPSQLDatabase)initWithBMSQL:(id)a3 databases:(id)a4 sets:(id)a5 useCase:(id)a6 error:(id *)a7
{
  v57 = *MEMORY[0x277D85DE8];
  v41 = a3;
  v13 = a4;
  v14 = a5;
  v43 = a6;
  objc_storeStrong(&self->_bmsql, a3);
  v40 = [(BMSQLDatabase *)self->_bmsql db];
  sqlite3_set_authorizer(v40, 0, 0);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v49 objects:v56 count:16];
  obj = v15;
  if (v16)
  {
    v17 = v16;
    v18 = 0;
    v19 = *v50;
    while (2)
    {
      v20 = 0;
      v21 = v18;
      do
      {
        if (*v50 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v49 + 1) + 8 * v20);
        bmsql = self->_bmsql;
        v48 = v21;
        v24 = [(BMSQLDatabase *)bmsql attachDatabaseWithResourceIdentifier:v22 useCase:v43 error:&v48];
        v18 = v48;

        if ((v24 & 1) == 0)
        {
          v25 = __biome_log_for_category();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            [IPSQLDatabase initWithBMSQL:v22 databases:v18 sets:v25 useCase:? error:?];
          }

          v26 = v41;
          v27 = obj;
          if (a7)
          {
            v28 = v18;
            *a7 = v18;
          }

          v29 = 0;
          goto LABEL_26;
        }

        ++v20;
        v21 = v18;
      }

      while (v17 != v20);
      v15 = obj;
      v17 = [obj countByEnumeratingWithState:&v49 objects:v56 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v18 = 0;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v39 = v14;
  v30 = v14;
  v31 = [v30 countByEnumeratingWithState:&v44 objects:v55 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v45;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v45 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v44 + 1) + 8 * i);
        v36 = __biome_log_for_category();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v54 = v35;
          _os_log_impl(&dword_254FFD000, v36, OS_LOG_TYPE_INFO, "IPSQL: Set (%@) is NOT attached, set support is NOT implemented!", buf, 0xCu);
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v44 objects:v55 count:16];
    }

    while (v32);
  }

  sqlite3_set_authorizer(v40, MEMORY[0x277CF1B88], self->_bmsql);
  v29 = self;
  v26 = v41;
  v27 = obj;
  v14 = v39;
LABEL_26:

  v37 = *MEMORY[0x277D85DE8];
  return v29;
}

- (id)executeWithQuery:(id)a3 error:(id *)a4
{
  v5 = [(BMSQLDatabase *)self->_bmsql _executeQuery:a3];
  v6 = [v5 error];

  if (v6)
  {
    [v5 error];
    *a4 = v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

@end