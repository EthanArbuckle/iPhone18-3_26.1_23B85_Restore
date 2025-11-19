@interface MSVMarkdownTable
+ (id)escapedString:(id)a3;
- (MSVMarkdownTable)init;
- (NSArray)columnHeaders;
- (NSArray)rows;
- (id)_formatString:(id)a3 withWidth:(int64_t)a4 alignment:(int64_t)a5;
- (id)cellAtColumn:(int64_t)a3 row:(int64_t)a4;
- (id)renderMarkdownWithOptions:(unint64_t)a3;
- (int64_t)alignmentForColumnAtIndex:(int64_t)a3;
- (void)addColumnWithHeader:(id)a3;
- (void)addRow:(id)a3;
- (void)insertColumnWithHeader:(id)a3 atIndex:(int64_t)a4;
- (void)insertRow:(id)a3 atIndex:(int64_t)a4;
- (void)removeColumnAtIndex:(int64_t)a3;
- (void)setAlignment:(int64_t)a3 forColumnAtIndex:(int64_t)a4;
- (void)setCell:(id)a3 atColumn:(int64_t)a4 row:(int64_t)a5;
@end

@implementation MSVMarkdownTable

- (id)_formatString:(id)a3 withWidth:(int64_t)a4 alignment:(int64_t)a5
{
  v8 = a3;
  v9 = v8;
  if (a5 < 2)
  {
    v5 = [v8 stringByPaddingToLength:a4 withString:@" " startingAtIndex:0];
  }

  else if (a5 == 2)
  {
    v11 = [&stru_1F214F018 stringByPaddingToLength:(a4 - objc_msgSend(v8 withString:"length")) >> 1 startingAtIndex:{@" ", 0}];
    v12 = [v11 stringByAppendingString:v9];
    v5 = [v12 stringByPaddingToLength:a4 withString:@" " startingAtIndex:0];
  }

  else if (a5 == 3)
  {
    v10 = [&stru_1F214F018 stringByPaddingToLength:a4 - objc_msgSend(v8 withString:"length") startingAtIndex:{@" ", 0}];
    v5 = [v10 stringByAppendingString:v9];
  }

  return v5;
}

