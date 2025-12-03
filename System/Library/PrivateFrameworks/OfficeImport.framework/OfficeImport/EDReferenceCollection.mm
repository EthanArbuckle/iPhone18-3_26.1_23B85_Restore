@interface EDReferenceCollection
+ (id)coalesceCollection;
+ (id)noCoalesceCollection;
- (BOOL)coalesceReferenceAtIndex1:(unint64_t)index1 index2:(unint64_t)index2;
- (EDReferenceCollection)init;
- (id)initWihNoCoalesce;
- (id)referenceToCellWithIndex:(unint64_t)index byRow:(BOOL)row;
- (id)reverseReferencesByRow:(BOOL)row;
- (unint64_t)addObject:(id)object;
- (unint64_t)countOfCellsBeingReferenced;
- (void)coalesce;
- (void)coalesceProgressiveCellReferencesCollection;
@end

@implementation EDReferenceCollection

- (EDReferenceCollection)init
{
  v3.receiver = self;
  v3.super_class = EDReferenceCollection;
  result = [(EDCollection *)&v3 init];
  if (result)
  {
    result->mCoalesce = 1;
  }

  return result;
}

- (void)coalesce
{
  v3 = [(EDCollection *)self count];
  v4 = v3 - 2;
  if (v3 >= 2)
  {
    v5 = v3 - 1;
    v6 = 2;
    if (v4 < 2)
    {
      v6 = v3 - 2;
    }

    v7 = v6 + 1;
    while (![(EDReferenceCollection *)self coalesceReferenceAtIndex1:v4 index2:v5])
    {
      --v4;
      if (!--v7)
      {
        return;
      }
    }

    [(EDReferenceCollection *)self coalesce];
  }
}

- (unint64_t)countOfCellsBeingReferenced
{
  v3 = [(EDCollection *)self count];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = 0;
  for (i = 0; i != v4; ++i)
  {
    v7 = [(EDCollection *)self objectAtIndex:i];
    v8 = v7;
    if (v7)
    {
      v5 += [v7 countOfCellsBeingReferenced];
    }
  }

  return v5;
}

+ (id)noCoalesceCollection
{
  initWihNoCoalesce = [objc_alloc(objc_opt_class()) initWihNoCoalesce];

  return initWihNoCoalesce;
}

- (id)initWihNoCoalesce
{
  v3.receiver = self;
  v3.super_class = EDReferenceCollection;
  result = [(EDCollection *)&v3 init];
  if (result)
  {
    *(result + 16) = 0;
  }

  return result;
}

+ (id)coalesceCollection
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (unint64_t)addObject:(id)object
{
  objectCopy = object;
  v6.receiver = self;
  v6.super_class = EDReferenceCollection;
  [(EDCollection *)&v6 addObject:objectCopy];
  if (self->mCoalesce)
  {
    [(EDReferenceCollection *)self coalesce];
  }

  return -1;
}

- (id)referenceToCellWithIndex:(unint64_t)index byRow:(BOOL)row
{
  rowCopy = row;
  v7 = [(EDCollection *)self count];
  if (v7)
  {
    v8 = v7;
    for (i = 0; v8 != i; ++i)
    {
      v10 = [(EDCollection *)self objectAtIndex:i];
      v11 = v10;
      if (v10)
      {
        countOfCellsBeingReferenced = [v10 countOfCellsBeingReferenced];
        if (index < countOfCellsBeingReferenced)
        {
          if (rowCopy)
          {
            lastColumn = [v11 lastColumn];
            firstColumn = [v11 firstColumn];
            firstRow = [v11 firstRow];
            firstColumn2 = [v11 firstColumn];
            v18 = lastColumn - firstColumn + 1;
            v19 = firstRow + (index / v18);
            v20 = index % v18;
          }

          else
          {
            lastRow = [v11 lastRow];
            firstRow2 = [v11 firstRow];
            firstRow3 = [v11 firstRow];
            firstColumn2 = [v11 firstColumn];
            v24 = lastRow - firstRow2 + 1;
            v20 = index / v24;
            v19 = firstRow3 + (index % v24);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            +[EDSheetReference referenceWithSheetIndex:firstRow:lastRow:firstColumn:lastColumn:](EDSheetReference, "referenceWithSheetIndex:firstRow:lastRow:firstColumn:lastColumn:", [v11 sheetIndex], v19, v19, (firstColumn2 + v20), (firstColumn2 + v20));
          }

          else
          {
            [EDReference referenceWithFirstRow:v19 lastRow:v19 firstColumn:(firstColumn2 + v20) lastColumn:(firstColumn2 + v20)];
          }
          v13 = ;

          goto LABEL_15;
        }

        index -= countOfCellsBeingReferenced;
      }
    }
  }

  v13 = 0;
LABEL_15:

  return v13;
}

