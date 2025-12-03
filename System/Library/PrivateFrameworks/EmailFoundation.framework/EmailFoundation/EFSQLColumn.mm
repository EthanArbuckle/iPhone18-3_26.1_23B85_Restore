@interface EFSQLColumn
- (BOOL)BOOLValue;
- (EFSQLColumn)initWithPreparedStatement:(id)statement index:(int64_t)index;
- (EFSQLColumn)initWithSQLiteStatement:(sqlite3_stmt *)statement index:(int64_t)index;
- (NSData)dataValue;
- (NSDate)dateValue;
- (NSNumber)numberValue;
- (NSString)name;
- (NSString)stringValue;
- (double)doubleValue;
- (id)debugDescription;
- (id)objectValue;
- (int64_t)int64Value;
- (int64_t)integerValue;
@end

@implementation EFSQLColumn

- (NSString)name
{
  v2 = sqlite3_column_name(self->_statement, self->_index);
  if (v2)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v2];
  }

  return v2;
}

- (int64_t)int64Value
{
  v3 = sqlite3_column_type(self->_statement, self->_index);
  if (v3 == 1)
  {
    statement = self->_statement;
    index = self->_index;

    return sqlite3_column_int64(statement, index);
  }

  else
  {
    if (v3 != 5)
    {
      if ((v3 - 2) > 2)
      {
        v7 = @"UNKNOWN";
      }

      else
      {
        v7 = off_1E8249B90[v3 - 2];
      }

      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expected %@, got %@", @"SQLITE_INTEGER", v7];
      qword_1EC1BF8F0 = [v8 UTF8String];
      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Type mismatch -- %@", v8];
      v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v9 userInfo:0];
      objc_exception_throw(v10);
    }

    return 0;
  }
}

- (NSNumber)numberValue
{
  objectValue = [(EFSQLColumn *)self objectValue];
  v3 = objc_opt_class();
  v4 = objectValue;
  if (v4 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = NSStringFromClass(v3);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = v6;
    v10 = v8;
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expected %@, got %@", v9, v10];
    qword_1EC1BF8F0 = [v11 UTF8String];
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Type mismatch -- %@", v11];
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v12 userInfo:0];
    objc_exception_throw(v13);
  }

  return v4;
}

- (id)objectValue
{
  statement = self->_statement;
  index = self->_index;
  v4 = sqlite3_column_type(statement, index);
  v5 = 0;
  if (v4 > 2)
  {
    if (v4 == 4)
    {
      v8 = MEMORY[0x1E695DEF0];
      v9 = sqlite3_column_blob(statement, index);
      v10 = sqlite3_column_bytes(statement, index);
      v5 = [v8 dataWithBytes:v9 length:v10 & ~(v10 >> 31)];
    }

    else if (v4 == 3)
    {
      v6 = objc_alloc(MEMORY[0x1E696AEC0]);
      v7 = sqlite3_column_text(statement, index);
      v5 = [v6 initWithBytes:v7 length:sqlite3_column_bytes(statement encoding:{index), 4}];
    }
  }

  else if (v4 == 1)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{sqlite3_column_int64(statement, index)}];
  }

  else if (v4 == 2)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:{sqlite3_column_double(statement, index)}];
  }

  return v5;
}

- (NSString)stringValue
{
  if (sqlite3_column_type(self->_statement, self->_index) == 5)
  {
    v3 = 0;
  }

  else
  {
    statement = self->_statement;
    index = self->_index;
    v3 = sqlite3_column_text(statement, index);
    if (v3)
    {
      v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v3 length:sqlite3_column_bytes(statement encoding:{index), 4}];
    }
  }

  return v3;
}

- (BOOL)BOOLValue
{
  v3 = sqlite3_column_type(self->_statement, self->_index);
  if (v3 == 1)
  {
    return sqlite3_column_int(self->_statement, self->_index) != 0;
  }

  if (v3 != 5)
  {
    if ((v3 - 2) > 2)
    {
      v5 = @"UNKNOWN";
    }

    else
    {
      v5 = off_1E8249B90[v3 - 2];
    }

    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expected %@, got %@", @"SQLITE_INTEGER", v5];
    qword_1EC1BF8F0 = [v6 UTF8String];
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Type mismatch -- %@", v6];
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v7 userInfo:0];
    objc_exception_throw(v8);
  }

  return 0;
}

