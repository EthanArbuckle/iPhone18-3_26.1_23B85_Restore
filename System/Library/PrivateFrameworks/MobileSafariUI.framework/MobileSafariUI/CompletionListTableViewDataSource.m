@interface CompletionListTableViewDataSource
- (CompletionItemActionHandler)actionHandler;
- (CompletionListTableViewDataSource)initWithTableView:(id)a3;
- (id)buildSnapshot;
- (id)completionItemAtIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForItem:(id)a4 atIndexPath:(id)a5;
- (void)reloadVisibleRows;
- (void)updateTableViewWithCompletionList:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)updateTableViewWithCompletionList:(id)a3 rowAnimation:(int64_t)a4 completion:(id)a5;
@end

@implementation CompletionListTableViewDataSource

- (CompletionListTableViewDataSource)initWithTableView:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = CompletionListTableViewDataSource;
  v6 = [(CompletionListTableViewDataSource *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tableView, a3);
    objc_initWeak(&location, v7);
    v8 = objc_alloc(MEMORY[0x277D75B60]);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __55__CompletionListTableViewDataSource_initWithTableView___block_invoke;
    v13[3] = &unk_2781D7358;
    objc_copyWeak(&v14, &location);
    v9 = [v8 initWithTableView:v5 cellProvider:v13];
    dataSource = v7->_dataSource;
    v7->_dataSource = v9;

    v11 = v7;
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v7;
}

id __55__CompletionListTableViewDataSource_initWithTableView___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [WeakRetained tableView:v9 cellForItem:v7 atIndexPath:v8];

  return v11;
}

- (id)completionItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  if (v5 >= -[UITableViewDiffableDataSource numberOfSectionsInTableView:](self->_dataSource, "numberOfSectionsInTableView:", self->_tableView) || (v6 = [v4 item], v6 >= -[UITableViewDiffableDataSource tableView:numberOfRowsInSection:](self->_dataSource, "tableView:numberOfRowsInSection:", self->_tableView, objc_msgSend(v4, "section"))))
  {
    v8 = 0;
  }

  else
  {
    v7 = [(UITableViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:v4];
    v8 = [v7 completionItem];
  }

  return v8;
}

- (void)updateTableViewWithCompletionList:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v18[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  objc_storeStrong(&self->_completionList, a3);
  v11 = [(UITableViewDiffableDataSource *)self->_dataSource snapshot];
  v12 = [(CompletionListTableViewDataSource *)self buildSnapshot];
  if ([v12 isEqual:v11])
  {
    if (v10)
    {
      v10[2](v10);
    }
  }

  else
  {
    v13 = [v11 sectionIdentifiers];
    v14 = [v12 sectionIdentifiers];
    v15 = [(CompletionList *)self->_completionList indexOfSearchSuggestionsGroup];
    if ([v14 count] > v15)
    {
      v16 = [v14 objectAtIndexedSubscript:v15];
      if (v15 != [v13 indexOfObject:v16])
      {
        v18[0] = v16;
        v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
        [v12 reloadSectionsWithIdentifiers:v17];
      }
    }

    [(UITableViewDiffableDataSource *)self->_dataSource applySnapshot:v12 animatingDifferences:v6 completion:v10];
  }
}

- (void)updateTableViewWithCompletionList:(id)a3 rowAnimation:(int64_t)a4 completion:(id)a5
{
  dataSource = self->_dataSource;
  v9 = a5;
  v10 = a3;
  v11 = [(UITableViewDiffableDataSource *)dataSource defaultRowAnimation];
  [(UITableViewDiffableDataSource *)self->_dataSource setDefaultRowAnimation:a4];
  [(CompletionListTableViewDataSource *)self updateTableViewWithCompletionList:v10 animated:1 completion:v9];

  v12 = self->_dataSource;

  [(UITableViewDiffableDataSource *)v12 setDefaultRowAnimation:v11];
}

