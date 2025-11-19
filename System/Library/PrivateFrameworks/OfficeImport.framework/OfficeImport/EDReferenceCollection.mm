@interface EDReferenceCollection
+ (id)coalesceCollection;
+ (id)noCoalesceCollection;
- (BOOL)coalesceReferenceAtIndex1:(unint64_t)a3 index2:(unint64_t)a4;
- (EDReferenceCollection)init;
- (id)initWihNoCoalesce;
- (id)referenceToCellWithIndex:(unint64_t)a3 byRow:(BOOL)a4;
- (id)reverseReferencesByRow:(BOOL)a3;
- (unint64_t)addObject:(id)a3;
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
  v2 = [objc_alloc(objc_opt_class()) initWihNoCoalesce];

  return v2;
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

- (unint64_t)addObject:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = EDReferenceCollection;
  [(EDCollection *)&v6 addObject:v4];
  if (self->mCoalesce)
  {
    [(EDReferenceCollection *)self coalesce];
  }

  return -1;
}

- (id)referenceToCellWithIndex:(unint64_t)a3 byRow:(BOOL)a4
{
  v4 = a4;
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
        v12 = [v10 countOfCellsBeingReferenced];
        if (a3 < v12)
        {
          if (v4)
          {
            v14 = [v11 lastColumn];
            v15 = [v11 firstColumn];
            v16 = [v11 firstRow];
            v17 = [v11 firstColumn];
            v18 = v14 - v15 + 1;
            v19 = v16 + (a3 / v18);
            v20 = a3 % v18;
          }

          else
          {
            v21 = [v11 lastRow];
            v22 = [v11 firstRow];
            v23 = [v11 firstRow];
            v17 = [v11 firstColumn];
            v24 = v21 - v22 + 1;
            v20 = a3 / v24;
            v19 = v23 + (a3 % v24);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            +[EDSheetReference referenceWithSheetIndex:firstRow:lastRow:firstColumn:lastColumn:](EDSheetReference, "referenceWithSheetIndex:firstRow:lastRow:firstColumn:lastColumn:", [v11 sheetIndex], v19, v19, (v17 + v20), (v17 + v20));
          }

          else
          {
            [EDReference referenceWithFirstRow:v19 lastRow:v19 firstColumn:(v17 + v20) lastColumn:(v17 + v20)];
          }
          v13 = ;

          goto LABEL_15;
        }

        a3 -= v12;
      }
    }
  }

  v13 = 0;
LABEL_15:

  return v13;
}

- (id)reverseReferencesByRow:(BOOL)a3
{
  v3 = a3;
  if ([(EDCollection *)self count])
  {
    v5 = [objc_opt_class() collection];
    v6 = v5;
    if (v5)
    {
      *(v5 + 16) = 0;
      v7 = [(EDReferenceCollection *)self countOfCellsBeingReferenced];
      if (v7)
      {
        v8 = v7 - 1;
        do
        {
          v9 = [(EDReferenceCollection *)self referenceToCellWithIndex:v8 byRow:v3];
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
    v5 = 0;
    v6 = 0;
    v7 = 0xFFFFFFFFLL;
    v8 = 0xFFFFFFFFLL;
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
        if (v5 != [v17 sheetIndex])
        {
          goto LABEL_19;
        }

        v12 = [v17 areaReference];
        v13 = [v17 areaReference] >> 32;
        if (v7 == v12)
        {
          v11 = v17;
          if (v7 < v8)
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

          v16 = v8 + 1;
          v8 = v12;
          if (v16 != v12)
          {
            break;
          }
        }
      }

      else
      {
        v8 = [v17 areaReference];
        v15 = [v17 areaReference];
        v5 = [v17 sheetIndex];
        v10 = HIDWORD(v15);
        v9 = v10;
        v7 = v8;
        v11 = v17;
      }

      if (v4 == ++v6)
      {
        v17 = [EDSheetReference referenceWithSheetIndex:v5 firstRow:v7 lastRow:v8 firstColumn:v9 lastColumn:v10];
        [(EDCollection *)self removeAllObjects];
        [(EDReferenceCollection *)self addObject:v17];
LABEL_19:
        v11 = v17;
        break;
      }
    }
  }
}

- (BOOL)coalesceReferenceAtIndex1:(unint64_t)a3 index2:(unint64_t)a4
{
  v6 = [(EDCollection *)self objectAtIndex:a3];
  v7 = [(EDCollection *)self objectAtIndex:a4];
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
  {
    if ([v6 fullyAdjacentToReference:v7] & 1) != 0 || (objc_msgSend(v6, "isEqualToReference:", v8))
    {
      [v6 unionWithReference:v8];
      [(EDCollection *)self removeObjectAtIndex:a4];
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