@interface NTKGreenfieldB640ContentViewController
- (CGSize)cellSize;
- (NTKGreenfieldB640ContentViewControllerDelegate)greenfieldB640delegate;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (id)_defaultBandNameForCurrentPairedDevice;
- (id)_subtitleForError:(id)error;
- (id)_titleForError:(id)error;
- (id)alternateButtonTitle;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)detailString;
- (id)initForAddWatchFacesStateWithGreenfieldB640Model:(id)model;
- (id)initForErrorStateWithGreenfieldB640Model:(id)model;
- (id)suggestedButtonTitle;
- (id)titleString;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)_didTapShowInternalErrorButton;
- (void)_notifyDelegateOfActionEventWatchFaceSelected:(id)selected;
- (void)_presentErrorAlert;
- (void)_setupContentForAddWathFaceWithBandImagePath:(id)path bundle:(id)bundle;
- (void)_setupViews;
- (void)_updateSelectedState:(BOOL)state forCellAtIndexPath:(id)path;
- (void)alternateButtonPressed:(id)pressed;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)handleWatchFaceSelectedAtIndex:(int64_t)index;
- (void)handleWatchFaceSelectedWithError:(id)error;
- (void)suggestedButtonPressed:(id)pressed;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation NTKGreenfieldB640ContentViewController

- (id)initForAddWatchFacesStateWithGreenfieldB640Model:(id)model
{
  modelCopy = model;
  v11.receiver = self;
  v11.super_class = NTKGreenfieldB640ContentViewController;
  v6 = [(NTKGreenfieldB640ContentViewController *)&v11 initWithTitle:&stru_284110E98 detailText:0 icon:0 contentLayout:3];
  v7 = v6;
  if (v6)
  {
    v6->_state = 0;
    [(BPSWelcomeOptinViewController *)v6 setStyle:10];
    objc_storeStrong(&v7->_greenfieldB640Model, model);
    v8 = dispatch_queue_create("com.apple.NanoTimeKit.NTKGreenfieldB640ContentViewControllerDecodeBandImage.queue", 0);
    workQueue = v7->_workQueue;
    v7->_workQueue = v8;
  }

  return v7;
}

- (id)initForErrorStateWithGreenfieldB640Model:(id)model
{
  v31 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v29.receiver = self;
  v29.super_class = NTKGreenfieldB640ContentViewController;
  v6 = [(NTKGreenfieldB640ContentViewController *)&v29 initWithTitle:&stru_284110E98 detailText:0 icon:0 contentLayout:3];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_greenfieldB640Model, model);
    v8 = dispatch_queue_create("com.apple.NanoTimeKit.NTKGreenfieldB640ContentViewControllerDecodeBandImage.queue", 0);
    workQueue = v7->_workQueue;
    v7->_workQueue = v8;

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    watchFaceModels = [(NTKGreenfieldB640Model *)v7->_greenfieldB640Model watchFaceModels];
    v11 = [watchFaceModels countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      while (2)
      {
        v14 = 0;
        do
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(watchFaceModels);
          }

          decodedRecipe = [*(*(&v25 + 1) + 8 * v14) decodedRecipe];
          watchFace = [decodedRecipe watchFace];

          if (!watchFace)
          {
            v17 = 1;
            goto LABEL_12;
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [watchFaceModels countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v17 = 0;
LABEL_12:

    watchFaceModels2 = [(NTKGreenfieldB640Model *)v7->_greenfieldB640Model watchFaceModels];
    v19 = [watchFaceModels2 count];

    if ((v17 & 1) != 0 || !v19)
    {
      v7->_state = 2;
    }

    else
    {
      v7->_state = 1;
      if (NTKInternalBuild(v20, v21, v22, v23))
      {
        [(BPSWelcomeOptinViewController *)v7 setStyle:2];
      }
    }
  }

  return v7;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = NTKGreenfieldB640ContentViewController;
  [(BPSWelcomeOptinViewController *)&v8 viewDidLoad];
  if (self->_state == 2)
  {
    [(NTKGreenfieldB640ContentViewController *)self _presentErrorAlert];
  }

  else
  {
    v3 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
    [(NTKGreenfieldB640ContentViewController *)self _notifyDelegateOfActionEventWatchFaceSelected:v3];
    bandImagePath = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model bandImagePath];
    bandImageBundle = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model bandImageBundle];
    [(NTKGreenfieldB640ContentViewController *)self _setupContentForAddWathFaceWithBandImagePath:bandImagePath bundle:bandImageBundle];

    alternateChoiceButton = [(BPSWelcomeOptinViewController *)self alternateChoiceButton];
    v7 = BPSSetupTintColor();
    [alternateChoiceButton setTitleColor:v7 forState:0];
  }
}

