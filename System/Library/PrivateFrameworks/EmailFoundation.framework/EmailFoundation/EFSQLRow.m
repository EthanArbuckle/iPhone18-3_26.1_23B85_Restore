@interface EFSQLRow
- (BOOL)columnExistsWithName:(id)a3;
- (EFSQLRow)initWithColumns:(id)a3;
- (EFSQLRow)initWithPreparedStatement:(id)a3;
- (EFSQLRow)initWithSQLiteStatement:(sqlite3_stmt *)a3;
- (id)_queryString;
- (id)columnNames;
- (id)debugDescription;
- (id)objectAtIndexedSubscript:(unint64_t)a3;
- (id)objectForKeyedSubscript:(id)a3;
@end

@implementation EFSQLRow

- (EFSQLRow)initWithColumns:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = EFSQLRow;
  v5 = [(EFSQLRow *)&v9 init];
  if (v5)
  {
    v5->_columnCount = [v4 count];
    v6 = [v4 copy];
    columns = v5->_columns;
    v5->_columns = v6;

    v5->_namedColumnsInitialized = 1;
  }

  return v5;
}

- (EFSQLRow)initWithSQLiteStatement:(sqlite3_stmt *)a3
{
  v7.receiver = self;
  v7.super_class = EFSQLRow;
  v4 = [(EFSQLRow *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_statement = a3;
    v4->_columnCount = sqlite3_column_count(a3);
  }

  return v5;
}

- (EFSQLRow)initWithPreparedStatement:(id)a3
{
  v4 = a3;
  v5 = -[EFSQLRow initWithSQLiteStatement:](self, "initWithSQLiteStatement:", [v4 compiled]);
  [(EFSQLRow *)v5 setPreparedStatement:v4];

  return v5;
}

- (id)objectAtIndexedSubscript:(unint64_t)a3
{
  v46 = *MEMORY[0x1E69E9840];
  if ([(EFSQLRow *)self columnCount]<= a3)
  {
    v36 = a3;
    v37 = objc_alloc(MEMORY[0x1E696AEC0]);
    v38 = [(EFSQLRow *)self _queryString];
    v39 = [v37 initWithFormat:@"Index %lu is out of range for selected columns: %@", v36, v38];

    v40 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:v39 userInfo:0];
    objc_exception_throw(v40);
  }

  v44 = &v41;
  v45 = a3;
  v5 = self;
  v6 = v5;
  if (!v5->_namedColumnsInitialized)
  {
    columnCount = v5->_columnCount;
    if (columnCount > 0xC80000)
    {
      v34 = [MEMORY[0x1E696AAA8] currentHandler];
      v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _initializeAllNamedColumns(EFSQLRow *__strong)"];
      [v34 handleFailureInFunction:v35 file:@"EFSQLRow.m" lineNumber:112 description:{@"Temporary buffer too large or with a negative count (%zu).", columnCount}];
    }

    v41 = &v41;
    if (columnCount <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = columnCount;
    }

    if (columnCount >= 0x101)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    v10 = 8 * v9;
    MEMORY[0x1EEE9AC00](v5);
    v12 = &v41 - v11;
    bzero(&v41 - v11, v10);
    v43 = v12;
    if (columnCount > 0x100)
    {
      v13 = malloc_type_calloc(v8, 8uLL, 0x80040B8603338uLL);
    }

    else
    {
      bzero(v12, 8 * v8);
      v13 = 0;
    }

    v42 = v13;
    if (columnCount >= 0x101)
    {
      v12 = v13;
    }

    v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:{2 * columnCount, v41}];
    if (columnCount)
    {
      v15 = 0;
      v16 = v12;
      do
      {
        v17 = [[EFSQLColumn alloc] initWithSQLiteStatement:v6->_statement index:v15];
        objc_storeStrong(v16, v17);
        v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15];
        [v14 addObject:v18];

        v19 = [(EFSQLColumn *)v17 name];
        if (v19)
        {
          [v14 addObject:v19];
        }

        ++v15;
        ++v16;
      }

      while (columnCount != v15);
    }

    v20 = [MEMORY[0x1E695DF20] sharedKeySetForKeys:v14];
    v21 = [MEMORY[0x1E695DF90] dictionaryWithSharedKeySet:v20];
    if (columnCount)
    {
      for (i = 0; i != columnCount; ++i)
      {
        v23 = *&v12[8 * i];
        v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
        [(NSDictionary *)v21 setObject:v23 forKeyedSubscript:v24];

        v25 = [v23 name];
        if (v25)
        {
          [(NSDictionary *)v21 setObject:v23 forKeyedSubscript:v25];
        }

        v26 = *&v12[8 * i];
        *&v12[8 * i] = 0;
      }
    }

    columns = v6->_columns;
    v6->_columns = v21;

    v6->_namedColumnsInitialized = 1;
    free(v42);
    v28 = v43 - 8;
    do
    {

      v10 -= 8;
    }

    while (v10);
  }

  v29 = v6->_columns;
  v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v45];
  v31 = [(NSDictionary *)v29 objectForKeyedSubscript:v30];

  v32 = *MEMORY[0x1E69E9840];

  return v31;
}

