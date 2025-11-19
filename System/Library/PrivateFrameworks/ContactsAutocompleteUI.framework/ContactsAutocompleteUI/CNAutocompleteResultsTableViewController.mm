@interface CNAutocompleteResultsTableViewController
+ (BOOL)avatarsAreHidden;
+ (BOOL)shouldUseTransparentCell;
+ (id)log;
+ (void)dispatchMainIfNecessary:(id)a3;
- (BOOL)attemptDisambiguationToggleAtSelectedRowIsExpand:(BOOL)a3;
- (BOOL)confirmSelectedRecipient;
- (BOOL)recipientIsDisambiguationRecipient:(id)a3;
- (BOOL)recipientIsExpanded:(id)a3;
- (BOOL)recipientIsExpandedChild:(id)a3;
- (BOOL)recipientIsExpandedParent:(id)a3;
- (BOOL)shouldShowCheckmarkForRecipient:(id)a3 preferredRecipient:(id)a4;
- (BOOL)updateCell:(id)a3 withPreferredRecipient:(id)a4 isInvalidation:(BOOL)a5;
- (BOOL)updatePreferredRecipientForCell:(id)a3 isInvalidation:(BOOL)a4;
- (BOOL)willProvideOverrideImageDataForCell:(id)a3 completionBlock:(id)a4;
- (CNAutocompleteResultsTableViewController)initWithOptions:(id)a3;
- (CNAutocompleteResultsTableViewController)initWithStyle:(int64_t)a3;
- (CNAutocompleteResultsTableViewControllerDelegate)delegate;
- (double)_tableViewHeaderHeight;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)_combinedResults;
- (id)_flattenedIndexPaths;
- (id)_indexPathForRecipient:(id)a3;
- (id)_parentRecipientForRecipientAtIndexPath:(id)a3;
- (id)_recipientAtIndexPath:(id)a3;
- (id)_unifiedRecipientForRecipientAtIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (id)unificationIdentifierForRecipient:(id)a3;
- (id)visibleRecipients;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_selectSearchResultsRecipientAtIndexPath:(id)a3;
- (void)_updateTableViewModelAnimated:(BOOL)a3;
- (void)callEndDisplayingRowForRecipientIndex:(id)a3;
- (void)didHover:(id)a3;
- (void)didTapDisambiguationChevronForCell:(id)a3;
- (void)didTapInfoButtonForCell:(id)a3;
- (void)didToggleDisambiguationAtIndexPath:(id)a3;
- (void)endDisplayOfVisibleCellsExcludingIndexPath:(id)a3;
- (void)invalidateAddressTintColors;
- (void)invalidatePreferredRecipients;
- (void)invalidateSearchResultRecipient:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)selectNextSearchResult;
- (void)selectPreviousSearchResult;
- (void)selectRowAtIndexPath:(id)a3;
- (void)setDeferTableViewUpdates:(BOOL)a3;
- (void)setPreferredRecipient:(id)a3 forRecipient:(id)a4;
- (void)setTintColor:(id)a3 forRecipient:(id)a4;
- (void)tableView:(id)a3 didEndDisplayingCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateBackgroundAndSeparatorsForCell:(id)a3 atIndexPath:(id)a4;
- (void)updateLabelColorForCell:(id)a3;
- (void)updateRecipients:(id)a3 disambiguatingRecipient:(id)a4;
- (void)viewLayoutMarginsDidChange;
@end

@implementation CNAutocompleteResultsTableViewController

+ (BOOL)avatarsAreHidden
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = [v2 preferredContentSizeCategory];
  v4 = UIContentSizeCategoryCompareToCategory(v3, *MEMORY[0x1E69DDC38]) == NSOrderedDescending;

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

- (CNAutocompleteResultsTableViewController)initWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(CNAutocompleteResultsTableViewController *)self init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [v4 copy];
    options = v6->_options;
    v6->_options = v7;
  }

  return v6;
}

- (CNAutocompleteResultsTableViewController)initWithStyle:(int64_t)a3
{
  v17.receiver = self;
  v17.super_class = CNAutocompleteResultsTableViewController;
  v4 = [(CNAutocompleteResultsTableViewController *)&v17 initWithStyle:?];
  if (v4)
  {
    v5 = [CNAutocompleteResultsTableView alloc];
    v6 = [(CNAutocompleteResultsTableView *)v5 initWithFrame:a3 style:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(CNAutocompleteResultsTableViewController *)v4 setTableView:v6];

    v7 = objc_opt_new();
    [(CNAutocompleteResultsTableViewController *)v4 setExpandedIdentifiers:v7];

    v8 = [(CNAutocompleteResultsTableViewController *)v4 view];
    [v8 setPreservesSuperviewLayoutMargins:1];

    [(CNAutocompleteResultsTableViewController *)v4 setShouldHideInfoButton:0];
    -[CNAutocompleteResultsTableViewController setSupportsInfoButton:](v4, "setSupportsInfoButton:", [MEMORY[0x1E6996770] isDevicePasscodeProtected] ^ 1);
    [(CNAutocompleteResultsTableViewController *)v4 setClearsSelectionOnViewWillAppear:0];
    v9 = [(CNAutocompleteResultsTableViewController *)v4 view];
    v10 = [objc_alloc(MEMORY[0x1E69DCAA0]) initWithTarget:v4 action:sel_didHover_];
    [v9 addGestureRecognizer:v10];

    v11 = MEMORY[0x1E695D0E0];
    v12 = CNAutocompleteSharedLocalOnlyContactStore();
    v13 = [v11 settingsWithContactStore:v12 cacheSize:50 threeDTouchEnabled:0];
    [(CNAutocompleteResultsTableViewController *)v4 setSharedAvatarViewControllerSettings:v13];

    v14 = [(CNAutocompleteResultsTableViewController *)v4 tableView];
    [v14 setAutoresizingMask:2];

    v15 = [(CNAutocompleteResultsTableViewController *)v4 tableView];
    [v15 setSectionHeaderTopPadding:0.0];
  }

  return v4;
}

