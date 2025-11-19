@interface CSQueueViewController
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (CSQueueViewController)initWithAddSongHandler:(id)a3;
- (id)cellForIndexPath:(id)a3 queueEntry:(id)a4;
- (id)tableView:(id)a3 targetIndexPathForMoveFromRowAtIndexPath:(id)a4 toProposedIndexPath:(id)a5;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (void)setupHeaderView;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateDataSource;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CSQueueViewController

- (CSQueueViewController)initWithAddSongHandler:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CSQueueViewController;
  v5 = [(CSQueueViewController *)&v13 initWithStyle:0];
  if (v5)
  {
    v6 = _Block_copy(v4);
    addSongHandler = v5->_addSongHandler;
    v5->_addSongHandler = v6;

    v8 = [MEMORY[0x277CBEB38] dictionary];
    itemsPendingAttribution = v5->_itemsPendingAttribution;
    v5->_itemsPendingAttribution = v8;

    v10 = [MEMORY[0x277CBEB38] dictionary];
    attributions = v5->_attributions;
    v5->_attributions = v10;
  }

  return v5;
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = CSQueueViewController;
  [(CSQueueViewController *)&v19 viewDidLoad];
  v3 = [(CSQueueViewController *)self tableView];
  [v3 setSeparatorStyle:0];
  [v3 contentInset];
  [v3 setVerticalScrollIndicatorInsets:?];
  [v3 setSectionHeaderTopPadding:0.0];
  [v3 setAllowsSelection:1];
  [v3 setRowHeight:56.0];
  [v3 setEditing:1];
  [v3 setAllowsSelectionDuringEditing:1];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"Song"];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"Add Song"];
  objc_initWeak(&location, self);
  v4 = [CSQueueViewControllerDataSource alloc];
  v5 = [(CSQueueViewController *)self tableView];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __36__CSQueueViewController_viewDidLoad__block_invoke;
  v16 = &unk_278E0BB70;
  objc_copyWeak(&v17, &location);
  v6 = [(UITableViewDiffableDataSource *)v4 initWithTableView:v5 cellProvider:&v13];
  dataSource = self->_dataSource;
  self->_dataSource = v6;

  [(CSQueueViewController *)self setupHeaderView:v13];
  [(CSQueueViewController *)self updateDataSource];
  v8 = +[CSShieldManager sharedManager];
  v9 = [v8 playbackManager];
  [v9 addObserver:self];

  v10 = objc_alloc_init(MEMORY[0x277D75FB8]);
  grabberView = self->_grabberView;
  self->_grabberView = v10;

  v12 = [(CSQueueViewController *)self tableView];
  [v12 addSubview:self->_grabberView];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

id __36__CSQueueViewController_viewDidLoad__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = [WeakRetained cellForIndexPath:v7 queueEntry:v6];

  return v9;
}

- (id)cellForIndexPath:(id)a3 queueEntry:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UITableViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:v6];
  v9 = [v8 isAddSongsItem];

  v10 = [(CSQueueViewController *)self tableView];
  v11 = v10;
  if (v9)
  {
    v12 = [v10 dequeueReusableCellWithIdentifier:@"Add Song"];
LABEL_5:
    v19 = v12;
    goto LABEL_7;
  }

  v13 = [v10 dequeueReusableCellWithIdentifier:@"Song" forIndexPath:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [v7 responseItem];
    [v13 setContent:v14];

    attributions = self->_attributions;
    v16 = [v7 responseItem];
    v17 = [v16 queueItemIdentifier];
    v18 = [(NSMutableDictionary *)attributions objectForKeyedSubscript:v17];
    [v13 setParticipantInfo:v18];

    v12 = v13;
    v11 = v12;
    goto LABEL_5;
  }

  v19 = 0;
  v11 = v13;
LABEL_7:

  return v19;
}

- (void)viewDidLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = CSQueueViewController;
  [(CSQueueViewController *)&v15 viewDidLayoutSubviews];
  v3 = [(CSQueueViewController *)self tableView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(CSQueueViewController *)self tableView];
  [v12 bringSubviewToFront:self->_headerView];

  v16.origin.x = v5;
  v16.origin.y = v7;
  v16.size.width = v9;
  v16.size.height = v11;
  v13 = CGRectGetWidth(v16) * 0.5 + -25.0;
  v17.origin.x = v5;
  v17.origin.y = v7;
  v17.size.width = v9;
  v17.size.height = v11;
  [(_UIGrabber *)self->_grabberView setFrame:v13, CGRectGetMinY(v17) + 4.0, 50.0, 5.0];
  v14 = [(CSQueueViewController *)self tableView];
  [v14 bringSubviewToFront:self->_grabberView];
}

