@interface MNTracePreparedStatement
+ (id)preparedStatementForTrace:(id)a3 statement:(id)a4 outError:(id *)a5;
- (BOOL)_prepareStatementForTrace:(id)a3 statement:(id)a4 outError:(id *)a5;
- (BOOL)clearBindings;
- (BOOL)execute;
- (BOOL)reset;
- (BOOL)step;
- (BOOL)stepRow;
- (MNTracePreparedStatement)init;
- (id)columnData:(unint64_t)a3;
- (id)columnObjects:(unint64_t)a3 ofClasses:(id)a4;
- (id)columnObjectsOld:(unint64_t)a3 ofClasses:(id)a4;
- (id)columnString:(unint64_t)a3;
- (id)debugDescription;
- (id)initForTrace:(id)a3 statement:(id)a4 outError:(id *)a5;
- (unint64_t)_bindParameterIndexWithName:(id)a3;
- (void)bind:(unint64_t)a3 data:(id)a4;
- (void)bind:(unint64_t)a3 double:(double)a4;
- (void)bind:(unint64_t)a3 int:(int)a4;
- (void)bind:(unint64_t)a3 string:(id)a4;
- (void)bindNull:(unint64_t)a3;
- (void)bindNullParameter:(id)a3;
- (void)bindParameter:(id)a3 data:(id)a4;
- (void)bindParameter:(id)a3 double:(double)a4;
- (void)bindParameter:(id)a3 string:(id)a4;
- (void)dealloc;
- (void)finalize;
@end

@implementation MNTracePreparedStatement

- (BOOL)execute
{
  if ([(MNTracePreparedStatement *)self step])
  {
    v3 = [(MNTracePreparedStatement *)self reset];
  }

  else
  {
    v3 = 0;
  }

  return v3 & [(MNTracePreparedStatement *)self clearBindings];
}

- (BOOL)step
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = sqlite3_step(self->_preparedStatement);
  v4 = v3 & 0xFFFFFFFE;
  if ((v3 & 0xFFFFFFFE) != 0x64)
  {
    v7 = v3;
    v8 = MEMORY[0x1E696AEC0];
    v9 = sqlite3_errstr(v3);
    v10 = [v8 stringWithFormat:@"Error (%d:%s) calling sqlite3_step(): %s", v7, v9, sqlite3_errmsg(self->_db)];
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "result == SQLITE_DONE || result == SQLITE_ROW";
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", buf, 0x16u);
    }
  }

  result = v4 == 100;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)reset
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = sqlite3_reset(self->_preparedStatement);
  v4 = v3;
  if (v3)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = sqlite3_errstr(v3);
    v9 = [v7 stringWithFormat:@"Error (%d:%s) calling sqlite3_reset(): %s", v4, v8, sqlite3_errmsg(self->_db)];
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "result == SQLITE_OK";
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", buf, 0x16u);
    }
  }

  result = v4 == 0;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)clearBindings
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = sqlite3_clear_bindings(self->_preparedStatement);
  v4 = v3;
  if (v3)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = sqlite3_errstr(v3);
    v9 = [v7 stringWithFormat:@"Error (%d:%s) calling sqlite3_clear_bindings(): %s", v4, v8, sqlite3_errmsg(self->_db)];
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "result == SQLITE_OK";
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", buf, 0x16u);
    }
  }

  result = v4 == 0;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)debugDescription
{
  v2 = sqlite3_expanded_sql(self->_preparedStatement);
  v3 = MEMORY[0x1E696AEC0];

  return [v3 stringWithUTF8String:v2];
}

