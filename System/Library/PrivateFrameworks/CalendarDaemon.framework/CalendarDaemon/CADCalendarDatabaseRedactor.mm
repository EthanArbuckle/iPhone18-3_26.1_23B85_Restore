@interface CADCalendarDatabaseRedactor
- (BOOL)_redactOmatic:(sqlite3 *)a3;
- (BOOL)_specialRedactions:(sqlite3 *)a3;
- (BOOL)redact;
- (CADCalendarDatabaseRedactor)initWithPath:(id)a3 context:(id)a4;
@end

@implementation CADCalendarDatabaseRedactor

- (CADCalendarDatabaseRedactor)initWithPath:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = CADCalendarDatabaseRedactor;
  v8 = [(CADCalendarDatabaseRedactor *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    path = v8->_path;
    v8->_path = v9;

    objc_storeStrong(&v8->_context, a4);
  }

  return v8;
}

- (BOOL)redact
{
  v3 = [(CADCalendarDatabaseRedactor *)self path];
  v4 = [v3 fileSystemRepresentation];

  if (!v4)
  {
    return 0;
  }

  ppDb = 0;
  v5 = sqlite3_open_v2(v4, &ppDb, 2, 0);
  if (v5)
  {
    [(CADDiagnosticLogContext *)self->_context logError:@"Sqlite error opening database: %d\n", v5];
    return 0;
  }

  if ([(CADCalendarDatabaseRedactor *)self _redactOmatic:ppDb])
  {
    v6 = [(CADCalendarDatabaseRedactor *)self _specialRedactions:ppDb];
  }

  else
  {
    v6 = 0;
  }

  sqlite3_close(ppDb);
  return v6;
}

- (BOOL)_redactOmatic:(sqlite3 *)a3
{
  v5 = strdup("SELECT rowid");
  v6 = strdup(" ");
  sqlite3_exec(a3, "BEGIN", 0, 0, 0);
  v7 = &dbRedactionActions;
  v8 = &qword_28180D860;
  v9 = qword_28180D860 == 0;
  while (1)
  {
    v10 = v8;
    if (v9)
    {
      zSql = 0;
      asprintf(&zSql, "%s, %s", v5, v8[1]);
      free(v5);
      v5 = zSql;
      v27 = 0;
      asprintf(&v27, "%s %s = ?,", v6, v10[1]);
      free(v6);
      v6 = v27;
      goto LABEL_16;
    }

    zSql = 0;
    asprintf(&zSql, "%s FROM %s", v5, *v7);
    free(v5);
    v11 = strrchr(v6, 44);
    if (v11)
    {
      *v11 = 0;
    }

    v27 = 0;
    asprintf(&v27, "UPDATE %s SET %s WHERE rowid = ?", *v7, v6);
    free(v6);
    pStmt = 0;
    ppStmt = 0;
    v12 = sqlite3_prepare_v2(a3, zSql, -1, &ppStmt, 0);
    if (v12)
    {
      [(CADDiagnosticLogContext *)self->_context logError:@"Select Prep Error: %d, statement: %s", v12, zSql];
      return 0;
    }

    v13 = sqlite3_prepare_v2(a3, v27, -1, &pStmt, 0);
    if (v13)
    {
      [(CADDiagnosticLogContext *)self->_context logError:@"Update Prep Error: %d, statement: %s", v13, v27];
      return 0;
    }

    if (sqlite3_step(ppStmt) == 100)
    {
      break;
    }

LABEL_15:
    sqlite3_exec(a3, "COMMIT", 0, 0, 0);
    sqlite3_finalize(ppStmt);
    sqlite3_finalize(pStmt);
    free(zSql);
    free(v27);
    v5 = strdup("SELECT rowid");
    v6 = strdup(" ");
    sqlite3_exec(a3, "BEGIN", 0, 0, 0);
    v7 = v10;
LABEL_16:
    v8 = v10 + 3;
    v21 = v10[3];
    v9 = v21 == 0;
    if (!v21 && !v10[4])
    {
      free(v5);
      free(v6);
      sqlite3_exec(a3, "COMMIT", 0, 0, 0);
      return 1;
    }
  }

  while (1)
  {
    v14 = sqlite3_column_int(ppStmt, 0);
    if (v7[3])
    {
      v15 = 1;
    }

    else
    {
      v15 = 1;
      v16 = (v7 + 6);
      do
      {
        v17 = sqlite3_column_blob(ppStmt, v15);
        n = sqlite3_column_bytes(ppStmt, v15);
        v18 = (*(v16 - 1))(self, v17, &n);
        sqlite3_bind_blob(pStmt, v15++, v18, n, MEMORY[0x277D86138]);
        v19 = *v16;
        v16 += 3;
      }

      while (!v19);
    }

    sqlite3_bind_int(pStmt, v15, v14);
    v20 = sqlite3_step(pStmt);
    if (v20 != 101)
    {
      break;
    }

    sqlite3_reset(pStmt);
    if (sqlite3_step(ppStmt) != 100)
    {
      goto LABEL_15;
    }
  }

  [(CADDiagnosticLogContext *)self->_context logError:@"Sqlite step error: %d", v20, v23];
  return 0;
}

- (BOOL)_specialRedactions:(sqlite3 *)a3
{
  v15 = *MEMORY[0x277D85DE8];
  sqlite3_exec(a3, "BEGIN", 0, 0, 0);
  sqlite3_exec(a3, "UPDATE location SET latitude = 0, longitude = 0", 0, 0, 0);
  v4 = strdup("SELECT rowid, key from _SqliteDatabaseProperties where key like '%-CalDAVInfo'");
  v5 = strdup("UPDATE _SqliteDatabaseProperties SET key = ? where rowid = ?");
  pStmt = 0;
  ppStmt = 0;
  sqlite3_prepare_v2(a3, v4, -1, &ppStmt, 0);
  sqlite3_prepare_v2(a3, v5, -1, &pStmt, 0);
  while (sqlite3_step(ppStmt) == 100)
  {
    v6 = sqlite3_column_int(ppStmt, 0);
    v7 = sqlite3_column_text(ppStmt, 1);
    strlen(v7);
    ICSRedactBytes();
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v14 length:20 encoding:4];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%d-CalDAVInfo", v8, v6];
    sqlite3_bind_text(pStmt, 1, [v9 UTF8String], -1, 0);
    sqlite3_bind_int(pStmt, 2, v6);
    sqlite3_step(pStmt);
    sqlite3_reset(pStmt);
  }

  sqlite3_finalize(ppStmt);
  sqlite3_finalize(pStmt);
  free(v4);
  free(v5);
  sqlite3_exec(a3, "COMMIT", 0, 0, 0);
  v10 = *MEMORY[0x277D85DE8];
  return 1;
}

@end