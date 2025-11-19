@interface SUUIRedeemIdViewController
- (BOOL)_validateForm;
- (SUUIRedeemIdDelegate)delegate;
- (SUUIRedeemIdViewController)initWithClientContext:(id)a3;
- (id)_fieldForIndexPath:(id)a3;
- (id)_finalOutputFields;
- (void)_adjustInsetsForKeyboardFrameValue:(id)a3;
- (void)_cancelPressed;
- (void)_initializeManager;
- (void)_initializeNavigationItem;
- (void)_initializeTableView;
- (void)_keyboardDidHide:(id)a3;
- (void)_keyboardWillShow:(id)a3;
- (void)_nextPressed;
- (void)_refreshNavigationItem;
- (void)_reloadFooter;
- (void)_subscribeToKeyboardEvents;
- (void)_updateFieldAtIndexPath:(id)a3 withText:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SUUIRedeemIdViewController

- (SUUIRedeemIdViewController)initWithClientContext:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SUUIRedeemIdViewController;
  v5 = [(SUUIRedeemIdViewController *)&v8 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEC10] mutableCopy];
    [(SUUIRedeemIdViewController *)v5 setFields:v6];

    [(SUUIRedeemIdViewController *)v5 setClientContext:v4];
    [(SUUIRedeemIdViewController *)v5 _initializeManager];
    [(SUUIRedeemIdViewController *)v5 _initializeTableView];
    [(SUUIRedeemIdViewController *)v5 _initializeNavigationItem];
    [(SUUIRedeemIdViewController *)v5 _subscribeToKeyboardEvents];
  }

  return v5;
}

- (void)viewDidLayoutSubviews
{
  v3 = [(SUUIRedeemIdViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(SUUIRedeemIdViewController *)self tableView];
  [v12 setFrame:{v5, v7, v9, v11}];

  v13.receiver = self;
  v13.super_class = SUUIRedeemIdViewController;
  [(SUUIRedeemIdViewController *)&v13 viewDidLayoutSubviews];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v10.receiver = self;
  v10.super_class = SUUIRedeemIdViewController;
  v7 = a4;
  [(SUUIRedeemIdViewController *)&v10 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(SUUIRedeemIdViewController *)self manager];
  [v8 setFooterHidden:1];

  [(SUUIRedeemIdViewController *)self _reloadFooter];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81__SUUIRedeemIdViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v9[3] = &unk_2798F5A88;
  v9[4] = self;
  [v7 animateAlongsideTransition:0 completion:v9];
}

void __81__SUUIRedeemIdViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) manager];
  [v2 setFooterHidden:0];

  [*(a1 + 32) _reloadFooter];
  v3 = [*(a1 + 32) manager];
  [v3 dismissActiveCell];
}

- (void)_updateFieldAtIndexPath:(id)a3 withText:(id)a4
{
  v6 = a4;
  v8 = [(SUUIRedeemIdViewController *)self _fieldForIndexPath:a3];
  v7 = [(SUUIRedeemIdViewController *)self fields];
  [v7 setObject:v6 forKey:v8];

  [(SUUIRedeemIdViewController *)self _refreshNavigationItem];
}

- (id)_fieldForIndexPath:(id)a3
{
  v3 = a3;
  v4 = [v3 section];
  if (v4 == 2)
  {
    v7 = @"national_redeem_national_id";
  }

  else if (v4 == 1)
  {
    v7 = @"national_redeem_phone";
  }

  else if (v4)
  {
    v7 = 0;
  }

  else
  {
    v5 = [v3 row];
    v6 = @"national_redeem_last_name";
    if (v5 == 1)
    {
      v6 = @"national_redeem_first_name";
    }

    v7 = v6;
  }

  return v7;
}

- (void)_refreshNavigationItem
{
  v3 = [(SUUIRedeemIdViewController *)self _validateForm];
  v4 = [(SUUIRedeemIdViewController *)self nextButton];
  [v4 setEnabled:v3];
}

