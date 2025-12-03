@interface BMSQLResultSet
- (BMSQLResultSet)initWithQuery:(id)query error:(id)error database:(id)database;
- (BMSQLResultSet)initWithStatement:(sqlite3_stmt *)statement database:(id)database;
- (BOOL)_next;
- (BOOL)next;
- (NSArray)columns;
- (id)_columns;
- (id)_keySet;
- (id)description;
- (void)dealloc;
@end

@implementation BMSQLResultSet

- (BOOL)next
{
  v3 = objc_autoreleasePoolPush();
  LOBYTE(self) = [(BMSQLResultSet *)self _next];
  objc_autoreleasePoolPop(v3);
  return self;
}

- (BOOL)_next
{
  v43 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  if (self->_finished || !self->_stmt)
  {
    goto LABEL_29;
  }

  v3 = __biome_log_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_cursor];
    [(BMSQLResultSet *)v4 _next:buf];
  }

  v5 = sqlite3_step(self->_stmt);
  v6 = v5;
  if (v5 == 101)
  {
    self->_finished = 1;
    row = self->_row;
    self->_row = 0;

    error = self->_error;
    self->_error = 0;

LABEL_29:
    v11 = 0;
    goto LABEL_30;
  }

  if (v5 != 100)
  {
    v30 = self->_row;
    self->_row = 0;

    v31 = [(BMSQLDatabase *)self->_database db];
    v32 = MEMORY[0x1E696AEC0];
    v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_cursor];
    v34 = [v32 stringWithFormat:@"Failed to fetch row %@ in query %@", v33, self->_query];
    v35 = v34;
    v36 = BMSQLDatabaseError(v6, v31, [v34 UTF8String]);
    v37 = self->_error;
    self->_error = v36;

    v11 = 0;
    self->_finished = 1;
    goto LABEL_30;
  }

  _columns = [(BMSQLResultSet *)self _columns];
  v7 = sqlite3_column_count(self->_stmt);
  v8 = MEMORY[0x1E695DF90];
  _keySet = [(BMSQLResultSet *)self _keySet];
  v40 = [v8 dictionaryWithSharedKeySet:_keySet];

  if (!v7)
  {
LABEL_26:
    v24 = [v40 copy];
    v25 = self->_row;
    self->_row = v24;

    ++self->_cursor;
    v11 = 1;
    goto LABEL_27;
  }

  v10 = 0;
  v11 = 0;
  v12 = v7;
  while (1)
  {
    v13 = [_columns objectAtIndexedSubscript:v10];
    v14 = sqlite3_column_type(self->_stmt, v10);
    v15 = 0;
    if (v14 > 2)
    {
      break;
    }

    if (v14 == 1)
    {
      v16 = [MEMORY[0x1E696AD98] numberWithLongLong:{sqlite3_column_int64(self->_stmt, v10)}];
      goto LABEL_18;
    }

    if (v14 == 2)
    {
      v16 = [MEMORY[0x1E696AD98] numberWithDouble:{sqlite3_column_double(self->_stmt, v10)}];
LABEL_18:
      v15 = v16;
    }

LABEL_25:
    [v40 setObject:v15 forKeyedSubscript:v13];

    v11 = ++v10 >= v12;
    if (v12 == v10)
    {
      goto LABEL_26;
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {
      v17 = sqlite3_column_blob(self->_stmt, v10);
      if (!v17)
      {
        goto LABEL_23;
      }

      v16 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v17 length:{sqlite3_column_bytes(self->_stmt, v10)}];
      goto LABEL_18;
    }

    goto LABEL_25;
  }

  v18 = sqlite3_column_text(self->_stmt, v10);
  if (!v18)
  {
LABEL_23:
    v15 = 0;
    goto LABEL_25;
  }

  v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v18];
  if (![v13 hasSuffix:@"_json"])
  {
    v15 = v19;
    goto LABEL_25;
  }

  v20 = [v19 dataUsingEncoding:4];
  v41 = 0;
  v15 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v20 options:0 error:&v41];
  v21 = v41;
  v22 = v21;
  if (v15)
  {
    v23 = [v13 substringToIndex:{objc_msgSend(v13, "length") - 5}];

    v13 = v23;
    goto LABEL_25;
  }

  self->_finished = 1;
  v38 = self->_error;
  self->_error = v21;

LABEL_27:
LABEL_30:
  os_unfair_lock_unlock(&self->_lock);
  v28 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)dealloc
{
  sqlite3_finalize(self->_stmt);
  v3.receiver = self;
  v3.super_class = BMSQLResultSet;
  [(BMSQLResultSet *)&v3 dealloc];
}

- (BMSQLResultSet)initWithStatement:(sqlite3_stmt *)statement database:(id)database
{
  databaseCopy = database;
  v14.receiver = self;
  v14.super_class = BMSQLResultSet;
  v8 = [(BMSQLResultSet *)&v14 init];
  v9 = v8;
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    v8->_stmt = statement;
    objc_storeStrong(&v8->_database, database);
    v9->_finished = 0;
    v9->_cursor = 0;
    if (statement)
    {
      v10 = sqlite3_sql(statement);
      if (v10)
      {
        v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v10];
        query = v9->_query;
        v9->_query = v11;
      }
    }
  }

  return v9;
}

- (BMSQLResultSet)initWithQuery:(id)query error:(id)error database:(id)database
{
  queryCopy = query;
  errorCopy = error;
  v10 = [(BMSQLResultSet *)self initWithStatement:0 database:database];
  v11 = v10;
  if (v10)
  {
    v10->_lock._os_unfair_lock_opaque = 0;
    v12 = [queryCopy copy];
    query = v11->_query;
    v11->_query = v12;

    objc_storeStrong(&v11->_error, error);
    v11->_finished = 1;
  }

  return v11;
}

- (NSArray)columns
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  _columns = [(BMSQLResultSet *)self _columns];
  os_unfair_lock_unlock(&self->_lock);

  return _columns;
}

- (id)_columns
{
  os_unfair_lock_assert_owner(&self->_lock);
  columns = self->_columns;
  if (!columns)
  {
    v4 = sqlite3_column_count(self->_stmt);
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v4];
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:{sqlite3_column_name(self->_stmt, i)}];
        [v5 addObject:v7];
      }
    }

    v8 = [v5 copy];
    v9 = self->_columns;
    self->_columns = v8;

    columns = self->_columns;
  }

  return columns;
}

- (id)_keySet
{
  os_unfair_lock_assert_owner(&self->_lock);
  keySet = self->_keySet;
  if (!keySet)
  {
    v4 = MEMORY[0x1E695DF90];
    _columns = [(BMSQLResultSet *)self _columns];
    v6 = [v4 sharedKeySetForKeys:_columns];
    v7 = self->_keySet;
    self->_keySet = v6;

    keySet = self->_keySet;
  }

  v8 = keySet;

  return v8;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  query = [(BMSQLResultSet *)self query];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_cursor];
  v7 = [v3 initWithFormat:@"<%@ %p> query: %@, current row: %@", v4, self, query, v6];

  return v7;
}

@end