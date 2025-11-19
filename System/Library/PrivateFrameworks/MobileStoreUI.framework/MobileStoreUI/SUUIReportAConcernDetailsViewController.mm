@interface SUUIReportAConcernDetailsViewController
- (SUUIReportAConcernDetailsViewController)initWithCoder:(id)a3;
- (SUUIReportAConcernDetailsViewController)initWithConfiguration:(id)a3;
- (SUUIReportAConcernDetailsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)_detailsCellHeight;
- (id)_detailsText;
- (void)_keyboardWillHide:(id)a3;
- (void)_keyboardWillShow:(id)a3;
- (void)dealloc;
- (void)submitPressed:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation SUUIReportAConcernDetailsViewController

- (SUUIReportAConcernDetailsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5 = objc_alloc_init(SUUIReportAConcernConfiguration);
  v6 = [(SUUIReportAConcernDetailsViewController *)self initWithConfiguration:v5];

  return v6;
}

- (SUUIReportAConcernDetailsViewController)initWithCoder:(id)a3
{
  v4 = objc_alloc_init(SUUIReportAConcernConfiguration);
  v5 = [(SUUIReportAConcernDetailsViewController *)self initWithConfiguration:v4];

  return v5;
}

- (SUUIReportAConcernDetailsViewController)initWithConfiguration:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SUUIReportAConcernDetailsViewController;
  v6 = [(SUUIReportAConcernDetailsViewController *)&v10 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v7 selector:sel__keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];
    [v8 addObserver:v7 selector:sel__keyboardWillHide_ name:*MEMORY[0x277D76C50] object:0];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D76C60] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D76C50] object:0];

  v4.receiver = self;
  v4.super_class = SUUIReportAConcernDetailsViewController;
  [(SUUIReportAConcernDetailsViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v21.receiver = self;
  v21.super_class = SUUIReportAConcernDetailsViewController;
  [(SUUIReportAConcernDetailsViewController *)&v21 viewDidLoad];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"REPORT_A_CONCERN" value:&stru_286AECDE0 table:0];
  [(SUUIReportAConcernDetailsViewController *)self setTitle:v4];

  v5 = objc_alloc(MEMORY[0x277D751E0]);
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"SUBMIT" value:&stru_286AECDE0 table:0];
  v8 = [v5 initWithTitle:v7 style:2 target:self action:sel_submitPressed_];
  v9 = [(SUUIReportAConcernDetailsViewController *)self navigationItem];
  [v9 setRightBarButtonItem:v8];

  v10 = objc_alloc(MEMORY[0x277D75B40]);
  v11 = [v10 initWithFrame:1 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v11 setAllowsSelection:0];
  [v11 setDelegate:self];
  v12 = [[SUUIReportAConcernDetailsDataSource alloc] initWithTableView:v11];
  v13 = [(SUUIReportAConcernDetailsViewController *)self configuration];
  v14 = [v13 reportConcernExplanation];
  [(SUUIReportAConcernDetailsDataSource *)v12 setPlaceholder:v14];

  v15 = [(SUUIReportAConcernDetailsViewController *)self metadata];
  v16 = [v15 selectedReason];
  v17 = [v16 uppercaseName];
  [(SUUIReportAConcernDetailsDataSource *)v12 setSelectedReason:v17];

  v18 = [(SUUIReportAConcernDetailsViewController *)self configuration];
  v19 = [v18 privacyNote];
  [(SUUIReportAConcernDetailsDataSource *)v12 setPrivacyNote:v19];

  [v11 setDataSource:v12];
  [(SUUIReportAConcernDetailsViewController *)self setDataSource:v12];
  v20 = [(SUUIReportAConcernDetailsViewController *)self view];
  [v20 addSubview:v11];

  [(SUUIReportAConcernDetailsViewController *)self setTableView:v11];
}

- (void)viewWillLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = SUUIReportAConcernDetailsViewController;
  [(SUUIReportAConcernDetailsViewController *)&v13 viewWillLayoutSubviews];
  v3 = [(SUUIReportAConcernDetailsViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(SUUIReportAConcernDetailsViewController *)self tableView];
  [v12 setFrame:{v5, v7, v9, v11}];
}