- (NSDate)dateValue
{
  v3 = sqlite3_column_type(self->_statement, self->_index);
  if ((v3 - 1) >= 2)
  {
    if (v3 != 5)
    {
      v6 = @"UNKNOWN";
      if (v3 == 4)
      {
        v6 = @"SQLITE_BLOB";
      }

      if (v3 == 3)
      {
        v6 = @"SQLITE_TEXT";
      }

      v7 = v6;
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expected %@, got %@", @"SQLITE_INTEGER", v7];
      qword_1EC1BF8F0 = [v8 UTF8String];
      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Type mismatch -- %@", v8];
      v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v9 userInfo:0];
      objc_exception_throw(v10);
    }

    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:{sqlite3_column_int64(self->_statement, self->_index)}];
  }

  return v4;
}

- (int64_t)integerValue
{
  v3 = sqlite3_column_type(self->_statement, self->_index);
  if (v3 == 1)
  {
    return sqlite3_column_int(self->_statement, self->_index);
  }

  if (v3 != 5)
  {
    if ((v3 - 2) > 2)
    {
      v5 = @"UNKNOWN";
    }

    else
    {
      v5 = off_1E8249B90[v3 - 2];
    }

    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expected %@, got %@", @"SQLITE_INTEGER", v5];
    qword_1EC1BF8F0 = [v6 UTF8String];
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Type mismatch -- %@", v6];
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v7 userInfo:0];
    objc_exception_throw(v8);
  }

  return 0;
}

- (NSData)dataValue
{
  if (sqlite3_column_type(self->_statement, self->_index) == 5)
  {
    v3 = 0;
  }

  else
  {
    objectValue = [(EFSQLColumn *)self objectValue];
    v5 = objc_opt_class();
    v3 = objectValue;
    if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = NSStringFromClass(v5);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = v7;
      v11 = v9;
      v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expected %@, got %@", v10, v11];
      qword_1EC1BF8F0 = [v12 UTF8String];
      v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Type mismatch -- %@", v12];
      v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v13 userInfo:0];
      objc_exception_throw(v14);
    }
  }

  return v3;
}

- (EFSQLColumn)initWithSQLiteStatement:(sqlite3_stmt *)statement index:(int64_t)index
{
  v7.receiver = self;
  v7.super_class = EFSQLColumn;
  result = [(EFSQLColumn *)&v7 init];
  if (result)
  {
    result->_index = index;
    result->_statement = statement;
  }

  return result;
}

- (EFSQLColumn)initWithPreparedStatement:(id)statement index:(int64_t)index
{
  statementCopy = statement;
  v7 = -[EFSQLColumn initWithSQLiteStatement:index:](self, "initWithSQLiteStatement:index:", [statementCopy compiled], index);

  return v7;
}

- (double)doubleValue
{
  v3 = sqlite3_column_type(self->_statement, self->_index);
  if (v3 == 2)
  {
    statement = self->_statement;
    index = self->_index;

    return sqlite3_column_double(statement, index);
  }

  else
  {
    if (v3 != 5)
    {
      if ((v3 - 1) > 3)
      {
        v7 = @"UNKNOWN";
      }

      else
      {
        v7 = off_1E8249BA8[v3 - 1];
      }

      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expected %@, got %@", @"SQLITE_FLOAT", v7];
      qword_1EC1BF8F0 = [v8 UTF8String];
      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Type mismatch -- %@", v8];
      v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v9 userInfo:0];
      objc_exception_throw(v10);
    }

    return 0.0;
  }
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  index = [(EFSQLColumn *)self index];
  name = [(EFSQLColumn *)self name];
  objectValue = [(EFSQLColumn *)self objectValue];
  v8 = [v3 stringWithFormat:@"<%@: %p index=%ld name=%@ value=%@>", v4, self, index, name, objectValue];

  return v8;
}

@end