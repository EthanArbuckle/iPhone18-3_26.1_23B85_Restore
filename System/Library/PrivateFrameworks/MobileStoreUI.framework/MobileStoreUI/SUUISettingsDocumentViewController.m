@interface SUUISettingsDocumentViewController
+ (double)_heightThatFitsWidth:(double)a3 withSettingsHeaderFooterDescription:(id)a4 context:(id)a5;
+ (id)_settingsGroupsFromTemplateElement:(id)a3 withDelegate:(id)a4 settingsContext:(id)a5;
- (SUUISettingsDocumentViewController)initWithTemplateElement:(id)a3 clientContext:(id)a4;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_barButtonItemCancel;
- (id)_barButtonItemDone;
- (id)_barButtonItemEdit;
- (id)_dequeueHeaderFooterViewWithReuseIdentifier:(id)a3;
- (id)_layoutContext;
- (id)_resourceLoader;
- (id)_tableView;
- (id)_textLayoutCache;
- (id)_viewForSettingsHeaderFooterDescription:(id)a3;
- (id)settingsGroupsDescription:(id)a3 viewForSettingAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (void)_cancelButtonAction:(id)a3;
- (void)_deselectItemsAnimated:(BOOL)a3;
- (void)_doneButtonAction:(id)a3;
- (void)_editButtonAction:(id)a3;
- (void)_invalidateLayout;
- (void)_showBarItemLeft:(id)a3 right:(id)a4 animated:(BOOL)a5;
- (void)_showEditBarButtonItemAnimated:(BOOL)a3;
- (void)_showEditingBarButtonItemsEnabled:(BOOL)a3 animated:(BOOL)a4;
- (void)artworkRequest:(id)a3 didLoadImage:(id)a4;
- (void)dealloc;
- (void)documentDidUpdate:(id)a3;
- (void)loadView;
- (void)settingsDocumentViewDidChangeTintColor:(id)a3;
- (void)settingsEditTransaction:(id)a3 isValid:(BOOL)a4;
- (void)settingsEditTransactionDidFailTransaction:(id)a3;
- (void)settingsEditTransactionWillBeginTransaction:(id)a3;
- (void)settingsEditTransactionWillCommitTransaction:(id)a3;
- (void)settingsGroupsDescription:(id)a3 deletedSettingAtIndexPath:(id)a4;
- (void)settingsGroupsDescription:(id)a3 deletedSettingsGroupAtIndex:(unint64_t)a4;
- (void)settingsGroupsDescription:(id)a3 didUpdateSettingsDescription:(id)a4;
- (void)settingsGroupsDescription:(id)a3 dismissViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)settingsGroupsDescription:(id)a3 presentViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)settingsGroupsDescriptionDidUpdateValidity:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation SUUISettingsDocumentViewController

- (SUUISettingsDocumentViewController)initWithTemplateElement:(id)a3 clientContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = SUUISettingsDocumentViewController;
  v9 = [(SUUISettingsDocumentViewController *)&v17 init];
  v10 = v9;
  if (v9)
  {
    [(SUUIViewController *)v9 setClientContext:v8];
    v11 = [[SUUISettingsContext alloc] initWithClientContext:v8];
    settingsContext = v10->_settingsContext;
    v10->_settingsContext = v11;

    objc_storeStrong(&v10->_templateElement, a3);
    v13 = [objc_opt_class() _settingsGroupsFromTemplateElement:v10->_templateElement withDelegate:v10 settingsContext:v10->_settingsContext];
    settingsGroupsDescription = v10->_settingsGroupsDescription;
    v10->_settingsGroupsDescription = v13;

    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    [v15 addObserver:v10 selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x277D76810] object:0];
    [(SUUISettingsDocumentViewController *)v10 _reloadData];
    [(SUUISettingsDocumentViewController *)v10 _invalidateLayout];
  }

  return v10;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D76810] object:0];

  v4.receiver = self;
  v4.super_class = SUUISettingsDocumentViewController;
  [(SUUIViewController *)&v4 dealloc];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 bounds];
  Width = CGRectGetWidth(v16);
  v9 = [(SUUISettingsGroupsDescription *)self->_settingsGroupsDescription settingDescriptionAtIndexPath:v6];
  v10 = objc_alloc_init([SUUISettingDescription viewClassForSettingDescription:v9]);
  v11 = [(SUUISettingsDocumentViewController *)self _layoutContext];
  [v10 reloadWithSettingDescription:v9 width:v11 context:Width];

  v12 = [v7 dequeueReusableCellWithIdentifier:@"SUUISettingsTableViewCellReuseIdentifier" forIndexPath:v6];

  [v12 displaySettingDescriptionView:v10];
  if ([v9 allowsSelection])
  {
    v13 = 3;
  }

  else
  {
    v13 = 0;
  }

  [v12 setSelectionStyle:v13];

  return v12;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(SUUISettingsGroupsDescription *)self->_settingsGroupsDescription settingDescriptionAtIndexPath:v7];
  v9 = v8;
  if (v8 && [v8 allowsSelection])
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __72__SUUISettingsDocumentViewController_tableView_didSelectRowAtIndexPath___block_invoke;
    v10[3] = &unk_2798F67A0;
    objc_copyWeak(&v11, &location);
    [v9 handleSelectionOnCompletion:v10];
    objc_destroyWeak(&v11);
  }

  else
  {
    [(SUUISettingsDocumentViewController *)self _deselectItemsAnimated:1];
  }

  objc_destroyWeak(&location);
}

