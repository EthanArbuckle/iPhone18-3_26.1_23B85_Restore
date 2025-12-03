@interface MSVMarkdownTable
+ (id)escapedString:(id)string;
- (MSVMarkdownTable)init;
- (NSArray)columnHeaders;
- (NSArray)rows;
- (id)_formatString:(id)string withWidth:(int64_t)width alignment:(int64_t)alignment;
- (id)cellAtColumn:(int64_t)column row:(int64_t)row;
- (id)renderMarkdownWithOptions:(unint64_t)options;
- (int64_t)alignmentForColumnAtIndex:(int64_t)index;
- (void)addColumnWithHeader:(id)header;
- (void)addRow:(id)row;
- (void)insertColumnWithHeader:(id)header atIndex:(int64_t)index;
- (void)insertRow:(id)row atIndex:(int64_t)index;
- (void)removeColumnAtIndex:(int64_t)index;
- (void)setAlignment:(int64_t)alignment forColumnAtIndex:(int64_t)index;
- (void)setCell:(id)cell atColumn:(int64_t)column row:(int64_t)row;
@end

@implementation MSVMarkdownTable

- (id)_formatString:(id)string withWidth:(int64_t)width alignment:(int64_t)alignment
{
  stringCopy = string;
  v9 = stringCopy;
  if (alignment < 2)
  {
    v5 = [stringCopy stringByPaddingToLength:width withString:@" " startingAtIndex:0];
  }

  else if (alignment == 2)
  {
    v11 = [&stru_1F214F018 stringByPaddingToLength:(width - objc_msgSend(stringCopy withString:"length")) >> 1 startingAtIndex:{@" ", 0}];
    v12 = [v11 stringByAppendingString:v9];
    v5 = [v12 stringByPaddingToLength:width withString:@" " startingAtIndex:0];
  }

  else if (alignment == 3)
  {
    v10 = [&stru_1F214F018 stringByPaddingToLength:width - objc_msgSend(stringCopy withString:"length") startingAtIndex:{@" ", 0}];
    v5 = [v10 stringByAppendingString:v9];
  }

  return v5;
}

