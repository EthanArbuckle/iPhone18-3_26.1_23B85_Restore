@interface WDTable
- (WDTable)initWithText:(id)text;
- (id)addRow;
- (id)cellIterator;
- (id)description;
- (id)insertRowAtIndex:(unint64_t)index;
- (id)newCellIterator;
- (id)newRowIterator;
- (id)newRunIterator;
- (id)rowIterator;
- (id)runIterator;
- (int)nestingLevel;
- (void)clearProperties;
- (void)clearRows;
@end

@implementation WDTable

- (id)addRow
{
  v3 = [[WDTableRow alloc] initWithTable:self at:[(WDTable *)self rowCount]];
  [(NSMutableArray *)self->mRows addObject:v3];

  return v3;
}

- (int)nestingLevel
{
  tableCell = [(WDText *)self->super.mText tableCell];
  if (tableCell && (-[WDBlock textType](self, "textType") != 4 || ([tableCell text], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "textType"), v4, v5 == 4)))
  {
    v6 = [tableCell row];
    table = [v6 table];
    v8 = [table nestingLevel] + 1;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (WDTable)initWithText:(id)text
{
  textCopy = text;
  v13.receiver = self;
  v13.super_class = WDTable;
  v5 = [(WDBlock *)&v13 initWithText:textCopy];
  if (v5)
  {
    v6 = [WDTableProperties alloc];
    document = [textCopy document];
    v8 = [(WDTableProperties *)v6 initWithDocument:document];
    mProperties = v5->mProperties;
    v5->mProperties = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mRows = v5->mRows;
    v5->mRows = v10;
  }

  return v5;
}

- (void)clearProperties
{
  mProperties = self->mProperties;
  self->mProperties = 0;
}

- (id)insertRowAtIndex:(unint64_t)index
{
  v5 = [[WDTableRow alloc] initWithTable:self at:index];
  [(NSMutableArray *)self->mRows insertObject:v5 atIndex:index];
  v6 = [(NSMutableArray *)self->mRows count];
  v7 = index + 1;
  if (v7 < v6)
  {
    do
    {
      v8 = [(NSMutableArray *)self->mRows objectAtIndex:v7];
      [v8 setIndex:v7];

      ++v7;
    }

    while (v6 != v7);
  }

  return v5;
}

- (void)clearRows
{
  mRows = self->mRows;
  self->mRows = 0;
}

- (id)rowIterator
{
  v2 = [[WDArrayIterator alloc] initWithArray:self->mRows];

  return v2;
}

- (id)newRowIterator
{
  v3 = [WDArrayIterator alloc];
  mRows = self->mRows;

  return [(WDArrayIterator *)v3 initWithArray:mRows];
}

- (id)cellIterator
{
  v3 = [WDTableRowCellIterator alloc];
  rowIterator = [(WDTable *)self rowIterator];
  v5 = [(WDCombinedIterator *)v3 initWithParentIterator:rowIterator];

  return v5;
}

- (id)newCellIterator
{
  newRowIterator = [(WDTable *)self newRowIterator];
  v3 = [(WDCombinedIterator *)[WDTableRowCellIterator alloc] initWithParentIterator:newRowIterator];

  return v3;
}

- (id)runIterator
{
  v3 = [WDTableCellRunIterator alloc];
  cellIterator = [(WDTable *)self cellIterator];
  v5 = [(WDCombinedIterator *)v3 initWithParentIterator:cellIterator];

  return v5;
}

- (id)newRunIterator
{
  newCellIterator = [(WDTable *)self newCellIterator];
  v3 = [(WDCombinedIterator *)[WDTableCellRunIterator alloc] initWithParentIterator:newCellIterator];

  return v3;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = WDTable;
  v2 = [(WDBlock *)&v4 description];

  return v2;
}

@end