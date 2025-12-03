@interface CNAutocompleteSuggestionsViewController
+ (id)os_log;
- (BOOL)isZoomedLayout;
- (BOOL)useAccessibleLayout;
- (CGRect)latestKeyboardFrame;
- (CGSize)avatarSize;
- (CNAutocompleteSuggestionsViewController)initWithOptions:(id)options;
- (CNAutocompleteSuggestionsViewController)initWithSearchType:(unint64_t)type;
- (CNAutocompleteSuggestionsViewControllerDelegate)delegate;
- (NSDirectionalEdgeInsets)additionalContentInsets;
- (id)compositionalLayout;
- (id)contactsForAvatarForRecipient:(id)recipient;
- (id)selectedRecipientHandles;
- (id)unknownContactForRecipient:(id)recipient;
- (void)adjustInsetsForKeyboardFrame:(CGRect)frame;
- (void)buildCollectionView;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)conformResultsForDeselection:(id)deselection;
- (void)conformResultsForSelection;
- (void)consumeAutocompleteSearchResults:(id)results taskID:(id)d;
- (void)dealloc;
- (void)fetchRecipients;
- (void)fetchRecipientsIfNeeded;
- (void)fetchSuggestedRecipientsWithCompletionBlock:(id)block;
- (void)finishedTaskWithID:(id)d;
- (void)imageForRecipient:(id)recipient imageUpdateBlock:(id)block;
- (void)invalidateSelectedRecipients;
- (void)prepareForReuse;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)setAdditionalContentInset:(NSDirectionalEdgeInsets)inset;
- (void)setOtherRecipientAddresses:(id)addresses;
- (void)setRecipients:(id)recipients animated:(BOOL)animated;
- (void)titleLabelTapped:(id)tapped;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
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

- (CNAutocompleteSuggestionsViewController)initWithSearchType:(unint64_t)type
{
  v5 = objc_alloc_init(CNAutocompleteSuggestionsViewControllerOptions);
  [(CNAutocompleteSuggestionsViewControllerOptions *)v5 setSearchType:type];
  [(CNAutocompleteSuggestionsViewControllerOptions *)v5 setMaxNumberOfSuggestions:8];
  v6 = [(CNAutocompleteSuggestionsViewController *)self initWithOptions:v5];

  return v6;
}

- (CNAutocompleteSuggestionsViewController)initWithOptions:(id)options
{
  optionsCopy = options;
  v10.receiver = self;
  v10.super_class = CNAutocompleteSuggestionsViewController;
  v5 = [(CNAutocompleteSuggestionsViewController *)&v10 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [optionsCopy copy];
    options = v5->_options;
    v5->_options = v6;

    v8 = v5;
  }

  return v5;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  keyboardWillShowNotificationObserver = [(CNAutocompleteSuggestionsViewController *)self keyboardWillShowNotificationObserver];
  [defaultCenter removeObserver:keyboardWillShowNotificationObserver];

  keyboardWillHideNotificationObserver = [(CNAutocompleteSuggestionsViewController *)self keyboardWillHideNotificationObserver];
  [defaultCenter removeObserver:keyboardWillHideNotificationObserver];

  v6.receiver = self;
  v6.super_class = CNAutocompleteSuggestionsViewController;
  [(CNAutocompleteSuggestionsViewController *)&v6 dealloc];
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = CNAutocompleteSuggestionsViewController;
  [(CNAutocompleteSuggestionsViewController *)&v17 viewDidLoad];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  view = [(CNAutocompleteSuggestionsViewController *)self view];
  [view setBackgroundColor:clearColor];

  view2 = [(CNAutocompleteSuggestionsViewController *)self view];
  [view2 setInsetsLayoutMarginsFromSafeArea:0];

  view3 = [(CNAutocompleteSuggestionsViewController *)self view];
  [view3 setClipsToBounds:1];

  [(CNAutocompleteSuggestionsViewController *)self buildCollectionView];
  [(CNAutocompleteSuggestionsViewController *)self setSuggestionPreWarmCompletionBlock:0];
  [(CNAutocompleteSuggestionsViewController *)self fetchRecipients];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  objc_initWeak(&location, self);
  v8 = *MEMORY[0x1E69DE080];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54__CNAutocompleteSuggestionsViewController_viewDidLoad__block_invoke;
  v14[3] = &unk_1E7CD1EA8;
  objc_copyWeak(&v15, &location);
  v9 = [defaultCenter addObserverForName:v8 object:0 queue:0 usingBlock:v14];
  [(CNAutocompleteSuggestionsViewController *)self setKeyboardWillShowNotificationObserver:v9];

  v10 = *MEMORY[0x1E69DE078];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__CNAutocompleteSuggestionsViewController_viewDidLoad__block_invoke_2;
  v12[3] = &unk_1E7CD1EA8;
  objc_copyWeak(&v13, &location);
  v11 = [defaultCenter addObserverForName:v10 object:0 queue:0 usingBlock:v12];
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

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CNAutocompleteSuggestionsViewController;
  [(CNAutocompleteSuggestionsViewController *)&v4 viewWillAppear:appear];
  [(CNAutocompleteSuggestionsViewController *)self fetchRecipientsIfNeeded];
}

