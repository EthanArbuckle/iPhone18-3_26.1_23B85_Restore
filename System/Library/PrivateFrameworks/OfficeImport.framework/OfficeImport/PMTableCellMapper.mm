@interface PMTableCellMapper
- (PMTableCellMapper)initWithOadTableCell:(id)a3 rowIndex:(unint64_t)a4 columnIndex:(int)a5 parent:(id)a6;
- (float)widthWithState:(id)a3;
- (id)rowMapper;
- (id)tableMapper;
- (void)mapAt:(id)a3 withState:(id)a4;
- (void)mapBordersWithState:(id)a3;
- (void)mapCellPropertiesWithState:(id)a3 textAnchor:(unsigned __int8)a4;
@end

@implementation PMTableCellMapper

- (id)tableMapper
{
  WeakRetained = objc_loadWeakRetained(&self->super.mParent);
  v3 = [WeakRetained parent];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)rowMapper
{
  WeakRetained = objc_loadWeakRetained(&self->super.mParent);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = objc_loadWeakRetained(&self->super.mParent);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (PMTableCellMapper)initWithOadTableCell:(id)a3 rowIndex:(unint64_t)a4 columnIndex:(int)a5 parent:(id)a6
{
  v11 = a3;
  v12 = a6;
  v18.receiver = self;
  v18.super_class = PMTableCellMapper;
  v13 = [(CMMapper *)&v18 initWithParent:v12];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->mCell, a3);
    v14->mColIndex = a5;
    v14->mRowIndex = a4;
    v15 = objc_alloc_init(CMStyle);
    mStyle = v14->mStyle;
    v14->mStyle = v15;
  }

  return v14;
}

- (void)mapAt:(id)a3 withState:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(OADTableCell *)self->mCell horzMerge]|| [(OADTableCell *)self->mCell vertMerge])
  {
    v8 = v6;
  }

  else
  {
    v9 = [OIXMLElement elementWithType:19];
    [v6 addChild:v9];
    v8 = v9;

    if ([(OADTableCell *)self->mCell gridSpan]>= 2)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", -[OADTableCell gridSpan](self->mCell, "gridSpan")];
      v11 = [OIXMLAttribute attributeWithName:0x286F07810 stringValue:v10];
      [v8 addAttribute:v11];
    }

    if ([(OADTableCell *)self->mCell rowSpan]< 2)
    {
      WeakRetained = objc_loadWeakRetained(&self->super.mParent);
      [WeakRetained height];
      v16 = v15;

      [(CMStyle *)self->mStyle appendPropertyForName:0x286EF6790 length:10 unit:v16];
    }

    else
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", -[OADTableCell rowSpan](self->mCell, "rowSpan")];
      v13 = [OIXMLAttribute attributeWithName:0x286F07D90 stringValue:v12];
      [v8 addAttribute:v13];
    }

    [(PMTableCellMapper *)self mapBordersWithState:v7];
    v17 = [(OADTableCell *)self->mCell textBody];
    v18 = [[PMShapeTextMapper alloc] initWithOadTextBody:v17 bounds:0 parent:self];
    v19 = [(PMShapeTextMapper *)v18 textAnchor];
    [(PMShapeTextMapper *)v18 mapAt:v8 withState:v7];
    [(PMTableCellMapper *)self mapCellPropertiesWithState:v7 textAnchor:v19];
    mStyle = self->mStyle;
    v21.receiver = self;
    v21.super_class = PMTableCellMapper;
    [(CMMapper *)&v21 addStyleUsingGlobalCacheTo:v8 style:mStyle];
  }
}

- (float)widthWithState:(id)a3
{
  v4 = a3;
  v5 = [(PMTableCellMapper *)self tableMapper];
  [v5 columnWidthAtIndex:self->mColIndex state:v4];
  v7 = v6;
  for (i = 1; i < [(OADTableCell *)self->mCell gridSpan]; ++i)
  {
    [v5 columnWidthAtIndex:i + self->mColIndex state:v4];
    v7 = v7 + v9;
  }

  return v7;
}

