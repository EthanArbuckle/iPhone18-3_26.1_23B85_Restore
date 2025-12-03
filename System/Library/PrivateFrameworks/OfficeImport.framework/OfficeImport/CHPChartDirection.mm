@interface CHPChartDirection
- (BOOL)isObjectSupported:(id)supported;
- (void)applyProcessorToObject:(id)object sheet:(id)sheet;
@end

@implementation CHPChartDirection

- (BOOL)isObjectSupported:(id)supported
{
  supportedCopy = supported;
  v6 = 0;
  if (supportedCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      chart = [supportedCopy chart];
      direction = [chart direction];

      if (!direction)
      {
        v6 = 1;
      }
    }
  }

  return v6;
}

- (void)applyProcessorToObject:(id)object sheet:(id)sheet
{
  objectCopy = object;
  seriesCollection = [objectCopy seriesCollection];
  chart = [objectCopy chart];
  if ([seriesCollection count])
  {
    v6 = [seriesCollection objectAtIndex:0];
    valueData = [v6 valueData];
    v8 = valueData;
    if (!valueData)
    {
      v14 = 0;
LABEL_31:
      [chart setDirection:v14];

      goto LABEL_32;
    }

    formula = [valueData formula];
    references = [formula references];

    if (!references || ![references count])
    {
      v14 = 0;
LABEL_30:

      goto LABEL_31;
    }

    v11 = [references objectAtIndex:0];
    firstRow = [v11 firstRow];
    if (firstRow < [v11 lastRow] && (v13 = objc_msgSend(v11, "firstColumn"), v13 == objc_msgSend(v11, "lastColumn")))
    {
      v14 = 2;
    }

    else
    {
      firstRow2 = [v11 firstRow];
      if (firstRow2 == [v11 lastRow])
      {
        firstColumn = [v11 firstColumn];
        if (firstColumn == [v11 lastColumn])
        {
          if ([references count] < 2)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v14 = 0;
                goto LABEL_29;
              }
            }

            categoryData = [v6 categoryData];
            formula2 = [categoryData formula];
            references2 = [formula2 references];

            if (references2 && [references2 count])
            {
              v21 = [references2 objectAtIndex:0];
              firstRow3 = [v11 firstRow];
              if (firstRow3 == [v21 firstRow])
              {
                v14 = 2;
              }

              else
              {
                firstColumn2 = [v11 firstColumn];
                v14 = firstColumn2 == [v21 firstColumn];
              }
            }

            else
            {
              v14 = 0;
            }
          }

          else
          {
            categoryData = [references objectAtIndex:1];
            firstRow4 = [categoryData firstRow];
            if (firstRow4 >= [v11 lastRow])
            {
              v14 = 1;
            }

            else
            {
              v14 = 2;
            }
          }

          goto LABEL_29;
        }
      }

      v14 = 1;
    }

LABEL_29:

    goto LABEL_30;
  }

LABEL_32:
}

@end