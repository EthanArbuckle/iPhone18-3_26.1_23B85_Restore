@interface CSLPRFAppSwitchCell
- (CSLPRFAppSwitchCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)blankIcon;
@end

@implementation CSLPRFAppSwitchCell

- (id)blankIcon
{
  v3 = [(CSLPRFAppTableCellHelper *)self->_cellHelper blankIcon];
  if (!v3)
  {
    v5.receiver = self;
    v5.super_class = CSLPRFAppSwitchCell;
    v3 = [(PSTableCell *)&v5 blankIcon];
  }

  return v3;
}

- (CSLPRFAppSwitchCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = CSLPRFAppSwitchCell;
  v4 = [(PSSwitchTableCell *)&v8 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [[CSLPRFAppTableCellHelper alloc] initWithTableCell:v4];
    cellHelper = v4->_cellHelper;
    v4->_cellHelper = v5;
  }

  return v4;
}

@end