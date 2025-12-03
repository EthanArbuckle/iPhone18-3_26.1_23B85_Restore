@interface CNAutocompleteResultsTableViewController
+ (BOOL)avatarsAreHidden;
+ (BOOL)shouldUseTransparentCell;
+ (id)log;
+ (void)dispatchMainIfNecessary:(id)necessary;
- (BOOL)attemptDisambiguationToggleAtSelectedRowIsExpand:(BOOL)expand;
- (BOOL)confirmSelectedRecipient;
- (BOOL)recipientIsDisambiguationRecipient:(id)recipient;
- (BOOL)recipientIsExpanded:(id)expanded;
- (BOOL)recipientIsExpandedChild:(id)child;
- (BOOL)recipientIsExpandedParent:(id)parent;
- (BOOL)shouldShowCheckmarkForRecipient:(id)recipient preferredRecipient:(id)preferredRecipient;
- (BOOL)updateCell:(id)cell withPreferredRecipient:(id)recipient isInvalidation:(BOOL)invalidation;
- (BOOL)updatePreferredRecipientForCell:(id)cell isInvalidation:(BOOL)invalidation;
- (BOOL)willProvideOverrideImageDataForCell:(id)cell completionBlock:(id)block;
- (CNAutocompleteResultsTableViewController)initWithOptions:(id)options;
- (CNAutocompleteResultsTableViewController)initWithStyle:(int64_t)style;
- (CNAutocompleteResultsTableViewControllerDelegate)delegate;
- (double)_tableViewHeaderHeight;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)_combinedResults;
- (id)_flattenedIndexPaths;
- (id)_indexPathForRecipient:(id)recipient;
- (id)_parentRecipientForRecipientAtIndexPath:(id)path;
- (id)_recipientAtIndexPath:(id)path;
- (id)_unifiedRecipientForRecipientAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)unificationIdentifierForRecipient:(id)recipient;
- (id)visibleRecipients;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_selectSearchResultsRecipientAtIndexPath:(id)path;
- (void)_updateTableViewModelAnimated:(BOOL)animated;
- (void)callEndDisplayingRowForRecipientIndex:(id)index;
- (void)didHover:(id)hover;
- (void)didTapDisambiguationChevronForCell:(id)cell;
- (void)didTapInfoButtonForCell:(id)cell;
- (void)didToggleDisambiguationAtIndexPath:(id)path;
- (void)endDisplayOfVisibleCellsExcludingIndexPath:(id)path;
- (void)invalidateAddressTintColors;
- (void)invalidatePreferredRecipients;
- (void)invalidateSearchResultRecipient:(id)recipient;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)selectNextSearchResult;
- (void)selectPreviousSearchResult;
- (void)selectRowAtIndexPath:(id)path;
- (void)setDeferTableViewUpdates:(BOOL)updates;
- (void)setPreferredRecipient:(id)recipient forRecipient:(id)forRecipient;
- (void)setTintColor:(id)color forRecipient:(id)recipient;
- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
- (void)updateBackgroundAndSeparatorsForCell:(id)cell atIndexPath:(id)path;
- (void)updateLabelColorForCell:(id)cell;
- (void)updateRecipients:(id)recipients disambiguatingRecipient:(id)recipient;
- (void)viewLayoutMarginsDidChange;
@end

@implementation CNAutocompleteResultsTableViewController

+ (BOOL)avatarsAreHidden
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];
  v4 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC38]) == NSOrderedDescending;

  return v4;
}

+ (id)log
{
  if (log_cn_once_token_7 != -1)
  {
    +[CNAutocompleteResultsTableViewController log];
  }

  v3 = log_cn_once_object_7;

  return v3;
}

uint64_t __47__CNAutocompleteResultsTableViewController_log__block_invoke()
{
  log_cn_once_object_7 = os_log_create("com.apple.contacts.autocomplete.ui", "tableview controller");

  return MEMORY[0x1EEE66BB8]();
}

- (CNAutocompleteResultsTableViewController)initWithOptions:(id)options
{
  optionsCopy = options;
  v5 = [(CNAutocompleteResultsTableViewController *)self init];
  v6 = v5;
  if (optionsCopy && v5)
  {
    v7 = [optionsCopy copy];
    options = v6->_options;
    v6->_options = v7;
  }

  return v6;
}

- (CNAutocompleteResultsTableViewController)initWithStyle:(int64_t)style
{
  v17.receiver = self;
  v17.super_class = CNAutocompleteResultsTableViewController;
  v4 = [(CNAutocompleteResultsTableViewController *)&v17 initWithStyle:?];
  if (v4)
  {
    v5 = [CNAutocompleteResultsTableView alloc];
    v6 = [(CNAutocompleteResultsTableView *)v5 initWithFrame:style style:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(CNAutocompleteResultsTableViewController *)v4 setTableView:v6];

    v7 = objc_opt_new();
    [(CNAutocompleteResultsTableViewController *)v4 setExpandedIdentifiers:v7];

    view = [(CNAutocompleteResultsTableViewController *)v4 view];
    [view setPreservesSuperviewLayoutMargins:1];

    [(CNAutocompleteResultsTableViewController *)v4 setShouldHideInfoButton:0];
    -[CNAutocompleteResultsTableViewController setSupportsInfoButton:](v4, "setSupportsInfoButton:", [MEMORY[0x1E6996770] isDevicePasscodeProtected] ^ 1);
    [(CNAutocompleteResultsTableViewController *)v4 setClearsSelectionOnViewWillAppear:0];
    view2 = [(CNAutocompleteResultsTableViewController *)v4 view];
    v10 = [objc_alloc(MEMORY[0x1E69DCAA0]) initWithTarget:v4 action:sel_didHover_];
    [view2 addGestureRecognizer:v10];

    v11 = MEMORY[0x1E695D0E0];
    v12 = CNAutocompleteSharedLocalOnlyContactStore();
    v13 = [v11 settingsWithContactStore:v12 cacheSize:50 threeDTouchEnabled:0];
    [(CNAutocompleteResultsTableViewController *)v4 setSharedAvatarViewControllerSettings:v13];

    tableView = [(CNAutocompleteResultsTableViewController *)v4 tableView];
    [tableView setAutoresizingMask:2];

    tableView2 = [(CNAutocompleteResultsTableViewController *)v4 tableView];
    [tableView2 setSectionHeaderTopPadding:0.0];
  }

  return v4;
}

- (void)didHover:(id)hover
{
  hoverCopy = hover;
  state = [hoverCopy state];
  if ((state - 1) > 1)
  {
    if (state == 3)
    {
      [(CNAutocompleteResultsTableViewController *)self selectRowAtIndexPath:0];
    }
  }

  else
  {
    view = [(CNAutocompleteResultsTableViewController *)self view];
    [hoverCopy locationInView:view];
    v7 = v6;
    v9 = v8;

    tableView = [(CNAutocompleteResultsTableViewController *)self tableView];
    v11 = [tableView indexPathForRowAtPoint:{v7, v9}];

    tableView2 = [(CNAutocompleteResultsTableViewController *)self tableView];
    v13 = [tableView2 cellForRowAtIndexPath:v11];

    if (!v13)
    {

      v11 = 0;
    }

    [(CNAutocompleteResultsTableViewController *)self selectRowAtIndexPath:v11];
  }
}

- (void)selectRowAtIndexPath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    tableView = [(CNAutocompleteResultsTableViewController *)self tableView];
    [tableView scrollToRowAtIndexPath:pathCopy atScrollPosition:0 animated:1];
  }

  tableView2 = [(CNAutocompleteResultsTableViewController *)self tableView];
  [tableView2 selectRowAtIndexPath:pathCopy animated:0 scrollPosition:0];
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = CNAutocompleteResultsTableViewController;
  changeCopy = change;
  [(CNAutocompleteResultsTableViewController *)&v9 traitCollectionDidChange:changeCopy];
  v5 = [(CNAutocompleteResultsTableViewController *)self traitCollection:v9.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  LOBYTE(changeCopy) = [preferredContentSizeCategory isEqual:preferredContentSizeCategory2];
  if ((changeCopy & 1) == 0)
  {
    tableView = [(CNAutocompleteResultsTableViewController *)self tableView];
    [tableView _purgeReuseQueues];
  }
}