- (void)didHover:(id)a3
{
  v14 = a3;
  v4 = [v14 state];
  if ((v4 - 1) > 1)
  {
    if (v4 == 3)
    {
      [(CNAutocompleteResultsTableViewController *)self selectRowAtIndexPath:0];
    }
  }

  else
  {
    v5 = [(CNAutocompleteResultsTableViewController *)self view];
    [v14 locationInView:v5];
    v7 = v6;
    v9 = v8;

    v10 = [(CNAutocompleteResultsTableViewController *)self tableView];
    v11 = [v10 indexPathForRowAtPoint:{v7, v9}];

    v12 = [(CNAutocompleteResultsTableViewController *)self tableView];
    v13 = [v12 cellForRowAtIndexPath:v11];

    if (!v13)
    {

      v11 = 0;
    }

    [(CNAutocompleteResultsTableViewController *)self selectRowAtIndexPath:v11];
  }
}

- (void)selectRowAtIndexPath:(id)a3
{
  v6 = a3;
  if (v6)
  {
    v4 = [(CNAutocompleteResultsTableViewController *)self tableView];
    [v4 scrollToRowAtIndexPath:v6 atScrollPosition:0 animated:1];
  }

  v5 = [(CNAutocompleteResultsTableViewController *)self tableView];
  [v5 selectRowAtIndexPath:v6 animated:0 scrollPosition:0];
}

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = CNAutocompleteResultsTableViewController;
  v4 = a3;
  [(CNAutocompleteResultsTableViewController *)&v9 traitCollectionDidChange:v4];
  v5 = [(CNAutocompleteResultsTableViewController *)self traitCollection:v9.receiver];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  LOBYTE(v4) = [v6 isEqual:v7];
  if ((v4 & 1) == 0)
  {
    v8 = [(CNAutocompleteResultsTableViewController *)self tableView];
    [v8 _purgeReuseQueues];
  }
}

