@interface KSListUserWordsController
- (BOOL)_shouldHideIndex;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)_mainContentView;
- (id)sectionIndexTitlesForTableView:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 sectionForSectionIndexTitle:(id)a4 atIndex:(int64_t)a5;
- (void)_hideSearchBar;
- (void)_showSearchBar;
- (void)addUserWord;
- (void)dealloc;
- (void)emitNavigationEventForListUserWordsController;
- (void)inlineUserDictionaryDoneEditing;
- (void)loadView;
- (void)reloadSections;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)userWordDidUpdate:(id)a3;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)willPresentSearchController:(id)a3;
@end

@implementation KSListUserWordsController

- (void)viewSafeAreaInsetsDidChange
{
  [(UIToolbar *)self->_toolbar origin];
  v4 = v3;
  [(UIView *)self->_contentView frame];
  v6 = v5;
  [(UIToolbar *)self->_toolbar size];
  v8 = v6 - v7;
  [objc_msgSend(-[KSListUserWordsController navigationController](self "navigationController")];
  [(UIToolbar *)self->_toolbar setFrameOrigin:v4, v8 - v9];
  v10.receiver = self;
  v10.super_class = KSListUserWordsController;
  [(KSListUserWordsController *)&v10 viewSafeAreaInsetsDidChange];
}

- (id)_mainContentView
{
  result = self->_contentView;
  if (!result)
  {
    [objc_msgSend(MEMORY[0x277D759A0] "mainScreen")];
    v5 = v4;
    v7 = v6;
    v8 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, v4, v6}];
    self->_contentView = v8;
    [(UIView *)v8 setAutoresizingMask:18];
    v9 = [objc_alloc(MEMORY[0x277D75B40]) initWithFrame:0 style:{0.0, 0.0, v5, v7}];
    [(UITableView *)v9 setAutoresizingMask:18];
    [(UITableView *)v9 setCountStringInsignificantRowCount:9];
    [(UITableView *)v9 setDataSource:self];
    [(UITableView *)v9 setDelegate:self];
    [(UITableView *)v9 setEstimatedSectionHeaderHeight:0.0];
    [(UITableView *)v9 setEstimatedSectionFooterHeight:0.0];
    self->_tableView = v9;
    [(UITableView *)v9 setTag:1];
    [(UITableView *)v9 setIndexHidden:0 animated:0];
    [(UIView *)self->_contentView addSubview:v9];
    v10 = objc_alloc(MEMORY[0x277D75C58]);
    self->_toolbar = [v10 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    -[UIToolbar setItems:](self->_toolbar, "setItems:", [MEMORY[0x277CBEA60] arrayWithObjects:{-[KSListUserWordsController editButtonItem](self, "editButtonItem"), 0}]);
    [(UIToolbar *)self->_toolbar setAutoresizingMask:10];
    [(UIToolbar *)self->_toolbar sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
    v12 = v11;
    [(UITableView *)v9 frame];
    v13 = CGRectGetMaxY(v20) - v12;
    [objc_msgSend(-[KSListUserWordsController navigationController](self "navigationController")];
    [(UIToolbar *)self->_toolbar setFrame:0.0, v13 - v14, v5, v12];
    [(UIView *)self->_contentView addSubview:self->_toolbar];
    [(UITableView *)v9 setContentInset:0.0, 0.0, v12, 0.0];
    v15 = [KSSearchUserWordsController alloc];
    self->_searchResultsController = -[KSSearchUserWordsController initWithNavigationController:](v15, "initWithNavigationController:", [objc_loadWeak((&self->super.super.super.super.isa + *MEMORY[0x277D3FD08])) navigationController]);
    v16 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:self->_searchResultsController];
    [v16 setNavigationBarHidden:1 animated:0];
    [v16 setDelegate:self];
    v17 = [objc_alloc(MEMORY[0x277D759F0]) initWithSearchResultsController:v16];
    self->_searchController = v17;
    [(UISearchController *)v17 setSearchResultsUpdater:self->_searchResultsController];
    [(UISearchController *)self->_searchController setDelegate:self];
    [(KSListUserWordsController *)self setDefinesPresentationContext:1];

    if (([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      [(UISearchController *)self->_searchController setObscuresBackgroundDuringPresentation:0];
      [(UISearchController *)self->_searchController setHidesNavigationBarDuringPresentation:0];
    }

    v18 = [(UISearchController *)self->_searchController searchBar];
    -[UISearchBar setPlaceholder:](v18, "setPlaceholder:", [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"SEARCH_LOCAL_PLACEHOLDER", &stru_28679E3A8, @"Keyboard"}]);
    [(UISearchBar *)v18 setAutoresizingMask:2];
    [(UISearchBar *)v18 setAutocorrectionType:1];
    [(UISearchBar *)v18 setDelegate:self];
    [-[KSListUserWordsController navigationItem](self "navigationItem")];
    v19 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:4 target:self action:sel_addUserWord];
    [-[KSListUserWordsController navigationItem](self "navigationItem")];

    return self->_contentView;
  }

  return result;
}

- (void)loadView
{
  v3 = [(KSListUserWordsController *)self _mainContentView];
  self->_contentView = v3;

  [(KSListUserWordsController *)self setView:v3];
}

- (void)reloadSections
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D75700] currentCollation];
  v4 = [objc_msgSend(v3 "sectionTitles")];
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v4];
  if (v4)
  {
    v6 = v4;
    do
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [v5 addObject:v7];

      --v6;
    }

    while (v6);
  }

  v8 = [(KSUserWordsManager *)[(KSListUserWordsController *)self dictionaryController] entries];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [objc_msgSend(v5 objectAtIndex:{objc_msgSend(v3, "sectionForObject:collationStringSelector:", *(*(&v19 + 1) + 8 * i), sel_shortcutForSorting)), "addObject:", *(*(&v19 + 1) + 8 * i)}];
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  if (v4)
  {
    for (j = 0; j != v4; ++j)
    {
      [v5 replaceObjectAtIndex:j withObject:{objc_msgSend(v3, "sortedArrayFromArray:collationStringSelector:", objc_msgSend(v5, "objectAtIndex:", j), sel_shortcutForSorting)}];
    }
  }

  [(KSListUserWordsController *)self setCollation:v3];
  [(KSListUserWordsController *)self setSections:v5];
  [(UITableView *)[(KSListUserWordsController *)self tableView] reloadData];
  if ([(KSListUserWordsController *)self currentShortcut]&& [(NSArray *)[(KSListUserWordsController *)self sections] count])
  {
    v14 = 0;
    while (1)
    {
      v15 = [(NSArray *)[(KSListUserWordsController *)self sections] objectAtIndexedSubscript:v14];
      if ([v15 count])
      {
        break;
      }

LABEL_21:
      if (++v14 >= [(NSArray *)[(KSListUserWordsController *)self sections] count])
      {
        goto LABEL_22;
      }
    }

    v16 = 0;
    while (([objc_msgSend(objc_msgSend(v15 objectAtIndexedSubscript:{v16), "shortcut"), "isEqualToString:", -[KSListUserWordsController currentShortcut](self, "currentShortcut")}] & 1) == 0)
    {
      if (++v16 >= [v15 count])
      {
        goto LABEL_21;
      }
    }

    v17 = [(KSListUserWordsController *)self tableView];
    -[UITableView scrollToRowAtIndexPath:atScrollPosition:animated:](v17, "scrollToRowAtIndexPath:atScrollPosition:animated:", [MEMORY[0x277CCAA70] indexPathForRow:v16 inSection:v14], 1, 1);
  }

  else
  {
LABEL_22:
    if (self->_restoreEditing)
    {
      self->_restoreEditing = 0;
      [(KSListUserWordsController *)self setEditing:1 animated:0];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = KSListUserWordsController;
  [(KSListUserWordsController *)&v7 viewDidLoad];
  -[KSListUserWordsController setTitle:](self, "setTitle:", [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"SHORTCUTS", &stru_28679E3A8, @"Keyboard"}]);
  [(KSListUserWordsController *)self parentController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [-[KSListUserWordsController parentController](self "parentController")];
  }

  else
  {
    v3 = objc_alloc_init(KSUserWordsManager);
  }

  [(KSListUserWordsController *)self setDictionaryController:v3];
  [(KSSearchUserWordsController *)self->_searchResultsController setDictionaryController:[(KSListUserWordsController *)self dictionaryController]];
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3052000000;
  v6[3] = __Block_byref_object_copy__1;
  v6[4] = __Block_byref_object_dispose__1;
  v6[5] = self;
  v4 = [(KSListUserWordsController *)self dictionaryController];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__KSListUserWordsController_viewDidLoad__block_invoke;
  v5[3] = &unk_2797F9DF8;
  v5[4] = v6;
  self->_observerToken = [(KSUserWordsManager *)v4 addObserver:v5];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  if ([(KSListUserWordsController *)self savedSearchTerm])
  {
    [(UISearchBar *)[(UISearchController *)self->_searchController searchBar] setText:self->savedSearchTerm];
    [(UISearchController *)self->_searchController setActive:[(KSListUserWordsController *)self searchIsActive]];
    [(KSListUserWordsController *)self setSavedSearchTerm:0];
  }

  [(KSUserWordsManager *)[(KSListUserWordsController *)self dictionaryController] requestSync];
  _Block_object_dispose(v6, 8);
}

