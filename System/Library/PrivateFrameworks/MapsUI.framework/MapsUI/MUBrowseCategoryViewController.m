@interface MUBrowseCategoryViewController
- (CGSize)preferredCellSize;
- (MUBrowseCategoryViewController)initWithMapItem:(id)a3;
- (MUBrowseCategoryViewControllerDelegate)delegate;
- (NSArray)buttons;
- (double)collectionViewBottomPadding;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int)placeCardTypeForAnalytics;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)_ppt_postNotificationName:(id)a3 object:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)contentSizeCategoryDidChange:(id)a3;
- (void)setPreferredCellSize:(CGSize)a3;
- (void)setupCollectionView;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation MUBrowseCategoryViewController

- (CGSize)preferredCellSize
{
  width = self->_preferredCellSize.width;
  height = self->_preferredCellSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (MUBrowseCategoryViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_ppt_postNotificationName:(id)a3 object:(id)a4
{
  v5 = MEMORY[0x1E696AD88];
  v6 = a4;
  v7 = a3;
  v8 = [v5 defaultCenter];
  [v8 postNotificationName:v7 object:v6];
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[MUBrowseCategoryCollectionViewCell reuseIdentifier];
  v9 = [v7 dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:v6];

  [(MUBrowseCategoryViewController *)self preferredCellSize];
  [v9 setPreferredSize:?];
  v10 = [(MUBrowseCategoryViewController *)self preferredCellTitleLabelFont];
  [v9 setPreferredTitleLabelFont:v10];

  v11 = [MEMORY[0x1E69DC888] labelColor];
  [v9 setTitleLabelTextColor:v11];

  v12 = [(MUBrowseCategoryViewController *)self browseItems];
  v13 = [v6 row];

  v14 = [v12 objectAtIndex:v13];
  [v9 setBrowseItem:v14];

  return v9;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(MUBrowseCategoryViewController *)self browseItems:a3];
  v5 = [v4 count];

  return v5;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(MUBrowseCategoryViewController *)self browseItems];
  v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v5, "row")}];

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = [(MUBrowseCategoryViewController *)self browseItems];
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    do
    {
      v13 = 0;
      do
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v28 + 1) + 8 * v13) searchCategory];
        [v8 addObject:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v11);
  }

  v15 = [MEMORY[0x1E696F298] sharedService];
  v16 = [v7 title];
  v17 = [(MUBrowseCategoryViewController *)self mapItem];
  Current = CFAbsoluteTimeGetCurrent();
  v19 = [(MUBrowseCategoryViewController *)self placeCardTypeForAnalytics];
  v20 = [v8 copy];
  v21 = [v7 searchCategory];
  [v15 capturePlaceCardUserAction:2004 onTarget:201 eventValue:v16 mapItem:v17 timestamp:v19 placeCardType:v20 categoriesDisplayed:Current categorySelected:v21];

  v22 = [v7 searchCategory];

  if (v22)
  {
    v23 = [(MUBrowseCategoryViewController *)self delegate];
    v24 = objc_opt_respondsToSelector();

    if (v24)
    {
      v25 = [(MUBrowseCategoryViewController *)self delegate];
      v26 = [v7 searchCategory];
      [v25 categoryBrowseViewController:self didTapOnSearchCategory:v26];
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (NSArray)buttons
{
  v3 = [(MUBrowseCategoryViewController *)self collectionView];
  v4 = [v3 numberOfItemsInSection:0];

  if (v4 < 1)
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v5 = [(MUBrowseCategoryViewController *)self collectionView];
    [v5 layoutIfNeeded];

    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v4];
    for (i = 0; i != v4; ++i)
    {
      v8 = [MEMORY[0x1E696AC88] indexPathForRow:i inSection:0];
      v9 = [(MUBrowseCategoryViewController *)self collectionView];
      v10 = [v9 cellForItemAtIndexPath:v8];

      if (v10)
      {
        [v6 addObject:v10];
      }
    }

    v11 = [v6 copy];
  }

  return v11;
}

- (int)placeCardTypeForAnalytics
{
  v2 = [(MUBrowseCategoryViewController *)self mapItem];
  v3 = [v2 _browseCategory_placeCardType];

  return v3;
}

