@interface OITSUHTMLTable
+ (id)_attributesStringFromAttributes:(id)attributes;
+ (id)htmlTable;
- (OITSUHTMLTable)init;
- (id)markup;
- (unint64_t)indexOfColumnWithTitle:(id)title;
- (void)addRowWithCellMarkup:(id)markup;
- (void)addRowWithCellText:(id)text;
- (void)dealloc;
- (void)deleteColumnWithTitle:(id)title;
- (void)enumerateRowsUsingBlock:(id)block;
- (void)setCellAttributes:(id)attributes rowIndex:(unint64_t)index columnIndex:(unint64_t)columnIndex;
- (void)setCellMarkup:(id)markup atRowIndex:(unint64_t)index columnIndex:(unint64_t)columnIndex;
- (void)setClass:(id)class ofColumnIndex:(unint64_t)index;
- (void)setColumnClasses:(id)classes;
- (void)setColumnHeaders:(id)headers;
- (void)setRowClass:(id)class atRowIndex:(unint64_t)index;
@end

@implementation OITSUHTMLTable

+ (id)htmlTable
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (OITSUHTMLTable)init
{
  v4.receiver = self;
  v4.super_class = OITSUHTMLTable;
  v2 = [(OITSUHTMLTable *)&v4 init];
  if (v2)
  {
    v2->_columnAttributes = objc_opt_new();
    v2->_cellAttributes = objc_opt_new();
    v2->_rowClasses = objc_opt_new();
    v2->_columnHeaders = objc_opt_new();
    v2->_rows = objc_opt_new();
    v2->_rowClassStride = 1;
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OITSUHTMLTable;
  [(OITSUHTMLTable *)&v3 dealloc];
}

+ (id)_attributesStringFromAttributes:(id)attributes
{
  string = [MEMORY[0x277CCAB68] string];
  if ([attributes count])
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __50__OITSUHTMLTable__attributesStringFromAttributes___block_invoke;
    v6[3] = &unk_2799C63E8;
    v6[4] = string;
    [attributes enumerateKeysAndObjectsUsingBlock:v6];
  }

  return string;
}

- (id)markup
{
  v45 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  context = objc_autoreleasePoolPush();
  [string appendFormat:@"<table>\n"];
  if ([(NSMutableArray *)self->_columnHeaders count])
  {
    [string appendFormat:@"<thead>\n"];
    [string appendFormat:@"<tr class='header'>\n"];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    columnHeaders = self->_columnHeaders;
    v5 = [(NSMutableArray *)columnHeaders countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v39;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v39 != v7)
          {
            objc_enumerationMutation(columnHeaders);
          }

          [string appendFormat:@"<td>%@</td>", *(*(&v38 + 1) + 8 * i)];
        }

        v6 = [(NSMutableArray *)columnHeaders countByEnumeratingWithState:&v38 objects:v44 count:16];
      }

      while (v6);
    }

    [string appendFormat:@"</tr>\n"];
    [string appendFormat:@"</thead>\n"];
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = self->_rows;
  v27 = [(NSMutableArray *)obj countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v27)
  {
    v29 = 0;
    v26 = *v35;
    do
    {
      v9 = 0;
      do
      {
        if (*v35 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v34 + 1) + 8 * v9);
        v11 = -[NSMutableDictionary objectForKey:](self->_rowClasses, "objectForKey:", [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v29]);
        if (!v11)
        {
          rowClassStride = self->_rowClassStride;
          if (rowClassStride)
          {
            if ((v29 / rowClassStride))
            {
              v11 = @"b";
            }

            else
            {
              v11 = @"a";
            }
          }

          else
          {
            v11 = @"a";
          }
        }

        v28 = v9;
        [string appendFormat:@"<tr class='%@'>", v11];
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v13 = [v10 countByEnumeratingWithState:&v30 objects:v42 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = 0;
          v16 = *v31;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v31 != v16)
              {
                objc_enumerationMutation(v10);
              }

              v18 = *(*(&v30 + 1) + 8 * j);
              v19 = -[NSMutableDictionary objectForKey:](self->_columnAttributes, "objectForKey:", [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15]);
              if (v19)
              {
                dictionary = [v19 mutableCopy];
              }

              else
              {
                dictionary = [MEMORY[0x277CBEB38] dictionary];
              }

              v21 = dictionary;
              v22 = -[NSMutableDictionary objectForKey:](self->_cellAttributes, "objectForKey:", [objc_opt_class() _keyForCell:v29 :v15]);
              if (v22)
              {
                [v21 addEntriesFromDictionary:v22];
              }

              [string appendFormat:@"<td%@>%@</td>", objc_msgSend(objc_opt_class(), "_attributesStringFromAttributes:", v21), v18];
              ++v15;
            }

            v14 = [v10 countByEnumeratingWithState:&v30 objects:v42 count:16];
          }

          while (v14);
        }

        [string appendFormat:@"</tr>\n"];
        ++v29;
        v9 = v28 + 1;
      }

      while (v28 + 1 != v27);
      v27 = [(NSMutableArray *)obj countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v27);
  }

  [string appendFormat:@"</table>\n"];
  objc_autoreleasePoolPop(context);
  return string;
}