- (void)traitCollectionDidChange:(id)change
{
  v12.receiver = self;
  v12.super_class = CNAutocompleteSuggestionsViewController;
  changeCopy = change;
  [(CNAutocompleteSuggestionsViewController *)&v12 traitCollectionDidChange:changeCopy];
  v5 = [(CNAutocompleteSuggestionsViewController *)self traitCollection:v12.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    compositionalLayout = [(CNAutocompleteSuggestionsViewController *)self compositionalLayout];
    [(CNAutocompleteSuggestionsViewController *)self setLayout:compositionalLayout];

    collectionView = [(CNAutocompleteSuggestionsViewController *)self collectionView];
    layout = [(CNAutocompleteSuggestionsViewController *)self layout];
    [collectionView setCollectionViewLayout:layout animated:1];

    collectionView2 = [(CNAutocompleteSuggestionsViewController *)self collectionView];
    [collectionView2 reloadData];
  }
}

- (BOOL)useAccessibleLayout
{
  traitCollection = [(CNAutocompleteSuggestionsViewController *)self traitCollection];
  v3 = isTraitCollectionAccessible(traitCollection);

  return v3;
}

- (BOOL)isZoomedLayout
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v4 = v3;
  mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen2 nativeScale];
  v7 = v4 < v6;

  return v7;
}

- (void)adjustInsetsForKeyboardFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  collectionView = [(CNAutocompleteSuggestionsViewController *)self collectionView];
  window = [collectionView window];
  [window convertRect:0 fromWindow:{x, y, width, height}];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [collectionView convertRect:0 fromView:{v10, v12, v14, v16}];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [collectionView frame];
  v52.origin.x = v18;
  v52.origin.y = v20;
  v52.size.width = v22;
  v52.size.height = v24;
  v51 = CGRectIntersection(v50, v52);
  v25 = CGRectGetHeight(v51);
  collectionView2 = [(CNAutocompleteSuggestionsViewController *)self collectionView];
  [collectionView2 contentInset];
  v28 = v27;
  v30 = v29;
  v32 = v31;

  [(CNAutocompleteSuggestionsViewController *)self additionalContentInsets];
  v34 = v28 + v33;
  [(CNAutocompleteSuggestionsViewController *)self additionalContentInsets];
  v36 = v25 + v35;
  collectionView3 = [(CNAutocompleteSuggestionsViewController *)self collectionView];
  [collectionView3 setContentInset:{v34, v30, v36, v32}];

  collectionView4 = [(CNAutocompleteSuggestionsViewController *)self collectionView];
  [collectionView4 contentInset];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  collectionView5 = [(CNAutocompleteSuggestionsViewController *)self collectionView];
  [collectionView5 setVerticalScrollIndicatorInsets:{v40, v42, v44, v46}];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = CNAutocompleteSuggestionsViewController;
  coordinatorCopy = coordinator;
  [(CNAutocompleteSuggestionsViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __94__CNAutocompleteSuggestionsViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E7CD1ED0;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

void __94__CNAutocompleteSuggestionsViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) collectionView];
  [v1 reloadData];
}

