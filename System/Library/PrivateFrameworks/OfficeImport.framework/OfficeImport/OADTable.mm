@interface OADTable
+ (void)applyTextStyle:(id)style toParagraphProperties:(id)properties;
- (OADTMatrixPos)masterPosOfPos:(OADTMatrixPos)pos;
- (OADTable)init;
- (id)addRow;
- (id)cellAtPos:(OADTMatrixPos)pos;
- (id)description;
- (id)masterCellOfPos:(OADTMatrixPos)pos;
- (void)changeParentTextListStylePreservingEffectiveValues:(id)values;
- (void)flattenStyle;
- (void)flipTableRTL;
- (void)setParentTextListStyle:(id)style;
@end

@implementation OADTable

- (OADTable)init
{
  v3 = objc_opt_class();
  v10.receiver = self;
  v10.super_class = OADTable;
  v4 = [(OADDrawable *)&v10 initWithPropertiesClass:v3];
  if (v4)
  {
    v5 = objc_alloc_init(OADTableGrid);
    mGrid = v4->mGrid;
    v4->mGrid = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mRows = v4->mRows;
    v4->mRows = v7;
  }

  return v4;
}

- (id)addRow
{
  v3 = objc_alloc_init(OADTableRow);
  [(NSMutableArray *)self->mRows addObject:v3];

  return v3;
}

- (void)flipTableRTL
{
  [(OADTableGrid *)self->mGrid flipColumnsRTL];
  rowCount = [(OADTable *)self rowCount];
  if (rowCount)
  {
    v4 = rowCount;
    for (i = 0; i != v4; ++i)
    {
      v6 = [(OADTable *)self rowAtIndex:i];
      [v6 flipCellsRTL];
    }
  }
}

- (void)setParentTextListStyle:(id)style
{
  styleCopy = style;
  rowCount = [(OADTable *)self rowCount];
  if (rowCount)
  {
    for (i = 0; i != rowCount; ++i)
    {
      v6 = [(OADTable *)self rowAtIndex:i];
      cellCount = [v6 cellCount];
      if (cellCount)
      {
        for (j = 0; j != cellCount; ++j)
        {
          v9 = [v6 cellAtIndex:j];
          textBody = [v9 textBody];
          [textBody setParentTextListStyle:styleCopy];
        }
      }
    }
  }
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADTable;
  v2 = [(OADDrawable *)&v4 description];

  return v2;
}

- (id)cellAtPos:(OADTMatrixPos)pos
{
  v4 = [(OADTable *)self rowAtIndex:pos.var0];
  v5 = [v4 cellAtIndex:*&pos >> 32];

  return v5;
}

- (OADTMatrixPos)masterPosOfPos:(OADTMatrixPos)pos
{
  if (pos.var0 < 1)
  {
    var0 = pos.var0;
  }

  else
  {
    v5 = pos.var0;
    do
    {
      v6 = [(OADTable *)self cellAtPos:*&pos & 0xFFFFFFFF00000000 | v5];
      vertMerge = [v6 vertMerge];
      --v5;
    }

    while ((vertMerge & 1) != 0);
    var0 = v5 + 1;
  }

  v9 = HIDWORD(*&pos);
  if (*&pos <= 0)
  {
    return (*&pos & 0xFFFFFFFF00000000 | var0);
  }

  else
  {
    v10 = var0;
    do
    {
      v11 = (v10 | (v9 << 32));
      v12 = [(OADTable *)self cellAtPos:v11];
      horzMerge = [v12 horzMerge];
      v9 = (v9 - 1);
    }

    while ((horzMerge & 1) != 0);
  }

  return v11;
}

- (id)masterCellOfPos:(OADTMatrixPos)pos
{
  v4 = [(OADTable *)self masterPosOfPos:pos];

  return [(OADTable *)self cellAtPos:v4];
}

- (void)flattenStyle
{
  v2 = [(OADTableStyleResolver *)[OADTableStyleFlattener alloc] initWithTable:self];
  [(OADTableStyleResolver *)v2 flatten];
}

+ (void)applyTextStyle:(id)style toParagraphProperties:(id)properties
{
  styleCopy = style;
  propertiesCopy = properties;
  parent = [propertiesCopy parent];
  [propertiesCopy setParent:0];
  fontReference = [styleCopy fontReference];

  if (fontReference)
  {
    fontReference2 = [styleCopy fontReference];
    [fontReference2 setColor:0];

    fontReference3 = [styleCopy fontReference];
    [fontReference3 applyToParagraphProperties:propertiesCopy];
  }

  color = [styleCopy color];
  if (color)
  {
    hasFill = [propertiesCopy hasFill];

    if ((hasFill & 1) == 0)
    {
      v12 = objc_alloc_init(OADSolidFill);
      color2 = [styleCopy color];
      [(OADSolidFill *)v12 setColor:color2];

      [propertiesCopy setFill:v12];
    }
  }

  if ([styleCopy bold] != 2 && (objc_msgSend(propertiesCopy, "hasIsBold") & 1) == 0)
  {
    [propertiesCopy setIsBold:{objc_msgSend(styleCopy, "bold") == 0}];
  }

  if ([styleCopy italic] != 2 && (objc_msgSend(propertiesCopy, "hasIsItalic") & 1) == 0)
  {
    [propertiesCopy setIsItalic:{objc_msgSend(styleCopy, "italic") == 0}];
  }

  [propertiesCopy setParent:parent];
}

- (void)changeParentTextListStylePreservingEffectiveValues:(id)values
{
  valuesCopy = values;
  tableProperties = [(OADTable *)self tableProperties];
  style = [tableProperties style];

  if (style)
  {
    v6 = [[OADTableUnnecessaryOverrideRemover alloc] initWithTable:self parentTextListStyle:valuesCopy];
    [(OADTableStyleResolver *)v6 flatten];
  }

  else
  {
    rowCount = [(OADTable *)self rowCount];
    if (rowCount)
    {
      for (i = 0; i != rowCount; ++i)
      {
        v9 = [(OADTable *)self rowAtIndex:i];
        cellCount = [v9 cellCount];
        if (cellCount)
        {
          for (j = 0; j != cellCount; ++j)
          {
            v12 = [v9 cellAtIndex:j];
            textBody = [v12 textBody];
            [textBody changeParentTextListStylePreservingEffectiveValues:valuesCopy ownTextListStyle:0];
          }
        }
      }
    }
  }
}

@end