- (void)viewDidLayoutSubviews
{
  v36.receiver = self;
  v36.super_class = NTKGreenfieldB640ContentViewController;
  [(OBBaseWelcomeController *)&v36 viewDidLayoutSubviews];
  [(UICollectionView *)self->_facesCollectionView frame];
  view = [(NTKGreenfieldB640ContentViewController *)self view];
  [view bounds];
  v5 = v4;

  [(NTKGreenfieldB640ContentViewController *)self cellSize];
  v7 = v6;
  v8 = 0.0;
  if (!self->_state)
  {
    v31 = 0;
    v32 = 0;
    v33 = vdupq_n_s64(0x404A000000000000uLL);
    v34 = v33;
    v35 = v33;
    BPSScreenValueGetRelevantValue();
    v8 = v9;
  }

  [(UICollectionView *)self->_facesCollectionView setFrame:0.0, v8, v5, v7, v31, v32, *&v33, *&v34, *&v35];
  [(NTKGreenfieldB640ContentViewController *)self cellSize];
  [(UICollectionViewFlowLayout *)self->_collectionViewFlowLayout setItemSize:?];
  view2 = [(NTKGreenfieldB640ContentViewController *)self view];
  [view2 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  scrollView = [(NTKGreenfieldB640ContentViewController *)self scrollView];
  [scrollView setFrame:{v12, v14, v16, v18}];

  scrollView2 = [(NTKGreenfieldB640ContentViewController *)self scrollView];
  [scrollView2 verticalScrollIndicatorInsets];
  v22 = v21;
  v24 = v23;
  v26 = v25;

  view3 = [(NTKGreenfieldB640ContentViewController *)self view];
  [view3 safeAreaInsets];
  v29 = v28;

  scrollView3 = [(NTKGreenfieldB640ContentViewController *)self scrollView];
  [scrollView3 setVerticalScrollIndicatorInsets:{v29, v22, v24, v26}];
}

- (id)titleString
{
  state = self->_state;
  if (state == 1)
  {
    error = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model error];
    v12 = [(NTKGreenfieldB640ContentViewController *)self _titleForError:error];
  }

  else if (state)
  {
    v12 = 0;
  }

  else
  {
    watchFaceModels = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels];
    v5 = [watchFaceModels count];

    if (v5 == 1)
    {
      watchFaceModels2 = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels];
      firstObject = [watchFaceModels2 firstObject];

      decodedRecipe = [firstObject decodedRecipe];
      watchFace = [decodedRecipe watchFace];
      faceSharingName = [watchFace faceSharingName];

      v11 = NTKClockFaceLocalizedString(@"GREENFIELD_B640_TITLE_WATCH_FACE_MAIN_SCREEN", @"Add %@ Watch Face");
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:v11, faceSharingName];
    }

    else
    {
      v12 = NTKClockFaceLocalizedString(@"GREENFIELD_B640_TITLE_MAIN_SCREEN", @"Add Watch Face");
    }
  }

  return v12;
}

- (id)detailString
{
  if (self->_state == 1)
  {
    error = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model error];
    v4 = [(NTKGreenfieldB640ContentViewController *)self _subtitleForError:error];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)suggestedButtonTitle
{
  state = self->_state;
  if (state == 1)
  {
    if (NTKInternalBuild(self, a2))
    {
      v3 = @"[INTERNAL ONLY: SHOW ERROR]";
    }

    else
    {
      v3 = 0;
    }
  }

  else if (state)
  {
    v3 = 0;
  }

  else
  {
    v3 = NTKClockFaceLocalizedString(@"GREENFIELD_B640_ADD_TO_MY_FACES_BUTTON_TITLE", @"Add to My Faces");
  }

  return v3;
}