- (void)setPreferredCellSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (a3.width != self->_preferredCellSize.width || a3.height != self->_preferredCellSize.height)
  {
    self->_preferredCellSize = a3;
    v6 = [(MUBrowseCategoryViewController *)self collectionViewFlowLayout];
    [v6 setEstimatedItemSize:{width, height}];
  }
}

- (void)contentSizeCategoryDidChange:(id)a3
{
  [(MUBrowseCategoryViewController *)self collectionViewBottomPadding];
  v5 = -v4;
  v6 = [(MUBrowseCategoryViewController *)self collectionViewBottomConstraint];
  [v6 setConstant:v5];

  v8 = [(MUBrowseCategoryViewController *)self collectionView];
  v7 = [v8 collectionViewLayout];
  [v7 invalidateLayout];
}

- (void)viewDidLayoutSubviews
{
  v27 = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = MUBrowseCategoryViewController;
  [(MUBrowseCategoryViewController *)&v25 viewDidLayoutSubviews];
  v3 = [(MUBrowseCategoryViewController *)self collectionView];
  v4 = [v3 numberOfItemsInSection:0];

  if (v4 >= 1)
  {
    v5 = [(MUBrowseCategoryViewController *)self browseItems];
    v6 = [v5 firstObject];
    v7 = [v6 searchCategory];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = [(MUBrowseCategoryViewController *)self browseItems];
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      while (2)
      {
        v12 = 0;
        do
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v21 + 1) + 8 * v12) searchCategory];
          v14 = [v13 subcategories];
          v15 = [v14 count];

          if (v15)
          {

            goto LABEL_12;
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v13 = v7;
LABEL_12:

    v16 = [(MUBrowseCategoryViewController *)self didDisplayCategoriesNotificationName];
    [(MUBrowseCategoryViewController *)self _ppt_postNotificationName:v16 object:v13];

    v17 = [(MUBrowseCategoryViewController *)self delegate];
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      v19 = [(MUBrowseCategoryViewController *)self delegate];
      [v19 categoryBrowseViewControllerDidDisplayBrowseCategories:self];
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)viewWillLayoutSubviews
{
  v26.receiver = self;
  v26.super_class = MUBrowseCategoryViewController;
  [(MUBrowseCategoryViewController *)&v26 viewWillLayoutSubviews];
  if (viewWillLayoutSubviews_onceToken != -1)
  {
    dispatch_once(&viewWillLayoutSubviews_onceToken, &__block_literal_global_33);
  }

  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v4 = [(MUBrowseCategoryViewController *)self view];
  [v4 frame];
  v6 = v5;

  if (v6 <= 320.0)
  {
    v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD10]];

    v3 = v7;
  }

  v8 = [(MUBrowseCategoryViewController *)self view];
  [v8 layoutMargins];
  v10 = v9;
  v12 = v11;

  v13 = [(MUBrowseCategoryViewController *)self view];
  [v13 frame];
  Width = CGRectGetWidth(v27);

  v15 = [MEMORY[0x1E69DC668] sharedApplication];
  v16 = [v15 preferredContentSizeCategory];

  if ([v16 isEqualToString:*MEMORY[0x1E69DDC50]])
  {
    v17 = 85.0;
  }

  else if ([viewWillLayoutSubviews_accessibilitySizeCategories containsObject:v16])
  {
    [v3 pointSize];
    v17 = 110.0;
    if (v18 > 27.0)
    {
      v19 = [v3 fontWithSize:27.0];

      v3 = v19;
    }
  }

  else
  {
    v17 = (Width - (v12 + v10)) * 0.25 + -0.75;
  }

  v20 = [(MUBrowseCategoryViewController *)self preferredCellTitleLabelFont];
  if (![v20 isEqual:v3])
  {

    [(MUBrowseCategoryViewController *)self setPreferredCellSize:v17, 56.0];
    [(MUBrowseCategoryViewController *)self setPreferredCellTitleLabelFont:v3];
LABEL_16:
    v25 = [(MUBrowseCategoryViewController *)self collectionView];
    [v25 reloadData];

    goto LABEL_17;
  }

  [(MUBrowseCategoryViewController *)self preferredCellSize];
  v22 = v21;
  v24 = v23;

  [(MUBrowseCategoryViewController *)self setPreferredCellSize:v17, 56.0];
  [(MUBrowseCategoryViewController *)self setPreferredCellTitleLabelFont:v3];
  if (v22 != v17 || v24 != 56.0)
  {
    goto LABEL_16;
  }