void __72__SUUISettingsDocumentViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _deselectItemsAnimated:1];
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  settingsGroupsDescription = self->_settingsGroupsDescription;
  v7 = a3;
  v8 = [(SUUISettingsGroupsDescription *)settingsGroupsDescription footerDescriptionForGroupAtIndex:a4];
  v9 = objc_opt_class();
  [v7 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v26.origin.x = v11;
  v26.origin.y = v13;
  v26.size.width = v15;
  v26.size.height = v17;
  Width = CGRectGetWidth(v26);
  v19 = [(SUUISettingsDocumentViewController *)self _layoutContext];
  [v9 _heightThatFitsWidth:v8 withSettingsHeaderFooterDescription:v19 context:Width];
  v21 = v20;

  if ([(SUUISettingsGroupsDescription *)self->_settingsGroupsDescription numberOfGroups]- 1 == a4)
  {
    v22 = 36.0;
  }

  else
  {
    v23 = [(SUUISettingsGroupsDescription *)self->_settingsGroupsDescription shouldShowHeaderForGroupAtIndex:a4 + 1];
    v22 = 36.0;
    if (v23)
    {
      v22 = 2.22044605e-16;
    }
  }

  v24 = v21 + v22;

  return v24;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  settingsGroupsDescription = self->_settingsGroupsDescription;
  v7 = a3;
  v8 = [(SUUISettingsGroupsDescription *)settingsGroupsDescription headerDescriptionForGroupAtIndex:a4];
  v9 = objc_opt_class();
  [v7 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v26.origin.x = v11;
  v26.origin.y = v13;
  v26.size.width = v15;
  v26.size.height = v17;
  Width = CGRectGetWidth(v26);
  v19 = [(SUUISettingsDocumentViewController *)self _layoutContext];
  [v9 _heightThatFitsWidth:v8 withSettingsHeaderFooterDescription:v19 context:Width];
  v21 = v20;

  if (a4)
  {
    v22 = [(SUUISettingsGroupsDescription *)self->_settingsGroupsDescription shouldShowHeaderForGroupAtIndex:a4];
    v23 = 2.22044605e-16;
    if (v22)
    {
      v23 = 36.0;
    }
  }

  else
  {
    v23 = 16.0;
  }

  v24 = v21 + v23;

  return v24;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 bounds];
  Width = CGRectGetWidth(v14);
  v8 = [(SUUISettingsGroupsDescription *)self->_settingsGroupsDescription settingDescriptionAtIndexPath:v6];

  v9 = [SUUISettingDescription viewClassForSettingDescription:v8];
  v10 = [(SUUISettingsDocumentViewController *)self _layoutContext];
  [(objc_class *)v9 sizeThatFitsWidth:v8 settingDescription:v10 context:Width];
  v12 = v11;

  return fmax(v12, 48.0);
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  if ([(SUUISettingsGroupsDescription *)self->_settingsGroupsDescription shouldShowFooterForGroupAtIndex:a4])
  {
    v6 = [(SUUISettingsGroupsDescription *)self->_settingsGroupsDescription footerDescriptionForGroupAtIndex:a4];
    v7 = [(SUUISettingsDocumentViewController *)self _viewForSettingsHeaderFooterDescription:v6];
  }

  else
  {
    v7 = [(UITableView *)self->_tableView dequeueReusableHeaderFooterViewWithIdentifier:@"SUUISettingsTableViewEmptyHeaderFooterViewReuseIdentifier"];
  }

  return v7;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  if ([(SUUISettingsGroupsDescription *)self->_settingsGroupsDescription shouldShowHeaderForGroupAtIndex:a4])
  {
    v6 = [(SUUISettingsGroupsDescription *)self->_settingsGroupsDescription headerDescriptionForGroupAtIndex:a4];
    v7 = [(SUUISettingsDocumentViewController *)self _viewForSettingsHeaderFooterDescription:v6];
  }

  else
  {
    v7 = [(UITableView *)self->_tableView dequeueReusableHeaderFooterViewWithIdentifier:@"SUUISettingsTableViewEmptyHeaderFooterViewReuseIdentifier"];
  }

  return v7;
}