- (void)mapBordersWithState:(id)a3
{
  v29 = a3;
  mRowIndex = self->mRowIndex;
  v5 = [(PMTableCellMapper *)self tableMapper];
  v6 = [v5 rowCount];

  mColIndex = self->mColIndex;
  v8 = [(PMTableCellMapper *)self rowMapper];
  v9 = [v8 cellCount];

  v10 = [(PMTableCellMapper *)self tableMapper];
  v11 = [v10 tableBorderStyle];

  v12 = [v29 currentRowStyle];
  v13 = [v12 cellStyle];
  v14 = [v13 borderStyle];

  v15 = [(OADTableCell *)self->mCell properties];
  v16 = objc_alloc_init(CMBordersProperty);
  v17 = [v15 topStroke];

  if (v17)
  {
    v18 = [v15 topStroke];
    [(CMBordersProperty *)v16 setFromOadStroke:v18 atLocation:1 state:v29];
  }

  else
  {
    v19 = [v14 topStroke];

    if (v19)
    {
      v18 = [v14 topStroke];
      [(CMBordersProperty *)v16 setFromOadStroke:v18 atLocation:1 state:v29];
    }

    else
    {
      if (mRowIndex)
      {
        [v11 horzInsideStroke];
      }

      else
      {
        [v11 topStroke];
      }
      v18 = ;
      [(CMBordersProperty *)v16 setFromOadStroke:v18 atLocation:1 state:v29];
    }
  }

  v20 = [v15 bottomStroke];

  if (v20)
  {
    v21 = [v15 bottomStroke];
    [(CMBordersProperty *)v16 setFromOadStroke:v21 atLocation:3 state:v29];
  }

  else
  {
    v22 = [v14 bottomStroke];

    if (v22)
    {
      v21 = [v14 bottomStroke];
      [(CMBordersProperty *)v16 setFromOadStroke:v21 atLocation:3 state:v29];
    }

    else
    {
      if (mRowIndex == v6 - 1)
      {
        [v11 bottomStroke];
      }

      else
      {
        [v11 horzInsideStroke];
      }
      v21 = ;
      [(CMBordersProperty *)v16 setFromOadStroke:v21 atLocation:3 state:v29];
    }
  }

  v23 = [v15 leftStroke];

  if (v23)
  {
    v24 = [v15 leftStroke];
    [(CMBordersProperty *)v16 setFromOadStroke:v24 atLocation:2 state:v29];
  }

  else
  {
    v25 = [v14 leftStroke];

    if (v25)
    {
      v24 = [v14 leftStroke];
      [(CMBordersProperty *)v16 setFromOadStroke:v24 atLocation:2 state:v29];
    }

    else
    {
      if (mColIndex)
      {
        [v11 vertInsideStroke];
      }

      else
      {
        [v11 leftStroke];
      }
      v24 = ;
      [(CMBordersProperty *)v16 setFromOadStroke:v24 atLocation:2 state:v29];
    }
  }

  v26 = [v15 rightStroke];

  if (v26)
  {
    v27 = [v15 rightStroke];
    [(CMBordersProperty *)v16 setFromOadStroke:v27 atLocation:4 state:v29];
  }

  else
  {
    v28 = [v14 rightStroke];

    if (v28)
    {
      v27 = [v14 rightStroke];
      [(CMBordersProperty *)v16 setFromOadStroke:v27 atLocation:4 state:v29];
    }

    else
    {
      if (v9 - 1 == mColIndex)
      {
        [v11 rightStroke];
      }

      else
      {
        [v11 vertInsideStroke];
      }
      v27 = ;
      [(CMBordersProperty *)v16 setFromOadStroke:v27 atLocation:4 state:v29];
    }
  }

  [(CMBordersProperty *)v16 adjustValues];
  [(CMStyle *)self->mStyle addProperty:v16 forKey:@"cellBorders"];
}

- (void)mapCellPropertiesWithState:(id)a3 textAnchor:(unsigned __int8)a4
{
  v4 = a4;
  v11 = a3;
  v6 = [(OADTableCell *)self->mCell properties];
  if ([v6 isTextAnchorOverridden])
  {
    v4 = [v6 textAnchor];
  }

  if (v4 <= 2)
  {
    [(CMStyle *)self->mStyle appendPropertyForName:0x286F077D0 stringValue:*(&off_2799CE190)[v4]];
  }

  v7 = [v6 fill];

  if (v7)
  {
    v8 = [v6 fill];
    v9 = [CMColorProperty nsColorFromOADFill:v8 state:v11];

    if (!v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = [(PMTableCellMapper *)self tableMapper];
    v9 = [v10 defaultCellFillForRow:self->mRowIndex withState:v11];

    if (!v9)
    {
      goto LABEL_10;
    }
  }

  [(CMStyle *)self->mStyle appendPropertyForName:0x286F07DF0 color:v9];
LABEL_10:
}

@end