LABEL_17:
}

void __56__MUBrowseCategoryViewController_viewWillLayoutSubviews__block_invoke()
{
  v5[5] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69DDC38];
  v5[0] = *MEMORY[0x1E69DDC40];
  v5[1] = v0;
  v1 = *MEMORY[0x1E69DDC28];
  v5[2] = *MEMORY[0x1E69DDC30];
  v5[3] = v1;
  v5[4] = *MEMORY[0x1E69DDC20];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:5];
  v3 = viewWillLayoutSubviews_accessibilitySizeCategories;
  viewWillLayoutSubviews_accessibilitySizeCategories = v2;

  v4 = *MEMORY[0x1E69E9840];
}

- (double)collectionViewBottomPadding
{
  v2 = [(MUBrowseCategoryViewController *)self disableBottomPadding];
  result = 0.0;
  if (!v2)
  {
    if (collectionViewBottomPadding_onceToken != -1)
    {
      dispatch_once(&collectionViewBottomPadding_onceToken, &__block_literal_global_12185);
    }

    v4 = collectionViewBottomPadding_sizeCategoriesForDefaultPadding;
    v5 = [MEMORY[0x1E69DC668] sharedApplication];
    v6 = [v5 preferredContentSizeCategory];
    LODWORD(v4) = [v4 containsObject:v6];

    result = 15.0;
    if (v4)
    {
      return 18.0;
    }
  }

  return result;
}

void __61__MUBrowseCategoryViewController_collectionViewBottomPadding__block_invoke()
{
  v6[7] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69DDC68];
  v6[0] = *MEMORY[0x1E69DDC90];
  v6[1] = v0;
  v1 = *MEMORY[0x1E69DDC78];
  v6[2] = *MEMORY[0x1E69DDC88];
  v6[3] = v1;
  v2 = *MEMORY[0x1E69DDC60];
  v6[4] = *MEMORY[0x1E69DDC70];
  v6[5] = v2;
  v6[6] = *MEMORY[0x1E69DDC58];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:7];
  v4 = collectionViewBottomPadding_sizeCategoriesForDefaultPadding;
  collectionViewBottomPadding_sizeCategoriesForDefaultPadding = v3;

  v5 = *MEMORY[0x1E69E9840];
}