- (void)loadView
{
  v5 = objc_alloc_init(SUUISettingsDocumentView);
  [(SUUISettingsDocumentView *)v5 setDelegate:self];
  v3 = [(SUUISettingsDocumentViewController *)self _tableView];
  if (storeShouldReverseLayoutDirection())
  {
    v4 = 4;
  }

  else
  {
    v4 = 3;
  }

  [v3 setSemanticContentAttribute:v4];
  [(SUUISettingsDocumentView *)v5 addSubview:v3];
  [(SUUISettingsDocumentViewController *)self setView:v5];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = SUUISettingsDocumentViewController;
  [(SUUISettingsDocumentViewController *)&v5 viewDidAppear:?];
  [(SUUIResourceLoader *)self->_resourceLoader enterForeground];
  if ([(SUUISettingsGroupsDescription *)self->_settingsGroupsDescription hasEditableSettingDescriptions])
  {
    [(SUUISettingsDocumentViewController *)self _showEditBarButtonItemAnimated:v3];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SUUISettingsDocumentViewController;
  [(SUUIViewController *)&v4 viewWillAppear:a3];
  [(SUUISettingsDocumentViewController *)self _reloadData];
  [(SUUISettingsDocumentViewController *)self _invalidateLayout];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = SUUISettingsDocumentViewController;
  [(SUUISettingsDocumentViewController *)&v3 viewWillLayoutSubviews];
  [(SUUISettingsDocumentViewController *)self _invalidateLayout];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SUUISettingsDocumentViewController;
  [(SUUISettingsDocumentViewController *)&v4 viewDidDisappear:a3];
  [(SUUIResourceLoader *)self->_resourceLoader enterBackground];
}

- (void)artworkRequest:(id)a3 didLoadImage:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [(UITableView *)self->_tableView visibleCells];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v16 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v15 + 1) + 8 * v12);
      v14 = [(SUUISettingsDocumentViewController *)self _layoutContext];
      LOBYTE(v13) = [v13 setImage:v7 forArtworkRequest:v6 context:v14];

      if (v13)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)documentDidUpdate:(id)a3
{
  v10 = a3;
  settingsGroupsDescription = self->_settingsGroupsDescription;
  if (settingsGroupsDescription)
  {
    [(SUUISettingsGroupsDescription *)settingsGroupsDescription recycle];
    v5 = self->_settingsGroupsDescription;
    self->_settingsGroupsDescription = 0;
  }

  v6 = [v10 templateElement];
  templateElement = self->_templateElement;
  self->_templateElement = v6;

  v8 = [objc_opt_class() _settingsGroupsFromTemplateElement:self->_templateElement withDelegate:self settingsContext:self->_settingsContext];
  v9 = self->_settingsGroupsDescription;
  self->_settingsGroupsDescription = v8;

  if ([(SUUISettingsGroupsDescription *)self->_settingsGroupsDescription hasEditableSettingDescriptions])
  {
    [(SUUISettingsDocumentViewController *)self _showEditBarButtonItemAnimated:1];
  }

  [(SUUISettingsDocumentViewController *)self _reloadData];
  [(SUUISettingsDocumentViewController *)self _invalidateLayout];
}

- (void)settingsDocumentViewDidChangeTintColor:(id)a3
{
  v4 = a3;
  v5 = [(SUUISettingsDocumentViewController *)self _layoutContext];
  v6 = [v4 tintColor];

  [v5 setTintColor:v6];

  [(SUUISettingsDocumentViewController *)self _invalidateLayout];
}