- (void)setAdditionalContentInset:(NSDirectionalEdgeInsets)inset
{
  v3.f64[0] = inset.top;
  v3.f64[1] = inset.leading;
  v4.f64[0] = inset.bottom;
  v4.f64[1] = inset.trailing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_additionalContentInsets.top, v3), vceqq_f64(*&self->_additionalContentInsets.bottom, v4)))) & 1) == 0)
  {
    self->_additionalContentInsets = inset;
    [(CNAutocompleteSuggestionsViewController *)self latestKeyboardFrame];

    [(CNAutocompleteSuggestionsViewController *)self adjustInsetsForKeyboardFrame:?];
  }
}

- (void)titleLabelTapped:(id)tapped
{
  delegate = [(CNAutocompleteSuggestionsViewController *)self delegate];
  [delegate suggestionsControllerTitleLabelWasTapped:self];
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
  useAccessibleLayout = [(CNAutocompleteSuggestionsViewController *)self useAccessibleLayout];
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
  if (useAccessibleLayout)
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
  compositionalLayout = [(CNAutocompleteSuggestionsViewController *)self compositionalLayout];
  [(CNAutocompleteSuggestionsViewController *)self setLayout:compositionalLayout];

  v4 = objc_alloc(MEMORY[0x1E69DC7F0]);
  view = [(CNAutocompleteSuggestionsViewController *)self view];
  [view bounds];
  v7 = v6 + 0.0;
  view2 = [(CNAutocompleteSuggestionsViewController *)self view];
  [view2 bounds];
  v10 = v9;
  view3 = [(CNAutocompleteSuggestionsViewController *)self view];
  [view3 bounds];
  v13 = v12;
  view4 = [(CNAutocompleteSuggestionsViewController *)self view];
  [view4 bounds];
  v16 = v15;
  layout = [(CNAutocompleteSuggestionsViewController *)self layout];
  v18 = [v4 initWithFrame:layout collectionViewLayout:{v7, v10, v13, v16}];

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

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v18 setBackgroundColor:clearColor];

  [v18 setAlwaysBounceVertical:0];
  [v18 setShowsVerticalScrollIndicator:0];
  [v18 setShowsHorizontalScrollIndicator:0];
  [v18 setContentInsetAdjustmentBehavior:2];
  [v18 setAutomaticallyAdjustsScrollIndicatorInsets:0];
  view5 = [(CNAutocompleteSuggestionsViewController *)self view];
  [view5 addSubview:v18];

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
  recipients = [(CNAutocompleteSuggestionsViewController *)self recipients];

  if (!recipients)
  {

    [(CNAutocompleteSuggestionsViewController *)self fetchRecipients];
  }
}

