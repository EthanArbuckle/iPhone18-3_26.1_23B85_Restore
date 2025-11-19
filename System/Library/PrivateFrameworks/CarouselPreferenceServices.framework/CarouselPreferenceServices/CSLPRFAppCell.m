@interface CSLPRFAppCell
- (CSLPRFAppCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)blankIcon;
@end

@implementation CSLPRFAppCell

- (id)blankIcon
{
  v3 = [(CSLPRFAppTableCellHelper *)self->_cellHelper blankIcon];
  if (!v3)
  {
    v5.receiver = self;
    v5.super_class = CSLPRFAppCell;
    v3 = [(PSTableCell *)&v5 blankIcon];
  }

  return v3;
}

- (CSLPRFAppCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = CSLPRFAppCell;
  v4 = [(PSTableCell *)&v8 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [[CSLPRFAppTableCellHelper alloc] initWithTableCell:v4];
    cellHelper = v4->_cellHelper;
    v4->_cellHelper = v5;
  }

  return v4;
}

@end