- (void)settingsEditTransactionDidFailTransaction:(id)a3
{
  v3 = [(SUUISettingsDocumentViewController *)self _barButtonItemDone];
  [v3 setEnabled:1];
}

- (void)settingsEditTransactionWillBeginTransaction:(id)a3
{
  v4 = [a3 isValid];

  [(SUUISettingsDocumentViewController *)self _showEditingBarButtonItemsEnabled:v4 animated:1];
}

- (void)settingsEditTransactionWillCommitTransaction:(id)a3
{
  v3 = [(SUUISettingsDocumentViewController *)self _barButtonItemDone];
  [v3 setEnabled:0];
}

- (void)settingsEditTransaction:(id)a3 isValid:(BOOL)a4
{
  v4 = a4;
  v5 = [(SUUISettingsDocumentViewController *)self _barButtonItemDone];
  [v5 setEnabled:v4];
}

- (void)settingsGroupsDescription:(id)a3 deletedSettingAtIndexPath:(id)a4
{
  v5 = MEMORY[0x277CBEA60];
  v6 = a4;
  v7 = [[v5 alloc] initWithObjects:{v6, 0}];

  [(UITableView *)self->_tableView deleteRowsAtIndexPaths:v7 withRowAnimation:0];
}

- (void)settingsGroupsDescription:(id)a3 deletedSettingsGroupAtIndex:(unint64_t)a4
{
  v5 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndex:a4];
  [(UITableView *)self->_tableView deleteSections:v5 withRowAnimation:0];
}

- (void)settingsGroupsDescription:(id)a3 didUpdateSettingsDescription:(id)a4
{
  v14 = a4;
  v6 = [v14 updateType];
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      tableView = self->_tableView;
      v8 = [v14 indexPaths];
      [(UITableView *)tableView deleteRowsAtIndexPaths:v8 withRowAnimation:0];
      goto LABEL_15;
    }

    if (v6 != 4)
    {
      if (v6 == 5)
      {
        v9 = self->_tableView;
        v8 = [v14 indexPaths];
        [(UITableView *)v9 reloadRowsAtIndexPaths:v8 withRowAnimation:5];
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    v13 = self->_tableView;
    v8 = [v14 indexPaths];
    [(UITableView *)v13 insertRowsAtIndexPaths:v8 withRowAnimation:0];
  }

  else
  {
    if (!v6)
    {
      v10 = self->_tableView;
      v8 = [v14 indexSet];
      [(UITableView *)v10 deleteSections:v8 withRowAnimation:0];
      goto LABEL_15;
    }

    if (v6 != 1)
    {
      if (v6 == 2)
      {
        v7 = self->_tableView;
        v8 = [v14 indexSet];
        [(UITableView *)v7 reloadSections:v8 withRowAnimation:0];
        goto LABEL_15;
      }

LABEL_12:
      v8 = [MEMORY[0x277CCA890] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"SUUISettingsDocumentViewController.m" lineNumber:374 description:@"Hit unhandled update type."];
      goto LABEL_15;
    }

    v12 = self->_tableView;
    v8 = [v14 indexSet];
    [(UITableView *)v12 insertSections:v8 withRowAnimation:0];
  }

LABEL_15:
}

- (void)settingsGroupsDescription:(id)a3 dismissViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v15 = a4;
  v10 = a6;
  v11 = [(SUUISettingsDocumentViewController *)self presentedViewController];
  v12 = [v11 isEqual:v15];

  if ((v12 & 1) == 0)
  {
    [SUUISettingsDocumentViewController settingsGroupsDescription:a2 dismissViewController:self animated:? completion:?];
  }

  v13 = [(SUUISettingsDocumentViewController *)self presentedViewController];
  v14 = [v13 isEqual:v15];

  if (v14)
  {
    [(SUUISettingsDocumentViewController *)self dismissViewControllerAnimated:v7 completion:v10];
  }
}

- (void)settingsGroupsDescription:(id)a3 presentViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v13 = a4;
  v10 = a6;
  v11 = [(SUUISettingsDocumentViewController *)self presentedViewController];

  if (v11)
  {
    [SUUISettingsDocumentViewController settingsGroupsDescription:a2 presentViewController:self animated:? completion:?];
  }

  v12 = [(SUUISettingsDocumentViewController *)self presentedViewController];

  if (!v12)
  {
    [(SUUISettingsDocumentViewController *)self presentViewController:v13 animated:v7 completion:v10];
  }
}