- (void)submitPressed:(id)a3
{
  v4 = a3;
  [v4 setEnabled:0];
  v5 = [(SUUIReportAConcernDetailsViewController *)self _detailsText];
  v6 = [(SUUIReportAConcernDetailsViewController *)self metadata];
  [v6 setDetails:v5];

  v7 = [MEMORY[0x277D75128] sharedApplication];
  [v7 sendAction:sel_resignFirstResponder to:0 from:0 forEvent:0];

  v8 = *MEMORY[0x277D767B0];
  v9 = [MEMORY[0x277D75128] sharedApplication];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __57__SUUIReportAConcernDetailsViewController_submitPressed___block_invoke;
  v31[3] = &__block_descriptor_40_e5_v8__0l;
  v31[4] = v8;
  v12 = [v9 beginBackgroundTaskWithName:v11 expirationHandler:v31];

  v13 = [(SUUIReportAConcernDetailsViewController *)self view];
  v14 = [v13 window];

  v15 = [SUUIReportAConcernOperation alloc];
  v16 = [(SUUIReportAConcernDetailsViewController *)self metadata];
  v17 = [(SUUIReportAConcernOperation *)v15 initWithMetadata:v16];

  objc_initWeak(&location, v17);
  objc_initWeak(&from, self);
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __57__SUUIReportAConcernDetailsViewController_submitPressed___block_invoke_2;
  v24 = &unk_2798FDDB0;
  objc_copyWeak(&v27, &location);
  v18 = v14;
  v25 = v18;
  objc_copyWeak(v28, &from);
  v19 = v4;
  v26 = v19;
  v28[1] = v12;
  [(SUUIReportAConcernOperation *)v17 setCompletionBlock:&v21];
  v20 = [MEMORY[0x277D7FD20] mainQueue];
  [v20 addOperation:v17];

  objc_destroyWeak(v28);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __57__SUUIReportAConcernDetailsViewController_submitPressed___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  [v2 endBackgroundTask:*(a1 + 32)];
}

void __57__SUUIReportAConcernDetailsViewController_submitPressed___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__SUUIReportAConcernDetailsViewController_submitPressed___block_invoke_3;
  block[3] = &unk_2798FDD88;
  v7 = WeakRetained;
  v8 = *(a1 + 32);
  v3 = WeakRetained;
  objc_copyWeak(v10, (a1 + 56));
  v4 = *(a1 + 40);
  v5 = *(a1 + 64);
  v9 = v4;
  v10[1] = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(v10);
}

void __57__SUUIReportAConcernDetailsViewController_submitPressed___block_invoke_3(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) responseDictionary];
  if (([*(a1 + 32) success] & 1) == 0 && v2)
  {
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v28 = [objc_alloc(MEMORY[0x277D69A88]) initWithResponseDictionary:v2];
    v3 = [v28 actions];
    v4 = [v3 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v34;
      v7 = *MEMORY[0x277D6A570];
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v34 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v33 + 1) + 8 * i);
          v10 = [v9 actionType];
          v11 = [v10 isEqualToString:v7];

          if (v11)
          {
            v16 = [v9 dialog];
            v17 = [MEMORY[0x277D75118] _alertViewForWindow:*(a1 + 40)];
            v18 = [v16 message];
            [v17 setMessage:v18];

            v19 = [v16 title];
            [v17 setTitle:v19];

            WeakRetained = objc_loadWeakRetained((a1 + 56));
            [v17 setDelegate:WeakRetained];

            v21 = [v16 buttons];
            v29 = 0u;
            v30 = 0u;
            v31 = 0u;
            v32 = 0u;
            v22 = [v21 countByEnumeratingWithState:&v29 objects:v37 count:16];
            if (v22)
            {
              v23 = v22;
              v24 = *v30;
              do
              {
                for (j = 0; j != v23; ++j)
                {
                  if (*v30 != v24)
                  {
                    objc_enumerationMutation(v21);
                  }

                  v26 = [*(*(&v29 + 1) + 8 * j) buttonTitle];
                  [v17 addButtonWithTitle:v26];
                }

                v23 = [v21 countByEnumeratingWithState:&v29 objects:v37 count:16];
              }

              while (v23);
            }

            [v17 show];

            goto LABEL_22;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v33 objects:v38 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }
  }

  v12 = objc_loadWeakRetained((a1 + 56));
  v13 = [v12 completion];

  if (v13)
  {
    v14 = objc_loadWeakRetained((a1 + 56));
    v15 = [v14 completion];
    v15[2](v15, 1);
  }

  else
  {
LABEL_22:
    [*(a1 + 48) setEnabled:1];
  }

  if (*(a1 + 64) != *MEMORY[0x277D767B0])
  {
    v27 = [MEMORY[0x277D75128] sharedApplication];
    [v27 endBackgroundTask:*(a1 + 64)];
  }
}

