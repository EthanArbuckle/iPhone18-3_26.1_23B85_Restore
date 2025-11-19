@interface WDTableCell
- (WDTableCell)initWithRow:(id)a3 at:(unint64_t)a4;
- (WDTableRow)row;
- (id)description;
- (int64_t)compareIndex:(id)a3;
- (void)clearProperties;
- (void)setIdentifier:(id)a3;
@end

@implementation WDTableCell

- (WDTableRow)row
{
  WeakRetained = objc_loadWeakRetained(&self->mRow);

  return WeakRetained;
}

- (WDTableCell)initWithRow:(id)a3 at:(unint64_t)a4
{
  v6 = a3;
  v22.receiver = self;
  v22.super_class = WDTableCell;
  v7 = [(WDTableCell *)&v22 init];
  v8 = v7;
  if (v7)
  {
    v9 = objc_storeWeak(&v7->mRow, v6);
    v8->mIndex = a4;
    v10 = v9;
    v11 = [v6 table];

    v12 = [WDText alloc];
    v13 = [v11 document];
    v14 = -[WDText initWithDocument:textType:tableCell:](v12, "initWithDocument:textType:tableCell:", v13, [v11 textType], v8);
    mText = v8->mText;
    v8->mText = v14;

    v16 = [WDTableCellProperties alloc];
    v17 = [v11 document];
    v18 = [(WDTableCellProperties *)v16 initWithDocument:v17];
    mProperties = v8->mProperties;
    v8->mProperties = v18;

    mIdentifier = v8->mIdentifier;
    v8->mIdentifier = 0;
  }

  return v8;
}

- (int64_t)compareIndex:(id)a3
{
  mIndex = self->mIndex;
  v4 = *(a3 + 1);
  v5 = mIndex >= v4;
  v6 = mIndex > v4;
  if (v5)
  {
    return v6;
  }

  else
  {
    return -1;
  }
}

- (void)clearProperties
{
  mProperties = self->mProperties;
  self->mProperties = 0;
}

- (void)setIdentifier:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  mIdentifier = self->mIdentifier;
  self->mIdentifier = v4;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = WDTableCell;
  v2 = [(WDTableCell *)&v4 description];

  return v2;
}

@end