- (unint64_t)_bindParameterIndexWithName:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = sqlite3_bind_parameter_index(self->_preparedStatement, [v4 UTF8String]);
  if (v5 <= 0)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error calling -[MNTracePreparedStatement bindParameter:] because no parameter with the name %@ was found.", v4];
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "NO";
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", buf, 0x16u);
    }

    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v5;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)_prepareStatementForTrace:(id)a3 statement:(id)a4 outError:(id *)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (a5)
  {
    *a5 = 0;
  }

  v10 = sqlite3_prepare_v2([v8 db], objc_msgSend(v9, "UTF8String"), -1, &self->_preparedStatement, 0);
  if (v10)
  {
    v11 = sqlite3_errmsg([v8 db]);
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error (%s) preparing statement %@: %s", sqlite3_errstr(v10), v9, v11];
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v12;
      _os_log_impl(&dword_1D311E000, v13, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    if (a5)
    {
      v18 = *MEMORY[0x1E696A278];
      v19 = v12;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MNTraceErrorDomain" code:9 userInfo:v14];
      *a5 = v15;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v10 == 0;
}

- (id)columnObjectsOld:(unint64_t)a3 ofClasses:(id)a4
{
  v6 = MEMORY[0x1E696ACD0];
  v7 = a4;
  v8 = [(MNTracePreparedStatement *)self columnData:a3];
  v9 = [v6 unarchivedArrayOfObjectsOfClasses:v7 fromData:v8 error:0];

  return v9;
}

- (id)columnObjects:(unint64_t)a3 ofClasses:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696ACD0];
  v7 = MEMORY[0x1E695DFD8];
  v8 = a4;
  v9 = [v7 setWithObject:objc_opt_class()];
  v10 = [(MNTracePreparedStatement *)self columnData:a3];
  v16 = 0;
  v11 = [v6 unarchivedDictionaryWithKeysOfClasses:v9 objectsOfClasses:v8 fromData:v10 error:&v16];

  v12 = v16;
  if (v12)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v12;
      _os_log_impl(&dword_1D311E000, v13, OS_LOG_TYPE_ERROR, "columnObjects error decoding: %@", buf, 0xCu);
    }
  }

  v14 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)columnData:(unint64_t)a3
{
  v3 = a3;
  v5 = sqlite3_column_bytes(self->_preparedStatement, a3);
  if (v5 < 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E695DEF0] dataWithBytes:sqlite3_column_blob(self->_preparedStatement length:{v3), v5}];
  }

  return v6;
}

- (id)columnString:(unint64_t)a3
{
  v3 = sqlite3_column_text(self->_preparedStatement, a3);
  if (v3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v3];
  }

  else
  {
    v4 = &stru_1F4EB6B70;
  }

  return v4;
}

- (BOOL)stepRow
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = sqlite3_step(self->_preparedStatement);
  v4 = v3;
  if ((v3 & 0xFFFFFFFE) != 0x64)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = sqlite3_errstr(v3);
    v9 = [v7 stringWithFormat:@"Error (%d:%s) calling sqlite3_step(): %s", v4, v8, sqlite3_errmsg(self->_db)];
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "result == SQLITE_DONE || result == SQLITE_ROW";
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", buf, 0x16u);
    }
  }

  result = v4 == 100;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)bindNullParameter:(id)a3
{
  v4 = [(MNTracePreparedStatement *)self _bindParameterIndexWithName:a3];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {

    [(MNTracePreparedStatement *)self bindNull:v4];
  }
}

- (void)bindParameter:(id)a3 data:(id)a4
{
  v7 = a4;
  v6 = [(MNTracePreparedStatement *)self _bindParameterIndexWithName:a3];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(MNTracePreparedStatement *)self bind:v6 data:v7];
  }
}

- (void)bindParameter:(id)a3 string:(id)a4
{
  v7 = a4;
  v6 = [(MNTracePreparedStatement *)self _bindParameterIndexWithName:a3];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(MNTracePreparedStatement *)self bind:v6 string:v7];
  }
}

- (void)bindParameter:(id)a3 double:(double)a4
{
  v6 = [(MNTracePreparedStatement *)self _bindParameterIndexWithName:a3];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {

    [(MNTracePreparedStatement *)self bind:v6 double:a4];
  }
}

