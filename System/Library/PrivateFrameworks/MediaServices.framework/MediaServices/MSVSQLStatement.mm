@interface MSVSQLStatement
- (BOOL)bindJSONConvertible:(id)convertible toParameterAtIndex:(int64_t)index error:(id *)error;
- (BOOL)bindJSONConvertible:(id)convertible toParameterNamed:(id)named error:(id *)error;
- (BOOL)bindJSONValue:(id)value toParameterAtIndex:(int64_t)index error:(id *)error;
- (BOOL)bindJSONValue:(id)value toParameterNamed:(id)named error:(id *)error;
- (id)description;
- (void)_bindCStringArray:(const char *)array length:(int64_t)length toParameterAtIndex:(int64_t)index;
- (void)_bindCStringArray:(const char *)array length:(int64_t)length toParameterNamed:(id)named;
- (void)_bindDoubleArray:(double *)array length:(int64_t)length toParameterAtIndex:(int64_t)index;
- (void)_bindDoubleArray:(double *)array length:(int64_t)length toParameterNamed:(id)named;
- (void)_bindInt32Array:(int *)array length:(int64_t)length toParameterAtIndex:(int64_t)index;
- (void)_bindInt32Array:(int *)array length:(int64_t)length toParameterNamed:(id)named;
- (void)_bindInt64Array:(int64_t *)array length:(int64_t)length toParameterAtIndex:(int64_t)index;
- (void)_bindInt64Array:(int64_t *)array length:(int64_t)length toParameterNamed:(id)named;
- (void)_bindNoCopyDataValue:(id)value toParameterAtIndex:(int64_t)index;
- (void)_bindNoCopyDataValue:(id)value toParameterNamed:(id)named;
- (void)_bindNoCopyStringValue:(id)value toParameterAtIndex:(int64_t)index;
- (void)_bindNoCopyStringValue:(id)value toParameterNamed:(id)named;
- (void)_bindVariantArray:(id *)array length:(int64_t)length toParameterAtIndex:(int64_t)index;
- (void)_bindVariantArray:(id *)array length:(int64_t)length toParameterNamed:(id)named;
- (void)bindBoolValue:(BOOL)value toParameterAtIndex:(int64_t)index;
- (void)bindDataValue:(id)value toParameterAtIndex:(int64_t)index;
- (void)bindDataValue:(id)value toParameterNamed:(id)named;
- (void)bindDateValue:(id)value toParameterAtIndex:(int64_t)index;
- (void)bindDateValue:(id)value toParameterNamed:(id)named;
- (void)bindDoubleValue:(double)value toParameterAtIndex:(int64_t)index;
- (void)bindDoubleValue:(double)value toParameterNamed:(id)named;
- (void)bindFloatValue:(float)value toParameterAtIndex:(int64_t)index;
- (void)bindFloatValue:(float)value toParameterNamed:(id)named;
- (void)bindFunctionContext:(id)context toParameterAtIndex:(int64_t)index;
- (void)bindFunctionContext:(id)context toParameterNamed:(id)named;
- (void)bindInt64Value:(int64_t)value toParameterAtIndex:(int64_t)index;
- (void)bindInt64Value:(int64_t)value toParameterNamed:(id)named;
- (void)bindNullValueToParameterAtIndex:(int64_t)index;
- (void)bindNullValueToParameterNamed:(id)named;
- (void)bindStringValue:(id)value toParameterAtIndex:(int64_t)index;
- (void)bindStringValue:(id)value toParameterNamed:(id)named;
- (void)bindUInt64Value:(unint64_t)value toParameterAtIndex:(int64_t)index;
- (void)bindUInt64Value:(unint64_t)value toParameterNamed:(id)named;
- (void)dealloc;
- (void)invalidate;
- (void)reset;
@end

@implementation MSVSQLStatement

- (void)dealloc
{
  [(MSVSQLStatement *)self invalidate];
  v3.receiver = self;
  v3.super_class = MSVSQLStatement;
  [(MSVSQLStatement *)&v3 dealloc];
}

- (void)invalidate
{
  statementHandle = self->_statementHandle;
  if (statementHandle)
  {
    sqlite3_finalize(statementHandle);
    [(MSVSQLDatabaseTransaction *)self->_implicitTransaction commit];
    connection = self->_connection;
    self->_statementHandle = 0;
    self->_connection = 0;
  }
}