- (void)_updateTableViewModelAnimated:(BOOL)a3
{
  v48 = *MEMORY[0x1E69E9840];
  if (self->_deferTableViewUpdates)
  {
    self->_tableViewNeedsReload = 1;
  }

  else
  {
    v4 = a3;
    v5 = [(CNAutocompleteResultsTableViewController *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if ((v6 & 1) != 0 && (-[CNAutocompleteResultsTableViewController tableView](self, "tableView"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isHidden], v7, (v8 & 1) == 0))
    {
      v9 = [(CNAutocompleteResultsTableViewController *)self visibleRecipients];
    }

    else
    {
      v9 = 0;
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
    if (v4)
    {
      v15 = [(_CNAutocompleteResultsTableViewModel *)v13 computeDiffForModel:v14];
      objc_storeStrong(&self->_tableViewModel, v14);
      v16 = [(CNAutocompleteResultsTableViewController *)self tableView];
      [v16 beginUpdates];

      v17 = [v15 insertedRows];
      v18 = [v17 count];

      if (v18)
      {
        v19 = [(CNAutocompleteResultsTableViewController *)self tableView];
        v20 = [v15 insertedRows];
        [v19 insertSections:v20 withRowAnimation:100];
      }

      v21 = [v15 deletedRows];
      v22 = [v21 count];

      if (v22)
      {
        v23 = [(CNAutocompleteResultsTableViewController *)self tableView];
        v24 = [v15 deletedRows];
        [v23 deleteSections:v24 withRowAnimation:3];
      }

      v25 = [v15 changedRows];
      v26 = [v25 count];

      if (v26)
      {
        v27 = [(CNAutocompleteResultsTableViewController *)self tableView];
        v28 = [v15 changedRows];
        [v27 reloadSections:v28 withRowAnimation:0];
      }

      v29 = [(CNAutocompleteResultsTableViewController *)self tableView];
      [v29 endUpdates];
    }

    else
    {
      objc_storeStrong(&self->_tableViewModel, v14);
      v15 = [(CNAutocompleteResultsTableViewController *)self tableView];
      [v15 reloadData];
    }

    self->_ignoreDidEndDisplayingCell = 0;
    if ((v6 & 1) != 0 && ((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
    {
      v30 = [(CNAutocompleteResultsTableViewController *)self visibleRecipients];
      v31 = [v30 _cn_indexBy:&__block_literal_global_80];

      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __74__CNAutocompleteResultsTableViewController__updateTableViewModelAnimated___block_invoke_2;
      v45[3] = &unk_1E7CD1BE0;
      v32 = v31;
      v46 = v32;
      v40 = v9;
      v33 = [v9 _cn_filter:v45];
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
            v39 = [(CNAutocompleteResultsTableViewController *)self delegate];
            [v39 autocompleteResultsController:self didEndDisplayingRowForRecipient:v38];

            ++v37;
          }

          while (v35 != v37);
          v35 = [v33 countByEnumeratingWithState:&v41 objects:v47 count:16];
        }

        while (v35);
      }

      v9 = v40;
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
  v3 = [(CNAutocompleteResultsTableViewController *)self tableView];
  v4 = [v3 indexPathsForVisibleRows];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__CNAutocompleteResultsTableViewController_visibleRecipients__block_invoke;
  v8[3] = &unk_1E7CD1CA0;
  v8[4] = self;
  v5 = [v4 _cn_map:v8];
  v6 = [v5 _cn_flatten];

  return v6;
}

- (void)setDeferTableViewUpdates:(BOOL)a3
{
  deferTableViewUpdates = self->_deferTableViewUpdates;
  if (deferTableViewUpdates == a3)
  {
    if (deferTableViewUpdates)
    {
      return;
    }
  }

  else
  {
    self->_deferTableViewUpdates = a3;
    if (a3)
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

- (id)unificationIdentifierForRecipient:(id)a3
{
  v3 = a3;
  if ([v3 isGroup])
  {
    v4 = [v3 address];
  }

  else
  {
    v5 = [v3 autocompleteResult];
    v6 = [v5 identifier];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [v3 address];
    }

    v4 = v8;
  }

  return v4;
}

- (void)updateRecipients:(id)a3 disambiguatingRecipient:(id)a4
{
  v69 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    [CNAutocompleteResultsTableViewController updateRecipients:disambiguatingRecipient:];
  }

  v8 = [v6 copy];
  recipients = self->_recipients;
  self->_recipients = v8;

  [(CNAutocompleteResultsTableViewController *)self setInDisambiguationMode:v7 != 0];
  [(CNAutocompleteResultsTableViewController *)self setHasPerformedRecipientExpansion:0];
  v10 = [(CNAutocompleteResultsTableViewController *)self expandedIdentifiers];
  [v10 removeAllObjects];

  v11 = [(CNAutocompleteResultsTableViewController *)self unificationIdentifierForRecipient:v7];
  if (v11)
  {
    v12 = [(CNAutocompleteResultsTableViewController *)self expandedIdentifiers];
    [v12 addObject:v11];
  }

  v45 = self;
  v50 = [MEMORY[0x1E695DF70] array];
  v13 = [MEMORY[0x1E695DF70] array];
  v49 = [MEMORY[0x1E695DF70] array];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v6;
  v14 = [obj countByEnumeratingWithState:&v62 objects:v68 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v63;
    v47 = v13;
    v48 = v7;
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
        v19 = [v18 isSuggestedRecipient];
        v20 = v13;
        if ((v19 & 1) == 0)
        {
          v21 = [v18 isDirectoryServerResult];
          v20 = v50;
          if (v21)
          {
            v20 = v49;
          }
        }

        v22 = v20;
        [v22 addObject:v18];
        if (v18 == v7)
        {
          v23 = [v18 sortedChildren];
          [v22 addObjectsFromArray:v23];
        }

        if ([v18 isGroup])
        {
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v24 = [v18 children];
          v25 = [v24 countByEnumeratingWithState:&v58 objects:v67 count:16];
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
                  objc_enumerationMutation(v24);
                }

                v29 = *(*(&v58 + 1) + 8 * i);
                v54 = 0u;
                v55 = 0u;
                v56 = 0u;
                v57 = 0u;
                v30 = [v29 children];
                v31 = [v30 arrayByAddingObject:v29];

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

              v26 = [v24 countByEnumeratingWithState:&v58 objects:v67 count:16];
            }

            while (v26);
          }

          v13 = v47;
          v7 = v48;
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

  objc_storeStrong(&v45->_searchResults, v50);
  objc_storeStrong(&v45->_suggestedSearchResults, v13);
  objc_storeStrong(&v45->_serverSearchResults, v49);
  v36 = [(CNAutocompleteResultsTableViewController *)v45 tableView];
  v37 = [v36 indexPathForSelectedRow];

  [(CNAutocompleteResultsTableViewController *)v45 _updateTableViewModelAnimated:0];
  v38 = [(CNAutocompleteResultsTableViewController *)v45 tableView];
  [v38 layoutIfNeeded];

  if (v37 && (-[_CNAutocompleteResultsTableViewModel objectAtIndexedSubscript:](v45->_tableViewModel, "objectAtIndexedSubscript:", [v37 section]), v39 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend(v39, "count"), v41 = objc_msgSend(v37, "row"), v39, v40 > v41))
  {
    [(CNAutocompleteResultsTableViewController *)v45 selectRowAtIndexPath:v37];
    v42 = v44;
  }

  else
  {
    v42 = v44;
    if ([MEMORY[0x1E69DCBB8] isInHardwareKeyboardMode])
    {
      tableViewModel = v45->_tableViewModel;
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __85__CNAutocompleteResultsTableViewController_updateRecipients_disambiguatingRecipient___block_invoke;
      v53[3] = &unk_1E7CD1CC8;
      v53[4] = v45;
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
  v12 = [MEMORY[0x1E695DF70] array];
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
  v7 = [(CNAutocompleteResultsTableViewController *)self _flattenedIndexPaths];
  if ([v7 count])
  {
    v3 = [(CNAutocompleteResultsTableViewController *)self tableView];
    v4 = [v3 indexPathForSelectedRow];

    if (v4)
    {
      v5 = [v7 indexOfObject:v4] + 1;
      if (v5 >= [v7 count])
      {
LABEL_7:

        goto LABEL_8;
      }

      v6 = [v7 objectAtIndex:v5];

      v4 = v6;
    }

    else
    {
      v4 = [v7 firstObject];
    }

    [(CNAutocompleteResultsTableViewController *)self selectRowAtIndexPath:v4];
    goto LABEL_7;
  }

LABEL_8:
}

- (void)selectPreviousSearchResult
{
  v7 = [(CNAutocompleteResultsTableViewController *)self _flattenedIndexPaths];
  if ([v7 count])
  {
    v3 = [(CNAutocompleteResultsTableViewController *)self tableView];
    v4 = [v3 indexPathForSelectedRow];

    if (v4)
    {
      v5 = [v7 indexOfObject:v4];
      if (!v5)
      {
LABEL_7:

        goto LABEL_8;
      }

      v6 = [v7 objectAtIndex:v5 - 1];

      v4 = v6;
    }

    else
    {
      v4 = [v7 lastObject];
    }

    [(CNAutocompleteResultsTableViewController *)self selectRowAtIndexPath:v4];
    goto LABEL_7;
  }

LABEL_8:
}

- (BOOL)confirmSelectedRecipient
{
  v3 = [(CNAutocompleteResultsTableViewController *)self tableView];
  v4 = [v3 indexPathForSelectedRow];

  if (v4 && (-[CNAutocompleteResultsTableViewController tableView](self, "tableView"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isHidden], v5, (v6 & 1) == 0))
  {
    [(CNAutocompleteResultsTableViewController *)self _selectSearchResultsRecipientAtIndexPath:v4];
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)attemptDisambiguationToggleAtSelectedRowIsExpand:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNAutocompleteResultsTableViewController *)self tableView];
  v6 = [v5 indexPathForSelectedRow];

  v7 = [(CNAutocompleteResultsTableViewController *)self tableView];
  v8 = [v7 cellForRowAtIndexPath:v6];

  if (!v3)
  {
    if (![v8 canCollapseRecipient])
    {
      goto LABEL_3;
    }

LABEL_5:
    [(CNAutocompleteResultsTableViewController *)self didToggleDisambiguationAtIndexPath:v6];
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

- (id)_indexPathForRecipient:(id)a3
{
  v4 = a3;
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
  v6 = v4;
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

- (id)_recipientAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(_CNAutocompleteResultsTableViewModel *)self->_tableViewModel numberOfSections];
  if (v5 <= [v4 section])
  {
    v9 = 0;
  }

  else
  {
    v6 = -[_CNAutocompleteResultsTableViewModel objectAtIndexedSubscript:](self->_tableViewModel, "objectAtIndexedSubscript:", [v4 section]);
    v7 = [v6 count];
    if (v7 <= [v4 row])
    {
      v9 = 0;
    }

    else
    {
      v8 = -[_CNAutocompleteResultsTableViewModel objectAtIndexedSubscript:](self->_tableViewModel, "objectAtIndexedSubscript:", [v4 section]);
      v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v4, "row")}];
    }
  }

  return v9;
}

- (id)_unifiedRecipientForRecipientAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(CNAutocompleteResultsTableViewController *)self _recipientAtIndexPath:v4];
  v6 = [v4 row];
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
      v8 = [MEMORY[0x1E696AC88] indexPathForRow:v7 inSection:{objc_msgSend(v4, "section")}];
      v9 = [(CNAutocompleteResultsTableViewController *)self _recipientAtIndexPath:v8];

      v10 = [(CNAutocompleteResultsTableViewController *)self unificationIdentifierForRecipient:v9];
      v11 = [(CNAutocompleteResultsTableViewController *)self unificationIdentifierForRecipient:v5];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
        v16 = 0;
        goto LABEL_10;
      }

      v13 = [v9 children];
      v14 = [v13 count];

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

