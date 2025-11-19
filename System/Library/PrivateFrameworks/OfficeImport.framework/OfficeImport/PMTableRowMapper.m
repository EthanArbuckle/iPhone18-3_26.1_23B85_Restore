@interface PMTableRowMapper
- (PMTableRowMapper)initWithOadTable:(id)a3 rowIndex:(unint64_t)a4 parent:(id)a5;
- (void)mapAt:(id)a3 withState:(id)a4;
@end

@implementation PMTableRowMapper

- (PMTableRowMapper)initWithOadTable:(id)a3 rowIndex:(unint64_t)a4 parent:(id)a5
{
  v9 = a3;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = PMTableRowMapper;
  v11 = [(CMMapper *)&v16 initWithParent:v10];
  v12 = v11;
  if (v11)
  {
    v11->mRowIndex = a4;
    objc_storeStrong(&v11->mTable, a3);
    v13 = [(OADTable *)v12->mTable rowAtIndex:a4];
    mRow = v12->mRow;
    v12->mRow = v13;
  }

  return v12;
}

- (void)mapAt:(id)a3 withState:(id)a4
{
  v23 = a3;
  v6 = a4;
  v7 = [OIXMLElement elementWithType:21];
  [v23 addChild:v7];
  mRowIndex = self->mRowIndex;
  if (!mRowIndex)
  {
    v9 = [(OADTable *)self->mTable tableProperties];
    v10 = [v9 firstRow];

    if (v10)
    {
      v11 = [(OADTable *)self->mTable tableProperties];
      v12 = [v11 style];
      v13 = [v12 firstRowStyle];
LABEL_8:
      v16 = v13;

      goto LABEL_10;
    }

    mRowIndex = self->mRowIndex;
  }

  if (mRowIndex == [(OADTable *)self->mTable rowCount])
  {
    v14 = [(OADTable *)self->mTable tableProperties];
    v15 = [v14 lastRow];

    if (v15)
    {
      v11 = [(OADTable *)self->mTable tableProperties];
      v12 = [v11 style];
      v13 = [v12 lastRowStyle];
      goto LABEL_8;
    }
  }

  v16 = 0;
LABEL_10:
  [v6 setCurrentRowStyle:v16];
  v22 = v16;
  v17 = [(OADTableRow *)self->mRow cellCount];
  if (v17)
  {
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = [(OADTableRow *)self->mRow cellAtIndex:v18];

      v21 = [[PMTableCellMapper alloc] initWithOadTableCell:v20 rowIndex:self->mRowIndex columnIndex:v18 parent:self];
      [(PMTableCellMapper *)v21 mapAt:v7 withState:v6];

      ++v18;
      v19 = v20;
    }

    while (v17 != v18);
  }

  else
  {
    v20 = 0;
  }

  [v6 setCurrentRowStyle:0];
}

@end