@interface SUUIRedeemResultsView
- (SUUIRedeemResultsView)init;
- (SUUIRedeemResultsViewDelegate)resultsDelegate;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)layoutSubviews;
- (void)setSections:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation SUUIRedeemResultsView

- (SUUIRedeemResultsView)init
{
  v6.receiver = self;
  v6.super_class = SUUIRedeemResultsView;
  v2 = [(SUUIRedeemResultsView *)&v6 initWithFrame:0 style:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v3 = v2;
  if (v2)
  {
    [(SUUIRedeemResultsView *)v2 setDelegate:v2];
    [(SUUIRedeemResultsView *)v3 setDataSource:v3];
    [(SUUIRedeemResultsView *)v3 setAlwaysBounceVertical:0];
    v4 = [MEMORY[0x277D75348] whiteColor];
    [(SUUIRedeemResultsView *)v3 setBackgroundColor:v4];

    [(SUUIRedeemResultsView *)v3 setSeparatorStyle:0];
  }

  return v3;
}

- (void)setSections:(id)a3
{
  v5 = a3;
  if (self->_sections != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_sections, a3);
    [(SUUIRedeemResultsView *)self reloadData];
    v5 = v6;
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  sections = self->_sections;
  v6 = a4;
  v7 = a3;
  v8 = -[NSArray objectAtIndex:](sections, "objectAtIndex:", [v6 section]);
  v9 = [v8 tableViewCellForTableView:v7 indexPath:v6];

  return v9;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(NSArray *)self->_sections objectAtIndex:a4];
  v5 = [v4 numberOfRowsInSection];

  return v5;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_resultsDelegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_resultsDelegate);
    [v7 redeemResultsView:self didSelectRowAtIndexPath:v8];
  }
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  sections = self->_sections;
  v6 = a4;
  v7 = a3;
  v8 = -[NSArray objectAtIndex:](sections, "objectAtIndex:", [v6 section]);
  [v8 heightForCellInTableView:v7 indexPath:v6];
  v10 = v9;

  return v10;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  sections = self->_sections;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = -[NSArray objectAtIndex:](sections, "objectAtIndex:", [v8 section]);
  [v11 tableView:v10 willDisplayCell:v9 forIndexPath:v8];
}

- (void)layoutSubviews
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  sections = self->_sections;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __39__SUUIRedeemResultsView_layoutSubviews__block_invoke;
  v22[3] = &unk_2798FBA58;
  v22[4] = self;
  v22[5] = &v23;
  [(NSArray *)sections enumerateObjectsUsingBlock:v22];
  [(SUUIRedeemResultsView *)self contentInset];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(SUUIRedeemResultsView *)self bounds];
  v13 = v12;
  top = self->_contentInsetAdjustments.top;
  v15 = [MEMORY[0x277D75418] currentDevice];
  v16 = [v15 userInterfaceIdiom];

  v17 = 15.0;
  if ((v16 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v17 = 28.0;
  }

  v18 = (v13 - (v5 - top) - v24[3]) * 0.5;
  v19 = floorf(v18);
  if (v17 >= v19)
  {
    v19 = v17;
  }

  v20 = v19;
  self->_contentInsetAdjustments.top = v20;
  [(SUUIRedeemResultsView *)self setContentInset:v5 + v20 - top, v7, v9, v11];
  v21.receiver = self;
  v21.super_class = SUUIRedeemResultsView;
  [(SUUIRedeemResultsView *)&v21 layoutSubviews];
  _Block_object_dispose(&v23, 8);
}

void __39__SUUIRedeemResultsView_layoutSubviews__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  v5 = [v11 numberOfRowsInSection];
  if (v5 >= 1)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      v8 = *(a1 + 32);
      v9 = [MEMORY[0x277CCAA70] indexPathForRow:i inSection:a3];
      [v11 heightForCellInTableView:v8 indexPath:v9];
      *(*(*(a1 + 40) + 8) + 24) = v10 + *(*(*(a1 + 40) + 8) + 24);
    }
  }
}

- (SUUIRedeemResultsViewDelegate)resultsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_resultsDelegate);

  return WeakRetained;
}

@end