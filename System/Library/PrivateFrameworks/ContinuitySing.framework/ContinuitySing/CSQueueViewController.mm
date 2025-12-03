@interface CSQueueViewController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (CSQueueViewController)initWithAddSongHandler:(id)handler;
- (id)cellForIndexPath:(id)path queueEntry:(id)entry;
- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)setupHeaderView;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateDataSource;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CSQueueViewController

- (CSQueueViewController)initWithAddSongHandler:(id)handler
{
  handlerCopy = handler;
  v13.receiver = self;
  v13.super_class = CSQueueViewController;
  v5 = [(CSQueueViewController *)&v13 initWithStyle:0];
  if (v5)
  {
    v6 = _Block_copy(handlerCopy);
    addSongHandler = v5->_addSongHandler;
    v5->_addSongHandler = v6;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    itemsPendingAttribution = v5->_itemsPendingAttribution;
    v5->_itemsPendingAttribution = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    attributions = v5->_attributions;
    v5->_attributions = dictionary2;
  }

  return v5;
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = CSQueueViewController;
  [(CSQueueViewController *)&v19 viewDidLoad];
  tableView = [(CSQueueViewController *)self tableView];
  [tableView setSeparatorStyle:0];
  [tableView contentInset];
  [tableView setVerticalScrollIndicatorInsets:?];
  [tableView setSectionHeaderTopPadding:0.0];
  [tableView setAllowsSelection:1];
  [tableView setRowHeight:56.0];
  [tableView setEditing:1];
  [tableView setAllowsSelectionDuringEditing:1];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"Song"];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"Add Song"];
  objc_initWeak(&location, self);
  v4 = [CSQueueViewControllerDataSource alloc];
  tableView2 = [(CSQueueViewController *)self tableView];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __36__CSQueueViewController_viewDidLoad__block_invoke;
  v16 = &unk_278E0BB70;
  objc_copyWeak(&v17, &location);
  v6 = [(UITableViewDiffableDataSource *)v4 initWithTableView:tableView2 cellProvider:&v13];
  dataSource = self->_dataSource;
  self->_dataSource = v6;

  [(CSQueueViewController *)self setupHeaderView:v13];
  [(CSQueueViewController *)self updateDataSource];
  v8 = +[CSShieldManager sharedManager];
  playbackManager = [v8 playbackManager];
  [playbackManager addObserver:self];

  v10 = objc_alloc_init(MEMORY[0x277D75FB8]);
  grabberView = self->_grabberView;
  self->_grabberView = v10;

  tableView3 = [(CSQueueViewController *)self tableView];
  [tableView3 addSubview:self->_grabberView];

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

