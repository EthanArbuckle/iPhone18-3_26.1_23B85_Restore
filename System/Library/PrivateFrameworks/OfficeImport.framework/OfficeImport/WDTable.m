@interface WDTable
- (WDTable)initWithText:(id)a3;
- (id)addRow;
- (id)cellIterator;
- (id)description;
- (id)insertRowAtIndex:(unint64_t)a3;
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
  v3 = [(WDText *)self->super.mText tableCell];
  if (v3 && (-[WDBlock textType](self, "textType") != 4 || ([v3 text], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "textType"), v4, v5 == 4)))
  {
    v6 = [v3 row];
    v7 = [v6 table];
    v8 = [v7 nestingLevel] + 1;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (WDTable)initWithText:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = WDTable;
  v5 = [(WDBlock *)&v13 initWithText:v4];
  if (v5)
  {
    v6 = [WDTableProperties alloc];
    v7 = [v4 document];
    v8 = [(WDTableProperties *)v6 initWithDocument:v7];
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

- (id)insertRowAtIndex:(unint64_t)a3
{
  v5 = [[WDTableRow alloc] initWithTable:self at:a3];
  [(NSMutableArray *)self->mRows insertObject:v5 atIndex:a3];
  v6 = [(NSMutableArray *)self->mRows count];
  v7 = a3 + 1;
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
  v4 = [(WDTable *)self rowIterator];
  v5 = [(WDCombinedIterator *)v3 initWithParentIterator:v4];

  return v5;
}

- (id)newCellIterator
{
  v2 = [(WDTable *)self newRowIterator];
  v3 = [(WDCombinedIterator *)[WDTableRowCellIterator alloc] initWithParentIterator:v2];

  return v3;
}

- (id)runIterator
{
  v3 = [WDTableCellRunIterator alloc];
  v4 = [(WDTable *)self cellIterator];
  v5 = [(WDCombinedIterator *)v3 initWithParentIterator:v4];

  return v5;
}

- (id)newRunIterator
{
  v2 = [(WDTable *)self newCellIterator];
  v3 = [(WDCombinedIterator *)[WDTableCellRunIterator alloc] initWithParentIterator:v2];

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