@interface EPMergedRegionScanner
- (BOOL)isObjectSupported:(id)supported;
- (BOOL)processMergedRegion:(id)region inWorksheet:(id)worksheet;
- (void)applyProcessorToObject:(id)object sheet:(id)sheet;
@end

@implementation EPMergedRegionScanner

- (BOOL)isObjectSupported:(id)supported
{
  supportedCopy = supported;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)applyProcessorToObject:(id)object sheet:(id)sheet
{
  objectCopy = object;
  mergedCells = [objectCopy mergedCells];
  v6 = [mergedCells count];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v8 = [mergedCells objectAtIndex:i];
      if (v8)
      {
        [(EPMergedRegionScanner *)self processMergedRegion:v8 inWorksheet:objectCopy];
      }
    }
  }
}

- (BOOL)processMergedRegion:(id)region inWorksheet:(id)worksheet
{
  regionCopy = region;
  worksheetCopy = worksheet;
  v27 = worksheetCopy;
  v28 = regionCopy;
  firstRow = [regionCopy firstRow];
  lastRow = [regionCopy lastRow];
  firstColumn = [regionCopy firstColumn];
  lastColumn = [regionCopy lastColumn];
  if (firstRow >= lastRow)
  {
    v13 = 0;
  }

  else
  {
    rowBlocks = [worksheetCopy rowBlocks];
    v11 = [rowBlocks expectedIndexOfRowBlockForRowNumber:firstRow];
    v12 = [rowBlocks expectedIndexOfRowBlockForRowNumber:lastRow];
    if (v11 <= v12)
    {
      v13 = 0;
      do
      {
        v14 = [rowBlocks rowBlockAtIndex:v11];
        v15 = v14;
        if (v14)
        {
          rowCount = [v14 rowCount];
          if (rowCount)
          {
            v17 = 0;
            do
            {
              v18 = [v15 rowInfoAtIndex:v17];
              if (v18)
              {
                v19 = *(v18 + 4);
                if (v19 >= firstRow)
                {
                  if (v19 > lastRow)
                  {
                    break;
                  }

                  if ((*(v18 + 23) & 2) != 0)
                  {
                    *(v18 + 23) &= ~2u;
                    v13 = 1;
                  }
                }
              }

              v17 = (v17 + 1);
            }

            while (rowCount != v17);
          }
        }

        ++v11;
      }

      while (v11 <= v12);
    }

    else
    {
      v13 = 0;
    }

    [rowBlocks unlock];

    worksheetCopy = v27;
  }

  if (firstColumn >= lastColumn)
  {
    goto LABEL_29;
  }

  columnInfos = [worksheetCopy columnInfos];
  v21 = [columnInfos count];
  if (!v21)
  {
    goto LABEL_28;
  }

  v22 = 0;
  while (1)
  {
    v23 = [columnInfos objectAtIndex:v22];
    range = [v23 range];
    v25 = range;
    if (range)
    {
      if (firstColumn <= [range lastColumn])
      {
        break;
      }
    }

LABEL_25:

    if (v21 == ++v22)
    {
      goto LABEL_28;
    }
  }

  if (lastColumn >= [v25 firstColumn])
  {
    if ([v23 isHidden])
    {
      [v23 setHidden:0];
      v13 = 1;
    }

    goto LABEL_25;
  }

LABEL_28:
  worksheetCopy = v27;
LABEL_29:

  return v13 & 1;
}

@end