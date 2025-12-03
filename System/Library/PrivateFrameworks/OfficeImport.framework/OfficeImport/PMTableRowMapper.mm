@interface PMTableRowMapper
- (PMTableRowMapper)initWithOadTable:(id)table rowIndex:(unint64_t)index parent:(id)parent;
- (void)mapAt:(id)at withState:(id)state;
@end

@implementation PMTableRowMapper

- (PMTableRowMapper)initWithOadTable:(id)table rowIndex:(unint64_t)index parent:(id)parent
{
  tableCopy = table;
  parentCopy = parent;
  v16.receiver = self;
  v16.super_class = PMTableRowMapper;
  v11 = [(CMMapper *)&v16 initWithParent:parentCopy];
  v12 = v11;
  if (v11)
  {
    v11->mRowIndex = index;
    objc_storeStrong(&v11->mTable, table);
    v13 = [(OADTable *)v12->mTable rowAtIndex:index];
    mRow = v12->mRow;
    v12->mRow = v13;
  }

  return v12;
}

- (void)mapAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  v7 = [OIXMLElement elementWithType:21];
  [atCopy addChild:v7];
  mRowIndex = self->mRowIndex;
  if (!mRowIndex)
  {
    tableProperties = [(OADTable *)self->mTable tableProperties];
    firstRow = [tableProperties firstRow];

    if (firstRow)
    {
      tableProperties2 = [(OADTable *)self->mTable tableProperties];
      style = [tableProperties2 style];
      firstRowStyle = [style firstRowStyle];
LABEL_8:
      v16 = firstRowStyle;

      goto LABEL_10;
    }

    mRowIndex = self->mRowIndex;
  }

  if (mRowIndex == [(OADTable *)self->mTable rowCount])
  {
    tableProperties3 = [(OADTable *)self->mTable tableProperties];
    lastRow = [tableProperties3 lastRow];

    if (lastRow)
    {
      tableProperties2 = [(OADTable *)self->mTable tableProperties];
      style = [tableProperties2 style];
      firstRowStyle = [style lastRowStyle];
      goto LABEL_8;
    }
  }

  v16 = 0;
LABEL_10:
  [stateCopy setCurrentRowStyle:v16];
  v22 = v16;
  cellCount = [(OADTableRow *)self->mRow cellCount];
  if (cellCount)
  {
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = [(OADTableRow *)self->mRow cellAtIndex:v18];

      v21 = [[PMTableCellMapper alloc] initWithOadTableCell:v20 rowIndex:self->mRowIndex columnIndex:v18 parent:self];
      [(PMTableCellMapper *)v21 mapAt:v7 withState:stateCopy];

      ++v18;
      v19 = v20;
    }

    while (cellCount != v18);
  }

  else
  {
    v20 = 0;
  }

  [stateCopy setCurrentRowStyle:0];
}

@end