- (id)settingsGroupsDescription:(id)a3 viewForSettingAtIndexPath:(id)a4
{
  v4 = [(UITableView *)self->_tableView cellForRowAtIndexPath:a4];
  v5 = [v4 settingDescriptionView];

  return v5;
}

- (void)settingsGroupsDescriptionDidUpdateValidity:(id)a3
{
  if (self->_editTransaction)
  {
    barButtonItemDone = self->_barButtonItemDone;
    v4 = [(SUUISettingsEditTransaction *)self->_editTransaction isValid];

    [(UIBarButtonItem *)barButtonItemDone setEnabled:v4];
  }
}

- (void)_cancelButtonAction:(id)a3
{
  if ([(SUUISettingsEditTransaction *)self->_editTransaction isCommiting])
  {
    editTransaction = self->_editTransaction;

    [(SUUISettingsEditTransaction *)editTransaction cancelTransaction];
  }

  else
  {
    v5 = [(SUUISettingsDocumentViewController *)self view];
    v6 = [v5 window];
    v7 = [v6 firstResponder];
    [v7 resignFirstResponder];

    [(SUUISettingsEditTransaction *)self->_editTransaction rollbackTransaction];
    v8 = self->_editTransaction;
    self->_editTransaction = 0;
  }
}

- (void)_doneButtonAction:(id)a3
{
  v4 = [(SUUISettingsDocumentViewController *)self view];
  v5 = [v4 window];
  v6 = [v5 firstResponder];
  [v6 resignFirstResponder];

  editTransaction = self->_editTransaction;

  [(SUUISettingsEditTransaction *)editTransaction commitTransaction];
}

- (void)_editButtonAction:(id)a3
{
  v4 = [(SUUISettingsGroupsDescription *)self->_settingsGroupsDescription createEditTransaction];
  editTransaction = self->_editTransaction;
  self->_editTransaction = v4;

  [(SUUISettingsEditTransaction *)self->_editTransaction setDelegate:self];
  v6 = self->_editTransaction;

  [(SUUISettingsEditTransaction *)v6 beginTransaction];
}

+ (double)_heightThatFitsWidth:(double)a3 withSettingsHeaderFooterDescription:(id)a4 context:(id)a5
{
  if (!a4)
  {
    return 0.0;
  }

  v7 = a5;
  v8 = a4;
  [(objc_class *)[SUUISettingsHeaderFooterDescription viewClassForSettingsHeaderFooterDescription:?]settingsHeaderFooterDescription:"sizeThatFitsWidth:settingsHeaderFooterDescription:context:" context:v8, v7, a3];
  v10 = v9;

  return v10;
}

+ (id)_settingsGroupsFromTemplateElement:(id)a3 withDelegate:(id)a4 settingsContext:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[SUUISettingsGroupsDescription alloc] initWithDelegate:v8 settingsContext:v7];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __102__SUUISettingsDocumentViewController__settingsGroupsFromTemplateElement_withDelegate_settingsContext___block_invoke;
  v13[3] = &unk_2798F5B20;
  v11 = v10;
  v14 = v11;
  [v9 enumerateChildrenUsingBlock:v13];

  return v11;
}

void __102__SUUISettingsDocumentViewController__settingsGroupsFromTemplateElement_withDelegate_settingsContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 elementType] == 46)
  {
    [*(a1 + 32) addSettingsGroupWithViewElement:v3];
  }
}

- (id)_barButtonItemCancel
{
  barButtonItemCancel = self->_barButtonItemCancel;
  if (!barButtonItemCancel)
  {
    v4 = [(SUUIViewController *)self clientContext];
    v5 = v4;
    if (v4)
    {
      [v4 localizedStringForKey:@"SETTINGS_NAVIGATION_CANCEL" inTable:@"Settings"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"SETTINGS_NAVIGATION_CANCEL" inBundles:0 inTable:@"Settings"];
    }
    v6 = ;

    v7 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v6 style:0 target:self action:sel__cancelButtonAction_];
    v8 = self->_barButtonItemCancel;
    self->_barButtonItemCancel = v7;

    barButtonItemCancel = self->_barButtonItemCancel;
  }

  return barButtonItemCancel;
}