- (id)buildSnapshot
{
  v56[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CFB890]);
  if ([(CompletionList *)self->_completionList numberOfGroups])
  {
    v4 = 0;
    v5 = 0x277CBE000uLL;
    v35 = v3;
    v36 = self;
    do
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = [(CompletionList *)self->_completionList identifierForGroupAtIndex:v4];
      v8 = [(CompletionList *)self->_completionList titleForGroupAtIndex:v4];
      v9 = [v6 stringWithFormat:@"%@-%@", v7, v8];

      v10 = [(CompletionList *)self->_completionList completionsForGroupAtIndex:v4];
      v42 = v9;
      v56[0] = v9;
      v11 = [*(v5 + 2656) arrayWithObjects:v56 count:1];
      [v3 appendSectionsWithIdentifiers:v11];

      v12 = [v10 safari_mapObjectsUsingBlock:&__block_literal_global_9];
      v40 = [MEMORY[0x277CBEB70] orderedSetWithArray:v12];
      v13 = [v40 array];
      v14 = [v12 count];
      v41 = v13;
      if (v14 != [v13 count])
      {
        v38 = v10;
        v39 = v4;
        v15 = [MEMORY[0x277CBEB58] set];
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v16 = v12;
        v17 = [v16 countByEnumeratingWithState:&v43 objects:v55 count:16];
        v37 = v12;
        if (v17)
        {
          v18 = v17;
          v19 = *v44;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v44 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v43 + 1) + 8 * i);
              if ([v15 containsObject:v21])
              {
                v22 = [v21 completionItem];
                v23 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
                {
                  v24 = v23;
                  v25 = objc_opt_class();
                  v26 = NSStringFromClass(v25);
                  v27 = [v22 tableItemEqualityInfo];
                  *buf = 138544130;
                  v48 = v42;
                  v49 = 2114;
                  v50 = v26;
                  v51 = 2114;
                  v52 = v27;
                  v53 = 2114;
                  v54 = v22;
                  _os_log_fault_impl(&dword_215819000, v24, OS_LOG_TYPE_FAULT, "Duplicate completion item found in section '%{public}@': class=%{public}@, tableItemEqualityInfo=%{public}@, completionItem=%{public}@", buf, 0x2Au);
                }
              }

              else
              {
                [v15 addObject:v21];
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v43 objects:v55 count:16];
          }

          while (v18);
        }

        v28 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
        {
          v29 = v28;
          v30 = [v16 count];
          v31 = [v41 count];
          v32 = [v16 count];
          v33 = [v41 count];
          *buf = 138544130;
          v48 = v42;
          v49 = 2048;
          v50 = v30;
          v51 = 2048;
          v52 = v31;
          v53 = 2048;
          v54 = v32 - v33;
          _os_log_fault_impl(&dword_215819000, v29, OS_LOG_TYPE_FAULT, "Section '%{public}@' had %lu items before deduplication, %lu items after deduplication (%lu duplicates removed)", buf, 0x2Au);
        }

        v3 = v35;
        self = v36;
        v10 = v38;
        v4 = v39;
        v5 = 0x277CBE000;
        v12 = v37;
      }

      [v3 appendItemsWithIdentifiers:v41];

      ++v4;
    }

    while (v4 < [(CompletionList *)self->_completionList numberOfGroups]);
  }

  return v3;
}

CompletionListTableItem *__50__CompletionListTableViewDataSource_buildSnapshot__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[CompletionListTableItem alloc] initWithCompletionItem:v2];

  return v3;
}

- (void)reloadVisibleRows
{
  v3 = [(UITableView *)self->_tableView indexPathsForVisibleRows];
  if ([v3 count])
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __54__CompletionListTableViewDataSource_reloadVisibleRows__block_invoke;
    v6[3] = &unk_2781D73A0;
    v6[4] = self;
    v4 = [v3 safari_mapObjectsUsingBlock:v6];
    v5 = [(UITableViewDiffableDataSource *)self->_dataSource snapshot];
    [v5 reloadItemsWithIdentifiers:v4];
    [(UITableViewDiffableDataSource *)self->_dataSource applySnapshot:v5 animatingDifferences:0];
  }
}

