@interface MRUUpNextPicker
- (MRUUpNextPicker)initWithFrame:(CGRect)frame dataSource:(id)source;
- (id)reponseItemForIndexPath:(id)path;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (void)configureCell:(id)cell forMovie:(id)movie;
- (void)configureCell:(id)cell forSong:(id)song;
- (void)configureCell:(id)cell forTVEpisode:(id)episode;
- (void)layoutSubviews;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateDiffableDataSourceAnimated:(BOOL)animated;
@end

@implementation MRUUpNextPicker

- (MRUUpNextPicker)initWithFrame:(CGRect)frame dataSource:(id)source
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  sourceCopy = source;
  v31.receiver = self;
  v31.super_class = MRUUpNextPicker;
  height = [(MRUUpNextPicker *)&v31 initWithFrame:x, y, width, height];
  v12 = height;
  if (height)
  {
    objc_storeStrong(&height->_dataSource, source);
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

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [view cellForRowAtIndexPath:pathCopy];
  if ([v6 isUserInteractionEnabled])
  {
    v7 = pathCopy;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  [viewCopy scrollToRowAtIndexPath:pathCopy atScrollPosition:1 animated:0];

  v8 = [(UITableViewDiffableDataSource *)self->_diffableDataSource itemIdentifierForIndexPath:pathCopy];

  [(MRUUpNextDataSource *)self->_dataSource playItemWithIdentifier:v8 completion:0];
}

- (void)updateDiffableDataSourceAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = objc_opt_new();
  [v6 appendSectionsWithIdentifiers:&unk_1F148B3B8];
  responseItemIDs = [(MRUUpNextDataSource *)self->_dataSource responseItemIDs];
  [v6 appendItemsWithIdentifiers:responseItemIDs];

  [(UITableViewDiffableDataSource *)self->_diffableDataSource applySnapshot:v6 animatingDifferences:animatedCopy];
}

- (id)reponseItemForIndexPath:(id)path
{
  v4 = [(UITableViewDiffableDataSource *)self->_diffableDataSource itemIdentifierForIndexPath:path];
  v5 = [(MRUUpNextDataSource *)self->_dataSource objectForKeyedSubscript:v4];

  return v5;
}

- (void)configureCell:(id)cell forSong:(id)song
{
  songCopy = song;
  cellCopy = cell;
  title = [songCopy title];
  textLabel = [cellCopy textLabel];
  [textLabel setText:title];

  album = [songCopy album];
  title2 = [album title];
  detailTextLabel = [cellCopy detailTextLabel];
  [detailTextLabel setText:title2];

  artworkCatalog = [songCopy artworkCatalog];

  [cellCopy setArtworkCatalog:artworkCatalog];
}

- (void)configureCell:(id)cell forTVEpisode:(id)episode
{
  episodeCopy = episode;
  cellCopy = cell;
  title = [episodeCopy title];
  textLabel = [cellCopy textLabel];
  [textLabel setText:title];

  show = [episodeCopy show];
  title2 = [show title];
  detailTextLabel = [cellCopy detailTextLabel];
  [detailTextLabel setText:title2];

  artworkCatalog = [episodeCopy artworkCatalog];

  [cellCopy setArtworkCatalog:artworkCatalog];
}

- (void)configureCell:(id)cell forMovie:(id)movie
{
  movieCopy = movie;
  cellCopy = cell;
  title = [movieCopy title];
  textLabel = [cellCopy textLabel];
  [textLabel setText:title];

  artworkCatalog = [movieCopy artworkCatalog];

  [cellCopy setArtworkCatalog:artworkCatalog];
}

@end