@interface CNAutocompleteSuggestionsViewController
+ (id)os_log;
- (BOOL)isZoomedLayout;
- (BOOL)useAccessibleLayout;
- (CGRect)latestKeyboardFrame;
- (CGSize)avatarSize;
- (CNAutocompleteSuggestionsViewController)initWithOptions:(id)a3;
- (CNAutocompleteSuggestionsViewController)initWithSearchType:(unint64_t)a3;
- (CNAutocompleteSuggestionsViewControllerDelegate)delegate;
- (NSDirectionalEdgeInsets)additionalContentInsets;
- (id)compositionalLayout;
- (id)contactsForAvatarForRecipient:(id)a3;
- (id)selectedRecipientHandles;
- (id)unknownContactForRecipient:(id)a3;
- (void)adjustInsetsForKeyboardFrame:(CGRect)a3;
- (void)buildCollectionView;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)conformResultsForDeselection:(id)a3;
- (void)conformResultsForSelection;
- (void)consumeAutocompleteSearchResults:(id)a3 taskID:(id)a4;
- (void)dealloc;
- (void)fetchRecipients;
- (void)fetchRecipientsIfNeeded;
- (void)fetchSuggestedRecipientsWithCompletionBlock:(id)a3;
- (void)finishedTaskWithID:(id)a3;
- (void)imageForRecipient:(id)a3 imageUpdateBlock:(id)a4;
- (void)invalidateSelectedRecipients;
- (void)prepareForReuse;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)setAdditionalContentInset:(NSDirectionalEdgeInsets)a3;
- (void)setOtherRecipientAddresses:(id)a3;
- (void)setRecipients:(id)a3 animated:(BOOL)a4;
- (void)titleLabelTapped:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation CNAutocompleteSuggestionsViewController

+ (id)os_log
{
  if (os_log_cn_once_token_7 != -1)
  {
    +[CNAutocompleteSuggestionsViewController os_log];
  }

  v3 = os_log_cn_once_object_7;

  return v3;
}

uint64_t __49__CNAutocompleteSuggestionsViewController_os_log__block_invoke()
{
  os_log_cn_once_object_7 = os_log_create("com.apple.contacts.autocomplete.ui", "suggestions");

  return MEMORY[0x1EEE66BB8]();
}

- (CNAutocompleteSuggestionsViewController)initWithSearchType:(unint64_t)a3
{
  v5 = objc_alloc_init(CNAutocompleteSuggestionsViewControllerOptions);
  [(CNAutocompleteSuggestionsViewControllerOptions *)v5 setSearchType:a3];
  [(CNAutocompleteSuggestionsViewControllerOptions *)v5 setMaxNumberOfSuggestions:8];
  v6 = [(CNAutocompleteSuggestionsViewController *)self initWithOptions:v5];

  return v6;
}

- (CNAutocompleteSuggestionsViewController)initWithOptions:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CNAutocompleteSuggestionsViewController;
  v5 = [(CNAutocompleteSuggestionsViewController *)&v10 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [v4 copy];
    options = v5->_options;
    v5->_options = v6;

    v8 = v5;
  }

  return v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = [(CNAutocompleteSuggestionsViewController *)self keyboardWillShowNotificationObserver];
  [v3 removeObserver:v4];

  v5 = [(CNAutocompleteSuggestionsViewController *)self keyboardWillHideNotificationObserver];
  [v3 removeObserver:v5];

  v6.receiver = self;
  v6.super_class = CNAutocompleteSuggestionsViewController;
  [(CNAutocompleteSuggestionsViewController *)&v6 dealloc];
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = CNAutocompleteSuggestionsViewController;
  [(CNAutocompleteSuggestionsViewController *)&v17 viewDidLoad];
  v3 = [MEMORY[0x1E69DC888] clearColor];
  v4 = [(CNAutocompleteSuggestionsViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(CNAutocompleteSuggestionsViewController *)self view];
  [v5 setInsetsLayoutMarginsFromSafeArea:0];

  v6 = [(CNAutocompleteSuggestionsViewController *)self view];
  [v6 setClipsToBounds:1];

  [(CNAutocompleteSuggestionsViewController *)self buildCollectionView];
  [(CNAutocompleteSuggestionsViewController *)self setSuggestionPreWarmCompletionBlock:0];
  [(CNAutocompleteSuggestionsViewController *)self fetchRecipients];
  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  objc_initWeak(&location, self);
  v8 = *MEMORY[0x1E69DE080];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54__CNAutocompleteSuggestionsViewController_viewDidLoad__block_invoke;
  v14[3] = &unk_1E7CD1EA8;
  objc_copyWeak(&v15, &location);
  v9 = [v7 addObserverForName:v8 object:0 queue:0 usingBlock:v14];
  [(CNAutocompleteSuggestionsViewController *)self setKeyboardWillShowNotificationObserver:v9];

  v10 = *MEMORY[0x1E69DE078];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__CNAutocompleteSuggestionsViewController_viewDidLoad__block_invoke_2;
  v12[3] = &unk_1E7CD1EA8;
  objc_copyWeak(&v13, &location);
  v11 = [v7 addObserverForName:v10 object:0 queue:0 usingBlock:v12];
  [(CNAutocompleteSuggestionsViewController *)self setKeyboardWillHideNotificationObserver:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __54__CNAutocompleteSuggestionsViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 userInfo];

  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69DDFA0]];
  [v5 CGRectValue];
  [WeakRetained setLatestKeyboardFrame:?];

  [WeakRetained latestKeyboardFrame];
  [WeakRetained adjustInsetsForKeyboardFrame:?];
}

