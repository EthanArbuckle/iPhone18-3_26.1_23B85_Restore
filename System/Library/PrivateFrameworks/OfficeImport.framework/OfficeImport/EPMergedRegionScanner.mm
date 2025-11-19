@interface EPMergedRegionScanner
- (BOOL)isObjectSupported:(id)a3;
- (BOOL)processMergedRegion:(id)a3 inWorksheet:(id)a4;
- (void)applyProcessorToObject:(id)a3 sheet:(id)a4;
@end

@implementation EPMergedRegionScanner

- (BOOL)isObjectSupported:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)applyProcessorToObject:(id)a3 sheet:(id)a4
{
  v9 = a3;
  v5 = [v9 mergedCells];
  v6 = [v5 count];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v8 = [v5 objectAtIndex:i];
      if (v8)
      {
        [(EPMergedRegionScanner *)self processMergedRegion:v8 inWorksheet:v9];
      }
    }
  }
}

- (BOOL)processMergedRegion:(id)a3 inWorksheet:(id)a4
{
  v5 = a3;
  v6 = a4;
  v27 = v6;
  v28 = v5;
  v7 = [v5 firstRow];
  v8 = [v5 lastRow];
  v9 = [v5 firstColumn];
  v29 = [v5 lastColumn];
  if (v7 >= v8)
  {
    v13 = 0;
  }

  else
  {
    v10 = [v6 rowBlocks];
    v11 = [v10 expectedIndexOfRowBlockForRowNumber:v7];
    v12 = [v10 expectedIndexOfRowBlockForRowNumber:v8];
    if (v11 <= v12)
    {
      v13 = 0;
      do
      {
        v14 = [v10 rowBlockAtIndex:v11];
        v15 = v14;
        if (v14)
        {
          v16 = [v14 rowCount];
          if (v16)
          {
            v17 = 0;
            do
            {
              v18 = [v15 rowInfoAtIndex:v17];
              if (v18)
              {
                v19 = *(v18 + 4);
                if (v19 >= v7)
                {
                  if (v19 > v8)
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

            while (v16 != v17);
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

    [v10 unlock];

    v6 = v27;
  }

  if (v9 >= v29)
  {
    goto LABEL_29;
  }

  v20 = [v6 columnInfos];
  v21 = [v20 count];
  if (!v21)
  {
    goto LABEL_28;
  }

  v22 = 0;
  while (1)
  {
    v23 = [v20 objectAtIndex:v22];
    v24 = [v23 range];
    v25 = v24;
    if (v24)
    {
      if (v9 <= [v24 lastColumn])
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

  if (v29 >= [v25 firstColumn])
  {
    if ([v23 isHidden])
    {
      [v23 setHidden:0];
      v13 = 1;
    }

    goto LABEL_25;
  }

LABEL_28:
  v6 = v27;
LABEL_29:

  return v13 & 1;
}

@end