- (void)addRowWithCellMarkup:(id)markup
{
  rows = self->_rows;
  v4 = [markup copy];

  [(NSMutableArray *)rows addObject:v4];
}

- (void)addRowWithCellText:(id)text
{
  v4 = [text tsu_arrayByTransformingWithBlock:&__block_literal_global_16];

  [(OITSUHTMLTable *)self addRowWithCellMarkup:v4];
}

uint64_t __37__OITSUHTMLTable_addRowWithCellText___block_invoke(uint64_t a1, void *a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [a2 tsu_arrayByFlattening];

    return [v3 componentsJoinedByString:&stru_286EE1130];
  }

  else
  {

    return [a2 tsu_escapeXML];
  }
}

- (void)setColumnClasses:(id)classes
{
  if ([classes count])
  {
    v5 = 0;
    do
    {
      -[OITSUHTMLTable setClass:ofColumnIndex:](self, "setClass:ofColumnIndex:", [classes objectAtIndexedSubscript:v5], v5);
      ++v5;
    }

    while (v5 < [classes count]);
  }
}

- (void)setRowClass:(id)class atRowIndex:(unint64_t)index
{
  rowClasses = self->_rowClasses;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];

  [(NSMutableDictionary *)rowClasses setObject:class forKey:v6];
}

- (void)setColumnHeaders:(id)headers
{
  if ([headers count])
  {
    v5 = 0;
    do
    {
      -[NSMutableArray setObject:atIndexedSubscript:](self->_columnHeaders, "setObject:atIndexedSubscript:", [headers objectAtIndexedSubscript:v5], v5);
      ++v5;
    }

    while (v5 < [headers count]);
  }
}

- (void)setClass:(id)class ofColumnIndex:(unint64_t)index
{
  v7[1] = *MEMORY[0x277D85DE8];
  v5 = -[NSMutableDictionary tsu_objectForKey:withDefaultOfClass:](self->_columnAttributes, "tsu_objectForKey:withDefaultOfClass:", [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index], objc_opt_class());
  v6 = @"class";
  v7[0] = class;
  [v5 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v7, &v6, 1)}];
}

- (void)setCellMarkup:(id)markup atRowIndex:(unint64_t)index columnIndex:(unint64_t)columnIndex
{
  v9 = [-[NSMutableArray objectAtIndexedSubscript:](self->_rows objectAtIndexedSubscript:{index), "mutableCopy"}];
  [v9 setObject:markup atIndexedSubscript:columnIndex];
  rows = self->_rows;

  [(NSMutableArray *)rows setObject:v9 atIndexedSubscript:index];
}

- (void)setCellAttributes:(id)attributes rowIndex:(unint64_t)index columnIndex:(unint64_t)columnIndex
{
  cellAttributes = self->_cellAttributes;
  v7 = [objc_opt_class() _keyForCell:index :columnIndex];

  [(NSMutableDictionary *)cellAttributes setObject:attributes forKey:v7];
}

- (void)enumerateRowsUsingBlock:(id)block
{
  rows = self->_rows;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__OITSUHTMLTable_enumerateRowsUsingBlock___block_invoke;
  v4[3] = &unk_2799C6798;
  v4[4] = block;
  [(NSMutableArray *)rows enumerateObjectsUsingBlock:v4];
}

- (unint64_t)indexOfColumnWithTitle:(id)title
{
  if (![(NSMutableArray *)self->_columnHeaders count])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = 0;
  while (([-[NSMutableArray objectAtIndexedSubscript:](self->_columnHeaders objectAtIndexedSubscript:{v5), "isEqualToString:", title}] & 1) == 0)
  {
    if (++v5 >= [(NSMutableArray *)self->_columnHeaders count])
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v5;
}

- (void)deleteColumnWithTitle:(id)title
{
  v4 = [(OITSUHTMLTable *)self indexOfColumnWithTitle:title];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    [(NSMutableArray *)self->_columnHeaders removeObjectAtIndex:v4];
    v6 = [(NSMutableArray *)self->_rows count];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [-[NSMutableArray objectAtIndexedSubscript:](self->_rows objectAtIndexedSubscript:{i), "mutableCopy"}];
        [v9 removeObjectAtIndex:v5];
        [(NSMutableArray *)self->_rows setObject:v9 atIndexedSubscript:i];
      }
    }
  }
}

@end