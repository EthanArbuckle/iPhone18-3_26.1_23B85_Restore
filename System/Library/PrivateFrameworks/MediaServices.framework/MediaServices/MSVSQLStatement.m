@interface MSVSQLStatement
- (BOOL)bindJSONConvertible:(id)a3 toParameterAtIndex:(int64_t)a4 error:(id *)a5;
- (BOOL)bindJSONConvertible:(id)a3 toParameterNamed:(id)a4 error:(id *)a5;
- (BOOL)bindJSONValue:(id)a3 toParameterAtIndex:(int64_t)a4 error:(id *)a5;
- (BOOL)bindJSONValue:(id)a3 toParameterNamed:(id)a4 error:(id *)a5;
- (id)description;
- (void)_bindCStringArray:(const char *)a3 length:(int64_t)a4 toParameterAtIndex:(int64_t)a5;
- (void)_bindCStringArray:(const char *)a3 length:(int64_t)a4 toParameterNamed:(id)a5;
- (void)_bindDoubleArray:(double *)a3 length:(int64_t)a4 toParameterAtIndex:(int64_t)a5;
- (void)_bindDoubleArray:(double *)a3 length:(int64_t)a4 toParameterNamed:(id)a5;
- (void)_bindInt32Array:(int *)a3 length:(int64_t)a4 toParameterAtIndex:(int64_t)a5;
- (void)_bindInt32Array:(int *)a3 length:(int64_t)a4 toParameterNamed:(id)a5;
- (void)_bindInt64Array:(int64_t *)a3 length:(int64_t)a4 toParameterAtIndex:(int64_t)a5;
- (void)_bindInt64Array:(int64_t *)a3 length:(int64_t)a4 toParameterNamed:(id)a5;
- (void)_bindNoCopyDataValue:(id)a3 toParameterAtIndex:(int64_t)a4;
- (void)_bindNoCopyDataValue:(id)a3 toParameterNamed:(id)a4;
- (void)_bindNoCopyStringValue:(id)a3 toParameterAtIndex:(int64_t)a4;
- (void)_bindNoCopyStringValue:(id)a3 toParameterNamed:(id)a4;
- (void)_bindVariantArray:(id *)a3 length:(int64_t)a4 toParameterAtIndex:(int64_t)a5;
- (void)_bindVariantArray:(id *)a3 length:(int64_t)a4 toParameterNamed:(id)a5;
- (void)bindBoolValue:(BOOL)a3 toParameterAtIndex:(int64_t)a4;
- (void)bindDataValue:(id)a3 toParameterAtIndex:(int64_t)a4;
- (void)bindDataValue:(id)a3 toParameterNamed:(id)a4;
- (void)bindDateValue:(id)a3 toParameterAtIndex:(int64_t)a4;
- (void)bindDateValue:(id)a3 toParameterNamed:(id)a4;
- (void)bindDoubleValue:(double)a3 toParameterAtIndex:(int64_t)a4;
- (void)bindDoubleValue:(double)a3 toParameterNamed:(id)a4;
- (void)bindFloatValue:(float)a3 toParameterAtIndex:(int64_t)a4;
- (void)bindFloatValue:(float)a3 toParameterNamed:(id)a4;
- (void)bindFunctionContext:(id)a3 toParameterAtIndex:(int64_t)a4;
- (void)bindFunctionContext:(id)a3 toParameterNamed:(id)a4;
- (void)bindInt64Value:(int64_t)a3 toParameterAtIndex:(int64_t)a4;
- (void)bindInt64Value:(int64_t)a3 toParameterNamed:(id)a4;
- (void)bindNullValueToParameterAtIndex:(int64_t)a3;
- (void)bindNullValueToParameterNamed:(id)a3;
- (void)bindStringValue:(id)a3 toParameterAtIndex:(int64_t)a4;
- (void)bindStringValue:(id)a3 toParameterNamed:(id)a4;
- (void)bindUInt64Value:(unint64_t)a3 toParameterAtIndex:(int64_t)a4;
- (void)bindUInt64Value:(unint64_t)a3 toParameterNamed:(id)a4;
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

