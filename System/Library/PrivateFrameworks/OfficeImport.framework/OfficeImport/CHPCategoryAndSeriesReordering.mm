@interface CHPCategoryAndSeriesReordering
- (BOOL)isObjectSupported:(id)supported;
- (BOOL)isObjectSupportedForSeriesReorderingPreprocessor:(id)preprocessor isCategoryOrderReversed:(BOOL)reversed;
- (int64_t)reorderDataValues:(id)values dataPointCount:(unint64_t)count;
- (void)applyCategoryReorderingPreprocessor:(id)preprocessor;
- (void)applySeriesReorderingPreprocessor:(id)preprocessor;
- (void)reorderCategoryAndSeries:(id)series sheet:(id)sheet clearAxisReversedFlag:(BOOL)flag;
- (void)reorderData:(id)data dataPointCount:(unint64_t)count byRow:(BOOL)row;
- (void)reorderDataFormula:(id)formula dataPointCount:(unint64_t)count byRow:(BOOL)row;
- (void)reorderSeriesCategory:(id)category dataPointCount:(unint64_t)count byRow:(BOOL)row;
- (void)reorderValueProperties:(id)properties dataPointCount:(unint64_t)count;
@end

@implementation CHPCategoryAndSeriesReordering

- (BOOL)isObjectSupported:(id)supported
{
  supportedCopy = supported;
  if (supportedCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = supportedCopy;
    seriesCollection = [v4 seriesCollection];
    v6 = seriesCollection;
    if (seriesCollection && [seriesCollection count])
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

- (void)reorderCategoryAndSeries:(id)series sheet:(id)sheet clearAxisReversedFlag:(BOOL)flag
{
  flagCopy = flag;
  seriesCopy = series;
  chart = [seriesCopy chart];
  plotArea = [chart plotArea];
  v9 = [plotArea isCategoryAxesReversed:flagCopy];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!v9)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v9 == [seriesCopy isColumn])
  {
LABEL_5:
    [(CHPCategoryAndSeriesReordering *)self applyCategoryReorderingPreprocessor:seriesCopy];
  }

LABEL_6:
  if ([(CHPCategoryAndSeriesReordering *)self isObjectSupportedForSeriesReorderingPreprocessor:seriesCopy isCategoryOrderReversed:v9])
  {
    [(CHPCategoryAndSeriesReordering *)self applySeriesReorderingPreprocessor:seriesCopy];
  }
}

- (BOOL)isObjectSupportedForSeriesReorderingPreprocessor:(id)preprocessor isCategoryOrderReversed:(BOOL)reversed
{
  reversedCopy = reversed;
  preprocessorCopy = preprocessor;
  seriesCollection = [preprocessorCopy seriesCollection];
  v7 = [seriesCollection count];

  if (v7 < 2)
  {
    goto LABEL_2;
  }

  if (reversedCopy)
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
      if (objc_opt_isKindOfClass() & 1) != 0 && ![preprocessorCopy isColumn] || (objc_msgSend(objc_opt_class(), "is3DType"))
      {
        goto LABEL_2;
      }

LABEL_19:
      LOBYTE(v8) = 1;
      goto LABEL_24;
    }

    if ([preprocessorCopy isColumn])
    {
LABEL_23:
      v8 = [preprocessorCopy isGroupingStacked] ^ 1;
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

  v9 = preprocessorCopy;
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

- (void)applySeriesReorderingPreprocessor:(id)preprocessor
{
  preprocessorCopy = preprocessor;
  seriesCollection = [preprocessorCopy seriesCollection];
  chart = [preprocessorCopy chart];
  v5 = [CHDSeriesCollection seriesCollectionWithChart:chart];

  v6 = [seriesCollection count];
  v7 = v6 - 1;
  if (v6)
  {
    v8 = v6 - 1;
    do
    {
      v9 = [seriesCollection objectAtIndex:v8];
      [v9 setOrder:{v7 - objc_msgSend(v9, "order")}];
      [v5 addObject:v9];
      [seriesCollection removeObjectAtIndex:v8];

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
      categoryData = [v10 categoryData];
      if (categoryData)
      {
        categoryData2 = [v10 categoryData];
        formula = [categoryData2 formula];

        if (!formula)
        {
          v14 = [v5 objectAtIndex:v7];
          categoryData3 = [v14 categoryData];
          if (categoryData3)
          {
            categoryData4 = [v14 categoryData];
            formula2 = [categoryData4 formula];

            if (formula2)
            {
              categoryData5 = [v14 categoryData];
              [v10 setCategoryData:categoryData5];

              [v14 setCategoryData:0];
            }
          }
        }
      }
    }
  }

  [preprocessorCopy setSeriesCollection:v5];
}

- (void)applyCategoryReorderingPreprocessor:(id)preprocessor
{
  preprocessorCopy = preprocessor;
  seriesCollection = [preprocessorCopy seriesCollection];
  v5 = 0;
  v6 = [seriesCollection count];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v8 = [seriesCollection objectAtIndex:i];
      valueData = [v8 valueData];
      countOfCellsBeingReferenced = [valueData countOfCellsBeingReferenced];

      if (countOfCellsBeingReferenced > v5)
      {
        v5 = countOfCellsBeingReferenced;
      }
    }
  }

  chart = [preprocessorCopy chart];
  direction = [chart direction];

  if (v6)
  {
    v13 = 0;
    v14 = 1;
    do
    {
      v15 = [seriesCollection objectAtIndex:v13];
      [(CHPCategoryAndSeriesReordering *)self reorderSeriesCategory:v15 dataPointCount:v5 byRow:direction != 2];

      v13 = v14;
    }

    while (v6 > v14++);
  }
}