void __54__CNAutocompleteSuggestionsViewController_viewDidLoad__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 userInfo];

  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69DDFA0]];
  [v5 CGRectValue];
  [WeakRetained setLatestKeyboardFrame:?];

  [WeakRetained latestKeyboardFrame];
  [WeakRetained adjustInsetsForKeyboardFrame:?];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CNAutocompleteSuggestionsViewController;
  [(CNAutocompleteSuggestionsViewController *)&v4 viewWillAppear:a3];
  [(CNAutocompleteSuggestionsViewController *)self fetchRecipientsIfNeeded];
}

- (void)traitCollectionDidChange:(id)a3
{
  v12.receiver = self;
  v12.super_class = CNAutocompleteSuggestionsViewController;
  v4 = a3;
  [(CNAutocompleteSuggestionsViewController *)&v12 traitCollectionDidChange:v4];
  v5 = [(CNAutocompleteSuggestionsViewController *)self traitCollection:v12.receiver];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  if (v6 != v7)
  {
    v8 = [(CNAutocompleteSuggestionsViewController *)self compositionalLayout];
    [(CNAutocompleteSuggestionsViewController *)self setLayout:v8];

    v9 = [(CNAutocompleteSuggestionsViewController *)self collectionView];
    v10 = [(CNAutocompleteSuggestionsViewController *)self layout];
    [v9 setCollectionViewLayout:v10 animated:1];

    v11 = [(CNAutocompleteSuggestionsViewController *)self collectionView];
    [v11 reloadData];
  }
}

- (BOOL)useAccessibleLayout
{
  v2 = [(CNAutocompleteSuggestionsViewController *)self traitCollection];
  v3 = isTraitCollectionAccessible(v2);

  return v3;
}

- (BOOL)isZoomedLayout
{
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v2 scale];
  v4 = v3;
  v5 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v5 nativeScale];
  v7 = v4 < v6;

  return v7;
}

- (void)adjustInsetsForKeyboardFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v48 = [(CNAutocompleteSuggestionsViewController *)self collectionView];
  v8 = [v48 window];
  [v8 convertRect:0 fromWindow:{x, y, width, height}];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [v48 convertRect:0 fromView:{v10, v12, v14, v16}];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [v48 frame];
  v52.origin.x = v18;
  v52.origin.y = v20;
  v52.size.width = v22;
  v52.size.height = v24;
  v51 = CGRectIntersection(v50, v52);
  v25 = CGRectGetHeight(v51);
  v26 = [(CNAutocompleteSuggestionsViewController *)self collectionView];
  [v26 contentInset];
  v28 = v27;
  v30 = v29;
  v32 = v31;

  [(CNAutocompleteSuggestionsViewController *)self additionalContentInsets];
  v34 = v28 + v33;
  [(CNAutocompleteSuggestionsViewController *)self additionalContentInsets];
  v36 = v25 + v35;
  v37 = [(CNAutocompleteSuggestionsViewController *)self collectionView];
  [v37 setContentInset:{v34, v30, v36, v32}];

  v38 = [(CNAutocompleteSuggestionsViewController *)self collectionView];
  [v38 contentInset];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = [(CNAutocompleteSuggestionsViewController *)self collectionView];
  [v47 setVerticalScrollIndicatorInsets:{v40, v42, v44, v46}];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = CNAutocompleteSuggestionsViewController;
  v7 = a4;
  [(CNAutocompleteSuggestionsViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __94__CNAutocompleteSuggestionsViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E7CD1ED0;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

void __94__CNAutocompleteSuggestionsViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) collectionView];
  [v1 reloadData];
}

