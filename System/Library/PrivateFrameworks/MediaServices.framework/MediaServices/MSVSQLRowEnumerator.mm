@interface MSVSQLRowEnumerator
- (BOOL)BOOLValueAtColumnIndex:(int64_t)index;
- (BOOL)isNullValueAtColumnIndex:(int64_t)index;
- (NSString)description;
- (double)doubleValueAtColumnIndex:(int64_t)index;
- (float)floatValueAtColumnIndex:(int64_t)index;
- (id)_markdownTable;
- (id)columnNameAtIndex:(int64_t)index;
- (id)dataValueAtColumnIndex:(int64_t)index;
- (id)dateValueAtColumnIndex:(int64_t)index;
- (id)initWithStatement:(id *)statement;
- (id)jsonDataAtColumnIndex:(int64_t)index;
- (id)jsonValueAtColumnIndex:(int64_t)index error:(id *)error;
- (id)markdownTable;
- (id)markdownTableHeader;
- (id)markdownTableRow;
- (id)nextObjectWithError:(id *)error;
- (id)objectValueAtColumnIndex:(int64_t)index;
- (id)stringValueAtColumnIndex:(int64_t)index;
- (int64_t)columnCount;
- (int64_t)int64ValueAtColumnIndex:(int64_t)index;
- (unint64_t)uint64ValueAtColumnIndex:(int64_t)index;
- (void)_addRow:(id)row toTable:(id)table;
@end

@implementation MSVSQLRowEnumerator

- (id)initWithStatement:(id *)statement
{
  v4 = a2;
  if (statement)
  {
    v7.receiver = statement;
    v7.super_class = MSVSQLRowEnumerator;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    statement = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return statement;
}

- (void)_addRow:(id)row toTable:(id)table
{
  tableCopy = table;
  columnCount = [(MSVSQLRowEnumerator *)self columnCount];
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:columnCount];
  if (columnCount >= 1)
  {
    for (i = 0; i != columnCount; ++i)
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

  [tableCopy addRow:v6];
}

- (id)_markdownTable
{
  columnCount = [(MSVSQLRowEnumerator *)self columnCount];
  v4 = objc_alloc_init(MSVMarkdownTable);
  if (columnCount >= 1)
  {
    for (i = 0; i != columnCount; ++i)
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
  _markdownTable = [(MSVSQLRowEnumerator *)self _markdownTable];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  selfCopy = self;
  v5 = [(MSVSQLRowEnumerator *)selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(selfCopy);
        }

        [(MSVSQLRowEnumerator *)selfCopy _addRow:*(*(&v12 + 1) + 8 * i) toTable:_markdownTable, v12];
      }

      v6 = [(MSVSQLRowEnumerator *)selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v9 = [_markdownTable renderMarkdownWithOptions:1];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)markdownTableHeader
{
  _markdownTable = [(MSVSQLRowEnumerator *)self _markdownTable];
  v3 = [_markdownTable renderMarkdownWithOptions:2];

  return v3;
}

- (id)markdownTableRow
{
  _markdownTable = [(MSVSQLRowEnumerator *)self _markdownTable];
  [(MSVSQLRowEnumerator *)self _addRow:self toTable:_markdownTable];
  v4 = [_markdownTable renderMarkdownWithOptions:4];

  return v4;
}

- (id)objectValueAtColumnIndex:(int64_t)index
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

  v7 = sqlite3_column_type(statementHandle, index);
  v8 = 0;
  if (v7 > 2)
  {
    if (v7 == 3)
    {
      v8 = [(MSVSQLRowEnumerator *)self stringValueAtColumnIndex:index];
    }

    else if (v7 == 4)
    {
      v8 = [(MSVSQLRowEnumerator *)self dataValueAtColumnIndex:index];
    }
  }

  else if (v7 == 1)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[MSVSQLRowEnumerator int64ValueAtColumnIndex:](self, "int64ValueAtColumnIndex:", index)}];
  }

  else if (v7 == 2)
  {
    v9 = MEMORY[0x1E696AD98];
    [(MSVSQLRowEnumerator *)self doubleValueAtColumnIndex:index];
    v8 = [v9 numberWithDouble:?];
  }

  return v8;
}

