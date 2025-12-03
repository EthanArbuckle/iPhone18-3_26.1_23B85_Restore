@interface EMRowMapper
+ (void)mapEmptyRowAt:(id)at colspan:(unint64_t)colspan height:(double)height;
- (EDCellHeader)cellWithColumnNumber:(unint64_t)number;
- (EMRowMapper)initWithEDRowBlock:(id)block rowInfo:(EDRowInfo *)info parent:(id)parent;
- (void)insertEmptyCellAt:(id)at withColSpan:(unint64_t)span height:(double)height;
- (void)mapAt:(id)at withState:(id)state;
- (void)mapEmptyCellsAt:(id)at withState:(id)state firstColumn:(unint64_t)column lastColumn:(unint64_t)lastColumn;
@end

@implementation EMRowMapper

+ (void)mapEmptyRowAt:(id)at colspan:(unint64_t)colspan height:(double)height
{
  atCopy = at;
  v7 = [OIXMLElement elementWithType:21];
  [atCopy addChild:v7];
  v8 = [OIXMLElement elementWithType:19];
  [v7 addChild:v8];
  if (height > 0.0)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", (height / 20.0)];
    v10 = [OIXMLAttribute attributeWithName:@"height" stringValue:v9];

    [v8 addAttribute:v10];
  }

  if (colspan >= 2)
  {
    do
    {
      v11 = [OIXMLElement elementWithType:19];
      [v7 addChild:v11];
      --colspan;
    }

    while (colspan > 1);
  }
}

- (EMRowMapper)initWithEDRowBlock:(id)block rowInfo:(EDRowInfo *)info parent:(id)parent
{
  blockCopy = block;
  parentCopy = parent;
  v14.receiver = self;
  v14.super_class = EMRowMapper;
  v11 = [(CMMapper *)&v14 initWithParent:parentCopy];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->mRowBlock, block);
    v12->mRowInfo = info;
    v12->columnGrid = [parentCopy columnGrid];
    v12->columnCount = [parentCopy columnCount];
  }

  return v12;
}