- (void)setAdditionalContentInset:(NSDirectionalEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.leading;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.trailing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_additionalContentInsets.top, v3), vceqq_f64(*&self->_additionalContentInsets.bottom, v4)))) & 1) == 0)
  {
    self->_additionalContentInsets = a3;
    [(CNAutocompleteSuggestionsViewController *)self latestKeyboardFrame];

    [(CNAutocompleteSuggestionsViewController *)self adjustInsetsForKeyboardFrame:?];
  }
}

- (void)titleLabelTapped:(id)a3
{
  v4 = [(CNAutocompleteSuggestionsViewController *)self delegate];
  [v4 suggestionsControllerTitleLabelWasTapped:self];
}

- (void)prepareForReuse
{
  [(CNAutocompleteSuggestionsViewController *)self setAdditionalContentInsets:*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)];
  [(CNAutocompleteSuggestionsViewController *)self setLatestKeyboardFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(CNAutocompleteSuggestionsViewController *)self latestKeyboardFrame];
  [(CNAutocompleteSuggestionsViewController *)self adjustInsetsForKeyboardFrame:?];
  [(CNAutocompleteSuggestionsViewController *)self setRecipients:0];

  [(CNAutocompleteSuggestionsViewController *)self setTaskID:0];
}

- (id)compositionalLayout
{
  v28[1] = *MEMORY[0x1E69E9840];
  v3 = [(CNAutocompleteSuggestionsViewController *)self useAccessibleLayout];
  if ([(CNAutocompleteSuggestionsViewController *)self useAccessibleLayout])
  {
    v4 = 96.0;
  }

  else if ([(CNAutocompleteSuggestionsViewController *)self isZoomedLayout])
  {
    v4 = 110.0;
  }

  else
  {
    v4 = 140.0;
  }

  v5 = 0.25;
  if (v3)
  {
    v5 = 1.0;
  }

  v6 = MEMORY[0x1E6995588];
  v7 = [MEMORY[0x1E6995558] fractionalWidthDimension:v5];
  v8 = [MEMORY[0x1E6995558] estimatedDimension:v4];
  v9 = [v6 sizeWithWidthDimension:v7 heightDimension:v8];

  v10 = MEMORY[0x1E6995588];
  v11 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v12 = [MEMORY[0x1E6995558] estimatedDimension:v4];
  v13 = [v10 sizeWithWidthDimension:v11 heightDimension:v12];

  v14 = [MEMORY[0x1E6995578] itemWithLayoutSize:v9];
  [v14 setContentInsets:{10.0, 5.0, 10.0, 5.0}];
  v15 = MEMORY[0x1E6995568];
  v28[0] = v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  v17 = [v15 horizontalGroupWithLayoutSize:v13 subitems:v16];

  v18 = [MEMORY[0x1E6995580] sectionWithGroup:v17];
  [v18 setContentInsets:{10.0, 10.0, 10.0, 10.0}];
  [v18 setInterGroupSpacing:0.0];
  v19 = MEMORY[0x1E6995588];
  v20 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v21 = [MEMORY[0x1E6995558] estimatedDimension:44.0];
  v22 = [v19 sizeWithWidthDimension:v20 heightDimension:v21];

  v23 = [MEMORY[0x1E6995548] boundarySupplementaryItemWithLayoutSize:v22 elementKind:*MEMORY[0x1E69DDC08] alignment:1];
  [v23 setContentInsets:{0.0, 3.0, 0.0, 3.0}];
  v27 = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
  [v18 setBoundarySupplementaryItems:v24];

  v25 = [objc_alloc(MEMORY[0x1E69DC808]) initWithSection:v18];

  return v25;
}