- (void)bindFunctionContext:(id)a3 toParameterNamed:(id)a4
{
  v11 = a3;
  v7 = a4;
  if (!v11)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:500 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  statementHandle = self->_statementHandle;
  if (!statementHandle)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:501 description:@"Attempt to use invalidated statement."];

    statementHandle = self->_statementHandle;
  }

  -[MSVSQLStatement bindFunctionContext:toParameterAtIndex:](self, "bindFunctionContext:toParameterAtIndex:", v11, sqlite3_bind_parameter_index(statementHandle, [v7 UTF8String]));
}

- (void)bindFunctionContext:(id)a3 toParameterAtIndex:(int64_t)a4
{
  v4 = a4;
  v7 = a3;
  if (!v7)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:494 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  statementHandle = self->_statementHandle;
  if (!statementHandle)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:495 description:@"Attempt to use invalidated statement."];

    statementHandle = self->_statementHandle;
  }

  v12 = v7;
  ClassName = object_getClassName([v12 classForCoder]);
  sqlite3_bind_pointer(statementHandle, v4, v12, ClassName, _MSVSQLBridgeDestroy);
}

- (void)_bindVariantArray:(id *)a3 length:(int64_t)a4 toParameterNamed:(id)a5
{
  v9 = a5;
  statementHandle = self->_statementHandle;
  v13 = v9;
  if (!statementHandle)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:486 description:@"Attempt to use invalidated statement."];

    v9 = v13;
    statementHandle = self->_statementHandle;
  }

  v11 = v9;
  -[MSVSQLStatement _bindVariantArray:length:toParameterAtIndex:](self, "_bindVariantArray:length:toParameterAtIndex:", a3, a4, sqlite3_bind_parameter_index(statementHandle, [v13 UTF8String]));
}

- (void)_bindVariantArray:(id *)a3 length:(int64_t)a4 toParameterAtIndex:(int64_t)a5
{
  v5 = a5;
  v6 = a4;
  statementHandle = self->_statementHandle;
  if (!statementHandle)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:481 description:@"Attempt to use invalidated statement."];

    statementHandle = self->_statementHandle;
  }

  msv_sql_carray_bind(statementHandle, v5, a3, v6, 5);
}

- (void)_bindCStringArray:(const char *)a3 length:(int64_t)a4 toParameterNamed:(id)a5
{
  v9 = a5;
  statementHandle = self->_statementHandle;
  v13 = v9;
  if (!statementHandle)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:475 description:@"Attempt to use invalidated statement."];

    v9 = v13;
    statementHandle = self->_statementHandle;
  }

  v11 = v9;
  -[MSVSQLStatement _bindCStringArray:length:toParameterAtIndex:](self, "_bindCStringArray:length:toParameterAtIndex:", a3, a4, sqlite3_bind_parameter_index(statementHandle, [v13 UTF8String]));
}

- (void)_bindCStringArray:(const char *)a3 length:(int64_t)a4 toParameterAtIndex:(int64_t)a5
{
  v5 = a5;
  v6 = a4;
  statementHandle = self->_statementHandle;
  if (!statementHandle)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:470 description:@"Attempt to use invalidated statement."];

    statementHandle = self->_statementHandle;
  }

  msv_sql_carray_bind(statementHandle, v5, a3, v6, 3);
}

- (void)_bindDoubleArray:(double *)a3 length:(int64_t)a4 toParameterNamed:(id)a5
{
  v9 = a5;
  statementHandle = self->_statementHandle;
  v13 = v9;
  if (!statementHandle)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:464 description:@"Attempt to use invalidated statement."];

    v9 = v13;
    statementHandle = self->_statementHandle;
  }

  v11 = v9;
  -[MSVSQLStatement _bindDoubleArray:length:toParameterAtIndex:](self, "_bindDoubleArray:length:toParameterAtIndex:", a3, a4, sqlite3_bind_parameter_index(statementHandle, [v13 UTF8String]));
}

