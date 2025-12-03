@interface SUUIGiftComposeViewController
- (BOOL)textFieldShouldReturn:(id)return;
- (SUUIGiftComposeViewController)initWithGift:(id)gift configuration:(id)configuration;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_headerView;
- (id)_itemImage;
- (id)_itemView;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_amountControlAction:(id)action;
- (void)_finishValidationWithResponse:(id)response error:(id)error;
- (void)_keyboardChangeNotification:(id)notification;
- (void)_nextAction:(id)action;
- (void)_pushThemePickerOrShowInvalidAlert;
- (void)_recipientsDidChangeNotification:(id)notification;
- (void)_reloadSections;
- (void)_setItemImage:(id)image error:(id)error;
- (void)_textFieldChangeNotification:(id)notification;
- (void)_textViewChangeNotification:(id)notification;
- (void)_textViewDidEndEditingNotification:(id)notification;
- (void)_validateGift;
- (void)_validateGiftThrottled:(BOOL)throttled;
- (void)dealloc;
- (void)giftSendDateSection:(id)section didChangeDate:(id)date;
- (void)loadView;
- (void)popoverControllerDidDismissPopover:(id)popover;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view giftRecipientCell:(id)cell didUpdateSearchController:(id)controller;
- (void)tableView:(id)view giftRecipientCell:(id)cell dismissContactPicker:(id)picker;
- (void)tableView:(id)view giftRecipientCell:(id)cell presentContactPicker:(id)picker;
- (void)tableView:(id)view giftRecipientCellDidChangeRecipients:(id)recipients;
- (void)tableView:(id)view giftRecipientCellDidChangeSize:(id)size;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SUUIGiftComposeViewController

- (SUUIGiftComposeViewController)initWithGift:(id)gift configuration:(id)configuration
{
  giftCopy = gift;
  configurationCopy = configuration;
  v20.receiver = self;
  v20.super_class = SUUIGiftComposeViewController;
  v8 = [(SUUIGiftStepViewController *)&v20 initWithGift:giftCopy configuration:configurationCopy];
  if (v8)
  {
    clientContext = [configurationCopy clientContext];
    v10 = clientContext;
    if (clientContext)
    {
      [clientContext localizedStringForKey:@"GIFTING_FLOW_TITLE" inTable:@"Gifting"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"GIFTING_FLOW_TITLE" inBundles:0 inTable:@"Gifting"];
    }
    v12 = ;
    [(SUUIGiftComposeViewController *)v8 setTitle:v12];

    gift = [(SUUIGiftStepViewController *)v8 gift];

    senderName = [gift senderName];

    if (!senderName)
    {
      senderName2 = [configurationCopy senderName];
      [gift setSenderName:senderName2];
    }

    senderEmailAddress = [gift senderEmailAddress];

    if (!senderEmailAddress)
    {
      senderEmailAddress2 = [configurationCopy senderEmailAddress];
      [gift setSenderEmailAddress:senderEmailAddress2];
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel__keyboardChangeNotification_ name:*MEMORY[0x277D76BA0] object:0];
    [defaultCenter addObserver:v8 selector:sel__keyboardChangeNotification_ name:*MEMORY[0x277D76BA8] object:0];
    v18 = getCNComposeRecipientViewDidChangeNotification();
    [defaultCenter addObserver:v8 selector:sel__recipientsDidChangeNotification_ name:v18 object:0];

    [defaultCenter addObserver:v8 selector:sel__textFieldChangeNotification_ name:*MEMORY[0x277D770B0] object:0];
    [defaultCenter addObserver:v8 selector:sel__textFieldChangeNotification_ name:*MEMORY[0x277D770B8] object:0];
    [defaultCenter addObserver:v8 selector:sel__textViewChangeNotification_ name:*MEMORY[0x277D77218] object:0];
    [defaultCenter addObserver:v8 selector:sel__textViewDidEndEditingNotification_ name:*MEMORY[0x277D77220] object:0];
  }

  else
  {
    gift = giftCopy;
  }

  return v8;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = getCNComposeRecipientViewDidChangeNotification();
  [defaultCenter removeObserver:self name:v4 object:0];

  [defaultCenter removeObserver:self name:*MEMORY[0x277D76BA0] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76BA8] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D770B0] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D770B8] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D77218] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D77220] object:0];
  validationTimer = self->_validationTimer;
  if (validationTimer)
  {
    dispatch_source_cancel(validationTimer);
  }

  [(SUUIGiftAddressingSection *)self->_addressingSection setTextFieldDelegate:0];
  amountControl = [(SUUIGiftAmountSection *)self->_amountSection amountControl];
  [amountControl removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  [(UIPopoverController *)self->_peoplePickerPopover setDelegate:0];
  [(UIPopoverController *)self->_searchResultsPopover setDelegate:0];

  v7.receiver = self;
  v7.super_class = SUUIGiftComposeViewController;
  [(SUUIGiftComposeViewController *)&v7 dealloc];
}