- (void)buildCollectionView
{
  v3 = [(CNAutocompleteSuggestionsViewController *)self compositionalLayout];
  [(CNAutocompleteSuggestionsViewController *)self setLayout:v3];

  v4 = objc_alloc(MEMORY[0x1E69DC7F0]);
  v5 = [(CNAutocompleteSuggestionsViewController *)self view];
  [v5 bounds];
  v7 = v6 + 0.0;
  v8 = [(CNAutocompleteSuggestionsViewController *)self view];
  [v8 bounds];
  v10 = v9;
  v11 = [(CNAutocompleteSuggestionsViewController *)self view];
  [v11 bounds];
  v13 = v12;
  v14 = [(CNAutocompleteSuggestionsViewController *)self view];
  [v14 bounds];
  v16 = v15;
  v17 = [(CNAutocompleteSuggestionsViewController *)self layout];
  v18 = [v4 initWithFrame:v17 collectionViewLayout:{v7, v10, v13, v16}];

  [v18 setDelegate:self];
  v19 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"ZKW_SUGGESTIONS" value:&stru_1F3002C60 table:@"Localized"];
  [v18 setAccessibilityLabel:v20];

  objc_initWeak(&location, self);
  v21 = objc_alloc(MEMORY[0x1E69DC820]);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __62__CNAutocompleteSuggestionsViewController_buildCollectionView__block_invoke;
  v31[3] = &unk_1E7CD1F20;
  objc_copyWeak(&v32, &location);
  v22 = [v21 initWithCollectionView:v18 cellProvider:v31];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __62__CNAutocompleteSuggestionsViewController_buildCollectionView__block_invoke_3;
  v29[3] = &unk_1E7CD1F48;
  objc_copyWeak(&v30, &location);
  [v22 setSupplementaryViewProvider:v29];
  [(CNAutocompleteSuggestionsViewController *)self setDiffableDataSource:v22];
  [v18 setDataSource:v22];
  [v18 setClipsToBounds:0];
  v23 = objc_opt_class();
  v24 = +[CNAutocompleteSuggestionsCell cellIdentifier];
  [v18 registerClass:v23 forCellWithReuseIdentifier:v24];

  v25 = objc_opt_class();
  v26 = +[CNAutocompleteSuggestionsViewSectionHeader reuseIdentifier];
  [v18 registerClass:v25 forSupplementaryViewOfKind:*MEMORY[0x1E69DDC08] withReuseIdentifier:v26];

  v27 = [MEMORY[0x1E69DC888] clearColor];
  [v18 setBackgroundColor:v27];

  [v18 setAlwaysBounceVertical:0];
  [v18 setShowsVerticalScrollIndicator:0];
  [v18 setShowsHorizontalScrollIndicator:0];
  [v18 setContentInsetAdjustmentBehavior:2];
  [v18 setAutomaticallyAdjustsScrollIndicatorInsets:0];
  v28 = [(CNAutocompleteSuggestionsViewController *)self view];
  [v28 addSubview:v18];

  [v18 setAutoresizingMask:18];
  [(CNAutocompleteSuggestionsViewController *)self setCollectionView:v18];
  objc_destroyWeak(&v30);

  objc_destroyWeak(&v32);
  objc_destroyWeak(&location);
}

id __62__CNAutocompleteSuggestionsViewController_buildCollectionView__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = +[CNAutocompleteSuggestionsCell cellIdentifier];
  v9 = [v6 dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:v5];

  v10 = [WeakRetained items];
  v11 = [v5 item];

  v12 = [v10 objectAtIndexedSubscript:v11];

  v13 = [v12 title];
  [v9 setDisplayString:v13];

  v14 = [v12 recipient];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __62__CNAutocompleteSuggestionsViewController_buildCollectionView__block_invoke_2;
  v17[3] = &unk_1E7CD1EF8;
  v15 = v9;
  v18 = v15;
  [WeakRetained imageForRecipient:v14 imageUpdateBlock:v17];

  return v15;
}

id __62__CNAutocompleteSuggestionsViewController_buildCollectionView__block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (*MEMORY[0x1E69DDC08] == v8)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v12 = +[CNAutocompleteSuggestionsViewSectionHeader reuseIdentifier];
    v10 = [v7 dequeueReusableSupplementaryViewOfKind:v8 withReuseIdentifier:v12 forIndexPath:v9];

    v13 = [WeakRetained suggestionsHeaderTitle];
    v14 = [v10 titleLabel];
    [v14 setText:v13];

    v15 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:WeakRetained action:sel_titleLabelTapped_];
    [v15 setNumberOfTapsRequired:1];
    [v10 addGestureRecognizer:v15];
    [v10 setUserInteractionEnabled:1];
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E69DC7E8]);
  }

  return v10;
}

- (void)fetchRecipientsIfNeeded
{
  v3 = [(CNAutocompleteSuggestionsViewController *)self recipients];

  if (!v3)
  {

    [(CNAutocompleteSuggestionsViewController *)self fetchRecipients];
  }
}