- (void)_updateTableViewModelAnimated:(BOOL)animated
{
  v48 = *MEMORY[0x1E69E9840];
  if (self->_deferTableViewUpdates)
  {
    self->_tableViewNeedsReload = 1;
  }

  else
  {
    animatedCopy = animated;
    delegate = [(CNAutocompleteResultsTableViewController *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if ((v6 & 1) != 0 && (-[CNAutocompleteResultsTableViewController tableView](self, "tableView"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isHidden], v7, (v8 & 1) == 0))
    {
      visibleRecipients = [(CNAutocompleteResultsTableViewController *)self visibleRecipients];
    }

    else
    {
      visibleRecipients = 0;
    }

    tableViewModel = self->_tableViewModel;
    if (!tableViewModel)
    {
      v11 = [[_CNAutocompleteResultsTableViewModel alloc] initWithNumberOfSections:3];
      v12 = self->_tableViewModel;
      self->_tableViewModel = v11;

      tableViewModel = self->_tableViewModel;
    }

    v13 = tableViewModel;
    v14 = [[_CNAutocompleteResultsTableViewModel alloc] initWithNumberOfSections:[(_CNAutocompleteResultsTableViewModel *)v13 numberOfSections]];
    [(_CNAutocompleteResultsTableViewModel *)v14 setObject:self->_searchResults atIndexedSubscript:0];
    [(_CNAutocompleteResultsTableViewModel *)v14 setObject:self->_suggestedSearchResults atIndexedSubscript:1];
    [(_CNAutocompleteResultsTableViewModel *)v14 setObject:self->_serverSearchResults atIndexedSubscript:2];
    self->_ignoreDidEndDisplayingCell = 1;
    if (animatedCopy)
    {
      tableView6 = [(_CNAutocompleteResultsTableViewModel *)v13 computeDiffForModel:v14];
      objc_storeStrong(&self->_tableViewModel, v14);
      tableView = [(CNAutocompleteResultsTableViewController *)self tableView];
      [tableView beginUpdates];

      insertedRows = [tableView6 insertedRows];
      v18 = [insertedRows count];

      if (v18)
      {
        tableView2 = [(CNAutocompleteResultsTableViewController *)self tableView];
        insertedRows2 = [tableView6 insertedRows];
        [tableView2 insertSections:insertedRows2 withRowAnimation:100];
      }

      deletedRows = [tableView6 deletedRows];
      v22 = [deletedRows count];

      if (v22)
      {
        tableView3 = [(CNAutocompleteResultsTableViewController *)self tableView];
        deletedRows2 = [tableView6 deletedRows];
        [tableView3 deleteSections:deletedRows2 withRowAnimation:3];
      }

      changedRows = [tableView6 changedRows];
      v26 = [changedRows count];

      if (v26)
      {
        tableView4 = [(CNAutocompleteResultsTableViewController *)self tableView];
        changedRows2 = [tableView6 changedRows];
        [tableView4 reloadSections:changedRows2 withRowAnimation:0];
      }

      tableView5 = [(CNAutocompleteResultsTableViewController *)self tableView];
      [tableView5 endUpdates];
    }

    else
    {
      objc_storeStrong(&self->_tableViewModel, v14);
      tableView6 = [(CNAutocompleteResultsTableViewController *)self tableView];
      [tableView6 reloadData];
    }

    self->_ignoreDidEndDisplayingCell = 0;
    if ((v6 & 1) != 0 && ((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
    {
      visibleRecipients2 = [(CNAutocompleteResultsTableViewController *)self visibleRecipients];
      v31 = [visibleRecipients2 _cn_indexBy:&__block_literal_global_80];

      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __74__CNAutocompleteResultsTableViewController__updateTableViewModelAnimated___block_invoke_2;
      v45[3] = &unk_1E7CD1BE0;
      v32 = v31;
      v46 = v32;
      v40 = visibleRecipients;
      v33 = [visibleRecipients _cn_filter:v45];
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v34 = [v33 countByEnumeratingWithState:&v41 objects:v47 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v42;
        do
        {
          v37 = 0;
          do
          {
            if (*v42 != v36)
            {
              objc_enumerationMutation(v33);
            }

            v38 = *(*(&v41 + 1) + 8 * v37);
            delegate2 = [(CNAutocompleteResultsTableViewController *)self delegate];
            [delegate2 autocompleteResultsController:self didEndDisplayingRowForRecipient:v38];

            ++v37;
          }

          while (v35 != v37);
          v35 = [v33 countByEnumeratingWithState:&v41 objects:v47 count:16];
        }

        while (v35);
      }

      visibleRecipients = v40;
    }
  }
}

BOOL __74__CNAutocompleteResultsTableViewController__updateTableViewModelAnimated___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 stringForEqualityTesting];
  v4 = [v2 objectForKey:v3];
  v5 = v4 == 0;

  return v5;
}

- (id)visibleRecipients
{
  tableView = [(CNAutocompleteResultsTableViewController *)self tableView];
  indexPathsForVisibleRows = [tableView indexPathsForVisibleRows];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__CNAutocompleteResultsTableViewController_visibleRecipients__block_invoke;
  v8[3] = &unk_1E7CD1CA0;
  v8[4] = self;
  v5 = [indexPathsForVisibleRows _cn_map:v8];
  _cn_flatten = [v5 _cn_flatten];

  return _cn_flatten;
}

- (void)setDeferTableViewUpdates:(BOOL)updates
{
  deferTableViewUpdates = self->_deferTableViewUpdates;
  if (deferTableViewUpdates == updates)
  {
    if (deferTableViewUpdates)
    {
      return;
    }
  }

  else
  {
    self->_deferTableViewUpdates = updates;
    if (updates)
    {
      return;
    }
  }

  if (self->_tableViewNeedsReload)
  {
    self->_tableViewNeedsReload = 0;
    [(CNAutocompleteResultsTableViewController *)self _updateTableViewModelAnimated:0];
  }
}

- (id)unificationIdentifierForRecipient:(id)recipient
{
  recipientCopy = recipient;
  if ([recipientCopy isGroup])
  {
    address = [recipientCopy address];
  }

  else
  {
    autocompleteResult = [recipientCopy autocompleteResult];
    identifier = [autocompleteResult identifier];
    v7 = identifier;
    if (identifier)
    {
      address2 = identifier;
    }

    else
    {
      address2 = [recipientCopy address];
    }

    address = address2;
  }

  return address;
}

- (void)updateRecipients:(id)recipients disambiguatingRecipient:(id)recipient
{
  v69 = *MEMORY[0x1E69E9840];
  recipientsCopy = recipients;
  recipientCopy = recipient;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    [CNAutocompleteResultsTableViewController updateRecipients:disambiguatingRecipient:];
  }

  v8 = [recipientsCopy copy];
  recipients = self->_recipients;
  self->_recipients = v8;

  [(CNAutocompleteResultsTableViewController *)self setInDisambiguationMode:recipientCopy != 0];
  [(CNAutocompleteResultsTableViewController *)self setHasPerformedRecipientExpansion:0];
  expandedIdentifiers = [(CNAutocompleteResultsTableViewController *)self expandedIdentifiers];
  [expandedIdentifiers removeAllObjects];

  v11 = [(CNAutocompleteResultsTableViewController *)self unificationIdentifierForRecipient:recipientCopy];
  if (v11)
  {
    expandedIdentifiers2 = [(CNAutocompleteResultsTableViewController *)self expandedIdentifiers];
    [expandedIdentifiers2 addObject:v11];
  }

  selfCopy = self;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = recipientsCopy;
  v14 = [obj countByEnumeratingWithState:&v62 objects:v68 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v63;
    v47 = array2;
    v48 = recipientCopy;
    v46 = *v63;
    do
    {
      v17 = 0;
      v51 = v15;
      do
      {
        if (*v63 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v62 + 1) + 8 * v17);
        isSuggestedRecipient = [v18 isSuggestedRecipient];
        v20 = array2;
        if ((isSuggestedRecipient & 1) == 0)
        {
          isDirectoryServerResult = [v18 isDirectoryServerResult];
          v20 = array;
          if (isDirectoryServerResult)
          {
            v20 = array3;
          }
        }

        v22 = v20;
        [v22 addObject:v18];
        if (v18 == recipientCopy)
        {
          sortedChildren = [v18 sortedChildren];
          [v22 addObjectsFromArray:sortedChildren];
        }

        if ([v18 isGroup])
        {
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          children = [v18 children];
          v25 = [children countByEnumeratingWithState:&v58 objects:v67 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v59;
            do
            {
              for (i = 0; i != v26; ++i)
              {
                if (*v59 != v27)
                {
                  objc_enumerationMutation(children);
                }

                v29 = *(*(&v58 + 1) + 8 * i);
                v54 = 0u;
                v55 = 0u;
                v56 = 0u;
                v57 = 0u;
                children2 = [v29 children];
                v31 = [children2 arrayByAddingObject:v29];

                v32 = [v31 countByEnumeratingWithState:&v54 objects:v66 count:16];
                if (v32)
                {
                  v33 = v32;
                  v34 = *v55;
                  do
                  {
                    for (j = 0; j != v33; ++j)
                    {
                      if (*v55 != v34)
                      {
                        objc_enumerationMutation(v31);
                      }

                      [*(*(&v54 + 1) + 8 * j) setIsMemberOfGroup:1];
                    }

                    v33 = [v31 countByEnumeratingWithState:&v54 objects:v66 count:16];
                  }

                  while (v33);
                }
              }

              v26 = [children countByEnumeratingWithState:&v58 objects:v67 count:16];
            }

            while (v26);
          }

          array2 = v47;
          recipientCopy = v48;
          v16 = v46;
          v15 = v51;
        }

        ++v17;
      }

      while (v17 != v15);
      v15 = [obj countByEnumeratingWithState:&v62 objects:v68 count:16];
    }

    while (v15);
  }

  objc_storeStrong(&selfCopy->_searchResults, array);
  objc_storeStrong(&selfCopy->_suggestedSearchResults, array2);
  objc_storeStrong(&selfCopy->_serverSearchResults, array3);
  tableView = [(CNAutocompleteResultsTableViewController *)selfCopy tableView];
  indexPathForSelectedRow = [tableView indexPathForSelectedRow];

  [(CNAutocompleteResultsTableViewController *)selfCopy _updateTableViewModelAnimated:0];
  tableView2 = [(CNAutocompleteResultsTableViewController *)selfCopy tableView];
  [tableView2 layoutIfNeeded];

  if (indexPathForSelectedRow && (-[_CNAutocompleteResultsTableViewModel objectAtIndexedSubscript:](selfCopy->_tableViewModel, "objectAtIndexedSubscript:", [indexPathForSelectedRow section]), v39 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend(v39, "count"), v41 = objc_msgSend(indexPathForSelectedRow, "row"), v39, v40 > v41))
  {
    [(CNAutocompleteResultsTableViewController *)selfCopy selectRowAtIndexPath:indexPathForSelectedRow];
    v42 = v44;
  }

  else
  {
    v42 = v44;
    if ([MEMORY[0x1E69DCBB8] isInHardwareKeyboardMode])
    {
      tableViewModel = selfCopy->_tableViewModel;
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __85__CNAutocompleteResultsTableViewController_updateRecipients_disambiguatingRecipient___block_invoke;
      v53[3] = &unk_1E7CD1CC8;
      v53[4] = selfCopy;
      [(_CNAutocompleteResultsTableViewModel *)tableViewModel enumerateSections:v53];
    }
  }
}

uint64_t __85__CNAutocompleteResultsTableViewController_updateRecipients_disambiguatingRecipient___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 count];
  if (result)
  {
    v8 = [*(a1 + 32) tableView];
    v9 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:a2];
    [v8 scrollToRowAtIndexPath:v9 atScrollPosition:0 animated:0];

    result = [*(a1 + 32) selectNextSearchResult];
    *a4 = 1;
  }

  return result;
}

