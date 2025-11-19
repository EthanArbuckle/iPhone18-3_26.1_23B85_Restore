@interface MRUMediaSuggestionsViewController
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (MRUMediaSuggestionsViewController)initWithMediaSuggestions:(id)a3;
- (MRUMediaSuggestionsViewControllerDelegate)delegate;
- (UIEdgeInsets)contentEdgeInsets;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)loadView;
- (void)setContentEdgeInsets:(UIEdgeInsets)a3;
- (void)setLayout:(int64_t)a3;
- (void)setMediaSuggestions:(id)a3;
- (void)setStylingProvider:(id)a3;
- (void)setSupportsHorizontalLayout:(BOOL)a3;
- (void)updateCell:(id)a3 forIdentifier:(id)a4;
- (void)updateSuggestions;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation MRUMediaSuggestionsViewController

- (MRUMediaSuggestionsViewController)initWithMediaSuggestions:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MRUMediaSuggestionsViewController;
  v6 = [(MRUMediaSuggestionsViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mediaSuggestions, a3);
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
  v4 = [(MRUMediaSuggestionsViewController *)self view];
  [v4 setLayout:layout];

  supportsHorizontalLayout = self->_supportsHorizontalLayout;
  v6 = [(MRUMediaSuggestionsViewController *)self view];
  [v6 setSupportsHorizontalLayout:supportsHorizontalLayout];

  top = self->_contentEdgeInsets.top;
  left = self->_contentEdgeInsets.left;
  bottom = self->_contentEdgeInsets.bottom;
  right = self->_contentEdgeInsets.right;
  v11 = [(MRUMediaSuggestionsViewController *)self view];
  [v11 setContentEdgeInsets:{top, left, bottom, right}];

  v12 = [(MRUMediaSuggestionsViewController *)self view];
  v13 = [v12 collectionView];
  [v13 setDelegate:self];

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
  v18 = [(MRUMediaSuggestionsViewController *)self view];
  v19 = [v18 collectionView];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __48__MRUMediaSuggestionsViewController_viewDidLoad__block_invoke_2;
  v23[3] = &unk_1E76646B0;
  v20 = v16;
  v24 = v20;
  v21 = [v17 initWithCollectionView:v19 cellProvider:v23];
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

- (void)viewWillAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = MRUMediaSuggestionsViewController;
  [(MRUMediaSuggestionsViewController *)&v9 viewWillAppear:a3];
  v4 = [(MRUMediaSuggestionsViewController *)self view];
  [v4 updateCollectionViewLayout];

  v5 = *MEMORY[0x1E695EFF8];
  v6 = *(MEMORY[0x1E695EFF8] + 8);
  v7 = [(MRUMediaSuggestionsViewController *)self view];
  v8 = [v7 collectionView];
  [v8 setContentOffset:{v5, v6}];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v21 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = MRUMediaSuggestionsViewController;
  [(MRUMediaSuggestionsViewController *)&v19 viewWillDisappear:?];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(MRUMediaSuggestionsViewController *)self view];
  v6 = [v5 collectionView];
  v7 = [v6 indexPathsForSelectedItems];

  v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        v13 = [(MRUMediaSuggestionsViewController *)self view];
        v14 = [v13 collectionView];
        [v14 deselectItemAtIndexPath:v12 animated:v3];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v9);
  }
}

- (void)setMediaSuggestions:(id)a3
{
  objc_storeStrong(&self->_mediaSuggestions, a3);
  if ([(MRUMediaSuggestionsViewController *)self isViewLoaded])
  {

    [(MRUMediaSuggestionsViewController *)self updateSuggestions];
  }
}

- (void)setStylingProvider:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_stylingProvider, a3);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(MRUMediaSuggestionsViewController *)self view];
  v7 = [v6 collectionView];
  v8 = [v7 visibleCells];

  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) setStylingProvider:v5];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)setLayout:(int64_t)a3
{
  if (self->_layout != a3)
  {
    self->_layout = a3;
    v5 = [(MRUMediaSuggestionsViewController *)self viewIfLoaded];
    [v5 setLayout:a3];
  }
}

- (void)setContentEdgeInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentEdgeInsets.top, v3), vceqq_f64(*&self->_contentEdgeInsets.bottom, v4)))) & 1) == 0)
  {
    self->_contentEdgeInsets = a3;
    right = a3.right;
    left = a3.left;
    bottom = a3.bottom;
    top = a3.top;
    v8 = [(MRUMediaSuggestionsViewController *)self viewIfLoaded];
    [v8 setContentEdgeInsets:{top, left, bottom, right}];
  }
}

- (void)setSupportsHorizontalLayout:(BOOL)a3
{
  if (self->_supportsHorizontalLayout != a3)
  {
    v4 = a3;
    self->_supportsHorizontalLayout = a3;
    v5 = [(MRUMediaSuggestionsViewController *)self viewIfLoaded];
    [v5 setSupportsHorizontalLayout:v4];
  }
}

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  v4 = [a3 indexPathsForSelectedItems];
  v5 = [v4 count] == 0;

  return v5;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = self->_dataSource;
  v8 = [(UICollectionViewDiffableDataSource *)v7 itemIdentifierForIndexPath:a4];
  v9 = [(NSDictionary *)self->_suggestions objectForKeyedSubscript:v8];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __77__MRUMediaSuggestionsViewController_collectionView_didSelectItemAtIndexPath___block_invoke;
  v14[3] = &unk_1E7663D30;
  v15 = v7;
  v16 = v8;
  v17 = v6;
  v11 = v6;
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
        v11 = [v10 identifier];

        if (v11)
        {
          v12 = [v10 identifier];
          [v3 addObject:v12];

          v13 = [v10 identifier];
          [v4 setObject:v10 forKeyedSubscript:v13];
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

- (void)updateCell:(id)a3 forIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSDictionary *)self->_suggestions objectForKeyedSubscript:v7];
  [v6 setSuggestionIdentifier:v7];
  v9 = [v8 title];
  [v6 setTitle:v9];

  v10 = [v8 artist];
  [v6 setSubtitle:v10];

  v11 = +[MRUMediaSuggestionsCache sharedCache];
  v12 = [v11 artworkForMediaSuggestion:v8];
  [v6 setArtworkImage:v12];

  v13 = +[MRUAssetsProvider sharedAssetsProvider];
  v14 = [v8 bundleID];
  v15 = [(MRUMediaSuggestionsViewController *)self view];
  v16 = [v15 traitCollection];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __62__MRUMediaSuggestionsViewController_updateCell_forIdentifier___block_invoke;
  v21[3] = &unk_1E76646D8;
  v22 = v6;
  v23 = v7;
  v24 = v8;
  v17 = v8;
  v18 = v7;
  v19 = v6;
  [v13 applicationIconForBundleIdentifier:v14 traitCollection:v16 completion:v21];

  v20 = [(MRUMediaSuggestionsViewController *)self stylingProvider];
  [v19 setStylingProvider:v20];

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