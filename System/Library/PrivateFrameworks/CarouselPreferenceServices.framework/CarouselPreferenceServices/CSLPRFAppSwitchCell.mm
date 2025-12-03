@interface CSLPRFAppSwitchCell
- (CSLPRFAppSwitchCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)blankIcon;
@end

@implementation CSLPRFAppSwitchCell

- (id)blankIcon
{
  blankIcon = [(CSLPRFAppTableCellHelper *)self->_cellHelper blankIcon];
  if (!blankIcon)
  {
    v5.receiver = self;
    v5.super_class = CSLPRFAppSwitchCell;
    blankIcon = [(PSTableCell *)&v5 blankIcon];
  }

  return blankIcon;
}

- (CSLPRFAppSwitchCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = CSLPRFAppSwitchCell;
  v4 = [(PSSwitchTableCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [[CSLPRFAppTableCellHelper alloc] initWithTableCell:v4];
    cellHelper = v4->_cellHelper;
    v4->_cellHelper = v5;
  }

  return v4;
}

@end