- (id)jsonDataAtColumnIndex:(int64_t)index
{
  if ([(MSVSQLRowEnumerator *)self isNullValueAtColumnIndex:?])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(MSVSQLRowEnumerator *)self stringValueAtColumnIndex:index];
    v5 = [v6 dataUsingEncoding:4];
  }

  return v5;
}

- (id)jsonValueAtColumnIndex:(int64_t)index error:(id *)error
{
  v5 = [(MSVSQLRowEnumerator *)self jsonDataAtColumnIndex:index];
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

- (unint64_t)uint64ValueAtColumnIndex:(int64_t)index
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

  return sqlite3_column_int64(statementHandle, index);
}

- (id)stringValueAtColumnIndex:(int64_t)index
{
  indexCopy = index;
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

    v8 = sqlite3_column_text(statementHandle, indexCopy);
    v9 = self->_statement;
    if (v9)
    {
      v10 = v9->_statementHandle;
    }

    else
    {
      v10 = 0;
    }

    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v8 length:sqlite3_column_bytes(v10 encoding:{indexCopy), 4}];
  }

  return v5;
}

- (BOOL)isNullValueAtColumnIndex:(int64_t)index
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

  return sqlite3_column_type(statementHandle, index) == 5;
}

- (int64_t)int64ValueAtColumnIndex:(int64_t)index
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

  return sqlite3_column_int64(statementHandle, index);
}

- (float)floatValueAtColumnIndex:(int64_t)index
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

  return sqlite3_column_double(statementHandle, index);
}

- (double)doubleValueAtColumnIndex:(int64_t)index
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

  return sqlite3_column_double(statementHandle, index);
}

- (id)dateValueAtColumnIndex:(int64_t)index
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

  v7 = sqlite3_column_type(statementHandle, index);
  if ((v7 - 1) >= 2)
  {
    if (v7 == 3)
    {
      v10 = objc_alloc_init(MEMORY[0x1E696AC80]);
      v11 = [(MSVSQLRowEnumerator *)self stringValueAtColumnIndex:index];
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
    [(MSVSQLRowEnumerator *)self doubleValueAtColumnIndex:index];
    v9 = [v8 dateWithTimeIntervalSince1970:?];
  }

  return v9;
}

- (id)dataValueAtColumnIndex:(int64_t)index
{
  indexCopy = index;
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

    v8 = sqlite3_column_blob(statementHandle, indexCopy);
    v9 = self->_statement;
    if (v9)
    {
      v10 = v9->_statementHandle;
    }

    else
    {
      v10 = 0;
    }

    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:v8 length:{sqlite3_column_bytes(v10, indexCopy)}];
  }

  return v5;
}

- (BOOL)BOOLValueAtColumnIndex:(int64_t)index
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

  return sqlite3_column_int(statementHandle, index) != 0;
}

- (NSString)description
{
  v12.receiver = self;
  v12.super_class = MSVSQLRowEnumerator;
  v3 = [(MSVSQLRowEnumerator *)&v12 description];
  v4 = [v3 mutableCopy];

  [v4 deleteCharactersInRange:{objc_msgSend(v4, "length") - 2, 1}];
  columnCount = [(MSVSQLRowEnumerator *)self columnCount];
  objc_msgSend(v4, "appendString:", @" currentRow: (\n");
  if (columnCount >= 1)
  {
    for (i = 0; i != columnCount; ++i)
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

- (id)nextObjectWithError:(id *)error
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
    selfCopy = self;
    goto LABEL_11;
  }

  if (!error)
  {
LABEL_10:
    selfCopy = 0;
  }

  else
  {
    v9 = self->_statement;
    if (v9)
    {
      v9 = v9->_connection;
    }

    v10 = v9;
    lastError = [(_MSVSQLConnection *)v10 lastError];
    v12 = lastError;

    selfCopy = 0;
    *error = lastError;
  }

LABEL_11:

  return selfCopy;
}

- (id)columnNameAtIndex:(int64_t)index
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

  v5 = sqlite3_column_name(statementHandle, index);
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