- (void)loadView
{
  v23 = objc_alloc_init(MEMORY[0x277D75D18]);
  [(SUUIGiftComposeViewController *)self setView:?];
  if (!self->_sections)
  {
    [(SUUIGiftComposeViewController *)self _reloadSections];
  }

  tableView = self->_tableView;
  if (!tableView)
  {
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    gift = [(SUUIGiftStepViewController *)self gift];
    item = [gift item];
    v7 = 30.0;
    if (!item)
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        v7 = 30.0;
      }

      else
      {
        v7 = 35.0;
      }
    }

    v10 = objc_alloc_init(MEMORY[0x277D75B40]);
    v11 = self->_tableView;
    self->_tableView = v10;

    [(UITableView *)self->_tableView setAutoresizingMask:18];
    [(UITableView *)self->_tableView setBackgroundColor:systemBackgroundColor];
    [(UITableView *)self->_tableView setContentInset:v7, 0.0, 20.0, 0.0];
    [(UITableView *)self->_tableView setDataSource:self];
    [(UITableView *)self->_tableView setDelegate:self];
    [(UITableView *)self->_tableView setSeparatorStyle:0];
    _headerView = [(SUUIGiftComposeViewController *)self _headerView];
    [_headerView setBackgroundColor:systemBackgroundColor];
    [(UITableView *)self->_tableView setTableHeaderView:_headerView];

    tableView = self->_tableView;
  }

  [v23 addSubview:tableView];
  giftConfiguration = [(SUUIGiftStepViewController *)self giftConfiguration];
  clientContext = [giftConfiguration clientContext];

  navigationItem = [(SUUIGiftComposeViewController *)self navigationItem];
  if (clientContext)
  {
    [clientContext localizedStringForKey:@"GIFTING_BACK_BUTTON" inTable:@"Gifting"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"GIFTING_BACK_BUTTON" inBundles:0 inTable:@"Gifting"];
  }
  v16 = ;
  [navigationItem setBackButtonTitle:v16];

  [navigationItem setHidesBackButton:1];
  v17 = objc_alloc_init(MEMORY[0x277D751E0]);
  [v17 setAction:sel__cancelAction_];
  [v17 setTarget:self];
  if (clientContext)
  {
    [clientContext localizedStringForKey:@"GIFTING_CANCEL_BUTTON" inTable:@"Gifting"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"GIFTING_CANCEL_BUTTON" inBundles:0 inTable:@"Gifting"];
  }
  v18 = ;
  [v17 setTitle:v18];

  [navigationItem setLeftBarButtonItem:v17];
  v19 = objc_alloc_init(MEMORY[0x277D751E0]);
  nextButton = self->_nextButton;
  self->_nextButton = v19;

  [(UIBarButtonItem *)self->_nextButton setAction:sel__nextAction_];
  [(UIBarButtonItem *)self->_nextButton setEnabled:0];
  [(UIBarButtonItem *)self->_nextButton setTarget:self];
  v21 = self->_nextButton;
  if (clientContext)
  {
    [clientContext localizedStringForKey:@"GIFTING_NEXT_BUTTON" inTable:@"Gifting"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"GIFTING_NEXT_BUTTON" inBundles:0 inTable:@"Gifting"];
  }
  v22 = ;
  [(UIBarButtonItem *)v21 setTitle:v22];

  [navigationItem setRightBarButtonItem:self->_nextButton];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  _itemView = [(SUUIGiftComposeViewController *)self _itemView];
  artworkContext = [_itemView artworkContext];

  if (self->_itemImage)
  {
    v7 = 1;
  }

  else
  {
    v7 = artworkContext == 0;
  }

  if (!v7)
  {
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __48__SUUIGiftComposeViewController_viewWillAppear___block_invoke;
    v9[3] = &unk_2798F5E28;
    objc_copyWeak(&v10, &location);
    [(SUUIGiftStepViewController *)self loadItemArtworkWithArtworkContext:artworkContext completionBlock:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  v8.receiver = self;
  v8.super_class = SUUIGiftComposeViewController;
  [(SUUIGiftComposeViewController *)&v8 viewWillAppear:appearCopy];
}

void __48__SUUIGiftComposeViewController_viewWillAppear___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setItemImage:v6 error:v5];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  if ([(NSMutableArray *)self->_sections count])
  {
    v7 = 0;
    do
    {
      v8 = [(NSMutableArray *)self->_sections objectAtIndexedSubscript:v7];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
        if ([(UITableView *)self->_tableView numberOfRowsInSection:v7])
        {
          v10 = 0;
          do
          {
            tableView = self->_tableView;
            v12 = [MEMORY[0x277CCAA70] indexPathForRow:v10 inSection:v7];
            v13 = [(UITableView *)tableView cellForRowAtIndexPath:v12];

            [v9 updateCell:v13 forTransitionToSize:{width, height}];
            ++v10;
          }

          while (v10 < [(UITableView *)self->_tableView numberOfRowsInSection:v7]);
        }
      }

      ++v7;
    }

    while (v7 < [(NSMutableArray *)self->_sections count]);
  }

  v15.receiver = self;
  v15.super_class = SUUIGiftComposeViewController;
  [(SUUIGiftComposeViewController *)&v15 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

- (void)tableView:(id)view giftRecipientCellDidChangeRecipients:(id)recipients
{
  recipientsCopy = recipients;
  gift = [(SUUIGiftStepViewController *)self gift];
  recipientAddresses = [recipientsCopy recipientAddresses];

  [gift setRecipientAddresses:recipientAddresses];

  [(SUUIGiftComposeViewController *)self _validateGiftThrottled:0];
}

- (void)tableView:(id)view giftRecipientCellDidChangeSize:(id)size
{
  v4 = MEMORY[0x277D75D18];
  viewCopy = view;
  areAnimationsEnabled = [v4 areAnimationsEnabled];
  [MEMORY[0x277D75D18] setAnimationsEnabled:0];
  [viewCopy beginUpdates];
  [viewCopy endUpdates];

  v7 = MEMORY[0x277D75D18];

  [v7 setAnimationsEnabled:areAnimationsEnabled];
}

- (void)tableView:(id)view giftRecipientCell:(id)cell didUpdateSearchController:(id)controller
{
  cellCopy = cell;
  controllerCopy = controller;
  if ([controllerCopy numberOfResults])
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      if (!self->_searchResultsPopover)
      {
        v10 = objc_alloc(MEMORY[0x277D758A0]);
        searchResultsViewController = [controllerCopy searchResultsViewController];
        v12 = [v10 initWithContentViewController:searchResultsViewController];
        searchResultsPopover = self->_searchResultsPopover;
        self->_searchResultsPopover = v12;

        [(UIPopoverController *)self->_searchResultsPopover setDelegate:self];
        [cellCopy presentSearchResultsPopover:self->_searchResultsPopover animated:1];
      }
    }

    else if (!self->_searchResultsView)
    {
      v16 = [(UITableView *)self->_tableView indexPathForCell:cellCopy];
      [(UITableView *)self->_tableView scrollToRowAtIndexPath:v16 atScrollPosition:1 animated:0];
      searchResultsView = [controllerCopy searchResultsView];
      searchResultsView = self->_searchResultsView;
      self->_searchResultsView = searchResultsView;

      [(UIView *)self->_searchResultsView setAutoresizingMask:18];
      view = [(SUUIGiftComposeViewController *)self view];
      [cellCopy frame];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;
      superview = [cellCopy superview];
      [view convertRect:superview fromView:{v21, v23, v25, v27}];
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;

      activeKeyboard = [MEMORY[0x277D75658] activeKeyboard];
      [activeKeyboard frame];
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v45 = v44;
      superview2 = [activeKeyboard superview];
      [view convertRect:superview2 fromView:{v39, v41, v43, v45}];

      v47 = *MEMORY[0x277CBF3A0];
      v51.origin.x = v30;
      v51.origin.y = v32;
      v51.size.width = v34;
      v51.size.height = v36;
      v48 = CGRectGetMaxY(v51) + -1.0;
      [view bounds];
      [(UIView *)self->_searchResultsView setFrame:v47, v48];
      [view addSubview:self->_searchResultsView];
      [(UITableView *)self->_tableView setScrollEnabled:0];
    }
  }

  else
  {
    if (self->_searchResultsView)
    {
      [(UITableView *)self->_tableView setScrollEnabled:1];
      [(UIView *)self->_searchResultsView removeFromSuperview];
      v14 = self->_searchResultsView;
      self->_searchResultsView = 0;
    }

    [(UIPopoverController *)self->_searchResultsPopover dismissPopoverAnimated:1];
    [(UIPopoverController *)self->_searchResultsPopover setDelegate:0];
    v15 = self->_searchResultsPopover;
    self->_searchResultsPopover = 0;
  }
}

