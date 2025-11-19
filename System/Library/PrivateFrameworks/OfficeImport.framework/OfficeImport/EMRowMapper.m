@interface EMRowMapper
+ (void)mapEmptyRowAt:(id)a3 colspan:(unint64_t)a4 height:(double)a5;
- (EDCellHeader)cellWithColumnNumber:(unint64_t)a3;
- (EMRowMapper)initWithEDRowBlock:(id)a3 rowInfo:(EDRowInfo *)a4 parent:(id)a5;
- (void)insertEmptyCellAt:(id)a3 withColSpan:(unint64_t)a4 height:(double)a5;
- (void)mapAt:(id)a3 withState:(id)a4;
- (void)mapEmptyCellsAt:(id)a3 withState:(id)a4 firstColumn:(unint64_t)a5 lastColumn:(unint64_t)a6;
@end

@implementation EMRowMapper

+ (void)mapEmptyRowAt:(id)a3 colspan:(unint64_t)a4 height:(double)a5
{
  v12 = a3;
  v7 = [OIXMLElement elementWithType:21];
  [v12 addChild:v7];
  v8 = [OIXMLElement elementWithType:19];
  [v7 addChild:v8];
  if (a5 > 0.0)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", (a5 / 20.0)];
    v10 = [OIXMLAttribute attributeWithName:@"height" stringValue:v9];

    [v8 addAttribute:v10];
  }

  if (a4 >= 2)
  {
    do
    {
      v11 = [OIXMLElement elementWithType:19];
      [v7 addChild:v11];
      --a4;
    }

    while (a4 > 1);
  }
}

- (EMRowMapper)initWithEDRowBlock:(id)a3 rowInfo:(EDRowInfo *)a4 parent:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = EMRowMapper;
  v11 = [(CMMapper *)&v14 initWithParent:v10];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->mRowBlock, a3);
    v12->mRowInfo = a4;
    v12->columnGrid = [v10 columnGrid];
    v12->columnCount = [v10 columnCount];
  }

  return v12;
}

- (void)mapEmptyCellsAt:(id)a3 withState:(id)a4 firstColumn:(unint64_t)a5 lastColumn:(unint64_t)a6
{
  v20 = a3;
  for (i = a4; a5 <= a6; ++a5)
  {
    if (![(EMRowMapper *)self isColumnHidden:a5])
    {
      v11 = [(EMRowMapper *)self cellWithColumnNumber:a5];
      if (v11)
      {
        v12 = 0;
      }

      else
      {
        v13 = [i currentSheet];
        v14 = [v13 columnInfos];

        v15 = [v14 columnInfoForColumnNumber:a5];
        v16 = [v15 style];
        v12 = v16 != 0;
        if (v16)
        {
          v11 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
          initEDCell(v11, a5, 0, 0);
          v11->var1 = [v16 index];
        }

        else
        {
          v11 = 0;
        }

        if (!v11)
        {
          v19 = 0.0;
          if (!a5)
          {
            LOWORD(v19) = self->mRowInfo->var5;
            v19 = *&v19 / 20.0;
          }

          [(EMRowMapper *)self insertEmptyCellAt:v20 withColSpan:1 height:v19];
          if (!v16)
          {
            continue;
          }

          v11 = 0;
LABEL_13:
          free(v11);
          continue;
        }
      }

      v17 = [[EMCellMapper alloc] initWithEDCell:v11 rowInfo:self->mRowInfo parent:self state:i];
      LOWORD(v18) = self->mRowInfo->var5;
      [(EMCellMapper *)v17 mapAt:v20 withState:i height:0 nextCell:v18 / 20.0];

      if (v12)
      {
        goto LABEL_13;
      }
    }
  }
}

