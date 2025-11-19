@interface BMIndexRowEnumerator
- (BMIndexRowEnumerator)initWithDatabase:(sqlite3 *)a3 statement:(sqlite3_stmt *)a4 index:(id)a5;
- (id)allRows;
- (id)next;
- (id)nextBookmark;
- (void)dealloc;
@end

@implementation BMIndexRowEnumerator

- (BMIndexRowEnumerator)initWithDatabase:(sqlite3 *)a3 statement:(sqlite3_stmt *)a4 index:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = BMIndexRowEnumerator;
  v10 = [(BMIndexRowEnumerator *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_db = a3;
    v10->_stmt = a4;
    objc_storeStrong(&v10->_index, a5);
  }

  return v11;
}

- (id)next
{
  v4 = sqlite3_step(self->_stmt);
  if (v4 == 101)
  {
    v25 = 0;
  }

  else
  {
    v5 = v4;
    if (v4 == 100)
    {
      v6 = sqlite3_column_count(self->_stmt);
      v30 = v6 - 5;
      if (v6 <= 5)
      {
        [(BMIndexRowEnumerator *)a2 next];
      }

      v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v6];
      if (v6 >= 1)
      {
        for (i = 0; v6 != i; ++i)
        {
          v9 = sqlite3_column_type(self->_stmt, i);
          v10 = v9;
          if (v9 <= 2)
          {
            if (v9 == 1)
            {
              v11 = [MEMORY[0x1E696AD98] numberWithLongLong:{sqlite3_column_int64(self->_stmt, i)}];
            }

            else
            {
              if (v9 != 2)
              {
LABEL_21:
                v14 = [MEMORY[0x1E696AAA8] currentHandler];
                [v14 handleFailureInMethod:a2 object:self file:@"BMIndexRow.m" lineNumber:96 description:{@"Invalid sqlite type: %d", v10}];

                v13 = 0;
                goto LABEL_19;
              }

              v11 = [MEMORY[0x1E696AD98] numberWithDouble:{sqlite3_column_double(self->_stmt, i)}];
            }
          }

          else
          {
            switch(v9)
            {
              case 3:
                v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:{sqlite3_column_text(self->_stmt, i)}];
                break;
              case 4:
                v12 = sqlite3_column_blob(self->_stmt, i);
                v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v12 length:{sqlite3_column_bytes(self->_stmt, i)}];
                break;
              case 5:
                v11 = [MEMORY[0x1E695DFB0] null];
                break;
              default:
                goto LABEL_21;
            }
          }

          v13 = v11;
LABEL_19:
          [v7 addObject:v13];
        }
      }

      error = [v7 subarrayWithRange:{0, v30}];
      v16 = [v7 subarrayWithRange:{v30, 4}];
      v17 = objc_alloc(MEMORY[0x1E698F128]);
      v18 = [v16 objectAtIndexedSubscript:0];
      v19 = [v16 objectAtIndexedSubscript:1];
      v20 = [v16 objectAtIndexedSubscript:2];
      [v20 doubleValue];
      v22 = v21;
      v23 = [v16 objectAtIndexedSubscript:3];
      v24 = [v17 initWithStream:v18 segment:v19 iterationStartTime:objc_msgSend(v23 offset:{"unsignedIntValue"), v22}];

      v25 = [[BMIndexRow alloc] initWithIndexFields:error storeBookmark:v24];
    }

    else
    {
      v26 = MEMORY[0x1E696AEC0];
      v27 = [(BMIndex *)self->_index name];
      v7 = [v26 stringWithFormat:@"Error stepping index search result on %@", v27];

      v28 = BMSQLDatabaseError(v5, self->_db, [v7 UTF8String]);
      v25 = 0;
      error = self->_error;
      self->_error = v28;
    }
  }

  return v25;
}

- (id)allRows
{
  v3 = objc_opt_new();
  v4 = [(BMIndexRowEnumerator *)self next];
  if (v4)
  {
    v5 = v4;
    do
    {
      [v3 addObject:v5];

      v5 = [(BMIndexRowEnumerator *)self next];
    }

    while (v5);
  }

  return v3;
}

- (id)nextBookmark
{
  v2 = [(BMIndexRowEnumerator *)self next];
  v3 = [v2 storeBookmark];

  return v3;
}

- (void)dealloc
{
  sqlite3_finalize(self->_stmt);
  v3.receiver = self;
  v3.super_class = BMIndexRowEnumerator;
  [(BMIndexRowEnumerator *)&v3 dealloc];
}

@end