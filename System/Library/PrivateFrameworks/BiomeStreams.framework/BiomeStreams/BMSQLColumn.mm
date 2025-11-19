@interface BMSQLColumn
- (BMSQLColumn)initWithName:(id)a3 dataType:(int64_t)a4 requestOnly:(BOOL)a5 extractBlock:(id)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)setSQLiteValueFromRow:(id)a3 sqliteContext:(sqlite3_context *)a4 error:(id *)a5;
- (id)description;
@end

@implementation BMSQLColumn

- (BMSQLColumn)initWithName:(id)a3 dataType:(int64_t)a4 requestOnly:(BOOL)a5 extractBlock:(id)a6
{
  v11 = a3;
  v12 = a6;
  v18.receiver = self;
  v18.super_class = BMSQLColumn;
  v13 = [(BMSQLColumn *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_name, a3);
    v14->_dataType = a4;
    v14->_requestOnly = a5;
    v15 = _Block_copy(v12);
    extractBlock = v14->_extractBlock;
    v14->_extractBlock = v15;
  }

  return v14;
}

- (BOOL)setSQLiteValueFromRow:(id)a3 sqliteContext:(sqlite3_context *)a4 error:(id *)a5
{
  v34[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [(BMSQLColumn *)self extractBlock];
  v10 = (v9)[2](v9, v8, a5);

  if (*a5)
  {
    goto LABEL_2;
  }

  if (!v10)
  {
    sqlite3_result_null(a4);
    goto LABEL_17;
  }

  v14 = v10;
  v15 = self;
  v16 = [(BMSQLColumn *)v15 dataType];
  if (v16 <= 6 && (v17 = **(&unk_1E6E534B0 + v16), v18 = objc_opt_class(), v18))
  {
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_11;
    }

    v19 = objc_alloc(MEMORY[0x1E696ABC0]);
    v34[0] = *MEMORY[0x1E696A578];
    v20 = MEMORY[0x1E696AEC0];
    v21 = [(BMSQLColumn *)v15 name];
    v22 = [v20 stringWithFormat:@"value for column (%@) is type %@ instead of expected type %@", v21, objc_opt_class(), v18];
    v33[0] = v22;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v34 count:1];
    v24 = v19;
    v25 = 20;
  }

  else
  {
    v26 = objc_alloc(MEMORY[0x1E696ABC0]);
    v34[0] = *MEMORY[0x1E696A578];
    v27 = MEMORY[0x1E696AEC0];
    v28 = [(BMSQLColumn *)v15 dataType];
    v21 = [(BMSQLColumn *)v15 name];
    v22 = [v27 stringWithFormat:@"unknown data type (%ld) for column '%@'", v28, v21];
    v33[0] = v22;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v34 count:1];
    v24 = v26;
    v25 = 1;
  }

  *a5 = [v24 initWithDomain:@"BMSQLDatabaseErrorDomain" code:v25 userInfo:v23];

LABEL_11:
  if (*a5)
  {
LABEL_2:
    v11 = 0;
    goto LABEL_3;
  }

  v29 = [(BMSQLColumn *)v15 dataType];
  v11 = 1;
  if (v29 <= 2)
  {
    if (!v29)
    {
      sqlite3_result_int64(a4, [v14 longLongValue]);
      goto LABEL_3;
    }

    if (v29 == 1)
    {
      [v14 doubleValue];
      goto LABEL_29;
    }

    if (v29 != 2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v31 = v14;
    sqlite3_result_text(a4, [v31 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

    goto LABEL_3;
  }

  if (v29 <= 4)
  {
    if (v29 != 3)
    {
      v30 = v14;
      sqlite3_result_blob(a4, [v30 bytes], objc_msgSend(v30, "length"), 0xFFFFFFFFFFFFFFFFLL);

LABEL_17:
      v11 = 1;
      goto LABEL_3;
    }

    [v14 timeIntervalSince1970];
LABEL_29:
    sqlite3_result_double(a4, v32);
    goto LABEL_3;
  }

  if (v29 == 5)
  {
    goto LABEL_25;
  }

  if (v29 == 6)
  {
    v33[0] = 0;
    v33[1] = 0;
    [v14 getUUIDBytes:v33];
    sqlite3_result_blob(a4, v33, 16, 0xFFFFFFFFFFFFFFFFLL);
  }

LABEL_3:

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  name = self->_name;
  v6 = BMSQLDataTypeToString(self->_dataType);
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_requestOnly];
  v8 = [v3 initWithFormat:@"<%@ %p> name: %@, datatype: %@, request only: %@", v4, self, name, v6, v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMSQLColumn *)self name];
    v7 = [v5 name];
    if ([v6 isEqual:v7] && (dataType = self->_dataType, dataType == objc_msgSend(v5, "dataType")))
    {
      requestOnly = self->_requestOnly;
      v10 = requestOnly == [v5 requestOnly];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end