- (id)_flattenedIndexPaths
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  array = [MEMORY[0x1E695DF70] array];
  tableViewModel = self->_tableViewModel;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__CNAutocompleteResultsTableViewController__flattenedIndexPaths__block_invoke;
  v6[3] = &unk_1E7CD1C30;
  v6[4] = &v7;
  [(_CNAutocompleteResultsTableViewModel *)tableViewModel enumerateSections:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __64__CNAutocompleteResultsTableViewController__flattenedIndexPaths__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 count];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      v8 = [MEMORY[0x1E696AC88] indexPathForRow:i inSection:a2];
      [*(*(*(a1 + 32) + 8) + 40) addObject:v8];
    }
  }
}

- (void)selectNextSearchResult
{
  _flattenedIndexPaths = [(CNAutocompleteResultsTableViewController *)self _flattenedIndexPaths];
  if ([_flattenedIndexPaths count])
  {
    tableView = [(CNAutocompleteResultsTableViewController *)self tableView];
    indexPathForSelectedRow = [tableView indexPathForSelectedRow];

    if (indexPathForSelectedRow)
    {
      v5 = [_flattenedIndexPaths indexOfObject:indexPathForSelectedRow] + 1;
      if (v5 >= [_flattenedIndexPaths count])
      {
LABEL_7:

        goto LABEL_8;
      }

      v6 = [_flattenedIndexPaths objectAtIndex:v5];

      indexPathForSelectedRow = v6;
    }

    else
    {
      indexPathForSelectedRow = [_flattenedIndexPaths firstObject];
    }

    [(CNAutocompleteResultsTableViewController *)self selectRowAtIndexPath:indexPathForSelectedRow];
    goto LABEL_7;
  }

LABEL_8:
}

- (void)selectPreviousSearchResult
{
  _flattenedIndexPaths = [(CNAutocompleteResultsTableViewController *)self _flattenedIndexPaths];
  if ([_flattenedIndexPaths count])
  {
    tableView = [(CNAutocompleteResultsTableViewController *)self tableView];
    indexPathForSelectedRow = [tableView indexPathForSelectedRow];

    if (indexPathForSelectedRow)
    {
      v5 = [_flattenedIndexPaths indexOfObject:indexPathForSelectedRow];
      if (!v5)
      {
LABEL_7:

        goto LABEL_8;
      }

      v6 = [_flattenedIndexPaths objectAtIndex:v5 - 1];

      indexPathForSelectedRow = v6;
    }

    else
    {
      indexPathForSelectedRow = [_flattenedIndexPaths lastObject];
    }

    [(CNAutocompleteResultsTableViewController *)self selectRowAtIndexPath:indexPathForSelectedRow];
    goto LABEL_7;
  }

LABEL_8:
}

- (BOOL)confirmSelectedRecipient
{
  tableView = [(CNAutocompleteResultsTableViewController *)self tableView];
  indexPathForSelectedRow = [tableView indexPathForSelectedRow];

  if (indexPathForSelectedRow && (-[CNAutocompleteResultsTableViewController tableView](self, "tableView"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isHidden], v5, (v6 & 1) == 0))
  {
    [(CNAutocompleteResultsTableViewController *)self _selectSearchResultsRecipientAtIndexPath:indexPathForSelectedRow];
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)attemptDisambiguationToggleAtSelectedRowIsExpand:(BOOL)expand
{
  expandCopy = expand;
  tableView = [(CNAutocompleteResultsTableViewController *)self tableView];
  indexPathForSelectedRow = [tableView indexPathForSelectedRow];

  tableView2 = [(CNAutocompleteResultsTableViewController *)self tableView];
  v8 = [tableView2 cellForRowAtIndexPath:indexPathForSelectedRow];

  if (!expandCopy)
  {
    if (![v8 canCollapseRecipient])
    {
      goto LABEL_3;
    }

LABEL_5:
    [(CNAutocompleteResultsTableViewController *)self didToggleDisambiguationAtIndexPath:indexPathForSelectedRow];
    v9 = 1;
    goto LABEL_6;
  }

  if ([v8 canExpandRecipient])
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = 0;
LABEL_6:

  return v9;
}

- (id)_combinedResults
{
  v8[3] = *MEMORY[0x1E69E9840];
  searchResults = self->_searchResults;
  suggestedSearchResults = self->_suggestedSearchResults;
  serverSearchResults = self->_serverSearchResults;
  if (!searchResults)
  {
    searchResults = MEMORY[0x1E695E0F0];
  }

  if (!suggestedSearchResults)
  {
    suggestedSearchResults = MEMORY[0x1E695E0F0];
  }

  v8[0] = searchResults;
  v8[1] = suggestedSearchResults;
  if (serverSearchResults)
  {
    v5 = serverSearchResults;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v8[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  return v6;
}

- (id)_indexPathForRecipient:(id)recipient
{
  recipientCopy = recipient;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0x7FFFFFFFFFFFFFFFLL;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0x7FFFFFFFFFFFFFFFLL;
  tableViewModel = self->_tableViewModel;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__CNAutocompleteResultsTableViewController__indexPathForRecipient___block_invoke;
  v9[3] = &unk_1E7CD1CF0;
  v11 = &v17;
  v6 = recipientCopy;
  v10 = v6;
  v12 = &v13;
  [(_CNAutocompleteResultsTableViewModel *)tableViewModel enumerateSections:v9];
  v7 = [MEMORY[0x1E696AC88] indexPathForRow:v18[3] inSection:v14[3]];

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);

  return v7;
}

uint64_t __67__CNAutocompleteResultsTableViewController__indexPathForRecipient___block_invoke(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 indexOfObject:a1[4]];
  *(*(a1[5] + 8) + 24) = result;
  if (*(*(a1[5] + 8) + 24) != 0x7FFFFFFFFFFFFFFFLL)
  {
    *(*(a1[6] + 8) + 24) = a2;
    *a4 = 1;
  }

  return result;
}

- (id)_recipientAtIndexPath:(id)path
{
  pathCopy = path;
  numberOfSections = [(_CNAutocompleteResultsTableViewModel *)self->_tableViewModel numberOfSections];
  if (numberOfSections <= [pathCopy section])
  {
    v9 = 0;
  }

  else
  {
    v6 = -[_CNAutocompleteResultsTableViewModel objectAtIndexedSubscript:](self->_tableViewModel, "objectAtIndexedSubscript:", [pathCopy section]);
    v7 = [v6 count];
    if (v7 <= [pathCopy row])
    {
      v9 = 0;
    }

    else
    {
      v8 = -[_CNAutocompleteResultsTableViewModel objectAtIndexedSubscript:](self->_tableViewModel, "objectAtIndexedSubscript:", [pathCopy section]);
      v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
    }
  }

  return v9;
}

- (id)_unifiedRecipientForRecipientAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(CNAutocompleteResultsTableViewController *)self _recipientAtIndexPath:pathCopy];
  v6 = [pathCopy row];
  if (v6 < 0)
  {
LABEL_7:
    v16 = 0;
  }

  else
  {
    v7 = v6;
    while (1)
    {
      v8 = [MEMORY[0x1E696AC88] indexPathForRow:v7 inSection:{objc_msgSend(pathCopy, "section")}];
      v9 = [(CNAutocompleteResultsTableViewController *)self _recipientAtIndexPath:v8];

      v10 = [(CNAutocompleteResultsTableViewController *)self unificationIdentifierForRecipient:v9];
      v11 = [(CNAutocompleteResultsTableViewController *)self unificationIdentifierForRecipient:v5];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
        v16 = 0;
        goto LABEL_10;
      }

      children = [v9 children];
      v14 = [children count];

      if (v14)
      {
        break;
      }

      if (v7-- <= 0)
      {
        goto LABEL_7;
      }
    }

    v16 = v9;
LABEL_10:
  }

  return v16;
}

- (id)_parentRecipientForRecipientAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(CNAutocompleteResultsTableViewController *)self _recipientAtIndexPath:pathCopy];
  if ([v5 isMemberOfGroup])
  {
    v6 = [pathCopy row];
    if (v6 < 0)
    {
LABEL_7:
      v9 = 0;
    }

    else
    {
      v7 = v6;
      while (1)
      {
        v8 = [MEMORY[0x1E696AC88] indexPathForRow:v7 inSection:{objc_msgSend(pathCopy, "section")}];
        v9 = [(CNAutocompleteResultsTableViewController *)self _recipientAtIndexPath:v8];

        if (![v9 isMemberOfGroup])
        {
          break;
        }

        if (v7-- <= 0)
        {
          goto LABEL_7;
        }
      }
    }
  }

  else
  {
    v9 = [(CNAutocompleteResultsTableViewController *)self _unifiedRecipientForRecipientAtIndexPath:pathCopy];
  }

  return v9;
}