- (void)bindFunctionContext:(id)context toParameterNamed:(id)named
{
  contextCopy = context;
  namedCopy = named;
  if (!contextCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:500 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  statementHandle = self->_statementHandle;
  if (!statementHandle)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:501 description:@"Attempt to use invalidated statement."];

    statementHandle = self->_statementHandle;
  }

  -[MSVSQLStatement bindFunctionContext:toParameterAtIndex:](self, "bindFunctionContext:toParameterAtIndex:", contextCopy, sqlite3_bind_parameter_index(statementHandle, [namedCopy UTF8String]));
}

- (void)bindFunctionContext:(id)context toParameterAtIndex:(int64_t)index
{
  indexCopy = index;
  contextCopy = context;
  if (!contextCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:494 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  statementHandle = self->_statementHandle;
  if (!statementHandle)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:495 description:@"Attempt to use invalidated statement."];

    statementHandle = self->_statementHandle;
  }

  v12 = contextCopy;
  ClassName = object_getClassName([v12 classForCoder]);
  sqlite3_bind_pointer(statementHandle, indexCopy, v12, ClassName, _MSVSQLBridgeDestroy);
}

- (void)_bindVariantArray:(id *)array length:(int64_t)length toParameterNamed:(id)named
{
  namedCopy = named;
  statementHandle = self->_statementHandle;
  v13 = namedCopy;
  if (!statementHandle)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:486 description:@"Attempt to use invalidated statement."];

    namedCopy = v13;
    statementHandle = self->_statementHandle;
  }

  v11 = namedCopy;
  -[MSVSQLStatement _bindVariantArray:length:toParameterAtIndex:](self, "_bindVariantArray:length:toParameterAtIndex:", array, length, sqlite3_bind_parameter_index(statementHandle, [v13 UTF8String]));
}

- (void)_bindVariantArray:(id *)array length:(int64_t)length toParameterAtIndex:(int64_t)index
{
  indexCopy = index;
  lengthCopy = length;
  statementHandle = self->_statementHandle;
  if (!statementHandle)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:481 description:@"Attempt to use invalidated statement."];

    statementHandle = self->_statementHandle;
  }

  msv_sql_carray_bind(statementHandle, indexCopy, array, lengthCopy, 5);
}

- (void)_bindCStringArray:(const char *)array length:(int64_t)length toParameterNamed:(id)named
{
  namedCopy = named;
  statementHandle = self->_statementHandle;
  v13 = namedCopy;
  if (!statementHandle)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:475 description:@"Attempt to use invalidated statement."];

    namedCopy = v13;
    statementHandle = self->_statementHandle;
  }

  v11 = namedCopy;
  -[MSVSQLStatement _bindCStringArray:length:toParameterAtIndex:](self, "_bindCStringArray:length:toParameterAtIndex:", array, length, sqlite3_bind_parameter_index(statementHandle, [v13 UTF8String]));
}

- (void)_bindCStringArray:(const char *)array length:(int64_t)length toParameterAtIndex:(int64_t)index
{
  indexCopy = index;
  lengthCopy = length;
  statementHandle = self->_statementHandle;
  if (!statementHandle)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:470 description:@"Attempt to use invalidated statement."];

    statementHandle = self->_statementHandle;
  }

  msv_sql_carray_bind(statementHandle, indexCopy, array, lengthCopy, 3);
}

- (void)_bindDoubleArray:(double *)array length:(int64_t)length toParameterNamed:(id)named
{
  namedCopy = named;
  statementHandle = self->_statementHandle;
  v13 = namedCopy;
  if (!statementHandle)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:464 description:@"Attempt to use invalidated statement."];

    namedCopy = v13;
    statementHandle = self->_statementHandle;
  }

  v11 = namedCopy;
  -[MSVSQLStatement _bindDoubleArray:length:toParameterAtIndex:](self, "_bindDoubleArray:length:toParameterAtIndex:", array, length, sqlite3_bind_parameter_index(statementHandle, [v13 UTF8String]));
}

- (void)_bindDoubleArray:(double *)array length:(int64_t)length toParameterAtIndex:(int64_t)index
{
  indexCopy = index;
  lengthCopy = length;
  statementHandle = self->_statementHandle;
  if (!statementHandle)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:459 description:@"Attempt to use invalidated statement."];

    statementHandle = self->_statementHandle;
  }

  msv_sql_carray_bind(statementHandle, indexCopy, array, lengthCopy, 2);
}