- (id)reverseReferencesByRow:(BOOL)row
{
  rowCopy = row;
  if ([(EDCollection *)self count])
  {
    collection = [objc_opt_class() collection];
    v6 = collection;
    if (collection)
    {
      *(collection + 16) = 0;
      countOfCellsBeingReferenced = [(EDReferenceCollection *)self countOfCellsBeingReferenced];
      if (countOfCellsBeingReferenced)
      {
        v8 = countOfCellsBeingReferenced - 1;
        do
        {
          v9 = [(EDReferenceCollection *)self referenceToCellWithIndex:v8 byRow:rowCopy];
          if (v9)
          {
            [v6 addObject:v9];
          }

          --v8;
        }

        while (v8 != -1);
      }

      v10 = v6;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)coalesceProgressiveCellReferencesCollection
{
  v3 = [(EDCollection *)self count];
  if (v3 >= 2)
  {
    v4 = v3;
    sheetIndex = 0;
    v6 = 0;
    v7 = 0xFFFFFFFFLL;
    areaReference2 = 0xFFFFFFFFLL;
    v9 = 0xFFFFFFFFLL;
    v10 = 0xFFFFFFFFLL;
    while (1)
    {
      v11 = [(EDCollection *)self objectAtIndex:v6];
      if (!v11)
      {
        break;
      }

      v17 = v11;
      if (![v11 isCellReference])
      {
        goto LABEL_19;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_19;
      }

      if (v6)
      {
        if (sheetIndex != [v17 sheetIndex])
        {
          goto LABEL_19;
        }

        areaReference = [v17 areaReference];
        v13 = [v17 areaReference] >> 32;
        if (v7 == areaReference)
        {
          v11 = v17;
          if (v7 < areaReference2)
          {
            break;
          }

          v14 = v10 + 1;
          v10 = v13;
          if (v14 != v13)
          {
            break;
          }
        }

        else
        {
          v11 = v17;
        }

        if (v9 == v13)
        {
          if (v9 < v10)
          {
            break;
          }

          v16 = areaReference2 + 1;
          areaReference2 = areaReference;
          if (v16 != areaReference)
          {
            break;
          }
        }
      }

      else
      {
        areaReference2 = [v17 areaReference];
        areaReference3 = [v17 areaReference];
        sheetIndex = [v17 sheetIndex];
        v10 = HIDWORD(areaReference3);
        v9 = v10;
        v7 = areaReference2;
        v11 = v17;
      }

      if (v4 == ++v6)
      {
        v17 = [EDSheetReference referenceWithSheetIndex:sheetIndex firstRow:v7 lastRow:areaReference2 firstColumn:v9 lastColumn:v10];
        [(EDCollection *)self removeAllObjects];
        [(EDReferenceCollection *)self addObject:v17];
LABEL_19:
        v11 = v17;
        break;
      }
    }
  }
}

- (BOOL)coalesceReferenceAtIndex1:(unint64_t)index1 index2:(unint64_t)index2
{
  v6 = [(EDCollection *)self objectAtIndex:index1];
  v7 = [(EDCollection *)self objectAtIndex:index2];
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
  {
    if ([v6 fullyAdjacentToReference:v7] & 1) != 0 || (objc_msgSend(v6, "isEqualToReference:", v8))
    {
      [v6 unionWithReference:v8];
      [(EDCollection *)self removeObjectAtIndex:index2];
      v9 = 1;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

@end