- (void)setupHeaderView
{
  v3 = [CSQueueHeaderView alloc];
  v4 = [(CSQueueViewController *)self tableView];
  [v4 bounds];
  v5 = [(CSQueueHeaderView *)v3 initWithFrame:0.0, 0.0, CGRectGetWidth(v10), 220.0];
  headerView = self->_headerView;
  self->_headerView = v5;

  v7 = self->_headerView;
  v8 = [(CSQueueViewController *)self tableView];
  [v8 setTableHeaderView:v7];
}

- (void)updateDataSource
{
  v3 = objc_alloc_init(MEMORY[0x277CFB888]);
  v4 = +[CSShieldManager sharedManager];
  v5 = [v4 playbackManager];
  v6 = [v5 tracklist];

  v7 = [v6 displayItems];

  if (v7)
  {
    v29[0] = @"Up Next";
    v29[1] = @"Continue Playing";
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
    [v3 appendSectionsWithIdentifiers:v8];

    v9 = [MEMORY[0x277CBEB38] dictionary];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __41__CSQueueViewController_updateDataSource__block_invoke;
    aBlock[3] = &unk_278E0BB98;
    aBlock[4] = self;
    v27 = v9;
    v10 = v3;
    v28 = v10;
    v11 = v9;
    v12 = _Block_copy(aBlock);
    v13 = [v6 displayItems];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __41__CSQueueViewController_updateDataSource__block_invoke_2;
    v23[3] = &unk_278E0BBC0;
    v25 = v12;
    v24 = v6;
    v14 = v12;
    [v13 enumerateSectionsUsingBlock:v23];

    v15 = [[CSPlayerResponseItemWrapper alloc] initAddSongsItem];
    v22 = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
    [v10 appendItemsWithIdentifiers:v16 intoSectionWithIdentifier:@"Up Next"];

    [(NSMutableDictionary *)self->_itemsPendingAttribution addEntriesFromDictionary:v11];
    v17 = +[CSQueueAttributionManager sharedManager];
    v18 = [v11 allKeys];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __41__CSQueueViewController_updateDataSource__block_invoke_3;
    v21[3] = &unk_278E0BBE8;
    v21[4] = self;
    [v17 retrieveAttributionsForQueueIdentifiers:v18 withResultHandler:v21];
  }

  [(UITableViewDiffableDataSource *)self->_dataSource applySnapshot:v3 animatingDifferences:1];
  headerView = self->_headerView;
  v20 = [v6 playingItem];
  [(CSQueueHeaderView *)headerView setNowPlayingItem:v20];
}

void __41__CSQueueViewController_updateDataSource__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v16 = a3;
  v6 = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [[CSPlayerResponseItemWrapper alloc] initWithResponseItem:*(*(&v19 + 1) + 8 * v10)];
        v12 = [(CSPlayerResponseItemWrapper *)v11 responseItem];
        v13 = [v12 queueItemIdentifier];

        v14 = [*(*(a1 + 32) + 1056) objectForKeyedSubscript:v13];
        if (v14)
        {
        }

        else
        {
          v15 = [*(*(a1 + 32) + 1048) objectForKeyedSubscript:v13];

          if (!v15)
          {
            [*(a1 + 40) setObject:v11 forKeyedSubscript:v13];
          }
        }

        [v6 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v19 objects:v18 count:16];
    }

    while (v8);
  }

  [*(a1 + 48) appendItemsWithIdentifiers:v6 intoSectionWithIdentifier:v16];
}

void __41__CSQueueViewController_updateDataSource__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  if ([v9 isEqualToString:*MEMORY[0x277D27818]])
  {
    v5 = @"Up Next";
  }

  else
  {
    if (![v9 isEqualToString:*MEMORY[0x277D27810]])
    {
      goto LABEL_6;
    }

    v5 = @"Continue Playing";
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) displayItems];
  v8 = [v7 itemsInSectionAtIndex:a3];
  (*(v6 + 16))(v6, v8, v5);

LABEL_6:
}

void __41__CSQueueViewController_updateDataSource__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__CSQueueViewController_updateDataSource__block_invoke_4;
  v6[3] = &unk_278E0AD78;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __41__CSQueueViewController_updateDataSource__block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __41__CSQueueViewController_updateDataSource__block_invoke_5;
  v25[3] = &unk_278E0AD28;
  v25[4] = *(a1 + 40);
  [v2 enumerateKeysAndObjectsUsingBlock:v25];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = [*(a1 + 40) tableView];
  v4 = [v3 indexPathsForVisibleRows];

  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = [*(*(a1 + 40) + 1040) itemIdentifierForIndexPath:v9];
        v11 = [v10 isAddSongsItem];

        if ((v11 & 1) == 0)
        {
          v12 = [*(a1 + 40) tableView];
          v13 = [v12 cellForRowAtIndexPath:v9];

          v14 = [*(*(a1 + 40) + 1040) itemIdentifierForIndexPath:v9];
          v15 = *(*(a1 + 40) + 1056);
          v16 = [v14 responseItem];
          v17 = [v16 queueItemIdentifier];
          v18 = [v15 objectForKeyedSubscript:v17];
          [v13 setParticipantInfo:v18];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v21 objects:v20 count:16];
    }

    while (v6);
  }
}