- (void)setupCollectionView
{
  v51[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MUFixedToTopCollectionViewFlowLayout);
  [(MUBrowseCategoryViewController *)self setCollectionViewFlowLayout:v3];

  v4 = [(MUBrowseCategoryViewController *)self collectionViewFlowLayout];
  [v4 setScrollDirection:0];

  v5 = [(MUBrowseCategoryViewController *)self collectionViewFlowLayout];
  [v5 setMinimumLineSpacing:15.0];

  v6 = [(MUBrowseCategoryViewController *)self collectionViewFlowLayout];
  [v6 setMinimumInteritemSpacing:0.0];

  v7 = [MUBrowseCategoryCollectionView alloc];
  v8 = [(MUBrowseCategoryViewController *)self collectionViewFlowLayout];
  v9 = [(MUBrowseCategoryCollectionView *)v7 initWithFrame:v8 collectionViewLayout:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(MUBrowseCategoryViewController *)self setCollectionView:v9];

  v10 = [(MUBrowseCategoryViewController *)self collectionView];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = [(MUBrowseCategoryViewController *)self collectionView];
  [v11 setAccessibilityIdentifier:@"VenuesBrowseCategoryView"];

  v12 = [(MUBrowseCategoryViewController *)self view];
  v13 = [(MUBrowseCategoryViewController *)self collectionView];
  [v12 addSubview:v13];

  v14 = [MEMORY[0x1E69DC888] clearColor];
  v15 = [(MUBrowseCategoryViewController *)self collectionView];
  [v15 setBackgroundColor:v14];

  v16 = [(MUBrowseCategoryViewController *)self collectionView];
  [v16 setDelegate:self];

  v17 = [(MUBrowseCategoryViewController *)self collectionView];
  [v17 setDataSource:self];

  v18 = [(MUBrowseCategoryViewController *)self collectionView];
  v19 = objc_opt_class();
  v20 = +[MUBrowseCategoryCollectionViewCell reuseIdentifier];
  [v18 registerClass:v19 forCellWithReuseIdentifier:v20];

  v21 = [(MUBrowseCategoryViewController *)self collectionView];
  [v21 setScrollEnabled:0];

  v22 = [(MUBrowseCategoryViewController *)self collectionView];
  [v22 setClipsToBounds:0];

  v23 = [(MUBrowseCategoryViewController *)self collectionView];
  v24 = [v23 bottomAnchor];
  v25 = [(MUBrowseCategoryViewController *)self view];
  v26 = [v25 layoutMarginsGuide];
  v27 = [v26 bottomAnchor];
  [(MUBrowseCategoryViewController *)self collectionViewBottomPadding];
  v29 = [v24 constraintEqualToAnchor:v27 constant:-v28];
  [(MUBrowseCategoryViewController *)self setCollectionViewBottomConstraint:v29];

  v43 = MEMORY[0x1E696ACD8];
  v50 = [(MUBrowseCategoryViewController *)self collectionView];
  v48 = [v50 leadingAnchor];
  v49 = [(MUBrowseCategoryViewController *)self view];
  v47 = [v49 layoutMarginsGuide];
  v46 = [v47 leadingAnchor];
  v45 = [v48 constraintEqualToAnchor:v46];
  v51[0] = v45;
  v44 = [(MUBrowseCategoryViewController *)self collectionView];
  v41 = [v44 trailingAnchor];
  v42 = [(MUBrowseCategoryViewController *)self view];
  v30 = [v42 layoutMarginsGuide];
  v31 = [v30 trailingAnchor];
  v32 = [v41 constraintEqualToAnchor:v31];
  v51[1] = v32;
  v33 = [(MUBrowseCategoryViewController *)self collectionView];
  v34 = [v33 topAnchor];
  v35 = [(MUBrowseCategoryViewController *)self view];
  v36 = [v35 topAnchor];
  v37 = [v34 constraintEqualToAnchor:v36];
  v51[2] = v37;
  v38 = [(MUBrowseCategoryViewController *)self collectionViewBottomConstraint];
  v51[3] = v38;
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:4];
  [v43 activateConstraints:v39];

  v40 = *MEMORY[0x1E69E9840];
}

- (void)viewDidLoad
{
  v27 = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = MUBrowseCategoryViewController;
  [(MUBrowseCategoryViewController *)&v25 viewDidLoad];
  v3 = [(MUBrowseCategoryViewController *)self view];
  [v3 setPreservesSuperviewLayoutMargins:1];

  v4 = [(MUBrowseCategoryViewController *)self willStartDisplayCategoriesNotificationName];
  [(MUBrowseCategoryViewController *)self _ppt_postNotificationName:v4 object:0];

  v5 = objc_alloc(MEMORY[0x1E695DF70]);
  v6 = [(MUBrowseCategoryViewController *)self mapItem];
  v7 = [v6 _browseCategories];
  v8 = [v5 initWithCapacity:{objc_msgSend(v7, "count")}];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = [(MUBrowseCategoryViewController *)self mapItem];
  v10 = [v9 _browseCategories];

  v11 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      v14 = 0;
      do
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v21 + 1) + 8 * v14);
        v16 = [MUBrowseCategoryItem alloc];
        v17 = [(MUBrowseCategoryViewController *)self traitCollection];
        v18 = -[MUBrowseCategoryItem initWithCategory:nightMode:](v16, "initWithCategory:nightMode:", v15, [v17 userInterfaceStyle] == 2);
        [v8 addObject:v18];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v12);
  }

  v19 = [MEMORY[0x1E695DEC8] arrayWithArray:v8];
  [(MUBrowseCategoryViewController *)self setBrowseItems:v19];

  [(MUBrowseCategoryViewController *)self setupCollectionView];
  v20 = *MEMORY[0x1E69E9840];
}

- (MUBrowseCategoryViewController)initWithMapItem:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = MUBrowseCategoryViewController;
  v6 = [(MUBrowseCategoryViewController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapItem, a3);
    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 addObserver:v7 selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v7;
}

@end