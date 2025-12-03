@interface PMTableMapper
- (PMTableMapper)initWithOadTable:(id)table bounds:(id)bounds parent:(id)parent;
- (float)columnWidthAtIndex:(unint64_t)index state:(id)state;
- (id)cellStyle;
- (id)defaultCellFillForRow:(unint64_t)row withState:(id)state;
- (id)defaultCellFillWithState:(id)state;
- (id)tableBorderStyle;
- (void)mapAt:(id)at withState:(id)state;
- (void)mapColumnGridAt:(id)at withState:(id)state;
- (void)mapTablePropertiesWithState:(id)state;
@end

@implementation PMTableMapper

- (id)tableBorderStyle
{
  tableProperties = [(OADTable *)self->mTable tableProperties];
  style = [tableProperties style];
  wholeTableStyle = [style wholeTableStyle];
  cellStyle = [wholeTableStyle cellStyle];
  borderStyle = [cellStyle borderStyle];

  return borderStyle;
}

- (PMTableMapper)initWithOadTable:(id)table bounds:(id)bounds parent:(id)parent
{
  tableCopy = table;
  boundsCopy = bounds;
  parentCopy = parent;
  v19.receiver = self;
  v19.super_class = PMTableMapper;
  v12 = [(CMMapper *)&v19 initWithParent:parentCopy];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->mTable, table);
    v14 = objc_alloc_init(CMTableGridInfo);
    mGrid = v13->mGrid;
    v13->mGrid = v14;

    v16 = objc_alloc_init(CMDrawableStyle);
    mStyle = v13->mStyle;
    v13->mStyle = v16;

    objc_storeStrong(&v13->mBounds, bounds);
  }

  return v13;
}

- (void)mapAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  v7 = [OIXMLElement elementWithType:18];
  [atCopy addChild:v7];
  mStyle = self->mStyle;
  [(OADOrientedBounds *)self->mBounds bounds];
  [(CMDrawableStyle *)mStyle addPositionProperties:?];
  [(PMTableMapper *)self mapTablePropertiesWithState:stateCopy];
  [(PMTableMapper *)self mapColumnGridAt:v7 withState:stateCopy];
  rowCount = [(OADTable *)self->mTable rowCount];
  if (rowCount)
  {
    for (i = 0; i != rowCount; ++i)
    {
      v11 = [[PMTableRowMapper alloc] initWithOadTable:self->mTable rowIndex:i parent:self];
      [(PMTableRowMapper *)v11 mapAt:v7 withState:stateCopy];
    }
  }

  [(CMMapper *)self addStyleUsingGlobalCacheTo:v7 style:self->mStyle];
}

- (float)columnWidthAtIndex:(unint64_t)index state:(id)state
{
  v5 = [(OADTable *)self->mTable grid:index];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 columnAtIndex:index];
    [v7 width];
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

