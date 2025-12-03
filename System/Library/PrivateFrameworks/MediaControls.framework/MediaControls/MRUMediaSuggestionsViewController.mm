@interface MRUMediaSuggestionsViewController
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (MRUMediaSuggestionsViewController)initWithMediaSuggestions:(id)suggestions;
- (MRUMediaSuggestionsViewControllerDelegate)delegate;
- (UIEdgeInsets)contentEdgeInsets;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)loadView;
- (void)setContentEdgeInsets:(UIEdgeInsets)insets;
- (void)setLayout:(int64_t)layout;
- (void)setMediaSuggestions:(id)suggestions;
- (void)setStylingProvider:(id)provider;
- (void)setSupportsHorizontalLayout:(BOOL)layout;
- (void)updateCell:(id)cell forIdentifier:(id)identifier;
- (void)updateSuggestions;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation MRUMediaSuggestionsViewController

- (MRUMediaSuggestionsViewController)initWithMediaSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  v9.receiver = self;
  v9.super_class = MRUMediaSuggestionsViewController;
  v6 = [(MRUMediaSuggestionsViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mediaSuggestions, suggestions);
  }

  return v7;
}

- (void)loadView
{
  v3 = [MRUMediaSuggestionsView alloc];
  v4 = [(MRUMediaSuggestionsView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(MRUMediaSuggestionsViewController *)self setView:v4];
}

- (void)viewDidLoad
{
  v28.receiver = self;
  v28.super_class = MRUMediaSuggestionsViewController;
  [(MRUMediaSuggestionsViewController *)&v28 viewDidLoad];
  layout = self->_layout;
  view = [(MRUMediaSuggestionsViewController *)self view];
  [view setLayout:layout];

  supportsHorizontalLayout = self->_supportsHorizontalLayout;
  view2 = [(MRUMediaSuggestionsViewController *)self view];
  [view2 setSupportsHorizontalLayout:supportsHorizontalLayout];

  top = self->_contentEdgeInsets.top;
  left = self->_contentEdgeInsets.left;
  bottom = self->_contentEdgeInsets.bottom;
  right = self->_contentEdgeInsets.right;
  view3 = [(MRUMediaSuggestionsViewController *)self view];
  [view3 setContentEdgeInsets:{top, left, bottom, right}];

  view4 = [(MRUMediaSuggestionsViewController *)self view];
  collectionView = [view4 collectionView];
  [collectionView setDelegate:self];

  objc_initWeak(&location, self);
  v14 = MEMORY[0x1E69DC800];
  v15 = objc_opt_class();
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __48__MRUMediaSuggestionsViewController_viewDidLoad__block_invoke;
  v25[3] = &unk_1E7664688;
  objc_copyWeak(&v26, &location);
  v16 = [v14 registrationWithCellClass:v15 configurationHandler:v25];
  v17 = objc_alloc(MEMORY[0x1E69DC820]);
  view5 = [(MRUMediaSuggestionsViewController *)self view];
  collectionView2 = [view5 collectionView];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __48__MRUMediaSuggestionsViewController_viewDidLoad__block_invoke_2;
  v23[3] = &unk_1E76646B0;
  v20 = v16;
  v24 = v20;
  v21 = [v17 initWithCollectionView:collectionView2 cellProvider:v23];
  dataSource = self->_dataSource;
  self->_dataSource = v21;

  [(MRUMediaSuggestionsViewController *)self updateSuggestions];
  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

void __48__MRUMediaSuggestionsViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateCell:v7 forIdentifier:v6];
}