- (id)_barButtonItemDone
{
  barButtonItemDone = self->_barButtonItemDone;
  if (!barButtonItemDone)
  {
    v4 = [(SUUIViewController *)self clientContext];
    v5 = v4;
    if (v4)
    {
      [v4 localizedStringForKey:@"SETTINGS_NAVIGATION_DONE" inTable:@"Settings"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"SETTINGS_NAVIGATION_DONE" inBundles:0 inTable:@"Settings"];
    }
    v6 = ;

    v7 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v6 style:2 target:self action:sel__doneButtonAction_];
    v8 = self->_barButtonItemDone;
    self->_barButtonItemDone = v7;

    barButtonItemDone = self->_barButtonItemDone;
  }

  return barButtonItemDone;
}

- (id)_barButtonItemEdit
{
  barButtonItemEdit = self->_barButtonItemEdit;
  if (!barButtonItemEdit)
  {
    v4 = [(SUUIViewController *)self clientContext];
    v5 = v4;
    if (v4)
    {
      [v4 localizedStringForKey:@"SETTINGS_NAVIGATION_EDIT" inTable:@"Settings"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"SETTINGS_NAVIGATION_EDIT" inBundles:0 inTable:@"Settings"];
    }
    v6 = ;

    v7 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v6 style:0 target:self action:sel__editButtonAction_];
    v8 = self->_barButtonItemEdit;
    self->_barButtonItemEdit = v7;

    barButtonItemEdit = self->_barButtonItemEdit;
  }

  return barButtonItemEdit;
}

- (id)_dequeueHeaderFooterViewWithReuseIdentifier:(id)a3
{
  v4 = [(UITableView *)self->_tableView dequeueReusableHeaderFooterViewWithIdentifier:a3];
  [(UITableView *)self->_tableView layoutMargins];
  [v4 setLayoutMargins:?];

  return v4;
}

- (void)_deselectItemsAnimated:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x277D85DE8];
  v5 = [(UITableView *)self->_tableView indexPathsForSelectedRows];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(UITableView *)self->_tableView deselectRowAtIndexPath:*(*(&v10 + 1) + 8 * v9++) animated:v3];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_invalidateLayout
{
  if ([(SUUISettingsDocumentViewController *)self isViewLoaded])
  {
    settingsGroupsDescription = self->_settingsGroupsDescription;
    [(UITableView *)self->_tableView bounds];
    Width = CGRectGetWidth(v14);
    v5 = [(SUUISettingsDocumentViewController *)self _layoutContext];
    [(SUUISettingsGroupsDescription *)settingsGroupsDescription requestLayoutForWidth:v5 context:Width];

    v6 = [(SUUISettingsDocumentViewController *)self _textLayoutCache];
    v7 = [v6 layoutCache];
    [v7 commitLayoutRequests];

    v12 = [(SUUISettingsTemplateViewElement *)self->_templateElement style];
    v8 = [v12 valueForStyle:*MEMORY[0x277D1AFA0]];
    v9 = v8;
    if (v8)
    {
      tableView = self->_tableView;
      v11 = [v8 color];
      [(UITableView *)tableView setBackgroundColor:v11];
    }

    [(UITableView *)self->_tableView reloadData];
  }
}

- (id)_layoutContext
{
  layoutContext = self->_layoutContext;
  if (!layoutContext)
  {
    v4 = objc_alloc_init(SUUIViewElementLayoutContext);
    v5 = self->_layoutContext;
    self->_layoutContext = v4;

    [(SUUIViewElementLayoutContext *)self->_layoutContext setArtworkRequestDelegate:self];
    v6 = self->_layoutContext;
    v7 = [(SUUISettingsDocumentViewController *)self _textLayoutCache];
    [(SUUIViewElementLayoutContext *)v6 setLabelLayoutCache:v7];

    v8 = self->_layoutContext;
    v9 = [(SUUISettingsDocumentViewController *)self _resourceLoader];
    [(SUUIViewElementLayoutContext *)v8 setResourceLoader:v9];

    v10 = self->_layoutContext;
    v11 = [(SUUIViewController *)self clientContext];
    [(SUUIViewElementLayoutContext *)v10 setClientContext:v11];

    v12 = self->_layoutContext;
    v13 = [(SUUISettingsDocumentViewController *)self view];
    v14 = [v13 tintColor];
    [(SUUIViewElementLayoutContext *)v12 setTintColor:v14];

    layoutContext = self->_layoutContext;
  }

  return layoutContext;
}