- (void)setOtherRecipientAddresses:(id)a3
{
  v5 = a3;
  if (([(NSArray *)self->_otherRecipientAddresses isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_otherRecipientAddresses, a3);
    if ([(CNAutocompleteSuggestionsViewController *)self isViewLoaded])
    {
      [(CNAutocompleteSuggestionsViewController *)self fetchRecipients];
    }
  }
}

- (void)fetchRecipients
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = [(CNAutocompleteSuggestionsViewController *)self taskID];

  if (v3)
  {
    v4 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B8106000, v4, OS_LOG_TYPE_INFO, "Suggestions fetchRecipients called while fetch already in flight, ignoring", buf, 2u);
    }
  }

  else
  {
    v5 = [(CNAutocompleteSuggestionsViewController *)self searchManager];

    if (!v5)
    {
      v6 = [CNAutocompleteSearchManager alloc];
      v7 = [(CNAutocompleteSuggestionsViewController *)self options];
      v8 = -[CNAutocompleteSearchManager initWithAutocompleteSearchType:](v6, "initWithAutocompleteSearchType:", [v7 searchType]);
      [(CNAutocompleteSuggestionsViewController *)self setSearchManager:v8];
    }

    v4 = [MEMORY[0x1E695DF70] array];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v9 = [(CNAutocompleteSuggestionsViewController *)self otherRecipientAddresses];
    v10 = [v9 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v30;
      do
      {
        v13 = 0;
        do
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [v4 addObject:*(*(&v29 + 1) + 8 * v13++)];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v11);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v14 = [(CNAutocompleteSuggestionsViewController *)self selectedRecipients];
    v15 = [v14 countByEnumeratingWithState:&v25 objects:v34 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v26;
      do
      {
        v18 = 0;
        do
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v25 + 1) + 8 * v18) address];
          [v4 addObject:v19];

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v25 objects:v34 count:16];
      }

      while (v16);
    }

    v20 = objc_alloc_init(MEMORY[0x1E6996330]);
    v21 = [v4 copy];
    [v20 setOtherAddressesAlreadyChosen:v21];

    v22 = [MEMORY[0x1E695DF70] array];
    [(CNAutocompleteSuggestionsViewController *)self setFetchedRecipients:v22];

    v23 = [(CNAutocompleteSuggestionsViewController *)self searchManager];
    v24 = [v23 searchForText:&stru_1F3002C60 withAutocompleteFetchContext:v20 consumer:self];
    [(CNAutocompleteSuggestionsViewController *)self setTaskID:v24];
  }
}

- (void)fetchSuggestedRecipientsWithCompletionBlock:(id)a3
{
  v4 = a3;
  [(CNAutocompleteSuggestionsViewController *)self setTaskID:&unk_1F300DE00];
  v5 = [v4 copy];

  [(CNAutocompleteSuggestionsViewController *)self setSuggestionPreWarmCompletionBlock:v5];

  [(CNAutocompleteSuggestionsViewController *)self fetchRecipients];
}

- (void)consumeAutocompleteSearchResults:(id)a3 taskID:(id)a4
{
  v15 = a3;
  v6 = a4;
  if ([v6 integerValue] == -1 && (-[CNAutocompleteSuggestionsViewController suggestionPreWarmCompletionBlock](self, "suggestionPreWarmCompletionBlock"), v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
  {
    v14 = [(CNAutocompleteSuggestionsViewController *)self suggestionPreWarmCompletionBlock];
    (v14)[2](v14, v15);

    [(CNAutocompleteSuggestionsViewController *)self setSuggestionPreWarmCompletionBlock:0];
  }

  else
  {
    v7 = [(CNAutocompleteSuggestionsViewController *)self taskID];
    v8 = [v7 isEqualToNumber:v6];

    if (v8)
    {
      v9 = [(CNAutocompleteSuggestionsViewController *)self fetchedRecipients];
      [v9 addObjectsFromArray:v15];

      v10 = [(CNAutocompleteSuggestionsViewController *)self fetchedRecipients];
      v11 = [v10 _cn_take:8];
      v12 = [v11 copy];
      [(CNAutocompleteSuggestionsViewController *)self setRecipients:v12];
    }
  }
}

- (void)finishedTaskWithID:(id)a3
{
  v10 = a3;
  v4 = [(CNAutocompleteSuggestionsViewController *)self taskID];
  if (v4)
  {
    v5 = v4;
    v6 = [(CNAutocompleteSuggestionsViewController *)self taskID];
    v7 = [v10 isEqualToNumber:v6];

    if (v7)
    {
      v8 = [(CNAutocompleteSuggestionsViewController *)self fetchedRecipients];
      v9 = [v8 count];

      if (!v9)
      {
        [(CNAutocompleteSuggestionsViewController *)self setRecipients:MEMORY[0x1E695E0F0]];
      }

      [(CNAutocompleteSuggestionsViewController *)self setTaskID:0];
    }
  }
}

- (void)setRecipients:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v14[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (self->_recipients != v7)
  {
    objc_storeStrong(&self->_recipients, a3);
    v8 = [(NSArray *)v7 _cn_map:&__block_literal_global_143];
    [(CNAutocompleteSuggestionsViewController *)self setItems:v8];

    v9 = objc_alloc_init(MEMORY[0x1E69955A0]);
    if ([(NSArray *)v7 count])
    {
      v14[0] = @"Main";
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
      [v9 appendSectionsWithIdentifiers:v10];

      v11 = [(CNAutocompleteSuggestionsViewController *)self items];
      [v9 appendItemsWithIdentifiers:v11];
    }

    v12 = [(CNAutocompleteSuggestionsViewController *)self diffableDataSource];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __66__CNAutocompleteSuggestionsViewController_setRecipients_animated___block_invoke_2;
    v13[3] = &unk_1E7CD1F90;
    v13[4] = self;
    [v12 applySnapshot:v9 animatingDifferences:v4 completion:v13];
  }

  [(CNAutocompleteSuggestionsViewController *)self setSuggestionsAreUpdating:0];
}

CNSuggestedRecipientItem *__66__CNAutocompleteSuggestionsViewController_setRecipients_animated___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[CNSuggestedRecipientItem alloc] initWithRecipient:v2];

  return v3;
}

