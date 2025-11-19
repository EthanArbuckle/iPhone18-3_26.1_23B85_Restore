@interface MSVSQLRowEnumerator
- (BOOL)BOOLValueAtColumnIndex:(int64_t)a3;
- (BOOL)isNullValueAtColumnIndex:(int64_t)a3;
- (NSString)description;
- (double)doubleValueAtColumnIndex:(int64_t)a3;
- (float)floatValueAtColumnIndex:(int64_t)a3;
- (id)_markdownTable;
- (id)columnNameAtIndex:(int64_t)a3;
- (id)dataValueAtColumnIndex:(int64_t)a3;
- (id)dateValueAtColumnIndex:(int64_t)a3;
- (id)initWithStatement:(id *)a1;
- (id)jsonDataAtColumnIndex:(int64_t)a3;
- (id)jsonValueAtColumnIndex:(int64_t)a3 error:(id *)a4;
- (id)markdownTable;
- (id)markdownTableHeader;
- (id)markdownTableRow;
- (id)nextObjectWithError:(id *)a3;
- (id)objectValueAtColumnIndex:(int64_t)a3;
- (id)stringValueAtColumnIndex:(int64_t)a3;
- (int64_t)columnCount;
- (int64_t)int64ValueAtColumnIndex:(int64_t)a3;
- (unint64_t)uint64ValueAtColumnIndex:(int64_t)a3;
- (void)_addRow:(id)a3 toTable:(id)a4;
@end

@implementation MSVSQLRowEnumerator

- (id)initWithStatement:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = MSVSQLRowEnumerator;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return a1;
}

- (void)_addRow:(id)a3 toTable:(id)a4
{
  v12 = a4;
  v5 = [(MSVSQLRowEnumerator *)self columnCount];
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:v5];
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      v8 = [(MSVSQLRowEnumerator *)self objectValueAtColumnIndex:i];
      v9 = [v8 description];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = @"<null>";
      }

      [v6 addObject:v11];
    }
  }

  [v12 addRow:v6];
}

- (id)_markdownTable
{
  v3 = [(MSVSQLRowEnumerator *)self columnCount];
  v4 = objc_alloc_init(MSVMarkdownTable);
  if (v3 >= 1)
  {
    for (i = 0; i != v3; ++i)
    {
      v6 = [(MSVSQLRowEnumerator *)self columnNameAtIndex:i];
      v7 = [MSVMarkdownTable escapedString:v6];
      [(MSVMarkdownTable *)v4 addColumnWithHeader:v7];
    }
  }

  return v4;
}

- (id)markdownTable
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(MSVSQLRowEnumerator *)self _markdownTable];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self;
  v5 = [(MSVSQLRowEnumerator *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(MSVSQLRowEnumerator *)v4 _addRow:*(*(&v12 + 1) + 8 * i) toTable:v3, v12];
      }

      v6 = [(MSVSQLRowEnumerator *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v9 = [v3 renderMarkdownWithOptions:1];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)markdownTableHeader
{
  v2 = [(MSVSQLRowEnumerator *)self _markdownTable];
  v3 = [v2 renderMarkdownWithOptions:2];

  return v3;
}

- (id)markdownTableRow
{
  v3 = [(MSVSQLRowEnumerator *)self _markdownTable];
  [(MSVSQLRowEnumerator *)self _addRow:self toTable:v3];
  v4 = [v3 renderMarkdownWithOptions:4];

  return v4;
}

- (id)objectValueAtColumnIndex:(int64_t)a3
{
  statement = self->_statement;
  if (statement)
  {
    statementHandle = statement->_statementHandle;
  }

  else
  {
    statementHandle = 0;
  }

  v7 = sqlite3_column_type(statementHandle, a3);
  v8 = 0;
  if (v7 > 2)
  {
    if (v7 == 3)
    {
      v8 = [(MSVSQLRowEnumerator *)self stringValueAtColumnIndex:a3];
    }

    else if (v7 == 4)
    {
      v8 = [(MSVSQLRowEnumerator *)self dataValueAtColumnIndex:a3];
    }
  }

  else if (v7 == 1)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[MSVSQLRowEnumerator int64ValueAtColumnIndex:](self, "int64ValueAtColumnIndex:", a3)}];
  }

  else if (v7 == 2)
  {
    v9 = MEMORY[0x1E696AD98];
    [(MSVSQLRowEnumerator *)self doubleValueAtColumnIndex:a3];
    v8 = [v9 numberWithDouble:?];
  }

  return v8;
}

- (id)jsonDataAtColumnIndex:(int64_t)a3
{
  if ([(MSVSQLRowEnumerator *)self isNullValueAtColumnIndex:?])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(MSVSQLRowEnumerator *)self stringValueAtColumnIndex:a3];
    v5 = [v6 dataUsingEncoding:4];
  }

  return v5;
}

- (id)jsonValueAtColumnIndex:(int64_t)a3 error:(id *)a4
{
  v5 = [(MSVSQLRowEnumerator *)self jsonDataAtColumnIndex:a3];
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

- (unint64_t)uint64ValueAtColumnIndex:(int64_t)a3
{
  statement = self->_statement;
  if (statement)
  {
    statementHandle = statement->_statementHandle;
  }

  else
  {
    statementHandle = 0;
  }

  return sqlite3_column_int64(statementHandle, a3);
}

- (id)stringValueAtColumnIndex:(int64_t)a3
{
  v3 = a3;
  if ([(MSVSQLRowEnumerator *)self isNullValueAtColumnIndex:?])
  {
    v5 = 0;
  }

  else
  {
    statement = self->_statement;
    if (statement)
    {
      statementHandle = statement->_statementHandle;
    }

    else
    {
      statementHandle = 0;
    }

    v8 = sqlite3_column_text(statementHandle, v3);
    v9 = self->_statement;
    if (v9)
    {
      v10 = v9->_statementHandle;
    }

    else
    {
      v10 = 0;
    }

    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v8 length:sqlite3_column_bytes(v10 encoding:{v3), 4}];
  }

  return v5;
}

