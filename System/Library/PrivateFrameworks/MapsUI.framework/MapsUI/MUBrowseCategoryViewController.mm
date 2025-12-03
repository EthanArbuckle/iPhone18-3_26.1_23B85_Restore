@interface MUBrowseCategoryViewController
- (CGSize)preferredCellSize;
- (MUBrowseCategoryViewController)initWithMapItem:(id)item;
- (MUBrowseCategoryViewControllerDelegate)delegate;
- (NSArray)buttons;
- (double)collectionViewBottomPadding;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int)placeCardTypeForAnalytics;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)_ppt_postNotificationName:(id)name object:(id)object;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)contentSizeCategoryDidChange:(id)change;
- (void)setPreferredCellSize:(CGSize)size;
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

- (void)_ppt_postNotificationName:(id)name object:(id)object
{
  v5 = MEMORY[0x1E696AD88];
  objectCopy = object;
  nameCopy = name;
  defaultCenter = [v5 defaultCenter];
  [defaultCenter postNotificationName:nameCopy object:objectCopy];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[MUBrowseCategoryCollectionViewCell reuseIdentifier];
  v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:pathCopy];

  [(MUBrowseCategoryViewController *)self preferredCellSize];
  [v9 setPreferredSize:?];
  preferredCellTitleLabelFont = [(MUBrowseCategoryViewController *)self preferredCellTitleLabelFont];
  [v9 setPreferredTitleLabelFont:preferredCellTitleLabelFont];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [v9 setTitleLabelTextColor:labelColor];

  browseItems = [(MUBrowseCategoryViewController *)self browseItems];
  v13 = [pathCopy row];

  v14 = [browseItems objectAtIndex:v13];
  [v9 setBrowseItem:v14];

  return v9;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(MUBrowseCategoryViewController *)self browseItems:view];
  v5 = [v4 count];

  return v5;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v33 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  browseItems = [(MUBrowseCategoryViewController *)self browseItems];
  v7 = [browseItems objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  browseItems2 = [(MUBrowseCategoryViewController *)self browseItems];
  v10 = [browseItems2 countByEnumeratingWithState:&v28 objects:v32 count:16];
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
          objc_enumerationMutation(browseItems2);
        }

        searchCategory = [*(*(&v28 + 1) + 8 * v13) searchCategory];
        [v8 addObject:searchCategory];

        ++v13;
      }

      while (v11 != v13);
      v11 = [browseItems2 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v11);
  }

  mEMORY[0x1E696F298] = [MEMORY[0x1E696F298] sharedService];
  title = [v7 title];
  mapItem = [(MUBrowseCategoryViewController *)self mapItem];
  Current = CFAbsoluteTimeGetCurrent();
  placeCardTypeForAnalytics = [(MUBrowseCategoryViewController *)self placeCardTypeForAnalytics];
  v20 = [v8 copy];
  searchCategory2 = [v7 searchCategory];
  [mEMORY[0x1E696F298] capturePlaceCardUserAction:2004 onTarget:201 eventValue:title mapItem:mapItem timestamp:placeCardTypeForAnalytics placeCardType:v20 categoriesDisplayed:Current categorySelected:searchCategory2];

  searchCategory3 = [v7 searchCategory];

  if (searchCategory3)
  {
    delegate = [(MUBrowseCategoryViewController *)self delegate];
    v24 = objc_opt_respondsToSelector();

    if (v24)
    {
      delegate2 = [(MUBrowseCategoryViewController *)self delegate];
      searchCategory4 = [v7 searchCategory];
      [delegate2 categoryBrowseViewController:self didTapOnSearchCategory:searchCategory4];
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (NSArray)buttons
{
  collectionView = [(MUBrowseCategoryViewController *)self collectionView];
  v4 = [collectionView numberOfItemsInSection:0];

  if (v4 < 1)
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  else
  {
    collectionView2 = [(MUBrowseCategoryViewController *)self collectionView];
    [collectionView2 layoutIfNeeded];

    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v4];
    for (i = 0; i != v4; ++i)
    {
      v8 = [MEMORY[0x1E696AC88] indexPathForRow:i inSection:0];
      collectionView3 = [(MUBrowseCategoryViewController *)self collectionView];
      v10 = [collectionView3 cellForItemAtIndexPath:v8];

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
  mapItem = [(MUBrowseCategoryViewController *)self mapItem];
  _browseCategory_placeCardType = [mapItem _browseCategory_placeCardType];

  return _browseCategory_placeCardType;
}

- (void)setPreferredCellSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (size.width != self->_preferredCellSize.width || size.height != self->_preferredCellSize.height)
  {
    self->_preferredCellSize = size;
    collectionViewFlowLayout = [(MUBrowseCategoryViewController *)self collectionViewFlowLayout];
    [collectionViewFlowLayout setEstimatedItemSize:{width, height}];
  }
}

- (void)contentSizeCategoryDidChange:(id)change
{
  [(MUBrowseCategoryViewController *)self collectionViewBottomPadding];
  v5 = -v4;
  collectionViewBottomConstraint = [(MUBrowseCategoryViewController *)self collectionViewBottomConstraint];
  [collectionViewBottomConstraint setConstant:v5];

  collectionView = [(MUBrowseCategoryViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  [collectionViewLayout invalidateLayout];
}

- (void)viewDidLayoutSubviews
{
  v27 = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = MUBrowseCategoryViewController;
  [(MUBrowseCategoryViewController *)&v25 viewDidLayoutSubviews];
  collectionView = [(MUBrowseCategoryViewController *)self collectionView];
  v4 = [collectionView numberOfItemsInSection:0];

  if (v4 >= 1)
  {
    browseItems = [(MUBrowseCategoryViewController *)self browseItems];
    firstObject = [browseItems firstObject];
    searchCategory = [firstObject searchCategory];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    browseItems2 = [(MUBrowseCategoryViewController *)self browseItems];
    v9 = [browseItems2 countByEnumeratingWithState:&v21 objects:v26 count:16];
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
            objc_enumerationMutation(browseItems2);
          }

          searchCategory2 = [*(*(&v21 + 1) + 8 * v12) searchCategory];
          subcategories = [searchCategory2 subcategories];
          v15 = [subcategories count];

          if (v15)
          {

            goto LABEL_12;
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [browseItems2 countByEnumeratingWithState:&v21 objects:v26 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    searchCategory2 = searchCategory;
LABEL_12:

    didDisplayCategoriesNotificationName = [(MUBrowseCategoryViewController *)self didDisplayCategoriesNotificationName];
    [(MUBrowseCategoryViewController *)self _ppt_postNotificationName:didDisplayCategoriesNotificationName object:searchCategory2];

    delegate = [(MUBrowseCategoryViewController *)self delegate];
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      delegate2 = [(MUBrowseCategoryViewController *)self delegate];
      [delegate2 categoryBrowseViewControllerDidDisplayBrowseCategories:self];
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
  view = [(MUBrowseCategoryViewController *)self view];
  [view frame];
  v6 = v5;

  if (v6 <= 320.0)
  {
    v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD10]];

    v3 = v7;
  }

  view2 = [(MUBrowseCategoryViewController *)self view];
  [view2 layoutMargins];
  v10 = v9;
  v12 = v11;

  view3 = [(MUBrowseCategoryViewController *)self view];
  [view3 frame];
  Width = CGRectGetWidth(v27);

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];

  if ([preferredContentSizeCategory isEqualToString:*MEMORY[0x1E69DDC50]])
  {
    v17 = 85.0;
  }

  else if ([viewWillLayoutSubviews_accessibilitySizeCategories containsObject:preferredContentSizeCategory])
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

  preferredCellTitleLabelFont = [(MUBrowseCategoryViewController *)self preferredCellTitleLabelFont];
  if (![preferredCellTitleLabelFont isEqual:v3])
  {

    [(MUBrowseCategoryViewController *)self setPreferredCellSize:v17, 56.0];
    [(MUBrowseCategoryViewController *)self setPreferredCellTitleLabelFont:v3];
LABEL_16:
    collectionView = [(MUBrowseCategoryViewController *)self collectionView];
    [collectionView reloadData];

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
  disableBottomPadding = [(MUBrowseCategoryViewController *)self disableBottomPadding];
  result = 0.0;
  if (!disableBottomPadding)
  {
    if (collectionViewBottomPadding_onceToken != -1)
    {
      dispatch_once(&collectionViewBottomPadding_onceToken, &__block_literal_global_12185);
    }

    v4 = collectionViewBottomPadding_sizeCategoriesForDefaultPadding;
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];
    LODWORD(v4) = [v4 containsObject:preferredContentSizeCategory];

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

  collectionViewFlowLayout = [(MUBrowseCategoryViewController *)self collectionViewFlowLayout];
  [collectionViewFlowLayout setScrollDirection:0];

  collectionViewFlowLayout2 = [(MUBrowseCategoryViewController *)self collectionViewFlowLayout];
  [collectionViewFlowLayout2 setMinimumLineSpacing:15.0];

  collectionViewFlowLayout3 = [(MUBrowseCategoryViewController *)self collectionViewFlowLayout];
  [collectionViewFlowLayout3 setMinimumInteritemSpacing:0.0];

  v7 = [MUBrowseCategoryCollectionView alloc];
  collectionViewFlowLayout4 = [(MUBrowseCategoryViewController *)self collectionViewFlowLayout];
  v9 = [(MUBrowseCategoryCollectionView *)v7 initWithFrame:collectionViewFlowLayout4 collectionViewLayout:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(MUBrowseCategoryViewController *)self setCollectionView:v9];

  collectionView = [(MUBrowseCategoryViewController *)self collectionView];
  [collectionView setTranslatesAutoresizingMaskIntoConstraints:0];

  collectionView2 = [(MUBrowseCategoryViewController *)self collectionView];
  [collectionView2 setAccessibilityIdentifier:@"VenuesBrowseCategoryView"];

  view = [(MUBrowseCategoryViewController *)self view];
  collectionView3 = [(MUBrowseCategoryViewController *)self collectionView];
  [view addSubview:collectionView3];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  collectionView4 = [(MUBrowseCategoryViewController *)self collectionView];
  [collectionView4 setBackgroundColor:clearColor];

  collectionView5 = [(MUBrowseCategoryViewController *)self collectionView];
  [collectionView5 setDelegate:self];

  collectionView6 = [(MUBrowseCategoryViewController *)self collectionView];
  [collectionView6 setDataSource:self];

  collectionView7 = [(MUBrowseCategoryViewController *)self collectionView];
  v19 = objc_opt_class();
  v20 = +[MUBrowseCategoryCollectionViewCell reuseIdentifier];
  [collectionView7 registerClass:v19 forCellWithReuseIdentifier:v20];

  collectionView8 = [(MUBrowseCategoryViewController *)self collectionView];
  [collectionView8 setScrollEnabled:0];

  collectionView9 = [(MUBrowseCategoryViewController *)self collectionView];
  [collectionView9 setClipsToBounds:0];

  collectionView10 = [(MUBrowseCategoryViewController *)self collectionView];
  bottomAnchor = [collectionView10 bottomAnchor];
  view2 = [(MUBrowseCategoryViewController *)self view];
  layoutMarginsGuide = [view2 layoutMarginsGuide];
  bottomAnchor2 = [layoutMarginsGuide bottomAnchor];
  [(MUBrowseCategoryViewController *)self collectionViewBottomPadding];
  v29 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v28];
  [(MUBrowseCategoryViewController *)self setCollectionViewBottomConstraint:v29];

  v43 = MEMORY[0x1E696ACD8];
  collectionView11 = [(MUBrowseCategoryViewController *)self collectionView];
  leadingAnchor = [collectionView11 leadingAnchor];
  view3 = [(MUBrowseCategoryViewController *)self view];
  layoutMarginsGuide2 = [view3 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide2 leadingAnchor];
  v45 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v51[0] = v45;
  collectionView12 = [(MUBrowseCategoryViewController *)self collectionView];
  trailingAnchor = [collectionView12 trailingAnchor];
  view4 = [(MUBrowseCategoryViewController *)self view];
  layoutMarginsGuide3 = [view4 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide3 trailingAnchor];
  v32 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v51[1] = v32;
  collectionView13 = [(MUBrowseCategoryViewController *)self collectionView];
  topAnchor = [collectionView13 topAnchor];
  view5 = [(MUBrowseCategoryViewController *)self view];
  topAnchor2 = [view5 topAnchor];
  v37 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v51[2] = v37;
  collectionViewBottomConstraint = [(MUBrowseCategoryViewController *)self collectionViewBottomConstraint];
  v51[3] = collectionViewBottomConstraint;
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
  view = [(MUBrowseCategoryViewController *)self view];
  [view setPreservesSuperviewLayoutMargins:1];

  willStartDisplayCategoriesNotificationName = [(MUBrowseCategoryViewController *)self willStartDisplayCategoriesNotificationName];
  [(MUBrowseCategoryViewController *)self _ppt_postNotificationName:willStartDisplayCategoriesNotificationName object:0];

  v5 = objc_alloc(MEMORY[0x1E695DF70]);
  mapItem = [(MUBrowseCategoryViewController *)self mapItem];
  _browseCategories = [mapItem _browseCategories];
  v8 = [v5 initWithCapacity:{objc_msgSend(_browseCategories, "count")}];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  mapItem2 = [(MUBrowseCategoryViewController *)self mapItem];
  _browseCategories2 = [mapItem2 _browseCategories];

  v11 = [_browseCategories2 countByEnumeratingWithState:&v21 objects:v26 count:16];
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
          objc_enumerationMutation(_browseCategories2);
        }

        v15 = *(*(&v21 + 1) + 8 * v14);
        v16 = [MUBrowseCategoryItem alloc];
        traitCollection = [(MUBrowseCategoryViewController *)self traitCollection];
        v18 = -[MUBrowseCategoryItem initWithCategory:nightMode:](v16, "initWithCategory:nightMode:", v15, [traitCollection userInterfaceStyle] == 2);
        [v8 addObject:v18];

        ++v14;
      }

      while (v12 != v14);
      v12 = [_browseCategories2 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v12);
  }

  v19 = [MEMORY[0x1E695DEC8] arrayWithArray:v8];
  [(MUBrowseCategoryViewController *)self setBrowseItems:v19];

  [(MUBrowseCategoryViewController *)self setupCollectionView];
  v20 = *MEMORY[0x1E69E9840];
}

- (MUBrowseCategoryViewController)initWithMapItem:(id)item
{
  itemCopy = item;
  v10.receiver = self;
  v10.super_class = MUBrowseCategoryViewController;
  v6 = [(MUBrowseCategoryViewController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapItem, item);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v7;
}

@end