- (id)renderMarkdownWithOptions:(unint64_t)a3
{
  v3 = a3;
  v5 = [(NSMutableArray *)self->_columnHeaders count];
  if (v5)
  {
    v6 = v5;
    v7 = v3 | 6;
    if ((v3 & 6) != 0)
    {
      v7 = v3;
    }

    v47 = v5;
    v49 = v7;
    if (v7)
    {
      v48 = [MEMORY[0x1E695DF70] arrayWithCapacity:v5];
      if (v6 >= 1)
      {
        for (i = 0; i != v47; ++i)
        {
          v10 = [(NSMutableArray *)self->_columnHeaders objectAtIndexedSubscript:i];
          v11 = [v10 length];

          if ([(NSMutableArray *)self->_rows count])
          {
            v12 = 0;
            do
            {
              v13 = [(NSMutableArray *)self->_rows objectAtIndexedSubscript:v12];
              v14 = [v13 objectAtIndexedSubscript:i];

              if ((v49 & 8) == 0)
              {
                v15 = [v14 stringByReplacingOccurrencesOfString:@"|" withString:@"&#124"];;

                v14 = v15;
              }

              v16 = [v14 length];
              if (v11 <= v16)
              {
                v11 = v16;
              }

              ++v12;
            }

            while (v12 < [(NSMutableArray *)self->_rows count]);
          }

          if (v11 <= 3)
          {
            v17 = 3;
          }

          else
          {
            v17 = v11;
          }

          v18 = [MEMORY[0x1E696AD98] numberWithInteger:v17];
          [v48 setObject:v18 atIndexedSubscript:i];
        }

        v6 = v47;
      }
    }

    else
    {
      v48 = 0;
    }

    v19 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:{250 * -[NSMutableArray count](self->_columnHeaders, "count") * -[NSMutableArray count](self->_rows, "count")}];
    v20 = v19;
    if ((v49 & 2) != 0)
    {
      [v19 appendString:@"|"];
      if (v6 <= 0)
      {
        [v20 appendString:@"\n|"];
      }

      else
      {
        for (j = 0; j != v6; ++j)
        {
          [v20 appendString:@" "];
          if (v49)
          {
            v23 = [(NSMutableArray *)self->_columnAlignments objectAtIndexedSubscript:j];
            v24 = [v23 integerValue];

            v25 = [v48 objectAtIndexedSubscript:j];
            v26 = [v25 integerValue];

            v22 = [(NSMutableArray *)self->_columnHeaders objectAtIndexedSubscript:j];
            v27 = [(MSVMarkdownTable *)self _formatString:v22 withWidth:v26 alignment:v24];
            [v20 appendString:v27];
          }

          else
          {
            v22 = [(NSMutableArray *)self->_columnHeaders objectAtIndexedSubscript:j];
            [v20 appendString:v22];
          }

          [v20 appendString:@" |"];
        }

        [v20 appendString:@"\n|"];
        for (k = 0; k != v47; ++k)
        {
          v29 = [(NSMutableArray *)self->_columnAlignments objectAtIndexedSubscript:k];
          v30 = [v29 integerValue];

          if (v30 > 3)
          {
            v31 = 0;
          }

          else
          {
            v31 = off_1E7982710[v30];
          }

          if (v49)
          {
            v32 = [v48 objectAtIndexedSubscript:k];
            v33 = [v32 integerValue];

            v34 = [&stru_1F214F018 stringByPaddingToLength:v33 withString:@"-" startingAtIndex:0];
            v35 = [(__CFString *)v31 stringByReplacingCharactersInRange:1 withString:3, v34];
            [v20 appendString:v35];
          }

          else
          {
            [v20 appendString:v31];
          }

          [v20 appendString:@"|"];
        }
      }

      [v20 appendString:@"\n"];
      v6 = v47;
    }

    if ((v49 & 4) != 0 && [(NSMutableArray *)self->_rows count])
    {
      v36 = 0;
      do
      {
        [v20 appendString:@"|"];
        if (v6 >= 1)
        {
          for (m = 0; m != v6; ++m)
          {
            [v20 appendString:@" "];
            v38 = [(NSMutableArray *)self->_rows objectAtIndexedSubscript:v36];
            v39 = [v38 objectAtIndexedSubscript:m];

            if ((v49 & 8) == 0)
            {
              v40 = [v39 stringByReplacingOccurrencesOfString:@"|" withString:@"&#124"];;

              v39 = v40;
            }

            if (v49)
            {
              v41 = [(NSMutableArray *)self->_columnAlignments objectAtIndexedSubscript:m];
              v42 = [v41 integerValue];

              v43 = [v48 objectAtIndexedSubscript:m];
              v44 = [v43 integerValue];

              v45 = [(MSVMarkdownTable *)self _formatString:v39 withWidth:v44 alignment:v42];
              [v20 appendString:v45];

              v6 = v47;
            }

            else
            {
              [v20 appendString:v39];
            }

            [v20 appendString:@" |"];
          }
        }

        [v20 appendString:@"\n"];
        ++v36;
      }

      while (v36 < [(NSMutableArray *)self->_rows count]);
    }

    v8 = [v20 copy];
  }

  else
  {
    v8 = &stru_1F214F018;
  }

  return v8;
}

- (void)setCell:(id)a3 atColumn:(int64_t)a4 row:(int64_t)a5
{
  rows = self->_rows;
  v9 = a3;
  v10 = [(NSMutableArray *)rows objectAtIndexedSubscript:a5];
  v13 = [v10 mutableCopy];

  v11 = [v9 copy];
  [v13 setObject:v11 atIndexedSubscript:a4];

  v12 = [v13 copy];
  [(NSMutableArray *)self->_rows setObject:v12 atIndexedSubscript:a5];
}

- (id)cellAtColumn:(int64_t)a3 row:(int64_t)a4
{
  v5 = [(NSMutableArray *)self->_rows objectAtIndexedSubscript:a4];
  v6 = [v5 objectAtIndexedSubscript:a3];

  return v6;
}

- (void)insertRow:(id)a3 atIndex:(int64_t)a4
{
  v11 = a3;
  v7 = [v11 count];
  if (v7 != [(NSMutableArray *)self->_columnHeaders count])
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"MSVMarkdownTable.m" lineNumber:114 description:{@"Row elements must match current table column count: %ld", -[NSMutableArray count](self->_columnHeaders, "count")}];
  }

  rows = self->_rows;
  v9 = [v11 copy];
  [(NSMutableArray *)rows insertObject:v9 atIndex:a4];
}