- (void)_bindDoubleArray:(double *)a3 length:(int64_t)a4 toParameterAtIndex:(int64_t)a5
{
  v5 = a5;
  v6 = a4;
  statementHandle = self->_statementHandle;
  if (!statementHandle)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:459 description:@"Attempt to use invalidated statement."];

    statementHandle = self->_statementHandle;
  }

  msv_sql_carray_bind(statementHandle, v5, a3, v6, 2);
}

- (void)_bindInt64Array:(int64_t *)a3 length:(int64_t)a4 toParameterNamed:(id)a5
{
  v9 = a5;
  statementHandle = self->_statementHandle;
  v13 = v9;
  if (!statementHandle)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:453 description:@"Attempt to use invalidated statement."];

    v9 = v13;
    statementHandle = self->_statementHandle;
  }

  v11 = v9;
  -[MSVSQLStatement _bindInt64Array:length:toParameterAtIndex:](self, "_bindInt64Array:length:toParameterAtIndex:", a3, a4, sqlite3_bind_parameter_index(statementHandle, [v13 UTF8String]));
}

- (void)_bindInt64Array:(int64_t *)a3 length:(int64_t)a4 toParameterAtIndex:(int64_t)a5
{
  v5 = a5;
  v6 = a4;
  statementHandle = self->_statementHandle;
  if (!statementHandle)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:448 description:@"Attempt to use invalidated statement."];

    statementHandle = self->_statementHandle;
  }

  msv_sql_carray_bind(statementHandle, v5, a3, v6, 1);
}

- (void)_bindInt32Array:(int *)a3 length:(int64_t)a4 toParameterNamed:(id)a5
{
  v9 = a5;
  statementHandle = self->_statementHandle;
  v13 = v9;
  if (!statementHandle)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:442 description:@"Attempt to use invalidated statement."];

    v9 = v13;
    statementHandle = self->_statementHandle;
  }

  v11 = v9;
  -[MSVSQLStatement _bindInt32Array:length:toParameterAtIndex:](self, "_bindInt32Array:length:toParameterAtIndex:", a3, a4, sqlite3_bind_parameter_index(statementHandle, [v13 UTF8String]));
}

- (void)_bindInt32Array:(int *)a3 length:(int64_t)a4 toParameterAtIndex:(int64_t)a5
{
  v5 = a5;
  v6 = a4;
  statementHandle = self->_statementHandle;
  if (!statementHandle)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:437 description:@"Attempt to use invalidated statement."];

    statementHandle = self->_statementHandle;
  }

  msv_sql_carray_bind(statementHandle, v5, a3, v6, 0);
}

- (BOOL)bindJSONConvertible:(id)a3 toParameterNamed:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a3 msv_jsonValue];
  LOBYTE(a5) = [(MSVSQLStatement *)self bindJSONValue:v9 toParameterNamed:v8 error:a5];

  return a5;
}

- (BOOL)bindJSONConvertible:(id)a3 toParameterAtIndex:(int64_t)a4 error:(id *)a5
{
  v8 = [a3 msv_jsonValue];
  LOBYTE(a5) = [(MSVSQLStatement *)self bindJSONValue:v8 toParameterAtIndex:a4 error:a5];

  return a5;
}

- (BOOL)bindJSONValue:(id)a3 toParameterNamed:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  if (!v9)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:420 description:{@"Invalid parameter not satisfying: %@", @"jsonValue"}];
  }

  statementHandle = self->_statementHandle;
  if (!statementHandle)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:421 description:@"Attempt to use invalidated statement."];

    statementHandle = self->_statementHandle;
  }

  v12 = -[MSVSQLStatement bindJSONValue:toParameterAtIndex:error:](self, "bindJSONValue:toParameterAtIndex:error:", v9, sqlite3_bind_parameter_index(statementHandle, [v10 UTF8String]), a5);

  return v12;
}