- (id)alternateButtonTitle
{
  if (self->_state)
  {
    v3 = 0;
  }

  else
  {
    v3 = NTKClockFaceLocalizedString(@"GREENFIELD__B640_SKIP_BUTTON_TITLE", @"Skip");
  }

  return v3;
}

- (void)suggestedButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  v5 = pressedCopy;
  state = self->_state;
  if (state == 1)
  {
    v9 = pressedCopy;
    v8 = NTKInternalBuild(pressedCopy, pressedCopy);
    v5 = v9;
    if (!v8)
    {
      goto LABEL_7;
    }

    [(NTKGreenfieldB640ContentViewController *)self _didTapShowInternalErrorButton];
  }

  else
  {
    if (state)
    {
      goto LABEL_7;
    }

    v9 = pressedCopy;
    WeakRetained = objc_loadWeakRetained(&self->_greenfieldB640delegate);
    [WeakRetained greenfieldB640ContentViewController:self handleButtonActionEvent:0];
  }

  v5 = v9;
LABEL_7:
}

- (void)alternateButtonPressed:(id)pressed
{
  WeakRetained = objc_loadWeakRetained(&self->_greenfieldB640delegate);
  [WeakRetained greenfieldB640ContentViewController:self handleButtonActionEvent:1];
}

- (void)handleWatchFaceSelectedAtIndex:(int64_t)index
{
  watchFaceModels = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels];
  v6 = [watchFaceModels count];

  if (v6 > index)
  {
    watchFaceModels2 = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels];
    v9 = [watchFaceModels2 objectAtIndex:index];

    v8 = [MEMORY[0x277CCAA70] indexPathForRow:index inSection:0];
    -[NTKGreenfieldB640ContentViewController _updateSelectedState:forCellAtIndexPath:](self, "_updateSelectedState:forCellAtIndexPath:", [v9 isSelected], v8);
  }
}

- (void)handleWatchFaceSelectedWithError:(id)error
{
  errorCopy = error;
  v10 = [(NTKGreenfieldB640ContentViewController *)self _titleForError:errorCopy];
  v5 = [(NTKGreenfieldB640ContentViewController *)self _subtitleForError:errorCopy];

  v6 = [MEMORY[0x277D75110] alertControllerWithTitle:v10 message:v5 preferredStyle:1];
  v7 = MEMORY[0x277D750F8];
  v8 = NTKClockFaceLocalizedString(@"GREENFIELD_B640_ERROR_ALERT_OK_BUTON_TITLE", @"OK");
  v9 = [v7 actionWithTitle:v8 style:1 handler:0];

  [v6 addAction:v9];
  [(NTKGreenfieldB640ContentViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)_setupContentForAddWathFaceWithBandImagePath:(id)path bundle:(id)bundle
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __94__NTKGreenfieldB640ContentViewController__setupContentForAddWathFaceWithBandImagePath_bundle___block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __94__NTKGreenfieldB640ContentViewController__setupContentForAddWathFaceWithBandImagePath_bundle___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D755B8];
  v3 = [*(*(a1 + 32) + 1320) bandImagePath];
  v4 = [*(*(a1 + 32) + 1320) bandImageBundle];
  [v2 imageNamed:v3 inBundle:v4];
  objc_claimAutoreleasedReturnValue();

  v5 = [*(a1 + 32) _defaultBandNameForCurrentPairedDevice];
  NTKImageNamed(v5);
}

uint64_t __94__NTKGreenfieldB640ContentViewController__setupContentForAddWathFaceWithBandImagePath_bundle___block_invoke_2(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 1344), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 _setupViews];
}

- (id)_defaultBandNameForCurrentPairedDevice
{
  currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
  deviceCategory = [currentDevice deviceCategory];
  if ((deviceCategory - 3) > 3)
  {
    v4 = @"default_band_asset";
  }

  else
  {
    v4 = off_27877E548[deviceCategory - 3];
  }

  return v4;
}