- (id)tableView:(id)a3 cellForItem:(id)a4 atIndexPath:(id)a5
{
  v65 = *MEMORY[0x277D85DE8];
  val = a3;
  v8 = a4;
  v9 = a5;
  v48 = v8;
  v10 = [v8 completionItem];
  v49 = [v10 completionTableViewCellReuseIdentifier];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![v9 section])
  {
    v11 = [v10 inlineCard];
    v12 = [v11 cardSections];
    v13 = [v12 firstObject];
    [v13 setSeparatorStyle:1];
  }

  v14 = [val dequeueReusableCellWithIdentifier:v49];
  if (!v14)
  {
    v14 = [v10 completionTableViewCellForCompletionList:self->_completionList];
  }

  v15 = [v10 completionTableViewCellReuseIdentifier];
  [v14 setAccessibilityIdentifier:v15];

  [v10 configureCompletionTableViewCell:v14 forCompletionList:self->_completionList];
  v16 = [v9 row] + 1;
  if (v16 >= -[UITableViewDiffableDataSource tableView:numberOfRowsInSection:](self->_dataSource, "tableView:numberOfRowsInSection:", val, [v9 section]))
  {
    v21 = 0;
  }

  else
  {
    dataSource = self->_dataSource;
    v18 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(v9 inSection:{"row") + 1, objc_msgSend(v9, "section")}];
    v19 = [(UITableViewDiffableDataSource *)dataSource itemIdentifierForIndexPath:v18];
    v20 = [v19 completionItem];

    v21 = v20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 safari_configureBackgroundColorForCompletionList:self->_completionList];
  }

  v22 = ![v9 section] && (objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend(v21, "completionCellBackgroundModeInTopSection") == 1;
  v23 = 1;
  if (([MEMORY[0x277D49A08] isSolariumEnabled] & 1) == 0 && !v22)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = v21;
      v25 = [v10 inlineCard];
      v26 = [v25 cardSections];
      v27 = [v26 firstObject];
      v23 = [v27 separatorStyle];

      v21 = v24;
    }

    else
    {
      v23 = 2;
    }
  }

  if ([v9 section] || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v28 = 0;
  }

  else
  {
    v28 = [v10 completionCellBackgroundModeInTopSection];
  }

  if ([v9 row])
  {
    v29 = 0;
  }

  else
  {
    v29 = ([v9 section] | v21) == 0;
  }

  v47 = v21;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v31 = v28;
  if (isKindOfClass)
  {
    v32 = v10;
    v33 = [v32 resultType];
    if ([v33 isEqualToString:@"web_index"])
    {
      v34 = [v32 topHit];

      if (v34)
      {
        v31 = v28;
      }

      else
      {
        v31 = 1;
      }
    }

    else
    {

      v31 = v28;
    }
  }

  if (v29)
  {
    v35 = v31;
  }

  else
  {
    v35 = v28;
  }

  v36 = v35 == 1 && [v9 row] != 0;
  objc_initWeak(&location, val);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__CompletionListTableViewDataSource_tableView_cellForItem_atIndexPath___block_invoke;
  aBlock[3] = &unk_2781D73C8;
  objc_copyWeak(&v53, &location);
  v37 = v9;
  v52 = v37;
  v38 = _Block_copy(aBlock);
  [CompletionListTableViewController configureCell:v14 backgroundMode:v35 separatorStyle:v23 shouldHaveTopPadding:v36 configurationStateDidChangeCallback:v38];
  [v14 setClipsToBounds:0];
  if (objc_opt_respondsToSelector())
  {
    WeakRetained = objc_loadWeakRetained(&self->_actionHandler);
    [v10 setHandlerForActionItem:WeakRetained];
  }

  if (!v14)
  {
    v40 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
    {
      if (self->_completionList)
      {
        v42 = @"IS NOT";
      }

      else
      {
        v42 = @"IS";
      }

      v43 = objc_opt_class();
      v44 = [(CompletionList *)self->_completionList numberOfGroups];
      v45 = -[CompletionList completionsForGroupAtIndex:](self->_completionList, "completionsForGroupAtIndex:", [v37 section]);
      v46 = [v45 count];
      *buf = 138544386;
      v56 = v37;
      v57 = 2114;
      v58 = v42;
      v59 = 2114;
      v60 = v43;
      v61 = 2048;
      v62 = v44;
      v63 = 2048;
      v64 = v46;
      _os_log_fault_impl(&dword_215819000, v40, OS_LOG_TYPE_FAULT, "No cell returned for completion item at index path %{public}@; completion list %{public}@ nil; item class: %{public}@; number of groups: %ld; number of completions in group: %ld", buf, 0x34u);
    }
  }

  objc_destroyWeak(&v53);
  objc_destroyWeak(&location);

  return v14;
}

void __71__CompletionListTableViewDataSource_tableView_cellForItem_atIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (([MEMORY[0x277D49A08] isSolariumEnabled] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained && ![*(a1 + 32) row])
    {
      v4 = [WeakRetained headerViewForSection:{objc_msgSend(*(a1 + 32), "section")}];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v6 isSelected])
        {
          v5 = 0;
        }

        else
        {
          v5 = [v6 isHighlighted] ^ 1;
        }

        [v4 setShowsSeparator:v5];
      }
    }
  }
}

- (CompletionItemActionHandler)actionHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_actionHandler);

  return WeakRetained;
}

@end