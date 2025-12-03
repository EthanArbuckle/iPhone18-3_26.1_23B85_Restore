@interface SUUIGiftAmountSection
- (UIControl)amountControl;
- (double)heightForCellInTableView:(id)view indexPath:(id)path;
- (id)tableViewCellForTableView:(id)view indexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forIndexPath:(id)path;
@end

@implementation SUUIGiftAmountSection

- (UIControl)amountControl
{
  amountControl = self->_amountControl;
  if (!amountControl)
  {
    v4 = [SUUIGiftAmountControl alloc];
    giftConfiguration = [(SUUIGiftTableViewSection *)self giftConfiguration];
    v6 = [(SUUIGiftAmountControl *)v4 initWithGiftConfiguration:giftConfiguration];
    v7 = self->_amountControl;
    self->_amountControl = v6;

    [(SUUIGiftAmountControl *)self->_amountControl setAutoresizingMask:18];
    amountControl = self->_amountControl;
  }

  return amountControl;
}

- (double)heightForCellInTableView:(id)view indexPath:(id)path
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  result = 152.0;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 116.0;
  }

  return result;
}

- (id)tableViewCellForTableView:(id)view indexPath:(id)path
{
  v5 = [view dequeueReusableCellWithIdentifier:{@"GAM", path}];
  if (!v5)
  {
    v5 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"GAM"];
    [v5 setSelectionStyle:0];
  }

  amountControl = [(SUUIGiftAmountSection *)self amountControl];
  contentView = [v5 contentView];
  [contentView bounds];
  [amountControl setFrame:?];
  [contentView addSubview:amountControl];

  return v5;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forIndexPath:(id)path
{
  cellCopy = cell;
  backgroundColor = [view backgroundColor];
  [(SUUIGiftAmountControl *)self->_amountControl setBackgroundColor:backgroundColor];
  [cellCopy setBackgroundColor:backgroundColor];
}

@end