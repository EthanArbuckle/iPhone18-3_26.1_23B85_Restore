@interface PMTableCellMapper
- (PMTableCellMapper)initWithOadTableCell:(id)cell rowIndex:(unint64_t)index columnIndex:(int)columnIndex parent:(id)parent;
- (float)widthWithState:(id)state;
- (id)rowMapper;
- (id)tableMapper;
- (void)mapAt:(id)at withState:(id)state;
- (void)mapBordersWithState:(id)state;
- (void)mapCellPropertiesWithState:(id)state textAnchor:(unsigned __int8)anchor;
@end

@implementation PMTableCellMapper

- (id)tableMapper
{
  WeakRetained = objc_loadWeakRetained(&self->super.mParent);
  parent = [WeakRetained parent];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = parent;
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

- (PMTableCellMapper)initWithOadTableCell:(id)cell rowIndex:(unint64_t)index columnIndex:(int)columnIndex parent:(id)parent
{
  cellCopy = cell;
  parentCopy = parent;
  v18.receiver = self;
  v18.super_class = PMTableCellMapper;
  v13 = [(CMMapper *)&v18 initWithParent:parentCopy];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->mCell, cell);
    v14->mColIndex = columnIndex;
    v14->mRowIndex = index;
    v15 = objc_alloc_init(CMStyle);
    mStyle = v14->mStyle;
    v14->mStyle = v15;
  }

  return v14;
}

- (void)mapAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  if ([(OADTableCell *)self->mCell horzMerge]|| [(OADTableCell *)self->mCell vertMerge])
  {
    v8 = atCopy;
  }

  else
  {
    v9 = [OIXMLElement elementWithType:19];
    [atCopy addChild:v9];
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

    [(PMTableCellMapper *)self mapBordersWithState:stateCopy];
    textBody = [(OADTableCell *)self->mCell textBody];
    v18 = [[PMShapeTextMapper alloc] initWithOadTextBody:textBody bounds:0 parent:self];
    textAnchor = [(PMShapeTextMapper *)v18 textAnchor];
    [(PMShapeTextMapper *)v18 mapAt:v8 withState:stateCopy];
    [(PMTableCellMapper *)self mapCellPropertiesWithState:stateCopy textAnchor:textAnchor];
    mStyle = self->mStyle;
    v21.receiver = self;
    v21.super_class = PMTableCellMapper;
    [(CMMapper *)&v21 addStyleUsingGlobalCacheTo:v8 style:mStyle];
  }
}

- (float)widthWithState:(id)state
{
  stateCopy = state;
  tableMapper = [(PMTableCellMapper *)self tableMapper];
  [tableMapper columnWidthAtIndex:self->mColIndex state:stateCopy];
  v7 = v6;
  for (i = 1; i < [(OADTableCell *)self->mCell gridSpan]; ++i)
  {
    [tableMapper columnWidthAtIndex:i + self->mColIndex state:stateCopy];
    v7 = v7 + v9;
  }

  return v7;
}