- (BOOL)bindJSONValue:(id)a3 toParameterAtIndex:(int64_t)a4 error:(id *)a5
{
  v6 = a4;
  v19[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  if (!v9)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:401 description:{@"Invalid parameter not satisfying: %@", @"jsonValue"}];
  }

  if (!self->_statementHandle)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:402 description:@"Attempt to use invalidated statement."];
  }

  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v9])
  {
    v10 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v9 options:0 error:a5];
    v11 = v10;
    if (a5)
    {
      sqlite3_bind_text64(self->_statementHandle, v6, [v10 bytes], objc_msgSend(v10, "length"), 0xFFFFFFFFFFFFFFFFLL, 1u);
    }

    LOBYTE(a5) = v11 != 0;
  }

  else if (a5)
  {
    v12 = MEMORY[0x1E696ABC0];
    v18 = @"jsonValue";
    v19[0] = v9;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    *a5 = [v12 msv_errorWithDomain:@"MSVSQLDatabaseError" code:2 userInfo:v13 debugDescription:{@"Not valid JSON object: %@", v9}];

    LOBYTE(a5) = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return a5;
}

- (void)bindDateValue:(id)a3 toParameterNamed:(id)a4
{
  v11 = a3;
  v7 = a4;
  if (!v11)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:394 description:{@"Invalid parameter not satisfying: %@", @"dateValue"}];
  }

  statementHandle = self->_statementHandle;
  if (!statementHandle)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:395 description:@"Attempt to use invalidated statement."];

    statementHandle = self->_statementHandle;
  }

  -[MSVSQLStatement bindDateValue:toParameterAtIndex:](self, "bindDateValue:toParameterAtIndex:", v11, sqlite3_bind_parameter_index(statementHandle, [v7 UTF8String]));
}

- (void)bindDateValue:(id)a3 toParameterAtIndex:(int64_t)a4
{
  v4 = a4;
  v7 = a3;
  v11 = v7;
  if (!v7)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:387 description:{@"Invalid parameter not satisfying: %@", @"dateValue"}];

    v7 = 0;
  }

  if (!self->_statementHandle)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:388 description:@"Attempt to use invalidated statement."];

    v7 = v11;
  }

  [v7 timeIntervalSince1970];
  sqlite3_bind_double(self->_statementHandle, v4, v8);
}

- (void)bindFloatValue:(float)a3 toParameterNamed:(id)a4
{
  v7 = a4;
  v9 = v7;
  if (!self->_statementHandle)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:382 description:@"Attempt to use invalidated statement."];

    v7 = v9;
  }

  [(MSVSQLStatement *)self bindDoubleValue:v7 toParameterNamed:a3];
}

- (void)bindFloatValue:(float)a3 toParameterAtIndex:(int64_t)a4
{
  if (!self->_statementHandle)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:377 description:@"Attempt to use invalidated statement."];
  }

  [(MSVSQLStatement *)self bindDoubleValue:a4 toParameterAtIndex:a3];
}

- (void)bindUInt64Value:(unint64_t)a3 toParameterNamed:(id)a4
{
  v7 = a4;
  v9 = v7;
  if (!self->_statementHandle)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:372 description:@"Attempt to use invalidated statement."];

    v7 = v9;
  }

  [(MSVSQLStatement *)self bindInt64Value:a3 toParameterNamed:v7];
}

- (void)bindUInt64Value:(unint64_t)a3 toParameterAtIndex:(int64_t)a4
{
  if (!self->_statementHandle)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:367 description:@"Attempt to use invalidated statement."];
  }

  [(MSVSQLStatement *)self bindInt64Value:a3 toParameterAtIndex:a4];
}

- (void)bindBoolValue:(BOOL)a3 toParameterAtIndex:(int64_t)a4
{
  v4 = a4;
  v5 = a3;
  statementHandle = self->_statementHandle;
  if (!statementHandle)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:356 description:@"Attempt to use invalidated statement."];

    statementHandle = self->_statementHandle;
  }

  sqlite3_bind_int(statementHandle, v4, v5);
}