- (void)_setupViews
{
  v31[4] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  collectionViewFlowLayout = self->_collectionViewFlowLayout;
  self->_collectionViewFlowLayout = v3;

  [(UICollectionViewFlowLayout *)self->_collectionViewFlowLayout setScrollDirection:1];
  [(UICollectionViewFlowLayout *)self->_collectionViewFlowLayout setMinimumInteritemSpacing:4.0];
  v5 = objc_alloc(MEMORY[0x277D752A0]);
  v6 = [v5 initWithFrame:self->_collectionViewFlowLayout collectionViewLayout:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  facesCollectionView = self->_facesCollectionView;
  self->_facesCollectionView = v6;

  v8 = self->_facesCollectionView;
  v9 = objc_opt_class();
  v10 = +[NTKGreenfieldB640CollectionViewCell reuseIdentifier];
  [(UICollectionView *)v8 registerClass:v9 forCellWithReuseIdentifier:v10];

  v11 = BPSBackgroundColor();
  [(UICollectionView *)self->_facesCollectionView setBackgroundColor:v11];

  [(UICollectionView *)self->_facesCollectionView setDelegate:self];
  [(UICollectionView *)self->_facesCollectionView setDataSource:self];
  [(UICollectionView *)self->_facesCollectionView setShowsHorizontalScrollIndicator:0];
  [(UICollectionView *)self->_facesCollectionView setAlwaysBounceHorizontal:0];
  contentView = [(NTKGreenfieldB640ContentViewController *)self contentView];
  [contentView addSubview:self->_facesCollectionView];

  v23 = MEMORY[0x277CCAAD0];
  contentView2 = [(NTKGreenfieldB640ContentViewController *)self contentView];
  topAnchor = [contentView2 topAnchor];
  topAnchor2 = [(UICollectionView *)self->_facesCollectionView topAnchor];
  v27 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v31[0] = v27;
  contentView3 = [(NTKGreenfieldB640ContentViewController *)self contentView];
  leadingAnchor = [contentView3 leadingAnchor];
  leadingAnchor2 = [(UICollectionView *)self->_facesCollectionView leadingAnchor];
  v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v31[1] = v13;
  contentView4 = [(NTKGreenfieldB640ContentViewController *)self contentView];
  trailingAnchor = [contentView4 trailingAnchor];
  trailingAnchor2 = [(UICollectionView *)self->_facesCollectionView trailingAnchor];
  v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v31[2] = v17;
  contentView5 = [(NTKGreenfieldB640ContentViewController *)self contentView];
  bottomAnchor = [contentView5 bottomAnchor];
  bottomAnchor2 = [(UICollectionView *)self->_facesCollectionView bottomAnchor];
  v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v31[3] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];
  [v23 activateConstraints:v22];
}

- (void)_presentErrorAlert
{
  error = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model error];
  v4 = [(NTKGreenfieldB640ContentViewController *)self _titleForError:error];

  error2 = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model error];
  v6 = [(NTKGreenfieldB640ContentViewController *)self _subtitleForError:error2];

  if (NTKInternalBuild(v7, v8))
  {
    v9 = MEMORY[0x277CCACA8];
    error3 = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model error];
    v11 = [v9 stringWithFormat:@"\n \n [INTERNAL ONLY] \n Please file a radar and include a sysdiagnose. Error: reason: %@", error3];

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v6, v11];

    v6 = v12;
  }

  v13 = [MEMORY[0x277D75110] alertControllerWithTitle:v4 message:v6 preferredStyle:1];
  v14 = MEMORY[0x277D750F8];
  v15 = NTKClockFaceLocalizedString(@"GREENFIELD_B640_ERROR_ALERT_OK_BUTON_TITLE", @"OK");
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __60__NTKGreenfieldB640ContentViewController__presentErrorAlert__block_invoke;
  v17[3] = &unk_27877E528;
  v17[4] = self;
  v16 = [v14 actionWithTitle:v15 style:1 handler:v17];

  [v13 addAction:v16];
  [(NTKGreenfieldB640ContentViewController *)self presentViewController:v13 animated:1 completion:0];
}

