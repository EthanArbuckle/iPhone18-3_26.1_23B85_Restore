@interface NTKGreenfieldB640ContentViewController
- (CGSize)cellSize;
- (NTKGreenfieldB640ContentViewControllerDelegate)greenfieldB640delegate;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (id)_defaultBandNameForCurrentPairedDevice;
- (id)_subtitleForError:(id)a3;
- (id)_titleForError:(id)a3;
- (id)alternateButtonTitle;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)detailString;
- (id)initForAddWatchFacesStateWithGreenfieldB640Model:(id)a3;
- (id)initForErrorStateWithGreenfieldB640Model:(id)a3;
- (id)suggestedButtonTitle;
- (id)titleString;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)_didTapShowInternalErrorButton;
- (void)_notifyDelegateOfActionEventWatchFaceSelected:(id)a3;
- (void)_presentErrorAlert;
- (void)_setupContentForAddWathFaceWithBandImagePath:(id)a3 bundle:(id)a4;
- (void)_setupViews;
- (void)_updateSelectedState:(BOOL)a3 forCellAtIndexPath:(id)a4;
- (void)alternateButtonPressed:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)handleWatchFaceSelectedAtIndex:(int64_t)a3;
- (void)handleWatchFaceSelectedWithError:(id)a3;
- (void)suggestedButtonPressed:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation NTKGreenfieldB640ContentViewController

- (id)initForAddWatchFacesStateWithGreenfieldB640Model:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = NTKGreenfieldB640ContentViewController;
  v6 = [(NTKGreenfieldB640ContentViewController *)&v11 initWithTitle:&stru_284110E98 detailText:0 icon:0 contentLayout:3];
  v7 = v6;
  if (v6)
  {
    v6->_state = 0;
    [(BPSWelcomeOptinViewController *)v6 setStyle:10];
    objc_storeStrong(&v7->_greenfieldB640Model, a3);
    v8 = dispatch_queue_create("com.apple.NanoTimeKit.NTKGreenfieldB640ContentViewControllerDecodeBandImage.queue", 0);
    workQueue = v7->_workQueue;
    v7->_workQueue = v8;
  }

  return v7;
}

- (id)initForErrorStateWithGreenfieldB640Model:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v29.receiver = self;
  v29.super_class = NTKGreenfieldB640ContentViewController;
  v6 = [(NTKGreenfieldB640ContentViewController *)&v29 initWithTitle:&stru_284110E98 detailText:0 icon:0 contentLayout:3];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_greenfieldB640Model, a3);
    v8 = dispatch_queue_create("com.apple.NanoTimeKit.NTKGreenfieldB640ContentViewControllerDecodeBandImage.queue", 0);
    workQueue = v7->_workQueue;
    v7->_workQueue = v8;

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = [(NTKGreenfieldB640Model *)v7->_greenfieldB640Model watchFaceModels];
    v11 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
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
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v25 + 1) + 8 * v14) decodedRecipe];
          v16 = [v15 watchFace];

          if (!v16)
          {
            v17 = 1;
            goto LABEL_12;
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v17 = 0;
LABEL_12:

    v18 = [(NTKGreenfieldB640Model *)v7->_greenfieldB640Model watchFaceModels];
    v19 = [v18 count];

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
    v4 = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model bandImagePath];
    v5 = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model bandImageBundle];
    [(NTKGreenfieldB640ContentViewController *)self _setupContentForAddWathFaceWithBandImagePath:v4 bundle:v5];

    v6 = [(BPSWelcomeOptinViewController *)self alternateChoiceButton];
    v7 = BPSSetupTintColor();
    [v6 setTitleColor:v7 forState:0];
  }
}

- (void)viewDidLayoutSubviews
{
  v36.receiver = self;
  v36.super_class = NTKGreenfieldB640ContentViewController;
  [(OBBaseWelcomeController *)&v36 viewDidLayoutSubviews];
  [(UICollectionView *)self->_facesCollectionView frame];
  v3 = [(NTKGreenfieldB640ContentViewController *)self view];
  [v3 bounds];
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
  v10 = [(NTKGreenfieldB640ContentViewController *)self view];
  [v10 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [(NTKGreenfieldB640ContentViewController *)self scrollView];
  [v19 setFrame:{v12, v14, v16, v18}];

  v20 = [(NTKGreenfieldB640ContentViewController *)self scrollView];
  [v20 verticalScrollIndicatorInsets];
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = [(NTKGreenfieldB640ContentViewController *)self view];
  [v27 safeAreaInsets];
  v29 = v28;

  v30 = [(NTKGreenfieldB640ContentViewController *)self scrollView];
  [v30 setVerticalScrollIndicatorInsets:{v29, v22, v24, v26}];
}

- (id)titleString
{
  state = self->_state;
  if (state == 1)
  {
    v13 = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model error];
    v12 = [(NTKGreenfieldB640ContentViewController *)self _titleForError:v13];
  }

  else if (state)
  {
    v12 = 0;
  }

  else
  {
    v4 = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels];
    v5 = [v4 count];

    if (v5 == 1)
    {
      v6 = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels];
      v7 = [v6 firstObject];

      v8 = [v7 decodedRecipe];
      v9 = [v8 watchFace];
      v10 = [v9 faceSharingName];

      v11 = NTKClockFaceLocalizedString(@"GREENFIELD_B640_TITLE_WATCH_FACE_MAIN_SCREEN", @"Add %@ Watch Face");
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:v11, v10];
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
    v3 = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model error];
    v4 = [(NTKGreenfieldB640ContentViewController *)self _subtitleForError:v3];
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