- (id)_parentRecipientForRecipientAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(CNAutocompleteResultsTableViewController *)self _recipientAtIndexPath:v4];
  if ([v5 isMemberOfGroup])
  {
    v6 = [v4 row];
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
        v8 = [MEMORY[0x1E696AC88] indexPathForRow:v7 inSection:{objc_msgSend(v4, "section")}];
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
    v9 = [(CNAutocompleteResultsTableViewController *)self _unifiedRecipientForRecipientAtIndexPath:v4];
  }

  return v9;
}

- (void)_selectSearchResultsRecipientAtIndexPath:(id)a3
{
  v115 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v6 = [(CNAutocompleteResultsTableViewController *)self _recipientAtIndexPath:v4];
    v7 = v6;
    if (![(CNComposeRecipient *)v6 isGroup])
    {
      v8 = [(CNAutocompleteResultsTableViewController *)self _unifiedRecipientForRecipientAtIndexPath:v4];
      v9 = [v8 children];

      v7 = v6;
      if ([v9 count] >= 2)
      {
        v7 = [[CNUnifiedComposeRecipient alloc] initWithChildren:v9 defaultChild:v6];
      }

      v112 = 0u;
      v113 = 0u;
      v110 = 0u;
      v111 = 0u;
      v10 = [(CNUnifiedComposeRecipient *)v7 children];
      v11 = [v10 arrayByAddingObject:v7];

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
    v17 = [(CNAutocompleteResultsTableViewController *)self tableView];
    v18 = [v17 cellForRowAtIndexPath:v4];

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
        v21 = [(CNAutocompleteResultsTableViewController *)self tableView];
        [v21 setUserInteractionEnabled:0];

        v22 = [(CNAutocompleteResultsTableViewController *)self _unifiedRecipientForRecipientAtIndexPath:v4];
        v23 = [v22 children];
        v108[0] = MEMORY[0x1E69E9820];
        v108[1] = 3221225472;
        v108[2] = __85__CNAutocompleteResultsTableViewController__selectSearchResultsRecipientAtIndexPath___block_invoke;
        v108[3] = &unk_1E7CD1BE0;
        v109 = v22;
        v94 = v22;
        v24 = [v23 _cn_firstObjectPassingTest:v108];

        v25 = [(CNAutocompleteResultsTableViewController *)self _indexPathForRecipient:v24];
        v92 = v25;
        v93 = v24;
        if (v24)
        {
          v26 = v25;
          v27 = [(CNAutocompleteResultsTableViewController *)self tableView];
          v28 = [v27 cellForRowAtIndexPath:v26];

          v91 = v28;
          if (v28)
          {
            [v28 setCheckmarkVisible:0];
            v29 = [(CNAutocompleteResultsTableViewController *)self view];
            v30 = [v28 checkmarkView];
            [v30 bounds];
            v32 = v31;
            v34 = v33;
            v36 = v35;
            v38 = v37;
            v39 = [v28 checkmarkView];
            [v29 convertRect:v39 fromView:{v32, v34, v36, v38}];
            v41 = v40;
            MinY = v42;
            v45 = v44;
            v47 = v46;
          }

          else
          {
            v48 = v26;
            v49 = [(CNAutocompleteResultsTableViewController *)self view];
            v90 = [v19 checkmarkView];
            [v90 bounds];
            v51 = v50;
            v53 = v52;
            v55 = v54;
            v57 = v56;
            v58 = [v19 checkmarkView];
            [v49 convertRect:v58 fromView:{v51, v53, v55, v57}];
            v41 = v59;
            v45 = v60;
            v47 = v61;

            v29 = [(CNAutocompleteResultsTableViewController *)self tableView];
            [v29 rectForRowAtIndexPath:v48];
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

        v62 = [(CNAutocompleteResultsTableViewController *)self view];
        v63 = [v19 checkmarkView];
        [v63 bounds];
        v65 = v64;
        v67 = v66;
        v69 = v68;
        v71 = v70;
        v72 = [v19 checkmarkView];
        [v62 convertRect:v72 fromView:{v65, v67, v69, v71}];
        v74 = v73;
        v76 = v75;
        v78 = v77;
        v80 = v79;

        v81 = +[CNAutocompleteDisambiguatingTableViewCell createCheckmarkView];
        [v81 setFrame:{v41, MinY, v45, v47}];
        v82 = [(CNAutocompleteResultsTableViewController *)self view];
        [v82 addSubview:v81];

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
        v98 = self;
        v99 = WeakRetained;
        v100 = v7;
        v101 = v4;
        v89 = v103;
        [v88 _animateUsingDefaultTimingWithOptions:0 animations:v102 completion:v95];

        goto LABEL_39;
      }
    }

    else
    {
      v19 = 0;
    }

    [WeakRetained autocompleteResultsController:self didSelectRecipient:v7 atIndex:{objc_msgSend(v4, "row")}];
LABEL_39:
    [(CNAutocompleteResultsTableViewController *)self endDisplayOfVisibleCellsExcludingIndexPath:v4];
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

- (void)endDisplayOfVisibleCellsExcludingIndexPath:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CNAutocompleteResultsTableViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [(CNAutocompleteResultsTableViewController *)self tableView];
    v8 = [v7 indexPathsForVisibleRows];

    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v14 + 1) + 8 * i);
          if (([v13 isEqual:v4] & 1) == 0)
          {
            [(CNAutocompleteResultsTableViewController *)self callEndDisplayingRowForRecipientIndex:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }
}