- (CGSize)avatarSize
{
  v3 = [(CNAutocompleteSuggestionsViewController *)self useAccessibleLayout];
  v4 = [(CNAutocompleteSuggestionsViewController *)self view];
  [v4 bounds];
  Width = CGRectGetWidth(v12);

  if ([(CNAutocompleteSuggestionsViewController *)self useAccessibleLayout])
  {
    v6 = 60.0;
  }

  else
  {
    v7 = [(CNAutocompleteSuggestionsViewController *)self isZoomedLayout];
    v6 = 80.0;
    if (v7)
    {
      v6 = 60.0;
    }
  }

  v8 = 4.0;
  if (v3)
  {
    v8 = 1.0;
  }

  v9 = (Width + (v8 + 1.0) * -20.0) / v8;
  if (v6 >= v9)
  {
    v6 = v9;
  }

  v10 = v6;
  result.height = v10;
  result.width = v6;
  return result;
}

- (void)imageForRecipient:(id)a3 imageUpdateBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CNAutocompleteSuggestionsViewController *)self avatarRenderer];

  if (!v8)
  {
    v9 = objc_alloc(MEMORY[0x1E695D098]);
    v10 = [MEMORY[0x1E695D0A8] defaultSettingsWithCacheSize:8];
    v11 = [v9 initWithSettings:v10];
    [(CNAutocompleteSuggestionsViewController *)self setAvatarRenderer:v11];
  }

  [(CNAutocompleteSuggestionsViewController *)self avatarSize];
  v13 = v12;
  v15 = v14;
  v16 = [(CNAutocompleteSuggestionsViewController *)self view];
  v17 = [v16 window];
  v18 = [v17 screen];
  [v18 scale];
  v20 = v19;

  v21 = [(CNAutocompleteSuggestionsViewController *)self delegate];
  LOBYTE(v17) = objc_opt_respondsToSelector();

  if ((v17 & 1) == 0 || (v43[0] = MEMORY[0x1E69E9820], v43[1] = 3221225472, v43[2] = __78__CNAutocompleteSuggestionsViewController_imageForRecipient_imageUpdateBlock___block_invoke, v43[3] = &unk_1E7CD1FE0, v45 = v13, v46 = v15, v47 = v20, v44 = v7, v22 = MEMORY[0x1B8CB9350](v43), -[CNAutocompleteSuggestionsViewController delegate](self, "delegate"), v23 = objc_claimAutoreleasedReturnValue(), v24 = [v23 suggestionsController:self imageDataForRecipient:v6 imageUpdateBlock:v22], v23, v22, v44, (v24 & 1) == 0))
  {
    if ([v6 isGroup])
    {
      v25 = objc_alloc_init(CNAUIMessagesImagesFacade);
      v26 = [v6 autocompleteResult];
      v27 = [(CNAUIMessagesImagesFacade *)v25 imageForResult:v26];

      if (v27)
      {
        v28 = [CNUIImage resizeImage:v27 toFitWidth:v13 scale:v20];

        v29 = [MEMORY[0x1E69966E8] currentEnvironment];
        v30 = [v29 schedulerProvider];
        v31 = [v30 mainThreadScheduler];
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __78__CNAutocompleteSuggestionsViewController_imageForRecipient_imageUpdateBlock___block_invoke_3;
        v40[3] = &unk_1E7CD1FB8;
        v32 = &v42;
        v41 = v28;
        v42 = v7;
        v33 = v28;
        [v31 performBlock:v40];

        v34 = v41;
LABEL_10:

        goto LABEL_11;
      }
    }

    v25 = [(CNAutocompleteSuggestionsViewController *)self contactsForAvatarForRecipient:v6];
    v35 = [(CNAutocompleteSuggestionsViewController *)self traitCollection];
    v36 = [v35 layoutDirection] == 1;

    v33 = [MEMORY[0x1E695D0B0] scopeWithPointSize:v36 scale:0 rightToLeft:v13 style:{v15, v20}];
    v34 = [(CNAutocompleteSuggestionsViewController *)self avatarRenderer];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __78__CNAutocompleteSuggestionsViewController_imageForRecipient_imageUpdateBlock___block_invoke_4;
    v38[3] = &unk_1E7CD2008;
    v32 = &v39;
    v39 = v7;
    v37 = [v34 renderAvatarsForContacts:v25 scope:v33 imageHandler:v38];
    goto LABEL_10;
  }

