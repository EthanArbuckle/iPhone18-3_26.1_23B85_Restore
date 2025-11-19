@interface CCSQLiteDatabase
- (BOOL)_prepareSqliteStatement:(sqlite3_stmt *)a3 usingCommand:(id)a4 outError:(id *)a5;
- (BOOL)_validateAndBindSqliteStatementParameters:(sqlite3_stmt *)a3 usingCommand:(id)a4 outError:(id *)a5;
- (BOOL)_validateCommand:(id)a3 outError:(id *)a4;
- (BOOL)closeWithError:(id *)a3;
- (BOOL)executeCommand:(id)a3 options:(unint64_t)a4 error:(id *)a5 returningRowBlock:(id)a6;
- (BOOL)executeCommandString:(id)a3 error:(id *)a4;
- (BOOL)openWithError:(id *)a3;
- (CCSQLiteDatabase)init;
- (CCSQLiteDatabase)initWithPath:(id)a3 accessPermission:(int64_t)a4 threadingMode:(int64_t)a5 dataProtectionClass:(int)a6 databaseOptions:(int64_t)a7;
- (id)_cachedOrPreparedStatementFromCommand:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (id)enumerateCommand:(id)a3 options:(unint64_t)a4;
- (int)rowsModified:(id *)a3;
@end

@implementation CCSQLiteDatabase

- (CCSQLiteDatabase)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (CCSQLiteDatabase)initWithPath:(id)a3 accessPermission:(int64_t)a4 threadingMode:(int64_t)a5 dataProtectionClass:(int)a6 databaseOptions:(int64_t)a7
{
  v12 = a3;
  v22.receiver = self;
  v22.super_class = CCSQLiteDatabase;
  v13 = [(CCSQLiteDatabase *)&v22 init];
  if (!v13)
  {
    goto LABEL_4;
  }

  v14 = [v12 stringByStandardizingPath];
  v15 = [v14 copy];
  path = v13->_path;
  v13->_path = v15;

  if ([(NSString *)v13->_path length])
  {
    v13->_accessPermission = a4;
    v13->_threadingMode = a5;
    v13->_dataProtectionClass = a6;
    v13->_databaseOptions = a7;
    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    cachedSQLiteStatements = v13->_cachedSQLiteStatements;
    v13->_cachedSQLiteStatements = v17;

LABEL_4:
    v19 = v13;
    goto LABEL_8;
  }

  v20 = __biome_log_for_category();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [CCSQLiteDatabase initWithPath:v20 accessPermission:? threadingMode:? dataProtectionClass:? databaseOptions:?];
  }

  v19 = 0;
LABEL_8:

  return v19;
}

- (BOOL)openWithError:(id *)a3
{
  v79[1] = *MEMORY[0x1E69E9840];
  p_handle = &self->_handle;
  if (self->_handle)
  {
    v4 = __biome_log_for_category();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [CCSQLiteDatabase openWithError:v4];
    }

    goto LABEL_4;
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to open database at path: %@", self->_path];
  v4 = v8;
  if (!self->_path)
  {
    v16 = MEMORY[0x1E696ABC0];
    v78 = *MEMORY[0x1E696A578];
    v79[0] = v8;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v79 forKeys:&v78 count:1];
    v18 = [v16 errorWithDomain:@"com.apple.CascadeSets.CCDatabase" code:3 userInfo:v17];
    CCSetAndReportError(a3, v18);

LABEL_39:
    goto LABEL_40;
  }

  v67 = 0;
  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = [v9 fileExistsAtPath:self->_path isDirectory:&v67];

  if (!v10)
  {
    v17 = [(NSString *)self->_path stringByDeletingLastPathComponent];
    v19 = [MEMORY[0x1E696AC08] defaultManager];
    v20 = [v19 fileExistsAtPath:v17 isDirectory:&v67];

    if (v20)
    {
      if ((v67 & 1) == 0)
      {
        v21 = MEMORY[0x1E696ABC0];
        v22 = *MEMORY[0x1E696A578];
        v74[0] = *MEMORY[0x1E696A368];
        v74[1] = v22;
        v75[0] = v17;
        v75[1] = v4;
        v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:v74 count:2];
        v24 = [v21 errorWithDomain:@"com.apple.CascadeSets.CCDatabase" code:5 userInfo:v23];
        CCSetAndReportError(a3, v24);
LABEL_38:

        goto LABEL_39;
      }
    }

    else
    {
      v25 = [MEMORY[0x1E696AC08] defaultManager];
      v66 = 0;
      v26 = [v25 createDirectoryAtPath:v17 withIntermediateDirectories:1 attributes:0 error:&v66];
      v23 = v66;

      if ((v26 & 1) == 0)
      {
        v52 = MEMORY[0x1E696ABC0];
        v53 = *MEMORY[0x1E696A368];
        v73[0] = self->_path;
        v54 = *MEMORY[0x1E696AA08];
        v72[0] = v53;
        v72[1] = v54;
        v24 = _NSNullIfNilObject(v23);
        v72[2] = *MEMORY[0x1E696A578];
        v73[1] = v24;
        v73[2] = v4;
        v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:v72 count:3];
        v56 = [v52 errorWithDomain:@"com.apple.CascadeSets.CCDatabase" code:1 userInfo:v55];
        CCSetAndReportError(a3, v56);

        goto LABEL_38;
      }
    }

    goto LABEL_16;
  }

  if (v67 == 1)
  {
    v11 = MEMORY[0x1E696ABC0];
    path = self->_path;
    v13 = *MEMORY[0x1E696A578];
    v76[0] = *MEMORY[0x1E696A368];
    v76[1] = v13;
    v77[0] = path;
    v77[1] = v4;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v77 forKeys:v76 count:2];
    v15 = [v11 errorWithDomain:@"com.apple.CascadeSets.CCDatabase" code:4 userInfo:v14];
    CCSetAndReportError(a3, v15);