- (void)bindNull:(unint64_t)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = sqlite3_bind_null(self->_preparedStatement, a3);
  if (v4)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = sqlite3_errstr(v4);
    v8 = [v6 stringWithFormat:@"Error (%s) calling sqlite3_bind_null(): %s", v7, sqlite3_errmsg(self->_db)];
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "result == SQLITE_OK";
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", buf, 0x16u);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)bind:(unint64_t)a3 data:(id)a4
{
  v5 = a3;
  v22 = *MEMORY[0x1E69E9840];
  preparedStatement = self->_preparedStatement;
  v8 = a4;
  v9 = a4;
  v10 = [v9 bytes];
  v11 = [v9 length];

  v12 = sqlite3_bind_blob(preparedStatement, v5, v10, v11, 0xFFFFFFFFFFFFFFFFLL);
  if (v12)
  {
    v14 = MEMORY[0x1E696AEC0];
    v15 = sqlite3_errstr(v12);
    v16 = [v14 stringWithFormat:@"Error (%s) calling sqlite3_bind_blob(): %s", v15, sqlite3_errmsg(self->_db)];
    v17 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "result == SQLITE_OK";
      v20 = 2112;
      v21 = v16;
      _os_log_impl(&dword_1D311E000, v17, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", buf, 0x16u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)bind:(unint64_t)a3 string:(id)a4
{
  v5 = a3;
  v19 = *MEMORY[0x1E69E9840];
  preparedStatement = self->_preparedStatement;
  v8 = a4;
  v9 = sqlite3_bind_text(preparedStatement, v5, [a4 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  if (v9)
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = sqlite3_errstr(v9);
    v13 = [v11 stringWithFormat:@"Error (%s) calling sqlite3_bind_text(): %s", v12, sqlite3_errmsg(self->_db)];
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "result == SQLITE_OK";
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&dword_1D311E000, v14, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", buf, 0x16u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)bind:(unint64_t)a3 double:(double)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = sqlite3_bind_double(self->_preparedStatement, a3, a4);
  if (v5)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = sqlite3_errstr(v5);
    v9 = [v7 stringWithFormat:@"Error (%s) calling sqlite3_bind_double(): %s", v8, sqlite3_errmsg(self->_db)];
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "result == SQLITE_OK";
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", buf, 0x16u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)bind:(unint64_t)a3 int:(int)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = sqlite3_bind_int(self->_preparedStatement, a3, a4);
  if (v5)
  {
    v7 = v5;
    v8 = MEMORY[0x1E696AEC0];
    v9 = sqlite3_errstr(v5);
    v10 = [v8 stringWithFormat:@"Error (%d:%s) calling sqlite3_bind_int(): %s", v7, v9, sqlite3_errmsg(self->_db)];
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "result == SQLITE_OK";
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", buf, 0x16u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)finalize
{
  sqlite3_finalize(self->_preparedStatement);
  self->_db = 0;
  self->_preparedStatement = 0;
}

- (void)dealloc
{
  [(MNTracePreparedStatement *)self finalize];
  v3.receiver = self;
  v3.super_class = MNTracePreparedStatement;
  [(MNTracePreparedStatement *)&v3 dealloc];
}

- (id)initForTrace:(id)a3 statement:(id)a4 outError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = MNTracePreparedStatement;
  v10 = [(MNTracePreparedStatement *)&v14 init];
  v11 = v10;
  if (v10)
  {
    if (![(MNTracePreparedStatement *)v10 _prepareStatementForTrace:v8 statement:v9 outError:a5])
    {
      v12 = 0;
      goto LABEL_6;
    }

    v11->_db = [v8 db];
  }

  v12 = v11;
LABEL_6:

  return v12;
}

- (MNTracePreparedStatement)init
{
  result = [MEMORY[0x1E695DF30] raise:@"GEOMethodNotAvailableException" format:@"This method is unavailable."];
  __break(1u);
  return result;
}

+ (id)preparedStatementForTrace:(id)a3 statement:(id)a4 outError:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[MNTracePreparedStatement alloc] initForTrace:v8 statement:v7 outError:a5];

  return v9;
}

@end