LABEL_11:
}

void __78__CNAutocompleteSuggestionsViewController_imageForRecipient_imageUpdateBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E69DCAB8] imageWithData:a2];
  v4 = [CNUIImage resizeImage:v3 toFitWidth:*(a1 + 40) scale:*(a1 + 56)];

  v5 = [MEMORY[0x1E69966E8] currentEnvironment];
  v6 = [v5 schedulerProvider];
  v7 = [v6 mainThreadScheduler];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78__CNAutocompleteSuggestionsViewController_imageForRecipient_imageUpdateBlock___block_invoke_2;
  v10[3] = &unk_1E7CD1FB8;
  v8 = *(a1 + 32);
  v11 = v4;
  v12 = v8;
  v9 = v4;
  [v7 performBlock:v10];
}

void __78__CNAutocompleteSuggestionsViewController_imageForRecipient_imageUpdateBlock___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69966E8] currentEnvironment];
  v5 = [v4 schedulerProvider];
  v6 = [v5 mainThreadScheduler];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __78__CNAutocompleteSuggestionsViewController_imageForRecipient_imageUpdateBlock___block_invoke_5;
  v9[3] = &unk_1E7CD1FB8;
  v7 = *(a1 + 32);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  [v6 performBlock:v9];
}

- (id)contactsForAvatarForRecipient:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695CD58]);
  v17[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];

  if (v4)
  {
    if ([v4 isGroup])
    {
      v7 = [v4 children];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __73__CNAutocompleteSuggestionsViewController_contactsForAvatarForRecipient___block_invoke;
      v14[3] = &unk_1E7CD2030;
      v14[4] = self;
      v8 = [v7 _cn_map:v14];
    }

    else
    {
      v9 = [MEMORY[0x1E695D098] descriptorForRequiredKeys];
      v16 = v9;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
      v7 = [v4 contactWithKeysToFetch:v10];

      if (!v7)
      {
        v7 = [(CNAutocompleteSuggestionsViewController *)self unknownContactForRecipient:v4];
      }

      v15 = v7;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
    }

    v11 = v8;

    v6 = v11;
  }

  v12 = v6;

  return v6;
}

id __73__CNAutocompleteSuggestionsViewController_contactsForAvatarForRecipient___block_invoke(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695D098] descriptorForRequiredKeys];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v6 = [v3 contactWithKeysToFetch:v5];

  if (!v6)
  {
    v6 = [*(a1 + 32) unknownContactForRecipient:v3];
  }

  return v6;
}

- (id)unknownContactForRecipient:(id)a3
{
  v22[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695CF18]);
  v5 = [v3 compositeName];
  v6 = [v3 address];
  v7 = [v5 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
    v8 = MEMORY[0x1E6996790];
    v9 = [v3 displayString];
    v10 = [v8 componentsFromString:v9];

    v11 = [v10 givenName];
    [v4 setGivenName:v11];

    v12 = [v10 familyName];
    [v4 setFamilyName:v12];
  }

  if ([v3 kind] == 1)
  {
    v13 = MEMORY[0x1E695CF50];
    v14 = [v3 normalizedAddress];
    v15 = [v13 phoneNumberWithStringValue:v14];

    v16 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:0 value:v15];
    v22[0] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    [v4 setPhoneNumbers:v17];
  }

  else
  {
    if ([v3 kind])
    {
      goto LABEL_8;
    }

    v18 = MEMORY[0x1E695CEE0];
    v19 = [v3 normalizedAddress];
    v15 = [v18 labeledValueWithLabel:0 value:v19];

    v21 = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    [v4 setEmailAddresses:v16];
  }