- (void)setOtherRecipientAddresses:(id)addresses
{
  addressesCopy = addresses;
  if (([(NSArray *)self->_otherRecipientAddresses isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_otherRecipientAddresses, addresses);
    if ([(CNAutocompleteSuggestionsViewController *)self isViewLoaded])
    {
      [(CNAutocompleteSuggestionsViewController *)self fetchRecipients];
    }
  }
}

- (void)fetchRecipients
{
  v36 = *MEMORY[0x1E69E9840];
  taskID = [(CNAutocompleteSuggestionsViewController *)self taskID];

  if (taskID)
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B8106000, os_log, OS_LOG_TYPE_INFO, "Suggestions fetchRecipients called while fetch already in flight, ignoring", buf, 2u);
    }
  }

  else
  {
    searchManager = [(CNAutocompleteSuggestionsViewController *)self searchManager];

    if (!searchManager)
    {
      v6 = [CNAutocompleteSearchManager alloc];
      options = [(CNAutocompleteSuggestionsViewController *)self options];
      v8 = -[CNAutocompleteSearchManager initWithAutocompleteSearchType:](v6, "initWithAutocompleteSearchType:", [options searchType]);
      [(CNAutocompleteSuggestionsViewController *)self setSearchManager:v8];
    }

    os_log = [MEMORY[0x1E695DF70] array];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    otherRecipientAddresses = [(CNAutocompleteSuggestionsViewController *)self otherRecipientAddresses];
    v10 = [otherRecipientAddresses countByEnumeratingWithState:&v29 objects:v35 count:16];
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
            objc_enumerationMutation(otherRecipientAddresses);
          }

          [os_log addObject:*(*(&v29 + 1) + 8 * v13++)];
        }

        while (v11 != v13);
        v11 = [otherRecipientAddresses countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v11);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    selectedRecipients = [(CNAutocompleteSuggestionsViewController *)self selectedRecipients];
    v15 = [selectedRecipients countByEnumeratingWithState:&v25 objects:v34 count:16];
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
            objc_enumerationMutation(selectedRecipients);
          }

          address = [*(*(&v25 + 1) + 8 * v18) address];
          [os_log addObject:address];

          ++v18;
        }

        while (v16 != v18);
        v16 = [selectedRecipients countByEnumeratingWithState:&v25 objects:v34 count:16];
      }

      while (v16);
    }

    v20 = objc_alloc_init(MEMORY[0x1E6996330]);
    v21 = [os_log copy];
    [v20 setOtherAddressesAlreadyChosen:v21];

    array = [MEMORY[0x1E695DF70] array];
    [(CNAutocompleteSuggestionsViewController *)self setFetchedRecipients:array];

    searchManager2 = [(CNAutocompleteSuggestionsViewController *)self searchManager];
    v24 = [searchManager2 searchForText:&stru_1F3002C60 withAutocompleteFetchContext:v20 consumer:self];
    [(CNAutocompleteSuggestionsViewController *)self setTaskID:v24];
  }
}

- (void)fetchSuggestedRecipientsWithCompletionBlock:(id)block
{
  blockCopy = block;
  [(CNAutocompleteSuggestionsViewController *)self setTaskID:&unk_1F300DE00];
  v5 = [blockCopy copy];

  [(CNAutocompleteSuggestionsViewController *)self setSuggestionPreWarmCompletionBlock:v5];

  [(CNAutocompleteSuggestionsViewController *)self fetchRecipients];
}