- (void)mapEmptyCellsAt:(id)at withState:(id)state firstColumn:(unint64_t)column lastColumn:(unint64_t)lastColumn
{
  atCopy = at;
  for (i = state; column <= lastColumn; ++column)
  {
    if (![(EMRowMapper *)self isColumnHidden:column])
    {
      v11 = [(EMRowMapper *)self cellWithColumnNumber:column];
      if (v11)
      {
        v12 = 0;
      }

      else
      {
        currentSheet = [i currentSheet];
        columnInfos = [currentSheet columnInfos];

        v15 = [columnInfos columnInfoForColumnNumber:column];
        style = [v15 style];
        v12 = style != 0;
        if (style)
        {
          v11 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
          initEDCell(v11, column, 0, 0);
          v11->var1 = [style index];
        }

        else
        {
          v11 = 0;
        }

        if (!v11)
        {
          v19 = 0.0;
          if (!column)
          {
            LOWORD(v19) = self->mRowInfo->var5;
            v19 = *&v19 / 20.0;
          }

          [(EMRowMapper *)self insertEmptyCellAt:atCopy withColSpan:1 height:v19];
          if (!style)
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
      [(EMCellMapper *)v17 mapAt:atCopy withState:i height:0 nextCell:v18 / 20.0];

      if (v12)
      {
        goto LABEL_13;
      }
    }
  }
}

- (void)mapAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  if ((*(self->mRowInfo + 23) & 2) == 0)
  {
    v26 = [OIXMLElement elementWithType:21];
    [atCopy addChild:v26];
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
      lastColumn = 0xFFFFFFFFLL;
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

      v16 = [[EMCellMapper alloc] initWithEDCell:v12 rowInfo:self->mRowInfo parent:self state:stateCopy];
      v17 = v16;
      if (v9)
      {
        if ([(EMCellMapper *)v16 isCellEmpty]&& [(EMCellMapper *)v17 isCellSpreading:stateCopy])
        {
          lastColumn = [(EMCellMapper *)v17 lastColumn];
LABEL_34:

          goto LABEL_35;
        }

        LODWORD(lastColumn) = v15 - 1;
        [(EMCellMapper *)v9 setLastColumn:(v15 - 1)];
        [(EMCellMapper *)v9 adjustColumnSpanForGrid:self->columnGrid columnCount:self->columnCount nextCell:v13 withState:stateCopy];
        [(EMCellMapper *)v9 mapAt:v26 withState:stateCopy height:v13 nextCell:0.0];
      }

      if (lastColumn == -1)
      {
        [(EMCellMapper *)v17 setFirstCellFlag];
      }

      if (v15 > lastColumn + 1)
      {
        [(EMRowMapper *)self mapEmptyCellsAt:v26 withState:stateCopy firstColumn:lastColumn + 1 lastColumn:v15 - 1];
      }

      lastColumn = [(EMCellMapper *)v17 lastColumn];
      if ([(EMCellMapper *)v17 isCellMerged])
      {
        v9 = 0;
      }

      else
      {
        if ([(EMCellMapper *)v17 isCellSpreading:stateCopy])
        {
          v9 = v17;
        }

        else
        {
          [(EMCellMapper *)v17 adjustColumnSpanForGrid:self->columnGrid columnCount:self->columnCount nextCell:v13 withState:stateCopy];
          v9 = 0;
          [(EMCellMapper *)v17 mapAt:v26 withState:stateCopy height:v13 nextCell:0.0];
        }

        isThumbnail = [stateCopy isThumbnail];
        if (v15 > 100)
        {
          v19 = isThumbnail;
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
    lastColumn = 0xFFFFFFFFLL;
LABEL_38:
    mRowInfo = self->mRowInfo;
    if (*(mRowInfo + 23))
    {
      v21 = [[CMLengthProperty alloc] initWithNumber:mRowInfo->var5 / 20.0];
      cssString = [(CMLengthProperty *)v21 cssString];
      v23 = [OIXMLAttribute attributeWithName:@"height" stringValue:cssString];
      [v26 addAttribute:v23];
    }

    if (v9)
    {
      [(EMCellMapper *)v9 setLastColumn:lastColumn];
      [(EMCellMapper *)v9 adjustColumnSpanForGrid:self->columnGrid columnCount:self->columnCount nextCell:0 withState:stateCopy];
      [(EMCellMapper *)v9 mapAt:v26 withState:stateCopy height:v13 nextCell:0.0];
      LODWORD(lastColumn) = [(EMCellMapper *)v9 lastColumn];
    }

    if (self->columnCount - 1 > lastColumn)
    {
      [(EMRowMapper *)self mapEmptyCellsAt:v26 withState:stateCopy firstColumn:lastColumn + 1 lastColumn:?];
    }

    objc_autoreleasePoolPop(context);
  }
}

- (EDCellHeader)cellWithColumnNumber:(unint64_t)number
{
  v4 = [(EDRowBlock *)self->mRowBlock cellWithColumnNumber:number rowInfo:self->mRowInfo];
  if (columnNumberForEDCell(v4) == number)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (void)insertEmptyCellAt:(id)at withColSpan:(unint64_t)span height:(double)height
{
  atCopy = at;
  v8 = [OIXMLElement elementWithType:19];
  [atCopy addChild:v8];
  if (height > 0.0)
  {
    v9 = objc_alloc_init(CMStyle);
    [(CMStyle *)v9 appendPropertyForName:0x286EF6790 intValue:height];
    [(CMMapper *)self addStyleUsingGlobalCacheTo:v8 style:v9];
  }

  if (span >= 2)
  {
    span = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", span];
    v11 = [OIXMLAttribute attributeWithName:@"colspan" stringValue:span];
    [v8 addAttribute:v11];
  }
}

@end