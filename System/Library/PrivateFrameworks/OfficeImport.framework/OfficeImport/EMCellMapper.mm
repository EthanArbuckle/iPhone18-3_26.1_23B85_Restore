@interface EMCellMapper
- (BOOL)isCellEmpty;
- (BOOL)isCellMerged;
- (BOOL)isCellSpreading:(id)spreading;
- (EMCellMapper)initWithEDCell:(EDCellHeader *)cell rowInfo:(EDRowInfo *)info parent:(id)parent state:(id)state;
- (EMCellMapper)initWithParent:(id)parent;
- (id)mapHyperlink:(id)hyperlink at:(id)at;
- (void)adjustColumnSpanForGrid:(double *)grid columnCount:(unint64_t)count nextCell:(EDCellHeader *)cell withState:(id)state;
- (void)mapAt:(id)at withState:(id)state height:(double)height nextCell:(EDCellHeader *)cell;
- (void)mapRowColSpansAt:(id)at withState:(id)state;
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

- (EMCellMapper)initWithParent:(id)parent
{
  v4.receiver = self;
  v4.super_class = EMCellMapper;
  result = [(CMMapper *)&v4 initWithParent:parent];
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

- (EMCellMapper)initWithEDCell:(EDCellHeader *)cell rowInfo:(EDRowInfo *)info parent:(id)parent state:(id)state
{
  parentCopy = parent;
  stateCopy = state;
  v12 = [(EMCellMapper *)self initWithParent:parentCopy];
  v13 = v12;
  if (v12)
  {
    v12->edCell = cell;
    v12->rowNumber = info->var1;
    v14 = columnNumberForEDCell(cell);
    v13->firstColumn = v14;
    if (v13->edCell)
    {
      currentSheet = [stateCopy currentSheet];
      mergedCells = [currentSheet mergedCells];

      v17 = [mergedCells referenceContainingRow:v13->rowNumber column:v13->firstColumn];
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

- (BOOL)isCellSpreading:(id)spreading
{
  spreadingCopy = spreading;
  edCell = self->edCell;
  if (edCell && typeForEDCell(edCell))
  {
    v6 = self->edCell;
    document = [spreadingCopy document];
    resources = [document resources];
    v9 = styleForEDCell(v6, resources);

    if ([v9 isAlignmentInfoOverridden])
    {
      alignmentInfo = [v9 alignmentInfo];
      v11 = ([alignmentInfo isHorizontalAlignOverridden] & 1) != 0 && objc_msgSend(alignmentInfo, "horizontalAlignment") == 6;
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

- (void)adjustColumnSpanForGrid:(double *)grid columnCount:(unint64_t)count nextCell:(EDCellHeader *)cell withState:(id)state
{
  stateCopy = state;
  v10 = self->lastColumn - self->firstColumn + 1;
  self->columnSpan = v10;
  if (grid)
  {
    self->columnWidth = 0.0;
    firstColumn = self->firstColumn;
    lastColumn = self->lastColumn;
    if (firstColumn <= lastColumn && firstColumn < count)
    {
      v14 = 0.0;
      do
      {
        v15 = grid[firstColumn];
        if (v15 == 0.0)
        {
          self->columnSpan = --v10;
          lastColumn = self->lastColumn;
        }

        v14 = v14 + v15;
        self->columnWidth = v14;
        if (firstColumn + 1 >= count)
        {
          break;
        }
      }

      while (firstColumn++ < lastColumn);
    }

    if (cell && typeForEDCell(cell) && columnNumberForEDCell(cell) == self->lastColumn + 1)
    {
      self->spreadLeftFlag = 0;
    }
  }
}

- (void)mapRowColSpansAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  if (self->columnSpan >= 2)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", self->columnSpan];
    v8 = [OIXMLAttribute attributeWithName:@"colspan" stringValue:v7];
    [atCopy addAttribute:v8];
  }

  edMergedCellReference = self->edMergedCellReference;
  if (edMergedCellReference)
  {
    lastRow = [(EDReference *)edMergedCellReference lastRow];
    v11 = lastRow - [(EDReference *)self->edMergedCellReference firstRow];
    if (v11 >= 1)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", (v11 + 1)];
      v13 = [OIXMLAttribute attributeWithName:@"rowspan" stringValue:v12];
      [atCopy addAttribute:v13];
    }
  }
}

- (void)mapAt:(id)at withState:(id)state height:(double)height nextCell:(EDCellHeader *)cell
{
  atCopy = at;
  stateCopy = state;
  v12 = [OIXMLElement elementWithType:19];
  [atCopy addChild:v12];
  edMergedCellReference = self->edMergedCellReference;
  if (edMergedCellReference && (v14 = [(EDReference *)edMergedCellReference lastRow], v14 > [(EDReference *)self->edMergedCellReference firstRow]))
  {
    v15 = 0;
    height = 0.0;
  }

  else
  {
    v15 = [objc_opt_class() isCellEmpty:cell] ^ 1;
  }

  [(EMCellMapper *)self mapRowColSpansAt:v12 withState:stateCopy];
  v16 = [stateCopy hyperlinkForRow:self->rowNumber column:columnNumberForEDCell(self->edCell)];
  if (v16)
  {
    v41 = [(EMCellMapper *)self mapHyperlink:v16 at:v12];
  }

  else
  {
    v41 = v12;
  }

  v17 = [stateCopy cellStyleWrapperForIndex:styleIndexForEDCell(self->edCell)];
  edStyle = [v17 edStyle];
  v18 = typeForEDCell(self->edCell);
  v19 = v18;
  if (v18 == 2)
  {
    v28 = numberValueForEDCell(self->edCell);
    v29 = [EMCellNumberMapper alloc];
    columnWidth = self->columnWidth;
    document = [stateCopy document];
    v32 = [(EMCellNumberMapper *)v29 initWithDoubleValue:edStyle style:document columnWidth:self workbook:v28 parent:columnWidth];

    [(EMCellNumberMapper *)v32 mapAt:v41 withState:stateCopy];
  }

  else if (v18 == 3)
  {
    edCell = self->edCell;
    document2 = [stateCopy document];
    resources = [document2 resources];
    v23 = stringValueForEDCell(edCell, resources);

    v24 = [[EMCellTextMapper alloc] initWithEDString:v23 style:edStyle parent:self];
    [(EMCellTextMapper *)v24 mapAt:v41 withState:stateCopy columnWidth:self->spreadLeftFlag height:self->columnWidth spreadLeft:height];
    [(EMCellTextMapper *)v24 contentWidth];
    v26 = v25;

    v27 = v26;
    goto LABEL_13;
  }

  v27 = 0;
LABEL_13:
  stringValue = [v41 stringValue];
  v34 = [stringValue length];

  if (!v34)
  {
    [v41 setStringValue:@" "];
  }

  v35 = [[EMCellStyle alloc] initWithStyleWrapper:v17 type:v19 columnWidth:self->columnWidth contentWidth:v27 truncateContents:v15];
  archiver = [(CMMapper *)self archiver];
  v37 = [archiver addStyle:v35];

  if (v37)
  {
    [(CMMapper *)self addAttribute:@"class" toNode:v12 value:v37];
  }

  else
  {
    cssStyleString = [(EMCellStyle *)v35 cssStyleString];
    if ([cssStyleString length])
    {
      [(CMMapper *)self addAttribute:@"style" toNode:v12 value:cssStyleString];
    }
  }
}

- (id)mapHyperlink:(id)hyperlink at:(id)at
{
  hyperlinkCopy = hyperlink;
  atCopy = at;
  if (hyperlinkCopy && ![hyperlinkCopy type])
  {
    v8 = [OIXMLElement elementWithType:0];
    path = [hyperlinkCopy path];
    string = [path string];
    [(CMMapper *)self addAttribute:0x286F07D70 toNode:v8 value:string];

    [atCopy addChild:v8];
  }

  else
  {
    v8 = atCopy;
  }

  return v8;
}

@end