- (void)consumeAutocompleteSearchResults:(id)results taskID:(id)d
{
  resultsCopy = results;
  dCopy = d;
  if ([dCopy integerValue] == -1 && (-[CNAutocompleteSuggestionsViewController suggestionPreWarmCompletionBlock](self, "suggestionPreWarmCompletionBlock"), v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
  {
    suggestionPreWarmCompletionBlock = [(CNAutocompleteSuggestionsViewController *)self suggestionPreWarmCompletionBlock];
    (suggestionPreWarmCompletionBlock)[2](suggestionPreWarmCompletionBlock, resultsCopy);

    [(CNAutocompleteSuggestionsViewController *)self setSuggestionPreWarmCompletionBlock:0];
  }

  else
  {
    taskID = [(CNAutocompleteSuggestionsViewController *)self taskID];
    v8 = [taskID isEqualToNumber:dCopy];

    if (v8)
    {
      fetchedRecipients = [(CNAutocompleteSuggestionsViewController *)self fetchedRecipients];
      [fetchedRecipients addObjectsFromArray:resultsCopy];

      fetchedRecipients2 = [(CNAutocompleteSuggestionsViewController *)self fetchedRecipients];
      v11 = [fetchedRecipients2 _cn_take:8];
      v12 = [v11 copy];
      [(CNAutocompleteSuggestionsViewController *)self setRecipients:v12];
    }
  }
}

- (void)finishedTaskWithID:(id)d
{
  dCopy = d;
  taskID = [(CNAutocompleteSuggestionsViewController *)self taskID];
  if (taskID)
  {
    v5 = taskID;
    taskID2 = [(CNAutocompleteSuggestionsViewController *)self taskID];
    v7 = [dCopy isEqualToNumber:taskID2];

    if (v7)
    {
      fetchedRecipients = [(CNAutocompleteSuggestionsViewController *)self fetchedRecipients];
      v9 = [fetchedRecipients count];

      if (!v9)
      {
        [(CNAutocompleteSuggestionsViewController *)self setRecipients:MEMORY[0x1E695E0F0]];
      }

      [(CNAutocompleteSuggestionsViewController *)self setTaskID:0];
    }
  }
}

- (void)setRecipients:(id)recipients animated:(BOOL)animated
{
  animatedCopy = animated;
  v14[1] = *MEMORY[0x1E69E9840];
  recipientsCopy = recipients;
  if (self->_recipients != recipientsCopy)
  {
    objc_storeStrong(&self->_recipients, recipients);
    v8 = [(NSArray *)recipientsCopy _cn_map:&__block_literal_global_143];
    [(CNAutocompleteSuggestionsViewController *)self setItems:v8];

    v9 = objc_alloc_init(MEMORY[0x1E69955A0]);
    if ([(NSArray *)recipientsCopy count])
    {
      v14[0] = @"Main";
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
      [v9 appendSectionsWithIdentifiers:v10];

      items = [(CNAutocompleteSuggestionsViewController *)self items];
      [v9 appendItemsWithIdentifiers:items];
    }

    diffableDataSource = [(CNAutocompleteSuggestionsViewController *)self diffableDataSource];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __66__CNAutocompleteSuggestionsViewController_setRecipients_animated___block_invoke_2;
    v13[3] = &unk_1E7CD1F90;
    v13[4] = self;
    [diffableDataSource applySnapshot:v9 animatingDifferences:animatedCopy completion:v13];
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
  useAccessibleLayout = [(CNAutocompleteSuggestionsViewController *)self useAccessibleLayout];
  view = [(CNAutocompleteSuggestionsViewController *)self view];
  [view bounds];
  Width = CGRectGetWidth(v12);

  if ([(CNAutocompleteSuggestionsViewController *)self useAccessibleLayout])
  {
    v6 = 60.0;
  }

  else
  {
    isZoomedLayout = [(CNAutocompleteSuggestionsViewController *)self isZoomedLayout];
    v6 = 80.0;
    if (isZoomedLayout)
    {
      v6 = 60.0;
    }
  }

  v8 = 4.0;
  if (useAccessibleLayout)
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

- (void)imageForRecipient:(id)recipient imageUpdateBlock:(id)block
{
  recipientCopy = recipient;
  blockCopy = block;
  avatarRenderer = [(CNAutocompleteSuggestionsViewController *)self avatarRenderer];

  if (!avatarRenderer)
  {
    v9 = objc_alloc(MEMORY[0x1E695D098]);
    v10 = [MEMORY[0x1E695D0A8] defaultSettingsWithCacheSize:8];
    v11 = [v9 initWithSettings:v10];
    [(CNAutocompleteSuggestionsViewController *)self setAvatarRenderer:v11];
  }

  [(CNAutocompleteSuggestionsViewController *)self avatarSize];
  v13 = v12;
  v15 = v14;
  view = [(CNAutocompleteSuggestionsViewController *)self view];
  window = [view window];
  screen = [window screen];
  [screen scale];
  v20 = v19;

  delegate = [(CNAutocompleteSuggestionsViewController *)self delegate];
  LOBYTE(window) = objc_opt_respondsToSelector();

  if ((window & 1) == 0 || (v43[0] = MEMORY[0x1E69E9820], v43[1] = 3221225472, v43[2] = __78__CNAutocompleteSuggestionsViewController_imageForRecipient_imageUpdateBlock___block_invoke, v43[3] = &unk_1E7CD1FE0, v45 = v13, v46 = v15, v47 = v20, v44 = blockCopy, v22 = MEMORY[0x1B8CB9350](v43), -[CNAutocompleteSuggestionsViewController delegate](self, "delegate"), v23 = objc_claimAutoreleasedReturnValue(), v24 = [v23 suggestionsController:self imageDataForRecipient:recipientCopy imageUpdateBlock:v22], v23, v22, v44, (v24 & 1) == 0))
  {
    if ([recipientCopy isGroup])
    {
      v25 = objc_alloc_init(CNAUIMessagesImagesFacade);
      autocompleteResult = [recipientCopy autocompleteResult];
      v27 = [(CNAUIMessagesImagesFacade *)v25 imageForResult:autocompleteResult];

      if (v27)
      {
        v28 = [CNUIImage resizeImage:v27 toFitWidth:v13 scale:v20];

        currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
        schedulerProvider = [currentEnvironment schedulerProvider];
        mainThreadScheduler = [schedulerProvider mainThreadScheduler];
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __78__CNAutocompleteSuggestionsViewController_imageForRecipient_imageUpdateBlock___block_invoke_3;
        v40[3] = &unk_1E7CD1FB8;
        v32 = &v42;
        v41 = v28;
        v42 = blockCopy;
        v33 = v28;
        [mainThreadScheduler performBlock:v40];

        avatarRenderer2 = v41;
LABEL_10:

        goto LABEL_11;
      }
    }

    v25 = [(CNAutocompleteSuggestionsViewController *)self contactsForAvatarForRecipient:recipientCopy];
    traitCollection = [(CNAutocompleteSuggestionsViewController *)self traitCollection];
    v36 = [traitCollection layoutDirection] == 1;

    v33 = [MEMORY[0x1E695D0B0] scopeWithPointSize:v36 scale:0 rightToLeft:v13 style:{v15, v20}];
    avatarRenderer2 = [(CNAutocompleteSuggestionsViewController *)self avatarRenderer];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __78__CNAutocompleteSuggestionsViewController_imageForRecipient_imageUpdateBlock___block_invoke_4;
    v38[3] = &unk_1E7CD2008;
    v32 = &v39;
    v39 = blockCopy;
    v37 = [avatarRenderer2 renderAvatarsForContacts:v25 scope:v33 imageHandler:v38];
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

- (id)contactsForAvatarForRecipient:(id)recipient
{
  v17[1] = *MEMORY[0x1E69E9840];
  recipientCopy = recipient;
  v5 = objc_alloc_init(MEMORY[0x1E695CD58]);
  v17[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];

  if (recipientCopy)
  {
    if ([recipientCopy isGroup])
    {
      children = [recipientCopy children];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __73__CNAutocompleteSuggestionsViewController_contactsForAvatarForRecipient___block_invoke;
      v14[3] = &unk_1E7CD2030;
      v14[4] = self;
      v8 = [children _cn_map:v14];
    }

    else
    {
      descriptorForRequiredKeys = [MEMORY[0x1E695D098] descriptorForRequiredKeys];
      v16 = descriptorForRequiredKeys;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
      children = [recipientCopy contactWithKeysToFetch:v10];

      if (!children)
      {
        children = [(CNAutocompleteSuggestionsViewController *)self unknownContactForRecipient:recipientCopy];
      }

      v15 = children;
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

- (id)unknownContactForRecipient:(id)recipient
{
  v22[1] = *MEMORY[0x1E69E9840];
  recipientCopy = recipient;
  v4 = objc_alloc_init(MEMORY[0x1E695CF18]);
  compositeName = [recipientCopy compositeName];
  address = [recipientCopy address];
  v7 = [compositeName isEqualToString:address];

  if ((v7 & 1) == 0)
  {
    v8 = MEMORY[0x1E6996790];
    displayString = [recipientCopy displayString];
    v10 = [v8 componentsFromString:displayString];

    givenName = [v10 givenName];
    [v4 setGivenName:givenName];

    familyName = [v10 familyName];
    [v4 setFamilyName:familyName];
  }

  if ([recipientCopy kind] == 1)
  {
    v13 = MEMORY[0x1E695CF50];
    normalizedAddress = [recipientCopy normalizedAddress];
    v15 = [v13 phoneNumberWithStringValue:normalizedAddress];

    v16 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:0 value:v15];
    v22[0] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    [v4 setPhoneNumbers:v17];
  }

  else
  {
    if ([recipientCopy kind])
    {
      goto LABEL_8;
    }

    v18 = MEMORY[0x1E695CEE0];
    normalizedAddress2 = [recipientCopy normalizedAddress];
    v15 = [v18 labeledValueWithLabel:0 value:normalizedAddress2];

    v21 = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    [v4 setEmailAddresses:v16];
  }

LABEL_8:

  return v4;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  items = [(CNAutocompleteSuggestionsViewController *)self items];
  v10 = [items objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];

  [v10 setIsSelected:1];
  delegate = [(CNAutocompleteSuggestionsViewController *)self delegate];
  recipient = [v10 recipient];
  [delegate suggestionsController:self didSelectRecipient:recipient];

  collectionView = [(CNAutocompleteSuggestionsViewController *)self collectionView];
  [collectionView deselectItemAtIndexPath:pathCopy animated:1];
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  delegate = [(CNAutocompleteSuggestionsViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CNAutocompleteSuggestionsViewController *)self delegate];
    [delegate2 suggestionsControllerWillBeginScroll:self];
  }
}

- (void)invalidateSelectedRecipients
{
  suggestionsFetchDebounceTimer = [(CNAutocompleteSuggestionsViewController *)self suggestionsFetchDebounceTimer];

  if (suggestionsFetchDebounceTimer)
  {
    suggestionsFetchDebounceTimer2 = [(CNAutocompleteSuggestionsViewController *)self suggestionsFetchDebounceTimer];
    dispatch_source_cancel(suggestionsFetchDebounceTimer2);

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
  delegate = [(CNAutocompleteSuggestionsViewController *)self delegate];
  v4 = [delegate selectedRecipientsForSuggestionsController:self];

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

        normalizedAddress = [*(*(&v13 + 1) + 8 * i) normalizedAddress];
        [v5 addObject:normalizedAddress];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)conformResultsForSelection
{
  selectedRecipientHandles = [(CNAutocompleteSuggestionsViewController *)self selectedRecipientHandles];
  items = [(CNAutocompleteSuggestionsViewController *)self items];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__CNAutocompleteSuggestionsViewController_conformResultsForSelection__block_invoke;
  v6[3] = &unk_1E7CD2058;
  v7 = selectedRecipientHandles;
  selfCopy = self;
  v5 = selectedRecipientHandles;
  [items enumerateObjectsUsingBlock:v6];
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

- (void)conformResultsForDeselection:(id)deselection
{
  deselectionCopy = deselection;
  items = [(CNAutocompleteSuggestionsViewController *)self items];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__CNAutocompleteSuggestionsViewController_conformResultsForDeselection___block_invoke;
  v7[3] = &unk_1E7CD2058;
  v8 = deselectionCopy;
  selfCopy = self;
  v6 = deselectionCopy;
  [items enumerateObjectsUsingBlock:v7];
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