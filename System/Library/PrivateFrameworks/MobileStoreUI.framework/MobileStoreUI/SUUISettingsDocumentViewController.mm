@interface SUUISettingsDocumentViewController
+ (double)_heightThatFitsWidth:(double)width withSettingsHeaderFooterDescription:(id)description context:(id)context;
+ (id)_settingsGroupsFromTemplateElement:(id)element withDelegate:(id)delegate settingsContext:(id)context;
- (SUUISettingsDocumentViewController)initWithTemplateElement:(id)element clientContext:(id)context;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_barButtonItemCancel;
- (id)_barButtonItemDone;
- (id)_barButtonItemEdit;
- (id)_dequeueHeaderFooterViewWithReuseIdentifier:(id)identifier;
- (id)_layoutContext;
- (id)_resourceLoader;
- (id)_tableView;
- (id)_textLayoutCache;
- (id)_viewForSettingsHeaderFooterDescription:(id)description;
- (id)settingsGroupsDescription:(id)description viewForSettingAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)_cancelButtonAction:(id)action;
- (void)_deselectItemsAnimated:(BOOL)animated;
- (void)_doneButtonAction:(id)action;
- (void)_editButtonAction:(id)action;
- (void)_invalidateLayout;
- (void)_showBarItemLeft:(id)left right:(id)right animated:(BOOL)animated;
- (void)_showEditBarButtonItemAnimated:(BOOL)animated;
- (void)_showEditingBarButtonItemsEnabled:(BOOL)enabled animated:(BOOL)animated;
- (void)artworkRequest:(id)request didLoadImage:(id)image;
- (void)dealloc;
- (void)documentDidUpdate:(id)update;
- (void)loadView;
- (void)settingsDocumentViewDidChangeTintColor:(id)color;
- (void)settingsEditTransaction:(id)transaction isValid:(BOOL)valid;
- (void)settingsEditTransactionDidFailTransaction:(id)transaction;
- (void)settingsEditTransactionWillBeginTransaction:(id)transaction;
- (void)settingsEditTransactionWillCommitTransaction:(id)transaction;
- (void)settingsGroupsDescription:(id)description deletedSettingAtIndexPath:(id)path;
- (void)settingsGroupsDescription:(id)description deletedSettingsGroupAtIndex:(unint64_t)index;
- (void)settingsGroupsDescription:(id)description didUpdateSettingsDescription:(id)settingsDescription;
- (void)settingsGroupsDescription:(id)description dismissViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)settingsGroupsDescription:(id)description presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)settingsGroupsDescriptionDidUpdateValidity:(id)validity;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation SUUISettingsDocumentViewController