- (void)_bindNoCopyDataValue:(id)a3 toParameterNamed:(id)a4
{
  v11 = a3;
  v7 = a4;
  if (!v11)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:349 description:{@"Invalid parameter not satisfying: %@", @"dataValue"}];
  }

  statementHandle = self->_statementHandle;
  if (!statementHandle)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:350 description:@"Attempt to use invalidated statement."];

    statementHandle = self->_statementHandle;
  }

  -[MSVSQLStatement _bindNoCopyDataValue:toParameterAtIndex:](self, "_bindNoCopyDataValue:toParameterAtIndex:", v11, sqlite3_bind_parameter_index(statementHandle, [v7 UTF8String]));
}

- (void)_bindNoCopyDataValue:(id)a3 toParameterAtIndex:(int64_t)a4
{
  v4 = a4;
  v7 = a3;
  v12 = v7;
  if (!v7)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:343 description:{@"Invalid parameter not satisfying: %@", @"dataValue"}];

    v7 = 0;
  }

  statementHandle = self->_statementHandle;
  if (!statementHandle)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:344 description:@"Attempt to use invalidated statement."];

    v7 = v12;
    statementHandle = self->_statementHandle;
  }

  v9 = v7;
  sqlite3_bind_blob64(statementHandle, v4, [v12 bytes], objc_msgSend(v12, "length"), 0);
}

- (void)_bindNoCopyStringValue:(id)a3 toParameterNamed:(id)a4
{
  v11 = a3;
  v7 = a4;
  if (!v11)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:336 description:{@"Invalid parameter not satisfying: %@", @"stringValue"}];
  }

  statementHandle = self->_statementHandle;
  if (!statementHandle)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:337 description:@"Attempt to use invalidated statement."];

    statementHandle = self->_statementHandle;
  }

  -[MSVSQLStatement _bindNoCopyStringValue:toParameterAtIndex:](self, "_bindNoCopyStringValue:toParameterAtIndex:", v11, sqlite3_bind_parameter_index(statementHandle, [v7 UTF8String]));
}

- (void)_bindNoCopyStringValue:(id)a3 toParameterAtIndex:(int64_t)a4
{
  v4 = a4;
  v7 = a3;
  v12 = v7;
  if (!v7)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:330 description:{@"Invalid parameter not satisfying: %@", @"stringValue"}];

    v7 = 0;
  }

  statementHandle = self->_statementHandle;
  if (!statementHandle)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:331 description:@"Attempt to use invalidated statement."];

    v7 = v12;
    statementHandle = self->_statementHandle;
  }

  v9 = v7;
  sqlite3_bind_text(statementHandle, v4, [v12 UTF8String], objc_msgSend(v12, "length"), 0);
}

- (void)bindDataValue:(id)a3 toParameterNamed:(id)a4
{
  v11 = a3;
  v7 = a4;
  if (!v11)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:323 description:{@"Invalid parameter not satisfying: %@", @"dataValue"}];
  }

  statementHandle = self->_statementHandle;
  if (!statementHandle)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:324 description:@"Attempt to use invalidated statement."];

    statementHandle = self->_statementHandle;
  }

  -[MSVSQLStatement bindDataValue:toParameterAtIndex:](self, "bindDataValue:toParameterAtIndex:", v11, sqlite3_bind_parameter_index(statementHandle, [v7 UTF8String]));
}

- (void)bindDataValue:(id)a3 toParameterAtIndex:(int64_t)a4
{
  v4 = a4;
  v7 = a3;
  v12 = v7;
  if (!v7)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:317 description:{@"Invalid parameter not satisfying: %@", @"dataValue"}];

    v7 = 0;
  }

  statementHandle = self->_statementHandle;
  if (!statementHandle)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:318 description:@"Attempt to use invalidated statement."];

    v7 = v12;
    statementHandle = self->_statementHandle;
  }

  v9 = v7;
  sqlite3_bind_blob64(statementHandle, v4, [v12 bytes], objc_msgSend(v12, "length"), 0xFFFFFFFFFFFFFFFFLL);
}