- (void)invalidateSearchResultRecipient:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = [(CNAutocompleteResultsTableViewController *)self _indexPathForRecipient:a3];
  if ([v4 row] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [(CNAutocompleteResultsTableViewController *)self tableView];
    [v5 beginUpdates];

    v6 = [(CNAutocompleteResultsTableViewController *)self tableView];
    v10[0] = v4;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [v6 deleteRowsAtIndexPaths:v7 withRowAnimation:2];

    v8 = -[_CNAutocompleteResultsTableViewModel sectionAtIndex:](self->_tableViewModel, "sectionAtIndex:", [v4 section]);
    [v8 removeObjectAtIndex:{objc_msgSend(v4, "row")}];

    v9 = [(CNAutocompleteResultsTableViewController *)self tableView];
    [v9 endUpdates];
  }
}

- (void)didTapDisambiguationChevronForCell:(id)a3
{
  v4 = a3;
  v5 = [(CNAutocompleteResultsTableViewController *)self tableView];
  v7 = [v5 indexPathForCell:v4];

  v6 = v7;
  if (v7)
  {
    [(CNAutocompleteResultsTableViewController *)self didToggleDisambiguationAtIndexPath:v7];
    v6 = v7;
  }
}

- (void)didToggleDisambiguationAtIndexPath:(id)a3
{
  v4 = a3;
  [(CNAutocompleteResultsTableViewController *)self setHasPerformedRecipientExpansion:1];
  v5 = [(CNAutocompleteResultsTableViewController *)self _parentRecipientForRecipientAtIndexPath:v4];
  v6 = [(CNAutocompleteResultsTableViewController *)self _indexPathForRecipient:v5];
  v7 = [(CNAutocompleteResultsTableViewController *)self unificationIdentifierForRecipient:v5];
  v8 = [(CNAutocompleteResultsTableViewController *)self recipientIsExpanded:v5];
  v9 = [(CNAutocompleteResultsTableViewController *)self delegate];
  v49 = v8;
  v47 = v4;
  v45 = v7;
  if (v8)
  {
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(CNAutocompleteResultsTableViewController *)self delegate];
      [v11 autocompleteResultsController:self willCollapseSelectedRecipient:v5];
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
      v11 = [(CNAutocompleteResultsTableViewController *)self delegate];
      [v11 autocompleteResultsController:self willExpandSelectedRecipient:v5];
      v12 = 3;
      goto LABEL_6;
    }

    v12 = 3;
  }

LABEL_9:
  v14 = [(CNAutocompleteResultsTableViewController *)self tableView];
  v15 = [v14 cellForRowAtIndexPath:v6];

  v48 = v15;
  [v15 setActionType:v12 animated:1];
  v16 = [v6 row] + 1;
  v17 = [v5 children];
  v18 = [v17 count];

  v19 = [(CNAutocompleteResultsTableViewController *)self delegate];
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

  v28 = [(CNAutocompleteResultsTableViewController *)self tableView];
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
  [v28 performBatchUpdates:v51 completion:v50];

  v33 = [(CNAutocompleteResultsTableViewController *)self delegate];
  if (v49)
  {
    v34 = objc_opt_respondsToSelector();

    if (v34)
    {
      v35 = [(CNAutocompleteResultsTableViewController *)self delegate];
      [v35 autocompleteResultsController:self didCollapseSelectedRecipient:v30];
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
      v38 = [(CNAutocompleteResultsTableViewController *)self delegate];
      [v38 autocompleteResultsController:self didExpandSelectedRecipient:v30];
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
    v43 = [(CNAutocompleteResultsTableViewController *)self tableView];
    v44 = [v43 cellForRowAtIndexPath:v42];

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

- (BOOL)willProvideOverrideImageDataForCell:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CNAutocompleteResultsTableViewController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(CNAutocompleteResultsTableViewController *)self delegate];
    v11 = [v6 recipient];
    v12 = [v10 autocompleteResultsController:self willOverrideImageDataForRecipient:v11 completion:v7];
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

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 < 1 || (-[_CNAutocompleteResultsTableViewModel sectionAtIndex:](self->_tableViewModel, "sectionAtIndex:", a4), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 count], v7, !v8))
  {
    v10 = 0;
    goto LABEL_13;
  }

  if (a4 == 1)
  {
    v9 = @"FOUND_IN_MAIL";
  }

  else
  {
    if (a4 != 2)
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
  [v6 frame];
  v17 = v16;
  [(CNAutocompleteResultsTableViewController *)self _tableViewHeaderHeight];
  v10 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v14, v15, v17, v18}];
  v19 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v10 setBackgroundColor:v19];

  v20 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v21 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v14, v15, *(v13 + 16), *(v13 + 24)}];
  v22 = [v12 localizedUppercaseString];
  [v21 setText:v22];

  [v21 setFont:v20];
  v23 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v21 setTextColor:v23];

  [v21 setAdjustsFontSizeToFitWidth:1];
  [v20 _bodyLeading];
  v25 = v24 * -0.444444444;
  [v10 sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  v27 = v26;
  [v10 frame];
  v29 = v28 - v27 + v25;
  [v6 layoutMargins];
  v31 = v30;
  [v10 frame];
  v33 = v32;
  [v6 layoutMargins];
  v35 = v33 - v34;
  [v6 layoutMargins];
  v37 = v35 - v36;
  if ([MEMORY[0x1E69DD250] userInterfaceLayoutDirectionForSemanticContentAttribute:{objc_msgSend(v6, "semanticContentAttribute")}] == 1)
  {
    [v6 bounds];
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

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 && (-[_CNAutocompleteResultsTableViewModel sectionAtIndex:](self->_tableViewModel, "sectionAtIndex:", a4), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 count], v7, v8))
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

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(_CNAutocompleteResultsTableViewModel *)self->_tableViewModel objectAtIndexedSubscript:a4];
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
  v3 = [(CNAutocompleteResultsTableViewController *)self tableView];
  v4 = [v3 indexPathsForVisibleRows];

  v5 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = [(CNAutocompleteResultsTableViewController *)self tableView];
        v11 = [v10 cellForRowAtIndexPath:v9];

        if (v11)
        {
          [(CNAutocompleteResultsTableViewController *)self updateBackgroundAndSeparatorsForCell:v11 atIndexPath:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v11 = a5;
  [(CNAutocompleteResultsTableViewController *)self updateBackgroundAndSeparatorsForCell:a4 atIndexPath:?];
  v7 = [(CNAutocompleteResultsTableViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CNAutocompleteResultsTableViewController *)self _recipientAtIndexPath:v11];
    v10 = [(CNAutocompleteResultsTableViewController *)self delegate];
    [v10 autocompleteResultsController:self willDisplayRowForRecipient:v9];
  }
}