- (BOOL)columnExistsWithName:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v38 = v35;
  v39 = a3;
  v4 = self;
  v5 = v4;
  if (!v4->_namedColumnsInitialized)
  {
    columnCount = v4->_columnCount;
    v40 = v4;
    if (columnCount > 0xC80000)
    {
      v33 = [MEMORY[0x1E696AAA8] currentHandler];
      v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _initializeAllNamedColumns(EFSQLRow *__strong)"];
      [v33 handleFailureInFunction:v34 file:@"EFSQLRow.m" lineNumber:112 description:{@"Temporary buffer too large or with a negative count (%zu).", columnCount}];
    }

    v35[1] = v35;
    if (columnCount <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = columnCount;
    }

    if (columnCount >= 0x101)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    v9 = 8 * v8;
    MEMORY[0x1EEE9AC00](v4);
    v11 = v35 - v10;
    bzero(v35 - v10, v9);
    v37 = v11;
    if (columnCount > 0x100)
    {
      v12 = malloc_type_calloc(v7, 8uLL, 0x80040B8603338uLL);
    }

    else
    {
      bzero(v11, 8 * v7);
      v12 = 0;
    }

    v36 = v12;
    if (columnCount >= 0x101)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:2 * columnCount];
    if (columnCount)
    {
      v15 = 0;
      v16 = v13;
      do
      {
        v17 = [[EFSQLColumn alloc] initWithSQLiteStatement:v40->_statement index:v15];
        objc_storeStrong(v16, v17);
        v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15];
        [v14 addObject:v18];

        v19 = [(EFSQLColumn *)v17 name];
        if (v19)
        {
          [v14 addObject:v19];
        }

        ++v15;
        ++v16;
      }

      while (columnCount != v15);
    }

    v20 = [MEMORY[0x1E695DF20] sharedKeySetForKeys:v14];
    v21 = [MEMORY[0x1E695DF90] dictionaryWithSharedKeySet:v20];
    if (columnCount)
    {
      for (i = 0; i != columnCount; ++i)
      {
        v23 = v13[i];
        v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
        [(NSDictionary *)v21 setObject:v23 forKeyedSubscript:v24];

        v25 = [v23 name];
        if (v25)
        {
          [(NSDictionary *)v21 setObject:v23 forKeyedSubscript:v25];
        }

        v26 = v13[i];
        v13[i] = 0;
      }
    }

    v5 = v40;
    columns = v40->_columns;
    v40->_columns = v21;

    v5->_namedColumnsInitialized = 1;
    free(v36);
    v28 = v37 - 8;
    do
    {

      v9 -= 8;
    }

    while (v9);
  }

  v29 = [(NSDictionary *)v5->_columns objectForKeyedSubscript:v39];
  v30 = v29 != 0;

  v31 = *MEMORY[0x1E69E9840];
  return v30;
}

- (id)columnNames
{
  v36 = &v33;
  v38 = *MEMORY[0x1E69E9840];
  v2 = self;
  v3 = v2;
  if (!v2->_namedColumnsInitialized)
  {
    columnCount = v2->_columnCount;
    v37 = v2;
    if (columnCount > 0xC80000)
    {
      v31 = [MEMORY[0x1E696AAA8] currentHandler];
      v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _initializeAllNamedColumns(EFSQLRow *__strong)"];
      [v31 handleFailureInFunction:v32 file:@"EFSQLRow.m" lineNumber:112 description:{@"Temporary buffer too large or with a negative count (%zu).", columnCount}];
    }

    v33 = &v33;
    if (columnCount <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = columnCount;
    }

    if (columnCount >= 0x101)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }

    v7 = 8 * v6;
    MEMORY[0x1EEE9AC00](v2);
    v9 = &v33 - v8;
    bzero(&v33 - v8, v7);
    v35 = v9;
    if (columnCount > 0x100)
    {
      v10 = malloc_type_calloc(v5, 8uLL, 0x80040B8603338uLL);
    }

    else
    {
      bzero(v9, 8 * v5);
      v10 = 0;
    }

    v34 = v10;
    if (columnCount >= 0x101)
    {
      v11 = v10;
    }

    else
    {
      v11 = v9;
    }

    v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{2 * columnCount, v33}];
    if (columnCount)
    {
      v13 = 0;
      v14 = v11;
      do
      {
        v15 = [[EFSQLColumn alloc] initWithSQLiteStatement:v3->_statement index:v13];
        objc_storeStrong(v14, v15);
        v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v13];
        [v12 addObject:v16];

        v17 = [(EFSQLColumn *)v15 name];
        if (v17)
        {
          [v12 addObject:v17];
        }

        ++v13;
        ++v14;
        v3 = v37;
      }

      while (columnCount != v13);
    }

    v18 = [MEMORY[0x1E695DF20] sharedKeySetForKeys:v12];
    v19 = [MEMORY[0x1E695DF90] dictionaryWithSharedKeySet:v18];
    if (columnCount)
    {
      for (i = 0; i != columnCount; ++i)
      {
        v21 = v11[i];
        v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
        [(NSDictionary *)v19 setObject:v21 forKeyedSubscript:v22];

        v23 = [v21 name];
        if (v23)
        {
          [(NSDictionary *)v19 setObject:v21 forKeyedSubscript:v23];
        }

        v24 = v11[i];
        v11[i] = 0;
      }
    }

    v3 = v37;
    columns = v37->_columns;
    v37->_columns = v19;

    v3->_namedColumnsInitialized = 1;
    free(v34);
    v26 = v35 - 8;
    do
    {

      v7 -= 8;
    }

    while (v7);
  }

  v27 = [(NSDictionary *)v3->_columns allKeys];
  v28 = [v27 ef_filter:&__block_literal_global_37];

  v29 = *MEMORY[0x1E69E9840];

  return v28;
}