LABEL_40:
    v5 = 0;
    goto LABEL_41;
  }

LABEL_16:
  v27 = self->_accessPermission - 1;
  if (v27 > 2)
  {
    v28 = 0;
  }

  else
  {
    v28 = dword_1B6E0EA48[v27];
  }

  threadingMode = self->_threadingMode;
  if (threadingMode == 3)
  {
    v30 = 0x10000;
  }

  else
  {
    v30 = (threadingMode == 2) << 15;
  }

  v31 = v30 | v28;
  v32 = self->_dataProtectionClass - 1;
  if (v32 > 5)
  {
    v33 = 0;
  }

  else
  {
    v33 = dword_1B6E0EA54[v32];
  }

  v34 = sqlite3_open_v2([(NSString *)self->_path fileSystemRepresentation], p_handle, v31 | v33, 0);
  if (v34)
  {
    v35 = v34;
    v36 = sqlite3_extended_errcode(self->_handle);
    v37 = MEMORY[0x1E696ABC0];
    v38 = *MEMORY[0x1E696A368];
    v71[0] = self->_path;
    v39 = *MEMORY[0x1E696AA08];
    v70[0] = v38;
    v70[1] = v39;
    v40 = _createSQLiteAPIErrorFromResultCode(v35, v36);
    v70[2] = *MEMORY[0x1E696A578];
    v71[1] = v40;
    v71[2] = v4;
    v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:v70 count:3];
    v42 = [v37 errorWithDomain:@"com.apple.CascadeSets.CCDatabase" code:2 userInfo:v41];
    CCSetAndReportError(a3, v42);

    v5 = 0;
    self->_handle = 0;
    goto LABEL_41;
  }

  if ((v10 & 1) == 0)
  {
    if ((self->_databaseOptions & 2) != 0)
    {
      v43 = sqlite3_exec(*p_handle, "PRAGMA journal_mode=WAL", 0, 0, 0);
      if (v43)
      {
        v44 = v43;
        v45 = sqlite3_extended_errcode(*p_handle);
        v46 = __biome_log_for_category();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          [(CCSQLiteDatabase *)v44 openWithError:v45];
        }
      }
    }

    if ((self->_accessPermission & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v47 = [MEMORY[0x1E695DFF8] fileURLWithPath:self->_path];
      v48 = [MEMORY[0x1E696AD98] numberWithInt:self->_databaseOptions & 1];
      v49 = *MEMORY[0x1E695DB80];
      v65 = 0;
      v50 = [v47 setResourceValue:v48 forKey:v49 error:&v65];
      v51 = v65;

      if ((v50 & 1) == 0)
      {
        v59 = MEMORY[0x1E696ABC0];
        v60 = *MEMORY[0x1E696A368];
        v69[0] = self->_path;
        v61 = *MEMORY[0x1E696AA08];
        v68[0] = v60;
        v68[1] = v61;
        v62 = _NSNullIfNilObject(v51);
        v68[2] = *MEMORY[0x1E696A578];
        v69[1] = v62;
        v69[2] = v4;
        v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v69 forKeys:v68 count:3];
        v64 = [v59 errorWithDomain:@"com.apple.CascadeSets.CCDatabase" code:1 userInfo:v63];
        CCSetAndReportError(a3, v64);

        sqlite3_close_v2(self->_handle);
        self->_handle = 0;

        goto LABEL_40;
      }
    }
  }

  [(NSMutableDictionary *)self->_cachedSQLiteStatements removeAllObjects];
