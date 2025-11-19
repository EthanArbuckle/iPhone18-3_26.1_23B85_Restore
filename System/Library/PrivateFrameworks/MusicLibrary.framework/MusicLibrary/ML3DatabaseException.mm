@interface ML3DatabaseException
+ (id)databaseExceptionWithReason:(id)a3 sqliteError:(id)a4;
- (ML3DatabaseException)init;
- (ML3DatabaseException)initWithReason:(id)a3 sqliteError:(id)a4;
- (void)_SQLITE_ABORT;
- (void)_SQLITE_AUTH;
- (void)_SQLITE_BUSY;
- (void)_SQLITE_CANTOPEN;
- (void)_SQLITE_CONSTRAINT;
- (void)_SQLITE_CORRUPT;
- (void)_SQLITE_DONE;
- (void)_SQLITE_EMPTY;
- (void)_SQLITE_ERROR;
- (void)_SQLITE_FORMAT;
- (void)_SQLITE_FULL;
- (void)_SQLITE_INTERNAL;
- (void)_SQLITE_INTERRUPT;
- (void)_SQLITE_IOERR;
- (void)_SQLITE_LOCKED;
- (void)_SQLITE_MISMATCH;
- (void)_SQLITE_MISUSE;
- (void)_SQLITE_NOLFS;
- (void)_SQLITE_NOMEM;
- (void)_SQLITE_NOTADB;
- (void)_SQLITE_NOTFOUND;
- (void)_SQLITE_PERM;
- (void)_SQLITE_PROTOCOL;
- (void)_SQLITE_RANGE;
- (void)_SQLITE_READONLY;
- (void)_SQLITE_ROW;
- (void)_SQLITE_SCHEMA;
- (void)_SQLITE_TOOBIG;
- (void)raise;
@end

@implementation ML3DatabaseException

- (void)_SQLITE_DONE
{
  v2.receiver = self;
  v2.super_class = ML3DatabaseException;
  [(MLException *)&v2 raise];
}

- (void)_SQLITE_ROW
{
  v2.receiver = self;
  v2.super_class = ML3DatabaseException;
  [(MLException *)&v2 raise];
}

- (void)_SQLITE_NOTADB
{
  v2.receiver = self;
  v2.super_class = ML3DatabaseException;
  [(MLException *)&v2 raise];
}

- (void)_SQLITE_RANGE
{
  v2.receiver = self;
  v2.super_class = ML3DatabaseException;
  [(MLException *)&v2 raise];
}

- (void)_SQLITE_FORMAT
{
  v2.receiver = self;
  v2.super_class = ML3DatabaseException;
  [(MLException *)&v2 raise];
}

- (void)_SQLITE_AUTH
{
  v2.receiver = self;
  v2.super_class = ML3DatabaseException;
  [(MLException *)&v2 raise];
}

- (void)_SQLITE_NOLFS
{
  v2.receiver = self;
  v2.super_class = ML3DatabaseException;
  [(MLException *)&v2 raise];
}

- (void)_SQLITE_MISUSE
{
  v2.receiver = self;
  v2.super_class = ML3DatabaseException;
  [(MLException *)&v2 raise];
}

- (void)_SQLITE_MISMATCH
{
  v2.receiver = self;
  v2.super_class = ML3DatabaseException;
  [(MLException *)&v2 raise];
}

- (void)_SQLITE_CONSTRAINT
{
  v2.receiver = self;
  v2.super_class = ML3DatabaseException;
  [(MLException *)&v2 raise];
}

- (void)_SQLITE_TOOBIG
{
  v2.receiver = self;
  v2.super_class = ML3DatabaseException;
  [(MLException *)&v2 raise];
}

- (void)_SQLITE_SCHEMA
{
  v2.receiver = self;
  v2.super_class = ML3DatabaseException;
  [(MLException *)&v2 raise];
}

- (void)_SQLITE_EMPTY
{
  v2.receiver = self;
  v2.super_class = ML3DatabaseException;
  [(MLException *)&v2 raise];
}

- (void)_SQLITE_PROTOCOL
{
  v2.receiver = self;
  v2.super_class = ML3DatabaseException;
  [(MLException *)&v2 raise];
}

- (void)_SQLITE_CANTOPEN
{
  v2.receiver = self;
  v2.super_class = ML3DatabaseException;
  [(MLException *)&v2 raise];
}

- (void)_SQLITE_FULL
{
  v2.receiver = self;
  v2.super_class = ML3DatabaseException;
  [(MLException *)&v2 raise];
}

- (void)_SQLITE_NOTFOUND
{
  v2.receiver = self;
  v2.super_class = ML3DatabaseException;
  [(MLException *)&v2 raise];
}

- (void)_SQLITE_CORRUPT
{
  v2.receiver = self;
  v2.super_class = ML3DatabaseException;
  [(MLException *)&v2 raise];
}

- (void)_SQLITE_IOERR
{
  v2.receiver = self;
  v2.super_class = ML3DatabaseException;
  [(MLException *)&v2 raise];
}

- (void)_SQLITE_INTERRUPT
{
  v2.receiver = self;
  v2.super_class = ML3DatabaseException;
  [(MLException *)&v2 raise];
}

