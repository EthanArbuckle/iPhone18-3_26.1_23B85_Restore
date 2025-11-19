@interface EMCellMapper
- (BOOL)isCellEmpty;
- (BOOL)isCellMerged;
- (BOOL)isCellSpreading:(id)a3;
- (EMCellMapper)initWithEDCell:(EDCellHeader *)a3 rowInfo:(EDRowInfo *)a4 parent:(id)a5 state:(id)a6;
- (EMCellMapper)initWithParent:(id)a3;
- (id)mapHyperlink:(id)a3 at:(id)a4;
- (void)adjustColumnSpanForGrid:(double *)a3 columnCount:(unint64_t)a4 nextCell:(EDCellHeader *)a5 withState:(id)a6;
- (void)mapAt:(id)a3 withState:(id)a4 height:(double)a5 nextCell:(EDCellHeader *)a6;
- (void)mapRowColSpansAt:(id)a3 withState:(id)a4;
@end

@implementation EMCellMapper

- (BOOL)isCellMerged
{
  result = 0;
  if (self->edMergedCellReference)
  {
    v3 = columnNumberForEDCell(self->edCell);
    self->firstColumn = [(EDReference *)self->edMergedCellReference firstColumn];
    rowNumber = self->rowNumber;
    if (__PAIR64__(v3, [(EDReference *)self->edMergedCellReference firstRow]) != __PAIR64__(self->firstColumn, rowNumber))
    {
      return 1;
    }
  }

  return result;
}

- (BOOL)isCellEmpty
{
  v3 = objc_opt_class();
  edCell = self->edCell;

  return [v3 isCellEmpty:edCell];
}

- (EMCellMapper)initWithParent:(id)a3
{
  v4.receiver = self;
  v4.super_class = EMCellMapper;
  result = [(CMMapper *)&v4 initWithParent:a3];
  if (result)
  {
    result->firstCellFlag = 0;
    result->spreadLeftFlag = 1;
    result->firstColumn = -1;
    result->lastColumn = -1;
    result->edCell = 0;
    result->rowNumber = -1;
    result->columnWidth = 0.0;
  }

  return result;
}

- (EMCellMapper)initWithEDCell:(EDCellHeader *)a3 rowInfo:(EDRowInfo *)a4 parent:(id)a5 state:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = [(EMCellMapper *)self initWithParent:v10];
  v13 = v12;
  if (v12)
  {
    v12->edCell = a3;
    v12->rowNumber = a4->var1;
    v14 = columnNumberForEDCell(a3);
    v13->firstColumn = v14;
    if (v13->edCell)
    {
      v15 = [v11 currentSheet];
      v16 = [v15 mergedCells];

      v17 = [v16 referenceContainingRow:v13->rowNumber column:v13->firstColumn];
      edMergedCellReference = v13->edMergedCellReference;
      v13->edMergedCellReference = v17;

      v19 = v13->edMergedCellReference;
      if (v19)
      {
        firstColumn = [(EDReference *)v19 lastColumn];
      }

      else
      {
        firstColumn = v13->firstColumn;
      }

      v13->lastColumn = firstColumn;

      v14 = v13->firstColumn;
    }

    v13->columnSpan = v13->lastColumn - v14 + 1;
  }

  return v13;
}

- (BOOL)isCellSpreading:(id)a3
{
  v4 = a3;
  edCell = self->edCell;
  if (edCell && typeForEDCell(edCell))
  {
    v6 = self->edCell;
    v7 = [v4 document];
    v8 = [v7 resources];
    v9 = styleForEDCell(v6, v8);

    if ([v9 isAlignmentInfoOverridden])
    {
      v10 = [v9 alignmentInfo];
      v11 = ([v10 isHorizontalAlignOverridden] & 1) != 0 && objc_msgSend(v10, "horizontalAlignment") == 6;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)adjustColumnSpanForGrid:(double *)a3 columnCount:(unint64_t)a4 nextCell:(EDCellHeader *)a5 withState:(id)a6
{
  v17 = a6;
  v10 = self->lastColumn - self->firstColumn + 1;
  self->columnSpan = v10;
  if (a3)
  {
    self->columnWidth = 0.0;
    firstColumn = self->firstColumn;
    lastColumn = self->lastColumn;
    if (firstColumn <= lastColumn && firstColumn < a4)
    {
      v14 = 0.0;
      do
      {
        v15 = a3[firstColumn];
        if (v15 == 0.0)
        {
          self->columnSpan = --v10;
          lastColumn = self->lastColumn;
        }

        v14 = v14 + v15;
        self->columnWidth = v14;
        if (firstColumn + 1 >= a4)
        {
          break;
        }
      }

      while (firstColumn++ < lastColumn);
    }

    if (a5 && typeForEDCell(a5) && columnNumberForEDCell(a5) == self->lastColumn + 1)
    {
      self->spreadLeftFlag = 0;
    }
  }
}

- (void)mapRowColSpansAt:(id)a3 withState:(id)a4
{
  v14 = a3;
  v6 = a4;
  if (self->columnSpan >= 2)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", self->columnSpan];
    v8 = [OIXMLAttribute attributeWithName:@"colspan" stringValue:v7];
    [v14 addAttribute:v8];
  }

  edMergedCellReference = self->edMergedCellReference;
  if (edMergedCellReference)
  {
    v10 = [(EDReference *)edMergedCellReference lastRow];
    v11 = v10 - [(EDReference *)self->edMergedCellReference firstRow];
    if (v11 >= 1)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", (v11 + 1)];
      v13 = [OIXMLAttribute attributeWithName:@"rowspan" stringValue:v12];
      [v14 addAttribute:v13];
    }
  }
}