- (void)tableView:(id)a3 didEndDisplayingCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  if (!self->_ignoreDidEndDisplayingCell)
  {
    v10 = [(CNAutocompleteResultsTableViewController *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      [(CNAutocompleteResultsTableViewController *)self callEndDisplayingRowForRecipientIndex:v9];
    }
  }
}

- (void)callEndDisplayingRowForRecipientIndex:(id)a3
{
  v4 = [(CNAutocompleteResultsTableViewController *)self _recipientAtIndexPath:a3];
  if (v4)
  {
    v5 = [(CNAutocompleteResultsTableViewController *)self delegate];
    [v5 autocompleteResultsController:self didEndDisplayingRowForRecipient:v4];
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
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];

  v6[0] = @"com.apple.siri";
  v6[1] = @"com.apple.Spotlight";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  LOBYTE(v2) = [v4 containsObject:v3];

  return v2;
}

- (void)updateBackgroundAndSeparatorsForCell:(id)a3 atIndexPath:(id)a4
{
  v48 = a3;
  v9 = a4;
  v10 = [v48 recipient];
  v45 = [(CNAutocompleteResultsTableViewController *)self recipientIsExpandedParent:v10];
  v47 = v10;
  v11 = [(CNAutocompleteResultsTableViewController *)self recipientIsExpandedChild:v10];
  v44 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  v46 = [MEMORY[0x1E69DC888] quaternaryLabelColor];
  v12 = [(CNAutocompleteResultsTableViewController *)self view];
  v13 = [v12 backgroundColor];
  if (!v13)
  {
    v42 = [MEMORY[0x1E69DC888] clearColor];
    if (!v42)
    {
      v14 = 0;
      v43 = 0;
LABEL_7:
      v15 = [objc_opt_class() shouldUseTransparentCell];
      if (!v14)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  v4 = [(CNAutocompleteResultsTableViewController *)self view];
  v5 = [v4 backgroundColor];
  v6 = [MEMORY[0x1E69DC888] clearColor];
  if ([v5 isEqual:v6])
  {
    v14 = 1;
    goto LABEL_7;
  }

  v15 = 0;
LABEL_8:

LABEL_9:
  if (!v13)
  {

    v16 = v44;
    if (v15)
    {
      goto LABEL_11;
    }

LABEL_13:
    v19 = v46;
    v20 = v45;
    if (v11)
    {
      [v48 setBackgroundColor:v16];
    }

    else
    {
      v21 = [(CNAutocompleteResultsTableViewController *)self view];
      v22 = [v21 backgroundColor];
      [v48 setBackgroundColor:v22];
    }

    goto LABEL_16;
  }

  v16 = v44;
  if (!v15)
  {
    goto LABEL_13;
  }

LABEL_11:
  v17 = [MEMORY[0x1E69DC888] clearColor];
  v18 = [v48 backgroundView];
  [v18 setBackgroundColor:v17];

  v19 = v46;
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

  v24 = [v48 contentView];
  [v24 setBackgroundColor:v23];

  v25 = MEMORY[0x1E696AC88];
  v26 = [v9 row];
  v27 = [v9 section];

  v28 = [v25 indexPathForRow:v26 + 1 inSection:v27];
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
    v36 = v48;
  }

  else
  {
    v35 = *MEMORY[0x1E69DE3D0];
    v26 = [(CNAutocompleteResultsTableViewController *)self view];
    [v26 layoutMargins];
    v38 = v37;
    [objc_opt_class() additionalSeparatorInset];
    v36 = v48;
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
    v40 = [MEMORY[0x1E69DC888] clearColor];
    [v48 setSeparatorColor:v40];
  }

  else
  {
    v40 = [(CNAutocompleteResultsTableViewController *)self tableView];
    v41 = [v40 separatorColor];
    [v48 setSeparatorColor:v41];
  }
}

- (BOOL)recipientIsExpandedParent:(id)a3
{
  v4 = a3;
  if ([(CNAutocompleteResultsTableViewController *)self recipientIsExpanded:v4])
  {
    v5 = [v4 children];
    v6 = [v5 count] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)recipientIsExpandedChild:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfGroup])
  {
    v5 = 1;
  }

  else if ([(CNAutocompleteResultsTableViewController *)self recipientIsExpanded:v4])
  {
    v6 = [v4 children];
    v5 = [v6 count] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)recipientIsExpanded:(id)a3
{
  v4 = a3;
  v5 = [(CNAutocompleteResultsTableViewController *)self expandedIdentifiers];
  v6 = [(CNAutocompleteResultsTableViewController *)self unificationIdentifierForRecipient:v4];

  LOBYTE(v4) = [v5 containsObject:v6];
  return v4;
}