void __60__NTKGreenfieldB640ContentViewController__presentErrorAlert__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1360));
  [WeakRetained greenfieldB640ContentViewController:*(a1 + 32) handleButtonActionEvent:2];
}

- (void)_notifyDelegateOfActionEventWatchFaceSelected:(id)selected
{
  selectedCopy = selected;
  watchFaceModels = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels];
  v5 = [selectedCopy row];
  if (v5 < [watchFaceModels count] && (objc_msgSend(selectedCopy, "row") & 0x8000000000000000) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_greenfieldB640delegate);
    [WeakRetained greenfieldB640ContentViewController:self handleWatchFaceSelectedEventAtIndex:{objc_msgSend(selectedCopy, "row")}];
  }
}

- (CGSize)cellSize
{
  v21 = *MEMORY[0x277D85DE8];
  width = self->_cellSize.width;
  height = self->_cellSize.height;
  if (width == *MEMORY[0x277CBF3A8] && height == *(MEMORY[0x277CBF3A8] + 8))
  {
    watchFaceModels = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [watchFaceModels countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      v9 = &stru_284110E98;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(watchFaceModels);
          }

          decodedRecipe = [*(*(&v16 + 1) + 8 * i) decodedRecipe];
          watchFace = [decodedRecipe watchFace];
          faceSharingName = [watchFace faceSharingName];

          v14 = [faceSharingName length];
          if (v14 > [(__CFString *)v9 length])
          {
            v15 = faceSharingName;

            v9 = v15;
          }
        }

        v7 = [watchFaceModels countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    NTKImageNamed(@"default_band_asset");
  }

  result.height = height;
  result.width = width;
  return result;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  facesCollectionView = self->_facesCollectionView;
  v7 = +[NTKGreenfieldB640CollectionViewCell reuseIdentifier];
  v8 = [(UICollectionView *)facesCollectionView dequeueReusableCellWithReuseIdentifier:v7 forIndexPath:pathCopy];

  state = self->_state;
  if (state)
  {
    v10 = 0;
  }

  else
  {
    watchFaceModels = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels];
    v10 = [watchFaceModels count] > 1;

    state = self->_state;
  }

  watchFaceModels2 = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels];
  v13 = [watchFaceModels2 objectAtIndex:{objc_msgSend(pathCopy, "row")}];

  isSelected = [v13 isSelected];
  decodedRecipe = [v13 decodedRecipe];
  if (self->_state <= 1)
  {
    [v8 prepareCellWithDecodedRecipe:decodedRecipe bandImage:self->_watchBandImage shouldPresentFaceName:(state == 1) | v10 shouldPresentCheckmark:v10 isSelected:isSelected];
  }

  v16 = BPSBackgroundColor();
  [v8 setBackgroundColor:v16];

  return v8;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  if (!self->_state)
  {
    [(NTKGreenfieldB640ContentViewController *)self _notifyDelegateOfActionEventWatchFaceSelected:path];
  }
}

- (void)_updateSelectedState:(BOOL)state forCellAtIndexPath:(id)path
{
  stateCopy = state;
  v5 = [(UICollectionView *)self->_facesCollectionView cellForItemAtIndexPath:path];
  [v5 updateSeletedState:stateCopy];
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels:view];
  v5 = [v4 count];

  return v5;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  [(NTKGreenfieldB640ContentViewController *)self cellSize:view];
  v7 = v6;
  watchFaceModels = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels];
  v9 = [watchFaceModels count];

  if (v9)
  {
    v10 = 0;
    v11 = 0.0;
    do
    {
      watchFaceModels2 = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels];
      v13 = [watchFaceModels2 count] - 1;

      if (v10 == v13)
      {
        v14 = v7;
      }

      else
      {
        v14 = v7 + 4.0;
      }

      v11 = v11 + v14;
      ++v10;
      watchFaceModels3 = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels];
      v16 = [watchFaceModels3 count];
    }

    while (v10 < v16);
  }

  else
  {
    v11 = 0.0;
  }

  [(UICollectionView *)self->_facesCollectionView bounds];
  v17 = 15.0;
  if (v11 < v18)
  {
    [(UICollectionView *)self->_facesCollectionView bounds];
    v17 = (v19 - v11) * 0.5;
  }

  v20 = 0.0;
  v21 = 0.0;
  v22 = v17;
  result.right = v22;
  result.bottom = v21;
  result.left = v17;
  result.top = v20;
  return result;
}