- (BOOL)_validateForm
{
  v3 = [(SUUIRedeemIdViewController *)self fields];
  v4 = [v3 objectForKeyedSubscript:@"national_redeem_first_name"];
  v5 = [v4 length];

  v6 = [(SUUIRedeemIdViewController *)self fields];
  v7 = [v6 objectForKeyedSubscript:@"national_redeem_last_name"];
  v8 = [v7 length];

  v9 = [(SUUIRedeemIdViewController *)self fields];
  v10 = [v9 objectForKeyedSubscript:@"national_redeem_phone"];
  v11 = [v10 length];

  v12 = [(SUUIRedeemIdViewController *)self fields];
  v13 = [v12 objectForKeyedSubscript:@"national_redeem_national_id"];
  v14 = [v13 length];

  result = 0;
  if (v5 && v8)
  {
    if (v11)
    {
      v16 = v14 == 0;
    }

    else
    {
      v16 = 1;
    }

    return !v16;
  }

  return result;
}

- (void)_reloadFooter
{
  v3 = [(SUUIRedeemIdViewController *)self tableView];
  v2 = [MEMORY[0x277CCAA78] indexSetWithIndex:3];
  [v3 reloadSections:v2 withRowAnimation:5];
}

- (id)_finalOutputFields
{
  v16[3] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SUUIRedeemIdViewController *)self fields];
  v5 = [v4 objectForKeyedSubscript:@"national_redeem_last_name"];
  v6 = [(SUUIRedeemIdViewController *)self fields];
  v7 = [v6 objectForKeyedSubscript:@"national_redeem_first_name"];
  v8 = [v3 stringWithFormat:@"%@%@", v5, v7];

  v16[0] = v8;
  v15[0] = @"name";
  v15[1] = @"phone";
  v9 = [(SUUIRedeemIdViewController *)self fields];
  v10 = [v9 objectForKeyedSubscript:@"national_redeem_phone"];
  v16[1] = v10;
  v15[2] = @"nationalId";
  v11 = [(SUUIRedeemIdViewController *)self fields];
  v12 = [v11 objectForKeyedSubscript:@"national_redeem_national_id"];
  v16[2] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];

  return v13;
}

- (void)_initializeManager
{
  v3 = [SUUIRedeemIdManager alloc];
  v4 = [(SUUIRedeemIdViewController *)self clientContext];
  v5 = [(SUUIRedeemIdManager *)v3 initWithClientContext:v4];
  [(SUUIRedeemIdViewController *)self setManager:v5];

  v6 = [(SUUIRedeemIdViewController *)self manager];
  [v6 setDelegate:self];
}

- (void)_initializeTableView
{
  v3 = objc_alloc(MEMORY[0x277D75B40]);
  v4 = [v3 initWithFrame:1 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(SUUIRedeemIdViewController *)self setTableView:v4];

  v5 = [(SUUIRedeemIdViewController *)self manager];
  v6 = [(SUUIRedeemIdViewController *)self tableView];
  [v6 setDataSource:v5];

  v7 = [(SUUIRedeemIdViewController *)self manager];
  v8 = [(SUUIRedeemIdViewController *)self tableView];
  [v8 setDelegate:v7];

  v9 = [(SUUIRedeemIdViewController *)self view];
  v10 = [(SUUIRedeemIdViewController *)self tableView];
  [v9 addSubview:v10];

  v12 = [(SUUIRedeemIdViewController *)self tableView];
  v11 = [(SUUIRedeemIdViewController *)self manager];
  [v11 setTableView:v12];
}