- (void)_selectSearchResultsRecipientAtIndexPath:(id)path
{
  v115 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v6 = [(CNAutocompleteResultsTableViewController *)self _recipientAtIndexPath:pathCopy];
    v7 = v6;
    if (![(CNComposeRecipient *)v6 isGroup])
    {
      v8 = [(CNAutocompleteResultsTableViewController *)self _unifiedRecipientForRecipientAtIndexPath:pathCopy];
      children = [v8 children];

      v7 = v6;
      if ([children count] >= 2)
      {
        v7 = [[CNUnifiedComposeRecipient alloc] initWithChildren:children defaultChild:v6];
      }

      v112 = 0u;
      v113 = 0u;
      v110 = 0u;
      v111 = 0u;
      children2 = [(CNUnifiedComposeRecipient *)v7 children];
      v11 = [children2 arrayByAddingObject:v7];

      v12 = [v11 countByEnumeratingWithState:&v110 objects:v114 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v111;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v111 != v14)
            {
              objc_enumerationMutation(v11);
            }

            [*(*(&v110 + 1) + 8 * i) setIsMemberOfGroup:0];
          }

          v13 = [v11 countByEnumeratingWithState:&v110 objects:v114 count:16];
        }

        while (v13);
      }
    }

    v16 = [(CNAutocompleteResultsTableViewController *)self recipientIsExpanded:v6];
    tableView = [(CNAutocompleteResultsTableViewController *)self tableView];
    v18 = [tableView cellForRowAtIndexPath:pathCopy];

    if ([(CNAutocompleteResultsTableViewController *)self recipientIsDisambiguationRecipient:v6])
    {
      v19 = v18;
      if (v19)
      {
        v20 = v16;
      }

      else
      {
        v20 = 0;
      }

      if (v20)
      {
        tableView2 = [(CNAutocompleteResultsTableViewController *)self tableView];
        [tableView2 setUserInteractionEnabled:0];

        v22 = [(CNAutocompleteResultsTableViewController *)self _unifiedRecipientForRecipientAtIndexPath:pathCopy];
        children3 = [v22 children];
        v108[0] = MEMORY[0x1E69E9820];
        v108[1] = 3221225472;
        v108[2] = __85__CNAutocompleteResultsTableViewController__selectSearchResultsRecipientAtIndexPath___block_invoke;
        v108[3] = &unk_1E7CD1BE0;
        v109 = v22;
        v94 = v22;
        v24 = [children3 _cn_firstObjectPassingTest:v108];

        v25 = [(CNAutocompleteResultsTableViewController *)self _indexPathForRecipient:v24];
        v92 = v25;
        v93 = v24;
        if (v24)
        {
          v26 = v25;
          tableView3 = [(CNAutocompleteResultsTableViewController *)self tableView];
          v28 = [tableView3 cellForRowAtIndexPath:v26];

          v91 = v28;
          if (v28)
          {
            [v28 setCheckmarkVisible:0];
            view = [(CNAutocompleteResultsTableViewController *)self view];
            checkmarkView = [v28 checkmarkView];
            [checkmarkView bounds];
            v32 = v31;
            v34 = v33;
            v36 = v35;
            v38 = v37;
            checkmarkView2 = [v28 checkmarkView];
            [view convertRect:checkmarkView2 fromView:{v32, v34, v36, v38}];
            v41 = v40;
            MinY = v42;
            v45 = v44;
            v47 = v46;
          }

          else
          {
            v48 = v26;
            view2 = [(CNAutocompleteResultsTableViewController *)self view];
            checkmarkView3 = [v19 checkmarkView];
            [checkmarkView3 bounds];
            v51 = v50;
            v53 = v52;
            v55 = v54;
            v57 = v56;
            checkmarkView4 = [v19 checkmarkView];
            [view2 convertRect:checkmarkView4 fromView:{v51, v53, v55, v57}];
            v41 = v59;
            v45 = v60;
            v47 = v61;

            view = [(CNAutocompleteResultsTableViewController *)self tableView];
            [view rectForRowAtIndexPath:v48];
            MinY = CGRectGetMinY(v116);
          }
        }

        else
        {
          v41 = *MEMORY[0x1E695F050];
          MinY = *(MEMORY[0x1E695F050] + 8);
          v45 = *(MEMORY[0x1E695F050] + 16);
          v47 = *(MEMORY[0x1E695F050] + 24);
        }

        view3 = [(CNAutocompleteResultsTableViewController *)self view];
        checkmarkView5 = [v19 checkmarkView];
        [checkmarkView5 bounds];
        v65 = v64;
        v67 = v66;
        v69 = v68;
        v71 = v70;
        checkmarkView6 = [v19 checkmarkView];
        [view3 convertRect:checkmarkView6 fromView:{v65, v67, v69, v71}];
        v74 = v73;
        v76 = v75;
        v78 = v77;
        v80 = v79;

        v81 = +[CNAutocompleteDisambiguatingTableViewCell createCheckmarkView];
        [v81 setFrame:{v41, MinY, v45, v47}];
        view4 = [(CNAutocompleteResultsTableViewController *)self view];
        [view4 addSubview:v81];

        v117.origin.x = v41;
        v117.origin.y = MinY;
        v117.size.width = v45;
        v117.size.height = v47;
        IsNull = CGRectIsNull(v117);
        if (IsNull)
        {
          v84 = v80;
        }

        else
        {
          v84 = v47;
        }

        if (IsNull)
        {
          v85 = v78;
        }

        else
        {
          v85 = v45;
        }

        if (IsNull)
        {
          v86 = v76;
        }

        else
        {
          v86 = MinY;
        }

        if (IsNull)
        {
          v87 = v74;
        }

        else
        {
          v87 = v41;
        }

        [v81 setFrame:{v87, v86, v85, v84}];
        v118.origin.x = v41;
        v118.origin.y = MinY;
        v118.size.width = v45;
        v118.size.height = v47;
        [v81 setAlpha:!CGRectIsNull(v118)];
        v88 = MEMORY[0x1E69DD250];
        v102[0] = MEMORY[0x1E69E9820];
        v102[1] = 3221225472;
        v102[2] = __85__CNAutocompleteResultsTableViewController__selectSearchResultsRecipientAtIndexPath___block_invoke_2;
        v102[3] = &unk_1E7CD1D18;
        v103 = v81;
        v104 = v74;
        v105 = v76;
        v106 = v78;
        v107 = v80;
        v95[0] = MEMORY[0x1E69E9820];
        v95[1] = 3221225472;
        v95[2] = __85__CNAutocompleteResultsTableViewController__selectSearchResultsRecipientAtIndexPath___block_invoke_3;
        v95[3] = &unk_1E7CD1D40;
        v96 = v103;
        v19 = v19;
        v97 = v19;
        selfCopy = self;
        v99 = WeakRetained;
        v100 = v7;
        v101 = pathCopy;
        v89 = v103;
        [v88 _animateUsingDefaultTimingWithOptions:0 animations:v102 completion:v95];

        goto LABEL_39;
      }
    }

    else
    {
      v19 = 0;
    }

    [WeakRetained autocompleteResultsController:self didSelectRecipient:v7 atIndex:{objc_msgSend(pathCopy, "row")}];
LABEL_39:
    [(CNAutocompleteResultsTableViewController *)self endDisplayOfVisibleCellsExcludingIndexPath:pathCopy];
  }
}

uint64_t __85__CNAutocompleteResultsTableViewController__selectSearchResultsRecipientAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 address];
  v4 = [*(a1 + 32) address];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

uint64_t __85__CNAutocompleteResultsTableViewController__selectSearchResultsRecipientAtIndexPath___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 32);

  return [v2 setAlpha:1.0];
}

uint64_t __85__CNAutocompleteResultsTableViewController__selectSearchResultsRecipientAtIndexPath___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  [*(a1 + 40) setCheckmarkVisible:1];
  v2 = [*(a1 + 48) tableView];
  [v2 setUserInteractionEnabled:1];

  [*(a1 + 48) setInDisambiguationMode:0];
  v4 = *(a1 + 48);
  v3 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = [*(a1 + 72) row];

  return [v3 autocompleteResultsController:v4 didSelectRecipient:v5 atIndex:v6];
}

- (void)endDisplayOfVisibleCellsExcludingIndexPath:(id)path
{
  v19 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  delegate = [(CNAutocompleteResultsTableViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    tableView = [(CNAutocompleteResultsTableViewController *)self tableView];
    indexPathsForVisibleRows = [tableView indexPathsForVisibleRows];

    v9 = [indexPathsForVisibleRows countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(indexPathsForVisibleRows);
          }

          v13 = *(*(&v14 + 1) + 8 * i);
          if (([v13 isEqual:pathCopy] & 1) == 0)
          {
            [(CNAutocompleteResultsTableViewController *)self callEndDisplayingRowForRecipientIndex:v13];
          }
        }

        v10 = [indexPathsForVisibleRows countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }
}

- (void)invalidateSearchResultRecipient:(id)recipient
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = [(CNAutocompleteResultsTableViewController *)self _indexPathForRecipient:recipient];
  if ([v4 row] != 0x7FFFFFFFFFFFFFFFLL)
  {
    tableView = [(CNAutocompleteResultsTableViewController *)self tableView];
    [tableView beginUpdates];

    tableView2 = [(CNAutocompleteResultsTableViewController *)self tableView];
    v10[0] = v4;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [tableView2 deleteRowsAtIndexPaths:v7 withRowAnimation:2];

    v8 = -[_CNAutocompleteResultsTableViewModel sectionAtIndex:](self->_tableViewModel, "sectionAtIndex:", [v4 section]);
    [v8 removeObjectAtIndex:{objc_msgSend(v4, "row")}];

    tableView3 = [(CNAutocompleteResultsTableViewController *)self tableView];
    [tableView3 endUpdates];
  }
}

