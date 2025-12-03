@interface EDColumnInfoCollection
- (EDColumnInfoCollection)initWithResources:(id)resources worksheet:(id)worksheet;
- (id)columnInfoCreateIfNilForColumnNumber:(int)number;
- (id)columnInfoForColumnNumber:(int)number;
@end

@implementation EDColumnInfoCollection

- (EDColumnInfoCollection)initWithResources:(id)resources worksheet:(id)worksheet
{
  resourcesCopy = resources;
  worksheetCopy = worksheet;
  v11.receiver = self;
  v11.super_class = EDColumnInfoCollection;
  v8 = [(EDCollection *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->mWorksheet, worksheetCopy);
    objc_storeWeak(&v9->mResources, resourcesCopy);
  }

  return v9;
}

- (id)columnInfoForColumnNumber:(int)number
{
  v5 = [(EDCollection *)self count];
  if (!v5)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_10;
  }

  v6 = v5;
  v7 = 0;
  while (1)
  {
    v8 = [(EDCollection *)self objectAtIndex:v7];
    range = [v8 range];
    v10 = range;
    if (!range)
    {
      goto LABEL_6;
    }

    if ([range firstColumn] > number)
    {
      break;
    }

    if ([v10 lastColumn] >= number)
    {
      goto LABEL_9;
    }

LABEL_6:

    if (v6 == ++v7)
    {
      goto LABEL_7;
    }
  }

  v10 = v8;
  v8 = 0;
LABEL_9:

LABEL_10:

  return v8;
}

- (id)columnInfoCreateIfNilForColumnNumber:(int)number
{
  v3 = *&number;
  v5 = [(EDColumnInfoCollection *)self columnInfoForColumnNumber:?];
  v6 = v5;
  if (v5)
  {
    range = [v5 range];
    firstColumn = [range firstColumn];
    lastColumn = [range lastColumn];
    v10 = lastColumn;
    if (firstColumn != v3 || lastColumn != v3)
    {
      v11 = [EDReference referenceWithFirstRow:0xFFFFFFFFLL lastRow:0xFFFFFFFFLL firstColumn:v3 lastColumn:v3];
      [v6 setRange:v11];

      if (firstColumn < v3)
      {
        v12 = [v6 copy];
        v13 = [EDReference referenceWithFirstRow:0xFFFFFFFFLL lastRow:0xFFFFFFFFLL firstColumn:firstColumn lastColumn:(v3 - 1)];
        [v12 setRange:v13];

        [(EDSortedCollection *)self addObject:v12];
      }

      if (v10 > v3)
      {
        v14 = [v6 copy];
        v15 = [EDReference referenceWithFirstRow:0xFFFFFFFFLL lastRow:0xFFFFFFFFLL firstColumn:(v3 + 1) lastColumn:v10];
        [v14 setRange:v15];

        [(EDSortedCollection *)self addObject:v14];
      }
    }

    v16 = v6;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->mResources);
    v18 = objc_loadWeakRetained(&self->mWorksheet);
    v16 = [EDColumnInfo columnInfoWithResources:WeakRetained worksheet:v18];

    v19 = [EDReference referenceWithFirstRow:0xFFFFFFFFLL lastRow:0xFFFFFFFFLL firstColumn:v3 lastColumn:v3];
    [v16 setRange:v19];

    [(EDSortedCollection *)self addObject:v16];
  }

  return v16;
}

@end