@interface CSLPRFAppCell
- (CSLPRFAppCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)blankIcon;
@end

@implementation CSLPRFAppCell

- (id)blankIcon
{
  blankIcon = [(CSLPRFAppTableCellHelper *)self->_cellHelper blankIcon];
  if (!blankIcon)
  {
    v5.receiver = self;
    v5.super_class = CSLPRFAppCell;
    blankIcon = [(PSTableCell *)&v5 blankIcon];
  }

  return blankIcon;
}

- (CSLPRFAppCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = CSLPRFAppCell;
  v4 = [(PSTableCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [[CSLPRFAppTableCellHelper alloc] initWithTableCell:v4];
    cellHelper = v4->_cellHelper;
    v4->_cellHelper = v5;
  }

  return v4;
}

@end