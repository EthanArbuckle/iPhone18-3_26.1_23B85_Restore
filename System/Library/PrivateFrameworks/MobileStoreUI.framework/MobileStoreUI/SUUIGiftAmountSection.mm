@interface SUUIGiftAmountSection
- (UIControl)amountControl;
- (double)heightForCellInTableView:(id)a3 indexPath:(id)a4;
- (id)tableViewCellForTableView:(id)a3 indexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forIndexPath:(id)a5;
@end

@implementation SUUIGiftAmountSection

- (UIControl)amountControl
{
  amountControl = self->_amountControl;
  if (!amountControl)
  {
    v4 = [SUUIGiftAmountControl alloc];
    v5 = [(SUUIGiftTableViewSection *)self giftConfiguration];
    v6 = [(SUUIGiftAmountControl *)v4 initWithGiftConfiguration:v5];
    v7 = self->_amountControl;
    self->_amountControl = v6;

    [(SUUIGiftAmountControl *)self->_amountControl setAutoresizingMask:18];
    amountControl = self->_amountControl;
  }

  return amountControl;
}

- (double)heightForCellInTableView:(id)a3 indexPath:(id)a4
{
  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  result = 152.0;
  if ((v5 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 116.0;
  }

  return result;
}

- (id)tableViewCellForTableView:(id)a3 indexPath:(id)a4
{
  v5 = [a3 dequeueReusableCellWithIdentifier:{@"GAM", a4}];
  if (!v5)
  {
    v5 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"GAM"];
    [v5 setSelectionStyle:0];
  }

  v6 = [(SUUIGiftAmountSection *)self amountControl];
  v7 = [v5 contentView];
  [v7 bounds];
  [v6 setFrame:?];
  [v7 addSubview:v6];

  return v5;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forIndexPath:(id)a5
{
  v7 = a4;
  v8 = [a3 backgroundColor];
  [(SUUIGiftAmountControl *)self->_amountControl setBackgroundColor:v8];
  [v7 setBackgroundColor:v8];
}

@end