- (BOOL)recipientIsDisambiguationRecipient:(id)a3
{
  v4 = a3;
  if ([(CNAutocompleteResultsTableViewController *)self recipientIsExpanded:v4])
  {
    v5 = [v4 children];
    if ([v5 count])
    {
      LOBYTE(v6) = 0;
    }

    else
    {
      v6 = [v4 isMemberOfGroup] ^ 1;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CNAutocompleteResultsTableViewController *)self _recipientAtIndexPath:v7];
  v9 = [(CNAutocompleteResultsTableViewController *)self recipientIsExpanded:v8];
  if ([(CNAutocompleteResultsTableViewController *)self recipientIsDisambiguationRecipient:v8])
  {
    v10 = +[CNAutocompleteDisambiguatingTableViewCell identifier];
    v11 = [v6 dequeueReusableCellWithIdentifier:v10];

    if (!v11)
    {
      v12 = [CNAutocompleteDisambiguatingTableViewCell alloc];
      v13 = +[CNAutocompleteDisambiguatingTableViewCell identifier];
      v11 = [(CNAutocompleteDisambiguatingTableViewCell *)v12 initWithStyle:0 reuseIdentifier:v13];
    }

    v14 = [v8 address];
    v15 = [(CNAutocompleteResultsTableViewController *)self _unifiedRecipientForRecipientAtIndexPath:v7];
    v16 = [v15 address];
    -[CNAutocompleteDisambiguatingTableViewCell setCheckmarkVisible:](v11, "setCheckmarkVisible:", [v14 isEqualToString:v16]);

LABEL_22:
    goto LABEL_31;
  }

  if ([v8 isMemberOfGroup])
  {
    v17 = +[CNAutocompleteGroupExpansionTableViewCell identifier];
    v11 = [v6 dequeueReusableCellWithIdentifier:v17];

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
    v14 = [(CNAutocompleteResultsTableViewController *)self sharedAvatarViewControllerSettings];
    [(CNAutocompleteDisambiguatingTableViewCell *)v11 setupAvatarViewControllerWithSettings:v14];
    goto LABEL_22;
  }

  v21 = +[CNComposeRecipientTableViewCell identifier];
  v11 = [v6 dequeueReusableCellWithIdentifier:v21];

  if (!v11)
  {
    v22 = [CNComposeRecipientTableViewCell alloc];
    v23 = +[CNComposeRecipientTableViewCell identifier];
    v11 = [(CNComposeRecipientTableViewCell *)v22 initWithStyle:0 reuseIdentifier:v23];
  }

  [(CNAutocompleteDisambiguatingTableViewCell *)v11 setDelegate:self];
  v24 = [(CNAutocompleteResultsTableViewController *)self sharedAvatarViewControllerSettings];
  [(CNAutocompleteDisambiguatingTableViewCell *)v11 setupAvatarViewControllerWithSettings:v24];

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
  v26 = [v8 address];
  if (v26 && (v27 = v26, [(CNAutocompleteResultsTableViewController *)self unificationIdentifierForRecipient:v8], v28 = objc_claimAutoreleasedReturnValue(), v29 = v28 != 0 && v9, v28, v27, v29) || ![(CNAutocompleteResultsTableViewController *)self updatePreferredRecipientForCell:v11 isInvalidation:0])
  {
    [(CNAutocompleteResultsTableViewController *)self updateLabelColorForCell:v11];
  }

  [(CNAutocompleteResultsTableViewController *)self trailingButtonMidlineInsetFromLayoutMargin];
  [(CNComposeTableViewCell *)v11 setTrailingButtonMidlineInsetFromLayoutMargin:?];

  return v11;
}

- (void)setTintColor:(id)a3 forRecipient:(id)a4
{
  v9 = a3;
  v6 = [(CNAutocompleteResultsTableViewController *)self _indexPathForRecipient:a4];
  v7 = [(CNAutocompleteResultsTableViewController *)self tableView];
  v8 = [v7 cellForRowAtIndexPath:v6];

  if (v8)
  {
    [v8 setLabelColor:v9];
  }
}