- (BOOL)isNullValueAtColumnIndex:(int64_t)a3
{
  statement = self->_statement;
  if (statement)
  {
    statementHandle = statement->_statementHandle;
  }

  else
  {
    statementHandle = 0;
  }

  return sqlite3_column_type(statementHandle, a3) == 5;
}

- (int64_t)int64ValueAtColumnIndex:(int64_t)a3
{
  statement = self->_statement;
  if (statement)
  {
    statementHandle = statement->_statementHandle;
  }

  else
  {
    statementHandle = 0;
  }

  return sqlite3_column_int64(statementHandle, a3);
}

- (float)floatValueAtColumnIndex:(int64_t)a3
{
  statement = self->_statement;
  if (statement)
  {
    statementHandle = statement->_statementHandle;
  }

  else
  {
    statementHandle = 0;
  }

  return sqlite3_column_double(statementHandle, a3);
}

- (double)doubleValueAtColumnIndex:(int64_t)a3
{
  statement = self->_statement;
  if (statement)
  {
    statementHandle = statement->_statementHandle;
  }

  else
  {
    statementHandle = 0;
  }

  return sqlite3_column_double(statementHandle, a3);
}

- (id)dateValueAtColumnIndex:(int64_t)a3
{
  statement = self->_statement;
  if (statement)
  {
    statementHandle = statement->_statementHandle;
  }

  else
  {
    statementHandle = 0;
  }

  v7 = sqlite3_column_type(statementHandle, a3);
  if ((v7 - 1) >= 2)
  {
    if (v7 == 3)
    {
      v10 = objc_alloc_init(MEMORY[0x1E696AC80]);
      v11 = [(MSVSQLRowEnumerator *)self stringValueAtColumnIndex:a3];
      v9 = [v10 dateFromString:v11];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v8 = MEMORY[0x1E695DF00];
    [(MSVSQLRowEnumerator *)self doubleValueAtColumnIndex:a3];
    v9 = [v8 dateWithTimeIntervalSince1970:?];
  }

  return v9;
}

- (id)dataValueAtColumnIndex:(int64_t)a3
{
  v3 = a3;
  if ([(MSVSQLRowEnumerator *)self isNullValueAtColumnIndex:?])
  {
    v5 = 0;
  }

  else
  {
    statement = self->_statement;
    if (statement)
    {
      statementHandle = statement->_statementHandle;
    }

    else
    {
      statementHandle = 0;
    }

    v8 = sqlite3_column_blob(statementHandle, v3);
    v9 = self->_statement;
    if (v9)
    {
      v10 = v9->_statementHandle;
    }

    else
    {
      v10 = 0;
    }

    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:v8 length:{sqlite3_column_bytes(v10, v3)}];
  }

  return v5;
}

- (BOOL)BOOLValueAtColumnIndex:(int64_t)a3
{
  statement = self->_statement;
  if (statement)
  {
    statementHandle = statement->_statementHandle;
  }

  else
  {
    statementHandle = 0;
  }

  return sqlite3_column_int(statementHandle, a3) != 0;
}

- (NSString)description
{
  v12.receiver = self;
  v12.super_class = MSVSQLRowEnumerator;
  v3 = [(MSVSQLRowEnumerator *)&v12 description];
  v4 = [v3 mutableCopy];

  [v4 deleteCharactersInRange:{objc_msgSend(v4, "length") - 2, 1}];
  v5 = [(MSVSQLRowEnumerator *)self columnCount];
  objc_msgSend(v4, "appendString:", @" currentRow: (\n");
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      statement = self->_statement;
      if (statement)
      {
        statementHandle = statement->_statementHandle;
      }

      else
      {
        statementHandle = 0;
      }

      v9 = sqlite3_column_name(statementHandle, i);
      v10 = [(MSVSQLRowEnumerator *)self objectValueAtColumnIndex:i];
      [v4 appendFormat:@"    %s : %@ \n", v9, v10];
    }
  }

  [v4 appendString:@">"]);

  return v4;
}

- (id)nextObjectWithError:(id *)a3
{
  statement = self->_statement;
  if (statement)
  {
    statementHandle = statement->_statementHandle;
  }

  else
  {
    statementHandle = 0;
  }

  v7 = sqlite3_step(statementHandle);
  if (v7 == 101)
  {
    goto LABEL_10;
  }

  if (v7 == 100)
  {
    v8 = self;
    goto LABEL_11;
  }

  if (!a3)
  {
LABEL_10:
    v8 = 0;
  }

  else
  {
    v9 = self->_statement;
    if (v9)
    {
      v9 = v9->_connection;
    }

    v10 = v9;
    v11 = [(_MSVSQLConnection *)v10 lastError];
    v12 = v11;

    v8 = 0;
    *a3 = v11;
  }

LABEL_11:

  return v8;
}

- (id)columnNameAtIndex:(int64_t)a3
{
  statement = self->_statement;
  if (statement)
  {
    statementHandle = statement->_statementHandle;
  }

  else
  {
    statementHandle = 0;
  }

  v5 = sqlite3_column_name(statementHandle, a3);
  v6 = MEMORY[0x1E696AEC0];

  return [v6 stringWithUTF8String:v5];
}

- (int64_t)columnCount
{
  statement = self->_statement;
  if (statement)
  {
    statementHandle = statement->_statementHandle;
  }

  else
  {
    statementHandle = 0;
  }

  return sqlite3_column_count(statementHandle);
}

@end