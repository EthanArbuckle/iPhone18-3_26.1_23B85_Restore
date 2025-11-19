@interface MADataFrame
- (BOOL)isEqual:(id)a3;
- (MADataFrame)initWithName:(id)a3 rowIndexCache:(id)a4 columnIndexCache:(id)a5 matrix:(id)a6;
- (MADataFrame)initWithName:(id)a3 rowLabels:(id)a4 columnLabels:(id)a5 matrix:(id)a6;
- (id)csvString;
- (id)dataFrameByAppendingColumnsOfDataFrame:(id)a3 withName:(id)a4;
- (id)numberAtRow:(id)a3 column:(id)a4;
- (int64_t)indexOfColumnWithLabel:(id)a3;
- (int64_t)indexOfRowWithLabel:(id)a3;
- (unint64_t)hash;
@end

@implementation MADataFrame

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = [(MAIndexCache *)self->_rowIndexCache hash]^ v3;
  v5 = [(MAIndexCache *)self->_columnIndexCache hash];
  return v4 ^ v5 ^ [(MAFloatMatrix *)self->_matrix hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = v5;
      name = self->_name;
      if (name)
      {
        v8 = [(MADataFrame *)v5 name];
        v9 = [(NSString *)name isEqual:v8];

        if (!v9)
        {
          goto LABEL_12;
        }
      }

      rowIndexCache = self->_rowIndexCache;
      if (rowIndexCache)
      {
        v11 = [(MADataFrame *)v6 rowIndexCache];
        v12 = [(MAIndexCache *)rowIndexCache isEqual:v11];

        if (!v12)
        {
          goto LABEL_12;
        }
      }

      columnIndexCache = self->_columnIndexCache;
      if (columnIndexCache && ([(MADataFrame *)v6 columnIndexCache], v14 = objc_claimAutoreleasedReturnValue(), v15 = [(MAIndexCache *)columnIndexCache isEqual:v14], v14, !v15))
      {
LABEL_12:
        v18 = 0;
      }

      else
      {
        matrix = self->_matrix;
        v17 = [(MADataFrame *)v6 matrix];
        v18 = [(MAFloatMatrix *)matrix isEqual:v17];
      }
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

- (id)csvString
{
  v24 = *MEMORY[0x277D85DE8];
  rowIndexCache = self->_rowIndexCache;
  columnIndexCache = self->_columnIndexCache;
  v5 = [MEMORY[0x277CCAB68] string];
  v6 = v5;
  if (columnIndexCache)
  {
    if (rowIndexCache)
    {
      [v5 appendString:@"Index"];
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = [(MAIndexCache *)self->_columnIndexCache labels];
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [v6 appendFormat:@", %@", *(*(&v19 + 1) + 8 * i)];
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    [v6 appendString:@"\n"];
  }

  if ([(MAFloatMatrix *)self->_matrix rows]>= 1)
  {
    v12 = 0;
    do
    {
      if (rowIndexCache)
      {
        v13 = [(MAIndexCache *)self->_rowIndexCache labels];
        v14 = [v13 objectAtIndexedSubscript:v12];
        [v6 appendFormat:@"%@", v14];
      }

      if ([(MAFloatMatrix *)self->_matrix columns]>= 1)
      {
        v15 = 0;
        do
        {
          [(MAFloatMatrix *)self->_matrix floatAtRow:v12 column:v15];
          [v6 appendFormat:@", %f", v16];
          ++v15;
        }

        while (v15 < [(MAFloatMatrix *)self->_matrix columns]);
      }

      [v6 appendString:@"\n"];
      ++v12;
    }

    while (v12 < [(MAFloatMatrix *)self->_matrix rows]);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)dataFrameByAppendingColumnsOfDataFrame:(id)a3 withName:(id)a4
{
  v6 = a3;
  v7 = a4;
  rowIndexCache = self->_rowIndexCache;
  if (rowIndexCache)
  {
LABEL_4:
    v10 = [v6 rowIndexCache];
    v11 = [(MAIndexCache *)rowIndexCache isEqual:v10];

    if (!v11)
    {
      goto LABEL_9;
    }

    goto LABEL_5;
  }

  v9 = [v6 rowIndexCache];

  if (v9)
  {
    rowIndexCache = self->_rowIndexCache;
    goto LABEL_4;
  }

LABEL_5:
  v12 = self->_columnIndexCache == 0;
  v13 = [v6 rowIndexCache];
  v14 = v13 != 0;

  if (v12 != v14)
  {
    v15 = [(MAFloatMatrix *)self->_matrix rows];
    v16 = [v6 matrix];
    v17 = [v16 rows];

    if (v15 == v17)
    {
      matrix = self->_matrix;
      v19 = [v6 matrix];
      v20 = [(MAFloatMatrix *)matrix matrixByAppendingColumnsOfMatrix:v19];

      v21 = [(MAIndexCache *)self->_columnIndexCache labels];
      v22 = [v6 columnLabels];
      v23 = [v21 arrayByAddingObjectsFromArray:v22];

      if (v23)
      {
        v24 = [[MAIndexCache alloc] initWithLabels:v23];
      }

      else
      {
        v24 = 0;
      }

      v25 = [[MADataFrame alloc] initWithName:v7 rowIndexCache:self->_rowIndexCache columnIndexCache:v24 matrix:v20];

      goto LABEL_10;
    }
  }

LABEL_9:
  v25 = 0;
LABEL_10:

  return v25;
}

- (id)numberAtRow:(id)a3 column:(id)a4
{
  v6 = a4;
  v7 = [(MADataFrame *)self indexOfRowWithLabel:a3];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL || (v8 = v7, v9 = [(MADataFrame *)self indexOfColumnWithLabel:v6], v9 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v10 = 0;
  }

  else
  {
    v11 = MEMORY[0x277CCABB0];
    [(MAFloatMatrix *)self->_matrix floatAtRow:v8 column:v9];
    v10 = [v11 numberWithFloat:?];
  }

  return v10;
}

- (int64_t)indexOfColumnWithLabel:(id)a3
{
  columnIndexCache = self->_columnIndexCache;
  if (columnIndexCache)
  {
    return [(MAIndexCache *)columnIndexCache indexOfLabel:a3];
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (int64_t)indexOfRowWithLabel:(id)a3
{
  rowIndexCache = self->_rowIndexCache;
  if (rowIndexCache)
  {
    return [(MAIndexCache *)rowIndexCache indexOfLabel:a3];
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (MADataFrame)initWithName:(id)a3 rowLabels:(id)a4 columnLabels:(id)a5 matrix:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v11)
  {
    v14 = 0;
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = 0;
    goto LABEL_6;
  }

  v14 = [[MAIndexCache alloc] initWithLabels:v11];
  if (!v12)
  {
    goto LABEL_5;
  }

LABEL_3:
  v15 = [[MAIndexCache alloc] initWithLabels:v12];
LABEL_6:
  v16 = [(MADataFrame *)self initWithName:v10 rowIndexCache:v14 columnIndexCache:v15 matrix:v13];

  return v16;
}

- (MADataFrame)initWithName:(id)a3 rowIndexCache:(id)a4 columnIndexCache:(id)a5 matrix:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v11)
  {
    v14 = [v11 labels];
    v15 = [v14 count];
    v16 = [v13 rows];

    if (v15 != v16)
    {
      goto LABEL_8;
    }
  }

  if (v12 && ([v12 labels], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "count"), v19 = objc_msgSend(v13, "columns"), v17, v18 != v19))
  {
LABEL_8:
    v25 = 0;
  }

  else
  {
    v27.receiver = self;
    v27.super_class = MADataFrame;
    v20 = [(MADataFrame *)&v27 init];
    if (v20)
    {
      v21 = [v10 copy];
      name = v20->_name;
      v20->_name = v21;

      objc_storeStrong(&v20->_rowIndexCache, a4);
      objc_storeStrong(&v20->_columnIndexCache, a5);
      v23 = [v13 copy];
      matrix = v20->_matrix;
      v20->_matrix = v23;
    }

    self = v20;
    v25 = self;
  }

  return v25;
}

@end