- (void)_SQLITE_READONLY
{
  v2.receiver = self;
  v2.super_class = ML3DatabaseException;
  [(MLException *)&v2 raise];
}

- (void)_SQLITE_NOMEM
{
  v2.receiver = self;
  v2.super_class = ML3DatabaseException;
  [(MLException *)&v2 raise];
}

- (void)_SQLITE_LOCKED
{
  v2.receiver = self;
  v2.super_class = ML3DatabaseException;
  [(MLException *)&v2 raise];
}

- (void)_SQLITE_BUSY
{
  v2.receiver = self;
  v2.super_class = ML3DatabaseException;
  [(MLException *)&v2 raise];
}

- (void)_SQLITE_ABORT
{
  v2.receiver = self;
  v2.super_class = ML3DatabaseException;
  [(MLException *)&v2 raise];
}

- (void)_SQLITE_PERM
{
  v2.receiver = self;
  v2.super_class = ML3DatabaseException;
  [(MLException *)&v2 raise];
}

- (void)_SQLITE_INTERNAL
{
  v2.receiver = self;
  v2.super_class = ML3DatabaseException;
  [(MLException *)&v2 raise];
}

- (void)_SQLITE_ERROR
{
  v2.receiver = self;
  v2.super_class = ML3DatabaseException;
  [(MLException *)&v2 raise];
}

- (void)raise
{
  v71 = *MEMORY[0x277D85DE8];
  v15[0] = 1;
  v16 = sel__SQLITE_ERROR;
  v17 = 2;
  v18 = sel__SQLITE_INTERNAL;
  v19 = 3;
  v20 = sel__SQLITE_PERM;
  v21 = 4;
  v22 = sel__SQLITE_ABORT;
  v23 = 5;
  v24 = sel__SQLITE_BUSY;
  v25 = 6;
  v26 = sel__SQLITE_LOCKED;
  v27 = 7;
  v28 = sel__SQLITE_NOMEM;
  v29 = 8;
  v30 = sel__SQLITE_READONLY;
  v31 = 9;
  v32 = sel__SQLITE_INTERRUPT;
  v33 = 10;
  v34 = sel__SQLITE_IOERR;
  v35 = 11;
  v36 = sel__SQLITE_CORRUPT;
  v37 = 12;
  v38 = sel__SQLITE_NOTFOUND;
  v39 = 13;
  v40 = sel__SQLITE_FULL;
  v41 = 14;
  v42 = sel__SQLITE_CANTOPEN;
  v43 = 15;
  v44 = sel__SQLITE_PROTOCOL;
  v45 = 16;
  v46 = sel__SQLITE_EMPTY;
  v47 = 17;
  v48 = sel__SQLITE_SCHEMA;
  v49 = 18;
  v50 = sel__SQLITE_TOOBIG;
  v51 = 19;
  v52 = sel__SQLITE_CONSTRAINT;
  v53 = 20;
  v54 = sel__SQLITE_MISMATCH;
  v55 = 21;
  v56 = sel__SQLITE_MISUSE;
  v57 = 22;
  v58 = sel__SQLITE_NOLFS;
  v59 = 23;
  v60 = sel__SQLITE_AUTH;
  v61 = 24;
  v62 = sel__SQLITE_FORMAT;
  v63 = 25;
  v64 = sel__SQLITE_RANGE;
  v65 = 26;
  v66 = sel__SQLITE_NOTADB;
  v67 = 100;
  v68 = sel__SQLITE_ROW;
  v69 = 101;
  v70 = sel__SQLITE_DONE;
  v3 = [(NSError *)self->_sqliteError code];
  v4 = v3;
  v5 = 0;
  v6 = v15;
  while (1)
  {
    v7 = *v6;
    v6 += 4;
    if (v3 == v7)
    {
      break;
    }

    if (++v5 == 28)
    {
      goto LABEL_9;
    }
  }

  v8 = &v15[4 * v5];
  v9 = *(v8 + 1);
  if (!v9)
  {
LABEL_9:
    v11 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v14 = v4;
      _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_DEFAULT, "No helper method can be found for SQLite error code %ld.", buf, 0xCu);
    }

    v12.receiver = self;
    v12.super_class = ML3DatabaseException;
    [(MLException *)&v12 raise];
    return;
  }

  v10 = [(ML3DatabaseException *)self methodForSelector:*(v8 + 1)];

  v10(self, v9);
}

- (ML3DatabaseException)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE648];
  v5 = NSStringFromSelector(a2);
  v6 = NSStringFromSelector(sel_initWithReason_sqliteError_);
  [v3 raise:v4 format:{@"%@ is invalid. Use %@.", v5, v6}];

  return 0;
}

- (ML3DatabaseException)initWithReason:(id)a3 sqliteError:(id)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v15 = @"ML3DatabaseExceptionErrorUserInfoKey";
    v16[0] = v7;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277CBE658];
  v14.receiver = self;
  v14.super_class = ML3DatabaseException;
  v11 = [(ML3DatabaseException *)&v14 initWithName:v10 reason:v6 userInfo:v9];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_sqliteError, a4);
  }

  return v12;
}

+ (id)databaseExceptionWithReason:(id)a3 sqliteError:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initWithReason:v6 sqliteError:v5];

  return v7;
}

@end