LABEL_4:
  v5 = 1;
LABEL_41:

  v57 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)closeWithError:(id *)a3
{
  v19[3] = *MEMORY[0x1E69E9840];
  if (self->_handle)
  {
    [(NSMutableDictionary *)self->_cachedSQLiteStatements removeAllObjects];
    v5 = sqlite3_close_v2(self->_handle);
    v6 = v5 == 0;
    if (v5)
    {
      v7 = v5;
      v8 = sqlite3_extended_errcode(self->_handle);
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to close database at path: %@", self->_path];
      v10 = MEMORY[0x1E696ABC0];
      v11 = *MEMORY[0x1E696A368];
      v19[0] = self->_path;
      v12 = *MEMORY[0x1E696AA08];
      v18[0] = v11;
      v18[1] = v12;
      v13 = _createSQLiteAPIErrorFromResultCode(v7, v8);
      v18[2] = *MEMORY[0x1E696A578];
      v19[1] = v13;
      v19[2] = v9;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];
      v15 = [v10 errorWithDomain:@"com.apple.CascadeSets.CCDatabase" code:2 userInfo:v14];
      CCSetAndReportError(a3, v15);
    }

    self->_handle = 0;
  }

  else
  {
    v6 = 1;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)_validateCommand:(id)a3 outError:(id *)a4
{
  v30[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (!self->_handle)
  {
    if (!a4)
    {
      goto LABEL_12;
    }

    v9 = MEMORY[0x1E696AEC0];
    v10 = _errorDescriptionForCommand();
    v11 = [v9 stringWithFormat:@"Database is not open. %@", v10];

    v12 = objc_alloc(MEMORY[0x1E696ABC0]);
    path = self->_path;
    v14 = *MEMORY[0x1E696A578];
    v29[0] = *MEMORY[0x1E696A368];
    v29[1] = v14;
    v30[0] = path;
    v30[1] = v11;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];
    v16 = v12;
    v17 = 6;
LABEL_11:
    *a4 = [v16 initWithDomain:@"com.apple.CascadeSets.CCDatabase" code:v17 userInfo:v15];

    LOBYTE(a4) = 0;
    goto LABEL_12;
  }

  if (!v6)
  {
    if (!a4)
    {
      goto LABEL_12;
    }

    v11 = _errorDescriptionForCommand();
    v18 = objc_alloc(MEMORY[0x1E696ABC0]);
    v19 = self->_path;
    v20 = *MEMORY[0x1E696A578];
    v27[0] = *MEMORY[0x1E696A368];
    v27[1] = v20;
    v28[0] = v19;
    v28[1] = v11;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
    v16 = v18;
    v17 = 7;
    goto LABEL_11;
  }

  v8 = [v6 commandString];

  if (!v8)
  {
    if (!a4)
    {
      goto LABEL_12;
    }

    v11 = _errorDescriptionForCommand();
    v21 = objc_alloc(MEMORY[0x1E696ABC0]);
    v22 = self->_path;
    v25[0] = *MEMORY[0x1E696A368];
    v25[1] = @"command";
    v26[0] = v22;
    v26[1] = v7;
    v25[2] = *MEMORY[0x1E696A578];
    v26[2] = v11;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:3];
    v16 = v21;
    v17 = 8;
    goto LABEL_11;
  }

  LOBYTE(a4) = 1;
LABEL_12:

  v23 = *MEMORY[0x1E69E9840];
  return a4;
}

