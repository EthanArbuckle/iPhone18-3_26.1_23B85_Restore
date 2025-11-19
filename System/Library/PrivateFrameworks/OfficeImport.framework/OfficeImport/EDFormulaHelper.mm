@interface EDFormulaHelper
- (BOOL)isCurrentSheet:(id)a3;
- (EDFormulaHelper)initWithWorkbook:(id)a3 worksheet:(id)a4 rowNumber:(int)a5 columnNumber:(int)a6;
- (id)resolveTable:(id)a3;
- (int)resolveFunctionName:(id)a3;
- (unint64_t)createIndexWithType:(int)a3 firstSheetIndex:(unint64_t)a4 lastSheetIndex:(unint64_t)a5;
- (unint64_t)resolveFirstSheet:(id)a3 lastSheet:(id)a4;
- (unint64_t)resolveName:(id)a3;
- (unint64_t)resolveSheet:(id)a3;
- (unint64_t)resolveTableColumn:(id)a3 columnName:(id)a4;
- (unint64_t)resolveTableToSheetId:(id)a3;
@end

@implementation EDFormulaHelper

- (EDFormulaHelper)initWithWorkbook:(id)a3 worksheet:(id)a4 rowNumber:(int)a5 columnNumber:(int)a6
{
  v11 = a3;
  v12 = a4;
  v18.receiver = self;
  v18.super_class = EDFormulaHelper;
  v13 = [(EDFormulaHelper *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->mWorkbook, a3);
    objc_storeStrong(&v14->mWorksheet, a4);
    v14->mRowNumber = a5;
    v14->mColumnNumber = a6;
    v15 = [v11 mappingContext];
    mMappingContext = v14->mMappingContext;
    v14->mMappingContext = v15;
  }

  return v14;
}

- (unint64_t)resolveName:(id)a3
{
  v4 = a3;
  v5 = [(EDWorkbook *)self->mWorkbook indexOfSheet:self->mWorksheet];
  v6 = [(EDWorkbook *)self->mWorkbook resources];
  v7 = [v6 names];

  v8 = [v7 count];
  if (v8)
  {
    v9 = 0;
    while (1)
    {
      v10 = [v7 objectAtIndex:v9];
      v11 = v10;
      if (v10)
      {
        v12 = [v10 nameString];
        v13 = [v12 isEqualToString:v4];

        if ((v13 & 1) != 0 && (![v11 sheetIndex] || v5 == objc_msgSend(v11, "sheetIndex")))
        {
          break;
        }
      }

      if (v8 == ++v9)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v9 = -1;
  }

  return v9;
}

- (unint64_t)resolveSheet:(id)a3
{
  v4 = a3;
  v5 = [(ECMappingContext *)self->mMappingContext mappedSheetIndexForSheetName:v4];
  if (v5 == -1)
  {
    v6 = [(EDWorkbook *)self->mWorkbook workbookName];
    v7 = [v4 isEqualToString:v6];

    if ((v7 & 1) == 0)
    {
      v8 = -1;
      goto LABEL_5;
    }

    v5 = 0;
  }

  v8 = [(EDFormulaHelper *)self createIndexWithType:1 firstSheetIndex:v5 lastSheetIndex:v5];
LABEL_5:

  return v8;
}

- (unint64_t)resolveFirstSheet:(id)a3 lastSheet:(id)a4
{
  v6 = a4;
  v7 = [(ECMappingContext *)self->mMappingContext mappedSheetIndexForSheetName:a3];
  v8 = [(ECMappingContext *)self->mMappingContext mappedSheetIndexForSheetName:v6];
  if (v7 == -1 || v8 == -1)
  {
    v10 = -1;
  }

  else
  {
    v10 = [(EDFormulaHelper *)self createIndexWithType:1 firstSheetIndex:v7 lastSheetIndex:v8];
  }

  return v10;
}

- (id)resolveTable:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(EDWorkbook *)self->mWorkbook sheetCount];
    if (v5)
    {
      v6 = 0;
      while (1)
      {
        v7 = [(EDWorksheet *)self->mWorksheet tables];
        v8 = [v7 count];

        if (v8)
        {
          break;
        }

LABEL_8:
        if (++v6 == v5)
        {
          goto LABEL_17;
        }
      }

      v9 = 0;
      while (1)
      {
        v10 = [(EDWorksheet *)self->mWorksheet tables];
        v11 = [v10 objectAtIndex:v9];

        v12 = [v11 name];
        v13 = [v12 isEqualToString:v4];

        if (v13)
        {
          goto LABEL_18;
        }

        if (v8 == ++v9)
        {
          goto LABEL_8;
        }
      }
    }

LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  v14 = [(EDWorksheet *)self->mWorksheet tables];
  v15 = [v14 count];

  if (!v15)
  {
    goto LABEL_17;
  }

  v16 = 0;
  while (1)
  {
    v17 = [(EDWorksheet *)self->mWorksheet tables];
    v11 = [v17 objectAtIndex:v16];

    v18 = [v11 tableRange];
    v19 = [v18 firstColumn];
    mColumnNumber = self->mColumnNumber;
    if (v19 <= mColumnNumber && mColumnNumber <= [v18 lastColumn])
    {
      v21 = [v18 firstRow];
      mRowNumber = self->mRowNumber;
      if (v21 <= mRowNumber && mRowNumber <= [v18 lastRow])
      {
        break;
      }
    }

    if (v15 == ++v16)
    {
      goto LABEL_17;
    }
  }

LABEL_18:

  return v11;
}

- (unint64_t)resolveTableToSheetId:(id)a3
{
  v4 = a3;
  if (![v4 length])
  {
    v7 = [(EDSheet *)self->mWorksheet name];
    v12 = [v7 string];
    v15 = [(EDFormulaHelper *)self resolveSheet:v12];
LABEL_13:

    goto LABEL_14;
  }

  v5 = [(EDWorkbook *)self->mWorkbook sheetCount];
  if (v5)
  {
    v6 = 0;
    while (1)
    {
      v7 = [(EDWorkbook *)self->mWorkbook sheetAtIndex:v6 loadIfNeeded:0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [v7 tables];
        v9 = [v8 count];

        if (v9)
        {
          break;
        }
      }

LABEL_9:

      if (++v6 == v5)
      {
        goto LABEL_10;
      }
    }

    v10 = 0;
    while (1)
    {
      v11 = [v7 tables];
      v12 = [v11 objectAtIndex:v10];

      v13 = [v12 name];
      v14 = [v13 isEqualToString:v4];

      if (v14)
      {
        break;
      }

      if (v9 == ++v10)
      {
        goto LABEL_9;
      }
    }

    v16 = [v7 name];
    v17 = [v16 string];
    v15 = [(EDFormulaHelper *)self resolveSheet:v17];

    goto LABEL_13;
  }

LABEL_10:
  v15 = -1;
LABEL_14:

  return v15;
}

- (unint64_t)resolveTableColumn:(id)a3 columnName:(id)a4
{
  v5 = a4;
  v6 = [a3 tableColumns];
  v7 = [v6 count];
  if (v7)
  {
    v8 = 0;
    while (1)
    {
      v9 = [v6 objectAtIndex:v8];
      v10 = [v9 name];
      v11 = [v10 isEqualToString:v5];

      if (v11)
      {
        break;
      }

      if (v7 == ++v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v8 = -1;
  }

  return v8;
}

- (BOOL)isCurrentSheet:(id)a3
{
  v4 = a3;
  v5 = [(EDSheet *)self->mWorksheet name];
  v6 = [v5 string];
  v7 = [v6 isEqualToString:v4];

  return v7;
}

- (int)resolveFunctionName:(id)a3
{
  v3 = a3;
  CsString::CsString(&v7);
  CsString::append(&v7, [v3 cStringUsingEncoding:10], objc_msgSend(v3, "length"));
  if (v7.var1)
  {
    var1 = v7.var1;
  }

  else
  {
    var1 = &unk_25D6FEC98;
  }

  v5 = XlFunctionIdForName(var1);
  CsString::~CsString(&v7);

  return v5;
}

- (unint64_t)createIndexWithType:(int)a3 firstSheetIndex:(unint64_t)a4 lastSheetIndex:(unint64_t)a5
{
  v7 = *&a3;
  v8 = [(EDWorkbook *)self->mWorkbook resources];
  v9 = [v8 links];
  v10 = [v9 addOrEquivalentLinkReferenceOfType:v7 firstSheetIndex:a4 lastSheetIndex:a5];

  return v10;
}

@end