- (id)_detailsText
{
  v2 = [(SUUIReportAConcernDetailsViewController *)self tableView];
  v3 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
  v4 = [v2 cellForRowAtIndexPath:v3];

  v5 = [v4 text];

  return v5;
}

- (double)_detailsCellHeight
{
  v3 = [(SUUIReportAConcernDetailsViewController *)self view];
  [v3 bounds];
  Height = CGRectGetHeight(v11);
  v5 = [(SUUIReportAConcernDetailsViewController *)self topLayoutGuide];
  [v5 length];
  v7 = Height - v6;
  [(SUUIReportAConcernDetailsViewController *)self keyboardHeight];
  v9 = v7 - v8;

  return fmin(v9, 250.0);
}

- (void)_keyboardWillShow:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x277D76BB8]];
  [v5 CGRectValue];
  [(SUUIReportAConcernDetailsViewController *)self setKeyboardHeight:v6];
  v7 = [v4 objectForKey:*MEMORY[0x277D76B78]];
  [v7 floatValue];
  v9 = v8;

  v10 = [v4 objectForKey:*MEMORY[0x277D76B70]];
  v11 = [v10 integerValue];

  v12 = [(SUUIReportAConcernDetailsViewController *)self tableView];
  [v12 contentInset];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __61__SUUIReportAConcernDetailsViewController__keyboardWillShow___block_invoke;
  v21[3] = &unk_2798F5DA8;
  v21[4] = self;
  v21[5] = v14;
  v21[6] = v16;
  v21[7] = v18;
  v21[8] = v20;
  [MEMORY[0x277D75D18] animateWithDuration:v11 delay:v21 options:&__block_literal_global_62 animations:v9 completion:0.0];
}

void __61__SUUIReportAConcernDetailsViewController__keyboardWillShow___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  [v2 beginUpdates];

  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  [*(a1 + 32) keyboardHeight];
  v6 = v5;
  v7 = *(a1 + 64);
  v8 = [*(a1 + 32) tableView];
  [v8 setContentInset:{v3, v4, v6, v7}];

  v9 = [*(a1 + 32) tableView];
  v10 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
  v17 = [v9 cellForRowAtIndexPath:v10];

  v11 = [*(a1 + 32) tableView];
  [v17 frame];
  MinY = CGRectGetMinY(v19);
  v13 = [*(a1 + 32) tableView];
  [v13 contentInset];
  [v11 setContentOffset:{0.0, MinY - v14}];

  v15 = [*(a1 + 32) tableView];
  [v15 endUpdates];

  v16 = [*(a1 + 32) view];
  [v16 layoutIfNeeded];
}

- (void)_keyboardWillHide:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x277D76B78]];
  [v5 floatValue];
  v7 = v6;

  v8 = [v4 objectForKey:*MEMORY[0x277D76B70]];
  v9 = [v8 integerValue];

  v10 = [(SUUIReportAConcernDetailsViewController *)self tableView];
  [v10 contentInset];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [(SUUIReportAConcernDetailsViewController *)self setKeyboardHeight:0.0];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __61__SUUIReportAConcernDetailsViewController__keyboardWillHide___block_invoke;
  v19[3] = &unk_2798F5DA8;
  v19[4] = self;
  v19[5] = v12;
  v19[6] = v14;
  v19[7] = v16;
  v19[8] = v18;
  [MEMORY[0x277D75D18] animateWithDuration:v9 delay:v19 options:0 animations:v7 completion:0.0];
}

void __61__SUUIReportAConcernDetailsViewController__keyboardWillHide___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  [*(a1 + 32) keyboardHeight];
  v5 = v4;
  v6 = *(a1 + 64);
  v7 = [*(a1 + 32) tableView];
  [v7 setContentInset:{v2, v3, v5, v6}];

  v8 = [*(a1 + 32) view];
  [v8 layoutIfNeeded];

  v9 = [*(a1 + 32) tableView];
  [v9 beginUpdates];

  v10 = [*(a1 + 32) tableView];
  [v10 endUpdates];
}

@end