- (void)mapAt:(id)a3 withState:(id)a4 height:(double)a5 nextCell:(EDCellHeader *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [OIXMLElement elementWithType:19];
  [v10 addChild:v12];
  edMergedCellReference = self->edMergedCellReference;
  if (edMergedCellReference && (v14 = [(EDReference *)edMergedCellReference lastRow], v14 > [(EDReference *)self->edMergedCellReference firstRow]))
  {
    v15 = 0;
    a5 = 0.0;
  }

  else
  {
    v15 = [objc_opt_class() isCellEmpty:a6] ^ 1;
  }

  [(EMCellMapper *)self mapRowColSpansAt:v12 withState:v11];
  v16 = [v11 hyperlinkForRow:self->rowNumber column:columnNumberForEDCell(self->edCell)];
  if (v16)
  {
    v41 = [(EMCellMapper *)self mapHyperlink:v16 at:v12];
  }

  else
  {
    v41 = v12;
  }

  v17 = [v11 cellStyleWrapperForIndex:styleIndexForEDCell(self->edCell)];
  v39 = [v17 edStyle];
  v18 = typeForEDCell(self->edCell);
  v19 = v18;
  if (v18 == 2)
  {
    v28 = numberValueForEDCell(self->edCell);
    v29 = [EMCellNumberMapper alloc];
    columnWidth = self->columnWidth;
    v31 = [v11 document];
    v32 = [(EMCellNumberMapper *)v29 initWithDoubleValue:v39 style:v31 columnWidth:self workbook:v28 parent:columnWidth];

    [(EMCellNumberMapper *)v32 mapAt:v41 withState:v11];
  }

  else if (v18 == 3)
  {
    edCell = self->edCell;
    v21 = [v11 document];
    v22 = [v21 resources];
    v23 = stringValueForEDCell(edCell, v22);

    v24 = [[EMCellTextMapper alloc] initWithEDString:v23 style:v39 parent:self];
    [(EMCellTextMapper *)v24 mapAt:v41 withState:v11 columnWidth:self->spreadLeftFlag height:self->columnWidth spreadLeft:a5];
    [(EMCellTextMapper *)v24 contentWidth];
    v26 = v25;

    v27 = v26;
    goto LABEL_13;
  }

  v27 = 0;
LABEL_13:
  v33 = [v41 stringValue];
  v34 = [v33 length];

  if (!v34)
  {
    [v41 setStringValue:@" "];
  }

  v35 = [[EMCellStyle alloc] initWithStyleWrapper:v17 type:v19 columnWidth:self->columnWidth contentWidth:v27 truncateContents:v15];
  v36 = [(CMMapper *)self archiver];
  v37 = [v36 addStyle:v35];

  if (v37)
  {
    [(CMMapper *)self addAttribute:@"class" toNode:v12 value:v37];
  }

  else
  {
    v38 = [(EMCellStyle *)v35 cssStyleString];
    if ([v38 length])
    {
      [(CMMapper *)self addAttribute:@"style" toNode:v12 value:v38];
    }
  }
}

- (id)mapHyperlink:(id)a3 at:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && ![v6 type])
  {
    v8 = [OIXMLElement elementWithType:0];
    v9 = [v6 path];
    v10 = [v9 string];
    [(CMMapper *)self addAttribute:0x286F07D70 toNode:v8 value:v10];

    [v7 addChild:v8];
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

@end