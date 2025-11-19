@interface MRUUpNextPicker
- (MRUUpNextPicker)initWithFrame:(CGRect)a3 dataSource:(id)a4;
- (id)reponseItemForIndexPath:(id)a3;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (void)configureCell:(id)a3 forMovie:(id)a4;
- (void)configureCell:(id)a3 forSong:(id)a4;
- (void)configureCell:(id)a3 forTVEpisode:(id)a4;
- (void)layoutSubviews;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateDiffableDataSourceAnimated:(BOOL)a3;
@end

@implementation MRUUpNextPicker

- (MRUUpNextPicker)initWithFrame:(CGRect)a3 dataSource:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v31.receiver = self;
  v31.super_class = MRUUpNextPicker;
  v11 = [(MRUUpNextPicker *)&v31 initWithFrame:x, y, width, height];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_dataSource, a4);
    [(MRUUpNextDataSource *)v12->_dataSource setDelegate:v12];
    v13 = objc_alloc(MEMORY[0x1E69DD020]);
    [(MRUUpNextPicker *)v12 bounds];
    v14 = [v13 initWithFrame:?];
    tableView = v12->_tableView;
    v12->_tableView = v14;

    [(UITableView *)v12->_tableView _setAllowsReorderingWhenNotEditing:1];
    [(UITableView *)v12->_tableView setDelegate:v12];
    [(MRUUpNextPicker *)v12 addSubview:v12->_tableView];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    [(UITableView *)v12->_tableView registerClass:objc_opt_class() forCellReuseIdentifier:v17];
    v18 = [MRUDiffableDataSource alloc];
    v19 = v12->_tableView;
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __44__MRUUpNextPicker_initWithFrame_dataSource___block_invoke;
    v28 = &unk_1E7666320;
    v20 = v12;
    v29 = v20;
    v30 = v17;
    v21 = v17;
    v22 = [(UITableViewDiffableDataSource *)v18 initWithTableView:v19 cellProvider:&v25];
    v23 = v20[53];
    v20[53] = v22;

    [v20[53] setDelegate:{v20, v25, v26, v27, v28}];
    [v20[53] setSupportsEditing:1];
    [v20[53] setSupportsReordering:1];
    [v20 updateDiffableDataSourceAnimated:0];
  }

  return v12;
}

id __44__MRUUpNextPicker_initWithFrame_dataSource___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = *(*(a1 + 32) + 408);
  v7 = a3;
  v8 = [v6 objectForKeyedSubscript:a4];
  v9 = [*(*(a1 + 32) + 416) dequeueReusableCellWithIdentifier:*(a1 + 40) forIndexPath:v7];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) configureCell:v9 forSong:v8];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 32) configureCell:v9 forTVEpisode:v8];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(a1 + 32) configureCell:v9 forMovie:v8];
      }
    }
  }

  return v9;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MRUUpNextPicker;
  [(MRUUpNextPicker *)&v3 layoutSubviews];
  [(MRUUpNextPicker *)self bounds];
  [(UITableView *)self->_tableView setFrame:?];
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [a3 cellForRowAtIndexPath:v5];
  if ([v6 isUserInteractionEnabled])
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 deselectRowAtIndexPath:v6 animated:1];
  [v7 scrollToRowAtIndexPath:v6 atScrollPosition:1 animated:0];

  v8 = [(UITableViewDiffableDataSource *)self->_diffableDataSource itemIdentifierForIndexPath:v6];

  [(MRUUpNextDataSource *)self->_dataSource playItemWithIdentifier:v8 completion:0];
}

- (void)updateDiffableDataSourceAnimated:(BOOL)a3
{
  v3 = a3;
  v6 = objc_opt_new();
  [v6 appendSectionsWithIdentifiers:&unk_1F148B3B8];
  v5 = [(MRUUpNextDataSource *)self->_dataSource responseItemIDs];
  [v6 appendItemsWithIdentifiers:v5];

  [(UITableViewDiffableDataSource *)self->_diffableDataSource applySnapshot:v6 animatingDifferences:v3];
}

- (id)reponseItemForIndexPath:(id)a3
{
  v4 = [(UITableViewDiffableDataSource *)self->_diffableDataSource itemIdentifierForIndexPath:a3];
  v5 = [(MRUUpNextDataSource *)self->_dataSource objectForKeyedSubscript:v4];

  return v5;
}

- (void)configureCell:(id)a3 forSong:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 title];
  v8 = [v6 textLabel];
  [v8 setText:v7];

  v9 = [v5 album];
  v10 = [v9 title];
  v11 = [v6 detailTextLabel];
  [v11 setText:v10];

  v12 = [v5 artworkCatalog];

  [v6 setArtworkCatalog:v12];
}

- (void)configureCell:(id)a3 forTVEpisode:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 title];
  v8 = [v6 textLabel];
  [v8 setText:v7];

  v9 = [v5 show];
  v10 = [v9 title];
  v11 = [v6 detailTextLabel];
  [v11 setText:v10];

  v12 = [v5 artworkCatalog];

  [v6 setArtworkCatalog:v12];
}

- (void)configureCell:(id)a3 forMovie:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 title];
  v8 = [v6 textLabel];
  [v8 setText:v7];

  v9 = [v5 artworkCatalog];

  [v6 setArtworkCatalog:v9];
}

@end