- (void)suggestedButtonPressed:(id)a3
{
  v4 = a3;
  v5 = v4;
  state = self->_state;
  if (state == 1)
  {
    v9 = v4;
    v8 = NTKInternalBuild(v4, v4);
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

    v9 = v4;
    WeakRetained = objc_loadWeakRetained(&self->_greenfieldB640delegate);
    [WeakRetained greenfieldB640ContentViewController:self handleButtonActionEvent:0];
  }

  v5 = v9;
LABEL_7:
}

- (void)alternateButtonPressed:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_greenfieldB640delegate);
  [WeakRetained greenfieldB640ContentViewController:self handleButtonActionEvent:1];
}

- (void)handleWatchFaceSelectedAtIndex:(int64_t)a3
{
  v5 = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels];
  v6 = [v5 count];

  if (v6 > a3)
  {
    v7 = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels];
    v9 = [v7 objectAtIndex:a3];

    v8 = [MEMORY[0x277CCAA70] indexPathForRow:a3 inSection:0];
    -[NTKGreenfieldB640ContentViewController _updateSelectedState:forCellAtIndexPath:](self, "_updateSelectedState:forCellAtIndexPath:", [v9 isSelected], v8);
  }
}

- (void)handleWatchFaceSelectedWithError:(id)a3
{
  v4 = a3;
  v10 = [(NTKGreenfieldB640ContentViewController *)self _titleForError:v4];
  v5 = [(NTKGreenfieldB640ContentViewController *)self _subtitleForError:v4];

  v6 = [MEMORY[0x277D75110] alertControllerWithTitle:v10 message:v5 preferredStyle:1];
  v7 = MEMORY[0x277D750F8];
  v8 = NTKClockFaceLocalizedString(@"GREENFIELD_B640_ERROR_ALERT_OK_BUTON_TITLE", @"OK");
  v9 = [v7 actionWithTitle:v8 style:1 handler:0];

  [v6 addAction:v9];
  [(NTKGreenfieldB640ContentViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)_setupContentForAddWathFaceWithBandImagePath:(id)a3 bundle:(id)a4
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
  v2 = [MEMORY[0x277CBBAE8] currentDevice];
  v3 = [v2 deviceCategory];
  if ((v3 - 3) > 3)
  {
    v4 = @"default_band_asset";
  }

  else
  {
    v4 = off_27877E548[v3 - 3];
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
  v12 = [(NTKGreenfieldB640ContentViewController *)self contentView];
  [v12 addSubview:self->_facesCollectionView];

  v23 = MEMORY[0x277CCAAD0];
  v30 = [(NTKGreenfieldB640ContentViewController *)self contentView];
  v29 = [v30 topAnchor];
  v28 = [(UICollectionView *)self->_facesCollectionView topAnchor];
  v27 = [v29 constraintEqualToAnchor:v28];
  v31[0] = v27;
  v26 = [(NTKGreenfieldB640ContentViewController *)self contentView];
  v25 = [v26 leadingAnchor];
  v24 = [(UICollectionView *)self->_facesCollectionView leadingAnchor];
  v13 = [v25 constraintEqualToAnchor:v24];
  v31[1] = v13;
  v14 = [(NTKGreenfieldB640ContentViewController *)self contentView];
  v15 = [v14 trailingAnchor];
  v16 = [(UICollectionView *)self->_facesCollectionView trailingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  v31[2] = v17;
  v18 = [(NTKGreenfieldB640ContentViewController *)self contentView];
  v19 = [v18 bottomAnchor];
  v20 = [(UICollectionView *)self->_facesCollectionView bottomAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  v31[3] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];
  [v23 activateConstraints:v22];
}

- (void)_presentErrorAlert
{
  v3 = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model error];
  v4 = [(NTKGreenfieldB640ContentViewController *)self _titleForError:v3];

  v5 = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model error];
  v6 = [(NTKGreenfieldB640ContentViewController *)self _subtitleForError:v5];

  if (NTKInternalBuild(v7, v8))
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model error];
    v11 = [v9 stringWithFormat:@"\n \n [INTERNAL ONLY] \n Please file a radar and include a sysdiagnose. Error: reason: %@", v10];

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

- (void)_notifyDelegateOfActionEventWatchFaceSelected:(id)a3
{
  v7 = a3;
  v4 = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels];
  v5 = [v7 row];
  if (v5 < [v4 count] && (objc_msgSend(v7, "row") & 0x8000000000000000) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_greenfieldB640delegate);
    [WeakRetained greenfieldB640ContentViewController:self handleWatchFaceSelectedEventAtIndex:{objc_msgSend(v7, "row")}];
  }
}

