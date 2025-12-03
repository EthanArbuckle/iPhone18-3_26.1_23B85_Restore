@interface EDFormulaHelper
- (BOOL)isCurrentSheet:(id)sheet;
- (EDFormulaHelper)initWithWorkbook:(id)workbook worksheet:(id)worksheet rowNumber:(int)number columnNumber:(int)columnNumber;
- (id)resolveTable:(id)table;
- (int)resolveFunctionName:(id)name;
- (unint64_t)createIndexWithType:(int)type firstSheetIndex:(unint64_t)index lastSheetIndex:(unint64_t)sheetIndex;
- (unint64_t)resolveFirstSheet:(id)sheet lastSheet:(id)lastSheet;
- (unint64_t)resolveName:(id)name;
- (unint64_t)resolveSheet:(id)sheet;
- (unint64_t)resolveTableColumn:(id)column columnName:(id)name;
- (unint64_t)resolveTableToSheetId:(id)id;
@end

@implementation EDFormulaHelper

- (EDFormulaHelper)initWithWorkbook:(id)workbook worksheet:(id)worksheet rowNumber:(int)number columnNumber:(int)columnNumber
{
  workbookCopy = workbook;
  worksheetCopy = worksheet;
  v18.receiver = self;
  v18.super_class = EDFormulaHelper;
  v13 = [(EDFormulaHelper *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->mWorkbook, workbook);
    objc_storeStrong(&v14->mWorksheet, worksheet);
    v14->mRowNumber = number;
    v14->mColumnNumber = columnNumber;
    mappingContext = [workbookCopy mappingContext];
    mMappingContext = v14->mMappingContext;
    v14->mMappingContext = mappingContext;
  }

  return v14;
}

- (unint64_t)resolveName:(id)name
{
  nameCopy = name;
  v5 = [(EDWorkbook *)self->mWorkbook indexOfSheet:self->mWorksheet];
  resources = [(EDWorkbook *)self->mWorkbook resources];
  names = [resources names];

  v8 = [names count];
  if (v8)
  {
    v9 = 0;
    while (1)
    {
      v10 = [names objectAtIndex:v9];
      v11 = v10;
      if (v10)
      {
        nameString = [v10 nameString];
        v13 = [nameString isEqualToString:nameCopy];

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

- (unint64_t)resolveSheet:(id)sheet
{
  sheetCopy = sheet;
  v5 = [(ECMappingContext *)self->mMappingContext mappedSheetIndexForSheetName:sheetCopy];
  if (v5 == -1)
  {
    workbookName = [(EDWorkbook *)self->mWorkbook workbookName];
    v7 = [sheetCopy isEqualToString:workbookName];

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

- (unint64_t)resolveFirstSheet:(id)sheet lastSheet:(id)lastSheet
{
  lastSheetCopy = lastSheet;
  v7 = [(ECMappingContext *)self->mMappingContext mappedSheetIndexForSheetName:sheet];
  v8 = [(ECMappingContext *)self->mMappingContext mappedSheetIndexForSheetName:lastSheetCopy];
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

- (id)resolveTable:(id)table
{
  tableCopy = table;
  if ([tableCopy length])
  {
    sheetCount = [(EDWorkbook *)self->mWorkbook sheetCount];
    if (sheetCount)
    {
      v6 = 0;
      while (1)
      {
        tables = [(EDWorksheet *)self->mWorksheet tables];
        v8 = [tables count];

        if (v8)
        {
          break;
        }

LABEL_8:
        if (++v6 == sheetCount)
        {
          goto LABEL_17;
        }
      }

      v9 = 0;
      while (1)
      {
        tables2 = [(EDWorksheet *)self->mWorksheet tables];
        v11 = [tables2 objectAtIndex:v9];

        name = [v11 name];
        v13 = [name isEqualToString:tableCopy];

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

  tables3 = [(EDWorksheet *)self->mWorksheet tables];
  v15 = [tables3 count];

  if (!v15)
  {
    goto LABEL_17;
  }

  v16 = 0;
  while (1)
  {
    tables4 = [(EDWorksheet *)self->mWorksheet tables];
    v11 = [tables4 objectAtIndex:v16];

    tableRange = [v11 tableRange];
    firstColumn = [tableRange firstColumn];
    mColumnNumber = self->mColumnNumber;
    if (firstColumn <= mColumnNumber && mColumnNumber <= [tableRange lastColumn])
    {
      firstRow = [tableRange firstRow];
      mRowNumber = self->mRowNumber;
      if (firstRow <= mRowNumber && mRowNumber <= [tableRange lastRow])
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

- (unint64_t)resolveTableToSheetId:(id)id
{
  idCopy = id;
  if (![idCopy length])
  {
    name = [(EDSheet *)self->mWorksheet name];
    string = [name string];
    v15 = [(EDFormulaHelper *)self resolveSheet:string];
LABEL_13:

    goto LABEL_14;
  }

  sheetCount = [(EDWorkbook *)self->mWorkbook sheetCount];
  if (sheetCount)
  {
    v6 = 0;
    while (1)
    {
      name = [(EDWorkbook *)self->mWorkbook sheetAtIndex:v6 loadIfNeeded:0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        tables = [name tables];
        v9 = [tables count];

        if (v9)
        {
          break;
        }
      }

LABEL_9:

      if (++v6 == sheetCount)
      {
        goto LABEL_10;
      }
    }

    v10 = 0;
    while (1)
    {
      tables2 = [name tables];
      string = [tables2 objectAtIndex:v10];

      name2 = [string name];
      v14 = [name2 isEqualToString:idCopy];

      if (v14)
      {
        break;
      }

      if (v9 == ++v10)
      {
        goto LABEL_9;
      }
    }

    v7Name = [name name];
    string2 = [v7Name string];
    v15 = [(EDFormulaHelper *)self resolveSheet:string2];

    goto LABEL_13;
  }

LABEL_10:
  v15 = -1;
LABEL_14:

  return v15;
}

- (unint64_t)resolveTableColumn:(id)column columnName:(id)name
{
  nameCopy = name;
  tableColumns = [column tableColumns];
  v7 = [tableColumns count];
  if (v7)
  {
    v8 = 0;
    while (1)
    {
      v9 = [tableColumns objectAtIndex:v8];
      name = [v9 name];
      v11 = [name isEqualToString:nameCopy];

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

- (BOOL)isCurrentSheet:(id)sheet
{
  sheetCopy = sheet;
  name = [(EDSheet *)self->mWorksheet name];
  string = [name string];
  v7 = [string isEqualToString:sheetCopy];

  return v7;
}

- (int)resolveFunctionName:(id)name
{
  nameCopy = name;
  CsString::CsString(&v7);
  CsString::append(&v7, [nameCopy cStringUsingEncoding:10], objc_msgSend(nameCopy, "length"));
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

- (unint64_t)createIndexWithType:(int)type firstSheetIndex:(unint64_t)index lastSheetIndex:(unint64_t)sheetIndex
{
  v7 = *&type;
  resources = [(EDWorkbook *)self->mWorkbook resources];
  links = [resources links];
  v10 = [links addOrEquivalentLinkReferenceOfType:v7 firstSheetIndex:index lastSheetIndex:sheetIndex];

  return v10;
}

@end