- (void)didTapDisambiguationChevronForCell:(id)cell
{
  cellCopy = cell;
  tableView = [(CNAutocompleteResultsTableViewController *)self tableView];
  v7 = [tableView indexPathForCell:cellCopy];

  v6 = v7;
  if (v7)
  {
    [(CNAutocompleteResultsTableViewController *)self didToggleDisambiguationAtIndexPath:v7];
    v6 = v7;
  }
}

- (void)didToggleDisambiguationAtIndexPath:(id)path
{
  pathCopy = path;
  [(CNAutocompleteResultsTableViewController *)self setHasPerformedRecipientExpansion:1];
  v5 = [(CNAutocompleteResultsTableViewController *)self _parentRecipientForRecipientAtIndexPath:pathCopy];
  v6 = [(CNAutocompleteResultsTableViewController *)self _indexPathForRecipient:v5];
  v7 = [(CNAutocompleteResultsTableViewController *)self unificationIdentifierForRecipient:v5];
  v8 = [(CNAutocompleteResultsTableViewController *)self recipientIsExpanded:v5];
  delegate = [(CNAutocompleteResultsTableViewController *)self delegate];
  v49 = v8;
  v47 = pathCopy;
  v45 = v7;
  if (v8)
  {
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      delegate2 = [(CNAutocompleteResultsTableViewController *)self delegate];
      [delegate2 autocompleteResultsController:self willCollapseSelectedRecipient:v5];
      v12 = 2;
LABEL_6:

      goto LABEL_9;
    }

    v12 = 2;
  }

  else
  {
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      delegate2 = [(CNAutocompleteResultsTableViewController *)self delegate];
      [delegate2 autocompleteResultsController:self willExpandSelectedRecipient:v5];
      v12 = 3;
      goto LABEL_6;
    }

    v12 = 3;
  }

LABEL_9:
  tableView = [(CNAutocompleteResultsTableViewController *)self tableView];
  v15 = [tableView cellForRowAtIndexPath:v6];

  v48 = v15;
  [v15 setActionType:v12 animated:1];
  v16 = [v6 row] + 1;
  children = [v5 children];
  v18 = [children count];

  delegate3 = [(CNAutocompleteResultsTableViewController *)self delegate];
  v20 = objc_opt_respondsToSelector();

  v21 = objc_opt_new();
  if (v18)
  {
    v22 = v49 & v20;
    v23 = v16;
    v24 = v18;
    do
    {
      v25 = [MEMORY[0x1E696AC88] indexPathForRow:v23 inSection:{objc_msgSend(v6, "section")}];
      [v21 addObject:v25];
      if (v22)
      {
        [(CNAutocompleteResultsTableViewController *)self callEndDisplayingRowForRecipientIndex:v25];
      }

      ++v23;
      --v24;
    }

    while (v24);
  }

  v26 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v16, v18}];
  v27 = -[_CNAutocompleteResultsTableViewModel objectAtIndexedSubscript:](self->_tableViewModel, "objectAtIndexedSubscript:", [v6 section]);
  if (v49)
  {
    self->_ignoreDidEndDisplayingCell = 1;
  }

  tableView2 = [(CNAutocompleteResultsTableViewController *)self tableView];
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __79__CNAutocompleteResultsTableViewController_didToggleDisambiguationAtIndexPath___block_invoke;
  v51[3] = &unk_1E7CD1D68;
  v57 = !v49;
  v51[4] = self;
  v46 = v45;
  v52 = v46;
  v29 = v27;
  v53 = v29;
  v30 = v5;
  v54 = v30;
  v31 = v26;
  v55 = v31;
  v32 = v21;
  v56 = v32;
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __79__CNAutocompleteResultsTableViewController_didToggleDisambiguationAtIndexPath___block_invoke_2;
  v50[3] = &unk_1E7CD1D90;
  v50[4] = self;
  [tableView2 performBatchUpdates:v51 completion:v50];

  delegate4 = [(CNAutocompleteResultsTableViewController *)self delegate];
  if (v49)
  {
    v34 = objc_opt_respondsToSelector();

    if (v34)
    {
      delegate5 = [(CNAutocompleteResultsTableViewController *)self delegate];
      [delegate5 autocompleteResultsController:self didCollapseSelectedRecipient:v30];
    }

    v36 = v48;
    if ((v49 & [MEMORY[0x1E69DCBB8] isInHardwareKeyboardMode]) == 1)
    {
      [(CNAutocompleteResultsTableViewController *)self selectRowAtIndexPath:v6];
    }
  }

  else
  {
    v37 = objc_opt_respondsToSelector();

    v36 = v48;
    if (v37)
    {
      delegate6 = [(CNAutocompleteResultsTableViewController *)self delegate];
      [delegate6 autocompleteResultsController:self didExpandSelectedRecipient:v30];
    }

    [MEMORY[0x1E69DCBB8] isInHardwareKeyboardMode];
  }

  if (v36)
  {
    [(CNAutocompleteResultsTableViewController *)self updateBackgroundAndSeparatorsForCell:v36 atIndexPath:v6];
  }

  if ([v6 row] >= 1)
  {
    v39 = MEMORY[0x1E696AC88];
    v40 = [v6 row];
    if (v40 <= 1)
    {
      v41 = 1;
    }

    else
    {
      v41 = v40;
    }

    v42 = [v39 indexPathForRow:v41 - 1 inSection:{objc_msgSend(v6, "section")}];
    tableView3 = [(CNAutocompleteResultsTableViewController *)self tableView];
    v44 = [tableView3 cellForRowAtIndexPath:v42];

    if (v44)
    {
      [(CNAutocompleteResultsTableViewController *)self updateBackgroundAndSeparatorsForCell:v44 atIndexPath:v42];
    }

    v36 = v48;
  }
}

void __79__CNAutocompleteResultsTableViewController_didToggleDisambiguationAtIndexPath___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = [*(a1 + 32) expandedIdentifiers];
  v4 = v3;
  v5 = *(a1 + 40);
  if (v2 == 1)
  {
    [v3 addObject:v5];

    v6 = *(a1 + 48);
    v7 = [*(a1 + 56) sortedChildren];
    [v6 insertObjects:v7 atIndexes:*(a1 + 64)];

    v8 = [*(a1 + 32) tableView];
    [v8 insertRowsAtIndexPaths:*(a1 + 72) withRowAnimation:3];
  }

  else
  {
    [v3 removeObject:v5];

    [*(a1 + 48) removeObjectsAtIndexes:*(a1 + 64)];
    v8 = [*(a1 + 32) tableView];
    [v8 deleteRowsAtIndexPaths:*(a1 + 72) withRowAnimation:3];
  }
}

- (BOOL)willProvideOverrideImageDataForCell:(id)cell completionBlock:(id)block
{
  cellCopy = cell;
  blockCopy = block;
  delegate = [(CNAutocompleteResultsTableViewController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(CNAutocompleteResultsTableViewController *)self delegate];
    recipient = [cellCopy recipient];
    v12 = [delegate2 autocompleteResultsController:self willOverrideImageDataForRecipient:recipient completion:blockCopy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (double)_tableViewHeaderHeight
{
  v2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  [v2 _bodyLeading];
  v4 = v3;

  return v4 * 0.444444444 + v4 * 2.44444444;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if (section < 1 || (-[_CNAutocompleteResultsTableViewModel sectionAtIndex:](self->_tableViewModel, "sectionAtIndex:", section), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 count], v7, !v8))
  {
    v10 = 0;
    goto LABEL_13;
  }

  if (section == 1)
  {
    v9 = @"FOUND_IN_MAIL";
  }

  else
  {
    if (section != 2)
    {
      v12 = 0;
      goto LABEL_10;
    }

    v9 = @"FOUND_ON_SERVERS";
  }

  v11 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:v9 value:&stru_1F3002C60 table:@"Localized"];

LABEL_10:
  v13 = MEMORY[0x1E695F058];
  v14 = *MEMORY[0x1E695F058];
  v15 = *(MEMORY[0x1E695F058] + 8);
  [viewCopy frame];
  v17 = v16;
  [(CNAutocompleteResultsTableViewController *)self _tableViewHeaderHeight];
  v10 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v14, v15, v17, v18}];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v10 setBackgroundColor:systemBackgroundColor];

  v20 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v21 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v14, v15, *(v13 + 16), *(v13 + 24)}];
  localizedUppercaseString = [v12 localizedUppercaseString];
  [v21 setText:localizedUppercaseString];

  [v21 setFont:v20];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v21 setTextColor:secondaryLabelColor];

  [v21 setAdjustsFontSizeToFitWidth:1];
  [v20 _bodyLeading];
  v25 = v24 * -0.444444444;
  [v10 sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  v27 = v26;
  [v10 frame];
  v29 = v28 - v27 + v25;
  [viewCopy layoutMargins];
  v31 = v30;
  [v10 frame];
  v33 = v32;
  [viewCopy layoutMargins];
  v35 = v33 - v34;
  [viewCopy layoutMargins];
  v37 = v35 - v36;
  if ([MEMORY[0x1E69DD250] userInterfaceLayoutDirectionForSemanticContentAttribute:{objc_msgSend(viewCopy, "semanticContentAttribute")}] == 1)
  {
    [viewCopy bounds];
    MaxX = CGRectGetMaxX(v42);
    v43.origin.x = v31;
    v43.origin.y = v29;
    v43.size.width = v37;
    v43.size.height = v27;
    v39 = MaxX - CGRectGetWidth(v43);
    v44.origin.x = v31;
    v44.origin.y = v29;
    v44.size.width = v37;
    v44.size.height = v27;
    v31 = v39 - CGRectGetMinX(v44);
  }

  [v21 setFrame:{v31, v29, v37, v27}];
  [v10 addSubview:v21];

LABEL_13:

  return v10;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if (section && (-[_CNAutocompleteResultsTableViewModel sectionAtIndex:](self->_tableViewModel, "sectionAtIndex:", section), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 count], v7, v8))
  {
    [(CNAutocompleteResultsTableViewController *)self _tableViewHeaderHeight];
    v10 = v9;
  }

  else
  {
    v10 = 2.22507386e-308;
  }

  return v10;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(_CNAutocompleteResultsTableViewModel *)self->_tableViewModel objectAtIndexedSubscript:section];
  v5 = [v4 count];

  return v5;
}