void __41__CSQueueViewController_updateDataSource__block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(*(a1 + 32) + 1056);
  v6 = a2;
  [v5 setObject:a3 forKeyedSubscript:v6];
  [*(*(a1 + 32) + 1048) setObject:0 forKeyedSubscript:v6];
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = [(UITableViewDiffableDataSource *)self->_dataSource sectionIdentifierForIndex:a4];
  v7 = [v6 isEqualToString:@"Up Next"];

  if (v7)
  {
    v8 = objc_alloc_init(CSQueueSectionHeader);
  }

  else
  {
    v9 = [(UITableViewDiffableDataSource *)self->_dataSource sectionIdentifierForIndex:a4];
    v10 = [v9 isEqualToString:@"Continue Playing"];

    if (v10)
    {
      v8 = objc_alloc_init(MEMORY[0x277D75D18]);
      v11 = objc_alloc_init(MEMORY[0x277D756C0]);
      v12 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
      v13 = [v12 localizedStringForKey:@"QUEUE_CONTINUE_PLAYING_SECTION_HEADER_TITLE" value:&stru_285797E10 table:0];
      [v11 setText:v13];

      v14 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76990] weight:*MEMORY[0x277D743F8]];
      [v11 setFont:v14];

      [(CSQueueSectionHeader *)v8 addSubview:v11];
      [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
      v24 = MEMORY[0x277CCAAD0];
      v29 = [v11 topAnchor];
      v28 = [(CSQueueSectionHeader *)v8 topAnchor];
      v27 = [v29 constraintEqualToAnchor:v28 constant:24.0];
      v30[0] = v27;
      v26 = [v11 bottomAnchor];
      v25 = [(CSQueueSectionHeader *)v8 bottomAnchor];
      v15 = [v26 constraintEqualToAnchor:v25 constant:-18.0];
      v30[1] = v15;
      v16 = [v11 leadingAnchor];
      v17 = [(CSQueueSectionHeader *)v8 leadingAnchor];
      v18 = [v16 constraintEqualToAnchor:v17 constant:32.0];
      v30[2] = v18;
      v19 = [v11 trailingAnchor];
      v20 = [(CSQueueSectionHeader *)v8 trailingAnchor];
      v21 = [v19 constraintEqualToAnchor:v20 constant:-8.0];
      v30[3] = v21;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:4];
      [v24 activateConstraints:v22];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:1];
  v9 = [(UITableViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:v6];

  if ([v9 isAddSongsItem])
  {
    addSongHandler = self->_addSongHandler;

    if (addSongHandler)
    {
      v8 = *(self->_addSongHandler + 2);

      v8();
    }
  }

  else
  {
  }
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v4 = [(UITableViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:a4];
  v5 = [v4 isAddSongsItem];

  return v5;
}

- (id)tableView:(id)a3 targetIndexPathForMoveFromRowAtIndexPath:(id)a4 toProposedIndexPath:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [a4 section];
  v11 = [v9 section];
  if (v10 == v11)
  {
    v12 = [(UITableViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:v9];
    v13 = [v12 isAddSongsItem];

    if (!v13)
    {
      v18 = v9;
      goto LABEL_12;
    }

    v14 = MEMORY[0x277CCAA70];
    v15 = [v9 row];
    goto LABEL_9;
  }

  if (v10 <= v11)
  {
    v19 = [(UITableViewDiffableDataSource *)self->_dataSource sectionIdentifierForIndex:v10];
    v20 = [v19 isEqualToString:@"Up Next"];

    v14 = MEMORY[0x277CCAA70];
    v15 = [v8 numberOfRowsInSection:v10];
    if (v20)
    {
      v17 = v15 - 2;
LABEL_10:
      v16 = v14;
      goto LABEL_11;
    }

LABEL_9:
    v17 = v15 - 1;
    goto LABEL_10;
  }

  v16 = MEMORY[0x277CCAA70];
  v17 = 0;
LABEL_11:
  v18 = [v16 indexPathForRow:v17 inSection:v10];
LABEL_12:
  v21 = v18;

  return v21;
}

@end