- (void)_bindInt64Array:(int64_t *)array length:(int64_t)length toParameterNamed:(id)named
{
  namedCopy = named;
  statementHandle = self->_statementHandle;
  v13 = namedCopy;
  if (!statementHandle)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:453 description:@"Attempt to use invalidated statement."];

    namedCopy = v13;
    statementHandle = self->_statementHandle;
  }

  v11 = namedCopy;
  -[MSVSQLStatement _bindInt64Array:length:toParameterAtIndex:](self, "_bindInt64Array:length:toParameterAtIndex:", array, length, sqlite3_bind_parameter_index(statementHandle, [v13 UTF8String]));
}

- (void)_bindInt64Array:(int64_t *)array length:(int64_t)length toParameterAtIndex:(int64_t)index
{
  indexCopy = index;
  lengthCopy = length;
  statementHandle = self->_statementHandle;
  if (!statementHandle)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:448 description:@"Attempt to use invalidated statement."];

    statementHandle = self->_statementHandle;
  }

  msv_sql_carray_bind(statementHandle, indexCopy, array, lengthCopy, 1);
}

- (void)_bindInt32Array:(int *)array length:(int64_t)length toParameterNamed:(id)named
{
  namedCopy = named;
  statementHandle = self->_statementHandle;
  v13 = namedCopy;
  if (!statementHandle)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:442 description:@"Attempt to use invalidated statement."];

    namedCopy = v13;
    statementHandle = self->_statementHandle;
  }

  v11 = namedCopy;
  -[MSVSQLStatement _bindInt32Array:length:toParameterAtIndex:](self, "_bindInt32Array:length:toParameterAtIndex:", array, length, sqlite3_bind_parameter_index(statementHandle, [v13 UTF8String]));
}

- (void)_bindInt32Array:(int *)array length:(int64_t)length toParameterAtIndex:(int64_t)index
{
  indexCopy = index;
  lengthCopy = length;
  statementHandle = self->_statementHandle;
  if (!statementHandle)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:437 description:@"Attempt to use invalidated statement."];

    statementHandle = self->_statementHandle;
  }

  msv_sql_carray_bind(statementHandle, indexCopy, array, lengthCopy, 0);
}

- (BOOL)bindJSONConvertible:(id)convertible toParameterNamed:(id)named error:(id *)error
{
  namedCopy = named;
  msv_jsonValue = [convertible msv_jsonValue];
  LOBYTE(error) = [(MSVSQLStatement *)self bindJSONValue:msv_jsonValue toParameterNamed:namedCopy error:error];

  return error;
}

- (BOOL)bindJSONConvertible:(id)convertible toParameterAtIndex:(int64_t)index error:(id *)error
{
  msv_jsonValue = [convertible msv_jsonValue];
  LOBYTE(error) = [(MSVSQLStatement *)self bindJSONValue:msv_jsonValue toParameterAtIndex:index error:error];

  return error;
}

- (BOOL)bindJSONValue:(id)value toParameterNamed:(id)named error:(id *)error
{
  valueCopy = value;
  namedCopy = named;
  if (!valueCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:420 description:{@"Invalid parameter not satisfying: %@", @"jsonValue"}];
  }

  statementHandle = self->_statementHandle;
  if (!statementHandle)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:421 description:@"Attempt to use invalidated statement."];

    statementHandle = self->_statementHandle;
  }

  v12 = -[MSVSQLStatement bindJSONValue:toParameterAtIndex:error:](self, "bindJSONValue:toParameterAtIndex:error:", valueCopy, sqlite3_bind_parameter_index(statementHandle, [namedCopy UTF8String]), error);

  return v12;
}