- (void)tableView:(id)view giftRecipientCell:(id)cell dismissContactPicker:(id)picker
{
  peoplePickerPopover = self->_peoplePickerPopover;
  if (peoplePickerPopover)
  {
    [(UIPopoverController *)peoplePickerPopover dismissPopoverAnimated:1, cell, picker];
    [(UIPopoverController *)self->_peoplePickerPopover setDelegate:0];
    v7 = self->_peoplePickerPopover;
    self->_peoplePickerPopover = 0;
  }

  else
  {

    [picker dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)tableView:(id)view giftRecipientCell:(id)cell presentContactPicker:(id)picker
{
  cellCopy = cell;
  pickerCopy = picker;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    if (!self->_peoplePickerPopover)
    {
      v10 = [objc_alloc(MEMORY[0x277D758A0]) initWithContentViewController:pickerCopy];
      peoplePickerPopover = self->_peoplePickerPopover;
      self->_peoplePickerPopover = v10;

      [(UIPopoverController *)self->_peoplePickerPopover setDelegate:self];
      [cellCopy presentPeoplePickerPopover:self->_peoplePickerPopover animated:1];
    }
  }

  else
  {
    [(SUUIGiftComposeViewController *)self presentViewController:pickerCopy animated:1 completion:0];
  }
}

- (void)giftSendDateSection:(id)section didChangeDate:(id)date
{
  dateCopy = date;
  gift = [(SUUIGiftStepViewController *)self gift];
  [gift setDeliveryDate:dateCopy];

  [(SUUIGiftComposeViewController *)self _validateGiftThrottled:1];
}

- (void)popoverControllerDidDismissPopover:(id)popover
{
  popoverCopy = popover;
  p_peoplePickerPopover = &self->_peoplePickerPopover;
  peoplePickerPopover = self->_peoplePickerPopover;
  if (peoplePickerPopover == popoverCopy || (p_peoplePickerPopover = &self->_searchResultsPopover, peoplePickerPopover = self->_searchResultsPopover, peoplePickerPopover == popoverCopy))
  {
    v8 = popoverCopy;
    [(UIPopoverController *)peoplePickerPopover setDelegate:0];
    v7 = *p_peoplePickerPopover;
    *p_peoplePickerPopover = 0;

    popoverCopy = v8;
  }

  MEMORY[0x2821F96F8](peoplePickerPopover, popoverCopy);
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  sections = self->_sections;
  pathCopy = path;
  viewCopy = view;
  v8 = -[NSMutableArray objectAtIndex:](sections, "objectAtIndex:", [pathCopy section]);
  v9 = [v8 tableViewCellForTableView:viewCopy indexPath:pathCopy];

  return v9;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(NSMutableArray *)self->_sections objectAtIndex:section];
  numberOfRowsInSection = [v4 numberOfRowsInSection];

  return numberOfRowsInSection;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  if (section == -[SUUITableViewSection sectionIndex](self->_addressingSection, "sectionIndex") && [pathCopy row] == 2)
  {
    [(SUUIGiftAddressingSection *)self->_addressingSection beginEditingMessageForTableView:self->_tableView indexPath:pathCopy];
  }
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  sections = self->_sections;
  viewCopy = view;
  v7 = [(NSMutableArray *)sections objectAtIndex:section];
  v8 = [v7 headerViewForTableView:viewCopy];

  if (v8)
  {
    [v8 frame];
    v10 = v9;
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  sections = self->_sections;
  pathCopy = path;
  viewCopy = view;
  v8 = -[NSMutableArray objectAtIndex:](sections, "objectAtIndex:", [pathCopy section]);
  [v8 heightForCellInTableView:viewCopy indexPath:pathCopy];
  v10 = v9;

  return v10;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  sections = self->_sections;
  viewCopy = view;
  v7 = [(NSMutableArray *)sections objectAtIndex:section];
  v8 = [v7 headerViewForTableView:viewCopy];
  backgroundColor = [viewCopy backgroundColor];

  [v8 setBackgroundColor:backgroundColor];

  return v8;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  sections = self->_sections;
  pathCopy = path;
  cellCopy = cell;
  viewCopy = view;
  v11 = -[NSMutableArray objectAtIndex:](sections, "objectAtIndex:", [pathCopy section]);
  [v11 tableView:viewCopy willDisplayCell:cellCopy forIndexPath:pathCopy];
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  tableView = self->_tableView;
  [returnCopy frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  superview = [returnCopy superview];
  [(UITableView *)tableView convertRect:superview fromView:v7, v9, v11, v13];
  v16 = v15;

  subviews = [(UITableView *)self->_tableView subviews];
  v18 = [subviews mutableCopy];

  v19 = [v18 count];
  if (v19 < 1)
  {
    v21 = 0;
  }

  else
  {
    v20 = v19;
    v21 = 0;
    v22 = 0;
    v23 = *(MEMORY[0x277CBF3A0] + 8);
    do
    {
      v24 = [v18 objectAtIndex:v22];
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        if (v24 != returnCopy)
        {
          if ([v24 canBecomeFirstResponder])
          {
            v25 = self->_tableView;
            [v24 frame];
            v27 = v26;
            v29 = v28;
            v31 = v30;
            v33 = v32;
            superview2 = [v24 superview];
            [(UITableView *)v25 convertRect:superview2 fromView:v27, v29, v31, v33];
            v36 = v35;

            if (v36 > v16)
            {
              if (v21)
              {
                if (v36 - v16 < v23 - v16)
                {
                  v37 = v24;

                  v23 = v36;
                  v21 = v37;
                }
              }

              else
              {
                v21 = v24;
                v23 = v36;
              }
            }
          }
        }
      }

      else
      {
        subviews2 = [v24 subviews];
        if (subviews2)
        {
          [v18 addObjectsFromArray:subviews2];
          v20 = [v18 count];
        }
      }

      ++v22;
    }

    while (v22 < v20);
    if (v21)
    {
      [v21 becomeFirstResponder];
    }
  }

  return 1;
}

- (void)_amountControlAction:(id)action
{
  gift = [(SUUIGiftStepViewController *)self gift];
  [gift setGiftAmount:{-[SUUIGiftAmountSection selectedAmount](self->_amountSection, "selectedAmount")}];
  selectedAmountString = [(SUUIGiftAmountSection *)self->_amountSection selectedAmountString];
  [gift setGiftAmountString:selectedAmountString];

  [(SUUIGiftComposeViewController *)self _validateGiftThrottled:0];
}

- (void)_nextAction:(id)action
{
  actionCopy = action;
  view = [(SUUIGiftComposeViewController *)self view];
  firstResponder = [view firstResponder];
  [firstResponder resignFirstResponder];

  UIKeyboardOrderOutAutomatic();
  if (self->_validationTimer || [(SUUIGiftValidator *)self->_validator isValidating])
  {
    self->_tappedNextWhileValidating = 1;
    [actionCopy setEnabled:0];
    [(UITableView *)self->_tableView setEnabled:0];
    if (self->_validationTimer)
    {
      [(SUUIGiftComposeViewController *)self _validateGift];
    }
  }

  else
  {
    [(SUUIGiftComposeViewController *)self _pushThemePickerOrShowInvalidAlert];
  }
}

- (void)_keyboardChangeNotification:(id)notification
{
  userInfo = [notification userInfo];
  v35 = [userInfo objectForKey:*MEMORY[0x277D76BB8]];

  v5 = v35;
  if (v35)
  {
    superview = [(UITableView *)self->_tableView superview];
    [v35 CGRectValue];
    [superview convertRect:0 fromView:?];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    [(UITableView *)self->_tableView frame];
    v39.origin.x = v8;
    v39.origin.y = v10;
    v39.size.width = v12;
    v39.size.height = v14;
    v38 = CGRectIntersection(v37, v39);
    [(UITableView *)self->_tableView contentInset:v38.origin.x];
    [(UITableView *)self->_tableView setContentInset:?];
    [(UITableView *)self->_tableView scrollIndicatorInsets];
    [(UITableView *)self->_tableView setScrollIndicatorInsets:?];
    view = [(SUUIGiftComposeViewController *)self view];
    window = [view window];
    firstResponder = [window firstResponder];

    _SUUIView = [firstResponder _SUUIView];
    v19 = _SUUIView;
    if (_SUUIView && [_SUUIView isDescendantOfView:self->_tableView])
    {
      tableView = self->_tableView;
      [v19 frame];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      superview2 = [v19 superview];
      [(UITableView *)tableView convertRect:superview2 fromView:v22, v24, v26, v28];
      v31 = v30;
      v33 = v32;

      v34 = [(UITableView *)self->_tableView indexPathForRowAtPoint:v31, v33];
      if (v34)
      {
        [(UITableView *)self->_tableView scrollToRowAtIndexPath:v34 atScrollPosition:1 animated:1];
      }
    }

    v5 = v35;
  }
}

- (void)_recipientsDidChangeNotification:(id)notification
{
  object = [notification object];
  view = [(SUUIGiftComposeViewController *)self view];
  v5 = [object isDescendantOfView:view];

  v6 = object;
  if (v5)
  {
    tableView = self->_tableView;
    [object frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    superview = [object superview];
    [(UITableView *)tableView convertRect:superview fromView:v9, v11, v13, v15];
    v18 = v17;
    v20 = v19;

    v21 = [(UITableView *)self->_tableView indexPathForRowAtPoint:v18, v20];
    v22 = v21;
    if (v21)
    {
      section = [v21 section];
      if (section == [(SUUITableViewSection *)self->_addressingSection sectionIndex])
      {
        v24 = [(UITableView *)self->_tableView cellForRowAtIndexPath:v22];
        gift = [(SUUIGiftStepViewController *)self gift];
        recipientAddresses = [v24 recipientAddresses];
        [gift setRecipientAddresses:recipientAddresses];

        [(SUUIGiftComposeViewController *)self _validateGiftThrottled:0];
      }
    }

    v6 = object;
  }
}

- (void)_textFieldChangeNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  view = [(SUUIGiftComposeViewController *)self view];
  v6 = [object isDescendantOfView:view];

  if (v6)
  {
    tableView = self->_tableView;
    [object frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    superview = [object superview];
    [(UITableView *)tableView convertRect:superview fromView:v9, v11, v13, v15];
    v18 = v17;
    v20 = v19;

    v21 = [(UITableView *)self->_tableView indexPathForRowAtPoint:v18, v20];
    v22 = v21;
    if (v21)
    {
      section = [v21 section];
      if (section == [(SUUITableViewSection *)self->_addressingSection sectionIndex])
      {
        text = [object text];
        if (![text length])
        {

          text = 0;
        }

        if ([v22 row] == 1)
        {
          gift = [(SUUIGiftStepViewController *)self gift];
          [gift setSenderName:text];
        }

        name = [notificationCopy name];
        -[SUUIGiftComposeViewController _validateGiftThrottled:](self, "_validateGiftThrottled:", [name isEqualToString:*MEMORY[0x277D770B0]]);
      }
    }
  }
}

- (void)_textViewChangeNotification:(id)notification
{
  object = [notification object];
  messagingTextView = [(SUUIGiftAddressingSection *)self->_addressingSection messagingTextView];

  v5 = object;
  if (object == messagingTextView)
  {
    text = [object text];
    gift = [(SUUIGiftStepViewController *)self gift];
    if ([text length])
    {
      v8 = text;
    }

    else
    {
      v8 = 0;
    }

    [gift setMessage:v8];

    v5 = object;
  }
}

- (void)_textViewDidEndEditingNotification:(id)notification
{
  object = [notification object];
  messagingTextView = [(SUUIGiftAddressingSection *)self->_addressingSection messagingTextView];

  v5 = object;
  if (object == messagingTextView)
  {
    text = [object text];
    gift = [(SUUIGiftStepViewController *)self gift];
    if ([text length])
    {
      v8 = text;
    }

    else
    {
      v8 = 0;
    }

    [gift setMessage:v8];

    tableView = self->_tableView;
    [object frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    superview = [object superview];
    [(UITableView *)tableView convertRect:superview fromView:v11, v13, v15, v17];
    v19 = [(UITableView *)tableView indexPathForRowAtPoint:?];

    [(SUUIGiftAddressingSection *)self->_addressingSection endEditingMessageForTableView:self->_tableView indexPath:v19];
    v5 = object;
  }
}

- (void)_finishValidationWithResponse:(id)response error:(id)error
{
  responseCopy = response;
  objc_storeStrong(&self->_lastValidationResponse, response);
  gift = [(SUUIGiftStepViewController *)self gift];
  totalGiftAmountString = [(SUUIGiftValidationResponse *)self->_lastValidationResponse totalGiftAmountString];
  [gift setTotalGiftAmountString:totalGiftAmountString];

  if (self->_tappedNextWhileValidating)
  {
    self->_tappedNextWhileValidating = 0;
    [(SUUIGiftComposeViewController *)self _pushThemePickerOrShowInvalidAlert];
  }

  [(UITableView *)self->_tableView setEnabled:1];
}

- (id)_headerView
{
  gift = [(SUUIGiftStepViewController *)self gift];
  item = [gift item];

  if (item)
  {
    _itemView = [(SUUIGiftComposeViewController *)self _itemView];
  }

  else
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = objc_alloc(MEMORY[0x277D755E8]);
    v8 = [MEMORY[0x277D755B8] imageNamed:@"GiftCardGraphic" inBundle:v6];
    _itemView = [v7 initWithImage:v8];

    [_itemView setContentMode:4];
  }

  return _itemView;
}

- (id)_itemImage
{
  v3 = self->_itemImage;
  if (!v3)
  {
    artworkContext = [(SUUIGiftItemView *)self->_itemView artworkContext];
    gift = [(SUUIGiftStepViewController *)self gift];
    item = [gift item];
    v3 = [artworkContext placeholderImageForItem:item];
  }

  return v3;
}

- (id)_itemView
{
  gift = [(SUUIGiftStepViewController *)self gift];
  item = [gift item];

  itemView = self->_itemView;
  if (itemView)
  {
    v6 = 1;
  }

  else
  {
    v6 = item == 0;
  }

  if (!v6)
  {
    v7 = [SUUIGiftItemView alloc];
    giftConfiguration = [(SUUIGiftStepViewController *)self giftConfiguration];
    clientContext = [giftConfiguration clientContext];
    v10 = [(SUUIGiftItemView *)v7 initWithStyle:0 item:item clientContext:clientContext];
    v11 = self->_itemView;
    self->_itemView = v10;

    [(SUUIGiftItemView *)self->_itemView setAutoresizingMask:2];
    v12 = self->_itemView;
    artistName = [item artistName];
    [(SUUIGiftItemView *)v12 setArtistName:artistName];

    v14 = self->_itemView;
    categoryName = [item categoryName];
    [(SUUIGiftItemView *)v14 setCategoryName:categoryName];

    v16 = self->_itemView;
    _itemImage = [(SUUIGiftComposeViewController *)self _itemImage];
    [(SUUIGiftItemView *)v16 setItemImage:_itemImage];

    -[SUUIGiftItemView setNumberOfUserRatings:](self->_itemView, "setNumberOfUserRatings:", [item numberOfUserRatings]);
    v18 = self->_itemView;
    primaryItemOffer = [item primaryItemOffer];
    buttonText = [primaryItemOffer buttonText];
    [(SUUIGiftItemView *)v18 setPrice:buttonText];

    v21 = self->_itemView;
    title = [item title];
    [(SUUIGiftItemView *)v21 setTitle:title];

    v23 = self->_itemView;
    [item userRating];
    *&v25 = v24 / 5.0;
    [(SUUIGiftItemView *)v23 setUserRating:v25];
    [(SUUIGiftItemView *)self->_itemView sizeToFit];
    itemView = self->_itemView;
  }

  v26 = itemView;

  return itemView;
}

- (void)_pushThemePickerOrShowInvalidAlert
{
  if ([(SUUIGiftValidationResponse *)self->_lastValidationResponse isValid])
  {
    gift = [(SUUIGiftStepViewController *)self gift];
    v3 = [SUUIGiftThemePickerViewController alloc];
    giftConfiguration = [(SUUIGiftStepViewController *)self giftConfiguration];
    v5 = [(SUUIGiftThemePickerViewController *)v3 initWithGift:gift configuration:giftConfiguration];

    operationQueue = [(SUUIGiftStepViewController *)self operationQueue];
    [(SUUIGiftStepViewController *)v5 setOperationQueue:operationQueue];

    navigationController = [(SUUIGiftComposeViewController *)self navigationController];
    [navigationController pushViewController:v5 animated:1];
  }

  else
  {
    giftConfiguration2 = [(SUUIGiftStepViewController *)self giftConfiguration];
    gift = [giftConfiguration2 clientContext];

    v9 = MEMORY[0x277D75110];
    if (gift)
    {
      [gift localizedStringForKey:@"GIFTING_INVALID_GIFT" inTable:@"Gifting"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"GIFTING_INVALID_GIFT" inBundles:0 inTable:@"Gifting"];
    }
    v10 = ;
    errorString = [(SUUIGiftValidationResponse *)self->_lastValidationResponse errorString];
    v5 = [v9 alertControllerWithTitle:v10 message:errorString preferredStyle:1];

    v12 = MEMORY[0x277D750F8];
    if (gift)
    {
      [gift localizedStringForKey:@"GIFTING_OK_BUTTON" inTable:@"Gifting"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"GIFTING_OK_BUTTON" inBundles:0 inTable:@"Gifting"];
    }
    v13 = ;
    v14 = [v12 actionWithTitle:v13 style:0 handler:0];
    [(SUUIGiftThemePickerViewController *)v5 addAction:v14];

    [(SUUIGiftComposeViewController *)self presentViewController:v5 animated:1 completion:0];
  }
}

- (void)_reloadSections
{
  gift = [(SUUIGiftStepViewController *)self gift];
  giftConfiguration = [(SUUIGiftStepViewController *)self giftConfiguration];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  sections = self->_sections;
  self->_sections = v4;

  addressingSection = self->_addressingSection;
  if (!addressingSection)
  {
    v7 = [[SUUIGiftAddressingSection alloc] initWithGiftConfiguration:giftConfiguration];
    v8 = self->_addressingSection;
    self->_addressingSection = v7;

    [(SUUIGiftAddressingSection *)self->_addressingSection setGift:gift];
    [(SUUIGiftAddressingSection *)self->_addressingSection setTextFieldDelegate:self];
    addressingSection = self->_addressingSection;
  }

  [(SUUITableViewSection *)addressingSection setSectionIndex:[(NSMutableArray *)self->_sections count]];
  [(NSMutableArray *)self->_sections addObject:self->_addressingSection];
  item = [gift item];

  if (!item)
  {
    amountSection = self->_amountSection;
    if (!amountSection)
    {
      v11 = [(SUUIGiftTableViewSection *)[SUUIGiftAmountSection alloc] initWithGiftConfiguration:giftConfiguration];
      v12 = self->_amountSection;
      self->_amountSection = v11;

      amountControl = [(SUUIGiftAmountSection *)self->_amountSection amountControl];
      [amountControl addTarget:self action:sel__amountControlAction_ forControlEvents:4096];

      amountSection = self->_amountSection;
    }

    [(SUUITableViewSection *)amountSection setSectionIndex:[(NSMutableArray *)self->_sections count]];
    [(NSMutableArray *)self->_sections addObject:self->_amountSection];
  }

  sendDateSection = self->_sendDateSection;
  if (!sendDateSection)
  {
    v15 = [(SUUIGiftTableViewSection *)[SUUIGiftSendDateSection alloc] initWithGiftConfiguration:giftConfiguration];
    v16 = self->_sendDateSection;
    self->_sendDateSection = v15;

    v17 = self->_sendDateSection;
    v18 = [MEMORY[0x277CBEAA8] now];
    [(SUUIGiftSendDateSection *)v17 setSendDate:v18];

    v19 = self->_sendDateSection;
    item2 = [gift item];
    [(SUUIGiftSendDateSection *)v19 setGiftItem:item2];

    [(SUUIGiftSendDateSection *)self->_sendDateSection setDelegate:self];
    sendDateSection = self->_sendDateSection;
  }

  [(SUUITableViewSection *)sendDateSection setSectionIndex:[(NSMutableArray *)self->_sections count]];
  [(NSMutableArray *)self->_sections addObject:self->_sendDateSection];
  termsSection = self->_termsSection;
  if (!termsSection)
  {
    v22 = [(SUUIGiftTableViewSection *)[SUUIGiftTermsAndConditionsSection alloc] initWithGiftConfiguration:giftConfiguration];
    v23 = self->_termsSection;
    self->_termsSection = v22;

    termsSection = self->_termsSection;
  }

  [(NSMutableArray *)self->_sections addObject:termsSection];
}

- (void)_setItemImage:(id)image error:(id)error
{
  imageCopy = image;
  if (imageCopy)
  {
    v7 = imageCopy;
    objc_storeStrong(&self->_itemImage, image);
    [(SUUIGiftItemView *)self->_itemView setItemImage:self->_itemImage];
    imageCopy = v7;
  }
}

- (void)_validateGift
{
  validationTimer = self->_validationTimer;
  if (validationTimer)
  {
    dispatch_source_cancel(validationTimer);
    v4 = self->_validationTimer;
    self->_validationTimer = 0;
  }

  if (!self->_validator)
  {
    giftConfiguration = [(SUUIGiftStepViewController *)self giftConfiguration];
    v6 = [SUUIGiftValidator alloc];
    giftValidationURL = [giftConfiguration giftValidationURL];
    clientContext = [giftConfiguration clientContext];
    v9 = [(SUUIGiftValidator *)v6 initWithValidationURL:giftValidationURL clientContext:clientContext];
    validator = self->_validator;
    self->_validator = v9;

    v11 = self->_validator;
    operationQueue = [(SUUIGiftStepViewController *)self operationQueue];
    [(SUUIGiftValidator *)v11 setOperationQueue:operationQueue];
  }

  objc_initWeak(&location, self);
  v13 = self->_validator;
  gift = [(SUUIGiftStepViewController *)self gift];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __46__SUUIGiftComposeViewController__validateGift__block_invoke;
  v15[3] = &unk_2798F8CD0;
  objc_copyWeak(&v16, &location);
  [(SUUIGiftValidator *)v13 validateGift:gift withCompletionBlock:v15];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __46__SUUIGiftComposeViewController__validateGift__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SUUIGiftComposeViewController__validateGift__block_invoke_2;
  block[3] = &unk_2798F6530;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __46__SUUIGiftComposeViewController__validateGift__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _finishValidationWithResponse:*(a1 + 32) error:*(a1 + 40)];
}

- (void)_validateGiftThrottled:(BOOL)throttled
{
  gift = [(SUUIGiftStepViewController *)self gift];
  v6 = gift;
  if ((!self->_amountSection || [gift giftAmount]) && (objc_msgSend(v6, "recipientAddresses"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v8))
  {
    senderName = [v6 senderName];
    v10 = [senderName length] != 0;
  }

  else
  {
    v10 = 0;
  }

  nextButton = [(SUUIGiftComposeViewController *)self nextButton];
  [nextButton setEnabled:v10];

  [(SUUIGiftValidator *)self->_validator cancelValidation];
  if (!v10 || !throttled)
  {
    validationTimer = self->_validationTimer;
    if (validationTimer)
    {
      dispatch_source_cancel(validationTimer);
      v13 = self->_validationTimer;
      self->_validationTimer = 0;
    }
  }

  if (v10)
  {
    if (throttled)
    {
      v14 = self->_validationTimer;
      if (v14)
      {
        v15 = dispatch_time(0, 1000000000);
        dispatch_source_set_timer(v14, v15, 0, 0);
      }

      else
      {
        v16 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
        v17 = self->_validationTimer;
        self->_validationTimer = v16;

        v18 = self->_validationTimer;
        v19 = dispatch_time(0, 1000000000);
        dispatch_source_set_timer(v18, v19, 0, 0);
        objc_initWeak(&location, self);
        v20 = self->_validationTimer;
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __56__SUUIGiftComposeViewController__validateGiftThrottled___block_invoke;
        v21[3] = &unk_2798F67A0;
        objc_copyWeak(&v22, &location);
        dispatch_source_set_event_handler(v20, v21);
        dispatch_resume(self->_validationTimer);
        objc_destroyWeak(&v22);
        objc_destroyWeak(&location);
      }
    }

    else
    {
      [(SUUIGiftComposeViewController *)self _validateGift];
    }
  }
}

void __56__SUUIGiftComposeViewController__validateGiftThrottled___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _validateGift];
}

@end