- (id)defaultCellFillWithState:(id)state
{
  stateCopy = state;
  cellStyle = [(PMTableMapper *)self cellStyle];
  v6 = cellStyle;
  if (cellStyle)
  {
    fill = [cellStyle fill];
    v8 = [CMColorProperty nsColorFromOADFill:fill state:stateCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)defaultCellFillForRow:(unint64_t)row withState:(id)state
{
  stateCopy = state;
  tableProperties = [(OADTable *)self->mTable tableProperties];
  style = [tableProperties style];
  v9 = style;
  if (!style)
  {
    v16 = 0;
    goto LABEL_24;
  }

  background = [style background];
  fill = [background fill];

  if (!fill)
  {
    if (row || ![tableProperties firstRow])
    {
      if ([tableProperties bandRow])
      {
        if ([tableProperties firstRow] == (row & 1))
        {
          [v9 band1HorzStyle];
        }

        else
        {
          [v9 wholeTableStyle];
        }
        wholeTableStyle = ;
        cellStyle = [wholeTableStyle cellStyle];
        fill2 = [cellStyle fill];
      }

      else
      {
        wholeTableStyle = [v9 wholeTableStyle];
        cellStyle = [wholeTableStyle cellStyle];
        fill2 = [cellStyle fill];
      }

      fill3 = fill2;

      v15 = [CMColorProperty nsColorFromOADFill:fill3 state:stateCopy];
      goto LABEL_22;
    }

    goto LABEL_5;
  }

  if (!row && [tableProperties firstRow])
  {
LABEL_5:
    firstRowStyle = [v9 firstRowStyle];
    cellStyle2 = [firstRowStyle cellStyle];
    fill3 = [cellStyle2 fill];

    v15 = [CMColorProperty nsColorFromOADFill:fill3 state:stateCopy];
LABEL_22:
    v16 = v15;

    goto LABEL_23;
  }

  if ([tableProperties bandRow])
  {
    firstRow = [tableProperties firstRow];
    v18 = [CMColorProperty nsColorFromOADFill:fill state:stateCopy];
    fill3 = v18;
    if ((firstRow ^ row))
    {
      v19 = 0.2;
    }

    else
    {
      v19 = 0.4;
    }

    [v18 redComponent];
    v21 = v20;
    [fill3 greenComponent];
    v23 = v22;
    [fill3 blueComponent];
    v25 = v24;
    [fill3 alphaComponent];
    v26 = v21;
    v27 = v23;
    v28 = v25;
    v30 = v29;
    v15 = [OITSUColor colorWithRed:((1.0 - v19) + (v26 * v19)) green:((1.0 - v19) + (v27 * v19)) blue:((1.0 - v19) + (v28 * v19)) alpha:v30];
    goto LABEL_22;
  }

  v16 = [CMColorProperty nsColorFromOADFill:fill state:stateCopy];
LABEL_23:

LABEL_24:

  return v16;
}

- (void)mapTablePropertiesWithState:(id)state
{
  stateCopy = state;
  tableProperties = [(OADTable *)self->mTable tableProperties];
  style = [tableProperties style];
  background = [style background];

  fill = [background fill];

  if (fill)
  {
    fill2 = [background fill];
    v9 = [CMColorProperty nsColorFromOADFill:fill2 state:stateCopy];

    if (v9)
    {
      [(CMStyle *)self->mStyle appendPropertyForName:0x286F07DF0 color:v9];
    }
  }

  [(CMStyle *)self->mStyle appendPropertyForName:0x286F08030 intValue:0];
  [(CMStyle *)self->mStyle appendPropertyForName:0x286F07D50 intValue:0];
  [(CMStyle *)self->mStyle appendPropertyForName:0x286F07D30 intValue:0];
}

- (void)mapColumnGridAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  grid = [(OADTable *)self->mTable grid];
  for (i = 0; i < [grid columnCount]; ++i)
  {
    v9 = [OIXMLElement elementWithType:2];
    v10 = objc_alloc_init(CMStyle);
    [(PMTableMapper *)self columnWidthAtIndex:i state:stateCopy];
    [(CMStyle *)v10 appendPropertyForName:0x286EEA530 length:1 unit:v11];
    [(CMMapper *)self addStyleUsingGlobalCacheTo:v9 style:v10 embedStyle:1];
    [atCopy addChild:v9];
  }
}

- (id)cellStyle
{
  tableProperties = [(OADTable *)self->mTable tableProperties];
  v3 = tableProperties;
  if (tableProperties)
  {
    style = [tableProperties style];
    v5 = style;
    if (style)
    {
      wholeTableStyle = [style wholeTableStyle];
      v7 = wholeTableStyle;
      if (wholeTableStyle)
      {
        cellStyle = [wholeTableStyle cellStyle];
      }

      else
      {
        cellStyle = 0;
      }
    }

    else
    {
      cellStyle = 0;
    }
  }

  else
  {
    cellStyle = 0;
  }

  return cellStyle;
}

@end