- (void)viewWillAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = MRUMediaSuggestionsViewController;
  [(MRUMediaSuggestionsViewController *)&v9 viewWillAppear:appear];
  view = [(MRUMediaSuggestionsViewController *)self view];
  [view updateCollectionViewLayout];

  v5 = *MEMORY[0x1E695EFF8];
  v6 = *(MEMORY[0x1E695EFF8] + 8);
  view2 = [(MRUMediaSuggestionsViewController *)self view];
  collectionView = [view2 collectionView];
  [collectionView setContentOffset:{v5, v6}];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v21 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = MRUMediaSuggestionsViewController;
  [(MRUMediaSuggestionsViewController *)&v19 viewWillDisappear:?];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  view = [(MRUMediaSuggestionsViewController *)self view];
  collectionView = [view collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

  v8 = [indexPathsForSelectedItems countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(indexPathsForSelectedItems);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        view2 = [(MRUMediaSuggestionsViewController *)self view];
        collectionView2 = [view2 collectionView];
        [collectionView2 deselectItemAtIndexPath:v12 animated:disappearCopy];

        ++v11;
      }

      while (v9 != v11);
      v9 = [indexPathsForSelectedItems countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v9);
  }
}

- (void)setMediaSuggestions:(id)suggestions
{
  objc_storeStrong(&self->_mediaSuggestions, suggestions);
  if ([(MRUMediaSuggestionsViewController *)self isViewLoaded])
  {

    [(MRUMediaSuggestionsViewController *)self updateSuggestions];
  }
}

- (void)setStylingProvider:(id)provider
{
  v18 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  objc_storeStrong(&self->_stylingProvider, provider);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  view = [(MRUMediaSuggestionsViewController *)self view];
  collectionView = [view collectionView];
  visibleCells = [collectionView visibleCells];

  v9 = [visibleCells countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(visibleCells);
        }

        [*(*(&v13 + 1) + 8 * v12++) setStylingProvider:providerCopy];
      }

      while (v10 != v12);
      v10 = [visibleCells countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)setLayout:(int64_t)layout
{
  if (self->_layout != layout)
  {
    self->_layout = layout;
    viewIfLoaded = [(MRUMediaSuggestionsViewController *)self viewIfLoaded];
    [viewIfLoaded setLayout:layout];
  }
}

- (void)setContentEdgeInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentEdgeInsets.top, v3), vceqq_f64(*&self->_contentEdgeInsets.bottom, v4)))) & 1) == 0)
  {
    self->_contentEdgeInsets = insets;
    right = insets.right;
    left = insets.left;
    bottom = insets.bottom;
    top = insets.top;
    viewIfLoaded = [(MRUMediaSuggestionsViewController *)self viewIfLoaded];
    [viewIfLoaded setContentEdgeInsets:{top, left, bottom, right}];
  }
}

- (void)setSupportsHorizontalLayout:(BOOL)layout
{
  if (self->_supportsHorizontalLayout != layout)
  {
    layoutCopy = layout;
    self->_supportsHorizontalLayout = layout;
    viewIfLoaded = [(MRUMediaSuggestionsViewController *)self viewIfLoaded];
    [viewIfLoaded setSupportsHorizontalLayout:layoutCopy];
  }
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  indexPathsForSelectedItems = [view indexPathsForSelectedItems];
  v5 = [indexPathsForSelectedItems count] == 0;

  return v5;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = self->_dataSource;
  v8 = [(UICollectionViewDiffableDataSource *)v7 itemIdentifierForIndexPath:path];
  v9 = [(NSDictionary *)self->_suggestions objectForKeyedSubscript:v8];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __77__MRUMediaSuggestionsViewController_collectionView_didSelectItemAtIndexPath___block_invoke;
  v14[3] = &unk_1E7663D30;
  v15 = v7;
  v16 = v8;
  v17 = viewCopy;
  v11 = viewCopy;
  v12 = v8;
  v13 = v7;
  [WeakRetained mediaSuggestionsViewController:self didSelectSuggestion:v9 completion:v14];
}

void __77__MRUMediaSuggestionsViewController_collectionView_didSelectItemAtIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) indexPathForItemIdentifier:*(a1 + 40)];
  [*(a1 + 48) deselectItemAtIndexPath:v2 animated:1];
}

