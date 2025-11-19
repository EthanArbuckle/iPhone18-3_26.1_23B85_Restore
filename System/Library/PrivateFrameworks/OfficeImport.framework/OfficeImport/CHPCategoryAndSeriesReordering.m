@interface CHPCategoryAndSeriesReordering
- (BOOL)isObjectSupported:(id)a3;
- (BOOL)isObjectSupportedForSeriesReorderingPreprocessor:(id)a3 isCategoryOrderReversed:(BOOL)a4;
- (int64_t)reorderDataValues:(id)a3 dataPointCount:(unint64_t)a4;
- (void)applyCategoryReorderingPreprocessor:(id)a3;
- (void)applySeriesReorderingPreprocessor:(id)a3;
- (void)reorderCategoryAndSeries:(id)a3 sheet:(id)a4 clearAxisReversedFlag:(BOOL)a5;
- (void)reorderData:(id)a3 dataPointCount:(unint64_t)a4 byRow:(BOOL)a5;
- (void)reorderDataFormula:(id)a3 dataPointCount:(unint64_t)a4 byRow:(BOOL)a5;
- (void)reorderSeriesCategory:(id)a3 dataPointCount:(unint64_t)a4 byRow:(BOOL)a5;
- (void)reorderValueProperties:(id)a3 dataPointCount:(unint64_t)a4;
@end

@implementation CHPCategoryAndSeriesReordering

- (BOOL)isObjectSupported:(id)a3
{
  v3 = a3;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = v3;
    v5 = [v4 seriesCollection];
    v6 = v5;
    if (v5 && [v5 count])
    {
      objc_opt_class();
      v7 = objc_opt_isKindOfClass() ^ 1;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (void)reorderCategoryAndSeries:(id)a3 sheet:(id)a4 clearAxisReversedFlag:(BOOL)a5
{
  v5 = a5;
  v10 = a3;
  v7 = [v10 chart];
  v8 = [v7 plotArea];
  v9 = [v8 isCategoryAxesReversed:v5];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!v9)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v9 == [v10 isColumn])
  {
LABEL_5:
    [(CHPCategoryAndSeriesReordering *)self applyCategoryReorderingPreprocessor:v10];
  }

LABEL_6:
  if ([(CHPCategoryAndSeriesReordering *)self isObjectSupportedForSeriesReorderingPreprocessor:v10 isCategoryOrderReversed:v9])
  {
    [(CHPCategoryAndSeriesReordering *)self applySeriesReorderingPreprocessor:v10];
  }
}

- (BOOL)isObjectSupportedForSeriesReorderingPreprocessor:(id)a3 isCategoryOrderReversed:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [v5 seriesCollection];
  v7 = [v6 count];

  if (v7 < 2)
  {
    goto LABEL_2;
  }

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_23;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && ![v5 isColumn] || (objc_msgSend(objc_opt_class(), "is3DType"))
      {
        goto LABEL_2;
      }

LABEL_19:
      LOBYTE(v8) = 1;
      goto LABEL_24;
    }

    if ([v5 isColumn])
    {
LABEL_23:
      v8 = [v5 isGroupingStacked] ^ 1;
      goto LABEL_24;
    }

LABEL_2:
    LOBYTE(v8) = 0;
    goto LABEL_24;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = objc_opt_class();
      if (v10 != objc_opt_class())
      {
        goto LABEL_23;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_19;
    }

    goto LABEL_2;
  }

  v9 = v5;
  if ([v9 isColumn])
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v8 = [v9 isGroupingStacked] ^ 1;
  }

LABEL_24:
  return v8;
}

- (void)applySeriesReorderingPreprocessor:(id)a3
{
  v19 = a3;
  v3 = [v19 seriesCollection];
  v4 = [v19 chart];
  v5 = [CHDSeriesCollection seriesCollectionWithChart:v4];

  v6 = [v3 count];
  v7 = v6 - 1;
  if (v6)
  {
    v8 = v6 - 1;
    do
    {
      v9 = [v3 objectAtIndex:v8];
      [v9 setOrder:{v7 - objc_msgSend(v9, "order")}];
      [v5 addObject:v9];
      [v3 removeObjectAtIndex:v8];

      --v8;
    }

    while (v8 != -1);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = [v5 objectAtIndex:0];
      v11 = [v10 categoryData];
      if (v11)
      {
        v12 = [v10 categoryData];
        v13 = [v12 formula];

        if (!v13)
        {
          v14 = [v5 objectAtIndex:v7];
          v15 = [v14 categoryData];
          if (v15)
          {
            v16 = [v14 categoryData];
            v17 = [v16 formula];

            if (v17)
            {
              v18 = [v14 categoryData];
              [v10 setCategoryData:v18];

              [v14 setCategoryData:0];
            }
          }
        }
      }
    }
  }

  [v19 setSeriesCollection:v5];
}