- (BOOL)_prepareSqliteStatement:(sqlite3_stmt *)a3 usingCommand:(id)a4 outError:(id *)a5
{
  v21[4] = *MEMORY[0x1E69E9840];
  v8 = a4;
  handle = self->_handle;
  v10 = [v8 commandString];
  v11 = sqlite3_prepare_v2(handle, [v10 UTF8String], 0x80000000, a3, 0);

  if (v11)
  {
    v12 = sqlite3_extended_errcode(self->_handle);
    if (a3)
    {
      sqlite3_finalize(*a3);
    }

    if (a5)
    {
      v13 = _errorDescriptionForCommand();
      v14 = objc_alloc(MEMORY[0x1E696ABC0]);
      path = self->_path;
      v20[0] = *MEMORY[0x1E696A368];
      v20[1] = @"command";
      v21[0] = path;
      v21[1] = v8;
      v20[2] = *MEMORY[0x1E696AA08];
      v16 = _createSQLiteAPIErrorFromResultCode(v11, v12);
      v20[3] = *MEMORY[0x1E696A578];
      v21[2] = v16;
      v21[3] = v13;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:4];
      *a5 = [v14 initWithDomain:@"com.apple.CascadeSets.CCDatabase" code:2 userInfo:v17];
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return v11 == 0;
}

- (BOOL)_validateAndBindSqliteStatementParameters:(sqlite3_stmt *)a3 usingCommand:(id)a4 outError:(id *)a5
{
  v42 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [v8 parameters];
  v10 = [v9 count];
  v11 = sqlite3_bind_parameter_count(a3);
  if ((v11 & 0x80000000) == 0 && v11 != v10)
  {
    if (a5)
    {
      v12 = _errorDescriptionForCommand();
      v13 = objc_alloc(MEMORY[0x1E696ABC0]);
      path = self->_path;
      v35[0] = *MEMORY[0x1E696A368];
      v35[1] = @"command";
      v36[0] = path;
      v36[1] = v8;
      v35[2] = *MEMORY[0x1E696A578];
      v36[2] = v12;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:3];
      *a5 = [v13 initWithDomain:@"com.apple.CascadeSets.CCDatabase" code:9 userInfo:v15];
      goto LABEL_31;
    }

    goto LABEL_33;
  }

  if (!v10)
  {
LABEL_28:
    LOBYTE(a5) = 1;
    goto LABEL_33;
  }

  v16 = 0;
  while (1)
  {
    v12 = [v9 objectAtIndex:{v16++, v31}];
    v17 = [v12 databaseValue_type];
    if (v17 <= 2)
    {
      break;
    }

    switch(v17)
    {
      case 3:
        v19 = sqlite3_bind_int64(a3, v16, [v12 databaseValue_integerRepresentation]);
        goto LABEL_25;
      case 4:
        v19 = sqlite3_bind_null(a3, v16);
        goto LABEL_25;
      case 5:
        v19 = sqlite3_bind_text(a3, v16, [v12 databaseValue_textRepresentation], -1, 0);
        goto LABEL_25;
    }

LABEL_20:

LABEL_27:
    if (v10 == v16)
    {
      goto LABEL_28;
    }
  }

  if (v17)
  {
    if (v17 == 1)
    {
      *buf = 0;
      v23 = [v12 databaseValue_blobRepresentationWithLength:buf];
      if (*buf)
      {
        v19 = sqlite3_bind_blob64(a3, v16, v23, *buf, 0);
      }

      else
      {
        v19 = sqlite3_bind_zeroblob(a3, v16, 0);
      }

      goto LABEL_25;
    }

    if (v17 == 2)
    {
      [v12 databaseValue_doubleRepresentation];
      v19 = sqlite3_bind_double(a3, v16, v18);
LABEL_25:
      v21 = v19;
      goto LABEL_26;
    }

    goto LABEL_20;
  }

  v20 = [v12 description];
  v21 = sqlite3_bind_text(a3, v16, [v20 UTF8String], -1, 0);

  v22 = __biome_log_for_category();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v32 = [MEMORY[0x1E696AD98] numberWithInt:v16];
    v31 = [MEMORY[0x1E696AD98] numberWithInteger:0];
    *buf = 138412802;
    *&buf[4] = v12;
    v38 = 2112;
    v39 = v32;
    v40 = 2112;
    v41 = v31;
    _os_log_error_impl(&dword_1B6DB2000, v22, OS_LOG_TYPE_ERROR, "Bind parameter: %@ with unspecified type (sqlite_parameter_index: %@, valueType: %@)", buf, 0x20u);
  }

LABEL_26:
  if (!v21)
  {
    goto LABEL_27;
  }

  if (a5)
  {
    v24 = sqlite3_extended_errcode(self->_handle);
    v15 = _errorDescriptionForCommand();
    v25 = objc_alloc(MEMORY[0x1E696ABC0]);
    v26 = self->_path;
    v33[0] = *MEMORY[0x1E696A368];
    v33[1] = @"command";
    v34[0] = v26;
    v34[1] = v8;
    v33[2] = *MEMORY[0x1E696AA08];
    v27 = _createSQLiteAPIErrorFromResultCode(v21, v24);
    v33[3] = *MEMORY[0x1E696A578];
    v34[2] = v27;
    v34[3] = v15;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:4];
    *a5 = [v25 initWithDomain:@"com.apple.CascadeSets.CCDatabase" code:2 userInfo:v28];