- (BOOL)bindJSONValue:(id)value toParameterAtIndex:(int64_t)index error:(id *)error
{
  indexCopy = index;
  v19[1] = *MEMORY[0x1E69E9840];
  valueCopy = value;
  if (!valueCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:401 description:{@"Invalid parameter not satisfying: %@", @"jsonValue"}];
  }

  if (!self->_statementHandle)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:402 description:@"Attempt to use invalidated statement."];
  }

  if ([MEMORY[0x1E696ACB0] isValidJSONObject:valueCopy])
  {
    v10 = [MEMORY[0x1E696ACB0] dataWithJSONObject:valueCopy options:0 error:error];
    v11 = v10;
    if (error)
    {
      sqlite3_bind_text64(self->_statementHandle, indexCopy, [v10 bytes], objc_msgSend(v10, "length"), 0xFFFFFFFFFFFFFFFFLL, 1u);
    }

    LOBYTE(error) = v11 != 0;
  }

  else if (error)
  {
    v12 = MEMORY[0x1E696ABC0];
    v18 = @"jsonValue";
    v19[0] = valueCopy;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    *error = [v12 msv_errorWithDomain:@"MSVSQLDatabaseError" code:2 userInfo:v13 debugDescription:{@"Not valid JSON object: %@", valueCopy}];

    LOBYTE(error) = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return error;
}

- (void)bindDateValue:(id)value toParameterNamed:(id)named
{
  valueCopy = value;
  namedCopy = named;
  if (!valueCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:394 description:{@"Invalid parameter not satisfying: %@", @"dateValue"}];
  }

  statementHandle = self->_statementHandle;
  if (!statementHandle)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:395 description:@"Attempt to use invalidated statement."];

    statementHandle = self->_statementHandle;
  }

  -[MSVSQLStatement bindDateValue:toParameterAtIndex:](self, "bindDateValue:toParameterAtIndex:", valueCopy, sqlite3_bind_parameter_index(statementHandle, [namedCopy UTF8String]));
}

- (void)bindDateValue:(id)value toParameterAtIndex:(int64_t)index
{
  indexCopy = index;
  valueCopy = value;
  v11 = valueCopy;
  if (!valueCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:387 description:{@"Invalid parameter not satisfying: %@", @"dateValue"}];

    valueCopy = 0;
  }

  if (!self->_statementHandle)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:388 description:@"Attempt to use invalidated statement."];

    valueCopy = v11;
  }

  [valueCopy timeIntervalSince1970];
  sqlite3_bind_double(self->_statementHandle, indexCopy, v8);
}

- (void)bindFloatValue:(float)value toParameterNamed:(id)named
{
  namedCopy = named;
  v9 = namedCopy;
  if (!self->_statementHandle)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:382 description:@"Attempt to use invalidated statement."];

    namedCopy = v9;
  }

  [(MSVSQLStatement *)self bindDoubleValue:namedCopy toParameterNamed:value];
}

- (void)bindFloatValue:(float)value toParameterAtIndex:(int64_t)index
{
  if (!self->_statementHandle)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:377 description:@"Attempt to use invalidated statement."];
  }

  [(MSVSQLStatement *)self bindDoubleValue:index toParameterAtIndex:value];
}

- (void)bindUInt64Value:(unint64_t)value toParameterNamed:(id)named
{
  namedCopy = named;
  v9 = namedCopy;
  if (!self->_statementHandle)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:372 description:@"Attempt to use invalidated statement."];

    namedCopy = v9;
  }

  [(MSVSQLStatement *)self bindInt64Value:value toParameterNamed:namedCopy];
}

- (void)bindUInt64Value:(unint64_t)value toParameterAtIndex:(int64_t)index
{
  if (!self->_statementHandle)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:367 description:@"Attempt to use invalidated statement."];
  }

  [(MSVSQLStatement *)self bindInt64Value:value toParameterAtIndex:index];
}

- (void)bindBoolValue:(BOOL)value toParameterAtIndex:(int64_t)index
{
  indexCopy = index;
  valueCopy = value;
  statementHandle = self->_statementHandle;
  if (!statementHandle)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:356 description:@"Attempt to use invalidated statement."];

    statementHandle = self->_statementHandle;
  }

  sqlite3_bind_int(statementHandle, indexCopy, valueCopy);
}

- (void)_bindNoCopyDataValue:(id)value toParameterNamed:(id)named
{
  valueCopy = value;
  namedCopy = named;
  if (!valueCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:349 description:{@"Invalid parameter not satisfying: %@", @"dataValue"}];
  }

  statementHandle = self->_statementHandle;
  if (!statementHandle)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:350 description:@"Attempt to use invalidated statement."];

    statementHandle = self->_statementHandle;
  }

  -[MSVSQLStatement _bindNoCopyDataValue:toParameterAtIndex:](self, "_bindNoCopyDataValue:toParameterAtIndex:", valueCopy, sqlite3_bind_parameter_index(statementHandle, [namedCopy UTF8String]));
}