- (id)_subtitleForError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v6 = [domain isEqualToString:@"com.apple.nanotimekit.NTKGreenfieldAddWatchFaceManager"];

  if (v6)
  {
    switch([errorCopy code])
    {
      case 0:
        goto LABEL_5;
      case 1:
      case 8:
      case 11:
        watchFaceModels = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels];
        v8 = [watchFaceModels count];

        if (v8 < 2)
        {
          v9 = @"GREENFIELD_B640_WATCH_FACE_NOT_AVAILABLE_ON_DEVICE_ERROR_ALERT_DESCRIPTION_SINGULAR";
          v10 = @"This watch face is not available on your Apple Watch.";
        }

        else
        {
          v9 = @"GREENFIELD_B640_WATCH_FACE_NOT_AVAILABLE_ON_DEVICE_ERROR_ALERT_DESCRIPTION_PLURAL";
          v10 = @"These watch faces are not available on your Apple Watch.";
        }

        goto LABEL_8;
      case 2:
      case 4:
        v9 = @"GREENFIELD_ADD_WATCH_FACE_ERROR_TRY_AGAIN_LATER";
        v10 = @"Try again later.";
        goto LABEL_8;
      case 3:
        watchFaceModels2 = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels];
        v23 = [watchFaceModels2 count];

        if (v23 < 2)
        {
          v9 = @"GREENFIELD_B640_WATCH_FACE_NO_WATCH_PAIRED_ERROR_ALERT_DESCRIPTION_SINGULAR";
          v10 = @"Pair your Apple Watch with this iPhone to add this face.";
        }

        else
        {
          v9 = @"GREENFIELD_B640_WATCH_FACE_NO_WATCH_PAIRED_ERROR_ALERT_DESCRIPTION_PLURAL";
          v10 = @"Pair your Apple Watch with this iPhone to add these faces.";
        }

        goto LABEL_8;
      case 5:
        watchFaceModels3 = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels];
        v17 = [watchFaceModels3 count];

        v18 = MEMORY[0x277CCACA8];
        if (v17 < 2)
        {
          v19 = @"GREENFIELD_B640_WATCH_FACE_LIBRARY_LIMIT_ERROR_ALERT_DESCRIPTION";
        }

        else
        {
          v19 = @"GREENFIELD_B640_MULTIPLE_WATCH_FACES_LIBRARY_LIMIT_ERROR_ALERT_DESCRIPTION";
        }

        v28 = NTKClockFaceLocalizedString(v19, @"too many faces");
        currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
        [v18 localizedStringWithFormat:v28, NTKFaceLibraryMaxFaceCountForDevice(currentDevice)];
        goto LABEL_38;
      case 6:
        watchFaceModels4 = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels];
        v21 = [watchFaceModels4 count];

        if (v21 < 2)
        {
          v9 = @"GREENFIELD_B640_WATCH_FACE_CANNOT_ADD_ANOTHER_FACE_ERROR_DESCRIPTION_SINGULAR";
          v10 = @"You can switch to this face on your Apple Watch.";
        }

        else
        {
          v9 = @"GREENFIELD_B640_WATCH_FACE_CANNOT_ADD_ANOTHER_FACE_ERROR_DESCRIPTION_PLURAL";
          v10 = @"You can switch to these faces on your Apple Watch.";
        }

        goto LABEL_8;
      case 7:
        watchFaceModels5 = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels];
        v25 = [watchFaceModels5 count];

        if (v25 < 2)
        {
          v9 = @"GREENFIELD_B640_WATCH_FACE_NO_PHOTOS_INCLUDED_IN_PHOTOS_WATCH_FACE_ERROR_DESCRIPTION_SINGULAR";
          v10 = @"This face cannot be added to your Apple Watch because the sender did not include any photos.";
        }

        else
        {
          v9 = @"GREENFIELD_B640_WATCH_FACE_NO_PHOTOS_INCLUDED_IN_PHOTOS_WATCH_FACE_ERROR_DESCRIPTION_PLURAL";
          v10 = @"These faces cannot be added to your Apple Watch because the sender did not include any photos.";
        }

        goto LABEL_8;
      case 9:
        watchFaceModels6 = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels];
        v35 = [watchFaceModels6 count];

        if (v35 < 2)
        {
          v9 = @"GREENFIELD_B640_WATCH_FACE_LIBRARY_NOT_LOADED_ERROR_ALERT_DESCRIPTION_SINGULAR";
          v10 = @"Could not add this watch face at this time. Try again later.";
        }

        else
        {
          v9 = @"GREENFIELD_B640_WATCH_FACE_LIBRARY_NOT_LOADED_ERROR_ALERT_DESCRIPTION_PLURAL";
          v10 = @"Could not add these watch faces at this time. Try again later.";
        }

        goto LABEL_8;
      case 10:
        v9 = @"GREENFIELD_ADD_WATCH_FACE_ERROR_NO_NETWORK_CONNECTION_OR_INVALID_URL_SUBTITLE";
        v10 = @"Check your internet connection and try again.";
        goto LABEL_8;
      case 12:
        v9 = @"GREENFIELD_COMPANION_ADD_WATCH_FACE_ERROR_REQURE_WATCH_OS_UPDATE";
        v10 = @"Watch face sharing is not available with your current version of watchOS.";
        goto LABEL_8;
      case 13:
        currentDevice2 = [MEMORY[0x277CBBAE8] currentDevice];
        pdrDevice = [currentDevice2 pdrDevice];
        v28 = [pdrDevice valueForProperty:*MEMORY[0x277D37BD8]];

        watchFaceModels7 = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels];
        v30 = [watchFaceModels7 count];

        v31 = MEMORY[0x277CCACA8];
        if (v30 < 2)
        {
          v32 = @"GREENFIELD_B640_WATCH_FACE_PAIRED_DEVICE_IS_TINKER_ERROR_ALERT_DESCRIPTION";
          v33 = @"This face can be added on Apple Watch. Message it to %@ to get started.";
        }

        else
        {
          v32 = @"GREENFIELD_B640_MULTIPLE_WATCH_FACES_PAIRED_DEVICE_IS_TINKER_ERROR_ALERT_DESCRIPTION";
          v33 = @"These faces can be added on Apple Watch. Message them to %@ to get started.";
        }

        currentDevice = NTKClockFaceLocalizedString(v32, v33);
        [v31 localizedStringWithFormat:currentDevice, v28];
        self = LABEL_38:;

        break;
      case 14:
      case 15:
      case 16:
        watchFaceModels8 = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels];
        v15 = [watchFaceModels8 count];

        if (v15 < 2)
        {
          v9 = @"GREENFIELD_B640_WATCH_FACE_UNAVAILABLE_ERROR_ALERT_DESCRIPTION_SINGULAR";
          v10 = @"This watch face is not available at this time. Try again later.";
        }

        else
        {
          v9 = @"GREENFIELD_B640_WATCH_FACE_UNAVAILABLE_ERROR_ALERT_DESCRIPTION_PLURAL";
          v10 = @"These watch faces are not available at this time. Try again later.";
        }

        goto LABEL_8;
      default:
        break;
    }
  }

  else
  {
LABEL_5:
    watchFaceModels9 = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels];
    v12 = [watchFaceModels9 count];

    if (v12 < 2)
    {
      v9 = @"GREENFIELD_B640_WATCH_FACE_GENERIC_ERROR_DEFAULT_ALERT_DESCRIPTION_SINGULAR";
      v10 = @"This watch face is not available with your current version of watchOS.";
    }

    else
    {
      v9 = @"GREENFIELD_B640_WATCH_FACE_GENERIC_ERROR_DEFAULT_ALERT_DESCRIPTION_PLURAL";
      v10 = @"These watch faces are not available with your current version of watchOS.";
    }