LABEL_31:
  }

  LOBYTE(a5) = 0;
LABEL_33:

  v29 = *MEMORY[0x1E69E9840];
  return a5;
}

- (id)_cachedOrPreparedStatementFromCommand:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  v24 = 0;
  v9 = 0;
  if ([(CCSQLiteDatabase *)self _validateCommand:v8 outError:a5])
  {
    if ((v6 & 2) != 0)
    {
      cachedSQLiteStatements = self->_cachedSQLiteStatements;
      v11 = [v8 commandString];
      v12 = [(NSMutableDictionary *)cachedSQLiteStatements objectForKey:v11];

      if (v12)
      {
        v13 = [v12 stmt];
        if (!v13 || (v14 = v13, sqlite3_reset(v13)) || (v15 = sqlite3_clear_bindings(v14), v16 = v12, v15))
        {
          v16 = 0;
          v14 = 0;
        }

        v24 = v14;
      }

      else
      {
        v14 = 0;
        v16 = 0;
      }

      v17 = v16;

      if (v14)
      {
        v18 = 0;
        goto LABEL_15;
      }
    }

    else
    {
      v17 = 0;
    }

    if (![(CCSQLiteDatabase *)self _prepareSqliteStatement:&v24 usingCommand:v8 outError:a5])
    {
      v9 = 0;
      v18 = 0;
LABEL_25:

      goto LABEL_26;
    }

    v19 = [CCSQLitePreparedStatement alloc];
    v18 = [(CCSQLitePreparedStatement *)v19 initWithStmt:v24];
    v14 = v24;
LABEL_15:
    if ([(CCSQLiteDatabase *)self _validateAndBindSqliteStatementParameters:v14 usingCommand:v8 outError:a5])
    {
      if ((v6 & 2) != 0 && v18)
      {
        v20 = self->_cachedSQLiteStatements;
        v21 = [v8 commandString];
        [(NSMutableDictionary *)v20 setObject:v18 forKey:v21];
      }

      if (v18)
      {
        v22 = v18;
      }

      else
      {
        v22 = v17;
      }

      v9 = v22;
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_25;
  }

LABEL_26:

  return v9;
}

- (id)enumerateCommand:(id)a3 options:(unint64_t)a4
{
  v11 = 0;
  v6 = a3;
  v7 = [(CCSQLiteDatabase *)self _cachedOrPreparedStatementFromCommand:v6 options:a4 error:&v11];
  v8 = v11;
  v9 = [[CCDatabaseEnumerationResult alloc] initWithStatement:v7 database:self command:v6 error:v8];

  return v9;
}

- (BOOL)executeCommand:(id)a3 options:(unint64_t)a4 error:(id *)a5 returningRowBlock:(id)a6
{
  v10 = a6;
  v11 = [(CCSQLiteDatabase *)self enumerateCommand:a3 options:a4];
  v12 = [v11 nextRow];
  v13 = [v11 error];

  if (v13)
  {
    v14 = [v11 error];
    CCSetError(a5, v14);
  }

  else if (v10)
  {
    v10[2](v10, v12);
  }

  return v13 == 0;
}

- (BOOL)executeCommandString:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[CCDatabaseCommand alloc] initWithCommandString:v6 parameters:0];

  LOBYTE(a4) = [(CCSQLiteDatabase *)self executeCommand:v7 options:0 error:a4 returningRowBlock:0];
  return a4;
}

- (int)rowsModified:(id *)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  handle = self->_handle;
  if (handle)
  {
    v4 = *MEMORY[0x1E69E9840];

    return sqlite3_changes(handle);
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x1E696ABC0]);
    v11 = *MEMORY[0x1E696A578];
    v12[0] = @"Invalid sqlite handle.";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v9 = [v7 initWithDomain:@"com.apple.CascadeSets.CCDatabase" code:6 userInfo:v8];

    CCSetError(a3, v9);
    v10 = *MEMORY[0x1E69E9840];
    return -1;
  }
}

- (void)openWithError:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:a1];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:a2];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3(&dword_1B6DB2000, v5, v6, "Failed to enable WAL journal_mode with errorCode: %@, extendedCode: %@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

@end