- (void)_bindNoCopyDataValue:(id)value toParameterAtIndex:(int64_t)index
{
  indexCopy = index;
  valueCopy = value;
  v12 = valueCopy;
  if (!valueCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:343 description:{@"Invalid parameter not satisfying: %@", @"dataValue"}];

    valueCopy = 0;
  }

  statementHandle = self->_statementHandle;
  if (!statementHandle)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:344 description:@"Attempt to use invalidated statement."];

    valueCopy = v12;
    statementHandle = self->_statementHandle;
  }

  v9 = valueCopy;
  sqlite3_bind_blob64(statementHandle, indexCopy, [v12 bytes], objc_msgSend(v12, "length"), 0);
}

- (void)_bindNoCopyStringValue:(id)value toParameterNamed:(id)named
{
  valueCopy = value;
  namedCopy = named;
  if (!valueCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:336 description:{@"Invalid parameter not satisfying: %@", @"stringValue"}];
  }

  statementHandle = self->_statementHandle;
  if (!statementHandle)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:337 description:@"Attempt to use invalidated statement."];

    statementHandle = self->_statementHandle;
  }

  -[MSVSQLStatement _bindNoCopyStringValue:toParameterAtIndex:](self, "_bindNoCopyStringValue:toParameterAtIndex:", valueCopy, sqlite3_bind_parameter_index(statementHandle, [namedCopy UTF8String]));
}

- (void)_bindNoCopyStringValue:(id)value toParameterAtIndex:(int64_t)index
{
  indexCopy = index;
  valueCopy = value;
  v12 = valueCopy;
  if (!valueCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:330 description:{@"Invalid parameter not satisfying: %@", @"stringValue"}];

    valueCopy = 0;
  }

  statementHandle = self->_statementHandle;
  if (!statementHandle)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:331 description:@"Attempt to use invalidated statement."];

    valueCopy = v12;
    statementHandle = self->_statementHandle;
  }

  v9 = valueCopy;
  sqlite3_bind_text(statementHandle, indexCopy, [v12 UTF8String], objc_msgSend(v12, "length"), 0);
}

- (void)bindDataValue:(id)value toParameterNamed:(id)named
{
  valueCopy = value;
  namedCopy = named;
  if (!valueCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:323 description:{@"Invalid parameter not satisfying: %@", @"dataValue"}];
  }

  statementHandle = self->_statementHandle;
  if (!statementHandle)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:324 description:@"Attempt to use invalidated statement."];

    statementHandle = self->_statementHandle;
  }

  -[MSVSQLStatement bindDataValue:toParameterAtIndex:](self, "bindDataValue:toParameterAtIndex:", valueCopy, sqlite3_bind_parameter_index(statementHandle, [namedCopy UTF8String]));
}

- (void)bindDataValue:(id)value toParameterAtIndex:(int64_t)index
{
  indexCopy = index;
  valueCopy = value;
  v12 = valueCopy;
  if (!valueCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:317 description:{@"Invalid parameter not satisfying: %@", @"dataValue"}];

    valueCopy = 0;
  }

  statementHandle = self->_statementHandle;
  if (!statementHandle)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:318 description:@"Attempt to use invalidated statement."];

    valueCopy = v12;
    statementHandle = self->_statementHandle;
  }

  v9 = valueCopy;
  sqlite3_bind_blob64(statementHandle, indexCopy, [v12 bytes], objc_msgSend(v12, "length"), 0xFFFFFFFFFFFFFFFFLL);
}

- (void)bindStringValue:(id)value toParameterNamed:(id)named
{
  valueCopy = value;
  namedCopy = named;
  if (!valueCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:310 description:{@"Invalid parameter not satisfying: %@", @"stringValue"}];
  }

  statementHandle = self->_statementHandle;
  if (!statementHandle)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:311 description:@"Attempt to use invalidated statement."];

    statementHandle = self->_statementHandle;
  }

  -[MSVSQLStatement bindStringValue:toParameterAtIndex:](self, "bindStringValue:toParameterAtIndex:", valueCopy, sqlite3_bind_parameter_index(statementHandle, [namedCopy UTF8String]));
}