- (void)mapAt:(id)a3 withState:(id)a4
{
  v25 = a3;
  v27 = a4;
  if ((*(self->mRowInfo + 23) & 2) == 0)
  {
    v26 = [OIXMLElement elementWithType:21];
    [v25 addChild:v26];
    var2 = self->mRowInfo->var2;
    context = objc_autoreleasePoolPush();
    if (var2 >= 0x401)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        if (![EMCellMapper isCellEmpty:[(EDRowBlock *)self->mRowBlock cellAtIndex:v7 rowInfo:self->mRowInfo]])
        {
          v8 = v7;
        }

        v7 = (v7 + 1);
      }

      while (var2 != v7);
      if (var2 >= v8 + 1)
      {
        var2 = v8 + 1;
      }
    }

    if (var2)
    {
      v9 = 0;
      v10 = 0xFFFFFFFFLL;
      v11 = 1;
      while (1)
      {
        v12 = [(EDRowBlock *)self->mRowBlock cellAtIndex:(v11 - 1) rowInfo:self->mRowInfo];
        if (v11 == var2)
        {
          v13 = 0;
        }

        else
        {
          v13 = [(EDRowBlock *)self->mRowBlock cellAtIndex:v11 rowInfo:self->mRowInfo];
        }

        v14 = columnNumberForEDCell(v12);
        v15 = v14;
        if (self->columnCount < v14)
        {
          goto LABEL_38;
        }

        if (![(EMRowMapper *)self isColumnHidden:v14])
        {
          break;
        }

LABEL_35:
        v11 = (v11 + 1);
        if (v11 - var2 == 1)
        {
          goto LABEL_38;
        }
      }

      v16 = [[EMCellMapper alloc] initWithEDCell:v12 rowInfo:self->mRowInfo parent:self state:v27];
      v17 = v16;
      if (v9)
      {
        if ([(EMCellMapper *)v16 isCellEmpty]&& [(EMCellMapper *)v17 isCellSpreading:v27])
        {
          v10 = [(EMCellMapper *)v17 lastColumn];
LABEL_34:

          goto LABEL_35;
        }

        LODWORD(v10) = v15 - 1;
        [(EMCellMapper *)v9 setLastColumn:(v15 - 1)];
        [(EMCellMapper *)v9 adjustColumnSpanForGrid:self->columnGrid columnCount:self->columnCount nextCell:v13 withState:v27];
        [(EMCellMapper *)v9 mapAt:v26 withState:v27 height:v13 nextCell:0.0];
      }

      if (v10 == -1)
      {
        [(EMCellMapper *)v17 setFirstCellFlag];
      }

      if (v15 > v10 + 1)
      {
        [(EMRowMapper *)self mapEmptyCellsAt:v26 withState:v27 firstColumn:v10 + 1 lastColumn:v15 - 1];
      }

      v10 = [(EMCellMapper *)v17 lastColumn];
      if ([(EMCellMapper *)v17 isCellMerged])
      {
        v9 = 0;
      }

      else
      {
        if ([(EMCellMapper *)v17 isCellSpreading:v27])
        {
          v9 = v17;
        }

        else
        {
          [(EMCellMapper *)v17 adjustColumnSpanForGrid:self->columnGrid columnCount:self->columnCount nextCell:v13 withState:v27];
          v9 = 0;
          [(EMCellMapper *)v17 mapAt:v26 withState:v27 height:v13 nextCell:0.0];
        }

        v18 = [v27 isThumbnail];
        if (v15 > 100)
        {
          v19 = v18;
        }

        else
        {
          v19 = 0;
        }

        if (v19)
        {

          goto LABEL_38;
        }
      }

      goto LABEL_34;
    }

    v13 = 0;
    v9 = 0;
    v10 = 0xFFFFFFFFLL;
LABEL_38:
    mRowInfo = self->mRowInfo;
    if (*(mRowInfo + 23))
    {
      v21 = [[CMLengthProperty alloc] initWithNumber:mRowInfo->var5 / 20.0];
      v22 = [(CMLengthProperty *)v21 cssString];
      v23 = [OIXMLAttribute attributeWithName:@"height" stringValue:v22];
      [v26 addAttribute:v23];
    }

    if (v9)
    {
      [(EMCellMapper *)v9 setLastColumn:v10];
      [(EMCellMapper *)v9 adjustColumnSpanForGrid:self->columnGrid columnCount:self->columnCount nextCell:0 withState:v27];
      [(EMCellMapper *)v9 mapAt:v26 withState:v27 height:v13 nextCell:0.0];
      LODWORD(v10) = [(EMCellMapper *)v9 lastColumn];
    }

    if (self->columnCount - 1 > v10)
    {
      [(EMRowMapper *)self mapEmptyCellsAt:v26 withState:v27 firstColumn:v10 + 1 lastColumn:?];
    }

    objc_autoreleasePoolPop(context);
  }
}

- (EDCellHeader)cellWithColumnNumber:(unint64_t)a3
{
  v4 = [(EDRowBlock *)self->mRowBlock cellWithColumnNumber:a3 rowInfo:self->mRowInfo];
  if (columnNumberForEDCell(v4) == a3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (void)insertEmptyCellAt:(id)a3 withColSpan:(unint64_t)a4 height:(double)a5
{
  v12 = a3;
  v8 = [OIXMLElement elementWithType:19];
  [v12 addChild:v8];
  if (a5 > 0.0)
  {
    v9 = objc_alloc_init(CMStyle);
    [(CMStyle *)v9 appendPropertyForName:0x286EF6790 intValue:a5];
    [(CMMapper *)self addStyleUsingGlobalCacheTo:v8 style:v9];
  }

  if (a4 >= 2)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", a4];
    v11 = [OIXMLAttribute attributeWithName:@"colspan" stringValue:v10];
    [v8 addAttribute:v11];
  }
}

@end