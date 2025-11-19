@interface OADTable
+ (void)applyTextStyle:(id)a3 toParagraphProperties:(id)a4;
- (OADTMatrixPos)masterPosOfPos:(OADTMatrixPos)a3;
- (OADTable)init;
- (id)addRow;
- (id)cellAtPos:(OADTMatrixPos)a3;
- (id)description;
- (id)masterCellOfPos:(OADTMatrixPos)a3;
- (void)changeParentTextListStylePreservingEffectiveValues:(id)a3;
- (void)flattenStyle;
- (void)flipTableRTL;
- (void)setParentTextListStyle:(id)a3;
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
  v3 = [(OADTable *)self rowCount];
  if (v3)
  {
    v4 = v3;
    for (i = 0; i != v4; ++i)
    {
      v6 = [(OADTable *)self rowAtIndex:i];
      [v6 flipCellsRTL];
    }
  }
}

- (void)setParentTextListStyle:(id)a3
{
  v11 = a3;
  v4 = [(OADTable *)self rowCount];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v6 = [(OADTable *)self rowAtIndex:i];
      v7 = [v6 cellCount];
      if (v7)
      {
        for (j = 0; j != v7; ++j)
        {
          v9 = [v6 cellAtIndex:j];
          v10 = [v9 textBody];
          [v10 setParentTextListStyle:v11];
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

- (id)cellAtPos:(OADTMatrixPos)a3
{
  v4 = [(OADTable *)self rowAtIndex:a3.var0];
  v5 = [v4 cellAtIndex:*&a3 >> 32];

  return v5;
}

- (OADTMatrixPos)masterPosOfPos:(OADTMatrixPos)a3
{
  if (a3.var0 < 1)
  {
    var0 = a3.var0;
  }

  else
  {
    v5 = a3.var0;
    do
    {
      v6 = [(OADTable *)self cellAtPos:*&a3 & 0xFFFFFFFF00000000 | v5];
      v7 = [v6 vertMerge];
      --v5;
    }

    while ((v7 & 1) != 0);
    var0 = v5 + 1;
  }

  v9 = HIDWORD(*&a3);
  if (*&a3 <= 0)
  {
    return (*&a3 & 0xFFFFFFFF00000000 | var0);
  }

  else
  {
    v10 = var0;
    do
    {
      v11 = (v10 | (v9 << 32));
      v12 = [(OADTable *)self cellAtPos:v11];
      v13 = [v12 horzMerge];
      v9 = (v9 - 1);
    }

    while ((v13 & 1) != 0);
  }

  return v11;
}

- (id)masterCellOfPos:(OADTMatrixPos)a3
{
  v4 = [(OADTable *)self masterPosOfPos:a3];

  return [(OADTable *)self cellAtPos:v4];
}

- (void)flattenStyle
{
  v2 = [(OADTableStyleResolver *)[OADTableStyleFlattener alloc] initWithTable:self];
  [(OADTableStyleResolver *)v2 flatten];
}

+ (void)applyTextStyle:(id)a3 toParagraphProperties:(id)a4
{
  v14 = a3;
  v5 = a4;
  v6 = [v5 parent];
  [v5 setParent:0];
  v7 = [v14 fontReference];

  if (v7)
  {
    v8 = [v14 fontReference];
    [v8 setColor:0];

    v9 = [v14 fontReference];
    [v9 applyToParagraphProperties:v5];
  }

  v10 = [v14 color];
  if (v10)
  {
    v11 = [v5 hasFill];

    if ((v11 & 1) == 0)
    {
      v12 = objc_alloc_init(OADSolidFill);
      v13 = [v14 color];
      [(OADSolidFill *)v12 setColor:v13];

      [v5 setFill:v12];
    }
  }

  if ([v14 bold] != 2 && (objc_msgSend(v5, "hasIsBold") & 1) == 0)
  {
    [v5 setIsBold:{objc_msgSend(v14, "bold") == 0}];
  }

  if ([v14 italic] != 2 && (objc_msgSend(v5, "hasIsItalic") & 1) == 0)
  {
    [v5 setIsItalic:{objc_msgSend(v14, "italic") == 0}];
  }

  [v5 setParent:v6];
}

- (void)changeParentTextListStylePreservingEffectiveValues:(id)a3
{
  v14 = a3;
  v4 = [(OADTable *)self tableProperties];
  v5 = [v4 style];

  if (v5)
  {
    v6 = [[OADTableUnnecessaryOverrideRemover alloc] initWithTable:self parentTextListStyle:v14];
    [(OADTableStyleResolver *)v6 flatten];
  }

  else
  {
    v7 = [(OADTable *)self rowCount];
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        v9 = [(OADTable *)self rowAtIndex:i];
        v10 = [v9 cellCount];
        if (v10)
        {
          for (j = 0; j != v10; ++j)
          {
            v12 = [v9 cellAtIndex:j];
            v13 = [v12 textBody];
            [v13 changeParentTextListStylePreservingEffectiveValues:v14 ownTextListStyle:0];
          }
        }
      }
    }
  }
}

@end