- (void)setPreferredRecipient:(id)a3 forRecipient:(id)a4
{
  v12 = a3;
  v6 = [(CNAutocompleteResultsTableViewController *)self _indexPathForRecipient:a4];
  v7 = [(CNAutocompleteResultsTableViewController *)self tableView];
  v8 = [v7 cellForRowAtIndexPath:v6];

  if (v8)
  {
    v9 = [v8 recipient];
    if (([v9 isGroup] & 1) == 0)
    {
      v10 = [v9 children];
      v11 = [v10 count];

      if (v12)
      {
        if (v11 >= 2)
        {
          [(CNAutocompleteResultsTableViewController *)self updateCell:v8 withPreferredRecipient:v12 isInvalidation:1];
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
  v3 = [(CNAutocompleteResultsTableViewController *)self tableView];
  v4 = [v3 visibleCells];

  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [(CNAutocompleteResultsTableViewController *)self updateLabelColorForCell:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v3 = [(CNAutocompleteResultsTableViewController *)self tableView];
  v4 = [v3 visibleCells];

  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [(CNAutocompleteResultsTableViewController *)self updatePreferredRecipientForCell:*(*(&v9 + 1) + 8 * v8++) isInvalidation:1];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

+ (void)dispatchMainIfNecessary:(id)a3
{
  v3 = MEMORY[0x1E696AF00];
  block = a3;
  v4 = [v3 currentThread];
  v5 = [v4 isMainThread];

  if (v5)
  {
    block[2]();
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)updateLabelColorForCell:(id)a3
{
  v4 = a3;
  v5 = [v4 recipient];
  if ([v5 kind] == 6 || objc_msgSend(v5, "kind") == 7)
  {
    v6 = [MEMORY[0x1E69DC888] systemRedColor];
    [v4 setLabelColor:v6];
  }

  else
  {
    v7 = [(CNAutocompleteResultsTableViewController *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(CNAutocompleteResultsTableViewController *)self delegate];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __68__CNAutocompleteResultsTableViewController_updateLabelColorForCell___block_invoke;
      v10[3] = &unk_1E7CD1DE0;
      v10[4] = self;
      v11 = v5;
      v12 = v4;
      [v9 autocompleteResultsController:self tintColorForRecipient:v11 completion:v10];
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

- (BOOL)updatePreferredRecipientForCell:(id)a3 isInvalidation:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 recipient];
  if (([v7 isGroup] & 1) == 0)
  {
    v8 = [v7 children];
    v9 = [v8 count];

    if (v9 >= 2)
    {
      v10 = [(CNAutocompleteResultsTableViewController *)self delegate];
      v11 = objc_opt_respondsToSelector();

      v12 = [(CNAutocompleteResultsTableViewController *)self delegate];
      v13 = v12;
      if (v11)
      {
        v14 = [v12 autocompleteResultsController:self preferredRecipientForRecipient:v7];

        if (v7 == v14)
        {
          v15 = 0;
        }

        else
        {
          v14 = v14;
          v15 = v14;
        }

        goto LABEL_11;
      }

      v16 = objc_opt_respondsToSelector();

      if (v16)
      {
        v14 = [(CNAutocompleteResultsTableViewController *)self delegate];
        v17 = [v7 children];
        v15 = [v14 autocompleteResultsController:self preferredRecipientForRecipients:v17];

LABEL_11:
        v18 = [(CNAutocompleteResultsTableViewController *)self updateCell:v6 withPreferredRecipient:v15 isInvalidation:v4];

        goto LABEL_9;
      }
    }
  }

  v18 = 0;
LABEL_9:

  return v18;
}

- (BOOL)updateCell:(id)a3 withPreferredRecipient:(id)a4 isInvalidation:(BOOL)a5
{
  v5 = a5;
  v44 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [v8 recipient];
  v11 = [v10 children];
  v12 = [v11 mutableCopy];

  v13 = [v12 containsObject:v9];
  if (v13)
  {
    [v12 removeObject:v9];
    [v12 _cn_insertNonNilObject:v9 atIndex:0];
    v14 = [[CNUnifiedComposeRecipient alloc] initWithChildren:v12 defaultChild:v9];
    v15 = [(CNAutocompleteResultsTableViewController *)self _indexPathForRecipient:v10];
    v16 = -[_CNAutocompleteResultsTableViewModel sectionAtIndex:](self->_tableViewModel, "sectionAtIndex:", [v15 section]);
    [v16 replaceObjectAtIndex:objc_msgSend(v15 withObject:{"row"), v14}];

    [v8 setRecipient:v14];
    [(CNAutocompleteResultsTableViewController *)self updateLabelColorForCell:v8];
    if ([(CNAutocompleteResultsTableViewController *)self hasPerformedRecipientExpansion]&& v5)
    {
      v31 = v15;
      v32 = v14;
      v33 = v12;
      v34 = v13;
      v35 = v10;
      v36 = v8;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v17 = [(CNAutocompleteResultsTableViewController *)self tableView];
      v18 = [v17 indexPathsForVisibleRows];

      obj = v18;
      v19 = [v18 countByEnumeratingWithState:&v39 objects:v43 count:16];
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
          if ([(CNAutocompleteResultsTableViewController *)self shouldShowCheckmarkForRecipient:v24 preferredRecipient:v9])
          {
            v25 = [(CNAutocompleteResultsTableViewController *)self tableView];
            v26 = [v25 cellForRowAtIndexPath:v23];

            v27 = [v24 address];
            if (v27 || ([v9 address], (v37 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v28 = [v24 address];
              v29 = [v9 address];
              [v26 setCheckmarkVisible:{objc_msgSend(v28, "isEqual:", v29)}];

              if (!v27)
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

          v10 = v35;
          v8 = v36;
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

- (BOOL)shouldShowCheckmarkForRecipient:(id)a3 preferredRecipient:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(CNAutocompleteResultsTableViewController *)self tableView];
  v10 = [v9 isUserInteractionEnabled];

  if (v10)
  {
    if (([v7 isMemberOfGroup] & 1) == 0)
    {
      v11 = [v7 children];
      v12 = [v11 count];

      if (!v12)
      {
        v15 = [v7 contact];
        v16 = [v15 identifier];
        if (v16 || ([v8 contact], v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "identifier"), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v17 = [v7 contact];
          v18 = [v17 identifier];
          v19 = [v8 contact];
          v20 = [v19 identifier];
          v13 = [v18 isEqual:v20];

          if (v16)
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

- (void)didTapInfoButtonForCell:(id)a3
{
  v5 = [a3 recipient];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained autocompleteResultsController:self didRequestInfoAboutRecipient:v5];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:1];
  [(CNAutocompleteResultsTableViewController *)self _selectSearchResultsRecipientAtIndexPath:v6];
}

- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4
{
  v21[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(CNAutocompleteResultsTableViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(CNAutocompleteResultsTableViewController *)self _recipientAtIndexPath:v5];
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
      v19 = self;
      v20 = v5;
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

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = [(CNAutocompleteResultsTableViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CNAutocompleteResultsTableViewController *)self delegate];
    [v6 autocompleteResultsControllerWillBeginToScroll:self];
  }
}

- (CNAutocompleteResultsTableViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end