- (void)bindStringValue:(id)a3 toParameterNamed:(id)a4
{
  v11 = a3;
  v7 = a4;
  if (!v11)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:310 description:{@"Invalid parameter not satisfying: %@", @"stringValue"}];
  }

  statementHandle = self->_statementHandle;
  if (!statementHandle)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:311 description:@"Attempt to use invalidated statement."];

    statementHandle = self->_statementHandle;
  }

  -[MSVSQLStatement bindStringValue:toParameterAtIndex:](self, "bindStringValue:toParameterAtIndex:", v11, sqlite3_bind_parameter_index(statementHandle, [v7 UTF8String]));
}

- (void)bindStringValue:(id)a3 toParameterAtIndex:(int64_t)a4
{
  v4 = a4;
  v7 = a3;
  v12 = v7;
  if (!v7)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:304 description:{@"Invalid parameter not satisfying: %@", @"stringValue"}];

    v7 = 0;
  }

  statementHandle = self->_statementHandle;
  if (!statementHandle)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:305 description:@"Attempt to use invalidated statement."];

    v7 = v12;
    statementHandle = self->_statementHandle;
  }

  v9 = v7;
  sqlite3_bind_text(statementHandle, v4, [v12 UTF8String], objc_msgSend(v12, "length"), 0xFFFFFFFFFFFFFFFFLL);
}

- (void)bindDoubleValue:(double)a3 toParameterNamed:(id)a4
{
  v7 = a4;
  statementHandle = self->_statementHandle;
  v11 = v7;
  if (!statementHandle)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:298 description:@"Attempt to use invalidated statement."];

    v7 = v11;
    statementHandle = self->_statementHandle;
  }

  v9 = v7;
  -[MSVSQLStatement bindDoubleValue:toParameterAtIndex:](self, "bindDoubleValue:toParameterAtIndex:", sqlite3_bind_parameter_index(statementHandle, [v11 UTF8String]), a3);
}

- (void)bindDoubleValue:(double)a3 toParameterAtIndex:(int64_t)a4
{
  v4 = a4;
  statementHandle = self->_statementHandle;
  if (!statementHandle)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:293 description:@"Attempt to use invalidated statement."];

    statementHandle = self->_statementHandle;
  }

  sqlite3_bind_double(statementHandle, v4, a3);
}

- (void)bindInt64Value:(int64_t)a3 toParameterNamed:(id)a4
{
  v7 = a4;
  statementHandle = self->_statementHandle;
  v11 = v7;
  if (!statementHandle)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:287 description:@"Attempt to use invalidated statement."];

    v7 = v11;
    statementHandle = self->_statementHandle;
  }

  v9 = v7;
  -[MSVSQLStatement bindInt64Value:toParameterAtIndex:](self, "bindInt64Value:toParameterAtIndex:", a3, sqlite3_bind_parameter_index(statementHandle, [v11 UTF8String]));
}

- (void)bindInt64Value:(int64_t)a3 toParameterAtIndex:(int64_t)a4
{
  v4 = a4;
  statementHandle = self->_statementHandle;
  if (!statementHandle)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:282 description:@"Attempt to use invalidated statement."];

    statementHandle = self->_statementHandle;
  }

  sqlite3_bind_int64(statementHandle, v4, a3);
}

- (void)bindNullValueToParameterNamed:(id)a3
{
  v5 = a3;
  statementHandle = self->_statementHandle;
  v9 = v5;
  if (!statementHandle)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:276 description:@"Attempt to use invalidated statement."];

    v5 = v9;
    statementHandle = self->_statementHandle;
  }

  v7 = v5;
  -[MSVSQLStatement bindNullValueToParameterAtIndex:](self, "bindNullValueToParameterAtIndex:", sqlite3_bind_parameter_index(statementHandle, [v9 UTF8String]));
}

- (void)bindNullValueToParameterAtIndex:(int64_t)a3
{
  v3 = a3;
  statementHandle = self->_statementHandle;
  if (!statementHandle)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:271 description:@"Attempt to use invalidated statement."];

    statementHandle = self->_statementHandle;
  }

  sqlite3_bind_null(statementHandle, v3);
}

- (void)reset
{
  statementHandle = self->_statementHandle;
  if (!statementHandle)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:265 description:@"Attempt to use invalidated statement."];

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