- (void)viewLayoutMarginsDidChange
{
  v18 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = CNAutocompleteResultsTableViewController;
  [(CNAutocompleteResultsTableViewController *)&v16 viewLayoutMarginsDidChange];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  tableView = [(CNAutocompleteResultsTableViewController *)self tableView];
  indexPathsForVisibleRows = [tableView indexPathsForVisibleRows];

  v5 = [indexPathsForVisibleRows countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(indexPathsForVisibleRows);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        tableView2 = [(CNAutocompleteResultsTableViewController *)self tableView];
        v11 = [tableView2 cellForRowAtIndexPath:v9];

        if (v11)
        {
          [(CNAutocompleteResultsTableViewController *)self updateBackgroundAndSeparatorsForCell:v11 atIndexPath:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [indexPathsForVisibleRows countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  pathCopy = path;
  [(CNAutocompleteResultsTableViewController *)self updateBackgroundAndSeparatorsForCell:cell atIndexPath:?];
  delegate = [(CNAutocompleteResultsTableViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CNAutocompleteResultsTableViewController *)self _recipientAtIndexPath:pathCopy];
    delegate2 = [(CNAutocompleteResultsTableViewController *)self delegate];
    [delegate2 autocompleteResultsController:self willDisplayRowForRecipient:v9];
  }
}

- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path
{
  viewCopy = view;
  cellCopy = cell;
  pathCopy = path;
  if (!self->_ignoreDidEndDisplayingCell)
  {
    delegate = [(CNAutocompleteResultsTableViewController *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      [(CNAutocompleteResultsTableViewController *)self callEndDisplayingRowForRecipientIndex:pathCopy];
    }
  }
}

- (void)callEndDisplayingRowForRecipientIndex:(id)index
{
  v4 = [(CNAutocompleteResultsTableViewController *)self _recipientAtIndexPath:index];
  if (v4)
  {
    delegate = [(CNAutocompleteResultsTableViewController *)self delegate];
    [delegate autocompleteResultsController:self didEndDisplayingRowForRecipient:v4];
  }

  else
  {
    v6 = [objc_opt_class() log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CNAutocompleteResultsTableViewController callEndDisplayingRowForRecipientIndex:v6];
    }
  }
}

+ (BOOL)shouldUseTransparentCell
{
  v6[2] = *MEMORY[0x1E69E9840];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  v6[0] = @"com.apple.siri";
  v6[1] = @"com.apple.Spotlight";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  LOBYTE(mainBundle) = [v4 containsObject:bundleIdentifier];

  return mainBundle;
}

- (void)updateBackgroundAndSeparatorsForCell:(id)cell atIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  recipient = [cellCopy recipient];
  v45 = [(CNAutocompleteResultsTableViewController *)self recipientIsExpandedParent:recipient];
  v47 = recipient;
  v11 = [(CNAutocompleteResultsTableViewController *)self recipientIsExpandedChild:recipient];
  secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  quaternaryLabelColor = [MEMORY[0x1E69DC888] quaternaryLabelColor];
  view = [(CNAutocompleteResultsTableViewController *)self view];
  backgroundColor = [view backgroundColor];
  if (!backgroundColor)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    if (!clearColor)
    {
      v14 = 0;
      v43 = 0;
LABEL_7:
      shouldUseTransparentCell = [objc_opt_class() shouldUseTransparentCell];
      if (!v14)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  view2 = [(CNAutocompleteResultsTableViewController *)self view];
  backgroundColor2 = [view2 backgroundColor];
  clearColor2 = [MEMORY[0x1E69DC888] clearColor];
  if ([backgroundColor2 isEqual:clearColor2])
  {
    v14 = 1;
    goto LABEL_7;
  }

  shouldUseTransparentCell = 0;
LABEL_8:

LABEL_9:
  if (!backgroundColor)
  {

    v16 = secondarySystemBackgroundColor;
    if (shouldUseTransparentCell)
    {
      goto LABEL_11;
    }

LABEL_13:
    v19 = quaternaryLabelColor;
    v20 = v45;
    if (v11)
    {
      [cellCopy setBackgroundColor:v16];
    }

    else
    {
      view3 = [(CNAutocompleteResultsTableViewController *)self view];
      backgroundColor3 = [view3 backgroundColor];
      [cellCopy setBackgroundColor:backgroundColor3];
    }

    goto LABEL_16;
  }

  v16 = secondarySystemBackgroundColor;
  if (!shouldUseTransparentCell)
  {
    goto LABEL_13;
  }

LABEL_11:
  clearColor3 = [MEMORY[0x1E69DC888] clearColor];
  backgroundView = [cellCopy backgroundView];
  [backgroundView setBackgroundColor:clearColor3];

  v19 = quaternaryLabelColor;
  v20 = v45;
LABEL_16:
  if (v20)
  {
    v23 = v19;
  }

  else
  {
    v23 = 0;
  }

  contentView = [cellCopy contentView];
  [contentView setBackgroundColor:v23];

  v25 = MEMORY[0x1E696AC88];
  view4 = [pathCopy row];
  section = [pathCopy section];

  v28 = [v25 indexPathForRow:view4 + 1 inSection:section];
  v29 = [(CNAutocompleteResultsTableViewController *)self _recipientAtIndexPath:v28];

  if (v11)
  {
    v30 = ![(CNAutocompleteResultsTableViewController *)self recipientIsExpandedChild:v29];
  }

  else
  {
    LOBYTE(v30) = 0;
  }

  v31 = [(CNAutocompleteResultsTableViewController *)self recipientIsExpandedParent:v29];
  if ((v31 | v30))
  {
    v32 = *MEMORY[0x1E69DDCE0];
    v33 = *(MEMORY[0x1E69DDCE0] + 8);
    v34 = *(MEMORY[0x1E69DDCE0] + 16);
    v35 = *(MEMORY[0x1E69DDCE0] + 24);
    v36 = cellCopy;
  }

  else
  {
    v35 = *MEMORY[0x1E69DE3D0];
    view4 = [(CNAutocompleteResultsTableViewController *)self view];
    [view4 layoutMargins];
    v38 = v37;
    [objc_opt_class() additionalSeparatorInset];
    v36 = cellCopy;
    v33 = v38 + v39;
    v34 = v35;
    v32 = v35;
  }

  [v36 setSeparatorInset:{v32, v33, v34, v35}];
  if (((v31 | v30) & 1) == 0)
  {
  }

  if (v31 || v20)
  {
    clearColor4 = [MEMORY[0x1E69DC888] clearColor];
    [cellCopy setSeparatorColor:clearColor4];
  }

  else
  {
    clearColor4 = [(CNAutocompleteResultsTableViewController *)self tableView];
    separatorColor = [clearColor4 separatorColor];
    [cellCopy setSeparatorColor:separatorColor];
  }
}

- (BOOL)recipientIsExpandedParent:(id)parent
{
  parentCopy = parent;
  if ([(CNAutocompleteResultsTableViewController *)self recipientIsExpanded:parentCopy])
  {
    children = [parentCopy children];
    v6 = [children count] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)recipientIsExpandedChild:(id)child
{
  childCopy = child;
  if ([childCopy isMemberOfGroup])
  {
    v5 = 1;
  }

  else if ([(CNAutocompleteResultsTableViewController *)self recipientIsExpanded:childCopy])
  {
    children = [childCopy children];
    v5 = [children count] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)recipientIsExpanded:(id)expanded
{
  expandedCopy = expanded;
  expandedIdentifiers = [(CNAutocompleteResultsTableViewController *)self expandedIdentifiers];
  v6 = [(CNAutocompleteResultsTableViewController *)self unificationIdentifierForRecipient:expandedCopy];

  LOBYTE(expandedCopy) = [expandedIdentifiers containsObject:v6];
  return expandedCopy;
}

- (BOOL)recipientIsDisambiguationRecipient:(id)recipient
{
  recipientCopy = recipient;
  if ([(CNAutocompleteResultsTableViewController *)self recipientIsExpanded:recipientCopy])
  {
    children = [recipientCopy children];
    if ([children count])
    {
      LOBYTE(v6) = 0;
    }

    else
    {
      v6 = [recipientCopy isMemberOfGroup] ^ 1;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(CNAutocompleteResultsTableViewController *)self _recipientAtIndexPath:pathCopy];
  v9 = [(CNAutocompleteResultsTableViewController *)self recipientIsExpanded:v8];
  if ([(CNAutocompleteResultsTableViewController *)self recipientIsDisambiguationRecipient:v8])
  {
    v10 = +[CNAutocompleteDisambiguatingTableViewCell identifier];
    v11 = [viewCopy dequeueReusableCellWithIdentifier:v10];

    if (!v11)
    {
      v12 = [CNAutocompleteDisambiguatingTableViewCell alloc];
      v13 = +[CNAutocompleteDisambiguatingTableViewCell identifier];
      v11 = [(CNAutocompleteDisambiguatingTableViewCell *)v12 initWithStyle:0 reuseIdentifier:v13];
    }

    address = [v8 address];
    v15 = [(CNAutocompleteResultsTableViewController *)self _unifiedRecipientForRecipientAtIndexPath:pathCopy];
    address2 = [v15 address];
    -[CNAutocompleteDisambiguatingTableViewCell setCheckmarkVisible:](v11, "setCheckmarkVisible:", [address isEqualToString:address2]);

LABEL_22:
    goto LABEL_31;
  }

  if ([v8 isMemberOfGroup])
  {
    v17 = +[CNAutocompleteGroupExpansionTableViewCell identifier];
    v11 = [viewCopy dequeueReusableCellWithIdentifier:v17];

    if (!v11)
    {
      v18 = [CNAutocompleteGroupExpansionTableViewCell alloc];
      v19 = +[CNAutocompleteGroupExpansionTableViewCell identifier];
      v11 = [(CNAutocompleteGroupExpansionTableViewCell *)v18 initWithStyle:0 reuseIdentifier:v19];
    }

    if ([(CNAutocompleteResultsTableViewController *)self supportsInfoButton])
    {
      v20 = [(CNAutocompleteResultsTableViewController *)self shouldHideInfoButton]^ 1;
    }

    else
    {
      v20 = 0;
    }

    [(CNAutocompleteDisambiguatingTableViewCell *)v11 setActionType:v20 animated:0];
    [(CNAutocompleteDisambiguatingTableViewCell *)v11 setDelegate:self];
    address = [(CNAutocompleteResultsTableViewController *)self sharedAvatarViewControllerSettings];
    [(CNAutocompleteDisambiguatingTableViewCell *)v11 setupAvatarViewControllerWithSettings:address];
    goto LABEL_22;
  }

  v21 = +[CNComposeRecipientTableViewCell identifier];
  v11 = [viewCopy dequeueReusableCellWithIdentifier:v21];

  if (!v11)
  {
    v22 = [CNComposeRecipientTableViewCell alloc];
    v23 = +[CNComposeRecipientTableViewCell identifier];
    v11 = [(CNComposeRecipientTableViewCell *)v22 initWithStyle:0 reuseIdentifier:v23];
  }

  [(CNAutocompleteDisambiguatingTableViewCell *)v11 setDelegate:self];
  sharedAvatarViewControllerSettings = [(CNAutocompleteResultsTableViewController *)self sharedAvatarViewControllerSettings];
  [(CNAutocompleteDisambiguatingTableViewCell *)v11 setupAvatarViewControllerWithSettings:sharedAvatarViewControllerSettings];

  if (-[CNAutocompleteResultsTableViewController inDisambiguationMode](self, "inDisambiguationMode") && ![v8 isGroup] || (objc_msgSend(v8, "isMemberOfGroup") & 1) != 0)
  {
LABEL_25:
    v25 = 1;
    goto LABEL_26;
  }

  if (-[CNAutocompleteResultsTableViewController inDisambiguationMode](self, "inDisambiguationMode") || ![v8 showsChevronButton])
  {
    if (([v8 isSuggestedRecipient] & 1) == 0 && (objc_msgSend(v8, "isRemovableFromSearchResults") & 1) == 0)
    {
      if ([v8 kind] == 6 || objc_msgSend(v8, "kind") == 7)
      {
        v25 = 4;
      }

      else
      {
        v25 = 0;
      }

      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (v9)
  {
    v25 = 3;
  }

  else
  {
    v25 = 2;
  }

LABEL_26:
  if ((![(CNAutocompleteResultsTableViewController *)self supportsInfoButton]|| [(CNAutocompleteResultsTableViewController *)self shouldHideInfoButton]) && v25 == 1)
  {
    v25 = 0;
  }

  [(CNAutocompleteDisambiguatingTableViewCell *)v11 setActionType:v25 animated:0];
LABEL_31:
  [(CNAutocompleteDisambiguatingTableViewCell *)v11 setRecipient:v8];
  [(CNComposeTableViewCell *)v11 setLabelColor:0];
  address3 = [v8 address];
  if (address3 && (v27 = address3, [(CNAutocompleteResultsTableViewController *)self unificationIdentifierForRecipient:v8], v28 = objc_claimAutoreleasedReturnValue(), v29 = v28 != 0 && v9, v28, v27, v29) || ![(CNAutocompleteResultsTableViewController *)self updatePreferredRecipientForCell:v11 isInvalidation:0])
  {
    [(CNAutocompleteResultsTableViewController *)self updateLabelColorForCell:v11];
  }

  [(CNAutocompleteResultsTableViewController *)self trailingButtonMidlineInsetFromLayoutMargin];
  [(CNComposeTableViewCell *)v11 setTrailingButtonMidlineInsetFromLayoutMargin:?];

  return v11;
}

- (void)setTintColor:(id)color forRecipient:(id)recipient
{
  colorCopy = color;
  v6 = [(CNAutocompleteResultsTableViewController *)self _indexPathForRecipient:recipient];
  tableView = [(CNAutocompleteResultsTableViewController *)self tableView];
  v8 = [tableView cellForRowAtIndexPath:v6];

  if (v8)
  {
    [v8 setLabelColor:colorCopy];
  }
}

- (void)setPreferredRecipient:(id)recipient forRecipient:(id)forRecipient
{
  recipientCopy = recipient;
  v6 = [(CNAutocompleteResultsTableViewController *)self _indexPathForRecipient:forRecipient];
  tableView = [(CNAutocompleteResultsTableViewController *)self tableView];
  v8 = [tableView cellForRowAtIndexPath:v6];

  if (v8)
  {
    recipient = [v8 recipient];
    if (([recipient isGroup] & 1) == 0)
    {
      children = [recipient children];
      v11 = [children count];

      if (recipientCopy)
      {
        if (v11 >= 2)
        {
          [(CNAutocompleteResultsTableViewController *)self updateCell:v8 withPreferredRecipient:recipientCopy isInvalidation:1];
        }
      }
    }
  }
}

- (void)invalidateAddressTintColors
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  tableView = [(CNAutocompleteResultsTableViewController *)self tableView];
  visibleCells = [tableView visibleCells];

  v5 = [visibleCells countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(visibleCells);
        }

        [(CNAutocompleteResultsTableViewController *)self updateLabelColorForCell:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [visibleCells countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)invalidatePreferredRecipients
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  tableView = [(CNAutocompleteResultsTableViewController *)self tableView];
  visibleCells = [tableView visibleCells];

  v5 = [visibleCells countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(visibleCells);
        }

        [(CNAutocompleteResultsTableViewController *)self updatePreferredRecipientForCell:*(*(&v9 + 1) + 8 * v8++) isInvalidation:1];
      }

      while (v6 != v8);
      v6 = [visibleCells countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

+ (void)dispatchMainIfNecessary:(id)necessary
{
  v3 = MEMORY[0x1E696AF00];
  block = necessary;
  currentThread = [v3 currentThread];
  isMainThread = [currentThread isMainThread];

  if (isMainThread)
  {
    block[2]();
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)updateLabelColorForCell:(id)cell
{
  cellCopy = cell;
  recipient = [cellCopy recipient];
  if ([recipient kind] == 6 || objc_msgSend(recipient, "kind") == 7)
  {
    systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
    [cellCopy setLabelColor:systemRedColor];
  }

  else
  {
    delegate = [(CNAutocompleteResultsTableViewController *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate2 = [(CNAutocompleteResultsTableViewController *)self delegate];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __68__CNAutocompleteResultsTableViewController_updateLabelColorForCell___block_invoke;
      v10[3] = &unk_1E7CD1DE0;
      v10[4] = self;
      v11 = recipient;
      v12 = cellCopy;
      [delegate2 autocompleteResultsController:self tintColorForRecipient:v11 completion:v10];
    }
  }
}

void __68__CNAutocompleteResultsTableViewController_updateLabelColorForCell___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__CNAutocompleteResultsTableViewController_updateLabelColorForCell___block_invoke_2;
  v6[3] = &unk_1E7CD1DB8;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = v3;
  v5 = v3;
  [v4 dispatchMainIfNecessary:v6];
}

void __68__CNAutocompleteResultsTableViewController_updateLabelColorForCell___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) recipient];
  LODWORD(v2) = [v2 isEqual:v3];

  if (v2)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);

    [v4 setLabelColor:v5];
  }
}

- (BOOL)updatePreferredRecipientForCell:(id)cell isInvalidation:(BOOL)invalidation
{
  invalidationCopy = invalidation;
  cellCopy = cell;
  recipient = [cellCopy recipient];
  if (([recipient isGroup] & 1) == 0)
  {
    children = [recipient children];
    v9 = [children count];

    if (v9 >= 2)
    {
      delegate = [(CNAutocompleteResultsTableViewController *)self delegate];
      v11 = objc_opt_respondsToSelector();

      delegate2 = [(CNAutocompleteResultsTableViewController *)self delegate];
      v13 = delegate2;
      if (v11)
      {
        delegate3 = [delegate2 autocompleteResultsController:self preferredRecipientForRecipient:recipient];

        if (recipient == delegate3)
        {
          v15 = 0;
        }

        else
        {
          delegate3 = delegate3;
          v15 = delegate3;
        }

        goto LABEL_11;
      }

      v16 = objc_opt_respondsToSelector();

      if (v16)
      {
        delegate3 = [(CNAutocompleteResultsTableViewController *)self delegate];
        children2 = [recipient children];
        v15 = [delegate3 autocompleteResultsController:self preferredRecipientForRecipients:children2];

LABEL_11:
        v18 = [(CNAutocompleteResultsTableViewController *)self updateCell:cellCopy withPreferredRecipient:v15 isInvalidation:invalidationCopy];

        goto LABEL_9;
      }
    }
  }

  v18 = 0;
LABEL_9:

  return v18;
}

- (BOOL)updateCell:(id)cell withPreferredRecipient:(id)recipient isInvalidation:(BOOL)invalidation
{
  invalidationCopy = invalidation;
  v44 = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  recipientCopy = recipient;
  recipient = [cellCopy recipient];
  children = [recipient children];
  v12 = [children mutableCopy];

  v13 = [v12 containsObject:recipientCopy];
  if (v13)
  {
    [v12 removeObject:recipientCopy];
    [v12 _cn_insertNonNilObject:recipientCopy atIndex:0];
    v14 = [[CNUnifiedComposeRecipient alloc] initWithChildren:v12 defaultChild:recipientCopy];
    v15 = [(CNAutocompleteResultsTableViewController *)self _indexPathForRecipient:recipient];
    v16 = -[_CNAutocompleteResultsTableViewModel sectionAtIndex:](self->_tableViewModel, "sectionAtIndex:", [v15 section]);
    [v16 replaceObjectAtIndex:objc_msgSend(v15 withObject:{"row"), v14}];

    [cellCopy setRecipient:v14];
    [(CNAutocompleteResultsTableViewController *)self updateLabelColorForCell:cellCopy];
    if ([(CNAutocompleteResultsTableViewController *)self hasPerformedRecipientExpansion]&& invalidationCopy)
    {
      v31 = v15;
      v32 = v14;
      v33 = v12;
      v34 = v13;
      v35 = recipient;
      v36 = cellCopy;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      tableView = [(CNAutocompleteResultsTableViewController *)self tableView];
      indexPathsForVisibleRows = [tableView indexPathsForVisibleRows];

      obj = indexPathsForVisibleRows;
      v19 = [indexPathsForVisibleRows countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (!v19)
      {
        goto LABEL_19;
      }

      v20 = v19;
      v21 = *v40;
      while (1)
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v40 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v39 + 1) + 8 * i);
          v24 = [(CNAutocompleteResultsTableViewController *)self _recipientAtIndexPath:v23];
          if ([(CNAutocompleteResultsTableViewController *)self shouldShowCheckmarkForRecipient:v24 preferredRecipient:recipientCopy])
          {
            tableView2 = [(CNAutocompleteResultsTableViewController *)self tableView];
            v26 = [tableView2 cellForRowAtIndexPath:v23];

            address = [v24 address];
            if (address || ([recipientCopy address], (v37 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              address2 = [v24 address];
              address3 = [recipientCopy address];
              [v26 setCheckmarkVisible:{objc_msgSend(address2, "isEqual:", address3)}];

              if (!address)
              {
LABEL_15:
              }

              goto LABEL_17;
            }

            [v26 setCheckmarkVisible:1];
            v37 = 0;
            goto LABEL_15;
          }

LABEL_17:
        }

        v20 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
        if (!v20)
        {
LABEL_19:

          recipient = v35;
          cellCopy = v36;
          LOBYTE(v13) = v34;
          v14 = v32;
          v12 = v33;
          v15 = v31;
          break;
        }
      }
    }
  }

  return v13;
}

- (BOOL)shouldShowCheckmarkForRecipient:(id)recipient preferredRecipient:(id)preferredRecipient
{
  recipientCopy = recipient;
  preferredRecipientCopy = preferredRecipient;
  tableView = [(CNAutocompleteResultsTableViewController *)self tableView];
  isUserInteractionEnabled = [tableView isUserInteractionEnabled];

  if (isUserInteractionEnabled)
  {
    if (([recipientCopy isMemberOfGroup] & 1) == 0)
    {
      children = [recipientCopy children];
      v12 = [children count];

      if (!v12)
      {
        contact = [recipientCopy contact];
        identifier = [contact identifier];
        if (identifier || ([preferredRecipientCopy contact], v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "identifier"), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          contact2 = [recipientCopy contact];
          identifier2 = [contact2 identifier];
          contact3 = [preferredRecipientCopy contact];
          identifier3 = [contact3 identifier];
          v13 = [identifier2 isEqual:identifier3];

          if (identifier)
          {
LABEL_12:

            goto LABEL_5;
          }
        }

        else
        {
          v13 = 1;
        }

        goto LABEL_12;
      }
    }
  }

  v13 = 0;
LABEL_5:

  return v13;
}

- (void)didTapInfoButtonForCell:(id)cell
{
  recipient = [cell recipient];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained autocompleteResultsController:self didRequestInfoAboutRecipient:recipient];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  [(CNAutocompleteResultsTableViewController *)self _selectSearchResultsRecipientAtIndexPath:pathCopy];
}

- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path
{
  v21[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  delegate = [(CNAutocompleteResultsTableViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(CNAutocompleteResultsTableViewController *)self _recipientAtIndexPath:pathCopy];
    if ([v8 isRemovableFromSearchResults])
    {
      v9 = MEMORY[0x1E69DC8E8];
      v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v11 = [v10 localizedStringForKey:@"REMOVE_TITLE" value:&stru_1F3002C60 table:@"Localized"];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __105__CNAutocompleteResultsTableViewController_tableView_trailingSwipeActionsConfigurationForRowAtIndexPath___block_invoke;
      v17[3] = &unk_1E7CD1E80;
      v18 = v8;
      selfCopy = self;
      v20 = pathCopy;
      v12 = [v9 contextualActionWithStyle:1 title:v11 handler:v17];

      v13 = MEMORY[0x1E69DCFC0];
      v21[0] = v12;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
      v15 = [v13 configurationWithActions:v14];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __105__CNAutocompleteResultsTableViewController_tableView_trailingSwipeActionsConfigurationForRowAtIndexPath___block_invoke(id *a1, uint64_t a2, void *a3, void *a4)
{
  v27 = a4;
  v6 = MEMORY[0x1E69DC650];
  v7 = MEMORY[0x1E696AAE8];
  v8 = a3;
  v9 = [v7 bundleForClass:objc_opt_class()];
  if ([a1[4] isGroup])
  {
    v10 = @"REMOVE_RECENT_GROUP_CONFIRM";
  }

  else
  {
    v10 = @"REMOVE_RECENT_CONFIRM";
  }

  v11 = [v9 localizedStringForKey:v10 value:&stru_1F3002C60 table:@"Localized"];
  v12 = [v6 alertControllerWithTitle:v11 message:0 preferredStyle:0];

  v13 = [v12 popoverPresentationController];
  [v13 setSourceView:v8];

  v14 = [v12 popoverPresentationController];
  [v14 setPermittedArrowDirections:3];

  v15 = MEMORY[0x1E69DC648];
  v16 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"REMOVE_RECENT" value:&stru_1F3002C60 table:@"Localized"];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __105__CNAutocompleteResultsTableViewController_tableView_trailingSwipeActionsConfigurationForRowAtIndexPath___block_invoke_2;
  v30[3] = &unk_1E7CD1E30;
  v26 = *(a1 + 2);
  v18 = v26.i64[0];
  v31 = vextq_s8(v26, v26, 8uLL);
  v32 = a1[6];
  v19 = v27;
  v33 = v19;
  v20 = [v15 actionWithTitle:v17 style:2 handler:v30];
  [v12 addAction:v20];

  v21 = MEMORY[0x1E69DC648];
  v22 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v23 = [v22 localizedStringForKey:@"CANCEL" value:&stru_1F3002C60 table:@"Localized"];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __105__CNAutocompleteResultsTableViewController_tableView_trailingSwipeActionsConfigurationForRowAtIndexPath___block_invoke_4;
  v28[3] = &unk_1E7CD1E58;
  v29 = v19;
  v24 = v19;
  v25 = [v21 actionWithTitle:v23 style:1 handler:v28];
  [v12 addAction:v25];

  [a1[5] presentViewController:v12 animated:1 completion:0];
}

void __105__CNAutocompleteResultsTableViewController_tableView_trailingSwipeActionsConfigurationForRowAtIndexPath___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 autocompleteResultsController:*(a1 + 32) didAskToRemoveRecipient:*(a1 + 40)];

  v3 = [*(*(a1 + 32) + 1064) sectionAtIndex:{objc_msgSend(*(a1 + 48), "section")}];
  [v3 removeObjectAtIndex:{objc_msgSend(*(a1 + 48), "row")}];

  v4 = [*(a1 + 32) tableView];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __105__CNAutocompleteResultsTableViewController_tableView_trailingSwipeActionsConfigurationForRowAtIndexPath___block_invoke_3;
  v8[3] = &unk_1E7CD1E08;
  v8[4] = *(a1 + 32);
  v9 = *(a1 + 48);
  [v4 performBatchUpdates:v8 completion:0];

  (*(*(a1 + 56) + 16))(*(a1 + 56), 1, v5, v6, v7);
}

void __105__CNAutocompleteResultsTableViewController_tableView_trailingSwipeActionsConfigurationForRowAtIndexPath___block_invoke_3(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) tableView];
  v4[0] = *(a1 + 40);
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  [v2 deleteRowsAtIndexPaths:v3 withRowAnimation:2];
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  delegate = [(CNAutocompleteResultsTableViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CNAutocompleteResultsTableViewController *)self delegate];
    [delegate2 autocompleteResultsControllerWillBeginToScroll:self];
  }
}

- (CNAutocompleteResultsTableViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end