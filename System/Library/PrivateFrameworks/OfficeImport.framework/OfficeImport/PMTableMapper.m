@interface PMTableMapper
- (PMTableMapper)initWithOadTable:(id)a3 bounds:(id)a4 parent:(id)a5;
- (float)columnWidthAtIndex:(unint64_t)a3 state:(id)a4;
- (id)cellStyle;
- (id)defaultCellFillForRow:(unint64_t)a3 withState:(id)a4;
- (id)defaultCellFillWithState:(id)a3;
- (id)tableBorderStyle;
- (void)mapAt:(id)a3 withState:(id)a4;
- (void)mapColumnGridAt:(id)a3 withState:(id)a4;
- (void)mapTablePropertiesWithState:(id)a3;
@end

@implementation PMTableMapper

- (id)tableBorderStyle
{
  v2 = [(OADTable *)self->mTable tableProperties];
  v3 = [v2 style];
  v4 = [v3 wholeTableStyle];
  v5 = [v4 cellStyle];
  v6 = [v5 borderStyle];

  return v6;
}

- (PMTableMapper)initWithOadTable:(id)a3 bounds:(id)a4 parent:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = PMTableMapper;
  v12 = [(CMMapper *)&v19 initWithParent:v11];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->mTable, a3);
    v14 = objc_alloc_init(CMTableGridInfo);
    mGrid = v13->mGrid;
    v13->mGrid = v14;

    v16 = objc_alloc_init(CMDrawableStyle);
    mStyle = v13->mStyle;
    v13->mStyle = v16;

    objc_storeStrong(&v13->mBounds, a4);
  }

  return v13;
}

- (void)mapAt:(id)a3 withState:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [OIXMLElement elementWithType:18];
  [v12 addChild:v7];
  mStyle = self->mStyle;
  [(OADOrientedBounds *)self->mBounds bounds];
  [(CMDrawableStyle *)mStyle addPositionProperties:?];
  [(PMTableMapper *)self mapTablePropertiesWithState:v6];
  [(PMTableMapper *)self mapColumnGridAt:v7 withState:v6];
  v9 = [(OADTable *)self->mTable rowCount];
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      v11 = [[PMTableRowMapper alloc] initWithOadTable:self->mTable rowIndex:i parent:self];
      [(PMTableRowMapper *)v11 mapAt:v7 withState:v6];
    }
  }

  [(CMMapper *)self addStyleUsingGlobalCacheTo:v7 style:self->mStyle];
}

- (float)columnWidthAtIndex:(unint64_t)a3 state:(id)a4
{
  v5 = [(OADTable *)self->mTable grid:a3];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 columnAtIndex:a3];
    [v7 width];
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

- (id)defaultCellFillWithState:(id)a3
{
  v4 = a3;
  v5 = [(PMTableMapper *)self cellStyle];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 fill];
    v8 = [CMColorProperty nsColorFromOADFill:v7 state:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)defaultCellFillForRow:(unint64_t)a3 withState:(id)a4
{
  v6 = a4;
  v7 = [(OADTable *)self->mTable tableProperties];
  v8 = [v7 style];
  v9 = v8;
  if (!v8)
  {
    v16 = 0;
    goto LABEL_24;
  }

  v10 = [v8 background];
  v11 = [v10 fill];

  if (!v11)
  {
    if (a3 || ![v7 firstRow])
    {
      if ([v7 bandRow])
      {
        if ([v7 firstRow] == (a3 & 1))
        {
          [v9 band1HorzStyle];
        }

        else
        {
          [v9 wholeTableStyle];
        }
        v31 = ;
        v32 = [v31 cellStyle];
        v33 = [v32 fill];
      }

      else
      {
        v31 = [v9 wholeTableStyle];
        v32 = [v31 cellStyle];
        v33 = [v32 fill];
      }

      v14 = v33;

      v15 = [CMColorProperty nsColorFromOADFill:v14 state:v6];
      goto LABEL_22;
    }

    goto LABEL_5;
  }

  if (!a3 && [v7 firstRow])
  {
LABEL_5:
    v12 = [v9 firstRowStyle];
    v13 = [v12 cellStyle];
    v14 = [v13 fill];

    v15 = [CMColorProperty nsColorFromOADFill:v14 state:v6];
LABEL_22:
    v16 = v15;

    goto LABEL_23;
  }

  if ([v7 bandRow])
  {
    v17 = [v7 firstRow];
    v18 = [CMColorProperty nsColorFromOADFill:v11 state:v6];
    v14 = v18;
    if ((v17 ^ a3))
    {
      v19 = 0.2;
    }

    else
    {
      v19 = 0.4;
    }

    [v18 redComponent];
    v21 = v20;
    [v14 greenComponent];
    v23 = v22;
    [v14 blueComponent];
    v25 = v24;
    [v14 alphaComponent];
    v26 = v21;
    v27 = v23;
    v28 = v25;
    v30 = v29;
    v15 = [OITSUColor colorWithRed:((1.0 - v19) + (v26 * v19)) green:((1.0 - v19) + (v27 * v19)) blue:((1.0 - v19) + (v28 * v19)) alpha:v30];
    goto LABEL_22;
  }

  v16 = [CMColorProperty nsColorFromOADFill:v11 state:v6];
LABEL_23:

LABEL_24:

  return v16;
}

- (void)mapTablePropertiesWithState:(id)a3
{
  v10 = a3;
  v4 = [(OADTable *)self->mTable tableProperties];
  v5 = [v4 style];
  v6 = [v5 background];

  v7 = [v6 fill];

  if (v7)
  {
    v8 = [v6 fill];
    v9 = [CMColorProperty nsColorFromOADFill:v8 state:v10];

    if (v9)
    {
      [(CMStyle *)self->mStyle appendPropertyForName:0x286F07DF0 color:v9];
    }
  }

  [(CMStyle *)self->mStyle appendPropertyForName:0x286F08030 intValue:0];
  [(CMStyle *)self->mStyle appendPropertyForName:0x286F07D50 intValue:0];
  [(CMStyle *)self->mStyle appendPropertyForName:0x286F07D30 intValue:0];
}

- (void)mapColumnGridAt:(id)a3 withState:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(OADTable *)self->mTable grid];
  for (i = 0; i < [v7 columnCount]; ++i)
  {
    v9 = [OIXMLElement elementWithType:2];
    v10 = objc_alloc_init(CMStyle);
    [(PMTableMapper *)self columnWidthAtIndex:i state:v6];
    [(CMStyle *)v10 appendPropertyForName:0x286EEA530 length:1 unit:v11];
    [(CMMapper *)self addStyleUsingGlobalCacheTo:v9 style:v10 embedStyle:1];
    [v12 addChild:v9];
  }
}

- (id)cellStyle
{
  v2 = [(OADTable *)self->mTable tableProperties];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 style];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 wholeTableStyle];
      v7 = v6;
      if (v6)
      {
        v8 = [v6 cellStyle];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end