- (void)mapBordersWithState:(id)state
{
  stateCopy = state;
  mRowIndex = self->mRowIndex;
  tableMapper = [(PMTableCellMapper *)self tableMapper];
  rowCount = [tableMapper rowCount];

  mColIndex = self->mColIndex;
  rowMapper = [(PMTableCellMapper *)self rowMapper];
  cellCount = [rowMapper cellCount];

  tableMapper2 = [(PMTableCellMapper *)self tableMapper];
  tableBorderStyle = [tableMapper2 tableBorderStyle];

  currentRowStyle = [stateCopy currentRowStyle];
  cellStyle = [currentRowStyle cellStyle];
  borderStyle = [cellStyle borderStyle];

  properties = [(OADTableCell *)self->mCell properties];
  v16 = objc_alloc_init(CMBordersProperty);
  topStroke = [properties topStroke];

  if (topStroke)
  {
    topStroke2 = [properties topStroke];
    [(CMBordersProperty *)v16 setFromOadStroke:topStroke2 atLocation:1 state:stateCopy];
  }

  else
  {
    topStroke3 = [borderStyle topStroke];

    if (topStroke3)
    {
      topStroke2 = [borderStyle topStroke];
      [(CMBordersProperty *)v16 setFromOadStroke:topStroke2 atLocation:1 state:stateCopy];
    }

    else
    {
      if (mRowIndex)
      {
        [tableBorderStyle horzInsideStroke];
      }

      else
      {
        [tableBorderStyle topStroke];
      }
      topStroke2 = ;
      [(CMBordersProperty *)v16 setFromOadStroke:topStroke2 atLocation:1 state:stateCopy];
    }
  }

  bottomStroke = [properties bottomStroke];

  if (bottomStroke)
  {
    bottomStroke2 = [properties bottomStroke];
    [(CMBordersProperty *)v16 setFromOadStroke:bottomStroke2 atLocation:3 state:stateCopy];
  }

  else
  {
    bottomStroke3 = [borderStyle bottomStroke];

    if (bottomStroke3)
    {
      bottomStroke2 = [borderStyle bottomStroke];
      [(CMBordersProperty *)v16 setFromOadStroke:bottomStroke2 atLocation:3 state:stateCopy];
    }

    else
    {
      if (mRowIndex == rowCount - 1)
      {
        [tableBorderStyle bottomStroke];
      }

      else
      {
        [tableBorderStyle horzInsideStroke];
      }
      bottomStroke2 = ;
      [(CMBordersProperty *)v16 setFromOadStroke:bottomStroke2 atLocation:3 state:stateCopy];
    }
  }

  leftStroke = [properties leftStroke];

  if (leftStroke)
  {
    leftStroke2 = [properties leftStroke];
    [(CMBordersProperty *)v16 setFromOadStroke:leftStroke2 atLocation:2 state:stateCopy];
  }

  else
  {
    leftStroke3 = [borderStyle leftStroke];

    if (leftStroke3)
    {
      leftStroke2 = [borderStyle leftStroke];
      [(CMBordersProperty *)v16 setFromOadStroke:leftStroke2 atLocation:2 state:stateCopy];
    }

    else
    {
      if (mColIndex)
      {
        [tableBorderStyle vertInsideStroke];
      }

      else
      {
        [tableBorderStyle leftStroke];
      }
      leftStroke2 = ;
      [(CMBordersProperty *)v16 setFromOadStroke:leftStroke2 atLocation:2 state:stateCopy];
    }
  }

  rightStroke = [properties rightStroke];

  if (rightStroke)
  {
    rightStroke2 = [properties rightStroke];
    [(CMBordersProperty *)v16 setFromOadStroke:rightStroke2 atLocation:4 state:stateCopy];
  }

  else
  {
    rightStroke3 = [borderStyle rightStroke];

    if (rightStroke3)
    {
      rightStroke2 = [borderStyle rightStroke];
      [(CMBordersProperty *)v16 setFromOadStroke:rightStroke2 atLocation:4 state:stateCopy];
    }

    else
    {
      if (cellCount - 1 == mColIndex)
      {
        [tableBorderStyle rightStroke];
      }

      else
      {
        [tableBorderStyle vertInsideStroke];
      }
      rightStroke2 = ;
      [(CMBordersProperty *)v16 setFromOadStroke:rightStroke2 atLocation:4 state:stateCopy];
    }
  }

  [(CMBordersProperty *)v16 adjustValues];
  [(CMStyle *)self->mStyle addProperty:v16 forKey:@"cellBorders"];
}

- (void)mapCellPropertiesWithState:(id)state textAnchor:(unsigned __int8)anchor
{
  anchorCopy = anchor;
  stateCopy = state;
  properties = [(OADTableCell *)self->mCell properties];
  if ([properties isTextAnchorOverridden])
  {
    anchorCopy = [properties textAnchor];
  }

  if (anchorCopy <= 2)
  {
    [(CMStyle *)self->mStyle appendPropertyForName:0x286F077D0 stringValue:*(&off_2799CE190)[anchorCopy]];
  }

  fill = [properties fill];

  if (fill)
  {
    fill2 = [properties fill];
    v9 = [CMColorProperty nsColorFromOADFill:fill2 state:stateCopy];

    if (!v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
    tableMapper = [(PMTableCellMapper *)self tableMapper];
    v9 = [tableMapper defaultCellFillForRow:self->mRowIndex withState:stateCopy];

    if (!v9)
    {
      goto LABEL_10;
    }
  }

  [(CMStyle *)self->mStyle appendPropertyForName:0x286F07DF0 color:v9];
LABEL_10:
}

@end