- (void)updateSuggestions
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_mediaSuggestions, "count")}];
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSArray count](self->_mediaSuggestions, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_mediaSuggestions;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        identifier = [v10 identifier];

        if (identifier)
        {
          identifier2 = [v10 identifier];
          [v3 addObject:identifier2];

          identifier3 = [v10 identifier];
          [v4 setObject:v10 forKeyedSubscript:identifier3];
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v14 = [v4 copy];
  suggestions = self->_suggestions;
  self->_suggestions = v14;

  v16 = objc_alloc_init(MEMORY[0x1E69955A0]);
  [v16 appendSectionsWithIdentifiers:&unk_1F148B358];
  [v16 appendItemsWithIdentifiers:v3];
  [(UICollectionViewDiffableDataSource *)self->_dataSource applySnapshot:v16 animatingDifferences:0];
}

- (void)updateCell:(id)cell forIdentifier:(id)identifier
{
  cellCopy = cell;
  identifierCopy = identifier;
  v8 = [(NSDictionary *)self->_suggestions objectForKeyedSubscript:identifierCopy];
  [cellCopy setSuggestionIdentifier:identifierCopy];
  title = [v8 title];
  [cellCopy setTitle:title];

  artist = [v8 artist];
  [cellCopy setSubtitle:artist];

  v11 = +[MRUMediaSuggestionsCache sharedCache];
  v12 = [v11 artworkForMediaSuggestion:v8];
  [cellCopy setArtworkImage:v12];

  v13 = +[MRUAssetsProvider sharedAssetsProvider];
  bundleID = [v8 bundleID];
  view = [(MRUMediaSuggestionsViewController *)self view];
  traitCollection = [view traitCollection];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __62__MRUMediaSuggestionsViewController_updateCell_forIdentifier___block_invoke;
  v21[3] = &unk_1E76646D8;
  v22 = cellCopy;
  v23 = identifierCopy;
  v24 = v8;
  v17 = v8;
  v18 = identifierCopy;
  v19 = cellCopy;
  [v13 applicationIconForBundleIdentifier:bundleID traitCollection:traitCollection completion:v21];

  stylingProvider = [(MRUMediaSuggestionsViewController *)self stylingProvider];
  [v19 setStylingProvider:stylingProvider];

  [v19 setLayout:self->_layout];
}

void __62__MRUMediaSuggestionsViewController_updateCell_forIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) suggestionIdentifier];
  v5 = [v4 isEqualToString:*(a1 + 40)];

  v6 = MCLogCategoryDefault();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v7)
    {
      v8 = [*(a1 + 48) bundleID];
      *buf = 138412290;
      v17 = v8;
      _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_DEBUG, "[MRUMediaSuggestionsVC] Loaded icon(%@) into cell", buf, 0xCu);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__MRUMediaSuggestionsViewController_updateCell_forIdentifier___block_invoke_18;
    block[3] = &unk_1E7663D30;
    v13 = *(a1 + 32);
    v14 = v3;
    v15 = *(a1 + 48);
    dispatch_async(MEMORY[0x1E69E96A0], block);

    v6 = v13;
  }

  else if (v7)
  {
    v9 = [*(a1 + 48) bundleID];
    v10 = [*(a1 + 32) suggestionIdentifier];
    v11 = *(a1 + 40);
    *buf = 138412802;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_DEBUG, "[MRUMediaSuggestionsVC] Did not load icon(%@) into cell; Identifier mismatch (%@, %@)", buf, 0x20u);
  }
}

void __62__MRUMediaSuggestionsViewController_updateCell_forIdentifier___block_invoke_18(uint64_t a1)
{
  [*(a1 + 32) setIconImage:*(a1 + 40)];
  v4 = [*(a1 + 48) bundleID];
  v2 = [MRUStringsProvider localizedNameForBundleIdentifier:v4];
  v3 = [*(a1 + 32) iconImage];
  [v3 setAccessibilityLabel:v2];
}

- (MRUMediaSuggestionsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIEdgeInsets)contentEdgeInsets
{
  top = self->_contentEdgeInsets.top;
  left = self->_contentEdgeInsets.left;
  bottom = self->_contentEdgeInsets.bottom;
  right = self->_contentEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end