LABEL_8:

  return v4;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(CNAutocompleteSuggestionsViewController *)self items];
  v10 = [v6 objectAtIndexedSubscript:{objc_msgSend(v5, "item")}];

  [v10 setIsSelected:1];
  v7 = [(CNAutocompleteSuggestionsViewController *)self delegate];
  v8 = [v10 recipient];
  [v7 suggestionsController:self didSelectRecipient:v8];

  v9 = [(CNAutocompleteSuggestionsViewController *)self collectionView];
  [v9 deselectItemAtIndexPath:v5 animated:1];
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = [(CNAutocompleteSuggestionsViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CNAutocompleteSuggestionsViewController *)self delegate];
    [v6 suggestionsControllerWillBeginScroll:self];
  }
}

- (void)invalidateSelectedRecipients
{
  v3 = [(CNAutocompleteSuggestionsViewController *)self suggestionsFetchDebounceTimer];

  if (v3)
  {
    v4 = [(CNAutocompleteSuggestionsViewController *)self suggestionsFetchDebounceTimer];
    dispatch_source_cancel(v4);

    [(CNAutocompleteSuggestionsViewController *)self setSuggestionsFetchDebounceTimer:0];
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__CNAutocompleteSuggestionsViewController_invalidateSelectedRecipients__block_invoke;
  v6[3] = &unk_1E7CD1F90;
  v6[4] = self;
  v5 = CreateSuggestionsFetchDebounceDispatchTimer(MEMORY[0x1E69E96A0], v6, 0.2);
  [(CNAutocompleteSuggestionsViewController *)self setSuggestionsFetchDebounceTimer:v5];
}

void __71__CNAutocompleteSuggestionsViewController_invalidateSelectedRecipients__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setSuggestionsAreUpdating:1];
  v2 = [*(a1 + 32) delegate];
  v3 = [v2 selectedRecipientsForSuggestionsController:*(a1 + 32)];

  [*(a1 + 32) setSelectedRecipients:v3];
  [*(a1 + 32) fetchRecipients];
}

- (id)selectedRecipientHandles
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(CNAutocompleteSuggestionsViewController *)self delegate];
  v4 = [v3 selectedRecipientsForSuggestionsController:self];

  v5 = [MEMORY[0x1E695DFA8] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * i) normalizedAddress];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)conformResultsForSelection
{
  v3 = [(CNAutocompleteSuggestionsViewController *)self selectedRecipientHandles];
  v4 = [(CNAutocompleteSuggestionsViewController *)self items];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__CNAutocompleteSuggestionsViewController_conformResultsForSelection__block_invoke;
  v6[3] = &unk_1E7CD2058;
  v7 = v3;
  v8 = self;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

void __69__CNAutocompleteSuggestionsViewController_conformResultsForSelection__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  v5 = [v8 isSelectedForHandles:*(a1 + 32)];
  if (([v8 isSelected] & 1) == 0 && v5)
  {
    [v8 setIsSelected:1];
    v6 = [*(a1 + 40) collectionView];
    v7 = [MEMORY[0x1E696AC88] indexPathForItem:a3 inSection:0];
    [v6 selectItemAtIndexPath:v7 animated:1 scrollPosition:0];
  }
}

- (void)conformResultsForDeselection:(id)a3
{
  v4 = a3;
  v5 = [(CNAutocompleteSuggestionsViewController *)self items];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__CNAutocompleteSuggestionsViewController_conformResultsForDeselection___block_invoke;
  v7[3] = &unk_1E7CD2058;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v7];
}

void __72__CNAutocompleteSuggestionsViewController_conformResultsForDeselection___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  v5 = [*(a1 + 32) handles];
  v6 = [v12 shouldDeselectForHandles:v5];

  if ([v12 isSelected] && v6)
  {
    [v12 setIsSelected:0];
    v7 = [*(a1 + 40) delegate];
    v8 = *(a1 + 40);
    v9 = [v12 recipient];
    [v7 suggestionsController:v8 didDeselectRecipient:v9];

    v10 = [*(a1 + 40) collectionView];
    v11 = [MEMORY[0x1E696AC88] indexPathForItem:a3 inSection:0];
    [v10 deselectItemAtIndexPath:v11 animated:1];
  }
}

- (CNAutocompleteSuggestionsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSDirectionalEdgeInsets)additionalContentInsets
{
  top = self->_additionalContentInsets.top;
  leading = self->_additionalContentInsets.leading;
  bottom = self->_additionalContentInsets.bottom;
  trailing = self->_additionalContentInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (CGRect)latestKeyboardFrame
{
  x = self->_latestKeyboardFrame.origin.x;
  y = self->_latestKeyboardFrame.origin.y;
  width = self->_latestKeyboardFrame.size.width;
  height = self->_latestKeyboardFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end