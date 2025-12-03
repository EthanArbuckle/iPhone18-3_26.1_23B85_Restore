@interface WDTableCell
- (WDTableCell)initWithRow:(id)row at:(unint64_t)at;
- (WDTableRow)row;
- (id)description;
- (int64_t)compareIndex:(id)index;
- (void)clearProperties;
- (void)setIdentifier:(id)identifier;
@end

@implementation WDTableCell

- (WDTableRow)row
{
  WeakRetained = objc_loadWeakRetained(&self->mRow);

  return WeakRetained;
}

- (WDTableCell)initWithRow:(id)row at:(unint64_t)at
{
  rowCopy = row;
  v22.receiver = self;
  v22.super_class = WDTableCell;
  v7 = [(WDTableCell *)&v22 init];
  v8 = v7;
  if (v7)
  {
    v9 = objc_storeWeak(&v7->mRow, rowCopy);
    v8->mIndex = at;
    v10 = v9;
    table = [rowCopy table];

    v12 = [WDText alloc];
    document = [table document];
    v14 = -[WDText initWithDocument:textType:tableCell:](v12, "initWithDocument:textType:tableCell:", document, [table textType], v8);
    mText = v8->mText;
    v8->mText = v14;

    v16 = [WDTableCellProperties alloc];
    document2 = [table document];
    v18 = [(WDTableCellProperties *)v16 initWithDocument:document2];
    mProperties = v8->mProperties;
    v8->mProperties = v18;

    mIdentifier = v8->mIdentifier;
    v8->mIdentifier = 0;
  }

  return v8;
}

- (int64_t)compareIndex:(id)index
{
  mIndex = self->mIndex;
  v4 = *(index + 1);
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

- (void)setIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [identifierCopy copy];
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