- (void)bindStringValue:(id)value toParameterAtIndex:(int64_t)index
{
  indexCopy = index;
  valueCopy = value;
  v12 = valueCopy;
  if (!valueCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:304 description:{@"Invalid parameter not satisfying: %@", @"stringValue"}];

    valueCopy = 0;
  }

  statementHandle = self->_statementHandle;
  if (!statementHandle)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:305 description:@"Attempt to use invalidated statement."];

    valueCopy = v12;
    statementHandle = self->_statementHandle;
  }

  v9 = valueCopy;
  sqlite3_bind_text(statementHandle, indexCopy, [v12 UTF8String], objc_msgSend(v12, "length"), 0xFFFFFFFFFFFFFFFFLL);
}

- (void)bindDoubleValue:(double)value toParameterNamed:(id)named
{
  namedCopy = named;
  statementHandle = self->_statementHandle;
  v11 = namedCopy;
  if (!statementHandle)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:298 description:@"Attempt to use invalidated statement."];

    namedCopy = v11;
    statementHandle = self->_statementHandle;
  }

  v9 = namedCopy;
  -[MSVSQLStatement bindDoubleValue:toParameterAtIndex:](self, "bindDoubleValue:toParameterAtIndex:", sqlite3_bind_parameter_index(statementHandle, [v11 UTF8String]), value);
}

- (void)bindDoubleValue:(double)value toParameterAtIndex:(int64_t)index
{
  indexCopy = index;
  statementHandle = self->_statementHandle;
  if (!statementHandle)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:293 description:@"Attempt to use invalidated statement."];

    statementHandle = self->_statementHandle;
  }

  sqlite3_bind_double(statementHandle, indexCopy, value);
}

- (void)bindInt64Value:(int64_t)value toParameterNamed:(id)named
{
  namedCopy = named;
  statementHandle = self->_statementHandle;
  v11 = namedCopy;
  if (!statementHandle)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:287 description:@"Attempt to use invalidated statement."];

    namedCopy = v11;
    statementHandle = self->_statementHandle;
  }

  v9 = namedCopy;
  -[MSVSQLStatement bindInt64Value:toParameterAtIndex:](self, "bindInt64Value:toParameterAtIndex:", value, sqlite3_bind_parameter_index(statementHandle, [v11 UTF8String]));
}

- (void)bindInt64Value:(int64_t)value toParameterAtIndex:(int64_t)index
{
  indexCopy = index;
  statementHandle = self->_statementHandle;
  if (!statementHandle)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:282 description:@"Attempt to use invalidated statement."];

    statementHandle = self->_statementHandle;
  }

  sqlite3_bind_int64(statementHandle, indexCopy, value);
}

- (void)bindNullValueToParameterNamed:(id)named
{
  namedCopy = named;
  statementHandle = self->_statementHandle;
  v9 = namedCopy;
  if (!statementHandle)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:276 description:@"Attempt to use invalidated statement."];

    namedCopy = v9;
    statementHandle = self->_statementHandle;
  }

  v7 = namedCopy;
  -[MSVSQLStatement bindNullValueToParameterAtIndex:](self, "bindNullValueToParameterAtIndex:", sqlite3_bind_parameter_index(statementHandle, [v9 UTF8String]));
}

- (void)bindNullValueToParameterAtIndex:(int64_t)index
{
  indexCopy = index;
  statementHandle = self->_statementHandle;
  if (!statementHandle)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:271 description:@"Attempt to use invalidated statement."];

    statementHandle = self->_statementHandle;
  }

  sqlite3_bind_null(statementHandle, indexCopy);
}

- (void)reset
{
  statementHandle = self->_statementHandle;
  if (!statementHandle)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:265 description:@"Attempt to use invalidated statement."];

    statementHandle = self->_statementHandle;
  }

  sqlite3_reset(statementHandle);
  v4 = self->_statementHandle;

  sqlite3_clear_bindings(v4);
}

- (id)description
{
  statementHandle = self->_statementHandle;
  if (statementHandle)
  {
    v4 = sqlite3_expanded_sql(statementHandle);
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p> %s", objc_opt_class(), self, v4];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p INVALIDATED>", objc_opt_class(), self, v7];
  }
  v5 = ;

  return v5;
}

@end