- (void)applyCategoryReorderingPreprocessor:(id)a3
{
  v17 = a3;
  v4 = [v17 seriesCollection];
  v5 = 0;
  v6 = [v4 count];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v8 = [v4 objectAtIndex:i];
      v9 = [v8 valueData];
      v10 = [v9 countOfCellsBeingReferenced];

      if (v10 > v5)
      {
        v5 = v10;
      }
    }
  }

  v11 = [v17 chart];
  v12 = [v11 direction];

  if (v6)
  {
    v13 = 0;
    v14 = 1;
    do
    {
      v15 = [v4 objectAtIndex:v13];
      [(CHPCategoryAndSeriesReordering *)self reorderSeriesCategory:v15 dataPointCount:v5 byRow:v12 != 2];

      v13 = v14;
    }

    while (v6 > v14++);
  }
}

- (void)reorderSeriesCategory:(id)a3 dataPointCount:(unint64_t)a4 byRow:(BOOL)a5
{
  v5 = a5;
  v10 = a3;
  if (a4 >= 2)
  {
    v8 = [v10 valueData];
    [(CHPCategoryAndSeriesReordering *)self reorderData:v8 dataPointCount:a4 byRow:v5];

    v9 = [v10 categoryData];
    [(CHPCategoryAndSeriesReordering *)self reorderData:v9 dataPointCount:a4 byRow:v5];

    [(CHPCategoryAndSeriesReordering *)self reorderValueProperties:v10 dataPointCount:a4];
  }
}

- (void)reorderValueProperties:(id)a3 dataPointCount:(unint64_t)a4
{
  v10 = a3;
  v5 = [v10 dataValuePropertiesCollection];
  v6 = +[(EDCollection *)EDKeyedCollection];
  v7 = [v5 count];
  if (v7)
  {
    v8 = v7 - 1;
    do
    {
      v9 = [v5 objectAtIndex:v8];
      [v9 setDataValueIndex:{~objc_msgSend(v9, "dataValueIndex") + a4}];
      [v6 addObject:v9];
      [v5 removeObjectAtIndex:v8];

      --v8;
    }

    while (v8 != -1);
  }

  [v10 setDataValuePropertiesCollection:v6];
}

- (void)reorderData:(id)a3 dataPointCount:(unint64_t)a4 byRow:(BOOL)a5
{
  v5 = a5;
  v11 = a3;
  if (([v11 isEmpty] & 1) == 0)
  {
    v8 = [v11 dataValueIndexCount];
    v9 = [v11 dataValues];
    v10 = [(CHPCategoryAndSeriesReordering *)self reorderDataValues:v9 dataPointCount:a4];

    if (v8 <= v10)
    {
      [v11 setDataValueIndexCount:v10 + 1];
    }

    [(CHPCategoryAndSeriesReordering *)self reorderDataFormula:v11 dataPointCount:a4 byRow:v5];
  }
}

- (int64_t)reorderDataValues:(id)a3 dataPointCount:(unint64_t)a4
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 count];
    if (v7)
    {
      v8 = 0;
      v9 = -1;
      do
      {
        v10 = [v6 dataPointAtIndex:v8];
        if (v10)
        {
          v11 = ~*v10 + a4;
          if (v11 > v9)
          {
            v9 = ~*v10 + a4;
          }

          *v10 = v11;
        }

        ++v8;
      }

      while (v7 != v8);
    }

    else
    {
      v9 = -1;
    }

    [v6 finishReading];
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

- (void)reorderDataFormula:(id)a3 dataPointCount:(unint64_t)a4 byRow:(BOOL)a5
{
  v5 = a5;
  v13 = a3;
  v8 = [v13 formula];
  v9 = [v8 references];
  v10 = [v9 reverseReferencesByRow:v5];

  if (v10)
  {
    while ([v10 count] > a4)
    {
      [v10 removeObjectAtIndex:0];
    }

    v11 = [CHDFormula formulaWithReferences:v10];
    WeakRetained = objc_loadWeakRetained(&self->super.mWorkbook);
    [v11 setWorkbook:WeakRetained];

    [v11 prepareTokens];
    [v11 setCleaned:1];
    [v13 setFormula:v11 chart:0];
  }
}

@end