- (void)_initializeNavigationItem
{
  v16 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancelPressed];
  v3 = objc_alloc(MEMORY[0x277D751E0]);
  v4 = [(SUUIRedeemIdViewController *)self clientContext];
  v5 = v4;
  if (v4)
  {
    [v4 localizedStringForKey:@"REDEEM_NATIONAL_ID_NEXT_BUTTON" inTable:@"Redeem"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"REDEEM_NATIONAL_ID_NEXT_BUTTON" inBundles:0 inTable:@"Redeem"];
  }
  v6 = ;
  v7 = [v3 initWithTitle:v6 style:2 target:self action:sel__nextPressed];
  [(SUUIRedeemIdViewController *)self setNextButton:v7];

  v8 = [(SUUIRedeemIdViewController *)self nextButton];
  [v8 setEnabled:0];

  v9 = [(SUUIRedeemIdViewController *)self navigationItem];
  v10 = [(SUUIRedeemIdViewController *)self clientContext];
  v11 = v10;
  if (v10)
  {
    [v10 localizedStringForKey:@"REDEEM_NATIONAL_ID_VIEW_TITLE" inTable:@"Redeem"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"REDEEM_NATIONAL_ID_VIEW_TITLE" inBundles:0 inTable:@"Redeem"];
  }
  v12 = ;
  [v9 setTitle:v12];

  v13 = [(SUUIRedeemIdViewController *)self navigationItem];
  [v13 setLeftBarButtonItem:v16];

  v14 = [(SUUIRedeemIdViewController *)self navigationItem];
  v15 = [(SUUIRedeemIdViewController *)self nextButton];
  [v14 setRightBarButtonItem:v15];
}

- (void)_cancelPressed
{
  v3 = [(SUUIRedeemIdViewController *)self delegate];
  [v3 redeemIdViewControllerDidCancel:self];
}

- (void)_nextPressed
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v4 = [a1 fields];
  [v5 handleFailureInMethod:a2 object:a1 file:@"SUUIRedeemIdViewController.m" lineNumber:205 description:{@"Submitting fields (next pressed) without the form actually being valid. %@", v4}];
}

- (void)_subscribeToKeyboardEvents
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel__keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel__keyboardDidHide_ name:*MEMORY[0x277D76BA0] object:0];
}

- (void)_keyboardWillShow:(id)a3
{
  v5 = [a3 userInfo];
  v4 = [v5 valueForKey:*MEMORY[0x277D76BB8]];
  [(SUUIRedeemIdViewController *)self _adjustInsetsForKeyboardFrameValue:v4];
}

- (void)_keyboardDidHide:(id)a3
{
  v4 = a3;
  v5 = [(SUUIRedeemIdViewController *)self manager];
  [v5 dismissActiveCell];

  v6 = [v4 userInfo];
  v7 = [v6 valueForKey:*MEMORY[0x277D76BB8]];

  v8 = [v4 userInfo];

  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277D76B78]];

  v10 = MEMORY[0x277D75D18];
  [v9 floatValue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __47__SUUIRedeemIdViewController__keyboardDidHide___block_invoke;
  v14[3] = &unk_2798F5AF8;
  v12 = v11;
  v14[4] = self;
  v15 = v7;
  v13 = v7;
  [v10 animateWithDuration:v14 animations:v12];
}

- (void)_adjustInsetsForKeyboardFrameValue:(id)a3
{
  [a3 CGRectValue];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(SUUIRedeemIdViewController *)self tableView];
  v13 = [v12 superview];
  [v13 convertRect:0 fromView:{v5, v7, v9, v11}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = [(SUUIRedeemIdViewController *)self tableView];
  [v22 frame];
  v43.origin.x = v15;
  v43.origin.y = v17;
  v43.size.width = v19;
  v43.size.height = v21;
  v42 = CGRectIntersection(v41, v43);
  height = v42.size.height;

  v24 = [(SUUIRedeemIdViewController *)self tableView];
  [v24 contentInset];
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v31 = [(SUUIRedeemIdViewController *)self tableView];
  [v31 setContentInset:{v26, v28, height, v30}];

  v32 = [(SUUIRedeemIdViewController *)self tableView];
  [v32 scrollIndicatorInsets];
  v34 = v33;
  v36 = v35;
  v38 = v37;

  v39 = [(SUUIRedeemIdViewController *)self tableView];
  [v39 setScrollIndicatorInsets:{v34, v36, height, v38}];
}

- (SUUIRedeemIdDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end