- (id)cellForIndexPath:(id)path queueEntry:(id)entry
{
  pathCopy = path;
  entryCopy = entry;
  v8 = [(UITableViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:pathCopy];
  isAddSongsItem = [v8 isAddSongsItem];

  tableView = [(CSQueueViewController *)self tableView];
  v11 = tableView;
  if (isAddSongsItem)
  {
    v12 = [tableView dequeueReusableCellWithIdentifier:@"Add Song"];
LABEL_5:
    v19 = v12;
    goto LABEL_7;
  }

  v13 = [tableView dequeueReusableCellWithIdentifier:@"Song" forIndexPath:pathCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    responseItem = [entryCopy responseItem];
    [v13 setContent:responseItem];

    attributions = self->_attributions;
    responseItem2 = [entryCopy responseItem];
    queueItemIdentifier = [responseItem2 queueItemIdentifier];
    v18 = [(NSMutableDictionary *)attributions objectForKeyedSubscript:queueItemIdentifier];
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
  tableView = [(CSQueueViewController *)self tableView];
  [tableView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  tableView2 = [(CSQueueViewController *)self tableView];
  [tableView2 bringSubviewToFront:self->_headerView];

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
  tableView3 = [(CSQueueViewController *)self tableView];
  [tableView3 bringSubviewToFront:self->_grabberView];
}

- (void)setupHeaderView
{
  v3 = [CSQueueHeaderView alloc];
  tableView = [(CSQueueViewController *)self tableView];
  [tableView bounds];
  v5 = [(CSQueueHeaderView *)v3 initWithFrame:0.0, 0.0, CGRectGetWidth(v10), 220.0];
  headerView = self->_headerView;
  self->_headerView = v5;

  v7 = self->_headerView;
  tableView2 = [(CSQueueViewController *)self tableView];
  [tableView2 setTableHeaderView:v7];
}

- (void)updateDataSource
{
  v3 = objc_alloc_init(MEMORY[0x277CFB888]);
  v4 = +[CSShieldManager sharedManager];
  playbackManager = [v4 playbackManager];
  tracklist = [playbackManager tracklist];

  displayItems = [tracklist displayItems];

  if (displayItems)
  {
    v29[0] = @"Up Next";
    v29[1] = @"Continue Playing";
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
    [v3 appendSectionsWithIdentifiers:v8];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __41__CSQueueViewController_updateDataSource__block_invoke;
    aBlock[3] = &unk_278E0BB98;
    aBlock[4] = self;
    v27 = dictionary;
    v10 = v3;
    v28 = v10;
    v11 = dictionary;
    v12 = _Block_copy(aBlock);
    displayItems2 = [tracklist displayItems];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __41__CSQueueViewController_updateDataSource__block_invoke_2;
    v23[3] = &unk_278E0BBC0;
    v25 = v12;
    v24 = tracklist;
    v14 = v12;
    [displayItems2 enumerateSectionsUsingBlock:v23];

    initAddSongsItem = [[CSPlayerResponseItemWrapper alloc] initAddSongsItem];
    v22 = initAddSongsItem;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
    [v10 appendItemsWithIdentifiers:v16 intoSectionWithIdentifier:@"Up Next"];

    [(NSMutableDictionary *)self->_itemsPendingAttribution addEntriesFromDictionary:v11];
    v17 = +[CSQueueAttributionManager sharedManager];
    allKeys = [v11 allKeys];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __41__CSQueueViewController_updateDataSource__block_invoke_3;
    v21[3] = &unk_278E0BBE8;
    v21[4] = self;
    [v17 retrieveAttributionsForQueueIdentifiers:allKeys withResultHandler:v21];
  }

  [(UITableViewDiffableDataSource *)self->_dataSource applySnapshot:v3 animatingDifferences:1];
  headerView = self->_headerView;
  playingItem = [tracklist playingItem];
  [(CSQueueHeaderView *)headerView setNowPlayingItem:playingItem];
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

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  v6 = [(UITableViewDiffableDataSource *)self->_dataSource sectionIdentifierForIndex:section];
  v7 = [v6 isEqualToString:@"Up Next"];

  if (v7)
  {
    v8 = objc_alloc_init(CSQueueSectionHeader);
  }

  else
  {
    v9 = [(UITableViewDiffableDataSource *)self->_dataSource sectionIdentifierForIndex:section];
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
      topAnchor = [v11 topAnchor];
      topAnchor2 = [(CSQueueSectionHeader *)v8 topAnchor];
      v27 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:24.0];
      v30[0] = v27;
      bottomAnchor = [v11 bottomAnchor];
      bottomAnchor2 = [(CSQueueSectionHeader *)v8 bottomAnchor];
      v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-18.0];
      v30[1] = v15;
      leadingAnchor = [v11 leadingAnchor];
      leadingAnchor2 = [(CSQueueSectionHeader *)v8 leadingAnchor];
      v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:32.0];
      v30[2] = v18;
      trailingAnchor = [v11 trailingAnchor];
      trailingAnchor2 = [(CSQueueSectionHeader *)v8 trailingAnchor];
      v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-8.0];
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  v9 = [(UITableViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:pathCopy];

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

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  v4 = [(UITableViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:path];
  isAddSongsItem = [v4 isAddSongsItem];

  return isAddSongsItem;
}

- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath
{
  viewCopy = view;
  indexPathCopy = indexPath;
  section = [path section];
  section2 = [indexPathCopy section];
  if (section == section2)
  {
    v12 = [(UITableViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:indexPathCopy];
    isAddSongsItem = [v12 isAddSongsItem];

    if (!isAddSongsItem)
    {
      v18 = indexPathCopy;
      goto LABEL_12;
    }

    v14 = MEMORY[0x277CCAA70];
    v15 = [indexPathCopy row];
    goto LABEL_9;
  }

  if (section <= section2)
  {
    v19 = [(UITableViewDiffableDataSource *)self->_dataSource sectionIdentifierForIndex:section];
    v20 = [v19 isEqualToString:@"Up Next"];

    v14 = MEMORY[0x277CCAA70];
    v15 = [viewCopy numberOfRowsInSection:section];
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
  v18 = [v16 indexPathForRow:v17 inSection:section];
LABEL_12:
  v21 = v18;

  return v21;
}

@end