- (SUUISettingsDocumentViewController)initWithTemplateElement:(id)element clientContext:(id)context
{
  elementCopy = element;
  contextCopy = context;
  v17.receiver = self;
  v17.super_class = SUUISettingsDocumentViewController;
  v9 = [(SUUISettingsDocumentViewController *)&v17 init];
  v10 = v9;
  if (v9)
  {
    [(SUUIViewController *)v9 setClientContext:contextCopy];
    v11 = [[SUUISettingsContext alloc] initWithClientContext:contextCopy];
    settingsContext = v10->_settingsContext;
    v10->_settingsContext = v11;

    objc_storeStrong(&v10->_templateElement, element);
    v13 = [objc_opt_class() _settingsGroupsFromTemplateElement:v10->_templateElement withDelegate:v10 settingsContext:v10->_settingsContext];
    settingsGroupsDescription = v10->_settingsGroupsDescription;
    v10->_settingsGroupsDescription = v13;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x277D76810] object:0];
    [(SUUISettingsDocumentViewController *)v10 _reloadData];
    [(SUUISettingsDocumentViewController *)v10 _invalidateLayout];
  }

  return v10;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76810] object:0];

  v4.receiver = self;
  v4.super_class = SUUISettingsDocumentViewController;
  [(SUUIViewController *)&v4 dealloc];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  [viewCopy bounds];
  Width = CGRectGetWidth(v16);
  v9 = [(SUUISettingsGroupsDescription *)self->_settingsGroupsDescription settingDescriptionAtIndexPath:pathCopy];
  v10 = objc_alloc_init([SUUISettingDescription viewClassForSettingDescription:v9]);
  _layoutContext = [(SUUISettingsDocumentViewController *)self _layoutContext];
  [v10 reloadWithSettingDescription:v9 width:_layoutContext context:Width];

  v12 = [viewCopy dequeueReusableCellWithIdentifier:@"SUUISettingsTableViewCellReuseIdentifier" forIndexPath:pathCopy];

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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  objc_initWeak(&location, self);
  v8 = [(SUUISettingsGroupsDescription *)self->_settingsGroupsDescription settingDescriptionAtIndexPath:pathCopy];
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

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  settingsGroupsDescription = self->_settingsGroupsDescription;
  viewCopy = view;
  v8 = [(SUUISettingsGroupsDescription *)settingsGroupsDescription footerDescriptionForGroupAtIndex:section];
  v9 = objc_opt_class();
  [viewCopy bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v26.origin.x = v11;
  v26.origin.y = v13;
  v26.size.width = v15;
  v26.size.height = v17;
  Width = CGRectGetWidth(v26);
  _layoutContext = [(SUUISettingsDocumentViewController *)self _layoutContext];
  [v9 _heightThatFitsWidth:v8 withSettingsHeaderFooterDescription:_layoutContext context:Width];
  v21 = v20;

  if ([(SUUISettingsGroupsDescription *)self->_settingsGroupsDescription numberOfGroups]- 1 == section)
  {
    v22 = 36.0;
  }

  else
  {
    v23 = [(SUUISettingsGroupsDescription *)self->_settingsGroupsDescription shouldShowHeaderForGroupAtIndex:section + 1];
    v22 = 36.0;
    if (v23)
    {
      v22 = 2.22044605e-16;
    }
  }

  v24 = v21 + v22;

  return v24;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  settingsGroupsDescription = self->_settingsGroupsDescription;
  viewCopy = view;
  v8 = [(SUUISettingsGroupsDescription *)settingsGroupsDescription headerDescriptionForGroupAtIndex:section];
  v9 = objc_opt_class();
  [viewCopy bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v26.origin.x = v11;
  v26.origin.y = v13;
  v26.size.width = v15;
  v26.size.height = v17;
  Width = CGRectGetWidth(v26);
  _layoutContext = [(SUUISettingsDocumentViewController *)self _layoutContext];
  [v9 _heightThatFitsWidth:v8 withSettingsHeaderFooterDescription:_layoutContext context:Width];
  v21 = v20;

  if (section)
  {
    v22 = [(SUUISettingsGroupsDescription *)self->_settingsGroupsDescription shouldShowHeaderForGroupAtIndex:section];
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

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view bounds];
  Width = CGRectGetWidth(v14);
  v8 = [(SUUISettingsGroupsDescription *)self->_settingsGroupsDescription settingDescriptionAtIndexPath:pathCopy];

  v9 = [SUUISettingDescription viewClassForSettingDescription:v8];
  _layoutContext = [(SUUISettingsDocumentViewController *)self _layoutContext];
  [(objc_class *)v9 sizeThatFitsWidth:v8 settingDescription:_layoutContext context:Width];
  v12 = v11;

  return fmax(v12, 48.0);
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  if ([(SUUISettingsGroupsDescription *)self->_settingsGroupsDescription shouldShowFooterForGroupAtIndex:section])
  {
    v6 = [(SUUISettingsGroupsDescription *)self->_settingsGroupsDescription footerDescriptionForGroupAtIndex:section];
    v7 = [(SUUISettingsDocumentViewController *)self _viewForSettingsHeaderFooterDescription:v6];
  }

  else
  {
    v7 = [(UITableView *)self->_tableView dequeueReusableHeaderFooterViewWithIdentifier:@"SUUISettingsTableViewEmptyHeaderFooterViewReuseIdentifier"];
  }

  return v7;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  if ([(SUUISettingsGroupsDescription *)self->_settingsGroupsDescription shouldShowHeaderForGroupAtIndex:section])
  {
    v6 = [(SUUISettingsGroupsDescription *)self->_settingsGroupsDescription headerDescriptionForGroupAtIndex:section];
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
  _tableView = [(SUUISettingsDocumentViewController *)self _tableView];
  if (storeShouldReverseLayoutDirection())
  {
    v4 = 4;
  }

  else
  {
    v4 = 3;
  }

  [_tableView setSemanticContentAttribute:v4];
  [(SUUISettingsDocumentView *)v5 addSubview:_tableView];
  [(SUUISettingsDocumentViewController *)self setView:v5];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = SUUISettingsDocumentViewController;
  [(SUUISettingsDocumentViewController *)&v5 viewDidAppear:?];
  [(SUUIResourceLoader *)self->_resourceLoader enterForeground];
  if ([(SUUISettingsGroupsDescription *)self->_settingsGroupsDescription hasEditableSettingDescriptions])
  {
    [(SUUISettingsDocumentViewController *)self _showEditBarButtonItemAnimated:appearCopy];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SUUISettingsDocumentViewController;
  [(SUUIViewController *)&v4 viewWillAppear:appear];
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

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = SUUISettingsDocumentViewController;
  [(SUUISettingsDocumentViewController *)&v4 viewDidDisappear:disappear];
  [(SUUIResourceLoader *)self->_resourceLoader enterBackground];
}

- (void)artworkRequest:(id)request didLoadImage:(id)image
{
  v20 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  imageCopy = image;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  visibleCells = [(UITableView *)self->_tableView visibleCells];
  v9 = [visibleCells countByEnumeratingWithState:&v15 objects:v19 count:16];
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
        objc_enumerationMutation(visibleCells);
      }

      v13 = *(*(&v15 + 1) + 8 * v12);
      _layoutContext = [(SUUISettingsDocumentViewController *)self _layoutContext];
      LOBYTE(v13) = [v13 setImage:imageCopy forArtworkRequest:requestCopy context:_layoutContext];

      if (v13)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [visibleCells countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)documentDidUpdate:(id)update
{
  updateCopy = update;
  settingsGroupsDescription = self->_settingsGroupsDescription;
  if (settingsGroupsDescription)
  {
    [(SUUISettingsGroupsDescription *)settingsGroupsDescription recycle];
    v5 = self->_settingsGroupsDescription;
    self->_settingsGroupsDescription = 0;
  }

  templateElement = [updateCopy templateElement];
  templateElement = self->_templateElement;
  self->_templateElement = templateElement;

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

- (void)settingsDocumentViewDidChangeTintColor:(id)color
{
  colorCopy = color;
  _layoutContext = [(SUUISettingsDocumentViewController *)self _layoutContext];
  tintColor = [colorCopy tintColor];

  [_layoutContext setTintColor:tintColor];

  [(SUUISettingsDocumentViewController *)self _invalidateLayout];
}

- (void)settingsEditTransactionDidFailTransaction:(id)transaction
{
  _barButtonItemDone = [(SUUISettingsDocumentViewController *)self _barButtonItemDone];
  [_barButtonItemDone setEnabled:1];
}

- (void)settingsEditTransactionWillBeginTransaction:(id)transaction
{
  isValid = [transaction isValid];

  [(SUUISettingsDocumentViewController *)self _showEditingBarButtonItemsEnabled:isValid animated:1];
}

- (void)settingsEditTransactionWillCommitTransaction:(id)transaction
{
  _barButtonItemDone = [(SUUISettingsDocumentViewController *)self _barButtonItemDone];
  [_barButtonItemDone setEnabled:0];
}

- (void)settingsEditTransaction:(id)transaction isValid:(BOOL)valid
{
  validCopy = valid;
  _barButtonItemDone = [(SUUISettingsDocumentViewController *)self _barButtonItemDone];
  [_barButtonItemDone setEnabled:validCopy];
}

- (void)settingsGroupsDescription:(id)description deletedSettingAtIndexPath:(id)path
{
  v5 = MEMORY[0x277CBEA60];
  pathCopy = path;
  v7 = [[v5 alloc] initWithObjects:{pathCopy, 0}];

  [(UITableView *)self->_tableView deleteRowsAtIndexPaths:v7 withRowAnimation:0];
}

- (void)settingsGroupsDescription:(id)description deletedSettingsGroupAtIndex:(unint64_t)index
{
  v5 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndex:index];
  [(UITableView *)self->_tableView deleteSections:v5 withRowAnimation:0];
}

- (void)settingsGroupsDescription:(id)description didUpdateSettingsDescription:(id)settingsDescription
{
  settingsDescriptionCopy = settingsDescription;
  updateType = [settingsDescriptionCopy updateType];
  if (updateType > 2)
  {
    if (updateType == 3)
    {
      tableView = self->_tableView;
      indexPaths = [settingsDescriptionCopy indexPaths];
      [(UITableView *)tableView deleteRowsAtIndexPaths:indexPaths withRowAnimation:0];
      goto LABEL_15;
    }

    if (updateType != 4)
    {
      if (updateType == 5)
      {
        v9 = self->_tableView;
        indexPaths = [settingsDescriptionCopy indexPaths];
        [(UITableView *)v9 reloadRowsAtIndexPaths:indexPaths withRowAnimation:5];
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    v13 = self->_tableView;
    indexPaths = [settingsDescriptionCopy indexPaths];
    [(UITableView *)v13 insertRowsAtIndexPaths:indexPaths withRowAnimation:0];
  }

  else
  {
    if (!updateType)
    {
      v10 = self->_tableView;
      indexPaths = [settingsDescriptionCopy indexSet];
      [(UITableView *)v10 deleteSections:indexPaths withRowAnimation:0];
      goto LABEL_15;
    }

    if (updateType != 1)
    {
      if (updateType == 2)
      {
        v7 = self->_tableView;
        indexPaths = [settingsDescriptionCopy indexSet];
        [(UITableView *)v7 reloadSections:indexPaths withRowAnimation:0];
        goto LABEL_15;
      }

LABEL_12:
      indexPaths = [MEMORY[0x277CCA890] currentHandler];
      [indexPaths handleFailureInMethod:a2 object:self file:@"SUUISettingsDocumentViewController.m" lineNumber:374 description:@"Hit unhandled update type."];
      goto LABEL_15;
    }

    v12 = self->_tableView;
    indexPaths = [settingsDescriptionCopy indexSet];
    [(UITableView *)v12 insertSections:indexPaths withRowAnimation:0];
  }

LABEL_15:
}

- (void)settingsGroupsDescription:(id)description dismissViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  presentedViewController = [(SUUISettingsDocumentViewController *)self presentedViewController];
  v12 = [presentedViewController isEqual:controllerCopy];

  if ((v12 & 1) == 0)
  {
    [SUUISettingsDocumentViewController settingsGroupsDescription:a2 dismissViewController:self animated:? completion:?];
  }

  presentedViewController2 = [(SUUISettingsDocumentViewController *)self presentedViewController];
  v14 = [presentedViewController2 isEqual:controllerCopy];

  if (v14)
  {
    [(SUUISettingsDocumentViewController *)self dismissViewControllerAnimated:animatedCopy completion:completionCopy];
  }
}

- (void)settingsGroupsDescription:(id)description presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  presentedViewController = [(SUUISettingsDocumentViewController *)self presentedViewController];

  if (presentedViewController)
  {
    [SUUISettingsDocumentViewController settingsGroupsDescription:a2 presentViewController:self animated:? completion:?];
  }

  presentedViewController2 = [(SUUISettingsDocumentViewController *)self presentedViewController];

  if (!presentedViewController2)
  {
    [(SUUISettingsDocumentViewController *)self presentViewController:controllerCopy animated:animatedCopy completion:completionCopy];
  }
}

- (id)settingsGroupsDescription:(id)description viewForSettingAtIndexPath:(id)path
{
  v4 = [(UITableView *)self->_tableView cellForRowAtIndexPath:path];
  settingDescriptionView = [v4 settingDescriptionView];

  return settingDescriptionView;
}

- (void)settingsGroupsDescriptionDidUpdateValidity:(id)validity
{
  if (self->_editTransaction)
  {
    barButtonItemDone = self->_barButtonItemDone;
    isValid = [(SUUISettingsEditTransaction *)self->_editTransaction isValid];

    [(UIBarButtonItem *)barButtonItemDone setEnabled:isValid];
  }
}

- (void)_cancelButtonAction:(id)action
{
  if ([(SUUISettingsEditTransaction *)self->_editTransaction isCommiting])
  {
    editTransaction = self->_editTransaction;

    [(SUUISettingsEditTransaction *)editTransaction cancelTransaction];
  }

  else
  {
    view = [(SUUISettingsDocumentViewController *)self view];
    window = [view window];
    firstResponder = [window firstResponder];
    [firstResponder resignFirstResponder];

    [(SUUISettingsEditTransaction *)self->_editTransaction rollbackTransaction];
    v8 = self->_editTransaction;
    self->_editTransaction = 0;
  }
}

- (void)_doneButtonAction:(id)action
{
  view = [(SUUISettingsDocumentViewController *)self view];
  window = [view window];
  firstResponder = [window firstResponder];
  [firstResponder resignFirstResponder];

  editTransaction = self->_editTransaction;

  [(SUUISettingsEditTransaction *)editTransaction commitTransaction];
}

- (void)_editButtonAction:(id)action
{
  createEditTransaction = [(SUUISettingsGroupsDescription *)self->_settingsGroupsDescription createEditTransaction];
  editTransaction = self->_editTransaction;
  self->_editTransaction = createEditTransaction;

  [(SUUISettingsEditTransaction *)self->_editTransaction setDelegate:self];
  v6 = self->_editTransaction;

  [(SUUISettingsEditTransaction *)v6 beginTransaction];
}

+ (double)_heightThatFitsWidth:(double)width withSettingsHeaderFooterDescription:(id)description context:(id)context
{
  if (!description)
  {
    return 0.0;
  }

  contextCopy = context;
  descriptionCopy = description;
  [(objc_class *)[SUUISettingsHeaderFooterDescription viewClassForSettingsHeaderFooterDescription:?]settingsHeaderFooterDescription:"sizeThatFitsWidth:settingsHeaderFooterDescription:context:" context:descriptionCopy, contextCopy, width];
  v10 = v9;

  return v10;
}

+ (id)_settingsGroupsFromTemplateElement:(id)element withDelegate:(id)delegate settingsContext:(id)context
{
  contextCopy = context;
  delegateCopy = delegate;
  elementCopy = element;
  v10 = [[SUUISettingsGroupsDescription alloc] initWithDelegate:delegateCopy settingsContext:contextCopy];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __102__SUUISettingsDocumentViewController__settingsGroupsFromTemplateElement_withDelegate_settingsContext___block_invoke;
  v13[3] = &unk_2798F5B20;
  v11 = v10;
  v14 = v11;
  [elementCopy enumerateChildrenUsingBlock:v13];

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
    clientContext = [(SUUIViewController *)self clientContext];
    v5 = clientContext;
    if (clientContext)
    {
      [clientContext localizedStringForKey:@"SETTINGS_NAVIGATION_CANCEL" inTable:@"Settings"];
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
    clientContext = [(SUUIViewController *)self clientContext];
    v5 = clientContext;
    if (clientContext)
    {
      [clientContext localizedStringForKey:@"SETTINGS_NAVIGATION_DONE" inTable:@"Settings"];
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
    clientContext = [(SUUIViewController *)self clientContext];
    v5 = clientContext;
    if (clientContext)
    {
      [clientContext localizedStringForKey:@"SETTINGS_NAVIGATION_EDIT" inTable:@"Settings"];
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

- (id)_dequeueHeaderFooterViewWithReuseIdentifier:(id)identifier
{
  v4 = [(UITableView *)self->_tableView dequeueReusableHeaderFooterViewWithIdentifier:identifier];
  [(UITableView *)self->_tableView layoutMargins];
  [v4 setLayoutMargins:?];

  return v4;
}

- (void)_deselectItemsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v15 = *MEMORY[0x277D85DE8];
  indexPathsForSelectedRows = [(UITableView *)self->_tableView indexPathsForSelectedRows];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [indexPathsForSelectedRows countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(indexPathsForSelectedRows);
        }

        [(UITableView *)self->_tableView deselectRowAtIndexPath:*(*(&v10 + 1) + 8 * v9++) animated:animatedCopy];
      }

      while (v7 != v9);
      v7 = [indexPathsForSelectedRows countByEnumeratingWithState:&v10 objects:v14 count:16];
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
    _layoutContext = [(SUUISettingsDocumentViewController *)self _layoutContext];
    [(SUUISettingsGroupsDescription *)settingsGroupsDescription requestLayoutForWidth:_layoutContext context:Width];

    _textLayoutCache = [(SUUISettingsDocumentViewController *)self _textLayoutCache];
    layoutCache = [_textLayoutCache layoutCache];
    [layoutCache commitLayoutRequests];

    style = [(SUUISettingsTemplateViewElement *)self->_templateElement style];
    v8 = [style valueForStyle:*MEMORY[0x277D1AFA0]];
    v9 = v8;
    if (v8)
    {
      tableView = self->_tableView;
      color = [v8 color];
      [(UITableView *)tableView setBackgroundColor:color];
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
    _textLayoutCache = [(SUUISettingsDocumentViewController *)self _textLayoutCache];
    [(SUUIViewElementLayoutContext *)v6 setLabelLayoutCache:_textLayoutCache];

    v8 = self->_layoutContext;
    _resourceLoader = [(SUUISettingsDocumentViewController *)self _resourceLoader];
    [(SUUIViewElementLayoutContext *)v8 setResourceLoader:_resourceLoader];

    v10 = self->_layoutContext;
    clientContext = [(SUUIViewController *)self clientContext];
    [(SUUIViewElementLayoutContext *)v10 setClientContext:clientContext];

    v12 = self->_layoutContext;
    view = [(SUUISettingsDocumentViewController *)self view];
    tintColor = [view tintColor];
    [(SUUIViewElementLayoutContext *)v12 setTintColor:tintColor];

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
    clientContext = [(SUUIViewController *)self clientContext];
    v6 = [(SUUIResourceLoader *)v4 initWithClientContext:clientContext];
    v7 = self->_resourceLoader;
    self->_resourceLoader = v6;

    v8 = self->_resourceLoader;
    v9 = SUUIResourceLoaderGetNameForObject(self);
    [(SUUIResourceLoader *)v8 setName:v9];

    resourceLoader = self->_resourceLoader;
  }

  return resourceLoader;
}

- (void)_showBarItemLeft:(id)left right:(id)right animated:(BOOL)animated
{
  animatedCopy = animated;
  leftCopy = left;
  rightCopy = right;
  parentViewController = [(SUUISettingsDocumentViewController *)self parentViewController];
  navigationItem = [parentViewController navigationItem];

  if (leftCopy)
  {
    [navigationItem setHidesBackButton:1 animated:animatedCopy];
    v11 = navigationItem;
    v12 = leftCopy;
  }

  else
  {
    [navigationItem setHidesBackButton:0 animated:animatedCopy];
    v11 = navigationItem;
    v12 = 0;
  }

  [v11 setLeftBarButtonItem:v12 animated:animatedCopy];
  [navigationItem setRightBarButtonItem:rightCopy animated:animatedCopy];
}

- (void)_showEditBarButtonItemAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _barButtonItemEdit = [(SUUISettingsDocumentViewController *)self _barButtonItemEdit];
  [(SUUISettingsDocumentViewController *)self _showBarItemLeft:0 right:_barButtonItemEdit animated:animatedCopy];
}

- (void)_showEditingBarButtonItemsEnabled:(BOOL)enabled animated:(BOOL)animated
{
  animatedCopy = animated;
  enabledCopy = enabled;
  _barButtonItemDone = [(SUUISettingsDocumentViewController *)self _barButtonItemDone];
  [_barButtonItemDone setEnabled:enabledCopy];

  _barButtonItemCancel = [(SUUISettingsDocumentViewController *)self _barButtonItemCancel];
  _barButtonItemDone2 = [(SUUISettingsDocumentViewController *)self _barButtonItemDone];
  [(SUUISettingsDocumentViewController *)self _showBarItemLeft:_barButtonItemCancel right:_barButtonItemDone2 animated:animatedCopy];
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

- (id)_viewForSettingsHeaderFooterDescription:(id)description
{
  descriptionCopy = description;
  v5 = objc_alloc_init([SUUISettingsHeaderFooterDescription viewClassForSettingsHeaderFooterDescription:descriptionCopy]);
  [(UITableView *)self->_tableView bounds];
  Width = CGRectGetWidth(v11);
  _layoutContext = [(SUUISettingsDocumentViewController *)self _layoutContext];
  [v5 reloadWithSettingsHeaderFooterDescription:descriptionCopy width:_layoutContext context:Width];

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