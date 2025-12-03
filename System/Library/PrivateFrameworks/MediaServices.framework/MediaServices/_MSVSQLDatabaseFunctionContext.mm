@interface _MSVSQLDatabaseFunctionContext
- (double)doubleValueAtArgumentIndex:(int64_t)index;
- (id)dataValueAtArgumentIndex:(int64_t)index;
- (id)dateValueAtArgumentIndex:(int64_t)index;
- (id)functionContextOfClass:(Class)class atArgumentIndex:(int64_t)index;
- (id)jsonDataAtArgumentIndex:(int64_t)index;
- (id)jsonValueAtArgumentIndex:(int64_t)index error:(id *)error;
- (id)objectValueAtArgumentIndex:(int64_t)index;
- (id)returnData:(id)data;
- (id)returnDate:(id)date;
- (id)returnError:(id)error sqliteCode:(int)code;
- (id)returnFunctionContext:(id)context;
- (id)returnJSON:(id)n error:(id *)error;
- (id)returnString:(id)string;
- (id)stringValueAtArgumentIndex:(int64_t)index;
- (int64_t)int64ValueAtArgumentIndex:(int64_t)index;
- (sqlite3_value)_valueAtIndex:(int64_t)index;
- (unint64_t)uint64ValueAtArgumentIndex:(int64_t)index;
- (void)memoizeObject:(id)object forArgumentIndex:(int64_t)index;
@end

@implementation _MSVSQLDatabaseFunctionContext

- (id)returnError:(id)error sqliteCode:(int)code
{
  msv_description = [error msv_description];
  sqlite3_result_error(self->_context, [msv_description UTF8String], objc_msgSend(msv_description, "length"));
  sqlite3_result_error_code(self->_context, code);

  return self;
}

- (id)returnFunctionContext:(id)context
{
  contextCopy = context;
  context = self->_context;
  v6 = contextCopy;
  ClassName = object_getClassName([v6 classForCoder]);
  sqlite3_result_pointer(context, v6, ClassName, _MSVSQLBridgeDestroy);

  return self;
}

- (id)returnJSON:(id)n error:(id *)error
{
  v14[1] = *MEMORY[0x1E69E9840];
  nCopy = n;
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:nCopy])
  {
    v7 = [MEMORY[0x1E696ACB0] dataWithJSONObject:nCopy options:0 error:error];
    v8 = v7;
    if (error)
    {
      sqlite3_result_text64(self->_context, [v7 bytes], objc_msgSend(v7, "length"), 0xFFFFFFFFFFFFFFFFLL, 1u);
    }

    else
    {
      self = 0;
    }

    error = self;
  }

  else if (error)
  {
    v9 = MEMORY[0x1E696ABC0];
    v13 = @"jsonValue";
    v14[0] = nCopy;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    *error = [v9 msv_errorWithDomain:@"MSVSQLDatabaseError" code:2 userInfo:v10 debugDescription:{@"Not valid JSON object: %@", nCopy}];

    error = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return error;
}

- (id)returnDate:(id)date
{
  [date timeIntervalSince1970];

  return [(_MSVSQLDatabaseFunctionContext *)self returnDouble:?];
}

- (id)returnData:(id)data
{
  context = self->_context;
  dataCopy = data;
  dataCopy2 = data;
  bytes = [dataCopy2 bytes];
  v9 = [dataCopy2 length];

  sqlite3_result_blob64(context, bytes, v9, 0xFFFFFFFFFFFFFFFFLL);
  return self;
}

- (id)returnString:(id)string
{
  context = self->_context;
  stringCopy = string;
  stringCopy2 = string;
  uTF8String = [stringCopy2 UTF8String];
  v9 = [stringCopy2 length];

  sqlite3_result_text(context, uTF8String, v9, 0xFFFFFFFFFFFFFFFFLL);
  return self;
}

- (void)memoizeObject:(id)object forArgumentIndex:(int64_t)index
{
  objectCopy = object;
  if ([(_MSVSQLDatabaseFunctionContext *)self numberOfArguments]<= index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:1008 description:{@"argument index out of bounds: %d/%d", index, -[_MSVSQLDatabaseFunctionContext numberOfArguments](self, "numberOfArguments")}];
  }

  context = self->_context;

  sqlite3_set_auxdata(context, index, objectCopy, _MSVSQLBridgeDestroy);
}

