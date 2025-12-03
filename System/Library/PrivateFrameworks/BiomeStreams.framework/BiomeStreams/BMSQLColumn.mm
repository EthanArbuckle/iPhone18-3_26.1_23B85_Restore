@interface BMSQLColumn
- (BMSQLColumn)initWithName:(id)name dataType:(int64_t)type requestOnly:(BOOL)only extractBlock:(id)block;
- (BOOL)isEqual:(id)equal;
- (BOOL)setSQLiteValueFromRow:(id)row sqliteContext:(sqlite3_context *)context error:(id *)error;
- (id)description;
@end

@implementation BMSQLColumn

- (BMSQLColumn)initWithName:(id)name dataType:(int64_t)type requestOnly:(BOOL)only extractBlock:(id)block
{
  nameCopy = name;
  blockCopy = block;
  v18.receiver = self;
  v18.super_class = BMSQLColumn;
  v13 = [(BMSQLColumn *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_name, name);
    v14->_dataType = type;
    v14->_requestOnly = only;
    v15 = _Block_copy(blockCopy);
    extractBlock = v14->_extractBlock;
    v14->_extractBlock = v15;
  }

  return v14;
}

- (BOOL)setSQLiteValueFromRow:(id)row sqliteContext:(sqlite3_context *)context error:(id *)error
{
  v34[1] = *MEMORY[0x1E69E9840];
  rowCopy = row;
  extractBlock = [(BMSQLColumn *)self extractBlock];
  v10 = (extractBlock)[2](extractBlock, rowCopy, error);

  if (*error)
  {
    goto LABEL_2;
  }

  if (!v10)
  {
    sqlite3_result_null(context);
    goto LABEL_17;
  }

  v14 = v10;
  selfCopy = self;
  dataType = [(BMSQLColumn *)selfCopy dataType];
  if (dataType <= 6 && (v17 = **(&unk_1E6E534B0 + dataType), v18 = objc_opt_class(), v18))
  {
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_11;
    }

    v19 = objc_alloc(MEMORY[0x1E696ABC0]);
    v34[0] = *MEMORY[0x1E696A578];
    v20 = MEMORY[0x1E696AEC0];
    name = [(BMSQLColumn *)selfCopy name];
    v22 = [v20 stringWithFormat:@"value for column (%@) is type %@ instead of expected type %@", name, objc_opt_class(), v18];
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
    dataType2 = [(BMSQLColumn *)selfCopy dataType];
    name = [(BMSQLColumn *)selfCopy name];
    v22 = [v27 stringWithFormat:@"unknown data type (%ld) for column '%@'", dataType2, name];
    v33[0] = v22;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v34 count:1];
    v24 = v26;
    v25 = 1;
  }

  *error = [v24 initWithDomain:@"BMSQLDatabaseErrorDomain" code:v25 userInfo:v23];

LABEL_11:
  if (*error)
  {
LABEL_2:
    v11 = 0;
    goto LABEL_3;
  }

  dataType3 = [(BMSQLColumn *)selfCopy dataType];
  v11 = 1;
  if (dataType3 <= 2)
  {
    if (!dataType3)
    {
      sqlite3_result_int64(context, [v14 longLongValue]);
      goto LABEL_3;
    }

    if (dataType3 == 1)
    {
      [v14 doubleValue];
      goto LABEL_29;
    }

    if (dataType3 != 2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v31 = v14;
    sqlite3_result_text(context, [v31 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

    goto LABEL_3;
  }

  if (dataType3 <= 4)
  {
    if (dataType3 != 3)
    {
      v30 = v14;
      sqlite3_result_blob(context, [v30 bytes], objc_msgSend(v30, "length"), 0xFFFFFFFFFFFFFFFFLL);

LABEL_17:
      v11 = 1;
      goto LABEL_3;
    }

    [v14 timeIntervalSince1970];
LABEL_29:
    sqlite3_result_double(context, v32);
    goto LABEL_3;
  }

  if (dataType3 == 5)
  {
    goto LABEL_25;
  }

  if (dataType3 == 6)
  {
    v33[0] = 0;
    v33[1] = 0;
    [v14 getUUIDBytes:v33];
    sqlite3_result_blob(context, v33, 16, 0xFFFFFFFFFFFFFFFFLL);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    name = [(BMSQLColumn *)self name];
    name2 = [v5 name];
    if ([name isEqual:name2] && (dataType = self->_dataType, dataType == objc_msgSend(v5, "dataType")))
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