uint64_t __23__EFSQLRow_columnNames__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)objectForKeyedSubscript:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v42 = v39;
  v43 = a3;
  v4 = self;
  v5 = v4;
  namedColumnsInitialized = v4->_namedColumnsInitialized;
  v44 = v4;
  if (!namedColumnsInitialized)
  {
    columnCount = v4->_columnCount;
    if (columnCount > 0xC80000)
    {
      v33 = [MEMORY[0x1E696AAA8] currentHandler];
      v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _initializeAllNamedColumns(EFSQLRow *__strong)"];
      [v33 handleFailureInFunction:v34 file:@"EFSQLRow.m" lineNumber:112 description:{@"Temporary buffer too large or with a negative count (%zu).", columnCount}];
    }

    v39[1] = v39;
    if (columnCount <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = columnCount;
    }

    if (columnCount >= 0x101)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    v10 = 8 * v9;
    MEMORY[0x1EEE9AC00](v4);
    v12 = v39 - v11;
    bzero(v39 - v11, v10);
    v41 = v12;
    if (columnCount > 0x100)
    {
      v13 = malloc_type_calloc(v8, 8uLL, 0x80040B8603338uLL);
    }

    else
    {
      bzero(v12, 8 * v8);
      v13 = 0;
    }

    v40 = v13;
    if (columnCount >= 0x101)
    {
      v14 = v13;
    }

    else
    {
      v14 = v12;
    }

    v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:2 * columnCount];
    if (columnCount)
    {
      v16 = 0;
      v17 = v14;
      do
      {
        v18 = [[EFSQLColumn alloc] initWithSQLiteStatement:v44->_statement index:v16];
        objc_storeStrong(v17, v18);
        v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v16];
        [v15 addObject:v19];

        v20 = [(EFSQLColumn *)v18 name];
        if (v20)
        {
          [v15 addObject:v20];
        }

        ++v16;
        ++v17;
      }

      while (columnCount != v16);
    }

    v21 = [MEMORY[0x1E695DF20] sharedKeySetForKeys:v15];
    v22 = [MEMORY[0x1E695DF90] dictionaryWithSharedKeySet:v21];
    if (columnCount)
    {
      for (i = 0; i != columnCount; ++i)
      {
        v24 = v14[i];
        v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
        [(NSDictionary *)v22 setObject:v24 forKeyedSubscript:v25];

        v26 = [v24 name];
        if (v26)
        {
          [(NSDictionary *)v22 setObject:v24 forKeyedSubscript:v26];
        }

        v27 = v14[i];
        v14[i] = 0;
      }
    }

    v5 = v44;
    columns = v44->_columns;
    v44->_columns = v22;

    v5->_namedColumnsInitialized = 1;
    free(v40);
    v29 = v41 - 8;
    do
    {

      v10 -= 8;
    }

    while (v10);
  }

  v30 = [(NSDictionary *)v5->_columns objectForKeyedSubscript:v43];
  if (!v30)
  {
    v35 = objc_alloc(MEMORY[0x1E696AEC0]);
    v36 = [(EFSQLRow *)v44 _queryString];
    v37 = [v35 initWithFormat:@"No matching column named %@ in statement: %@", v43, v36];

    v38 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v37 userInfo:0];
    objc_exception_throw(v38);
  }

  v31 = *MEMORY[0x1E69E9840];

  return v30;
}

- (id)debugDescription
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (i = 0; i < [(EFSQLRow *)self columnCount]; ++i)
  {
    columns = self->_columns;
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
    v7 = [(NSDictionary *)columns objectForKeyedSubscript:v6];

    v8 = MEMORY[0x1E696AEC0];
    if (v7)
    {
      v9 = [v7 name];
      v10 = [v7 objectValue];
      v11 = [v8 stringWithFormat:@"%lu:%@:%@", i, v9, v10];
      [v3 addObject:v11];
    }

    else
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu:nil", i];
      [v3 addObject:v9];
    }
  }

  v12 = MEMORY[0x1E696AEC0];
  v17.receiver = self;
  v17.super_class = EFSQLRow;
  v13 = [(EFSQLRow *)&v17 debugDescription];
  v14 = [v3 componentsJoinedByString:@"\n"];
  v15 = [v12 stringWithFormat:@"%@(\n%@\n)", v13, v14];

  return v15;
}

- (id)_queryString
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = sqlite3_sql(self->_statement);

  return [v2 stringWithUTF8String:v3];
}

@end