- (id)functionContextOfClass:(Class)class atArgumentIndex:(int64_t)index
{
  v5 = [(_MSVSQLDatabaseFunctionContext *)self _valueAtIndex:index];
  ClassName = object_getClassName(class);

  return sqlite3_value_pointer(v5, ClassName);
}

- (id)objectValueAtArgumentIndex:(int64_t)index
{
  v5 = sqlite3_value_type([(_MSVSQLDatabaseFunctionContext *)self _valueAtIndex:?]);
  v6 = 0;
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v6 = [(_MSVSQLDatabaseFunctionContext *)self stringValueAtArgumentIndex:index];
    }

    else if (v5 == 4)
    {
      v6 = [(_MSVSQLDatabaseFunctionContext *)self dataValueAtArgumentIndex:index];
    }
  }

  else if (v5 == 1)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[_MSVSQLDatabaseFunctionContext int64ValueAtArgumentIndex:](self, "int64ValueAtArgumentIndex:", index)}];
  }

  else if (v5 == 2)
  {
    v7 = MEMORY[0x1E696AD98];
    [(_MSVSQLDatabaseFunctionContext *)self doubleValueAtArgumentIndex:index];
    v6 = [v7 numberWithDouble:?];
  }

  return v6;
}

- (id)jsonDataAtArgumentIndex:(int64_t)index
{
  if ([(_MSVSQLDatabaseFunctionContext *)self isNullValueAtArgumentIndex:?])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(_MSVSQLDatabaseFunctionContext *)self stringValueAtArgumentIndex:index];
    v5 = [v6 dataUsingEncoding:4];
  }

  return v5;
}

- (id)jsonValueAtArgumentIndex:(int64_t)index error:(id *)error
{
  v5 = [(_MSVSQLDatabaseFunctionContext *)self jsonDataAtArgumentIndex:index];
  if (v5)
  {
    v6 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v5 options:0 error:error];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)dateValueAtArgumentIndex:(int64_t)index
{
  v5 = sqlite3_value_type([(_MSVSQLDatabaseFunctionContext *)self _valueAtIndex:?]);
  if ((v5 - 1) >= 2)
  {
    if (v5 == 3)
    {
      v8 = objc_alloc_init(MEMORY[0x1E696AC80]);
      v9 = [(_MSVSQLDatabaseFunctionContext *)self stringValueAtArgumentIndex:index];
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
    [(_MSVSQLDatabaseFunctionContext *)self doubleValueAtArgumentIndex:index];
    v7 = [v6 dateWithTimeIntervalSince1970:?];
  }

  return v7;
}

- (unint64_t)uint64ValueAtArgumentIndex:(int64_t)index
{
  v3 = [(_MSVSQLDatabaseFunctionContext *)self _valueAtIndex:index];

  return sqlite3_value_int64(v3);
}

- (id)dataValueAtArgumentIndex:(int64_t)index
{
  v3 = [(_MSVSQLDatabaseFunctionContext *)self _valueAtIndex:index];
  v4 = sqlite3_value_blob(v3);
  v5 = sqlite3_value_bytes(v3);
  v6 = MEMORY[0x1E695DEF0];

  return [v6 dataWithBytes:v4 length:v5];
}

- (id)stringValueAtArgumentIndex:(int64_t)index
{
  if ([(_MSVSQLDatabaseFunctionContext *)self isNullValueAtArgumentIndex:?])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(_MSVSQLDatabaseFunctionContext *)self _valueAtIndex:index];
    v7 = sqlite3_value_text(v6);
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v7 length:sqlite3_value_bytes(v6) encoding:4];
  }

  return v5;
}

- (double)doubleValueAtArgumentIndex:(int64_t)index
{
  v3 = [(_MSVSQLDatabaseFunctionContext *)self _valueAtIndex:index];

  return sqlite3_value_double(v3);
}

- (int64_t)int64ValueAtArgumentIndex:(int64_t)index
{
  v3 = [(_MSVSQLDatabaseFunctionContext *)self _valueAtIndex:index];

  return sqlite3_value_int64(v3);
}

- (sqlite3_value)_valueAtIndex:(int64_t)index
{
  if ([(_MSVSQLDatabaseFunctionContext *)self numberOfArguments]<= index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:884 description:{@"argument index out of bounds: %d/%d", index, -[_MSVSQLDatabaseFunctionContext numberOfArguments](self, "numberOfArguments")}];
  }

  return self->_argv[index];
}

@end