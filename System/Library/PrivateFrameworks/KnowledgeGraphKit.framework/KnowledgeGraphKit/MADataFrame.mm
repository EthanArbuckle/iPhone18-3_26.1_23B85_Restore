@interface MADataFrame
- (BOOL)isEqual:(id)equal;
- (MADataFrame)initWithName:(id)name rowIndexCache:(id)cache columnIndexCache:(id)indexCache matrix:(id)matrix;
- (MADataFrame)initWithName:(id)name rowLabels:(id)labels columnLabels:(id)columnLabels matrix:(id)matrix;
- (id)csvString;
- (id)dataFrameByAppendingColumnsOfDataFrame:(id)frame withName:(id)name;
- (id)numberAtRow:(id)row column:(id)column;
- (int64_t)indexOfColumnWithLabel:(id)label;
- (int64_t)indexOfRowWithLabel:(id)label;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = v5;
      name = self->_name;
      if (name)
      {
        name = [(MADataFrame *)v5 name];
        v9 = [(NSString *)name isEqual:name];

        if (!v9)
        {
          goto LABEL_12;
        }
      }

      rowIndexCache = self->_rowIndexCache;
      if (rowIndexCache)
      {
        rowIndexCache = [(MADataFrame *)v6 rowIndexCache];
        v12 = [(MAIndexCache *)rowIndexCache isEqual:rowIndexCache];

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
        matrix = [(MADataFrame *)v6 matrix];
        v18 = [(MAFloatMatrix *)matrix isEqual:matrix];
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
  string = [MEMORY[0x277CCAB68] string];
  v6 = string;
  if (columnIndexCache)
  {
    if (rowIndexCache)
    {
      [string appendString:@"Index"];
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    labels = [(MAIndexCache *)self->_columnIndexCache labels];
    v8 = [labels countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(labels);
          }

          [v6 appendFormat:@", %@", *(*(&v19 + 1) + 8 * i)];
        }

        v9 = [labels countByEnumeratingWithState:&v19 objects:v23 count:16];
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
        labels2 = [(MAIndexCache *)self->_rowIndexCache labels];
        v14 = [labels2 objectAtIndexedSubscript:v12];
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

- (id)dataFrameByAppendingColumnsOfDataFrame:(id)frame withName:(id)name
{
  frameCopy = frame;
  nameCopy = name;
  rowIndexCache = self->_rowIndexCache;
  if (rowIndexCache)
  {
LABEL_4:
    rowIndexCache = [frameCopy rowIndexCache];
    v11 = [(MAIndexCache *)rowIndexCache isEqual:rowIndexCache];

    if (!v11)
    {
      goto LABEL_9;
    }

    goto LABEL_5;
  }

  rowIndexCache2 = [frameCopy rowIndexCache];

  if (rowIndexCache2)
  {
    rowIndexCache = self->_rowIndexCache;
    goto LABEL_4;
  }

LABEL_5:
  v12 = self->_columnIndexCache == 0;
  rowIndexCache3 = [frameCopy rowIndexCache];
  v14 = rowIndexCache3 != 0;

  if (v12 != v14)
  {
    rows = [(MAFloatMatrix *)self->_matrix rows];
    matrix = [frameCopy matrix];
    rows2 = [matrix rows];

    if (rows == rows2)
    {
      matrix = self->_matrix;
      matrix2 = [frameCopy matrix];
      v20 = [(MAFloatMatrix *)matrix matrixByAppendingColumnsOfMatrix:matrix2];

      labels = [(MAIndexCache *)self->_columnIndexCache labels];
      columnLabels = [frameCopy columnLabels];
      v23 = [labels arrayByAddingObjectsFromArray:columnLabels];

      if (v23)
      {
        v24 = [[MAIndexCache alloc] initWithLabels:v23];
      }

      else
      {
        v24 = 0;
      }

      v25 = [[MADataFrame alloc] initWithName:nameCopy rowIndexCache:self->_rowIndexCache columnIndexCache:v24 matrix:v20];

      goto LABEL_10;
    }
  }

LABEL_9:
  v25 = 0;
LABEL_10:

  return v25;
}

- (id)numberAtRow:(id)row column:(id)column
{
  columnCopy = column;
  v7 = [(MADataFrame *)self indexOfRowWithLabel:row];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL || (v8 = v7, v9 = [(MADataFrame *)self indexOfColumnWithLabel:columnCopy], v9 == 0x7FFFFFFFFFFFFFFFLL))
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

- (int64_t)indexOfColumnWithLabel:(id)label
{
  columnIndexCache = self->_columnIndexCache;
  if (columnIndexCache)
  {
    return [(MAIndexCache *)columnIndexCache indexOfLabel:label];
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (int64_t)indexOfRowWithLabel:(id)label
{
  rowIndexCache = self->_rowIndexCache;
  if (rowIndexCache)
  {
    return [(MAIndexCache *)rowIndexCache indexOfLabel:label];
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (MADataFrame)initWithName:(id)name rowLabels:(id)labels columnLabels:(id)columnLabels matrix:(id)matrix
{
  nameCopy = name;
  labelsCopy = labels;
  columnLabelsCopy = columnLabels;
  matrixCopy = matrix;
  if (!labelsCopy)
  {
    v14 = 0;
    if (columnLabelsCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = 0;
    goto LABEL_6;
  }

  v14 = [[MAIndexCache alloc] initWithLabels:labelsCopy];
  if (!columnLabelsCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v15 = [[MAIndexCache alloc] initWithLabels:columnLabelsCopy];
LABEL_6:
  v16 = [(MADataFrame *)self initWithName:nameCopy rowIndexCache:v14 columnIndexCache:v15 matrix:matrixCopy];

  return v16;
}

- (MADataFrame)initWithName:(id)name rowIndexCache:(id)cache columnIndexCache:(id)indexCache matrix:(id)matrix
{
  nameCopy = name;
  cacheCopy = cache;
  indexCacheCopy = indexCache;
  matrixCopy = matrix;
  if (cacheCopy)
  {
    labels = [cacheCopy labels];
    v15 = [labels count];
    rows = [matrixCopy rows];

    if (v15 != rows)
    {
      goto LABEL_8;
    }
  }

  if (indexCacheCopy && ([indexCacheCopy labels], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "count"), v19 = objc_msgSend(matrixCopy, "columns"), v17, v18 != v19))
  {
LABEL_8:
    selfCopy = 0;
  }

  else
  {
    v27.receiver = self;
    v27.super_class = MADataFrame;
    v20 = [(MADataFrame *)&v27 init];
    if (v20)
    {
      v21 = [nameCopy copy];
      name = v20->_name;
      v20->_name = v21;

      objc_storeStrong(&v20->_rowIndexCache, cache);
      objc_storeStrong(&v20->_columnIndexCache, indexCache);
      v23 = [matrixCopy copy];
      matrix = v20->_matrix;
      v20->_matrix = v23;
    }

    self = v20;
    selfCopy = self;
  }

  return selfCopy;
}

@end