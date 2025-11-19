@interface _MSVSQLDatabaseFunctionContext
- (double)doubleValueAtArgumentIndex:(int64_t)a3;
- (id)dataValueAtArgumentIndex:(int64_t)a3;
- (id)dateValueAtArgumentIndex:(int64_t)a3;
- (id)functionContextOfClass:(Class)a3 atArgumentIndex:(int64_t)a4;
- (id)jsonDataAtArgumentIndex:(int64_t)a3;
- (id)jsonValueAtArgumentIndex:(int64_t)a3 error:(id *)a4;
- (id)objectValueAtArgumentIndex:(int64_t)a3;
- (id)returnData:(id)a3;
- (id)returnDate:(id)a3;
- (id)returnError:(id)a3 sqliteCode:(int)a4;
- (id)returnFunctionContext:(id)a3;
- (id)returnJSON:(id)a3 error:(id *)a4;
- (id)returnString:(id)a3;
- (id)stringValueAtArgumentIndex:(int64_t)a3;
- (int64_t)int64ValueAtArgumentIndex:(int64_t)a3;
- (sqlite3_value)_valueAtIndex:(int64_t)a3;
- (unint64_t)uint64ValueAtArgumentIndex:(int64_t)a3;
- (void)memoizeObject:(id)a3 forArgumentIndex:(int64_t)a4;
@end

@implementation _MSVSQLDatabaseFunctionContext

- (id)returnError:(id)a3 sqliteCode:(int)a4
{
  v6 = [a3 msv_description];
  sqlite3_result_error(self->_context, [v6 UTF8String], objc_msgSend(v6, "length"));
  sqlite3_result_error_code(self->_context, a4);

  return self;
}

- (id)returnFunctionContext:(id)a3
{
  v4 = a3;
  context = self->_context;
  v6 = v4;
  ClassName = object_getClassName([v6 classForCoder]);
  sqlite3_result_pointer(context, v6, ClassName, _MSVSQLBridgeDestroy);

  return self;
}

- (id)returnJSON:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v6])
  {
    v7 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v6 options:0 error:a4];
    v8 = v7;
    if (a4)
    {
      sqlite3_result_text64(self->_context, [v7 bytes], objc_msgSend(v7, "length"), 0xFFFFFFFFFFFFFFFFLL, 1u);
    }

    else
    {
      self = 0;
    }

    a4 = self;
  }

  else if (a4)
  {
    v9 = MEMORY[0x1E696ABC0];
    v13 = @"jsonValue";
    v14[0] = v6;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    *a4 = [v9 msv_errorWithDomain:@"MSVSQLDatabaseError" code:2 userInfo:v10 debugDescription:{@"Not valid JSON object: %@", v6}];

    a4 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return a4;
}

- (id)returnDate:(id)a3
{
  [a3 timeIntervalSince1970];

  return [(_MSVSQLDatabaseFunctionContext *)self returnDouble:?];
}

- (id)returnData:(id)a3
{
  context = self->_context;
  v6 = a3;
  v7 = a3;
  v8 = [v7 bytes];
  v9 = [v7 length];

  sqlite3_result_blob64(context, v8, v9, 0xFFFFFFFFFFFFFFFFLL);
  return self;
}

- (id)returnString:(id)a3
{
  context = self->_context;
  v6 = a3;
  v7 = a3;
  v8 = [v7 UTF8String];
  v9 = [v7 length];

  sqlite3_result_text(context, v8, v9, 0xFFFFFFFFFFFFFFFFLL);
  return self;
}

- (void)memoizeObject:(id)a3 forArgumentIndex:(int64_t)a4
{
  v7 = a3;
  if ([(_MSVSQLDatabaseFunctionContext *)self numberOfArguments]<= a4)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:1008 description:{@"argument index out of bounds: %d/%d", a4, -[_MSVSQLDatabaseFunctionContext numberOfArguments](self, "numberOfArguments")}];
  }

  context = self->_context;

  sqlite3_set_auxdata(context, a4, v7, _MSVSQLBridgeDestroy);
}

- (id)functionContextOfClass:(Class)a3 atArgumentIndex:(int64_t)a4
{
  v5 = [(_MSVSQLDatabaseFunctionContext *)self _valueAtIndex:a4];
  ClassName = object_getClassName(a3);

  return sqlite3_value_pointer(v5, ClassName);
}