- (void)reorderSeriesCategory:(id)category dataPointCount:(unint64_t)count byRow:(BOOL)row
{
  rowCopy = row;
  categoryCopy = category;
  if (count >= 2)
  {
    valueData = [categoryCopy valueData];
    [(CHPCategoryAndSeriesReordering *)self reorderData:valueData dataPointCount:count byRow:rowCopy];

    categoryData = [categoryCopy categoryData];
    [(CHPCategoryAndSeriesReordering *)self reorderData:categoryData dataPointCount:count byRow:rowCopy];

    [(CHPCategoryAndSeriesReordering *)self reorderValueProperties:categoryCopy dataPointCount:count];
  }
}

- (void)reorderValueProperties:(id)properties dataPointCount:(unint64_t)count
{
  propertiesCopy = properties;
  dataValuePropertiesCollection = [propertiesCopy dataValuePropertiesCollection];
  v6 = +[(EDCollection *)EDKeyedCollection];
  v7 = [dataValuePropertiesCollection count];
  if (v7)
  {
    v8 = v7 - 1;
    do
    {
      v9 = [dataValuePropertiesCollection objectAtIndex:v8];
      [v9 setDataValueIndex:{~objc_msgSend(v9, "dataValueIndex") + count}];
      [v6 addObject:v9];
      [dataValuePropertiesCollection removeObjectAtIndex:v8];

      --v8;
    }

    while (v8 != -1);
  }

  [propertiesCopy setDataValuePropertiesCollection:v6];
}

- (void)reorderData:(id)data dataPointCount:(unint64_t)count byRow:(BOOL)row
{
  rowCopy = row;
  dataCopy = data;
  if (([dataCopy isEmpty] & 1) == 0)
  {
    dataValueIndexCount = [dataCopy dataValueIndexCount];
    dataValues = [dataCopy dataValues];
    v10 = [(CHPCategoryAndSeriesReordering *)self reorderDataValues:dataValues dataPointCount:count];

    if (dataValueIndexCount <= v10)
    {
      [dataCopy setDataValueIndexCount:v10 + 1];
    }

    [(CHPCategoryAndSeriesReordering *)self reorderDataFormula:dataCopy dataPointCount:count byRow:rowCopy];
  }
}

- (int64_t)reorderDataValues:(id)values dataPointCount:(unint64_t)count
{
  valuesCopy = values;
  v6 = valuesCopy;
  if (valuesCopy)
  {
    v7 = [valuesCopy count];
    if (v7)
    {
      v8 = 0;
      v9 = -1;
      do
      {
        v10 = [v6 dataPointAtIndex:v8];
        if (v10)
        {
          v11 = ~*v10 + count;
          if (v11 > v9)
          {
            v9 = ~*v10 + count;
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

- (void)reorderDataFormula:(id)formula dataPointCount:(unint64_t)count byRow:(BOOL)row
{
  rowCopy = row;
  formulaCopy = formula;
  formula = [formulaCopy formula];
  references = [formula references];
  v10 = [references reverseReferencesByRow:rowCopy];

  if (v10)
  {
    while ([v10 count] > count)
    {
      [v10 removeObjectAtIndex:0];
    }

    v11 = [CHDFormula formulaWithReferences:v10];
    WeakRetained = objc_loadWeakRetained(&self->super.mWorkbook);
    [v11 setWorkbook:WeakRetained];

    [v11 prepareTokens];
    [v11 setCleaned:1];
    [formulaCopy setFormula:v11 chart:0];
  }
}

@end