LABEL_8:
    self = NTKClockFaceLocalizedString(v9, v10);
  }

  return self;
}

- (id)_titleForError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v6 = [domain isEqualToString:@"com.apple.nanotimekit.NTKGreenfieldAddWatchFaceManager"];

  if (!v6)
  {
    goto LABEL_11;
  }

  code = [errorCopy code];
  if (code <= 4)
  {
    if (code >= 2)
    {
      if ((code - 2) >= 2)
      {
        if (code != 4)
        {
          goto LABEL_13;
        }

        v10 = @"GREENFIELD_ADD_WATCH_FACE_ERROR_FAILED_TO_DOWNLOAD_WATCH_FACE_DATA_TITLE";
        v11 = @"This Watch Face is Not Available at This Time";
      }

      else
      {
        v10 = @"GREENFIELD_B640_WATCH_FACE_NO_WATCH_PAIRED_ERROR_ALERT_TITLE";
        v11 = @"No Apple Watch Paired";
      }

LABEL_12:
      self = NTKClockFaceLocalizedString(v10, v11);
      goto LABEL_13;
    }

LABEL_11:
    v10 = @"GREENFIELD_B640_WATCH_FACE_GENERIC_ERROR_ALERT_TITLE";
    v11 = @"Add Watch Face";
    goto LABEL_12;
  }

  if (code > 0x10)
  {
    goto LABEL_22;
  }

  if (((1 << code) & 0x3D80) != 0)
  {
    goto LABEL_11;
  }

  if (((1 << code) & 0x1C200) != 0)
  {
    watchFaceModels = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels];
    v9 = [watchFaceModels count];

    if (v9 < 2)
    {
      v10 = @"GREENFIELD_B640_WATCH_FACE_UNAVAILABLE_ERROR_ALERT_TITLE_SINGULAR";
      v11 = @"Watch Face Unavailable";
    }

    else
    {
      v10 = @"GREENFIELD_B640_WATCH_FACE_UNAVAILABLE_ERROR_ALERT_TITLE_PLURAL";
      v11 = @"Watch Faces Unavailable";
    }

    goto LABEL_12;
  }

  if (code == 6)
  {
    watchFaceModels2 = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels];
    v14 = [watchFaceModels2 count];

    if (v14 < 2)
    {
      v10 = @"GREENFIELD_B640_WATCH_FACE_CANNOT_ADD_ANOTHER_FACE_ERROR_TITLE_SINGULAR";
      v11 = @"You Already Have This Face";
    }

    else
    {
      v10 = @"GREENFIELD_B640_WATCH_FACE_CANNOT_ADD_ANOTHER_FACE_ERROR_TITLE_PLURAL";
      v11 = @"You Already Have These Faces";
    }

    goto LABEL_12;
  }

LABEL_22:
  if (code == 5)
  {
    v10 = @"GREENFIELD_B640_WATCH_FACE_LIBRARY_FULL_ERROR_ALERT_TITLE";
    v11 = @"Limit Reached";
    goto LABEL_12;
  }

LABEL_13:

  return self;
}

- (void)_didTapShowInternalErrorButton
{
  v3 = MEMORY[0x277CCACA8];
  error = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model error];
  v7 = [v3 stringWithFormat:@"Please file a radar to Watch Faces if you think this is an error.\n %@", error];

  v5 = [MEMORY[0x277D75110] alertControllerWithTitle:@"[Internal Only]" message:v7 preferredStyle:1];
  v6 = [MEMORY[0x277D750F8] actionWithTitle:@"Ok" style:1 handler:0];
  [v5 addAction:v6];

  [(NTKGreenfieldB640ContentViewController *)self presentViewController:v5 animated:1 completion:0];
}

- (NTKGreenfieldB640ContentViewControllerDelegate)greenfieldB640delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_greenfieldB640delegate);

  return WeakRetained;
}

@end