- (CGSize)cellSize
{
  v21 = *MEMORY[0x277D85DE8];
  width = self->_cellSize.width;
  height = self->_cellSize.height;
  if (width == *MEMORY[0x277CBF3A8] && height == *(MEMORY[0x277CBF3A8] + 8))
  {
    v5 = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(v5);
          }

          v11 = [*(*(&v16 + 1) + 8 * i) decodedRecipe];
          v12 = [v11 watchFace];
          v13 = [v12 faceSharingName];

          v14 = [v13 length];
          if (v14 > [(__CFString *)v9 length])
          {
            v15 = v13;

            v9 = v15;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    NTKImageNamed(@"default_band_asset");
  }

  result.height = height;
  result.width = width;
  return result;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v5 = a4;
  facesCollectionView = self->_facesCollectionView;
  v7 = +[NTKGreenfieldB640CollectionViewCell reuseIdentifier];
  v8 = [(UICollectionView *)facesCollectionView dequeueReusableCellWithReuseIdentifier:v7 forIndexPath:v5];

  state = self->_state;
  if (state)
  {
    v10 = 0;
  }

  else
  {
    v11 = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels];
    v10 = [v11 count] > 1;

    state = self->_state;
  }

  v12 = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels];
  v13 = [v12 objectAtIndex:{objc_msgSend(v5, "row")}];

  v14 = [v13 isSelected];
  v15 = [v13 decodedRecipe];
  if (self->_state <= 1)
  {
    [v8 prepareCellWithDecodedRecipe:v15 bandImage:self->_watchBandImage shouldPresentFaceName:(state == 1) | v10 shouldPresentCheckmark:v10 isSelected:v14];
  }

  v16 = BPSBackgroundColor();
  [v8 setBackgroundColor:v16];

  return v8;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  if (!self->_state)
  {
    [(NTKGreenfieldB640ContentViewController *)self _notifyDelegateOfActionEventWatchFaceSelected:a4];
  }
}

- (void)_updateSelectedState:(BOOL)a3 forCellAtIndexPath:(id)a4
{
  v4 = a3;
  v5 = [(UICollectionView *)self->_facesCollectionView cellForItemAtIndexPath:a4];
  [v5 updateSeletedState:v4];
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels:a3];
  v5 = [v4 count];

  return v5;
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  [(NTKGreenfieldB640ContentViewController *)self cellSize:a3];
  v7 = v6;
  v8 = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels];
  v9 = [v8 count];

  if (v9)
  {
    v10 = 0;
    v11 = 0.0;
    do
    {
      v12 = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels];
      v13 = [v12 count] - 1;

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
      v15 = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels];
      v16 = [v15 count];
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

- (id)_subtitleForError:(id)a3
{
  v4 = a3;
  v5 = [v4 domain];
  v6 = [v5 isEqualToString:@"com.apple.nanotimekit.NTKGreenfieldAddWatchFaceManager"];

  if (v6)
  {
    switch([v4 code])
    {
      case 0:
        goto LABEL_5;
      case 1:
      case 8:
      case 11:
        v7 = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels];
        v8 = [v7 count];

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
        v22 = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels];
        v23 = [v22 count];

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
        v16 = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels];
        v17 = [v16 count];

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
        v36 = [MEMORY[0x277CBBAE8] currentDevice];
        [v18 localizedStringWithFormat:v28, NTKFaceLibraryMaxFaceCountForDevice(v36)];
        goto LABEL_38;
      case 6:
        v20 = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels];
        v21 = [v20 count];

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
        v24 = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels];
        v25 = [v24 count];

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
        v34 = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels];
        v35 = [v34 count];

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
        v26 = [MEMORY[0x277CBBAE8] currentDevice];
        v27 = [v26 pdrDevice];
        v28 = [v27 valueForProperty:*MEMORY[0x277D37BD8]];

        v29 = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels];
        v30 = [v29 count];

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

        v36 = NTKClockFaceLocalizedString(v32, v33);
        [v31 localizedStringWithFormat:v36, v28];
        self = LABEL_38:;

        break;
      case 14:
      case 15:
      case 16:
        v14 = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels];
        v15 = [v14 count];

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
    v11 = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels];
    v12 = [v11 count];

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

- (id)_titleForError:(id)a3
{
  v4 = a3;
  v5 = [v4 domain];
  v6 = [v5 isEqualToString:@"com.apple.nanotimekit.NTKGreenfieldAddWatchFaceManager"];

  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = [v4 code];
  if (v7 <= 4)
  {
    if (v7 >= 2)
    {
      if ((v7 - 2) >= 2)
      {
        if (v7 != 4)
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

  if (v7 > 0x10)
  {
    goto LABEL_22;
  }

  if (((1 << v7) & 0x3D80) != 0)
  {
    goto LABEL_11;
  }

  if (((1 << v7) & 0x1C200) != 0)
  {
    v8 = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels];
    v9 = [v8 count];

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

  if (v7 == 6)
  {
    v13 = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels];
    v14 = [v13 count];

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
  if (v7 == 5)
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
  v4 = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model error];
  v7 = [v3 stringWithFormat:@"Please file a radar to Watch Faces if you think this is an error.\n %@", v4];

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