- (id)objectValueAtArgumentIndex:(int64_t)a3
{
  v5 = sqlite3_value_type([(_MSVSQLDatabaseFunctionContext *)self _valueAtIndex:?]);
  v6 = 0;
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v6 = [(_MSVSQLDatabaseFunctionContext *)self stringValueAtArgumentIndex:a3];
    }

    else if (v5 == 4)
    {
      v6 = [(_MSVSQLDatabaseFunctionContext *)self dataValueAtArgumentIndex:a3];
    }
  }

  else if (v5 == 1)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[_MSVSQLDatabaseFunctionContext int64ValueAtArgumentIndex:](self, "int64ValueAtArgumentIndex:", a3)}];
  }

  else if (v5 == 2)
  {
    v7 = MEMORY[0x1E696AD98];
    [(_MSVSQLDatabaseFunctionContext *)self doubleValueAtArgumentIndex:a3];
    v6 = [v7 numberWithDouble:?];
  }

  return v6;
}

- (id)jsonDataAtArgumentIndex:(int64_t)a3
{
  if ([(_MSVSQLDatabaseFunctionContext *)self isNullValueAtArgumentIndex:?])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(_MSVSQLDatabaseFunctionContext *)self stringValueAtArgumentIndex:a3];
    v5 = [v6 dataUsingEncoding:4];
  }

  return v5;
}

- (id)jsonValueAtArgumentIndex:(int64_t)a3 error:(id *)a4
{
  v5 = [(_MSVSQLDatabaseFunctionContext *)self jsonDataAtArgumentIndex:a3];
  if (v5)
  {
    v6 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v5 options:0 error:a4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)dateValueAtArgumentIndex:(int64_t)a3
{
  v5 = sqlite3_value_type([(_MSVSQLDatabaseFunctionContext *)self _valueAtIndex:?]);
  if ((v5 - 1) >= 2)
  {
    if (v5 == 3)
    {
      v8 = objc_alloc_init(MEMORY[0x1E696AC80]);
      v9 = [(_MSVSQLDatabaseFunctionContext *)self stringValueAtArgumentIndex:a3];
      v7 = [v8 dateFromString:v9];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v6 = MEMORY[0x1E695DF00];
    [(_MSVSQLDatabaseFunctionContext *)self doubleValueAtArgumentIndex:a3];
    v7 = [v6 dateWithTimeIntervalSince1970:?];
  }

  return v7;
}

- (unint64_t)uint64ValueAtArgumentIndex:(int64_t)a3
{
  v3 = [(_MSVSQLDatabaseFunctionContext *)self _valueAtIndex:a3];

  return sqlite3_value_int64(v3);
}

- (id)dataValueAtArgumentIndex:(int64_t)a3
{
  v3 = [(_MSVSQLDatabaseFunctionContext *)self _valueAtIndex:a3];
  v4 = sqlite3_value_blob(v3);
  v5 = sqlite3_value_bytes(v3);
  v6 = MEMORY[0x1E695DEF0];

  return [v6 dataWithBytes:v4 length:v5];
}

- (id)stringValueAtArgumentIndex:(int64_t)a3
{
  if ([(_MSVSQLDatabaseFunctionContext *)self isNullValueAtArgumentIndex:?])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(_MSVSQLDatabaseFunctionContext *)self _valueAtIndex:a3];
    v7 = sqlite3_value_text(v6);
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v7 length:sqlite3_value_bytes(v6) encoding:4];
  }

  return v5;
}

- (double)doubleValueAtArgumentIndex:(int64_t)a3
{
  v3 = [(_MSVSQLDatabaseFunctionContext *)self _valueAtIndex:a3];

  return sqlite3_value_double(v3);
}

- (int64_t)int64ValueAtArgumentIndex:(int64_t)a3
{
  v3 = [(_MSVSQLDatabaseFunctionContext *)self _valueAtIndex:a3];

  return sqlite3_value_int64(v3);
}

- (sqlite3_value)_valueAtIndex:(int64_t)a3
{
  if ([(_MSVSQLDatabaseFunctionContext *)self numberOfArguments]<= a3)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:884 description:{@"argument index out of bounds: %d/%d", a3, -[_MSVSQLDatabaseFunctionContext numberOfArguments](self, "numberOfArguments")}];
  }

  return self->_argv[a3];
}

@end