- (id)renderMarkdownWithOptions:(unint64_t)options
{
  optionsCopy = options;
  v5 = [(NSMutableArray *)self->_columnHeaders count];
  if (v5)
  {
    v6 = v5;
    v7 = optionsCopy | 6;
    if ((optionsCopy & 6) != 0)
    {
      v7 = optionsCopy;
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
            integerValue = [v23 integerValue];

            v25 = [v48 objectAtIndexedSubscript:j];
            integerValue2 = [v25 integerValue];

            v22 = [(NSMutableArray *)self->_columnHeaders objectAtIndexedSubscript:j];
            v27 = [(MSVMarkdownTable *)self _formatString:v22 withWidth:integerValue2 alignment:integerValue];
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
          integerValue3 = [v29 integerValue];

          if (integerValue3 > 3)
          {
            v31 = 0;
          }

          else
          {
            v31 = off_1E7982710[integerValue3];
          }

          if (v49)
          {
            v32 = [v48 objectAtIndexedSubscript:k];
            integerValue4 = [v32 integerValue];

            v34 = [&stru_1F214F018 stringByPaddingToLength:integerValue4 withString:@"-" startingAtIndex:0];
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
              integerValue5 = [v41 integerValue];

              v43 = [v48 objectAtIndexedSubscript:m];
              integerValue6 = [v43 integerValue];

              v45 = [(MSVMarkdownTable *)self _formatString:v39 withWidth:integerValue6 alignment:integerValue5];
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

- (void)setCell:(id)cell atColumn:(int64_t)column row:(int64_t)row
{
  rows = self->_rows;
  cellCopy = cell;
  v10 = [(NSMutableArray *)rows objectAtIndexedSubscript:row];
  v13 = [v10 mutableCopy];

  v11 = [cellCopy copy];
  [v13 setObject:v11 atIndexedSubscript:column];

  v12 = [v13 copy];
  [(NSMutableArray *)self->_rows setObject:v12 atIndexedSubscript:row];
}

- (id)cellAtColumn:(int64_t)column row:(int64_t)row
{
  v5 = [(NSMutableArray *)self->_rows objectAtIndexedSubscript:row];
  v6 = [v5 objectAtIndexedSubscript:column];

  return v6;
}

- (void)insertRow:(id)row atIndex:(int64_t)index
{
  rowCopy = row;
  v7 = [rowCopy count];
  if (v7 != [(NSMutableArray *)self->_columnHeaders count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVMarkdownTable.m" lineNumber:114 description:{@"Row elements must match current table column count: %ld", -[NSMutableArray count](self->_columnHeaders, "count")}];
  }

  rows = self->_rows;
  v9 = [rowCopy copy];
  [(NSMutableArray *)rows insertObject:v9 atIndex:index];
}

- (void)addRow:(id)row
{
  rowCopy = row;
  v5 = [rowCopy count];
  if (v5 != [(NSMutableArray *)self->_columnHeaders count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVMarkdownTable.m" lineNumber:108 description:{@"Row elements must match current table column count: %ld", -[NSMutableArray count](self->_columnHeaders, "count")}];
  }

  rows = self->_rows;
  v7 = [rowCopy copy];
  [(NSMutableArray *)rows addObject:v7];
}

- (NSArray)rows
{
  v2 = [(NSMutableArray *)self->_rows copy];

  return v2;
}

- (void)setAlignment:(int64_t)alignment forColumnAtIndex:(int64_t)index
{
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:alignment];
  [(NSMutableArray *)self->_columnAlignments setObject:v6 atIndexedSubscript:index];
}

- (int64_t)alignmentForColumnAtIndex:(int64_t)index
{
  v3 = [(NSMutableArray *)self->_columnAlignments objectAtIndexedSubscript:index];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (void)removeColumnAtIndex:(int64_t)index
{
  [(NSMutableArray *)self->_columnHeaders removeObjectAtIndex:?];
  [(NSMutableArray *)self->_columnAlignments removeObjectAtIndex:index];
  if ([(NSMutableArray *)self->_rows count])
  {
    v5 = 0;
    do
    {
      v6 = [(NSMutableArray *)self->_rows objectAtIndexedSubscript:v5];
      v7 = [v6 mutableCopy];

      [v7 removeObjectAtIndex:index];
      v8 = [v7 copy];
      [(NSMutableArray *)self->_rows setObject:v8 atIndexedSubscript:v5];

      ++v5;
    }

    while (v5 < [(NSMutableArray *)self->_rows count]);
  }
}

- (void)insertColumnWithHeader:(id)header atIndex:(int64_t)index
{
  [(NSMutableArray *)self->_columnHeaders insertObject:header atIndex:?];
  [(NSMutableArray *)self->_columnAlignments insertObject:&unk_1F215CBC0 atIndex:index];
  if ([(NSMutableArray *)self->_rows count])
  {
    v6 = 0;
    do
    {
      v7 = [(NSMutableArray *)self->_rows objectAtIndexedSubscript:v6];
      v8 = [v7 mutableCopy];

      [v8 insertObject:&stru_1F214F018 atIndex:index];
      v9 = [v8 copy];
      [(NSMutableArray *)self->_rows setObject:v9 atIndexedSubscript:v6];

      ++v6;
    }

    while (v6 < [(NSMutableArray *)self->_rows count]);
  }
}

- (void)addColumnWithHeader:(id)header
{
  [(NSMutableArray *)self->_columnHeaders addObject:header];
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
    array = [MEMORY[0x1E695DF70] array];
    columnHeaders = v2->_columnHeaders;
    v2->_columnHeaders = array;

    array2 = [MEMORY[0x1E695DF70] array];
    columnAlignments = v2->_columnAlignments;
    v2->_columnAlignments = array2;

    array3 = [MEMORY[0x1E695DF70] array];
    rows = v2->_rows;
    v2->_rows = array3;
  }

  return v2;
}

+ (id)escapedString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    v4 = 0;
    v5 = 0;
    while (1)
    {
      v6 = [stringCopy characterAtIndex:v4];
      if (v6 == 95 && (v5 & 1) != 0)
      {
        break;
      }

      v5 |= v6 == 95;
      if (++v4 >= [stringCopy length])
      {
        goto LABEL_8;
      }
    }

    v7 = [stringCopy stringByReplacingOccurrencesOfString:@"_" withString:@"\\_"];

    stringCopy = v7;
  }

LABEL_8:

  return stringCopy;
}

@end