uint64_t __40__KSListUserWordsController_viewDidLoad__block_invoke(uint64_t a1)
{
  v2 = [*(*(*(a1 + 32) + 8) + 40) searchIsActive];
  v3 = *(*(*(a1 + 32) + 8) + 40);
  if (v2)
  {
    v4 = [objc_msgSend(v3 "searchController")];
    v5 = [*(*(*(a1 + 32) + 8) + 40) searchController];

    return [v4 updateSearchResultsForSearchController:v5];
  }

  else
  {

    return [v3 reloadSections];
  }
}

- (void)dealloc
{
  [(KSUserWordsManager *)[(KSListUserWordsController *)self dictionaryController] removeObserver:self->_observerToken];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  [(UITableView *)self->_tableView setDelegate:0];
  [(UITableView *)self->_tableView setDataSource:0];

  self->_searchController = 0;
  self->currentShortcut = 0;

  self->_dictionaryController = 0;
  self->_contentView = 0;

  self->_toolbar = 0;
  v3.receiver = self;
  v3.super_class = KSListUserWordsController;
  [(KSListUserWordsController *)&v3 dealloc];
}

- (BOOL)_shouldHideIndex
{
  v3 = [objc_msgSend(MEMORY[0x277D75418] "currentDevice")];
  v4 = [(KSListUserWordsController *)self numberOfSectionsInTableView:[(KSListUserWordsController *)self tableView]];
  v5 = 15;
  if (v3 == 1)
  {
    v5 = 20;
  }

  return v4 < v5;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (a4 == 1)
  {
    if ([(KSListUserWordsController *)self isEditing])
    {
      v8 = !self->_manualEditing;
    }

    else
    {
      v8 = 0;
    }

    self->_restoreEditing = v8;
    [a3 deselectRowAtIndexPath:a5 animated:1];
    v9 = [-[NSArray objectAtIndex:](-[KSListUserWordsController sections](self "sections")];
    v10 = [(KSListUserWordsController *)self dictionaryController];
    v12[0] = v9;
    -[KSUserWordsManager addEntries:removeEntries:withCompletionHandler:](v10, "addEntries:removeEntries:withCompletionHandler:", 0, [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1], &__block_literal_global_6);
    self->_manualEditing = 0;
    if (!v8)
    {
      [(KSListUserWordsController *)self setEditing:0 animated:1];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  [a3 deselectRowAtIndexPath:a4 animated:1];
  v6 = -[KSEditUserWordController initWithUserWord:]([KSEditUserWordController alloc], "initWithUserWord:", [-[NSArray objectAtIndex:](-[KSListUserWordsController sections](self "sections")]);
  [(KSEditUserWordController *)v6 setDictionaryController:[(KSListUserWordsController *)self dictionaryController]];
  [(KSListUserWordsController *)self showController:v6];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(KSListUserWordsController *)self sections];

  return [(NSArray *)v3 count];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(NSArray *)[(KSListUserWordsController *)self sections] objectAtIndex:a4];

  return [v4 count];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = [a3 dequeueReusableCellWithIdentifier:@"kCellIdentifier"];
  if (!v6)
  {
    v6 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"kCellIdentifier"];
    [v6 setAccessoryType:0];
  }

  v7 = [-[NSArray objectAtIndex:](-[KSListUserWordsController sections](self "sections")];
  [objc_msgSend(v6 "detailTextLabel")];
  [objc_msgSend(v6 "textLabel")];
  return v6;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  result = [-[NSArray objectAtIndex:](-[KSListUserWordsController sections](self sections];
  if (result)
  {
    v7 = [(UILocalizedIndexedCollation *)[(KSListUserWordsController *)self collation] sectionTitles];

    return [(NSArray *)v7 objectAtIndex:a4];
  }

  return result;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  if (-[KSListUserWordsController _shouldHideIndex](self, "_shouldHideIndex") || ![-[NSArray objectAtIndex:](-[KSListUserWordsController sections](self "sections")])
  {
    return 0.0;
  }

  [a3 sectionHeaderHeight];
  return result;
}

- (id)sectionIndexTitlesForTableView:(id)a3
{
  if ([(KSListUserWordsController *)self _shouldHideIndex])
  {
    return 0;
  }

  v5 = [(KSListUserWordsController *)self collation];

  return [(UILocalizedIndexedCollation *)v5 sectionIndexTitles];
}

- (int64_t)tableView:(id)a3 sectionForSectionIndexTitle:(id)a4 atIndex:(int64_t)a5
{
  if ([(KSListUserWordsController *)self _shouldHideIndex:a3])
  {
    return 0;
  }

  v8 = [(UILocalizedIndexedCollation *)[(KSListUserWordsController *)self collation] sectionForSectionIndexTitleAtIndex:a5];
  v9 = [(NSArray *)[(KSListUserWordsController *)self sections] count];
  if (v8 < 0)
  {
LABEL_8:
    v11 = v8 + 1;
    do
    {
      v7 = v11;
      if (v11 >= v9)
      {
        break;
      }

      v12 = [-[NSArray objectAtIndex:](-[KSListUserWordsController sections](self "sections")];
      v11 = v7 + 1;
    }

    while (!v12);
  }

  else
  {
    v7 = v8;
    while (![-[NSArray objectAtIndex:](-[KSListUserWordsController sections](self "sections")])
    {
      if (v7-- <= 0)
      {
        goto LABEL_8;
      }
    }
  }

  if (v7 < v9)
  {
    return v7;
  }

  v14 = [(KSListUserWordsController *)self collation];

  return [(UILocalizedIndexedCollation *)v14 sectionForSectionIndexTitleAtIndex:a5];
}

- (void)userWordDidUpdate:(id)a3
{
  v4 = [objc_msgSend(a3 "userInfo")];

  [(KSListUserWordsController *)self setCurrentShortcut:v4];
}

- (void)addUserWord
{
  v3 = objc_alloc_init(KSEditUserWordController);
  [(KSEditUserWordController *)v3 setDictionaryController:[(KSListUserWordsController *)self dictionaryController]];
  [(KSListUserWordsController *)self showController:v3];
}

- (void)inlineUserDictionaryDoneEditing
{
  v2 = [(KSListUserWordsController *)self navigationController];

  [v2 popViewControllerAnimated:1];
}

uint64_t __82__KSListUserWordsController_navigationController_willShowViewController_animated___block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 isCancelled];
  if (result)
  {
    v4 = *(a1 + 32);

    return [v4 _hideSearchBar];
  }

  return result;
}

uint64_t __82__KSListUserWordsController_navigationController_willShowViewController_animated___block_invoke_4(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 1192) searchBar];

  return [v1 setHidden:1];
}

- (void)willPresentSearchController:(id)a3
{
  [(KSListUserWordsController *)self setSearchNavControllerChanges:0];

  [(KSListUserWordsController *)self setSearchIsActive:1];
}

- (void)_hideSearchBar
{
  [(UISearchBar *)[(UISearchController *)self->_searchController searchBar] frame];
  [(UISearchBar *)[(UISearchController *)self->_searchController searchBar] setFrame:v5.origin.x - CGRectGetWidth(v5), v5.origin.y, v5.size.width, v5.size.height];
  v3 = [(UISearchController *)self->_searchController searchBar];

  [(UISearchBar *)v3 resignFirstResponder];
}

- (void)_showSearchBar
{
  [(UISearchBar *)[(UISearchController *)self->_searchController searchBar] frame];
  y = v8.origin.y;
  width = v8.size.width;
  height = v8.size.height;
  v6 = CGRectGetWidth(v8);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__KSListUserWordsController__showSearchBar__block_invoke;
  v7[3] = &unk_2797FA280;
  v7[4] = self;
  *&v7[5] = -v6;
  *&v7[6] = y;
  *&v7[7] = width;
  *&v7[8] = height;
  [MEMORY[0x277D75D18] performWithoutAnimation:v7];
  [(UISearchBar *)[(UISearchController *)self->_searchController searchBar] setFrame:0.0, y, width, height];
  [(UISearchBar *)[(UISearchController *)self->_searchController searchBar] becomeFirstResponder];
}

uint64_t __43__KSListUserWordsController__showSearchBar__block_invoke(double *a1)
{
  [objc_msgSend(*(*(a1 + 4) + 1192) "searchBar")];
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  v5 = a1[8];
  v6 = [*(*(a1 + 4) + 1192) searchBar];

  return [v6 setFrame:{v2, v3, v4, v5}];
}

- (void)emitNavigationEventForListUserWordsController
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.General/Keyboard/USER_DICTIONARY"];
  v4 = +[KSKeyboardController localizedStringForGeneralKeyboardSpecifier];
  v5 = objc_alloc(MEMORY[0x277CCAEB8]);
  v6 = [MEMORY[0x277CBEAF8] currentLocale];
  v8 = v4;
  v9 = [v5 initWithKey:@"SHORTCUTS" table:@"Keyboard" locale:v6 bundleURL:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "bundleURL")}];
  -[KSListUserWordsController pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:title:localizedNavigationComponents:deepLink:](self, "pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:title:localizedNavigationComponents:deepLink:", @"com.apple.graphic-icon.keyboard", v9, [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:2], v3);
  v7 = *MEMORY[0x277D85DE8];
}

@end