- (void)addRow:(id)a3
{
  v9 = a3;
  v5 = [v9 count];
  if (v5 != [(NSMutableArray *)self->_columnHeaders count])
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MSVMarkdownTable.m" lineNumber:108 description:{@"Row elements must match current table column count: %ld", -[NSMutableArray count](self->_columnHeaders, "count")}];
  }

  rows = self->_rows;
  v7 = [v9 copy];
  [(NSMutableArray *)rows addObject:v7];
}

- (NSArray)rows
{
  v2 = [(NSMutableArray *)self->_rows copy];

  return v2;
}

- (void)setAlignment:(int64_t)a3 forColumnAtIndex:(int64_t)a4
{
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(NSMutableArray *)self->_columnAlignments setObject:v6 atIndexedSubscript:a4];
}

- (int64_t)alignmentForColumnAtIndex:(int64_t)a3
{
  v3 = [(NSMutableArray *)self->_columnAlignments objectAtIndexedSubscript:a3];
  v4 = [v3 integerValue];

  return v4;
}

- (void)removeColumnAtIndex:(int64_t)a3
{
  [(NSMutableArray *)self->_columnHeaders removeObjectAtIndex:?];
  [(NSMutableArray *)self->_columnAlignments removeObjectAtIndex:a3];
  if ([(NSMutableArray *)self->_rows count])
  {
    v5 = 0;
    do
    {
      v6 = [(NSMutableArray *)self->_rows objectAtIndexedSubscript:v5];
      v7 = [v6 mutableCopy];

      [v7 removeObjectAtIndex:a3];
      v8 = [v7 copy];
      [(NSMutableArray *)self->_rows setObject:v8 atIndexedSubscript:v5];

      ++v5;
    }

    while (v5 < [(NSMutableArray *)self->_rows count]);
  }
}

- (void)insertColumnWithHeader:(id)a3 atIndex:(int64_t)a4
{
  [(NSMutableArray *)self->_columnHeaders insertObject:a3 atIndex:?];
  [(NSMutableArray *)self->_columnAlignments insertObject:&unk_1F215CBC0 atIndex:a4];
  if ([(NSMutableArray *)self->_rows count])
  {
    v6 = 0;
    do
    {
      v7 = [(NSMutableArray *)self->_rows objectAtIndexedSubscript:v6];
      v8 = [v7 mutableCopy];

      [v8 insertObject:&stru_1F214F018 atIndex:a4];
      v9 = [v8 copy];
      [(NSMutableArray *)self->_rows setObject:v9 atIndexedSubscript:v6];

      ++v6;
    }

    while (v6 < [(NSMutableArray *)self->_rows count]);
  }
}

- (void)addColumnWithHeader:(id)a3
{
  [(NSMutableArray *)self->_columnHeaders addObject:a3];
  [(NSMutableArray *)self->_columnAlignments addObject:&unk_1F215CBC0];
  if ([(NSMutableArray *)self->_rows count])
  {
    v4 = 0;
    do
    {
      v5 = [(NSMutableArray *)self->_rows objectAtIndexedSubscript:v4];
      v6 = [v5 arrayByAddingObject:&stru_1F214F018];

      [(NSMutableArray *)self->_rows setObject:v6 atIndexedSubscript:v4];
      ++v4;
    }

    while (v4 < [(NSMutableArray *)self->_rows count]);
  }
}

- (NSArray)columnHeaders
{
  v2 = [(NSMutableArray *)self->_columnHeaders copy];

  return v2;
}

- (MSVMarkdownTable)init
{
  v10.receiver = self;
  v10.super_class = MSVMarkdownTable;
  v2 = [(MSVMarkdownTable *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    columnHeaders = v2->_columnHeaders;
    v2->_columnHeaders = v3;

    v5 = [MEMORY[0x1E695DF70] array];
    columnAlignments = v2->_columnAlignments;
    v2->_columnAlignments = v5;

    v7 = [MEMORY[0x1E695DF70] array];
    rows = v2->_rows;
    v2->_rows = v7;
  }

  return v2;
}

+ (id)escapedString:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = 0;
    v5 = 0;
    while (1)
    {
      v6 = [v3 characterAtIndex:v4];
      if (v6 == 95 && (v5 & 1) != 0)
      {
        break;
      }

      v5 |= v6 == 95;
      if (++v4 >= [v3 length])
      {
        goto LABEL_8;
      }
    }

    v7 = [v3 stringByReplacingOccurrencesOfString:@"_" withString:@"\\_"];

    v3 = v7;
  }

LABEL_8:

  return v3;
}

@end