- (id)_resourceLoader
{
  resourceLoader = self->_resourceLoader;
  if (!resourceLoader)
  {
    v4 = [SUUIResourceLoader alloc];
    v5 = [(SUUIViewController *)self clientContext];
    v6 = [(SUUIResourceLoader *)v4 initWithClientContext:v5];
    v7 = self->_resourceLoader;
    self->_resourceLoader = v6;

    v8 = self->_resourceLoader;
    v9 = SUUIResourceLoaderGetNameForObject(self);
    [(SUUIResourceLoader *)v8 setName:v9];

    resourceLoader = self->_resourceLoader;
  }

  return resourceLoader;
}

- (void)_showBarItemLeft:(id)a3 right:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v13 = a3;
  v8 = a4;
  v9 = [(SUUISettingsDocumentViewController *)self parentViewController];
  v10 = [v9 navigationItem];

  if (v13)
  {
    [v10 setHidesBackButton:1 animated:v5];
    v11 = v10;
    v12 = v13;
  }

  else
  {
    [v10 setHidesBackButton:0 animated:v5];
    v11 = v10;
    v12 = 0;
  }

  [v11 setLeftBarButtonItem:v12 animated:v5];
  [v10 setRightBarButtonItem:v8 animated:v5];
}

- (void)_showEditBarButtonItemAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(SUUISettingsDocumentViewController *)self _barButtonItemEdit];
  [(SUUISettingsDocumentViewController *)self _showBarItemLeft:0 right:v5 animated:v3];
}

- (void)_showEditingBarButtonItemsEnabled:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(SUUISettingsDocumentViewController *)self _barButtonItemDone];
  [v7 setEnabled:v5];

  v9 = [(SUUISettingsDocumentViewController *)self _barButtonItemCancel];
  v8 = [(SUUISettingsDocumentViewController *)self _barButtonItemDone];
  [(SUUISettingsDocumentViewController *)self _showBarItemLeft:v9 right:v8 animated:v4];
}

- (id)_textLayoutCache
{
  textLayoutCache = self->_textLayoutCache;
  if (!textLayoutCache)
  {
    v4 = objc_alloc_init(SUUILayoutCache);
    v5 = [[SUUIViewElementTextLayoutCache alloc] initWithLayoutCache:v4];
    v6 = self->_textLayoutCache;
    self->_textLayoutCache = v5;

    textLayoutCache = self->_textLayoutCache;
  }

  return textLayoutCache;
}

- (id)_tableView
{
  tableView = self->_tableView;
  if (!tableView)
  {
    v4 = objc_alloc(MEMORY[0x277D75B40]);
    v5 = [v4 initWithFrame:1 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v6 = self->_tableView;
    self->_tableView = v5;

    [(UITableView *)self->_tableView setAutoresizingMask:18];
    [(UITableView *)self->_tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"SUUISettingsTableViewCellReuseIdentifier"];
    [(UITableView *)self->_tableView registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"SUUISettingsTableViewEmptyHeaderFooterViewReuseIdentifier"];
    [(UITableView *)self->_tableView registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"SUUISettingsTableViewHeaderFooterViewReuseIdentifier"];
    [(UITableView *)self->_tableView setDelegate:self];
    [(UITableView *)self->_tableView setDataSource:self];
    tableView = self->_tableView;
  }

  return tableView;
}

- (id)_viewForSettingsHeaderFooterDescription:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init([SUUISettingsHeaderFooterDescription viewClassForSettingsHeaderFooterDescription:v4]);
  [(UITableView *)self->_tableView bounds];
  Width = CGRectGetWidth(v11);
  v7 = [(SUUISettingsDocumentViewController *)self _layoutContext];
  [v5 reloadWithSettingsHeaderFooterDescription:v4 width:v7 context:Width];

  v8 = [(SUUISettingsDocumentViewController *)self _dequeueHeaderFooterViewWithReuseIdentifier:@"SUUISettingsTableViewHeaderFooterViewReuseIdentifier"];
  [v8 displaySettingsHeaderFooterDescriptionView:v5];

  return v8;
}

- (void)settingsGroupsDescription:(uint64_t)a1 dismissViewController:(uint64_t)a2 animated:completion:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SUUISettingsDocumentViewController.m" lineNumber:383 description:@"Cannot dismiss view controller as it is not the view controller currently presented."];
}

- (void)settingsGroupsDescription:(uint64_t)a1 presentViewController:(uint64_t)a2 animated:completion:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SUUISettingsDocumentViewController.m" lineNumber:393 description:@"Already presenting a view controller."];
}

@end