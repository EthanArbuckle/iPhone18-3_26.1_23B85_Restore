@interface ICDocCamExtractedDocumentViewController
+ (BOOL)isLiquidGlassEnabledForEdit;
+ (CGRect)targetRectForOrientation:(int64_t)a3 window:(id)a4;
- (BOOL)accessibilityScrollLeftPage;
- (BOOL)accessibilityScrollRightPage;
- (BOOL)cameraDisabled;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)currentImageHasMarkup;
- (BOOL)filterViewControllerApplyToAll:(signed __int16)a3;
- (BOOL)filterViewControllerCanApplyToAll:(signed __int16)a3;
- (BOOL)filterViewControllerDidSelectFilter:(signed __int16)a3;
- (BOOL)imageIsPortrait:(id)a3;
- (BOOL)isPageViewControllerScrolled;
- (BOOL)prefersStatusBarHidden;
- (BOOL)shouldDisableActions;
- (BOOL)shouldDisableSharrow;
- (BOOL)thumbnailContainerViewIsVisible;
- (BOOL)thumbnailContainerViewIsVisible:(id)a3;
- (CGRect)imageRectWithZoomAndPanForIndexPath:(id)a3;
- (CGRect)menuControllerTargetRect;
- (CGRect)targetViewRect;
- (CGRect)zoomTargetForIndexPath:(id)a3;
- (CGSize)collectionView:(id)a3 imageSizeAtIndex:(int64_t)a4;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (CGSize)frameSizeForImageSize:(CGSize)a3;
- (CGSize)imageSizeForDocumentAtIndex:(int64_t)a3;
- (CGSize)previousViewSize;
- (CIContext)sharedCoreImageContext;
- (DCScanDataDelegate)scanCollectionDataDelegate;
- (DCScanDataDelegate)selectedScanDataDelegate;
- (ICDocCamExtractedDocumentControllerDelegate)delegate;
- (ICDocCamExtractedDocumentViewController)initWithDelegate:(id)a3 documentInfoCollection:(id)a4 imageCache:(id)a5 currentIndex:(int64_t)a6 mode:(int)a7;
- (ICDocCamReorderingThumbnailCollectionViewLayout)thumbnailCollectionViewLayout;
- (UIAlertController)editTitleAlert;
- (UIImageView)currentImageView;
- (UIToolbar)bottomToolbar;
- (UIView)pageViewControllerContainerView;
- (UIView)topToolbar;
- (double)normalizedPageViewControllerScrollPosition;
- (double)thumbnailToolbarHeight;
- (id)_accessibilitySpeakThisElementsAndStrings;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)croppedAndFilteredmageForDocumentAtIndex:(int64_t)a3;
- (id)croppedButNotFilteredImageForDocInfo:(id)a3;
- (id)croppedButNotFilteredImageForDocumentAtIndex:(int64_t)a3;
- (id)currentBackgroundColor;
- (id)currentDocument;
- (id)currentPageContentViewController;
- (id)imageForDocInfo:(id)a3 newFilter:(signed __int16)a4;
- (id)indexPathForCurrentDocument;
- (id)makeUIImageFromCIImage:(id)a3;
- (id)orientationString:(int64_t)a3;
- (id)pageViewController:(id)a3 viewControllerAfterViewController:(id)a4;
- (id)pageViewController:(id)a3 viewControllerBeforeViewController:(id)a4;
- (id)truncatedString:(id)a3 clipLength:(unint64_t)a4;
- (id)undoManager;
- (id)viewControllerAtIndex:(unint64_t)a3;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)orientationRotated90DegreesFromOrientation:(int64_t)a3;
- (unint64_t)documentCount;
- (unint64_t)thumbnailContainerViewNumberOfItems:(id)a3;
- (void)_pageViewControllerDidFinishTransitions:(id)a3;
- (void)addImageAction:(id)a3;
- (void)alertAndDiscardMarkup;
- (void)applyFilter:(signed __int16)a3;
- (void)changePage:(int64_t)a3;
- (void)collectionNameTapped:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 moveItemAtIndexPath:(id)a4 toIndexPath:(id)a5;
- (void)contentSizeCategoryDidChange:(id)a3;
- (void)copy:(id)a3;
- (void)dealloc;
- (void)defaultsChanged;
- (void)deleteButtonAction:(id)a3;
- (void)deleteCurrentPage;
- (void)didDismissMarkupViewController;
- (void)didUpdateDocumentImage:(id)a3;
- (void)didUpdateDocumentInfoArrayNewCurrentDocument:(id)a3;
- (void)didUpdateDocumentTitle:(id)a3;
- (void)doneAction:(id)a3;
- (void)handleAccessibilityLongPressOnCollectionTitle:(id)a3;
- (void)hideBarsForZoomablePageContentViewController:(id)a3;
- (void)pageViewController:(id)a3 didFinishAnimating:(BOOL)a4 previousViewControllers:(id)a5 transitionCompleted:(BOOL)a6;
- (void)pageViewController:(id)a3 willTransitionToViewControllers:(id)a4;
- (void)pencilDownInZoomablePageContentViewController:(id)a3;
- (void)prepareForDismissal;
- (void)recreateThumbnailContainerWithWidth:(double)a3 leadingTrailingMargin:(double)a4;
- (void)recropButtonPressed:(id)a3;
- (void)resetImageCentering;
- (void)respondToImageLongPressGesture:(id)a3;
- (void)respondToThumbnailLongPressGesture:(id)a3;
- (void)retakeAction:(id)a3;
- (void)rotateAction:(id)a3;
- (void)rotateCurrentImage;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)setCurrentThumbnailItem:(unint64_t)a3 animated:(BOOL)a4;
- (void)setImage:(id)a3 forCell:(id)a4 useResizedImage:(BOOL)a5;
- (void)setIsScrollingBetweenPages:(BOOL)a3;
- (void)setPresentationPageIndex:(int64_t)a3;
- (void)setupAccessibilityInfo;
- (void)setupBottomToolbar;
- (void)setupGlurBar;
- (void)setupThumbnailViewController;
- (void)share:(id)a3;
- (void)shareAction:(id)a3;
- (void)showBarsForZoomablePageContentViewController:(id)a3;
- (void)showPrimaryControllerForNotes:(id)a3 animated:(BOOL)a4;
- (void)showViewControllerAtIndex:(unint64_t)a3 animated:(BOOL)a4;
- (void)speakAccessibilityAnnouncementForMovingItemFromIndexPath:(id)a3 toIndexPath:(id)a4;
- (void)speakAccessibilityAnnouncementForReorderIfNecessaryForProposedIndexPath:(id)a3;
- (void)startMarkupViewController;
- (void)switchBarVisibilityForZoomablePageContentViewController:(id)a3;
- (void)thumbnailContainerView:(id)a3 moveItemFromIndex:(int64_t)a4 toIndex:(int64_t)a5;
- (void)thumbnailContainerViewDecrementCurrentIndex:(id)a3;
- (void)thumbnailContainerViewIncrementCurrentIndex:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateBottomToolbarButtonsForCurrentMode;
- (void)updateDocumentImage:(id)a3;
- (void)updateFilterButtonItemAccessibilityInfo;
- (void)updateFilterButtonMenu;
- (void)updateForAccessibilityDarkerSystemColors;
- (void)updateImage:(id)a3 document:(id)a4 withFilterType:(signed __int16)a5;
- (void)updateImageViewAccessibilityForPageContentViewController:(id)a3;
- (void)updateLayout;
- (void)updatePageIndicatorForPageIndex:(int64_t)a3;
- (void)updatePageViewControllerConstraints:(BOOL)a3 animationBlock:(id)a4 completionBlock:(id)a5;
- (void)updateTitleView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation ICDocCamExtractedDocumentViewController

- (CGSize)imageSizeForDocumentAtIndex:(int64_t)a3
{
  v5 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  v6 = [v5 docInfos];
  v7 = [v6 count];

  v8 = 0.0;
  v9 = 0.0;
  if (v7 > a3)
  {
    v10 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
    v11 = [v10 docInfos];
    v12 = [v11 objectAtIndexedSubscript:a3];

    v13 = [v12 croppedAndFilteredImageUUID];

    if (v13)
    {
      v14 = [(ICDocCamExtractedDocumentViewController *)self imageCache];
      v15 = [v12 croppedAndFilteredImageUUID];
      [v14 getImageSize:v15];
      v8 = v16;
      v9 = v17;
    }

    else
    {
      v18 = [(ICDocCamExtractedDocumentViewController *)self delegate];
      v19 = objc_opt_respondsToSelector();

      if ((v19 & 1) == 0)
      {
LABEL_7:

        goto LABEL_8;
      }

      v14 = [(ICDocCamExtractedDocumentViewController *)self delegate];
      v15 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
      v20 = [v15 docInfos];
      v21 = [v20 objectAtIndexedSubscript:a3];
      [v14 extractedDocumentControllerImageSizeForDocument:v21];
      v8 = v22;
      v9 = v23;
    }

    goto LABEL_7;
  }

LABEL_8:
  v24 = v8;
  v25 = v9;
  result.height = v25;
  result.width = v24;
  return result;
}

- (id)croppedAndFilteredmageForDocumentAtIndex:(int64_t)a3
{
  v5 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  v6 = [v5 docInfos];
  v7 = [v6 count];

  if (v7 <= a3)
  {
    v14 = 0;
    goto LABEL_9;
  }

  v8 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  v9 = [v8 docInfos];
  v10 = [v9 objectAtIndexedSubscript:a3];

  v11 = [v10 croppedAndFilteredImageUUID];

  if (v11)
  {
    v12 = [(ICDocCamExtractedDocumentViewController *)self imageCache];
    v13 = [v10 croppedAndFilteredImageUUID];
    v14 = [v12 getImage:v13];
  }

  else
  {
    v15 = [(ICDocCamExtractedDocumentViewController *)self delegate];
    v16 = objc_opt_respondsToSelector();

    if ((v16 & 1) == 0)
    {
      v14 = 0;
      goto LABEL_8;
    }

    v12 = [(ICDocCamExtractedDocumentViewController *)self delegate];
    v14 = [v12 extractedDocumentControllerImageForDocument:v10];
  }

LABEL_8:
LABEL_9:

  return v14;
}

- (id)croppedButNotFilteredImageForDocumentAtIndex:(int64_t)a3
{
  v5 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  v6 = [v5 docInfos];
  if ([v6 count] <= a3)
  {
    v10 = 0;
  }

  else
  {
    v7 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
    v8 = [v7 docInfos];
    v9 = [v8 objectAtIndexedSubscript:a3];
    v10 = [(ICDocCamExtractedDocumentViewController *)self croppedButNotFilteredImageForDocInfo:v9];
  }

  return v10;
}

- (id)croppedButNotFilteredImageForDocInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 croppedButNotFilteredImageUUID];

  if (!v5 || (-[ICDocCamExtractedDocumentViewController imageCache](self, "imageCache"), v6 = objc_claimAutoreleasedReturnValue(), [v4 croppedButNotFilteredImageUUID], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "getImage:", v7), v8 = objc_claimAutoreleasedReturnValue(), v7, v6, !v8))
  {
    v9 = [(ICDocCamExtractedDocumentViewController *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if ((v10 & 1) == 0 || (-[ICDocCamExtractedDocumentViewController delegate](self, "delegate"), v11 = objc_claimAutoreleasedReturnValue(), [v11 extractedDocumentControllerUncroppedImageForDocument:v4], v8 = objc_claimAutoreleasedReturnValue(), v11, !v8))
    {
      v8 = [v4 fullImageUUID];

      if (v8)
      {
        v12 = [(ICDocCamExtractedDocumentViewController *)self imageCache];
        v13 = [v4 fullImageUUID];
        v8 = [v12 getImage:v13];
      }
    }

    v14 = [v4 imageQuad];
    v15 = v14;
    if (v8 && v14)
    {
      v16 = [ICDocCamImageFilters perspectiveCorrectedImageFromImage:v8 normalizedImageQuad:v14];

      v8 = v16;
    }

    if (v8)
    {
      v17 = [(ICDocCamExtractedDocumentViewController *)self delegate];
      v18 = objc_opt_respondsToSelector();

      if ((v18 & 1) == 0)
      {
        v19 = [(ICDocCamExtractedDocumentViewController *)self imageCache];
        v20 = [v4 metaData];
        v21 = [v19 setImage:v8 metaData:v20];
        [v4 setCroppedButNotFilteredImageUUID:v21];
      }
    }
  }

  return v8;
}

- (CIContext)sharedCoreImageContext
{
  v2 = self;
  objc_sync_enter(v2);
  sharedCoreImageContext = v2->_sharedCoreImageContext;
  if (!sharedCoreImageContext)
  {
    v4 = +[ICDocCamImageFilters sharedCoreImageContext];
    v5 = v2->_sharedCoreImageContext;
    v2->_sharedCoreImageContext = v4;

    sharedCoreImageContext = v2->_sharedCoreImageContext;
  }

  v6 = sharedCoreImageContext;
  objc_sync_exit(v2);

  return v6;
}

+ (CGRect)targetRectForOrientation:(int64_t)a3 window:(id)a4
{
  v5 = a4;
  [ICDocCamPageContentViewController leadingTrailingOffset:a3];
  v7 = v6;
  v8 = [MEMORY[0x277D759A0] mainScreen];
  [v8 bounds];
  v10 = v9;
  v12 = v11;

  v13 = 37.0;
  if ((DCDebugInterfaceEnabled() & 1) != 0 || ([MEMORY[0x277D75418] currentDevice], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "userInterfaceIdiom"), v14, v15 == 1))
  {
    *&v16 = 44.0;
  }

  else
  {
    if ((a3 - 1) < 2 || (a3 - 3) <= 1 && ![v5 dc_requiresCompactLandscapeIcons])
    {
      v17 = 44.0;
      v13 = 113.0;
      goto LABEL_5;
    }

    *&v16 = 32.0;
  }

  v17 = *&v16;
LABEL_5:

  v18 = v7;
  v19 = v17;
  v20 = v10 + v7 * -2.0;
  v21 = v12 - (v17 + v13);
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (ICDocCamExtractedDocumentViewController)initWithDelegate:(id)a3 documentInfoCollection:(id)a4 imageCache:(id)a5 currentIndex:(int64_t)a6 mode:(int)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18.receiver = self;
  v18.super_class = ICDocCamExtractedDocumentViewController;
  v16 = [(ICDocCamExtractedDocumentViewController *)&v18 initWithNibName:@"ICDocCamExtractedDocumentViewController" bundle:v15];

  if (v16)
  {
    objc_storeWeak(&v16->_delegate, v12);
    objc_storeStrong(&v16->_documentInfoCollection, a4);
    v16->_presentationPageIndex = a6;
    objc_storeStrong(&v16->_imageCache, a5);
    v16->_mode = a7;
  }

  [(ICDocCamExtractedDocumentViewController *)v16 updatePageIndicatorForPageIndex:[(ICDocCamExtractedDocumentViewController *)v16 presentationPageIndex]];

  return v16;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICDocCamExtractedDocumentViewController;
  [(ICDocCamExtractedDocumentViewController *)&v4 dealloc];
}

- (id)undoManager
{
  v3 = [(ICDocCamExtractedDocumentViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(ICDocCamExtractedDocumentViewController *)self delegate];
    v6 = [v5 extractedDocumentControllerUndoManager];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = ICDocCamExtractedDocumentViewController;
    v6 = [(ICDocCamExtractedDocumentViewController *)&v8 undoManager];
  }

  return v6;
}

- (void)defaultsChanged
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__ICDocCamExtractedDocumentViewController_defaultsChanged__block_invoke;
  block[3] = &unk_278F92C70;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __58__ICDocCamExtractedDocumentViewController_defaultsChanged__block_invoke(uint64_t a1)
{
  if ([MEMORY[0x277D755C8] isSourceTypeAvailable:1] && (v2 = (a1 + 32), (objc_msgSend(*(a1 + 32), "cameraDisabled") & 1) == 0))
  {
    result = [*v2 cameraRestricted];
    if ((result & 1) == 0)
    {
      return result;
    }

    v3 = 0;
  }

  else
  {
    v3 = DCDebugInterfaceEnabled() ^ 1;
    v5 = *(a1 + 32);
    v4 = (a1 + 32);
    result = [v5 cameraRestricted];
    if (result == v3)
    {
      return result;
    }

    v2 = v4;
  }

  [*v2 setCameraRestricted:v3];
  v7 = *v2;

  return [v7 updateLayout];
}

- (BOOL)cameraDisabled
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"com.apple.notes.cameraDisabled"];

  return v3;
}

- (void)viewDidLoad
{
  v94 = *MEMORY[0x277D85DE8];
  v84.receiver = self;
  v84.super_class = ICDocCamExtractedDocumentViewController;
  [(ICDocCamExtractedDocumentViewController *)&v84 viewDidLoad];
  v85[0] = 0;
  if (UIAccessibilityLibraryCore_frameworkLibrary)
  {
    v3 = UIAccessibilityLibraryCore_frameworkLibrary;
    goto LABEL_5;
  }

  v85[1] = MEMORY[0x277D85DD0];
  v85[2] = 3221225472;
  v85[3] = __UIAccessibilityLibraryCore_block_invoke;
  v85[4] = &__block_descriptor_40_e5_v8__0l;
  v85[5] = v85;
  v92 = xmmword_278F93050;
  v93 = 0;
  UIAccessibilityLibraryCore_frameworkLibrary = _sl_dlopen();
  v4 = v85[0];
  v3 = UIAccessibilityLibraryCore_frameworkLibrary;
  if (UIAccessibilityLibraryCore_frameworkLibrary)
  {
    if (!v85[0])
    {
      goto LABEL_5;
    }
  }

  else
  {
    v83 = v85[0];
    v4 = abort_report_np();
  }

  free(v4);
LABEL_5:
  dlsym(v3, "_UIAccessibilityStart");
  [(ICDocCamExtractedDocumentViewController *)self setModalPresentationCapturesStatusBarAppearance:1];
  if ([objc_opt_class() isLiquidGlassEnabledForEdit])
  {
    v5 = [(ICDocCamExtractedDocumentViewController *)self doneButtonItem];
    v6 = [v5 action];

    v7 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:101 target:self action:v6];
    [(ICDocCamExtractedDocumentViewController *)self setDoneButtonItem:v7];
  }

  else
  {
    v8 = [(ICDocCamExtractedDocumentViewController *)self navigationController];
    v9 = [v8 navigationBar];
    [v9 setBarStyle:0];

    v10 = [MEMORY[0x277D75348] dc_barColor];
    v11 = [(ICDocCamExtractedDocumentViewController *)self navigationController];
    v12 = [v11 navigationBar];
    [v12 setBarTintColor:v10];

    v13 = [MEMORY[0x277D75348] dc_barColor];
    v14 = [(ICDocCamExtractedDocumentViewController *)self bottomToolbar];
    [v14 setBarTintColor:v13];

    [(ICDocCamExtractedDocumentViewController *)self setNeedsStatusBarAppearanceUpdate];
  }

  v15 = [MEMORY[0x277D75348] DCExtractedDocumentViewControllerBackgroundColor];
  v16 = [(ICDocCamExtractedDocumentViewController *)self view];
  [v16 setBackgroundColor:v15];

  [(ICDocCamExtractedDocumentViewController *)self setupBottomToolbar];
  v17 = [MEMORY[0x277CCAB98] defaultCenter];
  [v17 addObserver:self selector:sel_defaultsChanged name:*MEMORY[0x277CCA858] object:0];

  v18 = (DCDebugInterfaceEnabled() & 1) == 0 && (![MEMORY[0x277D755C8] isSourceTypeAvailable:1] || -[ICDocCamExtractedDocumentViewController cameraDisabled](self, "cameraDisabled"));
  [(ICDocCamExtractedDocumentViewController *)self setCameraRestricted:v18];
  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(ICDocCamExtractedDocumentViewController *)self setDocumentsToUpdateWhenScrollingStops:v19];

  [(ICDocCamExtractedDocumentViewController *)self setPreviousViewSize:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  [(ICDocCamExtractedDocumentViewController *)self setEdgesForExtendedLayout:15];
  [(ICDocCamExtractedDocumentViewController *)self setExtendedLayoutIncludesOpaqueBars:1];
  v20 = objc_alloc(MEMORY[0x277D757F0]);
  v90 = *MEMORY[0x277D76DB0];
  v91 = &unk_285C6D218;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
  v22 = [v20 initWithTransitionStyle:1 navigationOrientation:0 options:v21];
  [(ICDocCamExtractedDocumentViewController *)self setPageViewController:v22];

  v23 = [(ICDocCamExtractedDocumentViewController *)self pageViewController];
  [v23 setDataSource:self];

  v24 = [(ICDocCamExtractedDocumentViewController *)self pageViewController];
  [v24 setDelegate:self];

  v25 = [(ICDocCamExtractedDocumentViewController *)self pageViewController];
  [(ICDocCamExtractedDocumentViewController *)self addChildViewController:v25];

  v26 = [(ICDocCamExtractedDocumentViewController *)self pageViewControllerContainerView];
  v27 = [(ICDocCamExtractedDocumentViewController *)self pageViewController];
  v28 = [v27 view];
  [v26 addSubview:v28];

  v29 = [(ICDocCamExtractedDocumentViewController *)self pageViewController];
  [v29 didMoveToParentViewController:self];

  v30 = [(ICDocCamExtractedDocumentViewController *)self currentBackgroundColor];
  v31 = [(ICDocCamExtractedDocumentViewController *)self pageViewControllerContainerView];
  [v31 setBackgroundColor:v30];

  v32 = MEMORY[0x277CCAAD0];
  v88 = @"childView";
  v33 = [(ICDocCamExtractedDocumentViewController *)self pageViewController];
  v34 = [v33 view];
  v89 = v34;
  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
  v36 = [v32 constraintsWithVisualFormat:@"H:|[childView]|" options:0 metrics:0 views:v35];

  v37 = MEMORY[0x277CCAAD0];
  v86 = @"childView";
  v38 = [(ICDocCamExtractedDocumentViewController *)self pageViewController];
  v39 = [v38 view];
  v87 = v39;
  v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
  v41 = [v37 constraintsWithVisualFormat:@"V:|[childView]|" options:0 metrics:0 views:v40];

  [MEMORY[0x277CCAAD0] activateConstraints:v36];
  [MEMORY[0x277CCAAD0] activateConstraints:v41];
  v42 = [(ICDocCamExtractedDocumentViewController *)self pageViewController];
  v43 = [v42 view];
  [v43 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(ICDocCamExtractedDocumentViewController *)self showViewControllerAtIndex:[(ICDocCamExtractedDocumentViewController *)self presentationPageIndex] animated:0];
  v44 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
  [v44 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"ICDocCamThumbnailCellKind"];

  v45 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
  [v45 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"ICDocCamExtractedDocumentThumbnailCell"];

  v46 = *MEMORY[0x277D76EB8];
  v47 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
  [v47 setDecelerationRate:v46];

  v48 = [(ICDocCamExtractedDocumentViewController *)self collectionTitleButton];
  [v48 setTranslatesAutoresizingMaskIntoConstraints:1];

  v49 = [(ICDocCamExtractedDocumentViewController *)self collectionTitleButton];
  LODWORD(v50) = 1132068864;
  [v49 setContentCompressionResistancePriority:0 forAxis:v50];

  v51 = [(ICDocCamExtractedDocumentViewController *)self pageIndexLabel];
  [v51 setTranslatesAutoresizingMaskIntoConstraints:1];

  v52 = [(ICDocCamExtractedDocumentViewController *)self pageIndexLabel];
  [v52 setTextAlignment:1];

  v53 = [[ICDocCamReorderingThumbnailCollectionViewLayout alloc] initWithDelegate:self];
  v54 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
  [v54 setCollectionViewLayout:v53];

  [(ICDocCamExtractedDocumentViewController *)self setCurrentThumbnailItem:[(ICDocCamExtractedDocumentViewController *)self presentationPageIndex] animated:0];
  v55 = [(ICDocCamExtractedDocumentViewController *)self thumbnailLongPressGestureRecognizer];

  if (!v55)
  {
    v56 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel_respondToThumbnailLongPressGesture_];
    v57 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
    [v57 addGestureRecognizer:v56];

    [(ICDocCamExtractedDocumentViewController *)self setThumbnailLongPressGestureRecognizer:v56];
  }

  v58 = [(ICDocCamExtractedDocumentViewController *)self imageLongPressGestureRecognizer];

  if (!v58)
  {
    v59 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel_respondToImageLongPressGesture_];
    v60 = [(ICDocCamExtractedDocumentViewController *)self view];
    [v60 addGestureRecognizer:v59];

    [(ICDocCamExtractedDocumentViewController *)self setImageLongPressGestureRecognizer:v59];
    v61 = [(ICDocCamExtractedDocumentViewController *)self imageLongPressGestureRecognizer];
    [v61 setDelegate:self];
  }

  v62 = [(ICDocCamExtractedDocumentViewController *)self axHUDLongPressGestureRecognizer];

  if (!v62)
  {
    v63 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel_handleAccessibilityLongPressOnCollectionTitle_];
    [(ICDocCamExtractedDocumentViewController *)self setAxHUDLongPressGestureRecognizer:v63];

    v64 = [(ICDocCamExtractedDocumentViewController *)self axHUDLongPressGestureRecognizer];
    [v64 setDelegate:self];

    v65 = DCAccessibilityAccessibilityLargerTextSizesEnabled();
    v66 = [(ICDocCamExtractedDocumentViewController *)self axHUDLongPressGestureRecognizer];
    [v66 setEnabled:v65];

    v67 = [(ICDocCamExtractedDocumentViewController *)self collectionTitleButton];
    v68 = [(ICDocCamExtractedDocumentViewController *)self axHUDLongPressGestureRecognizer];
    [v67 addGestureRecognizer:v68];
  }

  v69 = [(ICDocCamExtractedDocumentViewController *)self axHUDLongPressGestureRecognizer];
  v70 = [(ICDocCamExtractedDocumentViewController *)self imageLongPressGestureRecognizer];
  [v69 requireGestureRecognizerToFail:v70];

  v71 = [(ICDocCamExtractedDocumentViewController *)self imageLongPressGestureRecognizer];
  v72 = [(ICDocCamExtractedDocumentViewController *)self thumbnailLongPressGestureRecognizer];
  [v71 requireGestureRecognizerToFail:v72];

  v73 = [(ICDocCamExtractedDocumentViewController *)self pageViewController];
  v74 = [v73 view];
  v75 = [v74 subviews];
  v76 = [v75 dc_objectPassingTest:&__block_literal_global];
  [(ICDocCamExtractedDocumentViewController *)self setPageViewControllerScrollView:v76];

  v77 = [(ICDocCamExtractedDocumentViewController *)self pageViewControllerScrollView];
  [v77 setContentInsetAdjustmentBehavior:2];

  v78 = [(ICDocCamExtractedDocumentViewController *)self pageViewControllerScrollView];
  [v78 setDelegate:self];

  [(ICDocCamExtractedDocumentViewController *)self setupAccessibilityInfo];
  v79 = [MEMORY[0x277CCAB98] defaultCenter];
  [v79 addObserver:self selector:sel_updateForAccessibilityDarkerSystemColors name:*MEMORY[0x277D76460] object:0];

  v80 = [MEMORY[0x277CCAB98] defaultCenter];
  [v80 addObserver:self selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x277D76810] object:0];

  v81 = [(ICDocCamExtractedDocumentViewController *)self collectionTitleButton];
  v82 = objc_alloc_init(MEMORY[0x277D75870]);
  [v81 addInteraction:v82];

  [(ICDocCamExtractedDocumentViewController *)self setupFilterButtonMenu];
  [(ICDocCamExtractedDocumentViewController *)self setupGlurBar];
}

uint64_t __54__ICDocCamExtractedDocumentViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v74[2] = *MEMORY[0x277D85DE8];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__ICDocCamExtractedDocumentViewController_viewWillAppear___block_invoke;
  block[3] = &unk_278F92C70;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v5 = [(ICDocCamExtractedDocumentViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(ICDocCamExtractedDocumentViewController *)self collectionTitleButton];
    v8 = [(ICDocCamExtractedDocumentViewController *)self delegate];
    v9 = [v8 extractedDocumentControllerTitle];
    [v7 setTitle:v9 forState:0];
  }

  v10 = [(ICDocCamExtractedDocumentViewController *)self navigationController];
  [v10 setNavigationBarHidden:0 animated:1];

  v11 = [(ICDocCamExtractedDocumentViewController *)self navigationController];
  [v11 setToolbarHidden:1];

  v12 = [(ICDocCamExtractedDocumentViewController *)self navigationController];
  v13 = [v12 navigationBar];
  [v13 setOpaque:1];

  v14 = [(ICDocCamExtractedDocumentViewController *)self navigationController];
  v15 = [v14 navigationBar];
  [v15 setTranslucent:0];

  v16 = [(ICDocCamExtractedDocumentViewController *)self bottomToolbar];
  [v16 setOpaque:1];

  v17 = [(ICDocCamExtractedDocumentViewController *)self bottomToolbar];
  [v17 setTranslucent:0];

  v18 = [(ICDocCamExtractedDocumentViewController *)self titleViewWrapper];

  if (!v18)
  {
    v19 = objc_alloc_init(MEMORY[0x277D75D18]);
    [(ICDocCamExtractedDocumentViewController *)self setTitleViewWrapper:v19];

    v20 = [MEMORY[0x277D75348] clearColor];
    v21 = [(ICDocCamExtractedDocumentViewController *)self titleViewWrapper];
    [v21 setBackgroundColor:v20];

    v22 = [(ICDocCamExtractedDocumentViewController *)self titleViewWrapper];
    [v22 setTranslatesAutoresizingMaskIntoConstraints:0];

    v23 = [(ICDocCamExtractedDocumentViewController *)self titleViewWrapper];
    [v23 setUserInteractionEnabled:1];

    v24 = [(ICDocCamExtractedDocumentViewController *)self titleViewWrapper];
    LODWORD(v25) = 1132068864;
    [v24 setContentCompressionResistancePriority:0 forAxis:v25];

    v26 = MEMORY[0x277CCAAD0];
    v27 = [(ICDocCamExtractedDocumentViewController *)self titleViewWrapper];
    v28 = [v26 constraintWithItem:v27 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:100.0];
    [(ICDocCamExtractedDocumentViewController *)self setTitleViewWrapperWidthConstraint:v28];

    v29 = [(ICDocCamExtractedDocumentViewController *)self titleViewWrapperWidthConstraint];
    LODWORD(v30) = 1140457472;
    [v29 setPriority:v30];

    v31 = MEMORY[0x277CCAAD0];
    v32 = [(ICDocCamExtractedDocumentViewController *)self titleViewWrapper];
    v33 = [v31 constraintWithItem:v32 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:44.0];
    [(ICDocCamExtractedDocumentViewController *)self setTitleViewWrapperHeightConstraint:v33];

    v34 = MEMORY[0x277CCAAD0];
    v35 = [(ICDocCamExtractedDocumentViewController *)self titleViewWrapperWidthConstraint];
    v74[0] = v35;
    v36 = [(ICDocCamExtractedDocumentViewController *)self titleViewWrapperHeightConstraint];
    v74[1] = v36;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:2];
    [v34 activateConstraints:v37];

    v38 = objc_alloc_init(MEMORY[0x277D75A68]);
    [(ICDocCamExtractedDocumentViewController *)self setTitleView:v38];

    v39 = [(ICDocCamExtractedDocumentViewController *)self titleView];
    LODWORD(v40) = 1132068864;
    [v39 setContentCompressionResistancePriority:0 forAxis:v40];

    v41 = [(ICDocCamExtractedDocumentViewController *)self titleView];
    [v41 setTranslatesAutoresizingMaskIntoConstraints:0];

    v42 = [(ICDocCamExtractedDocumentViewController *)self titleViewWrapper];
    v43 = [(ICDocCamExtractedDocumentViewController *)self titleView];
    [v42 addSubview:v43];

    v44 = [(ICDocCamExtractedDocumentViewController *)self titleView];
    v45 = [v44 leadingAnchor];
    v46 = [(ICDocCamExtractedDocumentViewController *)self titleViewWrapper];
    v47 = [v46 leadingAnchor];
    v48 = [v45 constraintEqualToAnchor:v47 constant:0.0];

    v49 = [(ICDocCamExtractedDocumentViewController *)self titleView];
    v50 = [v49 trailingAnchor];
    v51 = [(ICDocCamExtractedDocumentViewController *)self titleViewWrapper];
    v52 = [v51 trailingAnchor];
    v53 = [v50 constraintEqualToAnchor:v52 constant:0.0];

    v54 = [(ICDocCamExtractedDocumentViewController *)self titleView];
    v55 = [v54 bottomAnchor];
    v56 = [(ICDocCamExtractedDocumentViewController *)self titleViewWrapper];
    v57 = [v56 bottomAnchor];
    v58 = [v55 constraintEqualToAnchor:v57 constant:0.0];

    v59 = [(ICDocCamExtractedDocumentViewController *)self titleView];
    v60 = [v59 topAnchor];
    v61 = [(ICDocCamExtractedDocumentViewController *)self titleViewWrapper];
    v62 = [v61 topAnchor];
    v63 = [v60 constraintEqualToAnchor:v62 constant:0.0];

    v64 = MEMORY[0x277CCAAD0];
    v73[0] = v48;
    v73[1] = v53;
    v73[2] = v58;
    v73[3] = v63;
    v65 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:4];
    [v64 activateConstraints:v65];

    v66 = [(ICDocCamExtractedDocumentViewController *)self titleViewWrapper];
    v67 = [(ICDocCamExtractedDocumentViewController *)self navigationItem];
    [v67 setTitleView:v66];
  }

  v68 = [(ICDocCamExtractedDocumentViewController *)self currentPageContentViewController];
  [(ICDocCamExtractedDocumentViewController *)self showBarsForZoomablePageContentViewController:v68];

  v69 = [(ICDocCamExtractedDocumentViewController *)self navigationController];
  v70 = [v69 navigationBar];
  [v70 setNeedsLayout];

  v71.receiver = self;
  v71.super_class = ICDocCamExtractedDocumentViewController;
  [(ICDocCamExtractedDocumentViewController *)&v71 viewWillAppear:v3];
}

void __58__ICDocCamExtractedDocumentViewController_viewWillAppear___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationItem];
  v3 = [v2 navigationBar];
  v7 = [v3 tintColor];

  [*(a1 + 32) setDefaultCollectionViewTitleTintColor:v7];
  v4 = [MEMORY[0x277D75348] dc_darkerAccessibilityColorForColor:v7];
  [*(a1 + 32) setDarkenedCollectionViewTitleTintColor:v4];

  [*(a1 + 32) updateForAccessibilityDarkerSystemColors];
  v5 = [*(a1 + 32) collectionTitleButton];
  [v5 setNeedsDisplay];

  v6 = [*(a1 + 32) collectionTitleButton];
  [v6 recursivelyForceDisplayIfNeeded];
}

- (void)viewWillLayoutSubviews
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (!v4)
  {
    v5 = [(ICDocCamExtractedDocumentViewController *)self bottomToolbar];
    [v5 invalidateIntrinsicContentSize];

    v6 = [(ICDocCamExtractedDocumentViewController *)self bottomToolbar];
    [v6 sizeToFit];
  }

  v7.receiver = self;
  v7.super_class = ICDocCamExtractedDocumentViewController;
  [(ICDocCamExtractedDocumentViewController *)&v7 viewWillLayoutSubviews];
}

- (void)viewDidLayoutSubviews
{
  v18.receiver = self;
  v18.super_class = ICDocCamExtractedDocumentViewController;
  [(ICDocCamExtractedDocumentViewController *)&v18 viewDidLayoutSubviews];
  v3 = [(ICDocCamExtractedDocumentViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  [(ICDocCamExtractedDocumentViewController *)self previousViewSize];
  if (v5 != v9 || v7 != v8)
  {
    [(ICDocCamExtractedDocumentViewController *)self setPreviousViewSize:v5, v7];
    [(ICDocCamExtractedDocumentViewController *)self updateLayout];
    [(ICDocCamExtractedDocumentViewController *)self updatePageIndicatorForPageIndex:[(ICDocCamExtractedDocumentViewController *)self presentationPageIndex]];
    v11 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionViewLayout];
    [v11 invalidateLayout];

    v12 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
    [v12 layoutIfNeeded];
  }

  v13 = [(ICDocCamExtractedDocumentViewController *)self presentationPageIndex];
  v14 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  v15 = [v14 docInfos];
  v16 = [v15 count];

  if (v13 < v16)
  {
    v17 = [MEMORY[0x277CCAA70] indexPathForItem:-[ICDocCamExtractedDocumentViewController presentationPageIndex](self inSection:{"presentationPageIndex"), 0}];
    -[ICDocCamExtractedDocumentViewController setCurrentThumbnailItem:animated:](self, "setCurrentThumbnailItem:animated:", [v17 item], -[ICDocCamExtractedDocumentViewController layoutHasHappened](self, "layoutHasHappened"));
  }

  if (![(ICDocCamExtractedDocumentViewController *)self isAnimatingPageViewController])
  {
    [(ICDocCamExtractedDocumentViewController *)self updatePageViewControllerConstraints:0 animationBlock:0 completionBlock:0];
  }

  [(ICDocCamExtractedDocumentViewController *)self setLayoutHasHappened:1];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = ICDocCamExtractedDocumentViewController;
  [(ICDocCamExtractedDocumentViewController *)&v4 viewDidAppear:a3];
  [(ICDocCamExtractedDocumentViewController *)self becomeFirstResponder];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  [(ICDocCamExtractedDocumentViewController *)self setBarsShouldBeHidden:1];
  v5 = +[DCImageAnalyzerManager sharedInstance];
  [v5 cleanup];

  v6.receiver = self;
  v6.super_class = ICDocCamExtractedDocumentViewController;
  [(ICDocCamExtractedDocumentViewController *)&v6 viewDidDisappear:v3];
}

- (BOOL)prefersStatusBarHidden
{
  if ([(ICDocCamExtractedDocumentViewController *)self barsShouldBeHidden])
  {
    return 1;
  }

  v4 = [(ICDocCamExtractedDocumentViewController *)self view];
  v5 = [v4 window];
  v6 = [v5 windowScene];
  v7 = [v6 interfaceOrientation];

  v8 = [MEMORY[0x277D75418] currentDevice];
  if ([v8 userInterfaceIdiom])
  {
    v9 = 1;
  }

  else
  {
    v9 = (v7 - 3) >= 2;
  }

  v3 = !v9;

  return v3;
}

- (void)contentSizeCategoryDidChange:(id)a3
{
  v4 = DCAccessibilityAccessibilityLargerTextSizesEnabled();
  v5 = [(ICDocCamExtractedDocumentViewController *)self axHUDLongPressGestureRecognizer];
  [v5 setEnabled:v4];
}

- (void)prepareForDismissal
{
  v2 = [(ICDocCamExtractedDocumentViewController *)self presentedViewController];
  if (v2)
  {
    v3 = v2;
    if (objc_opt_respondsToSelector())
    {
      [v3 prepareForDismissal];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = ICDocCamExtractedDocumentViewController;
  [(ICDocCamExtractedDocumentViewController *)&v7 traitCollectionDidChange:a3];
  if (([objc_opt_class() isLiquidGlassEnabledForEdit] & 1) == 0)
  {
    v4 = [MEMORY[0x277D75348] dc_barColor];
    v5 = [(ICDocCamExtractedDocumentViewController *)self navigationController];
    v6 = [v5 navigationBar];
    [v6 setBarTintColor:v4];
  }
}

+ (BOOL)isLiquidGlassEnabledForEdit
{
  if (isLiquidGlassEnabledForEdit_onceToken != -1)
  {
    +[ICDocCamExtractedDocumentViewController isLiquidGlassEnabledForEdit];
  }

  return isLiquidGlassEnabledForEdit_liquidGlassEnabled;
}

uint64_t __70__ICDocCamExtractedDocumentViewController_isLiquidGlassEnabledForEdit__block_invoke()
{
  result = _UISolariumEnabled();
  if (result)
  {
    result = _os_feature_enabled_impl();
  }

  isLiquidGlassEnabledForEdit_liquidGlassEnabled = result;
  return result;
}

- (void)updateLayout
{
  v46[1] = *MEMORY[0x277D85DE8];
  v35 = 0;
  v36 = 0;
  [(UIViewController *)self dc_getEffectiveInterfaceOrientation:&v36 andEffectiveInterfaceIdiom:&v35];
  if ([(ICDocCamExtractedDocumentViewController *)self mode])
  {
    v3 = [(ICDocCamExtractedDocumentViewController *)self mode];
    v4 = [(ICDocCamExtractedDocumentViewController *)self view];
    [v4 bounds];
    v6 = v5;

    v7 = 56.0;
    if ((v36 - 1) < 2)
    {
      v7 = 0.0;
    }

    if (v35)
    {
      v8 = 60.0;
    }

    else
    {
      v8 = v7;
    }

    if (v3 == 1)
    {
      v9 = [(ICDocCamExtractedDocumentViewController *)self doneButtonItem];
      v44 = v9;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
      v11 = [(ICDocCamExtractedDocumentViewController *)self navigationItem];
      [v11 setLeftBarButtonItems:v10];

      v12 = [(ICDocCamExtractedDocumentViewController *)self shouldDisableSharrow];
      if (v12)
      {
        v13 = MEMORY[0x277CBEBF8];
      }

      else
      {
        v10 = [(ICDocCamExtractedDocumentViewController *)self actionButtonItem];
        v43 = v10;
        v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
      }

      v25 = [(ICDocCamExtractedDocumentViewController *)self navigationItem];
      [v25 setRightBarButtonItems:v13];

      if (!v12)
      {
      }

      [(ICDocCamExtractedDocumentViewController *)self recreateThumbnailContainerWithWidth:v6 leadingTrailingMargin:v8];
      v26 = MEMORY[0x277CCAAD0];
      v41 = @"childView";
      v27 = [(ICDocCamExtractedDocumentViewController *)self thumbnailContainerView];
      v42 = v27;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v29 = [v26 constraintsWithVisualFormat:@"H:|[childView]|" options:0 metrics:0 views:v28];

      v30 = MEMORY[0x277CCAAD0];
      v39 = @"childView";
      v31 = [(ICDocCamExtractedDocumentViewController *)self thumbnailContainerView];
      v40 = v31;
      v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      v33 = [v30 constraintsWithVisualFormat:@"V:|[childView]|" options:0 metrics:0 views:v32];

      [MEMORY[0x277CCAAD0] activateConstraints:v29];
      [MEMORY[0x277CCAAD0] activateConstraints:v33];
      [(ICDocCamExtractedDocumentViewController *)self updateTitleView];
    }

    else
    {
      [(ICDocCamExtractedDocumentViewController *)self recreateThumbnailContainerWithWidth:v6 leadingTrailingMargin:v8];
      v20 = [(ICDocCamExtractedDocumentViewController *)self doneButtonItem];
      v38 = v20;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
      v22 = [(ICDocCamExtractedDocumentViewController *)self navigationItem];
      [v22 setLeftBarButtonItems:v21];

      v23 = [(ICDocCamExtractedDocumentViewController *)self shouldDisableSharrow];
      if (v23)
      {
        v24 = MEMORY[0x277CBEBF8];
      }

      else
      {
        v21 = [(ICDocCamExtractedDocumentViewController *)self actionButtonItem];
        v37 = v21;
        v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
      }

      v34 = [(ICDocCamExtractedDocumentViewController *)self navigationItem];
      [v34 setRightBarButtonItems:v24];

      if (!v23)
      {
      }
    }
  }

  else
  {
    if (!v35)
    {
      v14 = [(ICDocCamExtractedDocumentViewController *)self doneButtonItem];
      v46[0] = v14;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:1];
      v16 = [(ICDocCamExtractedDocumentViewController *)self navigationItem];
      [v16 setLeftBarButtonItems:v15];

      v17 = [(ICDocCamExtractedDocumentViewController *)self retakeButtonItem];
      v45 = v17;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
      v19 = [(ICDocCamExtractedDocumentViewController *)self navigationItem];
      [v19 setRightBarButtonItems:v18];
    }

    [(ICDocCamExtractedDocumentViewController *)self updateTitleView];
  }

  [(ICDocCamExtractedDocumentViewController *)self updateBottomToolbarButtonsForCurrentMode];
}

- (void)updateTitleView
{
  v109 = *MEMORY[0x277D85DE8];
  v3 = [(ICDocCamExtractedDocumentViewController *)self titleViewWrapper];

  if (!v3)
  {
    return;
  }

  [(ICDocCamExtractedDocumentViewController *)self updateForAccessibilityDarkerSystemColors];
  v4 = [(ICDocCamExtractedDocumentViewController *)self titleView];
  [v4 removeFromSuperview];

  v5 = [(ICDocCamExtractedDocumentViewController *)self titleView];
  v6 = [v5 arrangedSubviews];

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v103 objects:v108 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v104;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v104 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v103 + 1) + 8 * i);
        v13 = [(ICDocCamExtractedDocumentViewController *)self titleView];
        [v13 removeArrangedSubview:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v103 objects:v108 count:16];
    }

    while (v9);
  }

  v14 = [(ICDocCamExtractedDocumentViewController *)self documentCount];
  v15 = [(ICDocCamExtractedDocumentViewController *)self mode];
  if (!v15)
  {
    if (v14 < 2)
    {
      v29 = 1;
      v38 = 0.0;
      v39 = 0.0;
      goto LABEL_25;
    }

    if ((DCDebugInterfaceEnabled() & 1) != 0 || ([MEMORY[0x277D75418] currentDevice], v40 = objc_claimAutoreleasedReturnValue(), v41 = objc_msgSend(v40, "userInterfaceIdiom"), v40, v41 == 1))
    {
      v42 = MEMORY[0x277D74300];
      v43 = *MEMORY[0x277D74410];
      v44 = 19.0;
    }

    else
    {
      v98 = [(ICDocCamExtractedDocumentViewController *)self view];
      v99 = [v98 window];
      v100 = [v99 windowScene];
      v101 = [v100 interfaceOrientation];

      v42 = MEMORY[0x277D74300];
      if ((v101 - 1) > 1)
      {
        v43 = *MEMORY[0x277D74410];
        v44 = 14.0;
      }

      else
      {
        v43 = *MEMORY[0x277D74418];
        v44 = 16.0;
      }
    }

    v45 = [v42 systemFontOfSize:v44 weight:v43];
    v46 = [(ICDocCamExtractedDocumentViewController *)self pageIndexLabel];
    [v46 setFont:v45];

    v29 = 1;
    v38 = 0.0;
LABEL_23:
    v47 = [(ICDocCamExtractedDocumentViewController *)self pageIndexLabel];
    [v47 sizeToFit];

    v48 = [(ICDocCamExtractedDocumentViewController *)self pageIndexLabel];
    [v48 size];
    v39 = v49;

    goto LABEL_25;
  }

  v16 = [MEMORY[0x277D75418] currentDevice];
  v17 = [v16 userInterfaceIdiom];

  if (v17 || (-[ICDocCamExtractedDocumentViewController view](self, "view"), v18 = objc_claimAutoreleasedReturnValue(), [v18 window], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "windowScene"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "interfaceOrientation"), v20, v19, v18, (v21 - 3) > 1))
  {
    v25 = MEMORY[0x277D74300];
    v30 = *MEMORY[0x277D74410];
    v31 = 16.0;
  }

  else
  {
    v22 = [(ICDocCamExtractedDocumentViewController *)self view];
    v23 = [v22 window];
    v24 = [v23 dc_requiresCompactLandscapeIcons];

    v25 = MEMORY[0x277D74300];
    v26 = *MEMORY[0x277D74410];
    if (v24)
    {
      v27 = [MEMORY[0x277D74300] systemFontOfSize:14.0 weight:*MEMORY[0x277D74410]];
      v28 = [MEMORY[0x277D74300] systemFontOfSize:14.0 weight:v26];
      v29 = 0;
      goto LABEL_16;
    }

    v31 = 16.0;
    v30 = *MEMORY[0x277D74410];
  }

  v27 = [v25 systemFontOfSize:v31 weight:v30];
  v28 = [MEMORY[0x277D74300] systemFontOfSize:12.0 weight:*MEMORY[0x277D74418]];
  v29 = 1;
LABEL_16:
  v32 = [(ICDocCamExtractedDocumentViewController *)self pageIndexLabel];
  [v32 setFont:v28];

  v33 = [(ICDocCamExtractedDocumentViewController *)self collectionTitleButton];
  v34 = [v33 titleLabel];
  [v34 setFont:v27];

  v35 = [(ICDocCamExtractedDocumentViewController *)self collectionTitleButton];
  [v35 sizeToFit];

  v36 = [(ICDocCamExtractedDocumentViewController *)self collectionTitleButton];
  [v36 size];
  v38 = v37;

  v39 = 0.0;
  if (v14 > 1)
  {
    goto LABEL_23;
  }

LABEL_25:
  v50 = [(ICDocCamExtractedDocumentViewController *)self titleView];
  [v50 setDistribution:0];

  v51 = [(ICDocCamExtractedDocumentViewController *)self titleView];
  v52 = v51;
  if (v29)
  {
    [v51 setAxis:1];

    v53 = [(ICDocCamExtractedDocumentViewController *)self titleView];
    [v53 setDistribution:1];

    v54 = [(ICDocCamExtractedDocumentViewController *)self titleView];
    [v54 setSpacing:-16.0];

    if (v15)
    {
      v55 = [(ICDocCamExtractedDocumentViewController *)self titleView];
      v56 = [(ICDocCamExtractedDocumentViewController *)self collectionTitleButton];
      [v55 addArrangedSubview:v56];
    }

    if (v14 >= 2)
    {
      v57 = [(ICDocCamExtractedDocumentViewController *)self titleView];
      v58 = [(ICDocCamExtractedDocumentViewController *)self pageIndexLabel];
      [v57 addArrangedSubview:v58];

      v59 = [(ICDocCamExtractedDocumentViewController *)self titleView];
      [v59 setSpacing:-6.0];
    }

    goto LABEL_41;
  }

  [v51 setAxis:0];

  v60 = [(ICDocCamExtractedDocumentViewController *)self titleView];
  [v60 setSpacing:4.0];

  if ([MEMORY[0x277D74248] dc_isRTL])
  {
    if (v14 >= 2)
    {
      v61 = [(ICDocCamExtractedDocumentViewController *)self titleView];
      v62 = [(ICDocCamExtractedDocumentViewController *)self pageIndexLabel];
      [v61 addArrangedSubview:v62];
    }

    if (!v15)
    {
      goto LABEL_40;
    }

    v63 = [(ICDocCamExtractedDocumentViewController *)self titleView];
    v64 = [(ICDocCamExtractedDocumentViewController *)self collectionTitleButton];
  }

  else
  {
    if (v15)
    {
      v65 = [(ICDocCamExtractedDocumentViewController *)self titleView];
      v66 = [(ICDocCamExtractedDocumentViewController *)self collectionTitleButton];
      [v65 addArrangedSubview:v66];
    }

    if (v14 < 2)
    {
      goto LABEL_40;
    }

    v63 = [(ICDocCamExtractedDocumentViewController *)self titleView];
    v64 = [(ICDocCamExtractedDocumentViewController *)self pageIndexLabel];
  }

  v67 = v64;
  [v63 addArrangedSubview:v64];

LABEL_40:
  v38 = v38 + v39;
LABEL_41:
  v68 = [(ICDocCamExtractedDocumentViewController *)self titleViewWrapperWidthConstraint];
  [v68 constant];
  v70 = v69;

  v71 = v38 + 8.0;
  if (v70 >= v38 + 8.0)
  {
    v72 = v70;
  }

  else
  {
    v72 = v38 + 8.0;
  }

  v73 = [(ICDocCamExtractedDocumentViewController *)self titleViewWrapperWidthConstraint];
  [v73 setConstant:v72];

  v74 = [(ICDocCamExtractedDocumentViewController *)self titleViewWrapper];
  v75 = [(ICDocCamExtractedDocumentViewController *)self titleView];
  [v74 addSubview:v75];

  v76 = [(ICDocCamExtractedDocumentViewController *)self titleView];
  v77 = [v76 leadingAnchor];
  v78 = [(ICDocCamExtractedDocumentViewController *)self titleViewWrapper];
  v79 = [v78 leadingAnchor];
  v80 = [v77 constraintEqualToAnchor:v79 constant:0.0];

  v81 = [(ICDocCamExtractedDocumentViewController *)self titleView];
  v82 = [v81 trailingAnchor];
  v83 = [(ICDocCamExtractedDocumentViewController *)self titleViewWrapper];
  v84 = [v83 trailingAnchor];
  v85 = [v82 constraintEqualToAnchor:v84 constant:0.0];

  v86 = [(ICDocCamExtractedDocumentViewController *)self titleView];
  v87 = [v86 bottomAnchor];
  v88 = [(ICDocCamExtractedDocumentViewController *)self titleViewWrapper];
  v89 = [v88 bottomAnchor];
  v90 = [v87 constraintEqualToAnchor:v89 constant:0.0];

  v91 = [(ICDocCamExtractedDocumentViewController *)self titleView];
  v92 = [v91 topAnchor];
  v93 = [(ICDocCamExtractedDocumentViewController *)self titleViewWrapper];
  v94 = [v93 topAnchor];
  v95 = [v92 constraintEqualToAnchor:v94 constant:0.0];

  v96 = MEMORY[0x277CCAAD0];
  v107[0] = v80;
  v107[1] = v85;
  v107[2] = v90;
  v107[3] = v95;
  v97 = [MEMORY[0x277CBEA60] arrayWithObjects:v107 count:4];
  [v96 activateConstraints:v97];

  if (v71 != v72)
  {
    v102[0] = MEMORY[0x277D85DD0];
    v102[1] = 3221225472;
    v102[2] = __58__ICDocCamExtractedDocumentViewController_updateTitleView__block_invoke;
    v102[3] = &unk_278F92CD8;
    v102[4] = self;
    *&v102[5] = v71;
    dc_dispatchMainAfterDelay(v102, 0.1);
  }
}

uint64_t __58__ICDocCamExtractedDocumentViewController_updateTitleView__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __58__ICDocCamExtractedDocumentViewController_updateTitleView__block_invoke_2;
  v2[3] = &unk_278F92CD8;
  v2[4] = *(a1 + 32);
  v2[5] = *(a1 + 40);
  return [MEMORY[0x277D75D18] animateWithDuration:v2 animations:0.2];
}

void __58__ICDocCamExtractedDocumentViewController_updateTitleView__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) titleViewWrapperWidthConstraint];
  [v2 setConstant:v1];
}

- (double)thumbnailToolbarHeight
{
  v9 = 0;
  v10 = 0;
  [(UIViewController *)self dc_getEffectiveInterfaceOrientation:&v10 andEffectiveInterfaceIdiom:&v9];
  if ((v10 - 3) <= 1 && v9 == 0)
  {
    v6 = [(ICDocCamExtractedDocumentViewController *)self view];
    v7 = [v6 window];
    v8 = [v7 dc_requiresCompactLandscapeIcons];

    result = 44.0;
    if (v8)
    {
      return 32.0;
    }
  }

  else
  {
    if (v9)
    {
      v4 = 1;
    }

    else
    {
      v4 = (v10 - 1) >= 2;
    }

    result = 44.0;
    if (!v4)
    {
      return 39.0;
    }
  }

  return result;
}

- (void)recreateThumbnailContainerWithWidth:(double)a3 leadingTrailingMargin:(double)a4
{
  v49[4] = *MEMORY[0x277D85DE8];
  v7 = [(ICDocCamExtractedDocumentViewController *)self thumbnailContainerView];
  [v7 removeFromSuperview];

  [(ICDocCamExtractedDocumentViewController *)self setThumbnailContainerViewItem:0];
  [(ICDocCamExtractedDocumentViewController *)self setThumbnailContainerView:0];
  [(ICDocCamExtractedDocumentViewController *)self setThumbnailCollectionViewController:0];
  v8 = objc_alloc_init(ICDocCamExtractedThumbnailContainerView);
  [(ICDocCamExtractedDocumentViewController *)self setThumbnailContainerView:v8];

  v9 = [MEMORY[0x277D75348] clearColor];
  v10 = [(ICDocCamExtractedDocumentViewController *)self thumbnailContainerView];
  [v10 setBackgroundColor:v9];

  v11 = [(ICDocCamExtractedDocumentViewController *)self thumbnailContainerView];
  [v11 setDelegate:self];

  v12 = objc_alloc(MEMORY[0x277D751E0]);
  v13 = [(ICDocCamExtractedDocumentViewController *)self thumbnailContainerView];
  v14 = [v12 initWithCustomView:v13];
  [(ICDocCamExtractedDocumentViewController *)self setThumbnailContainerViewItem:v14];

  if ([MEMORY[0x277D74248] dc_isRTL])
  {
    CGAffineTransformMakeScale(&v48, -1.0, 1.0);
    v15 = [(ICDocCamExtractedDocumentViewController *)self thumbnailContainerView];
    v47 = v48;
    [v15 setTransform:&v47];
  }

  v16 = [(ICDocCamExtractedDocumentViewController *)self thumbnailContainerViewItem];
  [v16 setWidth:a3 + a4 * -2.0];

  [(ICDocCamExtractedDocumentViewController *)self thumbnailToolbarHeight];
  v18 = v17;
  v19 = [(ICDocCamExtractedDocumentViewController *)self thumbnailContainerViewItem];
  [v19 width];
  v21 = v20;
  v22 = [(ICDocCamExtractedDocumentViewController *)self thumbnailContainerView];
  [v22 setFrame:{0.0, 0.0, v21, v18}];

  v23 = [(ICDocCamExtractedDocumentViewController *)self thumbnailContainerView];
  v24 = [v23 heightAnchor];
  v25 = [v24 constraintEqualToConstant:v18];
  [v25 setActive:1];

  v26 = [(ICDocCamExtractedDocumentViewController *)self view];
  [v26 layoutIfNeeded];

  [(ICDocCamExtractedDocumentViewController *)self setupThumbnailViewController];
  v27 = [MEMORY[0x277CD9EB0] layer];
  v28 = [(ICDocCamExtractedDocumentViewController *)self thumbnailContainerView];
  [v28 bounds];
  [v27 setFrame:?];

  v29 = MEMORY[0x277CBEA60];
  v30 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
  v31 = [v30 CGColor];
  v32 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  v33 = [v32 CGColor];
  v34 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  v35 = [v34 CGColor];
  v36 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
  v37 = [v29 arrayWithObjects:{v31, v33, v35, objc_msgSend(v36, "CGColor"), 0}];
  [v27 setColors:v37];

  v49[0] = &unk_285C6D348;
  v38 = MEMORY[0x277CCABB0];
  [v27 frame];
  v40 = [v38 numberWithDouble:12.0 / v39];
  v49[1] = v40;
  v41 = MEMORY[0x277CCABB0];
  [v27 frame];
  v43 = [v41 numberWithDouble:1.0 - 12.0 / v42];
  v49[2] = v43;
  v49[3] = &unk_285C6D360;
  v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:4];
  [v27 setLocations:v44];

  [v27 setStartPoint:{0.0, 0.5}];
  [v27 setEndPoint:{1.0, 0.5}];
  v45 = [(ICDocCamExtractedDocumentViewController *)self thumbnailContainerView];
  v46 = [v45 layer];
  [v46 setMask:v27];
}

- (void)setupThumbnailViewController
{
  v28[1] = *MEMORY[0x277D85DE8];
  v3 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionViewController];

  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D752C8]);
    [(ICDocCamExtractedDocumentViewController *)self setThumbnailCollectionViewController:v4];

    v5 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
    v6 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionViewController];
    [v6 setCollectionView:v5];

    v7 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionViewController];
    [(ICDocCamExtractedDocumentViewController *)self addChildViewController:v7];

    v8 = [(ICDocCamExtractedDocumentViewController *)self thumbnailContainerView];
    v9 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
    [v8 addSubview:v9];

    v10 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionViewController];
    [v10 didMoveToParentViewController:self];

    v11 = MEMORY[0x277CCAAD0];
    v27 = @"childView";
    v12 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionViewController];
    v13 = [v12 collectionView];
    v28[0] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v15 = [v11 constraintsWithVisualFormat:@"H:|[childView]|" options:0 metrics:0 views:v14];

    v16 = MEMORY[0x277CCAAD0];
    v25 = @"childView";
    v17 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionViewController];
    v18 = [v17 collectionView];
    v26 = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v20 = [v16 constraintsWithVisualFormat:@"V:|[childView]|" options:0 metrics:0 views:v19];

    v21 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionViewController];
    v22 = [v21 collectionView];
    [v22 setTranslatesAutoresizingMaskIntoConstraints:0];

    v23 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionViewController];
    v24 = [v23 collectionView];
    [v24 setContentInsetAdjustmentBehavior:2];

    [MEMORY[0x277CCAAD0] activateConstraints:v15];
    [MEMORY[0x277CCAAD0] activateConstraints:v20];
  }

  [(ICDocCamExtractedDocumentViewController *)self setCurrentThumbnailItem:[(ICDocCamExtractedDocumentViewController *)self presentationPageIndex] animated:0];
}

- (CGSize)frameSizeForImageSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionViewLayout];
  [v5 itemSizeForImageSize:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)setImage:(id)a3 forCell:(id)a4 useResizedImage:(BOOL)a5
{
  v5 = a5;
  v26 = a4;
  v8 = a3;
  v9 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
  [v9 frame];

  v10 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
  [v10 contentInset];

  if (v8 && v5)
  {
    [v8 size];
    v12 = v11;
    v14 = v13;
    [(ICDocCamExtractedDocumentViewController *)self frameSizeForImageSize:?];
    v16 = v15;
    v18 = v17;
    v19 = [MEMORY[0x277D759A0] mainScreen];
    [v19 scale];
    v21 = v20;

    v22 = fmax(v21, 1.0);
    [ICDocCamUtilities aspectFillSize:v12 targetSize:v14, v16 * v22, v18 * v22];
    v23 = [ICDocCamUtilities resizedImage:v8 newSize:3 interpolationQuality:?];

    v24 = [v26 imageView];
    v8 = v24;
    v25 = v23;
  }

  else
  {
    v24 = [v26 imageView];
    v23 = v24;
    v25 = v8;
  }

  [v24 setImage:v25];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v10.receiver = self;
  v10.super_class = ICDocCamExtractedDocumentViewController;
  v7 = a4;
  [(ICDocCamExtractedDocumentViewController *)&v10 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionViewLayout];
  [v8 setIsUndergoingOrientationChange:1];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __94__ICDocCamExtractedDocumentViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v9[3] = &unk_278F92D48;
  v9[4] = self;
  [v7 animateAlongsideTransition:&__block_literal_global_542 completion:v9];
}

void __94__ICDocCamExtractedDocumentViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) showViewControllerAtIndex:objc_msgSend(*(a1 + 32) animated:{"presentationPageIndex"), 0}];
  [*(a1 + 32) updateLayout];
  v2 = [*(a1 + 32) thumbnailCollectionView];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __94__ICDocCamExtractedDocumentViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_3;
  v4[3] = &unk_278F92C70;
  v5 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __94__ICDocCamExtractedDocumentViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_4;
  v3[3] = &unk_278F92D20;
  v3[4] = v5;
  [v2 performBatchUpdates:v4 completion:v3];
}

void __94__ICDocCamExtractedDocumentViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) thumbnailCollectionViewLayout];
  [v1 invalidateLayout];
}

void __94__ICDocCamExtractedDocumentViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setCurrentThumbnailItem:objc_msgSend(*(a1 + 32) animated:{"presentationPageIndex"), 1}];
  v2 = [*(a1 + 32) thumbnailCollectionViewLayout];
  [v2 setIsUndergoingOrientationChange:0];
}

- (int64_t)orientationRotated90DegreesFromOrientation:(int64_t)a3
{
  if (a3 >= 4)
  {
    [ICDocCamExtractedDocumentViewController orientationRotated90DegreesFromOrientation:];
  }

  return qword_2492F76E8[a3];
}

- (void)updatePageViewControllerConstraints:(BOOL)a3 animationBlock:(id)a4 completionBlock:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(ICDocCamExtractedDocumentViewController *)self adjustPageViewControllerForMarkup];
  v11 = 0.0;
  v12 = 0.0;
  if (v10)
  {
    [(UIViewController *)self dc_safeAreaDistanceFromTop];
    v12 = v13;
    v11 = 35.0;
  }

  v14 = -v11;
  v15 = [(ICDocCamExtractedDocumentViewController *)self pageViewBottomConstraint];
  [v15 setConstant:v14];

  v16 = [(ICDocCamExtractedDocumentViewController *)self pageViewTopConstraint];
  [v16 setConstant:v12];

  v17 = [(ICDocCamExtractedDocumentViewController *)self pageViewLeadingConstraint];
  [v17 setConstant:0.0];

  v18 = [(ICDocCamExtractedDocumentViewController *)self pageViewTrailingConstraint];
  [v18 setConstant:-0.0];

  if (v6)
  {
    [(ICDocCamExtractedDocumentViewController *)self setIsAnimatingPageViewController:1];
    v19 = MEMORY[0x277D75D18];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __110__ICDocCamExtractedDocumentViewController_updatePageViewControllerConstraints_animationBlock_completionBlock___block_invoke;
    v22[3] = &unk_278F92D70;
    v22[4] = self;
    v23 = v8;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __110__ICDocCamExtractedDocumentViewController_updatePageViewControllerConstraints_animationBlock_completionBlock___block_invoke_2;
    v20[3] = &unk_278F92D98;
    v20[4] = self;
    v21 = v9;
    [v19 animateWithDuration:0 delay:v22 usingSpringWithDamping:v20 initialSpringVelocity:0.5 options:0.0 animations:1.0 completion:0.0];
  }
}

uint64_t __110__ICDocCamExtractedDocumentViewController_updatePageViewControllerConstraints_animationBlock_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentPageContentViewController];
  [v2 resetZoom];

  v3 = [*(a1 + 32) view];
  [v3 layoutIfNeeded];

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

uint64_t __110__ICDocCamExtractedDocumentViewController_updatePageViewControllerConstraints_animationBlock_completionBlock___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setIsAnimatingPageViewController:0];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)updateImage:(id)a3 document:(id)a4 withFilterType:(signed __int16)a5
{
  v5 = a5;
  v26[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  v11 = [v10 docInfos];
  v12 = [v11 indexOfObject:v9];

  if ([v9 currentFilter] != v5 && v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v9 setCurrentFilter:v5];
    v13 = [v9 croppedAndFilteredImageUUID];

    v14 = [(ICDocCamExtractedDocumentViewController *)self imageCache];
    v15 = v14;
    if (v13)
    {
      v16 = [v9 metaData];
      v17 = [v9 croppedAndFilteredImageUUID];
      [v15 replaceImage:v8 metaData:v16 uuid:v17];
    }

    else
    {
      v16 = [v14 setImage:v8 metaData:0 addToMemoryCache:0 completion:0];
      [v9 setCroppedAndFilteredImageUUID:v16];
    }

    if (v12 == [(ICDocCamExtractedDocumentViewController *)self presentationPageIndex])
    {
      v18 = [(ICDocCamExtractedDocumentViewController *)self currentImageView];
      [v18 setImage:v8];
    }

    v19 = [(ICDocCamExtractedDocumentViewController *)self delegate];
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      v21 = [v9 currentFilter];
      v22 = [(ICDocCamExtractedDocumentViewController *)self delegate];
      [v22 extractedDocumentControllerDidApplyFilter:v21 forDocument:v9];
    }

    v23 = [MEMORY[0x277CCAA70] indexPathForItem:v12 inSection:0];
    v24 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
    v26[0] = v23;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
    [v24 reloadItemsAtIndexPaths:v25];
  }
}

- (void)didUpdateDocumentTitle:(id)a3
{
  v4 = a3;
  v5 = [(ICDocCamExtractedDocumentViewController *)self collectionTitleButton];
  [v5 setTitle:v4 forState:0];

  [(ICDocCamExtractedDocumentViewController *)self updateTitleView];
}

- (void)didUpdateDocumentInfoArrayNewCurrentDocument:(id)a3
{
  v13 = a3;
  v4 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionViewLayout];
  v5 = [v4 movingItem];

  if (v5)
  {
    v6 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
    [v6 cancelInteractiveMovement];
  }

  v7 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionViewLayout];
  [v7 invalidateLayout];

  v8 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
  [v8 reloadData];

  v9 = v13;
  if (v13)
  {
    v10 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
    v11 = [v10 docInfos];
    v12 = [v11 indexOfObject:v13];

    v9 = v13;
    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(ICDocCamExtractedDocumentViewController *)self showViewControllerAtIndex:v12 animated:0];
      [(ICDocCamExtractedDocumentViewController *)self setCurrentThumbnailItem:v12 animated:1];
      [(ICDocCamExtractedDocumentViewController *)self updateFilterButtonMenu];
      v9 = v13;
    }
  }
}

- (void)didUpdateDocumentImage:(id)a3
{
  v5 = a3;
  if ([(ICDocCamExtractedDocumentViewController *)self isScrollingBetweenPages])
  {
    v4 = [(ICDocCamExtractedDocumentViewController *)self documentsToUpdateWhenScrollingStops];
    [v4 addObject:v5];
  }

  else
  {
    [(ICDocCamExtractedDocumentViewController *)self updateDocumentImage:v5];
  }
}

- (void)updateDocumentImage:(id)a3
{
  v21[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  v6 = [v5 docInfos];
  v7 = [v6 indexOfObject:v4];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
    v9 = [MEMORY[0x277CCAA70] indexPathForItem:v7 inSection:0];
    v21[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    [v8 reloadItemsAtIndexPaths:v10];

    if ([(ICDocCamExtractedDocumentViewController *)self presentationPageIndex]== v7)
    {
      v11 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
      v12 = [v11 docInfos];
      if (v7 >= [v12 count])
      {
LABEL_6:

        goto LABEL_7;
      }

      v13 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
      v14 = [v13 docInfos];
      v15 = [v14 objectAtIndexedSubscript:v7];

      if (v15)
      {
        v16 = [(ICDocCamExtractedDocumentViewController *)self croppedAndFilteredmageForDocumentAtIndex:v7];
        v17 = [(ICDocCamExtractedDocumentViewController *)self currentPageContentViewController];
        [v17 setImage:v16];

        v18 = [v15 currentFilter];
        v12 = [(ICDocCamExtractedDocumentViewController *)self currentDocument];
        [v12 setCurrentFilter:v18];
        v11 = v15;
        goto LABEL_6;
      }
    }

LABEL_7:
    v19 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionViewLayout];
    [v19 invalidateLayout];

    [(ICDocCamExtractedDocumentViewController *)self setCurrentThumbnailItem:[(ICDocCamExtractedDocumentViewController *)self presentationPageIndex] animated:1];
    v20 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
    [v20 bumpModificationDate];
  }
}

- (id)currentDocument
{
  v3 = [(ICDocCamExtractedDocumentViewController *)self presentationPageIndex];
  v4 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  v5 = [v4 docInfos];
  if (v3 >= [v5 count])
  {
    v8 = 0;
  }

  else
  {
    v6 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
    v7 = [v6 docInfos];
    v8 = [v7 objectAtIndexedSubscript:v3];
  }

  return v8;
}

- (void)addImageAction:(id)a3
{
  if (![(ICDocCamExtractedDocumentViewController *)self shouldDisableActions])
  {
    v7 = [(ICDocCamExtractedDocumentViewController *)self presentedViewController];
    if (v7)
    {
      [(ICDocCamExtractedDocumentViewController *)self dismissViewControllerAnimated:0 completion:0];
    }

    v4 = [(ICDocCamExtractedDocumentViewController *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(ICDocCamExtractedDocumentViewController *)self delegate];
      [v6 extractedDocumentControllerDidTapAddImage];
    }
  }
}

- (void)recropButtonPressed:(id)a3
{
  if (![(ICDocCamExtractedDocumentViewController *)self shouldDisableActions])
  {
    v4 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
    v5 = [v4 docInfos];
    v6 = [v5 count];

    if (v6)
    {
      v7 = [(ICDocCamExtractedDocumentViewController *)self delegate];
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        if ([(ICDocCamExtractedDocumentViewController *)self currentImageHasMarkup])
        {

          [(ICDocCamExtractedDocumentViewController *)self alertAndDiscardMarkup];
        }

        else
        {
          v10 = [(ICDocCamExtractedDocumentViewController *)self delegate];
          v9 = [(ICDocCamExtractedDocumentViewController *)self currentDocument];
          [v10 extractedDocumentController:self didTapRecrop:v9 index:{-[ICDocCamExtractedDocumentViewController presentationPageIndex](self, "presentationPageIndex")}];
        }
      }
    }
  }
}

- (void)retakeAction:(id)a3
{
  v4 = [(ICDocCamExtractedDocumentViewController *)self view];
  v5 = [v4 window];
  v6 = [v5 windowScene];
  v7 = [v6 statusBarManager];
  -[ICDocCamExtractedDocumentViewController setStatusBarWasHiddenWhenRetakeTapped:](self, "setStatusBarWasHiddenWhenRetakeTapped:", [v7 isStatusBarHidden]);

  v8 = [(ICDocCamExtractedDocumentViewController *)self delegate];
  [v8 extractedDocumentControllerDidTapRetake:{-[ICDocCamExtractedDocumentViewController presentationPageIndex](self, "presentationPageIndex")}];
}

- (void)doneAction:(id)a3
{
  v4 = [(ICDocCamExtractedDocumentViewController *)self view];
  v5 = [v4 window];
  v6 = [v5 windowScene];
  v7 = [v6 statusBarManager];
  -[ICDocCamExtractedDocumentViewController setStatusBarWasHiddenWhenDoneTapped:](self, "setStatusBarWasHiddenWhenDoneTapped:", [v7 isStatusBarHidden]);

  v8 = [(ICDocCamExtractedDocumentViewController *)self delegate];
  LOBYTE(v5) = objc_opt_respondsToSelector();

  v11 = [(ICDocCamExtractedDocumentViewController *)self delegate];
  v9 = [(ICDocCamExtractedDocumentViewController *)self presentationPageIndex];
  if (v5)
  {
    v10 = [(ICDocCamExtractedDocumentViewController *)self scanCollectionDataDelegate];
    [v11 extractedDocumentControllerDidTapDone:v9 scanDataDelegate:v10];
  }

  else
  {
    [v11 extractedDocumentControllerDidTapDone:v9];
  }
}

- (void)shareAction:(id)a3
{
  v13 = a3;
  if (![(ICDocCamExtractedDocumentViewController *)self shouldDisableActions])
  {
    v4 = [(ICDocCamExtractedDocumentViewController *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
      v7 = [v6 docInfos];
      v8 = [v7 count];

      if (v8)
      {
        v9 = [(ICDocCamExtractedDocumentViewController *)self delegate];
        v10 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
        v11 = [v10 docInfos];
        v12 = [v11 objectAtIndexedSubscript:{-[ICDocCamExtractedDocumentViewController presentationPageIndex](self, "presentationPageIndex")}];
        [v9 extractedDocumentController:self shareDocument:v12 sender:v13];
      }
    }
  }
}

- (DCScanDataDelegate)scanCollectionDataDelegate
{
  v3 = objc_opt_class();
  v4 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  v5 = [v4 docInfos];
  v6 = [v5 firstObject];
  v7 = DCDynamicCast(v3, v6);

  v8 = [v7 scanDataDelegate];
  v9 = [v8 parentAttachment];

  return v9;
}

- (DCScanDataDelegate)selectedScanDataDelegate
{
  v2 = [(ICDocCamExtractedDocumentViewController *)self currentDocument];
  v3 = [v2 scanDataDelegate];

  return v3;
}

- (id)orientationString:(int64_t)a3
{
  if (a3 >= 4)
  {
    [ICDocCamExtractedDocumentViewController orientationString:];
  }

  return off_278F93088[a3];
}

- (id)currentPageContentViewController
{
  v2 = [(ICDocCamExtractedDocumentViewController *)self pageViewController];
  v3 = [v2 viewControllers];

  v4 = [v3 firstObject];

  return v4;
}

- (UIImageView)currentImageView
{
  v2 = [(ICDocCamExtractedDocumentViewController *)self currentPageContentViewController];
  v3 = [v2 imageView];

  return v3;
}

- (void)alertAndDiscardMarkup
{
  v3 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  v4 = [v3 docInfos];
  v5 = [v4 objectAtIndexedSubscript:{-[ICDocCamExtractedDocumentViewController presentationPageIndex](self, "presentationPageIndex")}];

  v6 = [DCLocalization localizedStringForKey:@"Discard Annotations?" value:@"Discard Annotations?" table:@"Localizable"];
  v7 = [DCLocalization localizedStringForKey:@"If you rotate or crop this scan value:its Markup annotations will be discarded." table:@"If you rotate or crop this scan, its Markup annotations will be discarded.", @"Localizable"];
  v8 = [MEMORY[0x277D75110] alertControllerWithTitle:v6 message:v7 preferredStyle:1];
  v9 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.triangle"];
  [v8 setImage:v9];

  v10 = MEMORY[0x277D750F8];
  v11 = [DCLocalization localizedStringForKey:@"OK" value:@"OK" table:@"Localizable"];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __64__ICDocCamExtractedDocumentViewController_alertAndDiscardMarkup__block_invoke;
  v20 = &unk_278F92DC0;
  v21 = self;
  v22 = v5;
  v12 = v5;
  v13 = [v10 actionWithTitle:v11 style:2 handler:&v17];
  [v8 addAction:{v13, v17, v18, v19, v20, v21}];

  v14 = MEMORY[0x277D750F8];
  v15 = [DCLocalization localizedStringForKey:@"Cancel" value:@"Cancel" table:@"Localizable"];
  v16 = [v14 actionWithTitle:v15 style:1 handler:0];
  [v8 addAction:v16];

  [(ICDocCamExtractedDocumentViewController *)self presentViewController:v8 animated:1 completion:0];
}

void __64__ICDocCamExtractedDocumentViewController_alertAndDiscardMarkup__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 extractedDocumentControllerDiscardMarkupModelDataForDocument:*(a1 + 40)];
}

- (BOOL)currentImageHasMarkup
{
  v3 = [(ICDocCamExtractedDocumentViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(ICDocCamExtractedDocumentViewController *)self presentationPageIndex];
  v6 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  v7 = [v6 docInfos];
  v8 = [v7 count];

  if (v5 >= v8)
  {
    return 0;
  }

  v9 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  v10 = [v9 docInfos];
  v11 = [v10 objectAtIndexedSubscript:{-[ICDocCamExtractedDocumentViewController presentationPageIndex](self, "presentationPageIndex")}];

  v12 = [(ICDocCamExtractedDocumentViewController *)self delegate];
  v13 = [v12 extractedDocumentControllerMarkupModelDataForDocument:v11];
  v14 = [v13 length] != 0;

  return v14;
}

- (BOOL)imageIsPortrait:(id)a3
{
  v3 = a3;
  [v3 size];
  v5 = v4;
  [v3 size];
  v7 = v6;

  return v5 <= v7;
}

- (void)rotateAction:(id)a3
{
  if (![(ICDocCamExtractedDocumentViewController *)self shouldDisableActions])
  {
    if ([(ICDocCamExtractedDocumentViewController *)self currentImageHasMarkup])
    {

      [(ICDocCamExtractedDocumentViewController *)self alertAndDiscardMarkup];
    }

    else
    {

      [(ICDocCamExtractedDocumentViewController *)self rotateCurrentImage];
    }
  }
}

- (void)rotateCurrentImage
{
  v3 = [(ICDocCamExtractedDocumentViewController *)self presentationPageIndex];
  v88 = 0;
  v89 = &v88;
  v90 = 0x3032000000;
  v91 = __Block_byref_object_copy_;
  v92 = __Block_byref_object_dispose_;
  v93 = [(ICDocCamExtractedDocumentViewController *)self croppedAndFilteredmageForDocumentAtIndex:v3];
  if (!v89[5])
  {
    v13 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(ICDocCamExtractedDocumentViewController *)v13 rotateCurrentImage];
    }

    goto LABEL_32;
  }

  if (![(ICDocCamExtractedDocumentViewController *)self rotationUnderWay])
  {
    [(ICDocCamExtractedDocumentViewController *)self setRotationUnderWay:1];
    v4 = [(ICDocCamExtractedDocumentViewController *)self pageViewController];
    v5 = [v4 view];
    v6 = [v5 subviews];

    v7 = 0;
    v8 = 0;
    while ([v6 count] > v7)
    {
      v9 = [v6 objectAtIndexedSubscript:v7];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);

      if ([v11 isEqualToString:@"_UIQueuingScrollView"])
      {
        v12 = [v6 objectAtIndexedSubscript:v7];

        [v12 setClipsToBounds:0];
        v8 = v12;
      }

      ++v7;
    }

    v14 = [(ICDocCamExtractedDocumentViewController *)self pageViewController];
    v15 = [v14 view];
    [v15 setClipsToBounds:0];

    v16 = [(ICDocCamExtractedDocumentViewController *)self currentPageContentViewController];
    [v16 resetZoom];

    v17 = [(ICDocCamExtractedDocumentViewController *)self currentPageContentViewController];
    v18 = [v17 view];

    v19 = -[ICDocCamExtractedDocumentViewController orientationRotated90DegreesFromOrientation:](self, "orientationRotated90DegreesFromOrientation:", [v89[5] imageOrientation]);
    [v18 frame];
    v21 = v20;
    [v18 frame];
    v23 = v22;
    [v89[5] size];
    v25 = v24;
    [v89[5] size];
    v27 = v26;
    v28 = v21 / v23;
    v29 = [(UIViewController *)self dc_effectiveInterfaceOrientation]- 1;
    v30 = v89[5];
    v31 = v25 / v27;
    if (v29 <= 1)
    {
      if ([(ICDocCamExtractedDocumentViewController *)self imageIsPortrait:v30])
      {
        if (v31 > v28)
        {
          [v18 frame];
          v33 = v32;
          [v89[5] size];
          v35 = v34;
          [v89[5] size];
          v37 = v36;
          [v18 frame];
LABEL_20:
          v43 = v38 / (v33 / v35 * v37);
          goto LABEL_31;
        }

        [v18 frame];
        v41 = v51;
        [v18 frame];
LABEL_25:
        v43 = v41 / v42;
        goto LABEL_31;
      }

      v43 = 1.0;
      if ([(ICDocCamExtractedDocumentViewController *)self imageIsPortrait:v89[5]])
      {
LABEL_31:
        [MEMORY[0x277CD9FF0] begin];
        v63 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.rotation"];
        v64 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
        [v63 setFromValue:v64];

        LODWORD(v65) = -1077342245;
        v66 = [MEMORY[0x277CCABB0] numberWithFloat:v65];
        [v63 setToValue:v66];

        [v63 setDuration:0.25];
        LODWORD(v67) = 1.0;
        [v63 setRepeatCount:v67];
        [v63 setRemovedOnCompletion:0];
        v68 = *MEMORY[0x277CDA238];
        [v63 setFillMode:*MEMORY[0x277CDA238]];
        v69 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.scale"];
        LODWORD(v70) = 1.0;
        v71 = [MEMORY[0x277CCABB0] numberWithFloat:v70];
        [v69 setFromValue:v71];

        *&v72 = v43;
        v73 = [MEMORY[0x277CCABB0] numberWithFloat:v72];
        [v69 setToValue:v73];

        [v69 setDuration:0.25];
        LODWORD(v74) = 1.0;
        [v69 setRepeatCount:v74];
        [v69 setRemovedOnCompletion:0];
        [v69 setFillMode:v68];
        v75 = MEMORY[0x277CD9FF0];
        v81[0] = MEMORY[0x277D85DD0];
        v81[1] = 3221225472;
        v81[2] = __61__ICDocCamExtractedDocumentViewController_rotateCurrentImage__block_invoke;
        v81[3] = &unk_278F92E10;
        v13 = v8;
        v82 = v13;
        v83 = self;
        v76 = v18;
        v84 = v76;
        v85 = &v88;
        v86 = v3;
        v87 = v19;
        [v75 setCompletionBlock:v81];
        v77 = [v76 layer];
        [v77 addAnimation:v63 forKey:@"rotate"];

        v78 = [v76 layer];
        [v78 addAnimation:v69 forKey:@"scale"];

        [MEMORY[0x277CD9FF0] commit];
        v79 = [(ICDocCamExtractedDocumentViewController *)self rotateBottomToolbarButton];
        v80 = [v79 accessibilityTraits];
        [v79 setAccessibilityTraits:v80 & ~*MEMORY[0x277D76580]];

LABEL_32:
        goto LABEL_33;
      }

      v44 = 1.0 / v31;
      if (1.0 / v31 > v28)
      {
        [v18 frame];
        v33 = v45;
        [v89[5] size];
        v35 = v46;
        [v89[5] size];
        v37 = v47;
        [v18 frame];
        goto LABEL_20;
      }

      [v18 frame];
      v49 = v59;
      [v18 frame];
LABEL_28:
      v43 = v49 / v50;
      goto LABEL_31;
    }

    if ([(ICDocCamExtractedDocumentViewController *)self imageIsPortrait:v30])
    {
      v39 = 1.0 / v31;
      if (1.0 / v31 > v28)
      {
        [v18 frame];
        v41 = v40;
        [v18 frame];
        goto LABEL_25;
      }

      [v18 frame];
      v53 = v52;
      [v89[5] size];
      v55 = v54;
      [v89[5] size];
      v57 = v56;
      [v18 frame];
    }

    else
    {
      v43 = 1.0;
      if ([(ICDocCamExtractedDocumentViewController *)self imageIsPortrait:v89[5]])
      {
        goto LABEL_31;
      }

      if (v31 > v28)
      {
        [v18 frame];
        v49 = v48;
        [v18 frame];
        goto LABEL_28;
      }

      [v18 frame];
      v53 = v60;
      [v89[5] size];
      v55 = v61;
      [v89[5] size];
      v57 = v62;
      [v18 frame];
    }

    v43 = v58 / (v53 / v55 * v57);
    goto LABEL_31;
  }

LABEL_33:
  _Block_object_dispose(&v88, 8);
}

void __61__ICDocCamExtractedDocumentViewController_rotateCurrentImage__block_invoke(uint64_t a1)
{
  v29[1] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setClipsToBounds:1];
  v2 = [*(a1 + 40) pageViewController];
  v3 = [v2 view];
  [v3 setClipsToBounds:1];

  v4 = [*(a1 + 48) layer];
  [v4 removeAllAnimations];

  v5 = *(a1 + 48);
  v6 = *(MEMORY[0x277CBF2C0] + 16);
  v28[0] = *MEMORY[0x277CBF2C0];
  v28[1] = v6;
  v28[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v5 setTransform:v28];
  v7 = [*(a1 + 40) documentInfoCollection];
  v8 = [v7 docInfos];
  v9 = [v8 objectAtIndexedSubscript:*(a1 + 64)];

  [v9 setCurrentOrientation:{objc_msgSend(*(a1 + 40), "orientationRotated90DegreesFromOrientation:", objc_msgSend(v9, "currentOrientation"))}];
  v10 = objc_autoreleasePoolPush();
  v11 = [MEMORY[0x277D755B8] imageWithCGImage:objc_msgSend(*(*(*(a1 + 56) + 8) + 40) scale:"CGImage") orientation:{*(a1 + 72), 1.0}];
  v12 = [v9 croppedAndFilteredImageUUID];

  v13 = [*(a1 + 40) imageCache];
  v14 = v13;
  if (v12)
  {
    v15 = [v9 metaData];
    v16 = [v9 croppedAndFilteredImageUUID];
    [v14 replaceImage:v11 metaData:v15 uuid:v16];
  }

  else
  {
    v15 = [v13 setImage:v11 metaData:0 addToMemoryCache:1 completion:0];
    [v9 setCroppedAndFilteredImageUUID:v15];
  }

  v17 = *(*(a1 + 56) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = 0;

  v19 = [*(a1 + 40) currentPageContentViewController];
  [v19 setImage:v11];

  objc_autoreleasePoolPop(v10);
  v20 = [*(a1 + 40) delegate];
  v21 = objc_opt_respondsToSelector();

  if ((v21 & 1) == 0)
  {
    v22 = [*(a1 + 40) thumbnailCollectionView];
    v23 = [MEMORY[0x277CCAA70] indexPathForItem:*(a1 + 64) inSection:0];
    v29[0] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
    [v22 reloadItemsAtIndexPaths:v24];
  }

  [*(a1 + 40) setRotationUnderWay:0];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __61__ICDocCamExtractedDocumentViewController_rotateCurrentImage__block_invoke_2;
  v26[3] = &unk_278F92DE8;
  v26[4] = *(a1 + 40);
  v27 = v9;
  v25 = v9;
  dispatch_async(MEMORY[0x277D85CD0], v26);
}

void __61__ICDocCamExtractedDocumentViewController_rotateCurrentImage__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 extractedDocumentControllerDidRotateDocument:*(a1 + 40)];
  }

  v5 = [*(a1 + 32) documentInfoCollection];
  [v5 bumpModificationDate];
}

- (void)setupGlurBar
{
  v25[3] = *MEMORY[0x277D85DE8];
  v3 = [[DCGradientBlurBar alloc] initWithEffect:0];
  [(ICDocCamExtractedDocumentViewController *)self setGlurBar:v3];

  v4 = [(ICDocCamExtractedDocumentViewController *)self view];
  v5 = [(ICDocCamExtractedDocumentViewController *)self glurBar];
  [v4 addSubview:v5];

  v19 = MEMORY[0x277CCAAD0];
  v24 = [(ICDocCamExtractedDocumentViewController *)self glurBar];
  v22 = [v24 bottomAnchor];
  v23 = [(ICDocCamExtractedDocumentViewController *)self view];
  v21 = [v23 bottomAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v25[0] = v20;
  v6 = [(ICDocCamExtractedDocumentViewController *)self glurBar];
  v7 = [v6 widthAnchor];
  v8 = [(ICDocCamExtractedDocumentViewController *)self view];
  v9 = [v8 widthAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
  v25[1] = v10;
  v11 = [(ICDocCamExtractedDocumentViewController *)self glurBar];
  v12 = [v11 heightAnchor];
  +[_TtC14DocumentCamera22DCLiquidGlassConstants gradientBlurBarHeight];
  v13 = [v12 constraintEqualToConstant:?];
  v25[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];
  [v19 activateConstraints:v14];

  v15 = [(ICDocCamExtractedDocumentViewController *)self view];
  v16 = [(ICDocCamExtractedDocumentViewController *)self glurBar];
  [v15 bringSubviewToFront:v16];

  v17 = [(ICDocCamExtractedDocumentViewController *)self view];
  v18 = [(ICDocCamExtractedDocumentViewController *)self buttonStackView];
  [v17 bringSubviewToFront:v18];
}

- (void)updateFilterButtonMenu
{
  v3 = [(ICDocCamExtractedDocumentViewController *)self presentationPageIndex];
  v4 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  v5 = [v4 docInfos];
  v6 = [v5 count];

  if (v3 >= v6)
  {
    v10 = 1;
  }

  else
  {
    v7 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
    v8 = [v7 docInfos];
    v9 = [v8 objectAtIndexedSubscript:{-[ICDocCamExtractedDocumentViewController presentationPageIndex](self, "presentationPageIndex")}];

    v10 = [v9 currentFilter];
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = MEMORY[0x277D750C8];
  v13 = [DCLocalization localizedStringForKey:@"Photo" value:@"Photo" table:@"Localizable"];
  if (v10)
  {
    v14 = 0;
  }

  else
  {
    v14 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark"];
  }

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __65__ICDocCamExtractedDocumentViewController_updateFilterButtonMenu__block_invoke;
  v36[3] = &unk_278F92E38;
  v36[4] = self;
  v15 = [v12 actionWithTitle:v13 image:v14 identifier:0 handler:v36];
  if (!v10)
  {
  }

  [v11 addObject:v15];
  v16 = MEMORY[0x277D750C8];
  v17 = [DCLocalization localizedStringForKey:@"Color" value:@"Color" table:@"Localizable"];
  if (v10 == 1)
  {
    v18 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark"];
  }

  else
  {
    v18 = 0;
  }

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __65__ICDocCamExtractedDocumentViewController_updateFilterButtonMenu__block_invoke_2;
  v35[3] = &unk_278F92E38;
  v35[4] = self;
  v19 = [v16 actionWithTitle:v17 image:v18 identifier:0 handler:v35];
  if (v10 == 1)
  {
  }

  [v11 addObject:v19];
  v20 = MEMORY[0x277D750C8];
  v21 = [DCLocalization localizedStringForKey:@"Grayscale" value:@"Grayscale" table:@"Localizable"];
  if (v10 == 2)
  {
    v22 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark"];
  }

  else
  {
    v22 = 0;
  }

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __65__ICDocCamExtractedDocumentViewController_updateFilterButtonMenu__block_invoke_3;
  v34[3] = &unk_278F92E38;
  v34[4] = self;
  v23 = [v20 actionWithTitle:v21 image:v22 identifier:0 handler:v34];
  if (v10 == 2)
  {
  }

  [v11 addObject:v23];
  v24 = MEMORY[0x277D750C8];
  v25 = [DCLocalization localizedStringForKey:@"Black & White" value:@"Black & White" table:@"Localizable"];
  if (v10 == 3)
  {
    v26 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark"];
  }

  else
  {
    v26 = 0;
  }

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __65__ICDocCamExtractedDocumentViewController_updateFilterButtonMenu__block_invoke_4;
  v33[3] = &unk_278F92E38;
  v33[4] = self;
  v27 = [v24 actionWithTitle:v25 image:v26 identifier:0 handler:v33];
  if (v10 == 3)
  {
  }

  [v11 addObject:v27];
  v28 = MEMORY[0x277D75710];
  v29 = [DCLocalization localizedStringForKey:@"Filters" value:@"Filters" table:@"Localizable"];
  v30 = [v28 menuWithTitle:v29 children:v11];

  v31 = [(ICDocCamExtractedDocumentViewController *)self filterBottomToolbarButton];
  [v31 setMenu:v30];

  v32 = [(ICDocCamExtractedDocumentViewController *)self filterBottomToolbarButton];
  [v32 setShowsMenuAsPrimaryAction:1];
}

- (void)applyFilter:(signed __int16)a3
{
  v3 = a3;
  if (![(ICDocCamExtractedDocumentViewController *)self shouldDisableActions])
  {
    v5 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
    v6 = [v5 docInfos];
    v7 = [v6 count];

    if (v7)
    {
      [(ICDocCamExtractedDocumentViewController *)self filterViewControllerDidSelectFilter:v3];
      [(ICDocCamExtractedDocumentViewController *)self updateFilterButtonMenu];

      [(ICDocCamExtractedDocumentViewController *)self updateFilterButtonItemAccessibilityInfo];
    }
  }
}

- (void)deleteButtonAction:(id)a3
{
  v4 = a3;
  if (![(ICDocCamExtractedDocumentViewController *)self shouldDisableActions])
  {
    if ([(ICDocCamExtractedDocumentViewController *)self mode])
    {
      v5 = objc_opt_class();
      v6 = DCDynamicCast(v5, v4);
      if (!v6)
      {
        v7 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
        v8 = [v7 docInfos];
        v9 = [v8 count];

        if (v9 >= 2)
        {
          [(ICDocCamExtractedDocumentViewController *)self deleteCurrentPage];
LABEL_18:

          goto LABEL_19;
        }
      }

      v10 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
      v11 = [v10 docInfos];
      if ([v11 count] == 1)
      {
        v12 = [(ICDocCamExtractedDocumentViewController *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          v13 = [(ICDocCamExtractedDocumentViewController *)self mode];

          if (v13 == 1)
          {
            v14 = [DCLocalization localizedStringForKey:@"Deleting the last scan in this document will remove the document from your note." value:@"Deleting the last scan in this document will remove the document from your note." table:@"Localizable"];
LABEL_14:
            v15 = [MEMORY[0x277D75110] alertControllerWithTitle:v14 message:0 preferredStyle:0];
            v16 = MEMORY[0x277D750F8];
            v17 = [DCLocalization localizedStringForKey:@"Delete Scan" value:@"Delete Scan" table:@"Localizable"];
            v25[0] = MEMORY[0x277D85DD0];
            v25[1] = 3221225472;
            v25[2] = __62__ICDocCamExtractedDocumentViewController_deleteButtonAction___block_invoke;
            v25[3] = &unk_278F92E60;
            v25[4] = self;
            v18 = [v16 actionWithTitle:v17 style:2 handler:v25];
            [v15 addAction:v18];

            v19 = MEMORY[0x277D750F8];
            v20 = [DCLocalization localizedStringForKey:@"Cancel" value:@"Cancel" table:@"Localizable"];
            v21 = [v19 actionWithTitle:v20 style:1 handler:0];
            [v15 addAction:v21];

            [v15 setModalPresentationStyle:7];
            [(ICDocCamExtractedDocumentViewController *)self presentViewController:v15 animated:1 completion:0];
            v22 = [v15 popoverPresentationController];
            v23 = v22;
            if (v6)
            {
              [v22 setBarButtonItem:v6];
            }

            else
            {
              v24 = [(ICDocCamExtractedDocumentViewController *)self currentImageView];
              [v23 setSourceView:v24];

              [(ICDocCamExtractedDocumentViewController *)self menuControllerTargetRect];
              [v23 setSourceRect:?];
            }

            [v23 setPermittedArrowDirections:3];

            goto LABEL_18;
          }

LABEL_13:
          v14 = 0;
          goto LABEL_14;
        }
      }

      goto LABEL_13;
    }

    [(ICDocCamExtractedDocumentViewController *)self deleteCurrentPage];
  }

LABEL_19:
}

- (id)makeUIImageFromCIImage:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBF740];
  v11 = *MEMORY[0x277CBF910];
  v12[0] = MEMORY[0x277CBEC28];
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v7 = [v3 contextWithOptions:v6];

  [v5 extent];
  v8 = [v7 createCGImage:v5 fromRect:?];

  v9 = [MEMORY[0x277D755B8] imageWithCGImage:v8];
  CGImageRelease(v8);

  return v9;
}

- (void)deleteCurrentPage
{
  v85[2] = *MEMORY[0x277D85DE8];
  v3 = [(ICDocCamExtractedDocumentViewController *)self currentPageContentViewController];
  [v3 resetZoom];

  v4 = [(ICDocCamExtractedDocumentViewController *)self currentPageContentViewController];
  v5 = [v4 imageView];

  v6 = [MEMORY[0x277D75418] currentDevice];
  v7 = [v6 _graphicsQuality];

  if (v7 != 100)
  {
    v8 = [(ICDocCamExtractedDocumentViewController *)self croppedAndFilteredmageForDocumentAtIndex:[(ICDocCamExtractedDocumentViewController *)self presentationPageIndex]];
    v75 = [objc_alloc(MEMORY[0x277CBF758]) initWithCGImage:{objc_msgSend(v8, "CGImage")}];
    [v75 extent];
    v87 = CGRectIntegral(v86);
    x = v87.origin.x;
    y = v87.origin.y;
    width = v87.size.width;
    height = v87.size.height;
    v74 = [v75 imageByCroppingToRect:?];
    v13 = [v74 imageByClampingToExtent];
    [v13 extent];
    v14 = [v13 imageBySettingAlphaOneInExtent:?];

    v15 = MEMORY[0x277CBF750];
    v84[0] = *MEMORY[0x277CBFAF0];
    v84[1] = @"inputRadius";
    v85[0] = v14;
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:40.0];
    v85[1] = v16;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:v84 count:2];
    v18 = v17 = v5;
    [v15 filterWithName:@"CIGaussianBlur" withInputParameters:v18];
    v20 = v19 = v7;
    v21 = [v20 outputImage];
    v22 = [v21 imageByCroppingToRect:{x, y, width, height}];

    v5 = v17;
    v23 = [(ICDocCamExtractedDocumentViewController *)self makeUIImageFromCIImage:v22];
    [v8 size];
    v25 = v24;
    [v8 size];
    v26 = [v23 dc_scaledImageWithSize:v25 scale:?];
    v27 = [(ICDocCamExtractedDocumentViewController *)self currentPageContentViewController];
    [v27 setImage:v26];

    v7 = v19;
  }

  v28 = [(ICDocCamExtractedDocumentViewController *)self trashBottomToolbarButton];
  [v28 setEnabled:0];

  v29 = [(ICDocCamExtractedDocumentViewController *)self retakeButtonItem];
  [v29 setEnabled:0];

  [(ICDocCamExtractedDocumentViewController *)self _beginDisablingInterfaceAutorotation];
  v30 = 0x277CD9000uLL;
  [MEMORY[0x277CD9FF0] begin];
  v79[0] = MEMORY[0x277D85DD0];
  v79[1] = 3221225472;
  v79[2] = __60__ICDocCamExtractedDocumentViewController_deleteCurrentPage__block_invoke;
  v79[3] = &unk_278F92C70;
  v79[4] = self;
  [MEMORY[0x277CD9FF0] setCompletionBlock:v79];
  memset(&v78, 0, sizeof(v78));
  v31 = [v5 layer];
  v32 = v31;
  if (v31)
  {
    [v31 transform];
  }

  else
  {
    memset(&v78, 0, sizeof(v78));
  }

  v33 = [(ICDocCamExtractedDocumentViewController *)self currentPageContentViewController];
  [v33 zoomScale];
  v35 = v34;

  v36 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.scale"];
  v37 = [MEMORY[0x277CCABB0] numberWithDouble:v35];
  [v36 setFromValue:v37];

  v38 = [MEMORY[0x277CCABB0] numberWithDouble:v35 * 0.5];
  [v36 setToValue:v38];

  [v36 setDuration:0.28];
  LODWORD(v39) = 1.0;
  [v36 setRepeatCount:v39];
  [v36 setRemovedOnCompletion:0];
  v40 = *MEMORY[0x277CDA230];
  [v36 setFillMode:*MEMORY[0x277CDA230]];
  LODWORD(v41) = 1051361018;
  LODWORD(v42) = 1045220557;
  LODWORD(v43) = 1.0;
  v44 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v41 :0.0 :v42 :v43];
  [v36 setTimingFunction:v44];

  v45 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
  [v45 setBeginTime:0.08];
  [v45 setFromValue:&unk_285C6D360];
  [v45 setToValue:&unk_285C6D348];
  [v45 setDuration:0.15];
  LODWORD(v46) = 1.0;
  [v45 setRepeatCount:v46];
  [v45 setRemovedOnCompletion:0];
  [v45 setFillMode:v40];
  v47 = *MEMORY[0x277CDA7B8];
  v48 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  [v45 setTimingFunction:v48];

  if (v7 == 100)
  {
    v49 = *MEMORY[0x277CDA328];
    v50 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
    [v50 setEnabled:1];
    [v50 setValue:MEMORY[0x277CBEC38] forKey:@"inputNormalizeEdges"];
    [v50 setValue:&unk_285C6D348 forKey:@"inputRadius"];
    v51 = [MEMORY[0x277D75418] currentDevice];
    if ([v51 _graphicsQuality] == 100)
    {
      v52 = @"default";
    }

    else
    {
      v52 = @"low";
    }

    [v50 setValue:v52 forKey:@"inputQuality"];

    v53 = [v5 layer];
    v83 = v50;
    v54 = [MEMORY[0x277CBEA60] arrayWithObjects:&v83 count:1];
    [v53 setFilters:v54];

    v55 = [v5 layer];
    [v55 setShouldRasterize:1];

    v56 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"filters.gaussianBlur.inputRadius"];
    v57 = [v5 layer];
    v58 = [v57 valueForKeyPath:@"filters.gaussianBlur.inputRadius"];
    [v56 setFromValue:v58];

    [v56 setToValue:&unk_285C6D378];
    [v56 setDuration:0.15];
    LODWORD(v59) = 1.0;
    [v56 setRepeatCount:v59];
    [v56 setRemovedOnCompletion:0];
    [v56 setFillMode:v40];
    v60 = [MEMORY[0x277CD9EF8] functionWithName:v47];
    [v56 setTimingFunction:v60];

    v61 = [MEMORY[0x277CD9EA0] filterWithType:v49];
    [v61 setEnabled:1];
    [v61 setValue:MEMORY[0x277CBEC38] forKey:@"inputNormalizeEdges"];
    [v61 setValue:&unk_285C6D378 forKey:@"inputRadius"];
    v62 = [MEMORY[0x277D75418] currentDevice];
    if ([v62 _graphicsQuality] == 100)
    {
      v63 = @"default";
    }

    else
    {
      v63 = @"low";
    }

    [v61 setValue:v63 forKey:@"inputQuality"];

    v64 = [v5 layer];
    v82 = v61;
    v65 = [MEMORY[0x277CBEA60] arrayWithObjects:&v82 count:1];
    [v64 setFilters:v65];

    v7 = 100;
    v30 = 0x277CD9000;
  }

  else
  {
    v56 = 0;
  }

  v66 = [v5 layer];
  [v66 setOpacity:0.0];

  v76 = v78;
  CATransform3DScale(&v77, &v76, 0.5, 0.5, 0.5);
  v67 = [v5 layer];
  v76 = v77;
  [v67 setTransform:&v76];

  v68 = [MEMORY[0x277CD9E00] animation];
  [v68 setDuration:0.28];
  if (v7 == 100 && v56)
  {
    v81[0] = v36;
    v81[1] = v45;
    v81[2] = v56;
    v69 = MEMORY[0x277CBEA60];
    v70 = v81;
    v71 = 3;
  }

  else
  {
    v80[0] = v36;
    v80[1] = v45;
    v69 = MEMORY[0x277CBEA60];
    v70 = v80;
    v71 = 2;
  }

  v72 = [v69 arrayWithObjects:v70 count:v71];
  [v68 setAnimations:v72];

  v73 = [v5 layer];
  [v73 addAnimation:v68 forKey:@"animGroup"];

  [*(v30 + 4080) commit];
}

void __60__ICDocCamExtractedDocumentViewController_deleteCurrentPage__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) documentInfoCollection];
  v3 = [v2 docInfos];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [*(a1 + 32) documentInfoCollection];
    v6 = [v5 docInfos];
    v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(*(a1 + 32), "presentationPageIndex")}];

    v8 = [v7 croppedAndFilteredImageUUID];

    if (v8)
    {
      v9 = [*(a1 + 32) imageCache];
      v10 = [v7 croppedAndFilteredImageUUID];
      [v9 deleteImage:v10];
    }

    v11 = [v7 croppedButNotFilteredImageUUID];

    if (v11)
    {
      v12 = [*(a1 + 32) imageCache];
      v13 = [v7 croppedButNotFilteredImageUUID];
      [v12 deleteImage:v13];
    }

    v14 = [v7 fullImageUUID];

    if (v14)
    {
      v15 = [*(a1 + 32) imageCache];
      v16 = [v7 fullImageUUID];
      [v15 deleteImage:v16];
    }

    v17 = [MEMORY[0x277CCAA70] indexPathForItem:objc_msgSend(*(a1 + 32) inSection:{"presentationPageIndex"), 0}];
    v18 = [*(a1 + 32) thumbnailCollectionView];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __60__ICDocCamExtractedDocumentViewController_deleteCurrentPage__block_invoke_2;
    v42[3] = &unk_278F92DE8;
    v42[4] = *(a1 + 32);
    v19 = v17;
    v43 = v19;
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __60__ICDocCamExtractedDocumentViewController_deleteCurrentPage__block_invoke_3;
    v41[3] = &unk_278F92D20;
    v41[4] = *(a1 + 32);
    [v18 performBatchUpdates:v42 completion:v41];

    v20 = [*(a1 + 32) delegate];
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      v22 = [*(a1 + 32) delegate];
      [v22 extractedDocumentControllerDidDeleteDocument:v7];
    }

    v23 = [*(a1 + 32) documentInfoCollection];
    [v23 bumpModificationDate];
  }

  v24 = [*(a1 + 32) documentInfoCollection];
  v25 = [v24 docInfos];
  v26 = [v25 count];

  v27 = *(a1 + 32);
  if (v26)
  {
    v28 = [v27 presentationPageIndex];
    v29 = [*(a1 + 32) documentInfoCollection];
    v30 = [v29 docInfos];
    v31 = [v30 count] - 1;

    if (v28 >= v31)
    {
      v28 = v31;
    }

    [*(a1 + 32) setPresentationPageIndex:v28];
    [*(a1 + 32) updatePageIndicatorForPageIndex:v28];
    [*(a1 + 32) showViewControllerAtIndex:v28 animated:1];
    [*(a1 + 32) setCurrentThumbnailItem:v28 animated:1];
    if ([*(a1 + 32) _isInterfaceAutorotationDisabled])
    {
      v32 = dispatch_time(0, 1000000000);
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __60__ICDocCamExtractedDocumentViewController_deleteCurrentPage__block_invoke_5;
      v39[3] = &unk_278F92C70;
      v39[4] = *(a1 + 32);
      v33 = MEMORY[0x277D85CD0];
      v34 = v39;
LABEL_18:
      dispatch_after(v32, v33, v34);
      return;
    }

    v35 = [*(a1 + 32) trashBottomToolbarButton];
    [v35 setEnabled:1];

    v36 = [*(a1 + 32) retakeButtonItem];
    [v36 setEnabled:1];
  }

  else
  {
    if ([v27 _isInterfaceAutorotationDisabled])
    {
      v32 = dispatch_time(0, 1000000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__ICDocCamExtractedDocumentViewController_deleteCurrentPage__block_invoke_4;
      block[3] = &unk_278F92C70;
      block[4] = *(a1 + 32);
      v33 = MEMORY[0x277D85CD0];
      v34 = block;
      goto LABEL_18;
    }

    v37 = [*(a1 + 32) trashBottomToolbarButton];
    [v37 setEnabled:1];

    v38 = [*(a1 + 32) retakeButtonItem];
    [v38 setEnabled:1];

    [*(a1 + 32) doneAction:0];
  }
}

void __60__ICDocCamExtractedDocumentViewController_deleteCurrentPage__block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) thumbnailCollectionView];
  v6[0] = *(a1 + 40);
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [v2 deleteItemsAtIndexPaths:v3];

  v4 = [*(a1 + 32) documentInfoCollection];
  v5 = [v4 docInfos];
  [v5 removeObjectAtIndex:{objc_msgSend(*(a1 + 32), "presentationPageIndex")}];
}

void __60__ICDocCamExtractedDocumentViewController_deleteCurrentPage__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) thumbnailCollectionViewLayout];
  [v2 invalidateLayout];

  v3 = [*(a1 + 32) documentInfoCollection];
  v4 = [v3 docInfos];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [*(a1 + 32) presentationPageIndex];
    v7 = [*(a1 + 32) documentInfoCollection];
    v8 = [v7 docInfos];
    v9 = [v8 count] - 1;

    if (v6 >= v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = v6;
    }

    v11 = *(a1 + 32);

    [v11 setCurrentThumbnailItem:v10 animated:1];
  }
}

uint64_t __60__ICDocCamExtractedDocumentViewController_deleteCurrentPage__block_invoke_4(uint64_t a1)
{
  if ([*(a1 + 32) _isInterfaceAutorotationDisabled])
  {
    [*(a1 + 32) _endDisablingInterfaceAutorotation];
  }

  v2 = [*(a1 + 32) trashBottomToolbarButton];
  [v2 setEnabled:1];

  v3 = [*(a1 + 32) retakeButtonItem];
  [v3 setEnabled:1];

  v4 = *(a1 + 32);

  return [v4 doneAction:0];
}

void __60__ICDocCamExtractedDocumentViewController_deleteCurrentPage__block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) _endDisablingInterfaceAutorotation];
  v2 = [*(a1 + 32) trashBottomToolbarButton];
  [v2 setEnabled:1];

  v3 = [*(a1 + 32) retakeButtonItem];
  [v3 setEnabled:1];
}

- (void)showViewControllerAtIndex:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v16[1] = *MEMORY[0x277D85DE8];
  [(ICDocCamExtractedDocumentViewController *)self setPresentationPageIndex:?];
  v7 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  v8 = [v7 docInfos];
  v9 = [v8 count];

  if (v9 > a3)
  {
    objc_initWeak(&location, self);
    v10 = [(ICDocCamExtractedDocumentViewController *)self viewControllerAtIndex:a3];
    v11 = [(ICDocCamExtractedDocumentViewController *)self pageViewController];
    v16[0] = v10;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __78__ICDocCamExtractedDocumentViewController_showViewControllerAtIndex_animated___block_invoke;
    v13[3] = &unk_278F92E88;
    objc_copyWeak(v14, &location);
    v14[1] = a3;
    [v11 setViewControllers:v12 direction:0 animated:v4 completion:v13];

    [(ICDocCamExtractedDocumentViewController *)self updateImageViewAccessibilityForPageContentViewController:v10];
    objc_destroyWeak(v14);

    objc_destroyWeak(&location);
  }
}

void __78__ICDocCamExtractedDocumentViewController_showViewControllerAtIndex_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updatePageIndicatorForPageIndex:*(a1 + 40)];
}

- (void)startMarkupViewController
{
  v3 = [(ICDocCamExtractedDocumentViewController *)self currentDocument];
  objc_initWeak(&location, self);
  [(ICDocCamExtractedDocumentViewController *)self setAdjustPageViewControllerForMarkup:1];
  if (v3)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __68__ICDocCamExtractedDocumentViewController_startMarkupViewController__block_invoke;
    aBlock[3] = &unk_278F92EB0;
    aBlock[4] = self;
    v4 = _Block_copy(aBlock);
    v5 = [(ICDocCamExtractedDocumentViewController *)self delegate];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __68__ICDocCamExtractedDocumentViewController_startMarkupViewController__block_invoke_4;
    v6[3] = &unk_278F92ED8;
    objc_copyWeak(&v7, &location);
    [v5 extractedDocumentController:self startMarkupOnDocument:v3 inkStyle:1 startPresentBlock:v4 dismissCompletionBlock:v6];

    objc_destroyWeak(&v7);
  }

  objc_destroyWeak(&location);
}

void __68__ICDocCamExtractedDocumentViewController_startMarkupViewController__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__ICDocCamExtractedDocumentViewController_startMarkupViewController__block_invoke_2;
  v8[3] = &unk_278F92C70;
  v8[4] = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__ICDocCamExtractedDocumentViewController_startMarkupViewController__block_invoke_3;
  v6[3] = &unk_278F92D70;
  v6[4] = v4;
  v7 = v3;
  v5 = v3;
  [v4 updatePageViewControllerConstraints:1 animationBlock:v8 completionBlock:v6];
}

void __68__ICDocCamExtractedDocumentViewController_startMarkupViewController__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) currentPageContentViewController];
  [v1 resetZoom];
}

uint64_t __68__ICDocCamExtractedDocumentViewController_startMarkupViewController__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) updateLayout];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __68__ICDocCamExtractedDocumentViewController_startMarkupViewController__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didDismissMarkupViewController];
}

- (void)didDismissMarkupViewController
{
  [(ICDocCamExtractedDocumentViewController *)self setAdjustPageViewControllerForMarkup:0];

  [(ICDocCamExtractedDocumentViewController *)self updatePageViewControllerConstraints:1 animationBlock:0 completionBlock:0];
}

- (id)truncatedString:(id)a3 clipLength:(unint64_t)a4
{
  v5 = a3;
  if ([v5 length] <= a4)
  {
    v8 = v5;
  }

  else
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [v5 substringToIndex:a4];
    v8 = [v6 stringWithFormat:@"%@…", v7];
  }

  return v8;
}

- (void)pencilDownInZoomablePageContentViewController:(id)a3
{
  if ([(ICDocCamExtractedDocumentViewController *)self isShowingBarsForZoomablePageContentViewController:a3])
  {
    v4 = [(ICDocCamExtractedDocumentViewController *)self currentDocument];
    if (v4)
    {
      v7 = v4;
      v5 = [(ICDocCamExtractedDocumentViewController *)self delegate];
      v6 = objc_opt_respondsToSelector();

      v4 = v7;
      if (v6)
      {
        [(ICDocCamExtractedDocumentViewController *)self startMarkupViewController];
        v4 = v7;
      }
    }
  }
}

- (void)hideBarsForZoomablePageContentViewController:(id)a3
{
  v4 = a3;
  if (![(ICDocCamExtractedDocumentViewController *)self barsShouldBeHidden])
  {
    [(ICDocCamExtractedDocumentViewController *)self setBarsShouldBeHidden:1];
    v5 = [(ICDocCamExtractedDocumentViewController *)self currentBackgroundColor];
    v6 = [(ICDocCamExtractedDocumentViewController *)self pageViewControllerContainerView];
    [v6 setBackgroundColor:v5];

    v7 = MEMORY[0x277D75D18];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __88__ICDocCamExtractedDocumentViewController_hideBarsForZoomablePageContentViewController___block_invoke;
    v9[3] = &unk_278F92DE8;
    v9[4] = self;
    v10 = v4;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __88__ICDocCamExtractedDocumentViewController_hideBarsForZoomablePageContentViewController___block_invoke_2;
    v8[3] = &unk_278F92D20;
    v8[4] = self;
    [v7 animateWithDuration:v9 animations:v8 completion:0.2];
  }
}

void __88__ICDocCamExtractedDocumentViewController_hideBarsForZoomablePageContentViewController___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setNeedsStatusBarAppearanceUpdate];
  v2 = [*(a1 + 32) currentBackgroundColor];
  v3 = [*(a1 + 40) view];
  [v3 setBackgroundColor:v2];

  v4 = [*(a1 + 32) bottomToolbar];
  [v4 setAlpha:0.0];

  v5 = [*(a1 + 32) buttonStackView];
  [v5 setAlpha:0.0];

  v6 = [*(a1 + 32) glurBar];
  [v6 setAlpha:0.0];

  v7 = [*(a1 + 32) navigationController];
  v8 = [v7 navigationBar];
  [v8 setAlpha:0.0];

  v10 = [*(a1 + 32) pageViewController];
  v9 = [v10 view];
  [v9 setAccessibilityViewIsModal:1];
}

void __88__ICDocCamExtractedDocumentViewController_hideBarsForZoomablePageContentViewController___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  [v2 setNavigationBarHidden:1 animated:0];

  LODWORD(v2) = *MEMORY[0x277D76488];
  v4 = [*(a1 + 32) pageViewController];
  v3 = [v4 view];
  UIAccessibilityPostNotification(v2, v3);
}

- (void)showBarsForZoomablePageContentViewController:(id)a3
{
  v4 = a3;
  v5 = [(ICDocCamExtractedDocumentViewController *)self barsShouldBeHidden];
  if (v4 && v5)
  {
    [(ICDocCamExtractedDocumentViewController *)self setBarsShouldBeHidden:0];
    v6 = [(ICDocCamExtractedDocumentViewController *)self currentBackgroundColor];
    v7 = [(ICDocCamExtractedDocumentViewController *)self pageViewControllerContainerView];
    [v7 setBackgroundColor:v6];

    v8 = [(ICDocCamExtractedDocumentViewController *)self navigationController];
    [v8 setNavigationBarHidden:0 animated:0];

    v9 = [(ICDocCamExtractedDocumentViewController *)self navigationController];
    v10 = [v9 navigationBar];
    [v10 setAlpha:0.0];

    v11 = [(ICDocCamExtractedDocumentViewController *)self pageViewController];
    v12 = [v11 view];
    [v12 setAccessibilityViewIsModal:0];

    v13 = MEMORY[0x277D75D18];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __88__ICDocCamExtractedDocumentViewController_showBarsForZoomablePageContentViewController___block_invoke;
    v14[3] = &unk_278F92DE8;
    v14[4] = self;
    v15 = v4;
    [v13 animateWithDuration:v14 animations:0.2];
  }
}

void __88__ICDocCamExtractedDocumentViewController_showBarsForZoomablePageContentViewController___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setNeedsStatusBarAppearanceUpdate];
  v2 = [*(a1 + 32) currentBackgroundColor];
  v3 = [*(a1 + 40) view];
  [v3 setBackgroundColor:v2];

  v4 = [*(a1 + 32) bottomToolbar];
  [v4 setAlpha:1.0];

  v5 = [*(a1 + 32) buttonStackView];
  [v5 setAlpha:1.0];

  v6 = [*(a1 + 32) glurBar];
  [v6 setAlpha:1.0];

  v7 = [*(a1 + 32) navigationController];
  v8 = [v7 navigationBar];
  [v8 setAlpha:1.0];

  LODWORD(v7) = *MEMORY[0x277D76488];
  v10 = [*(a1 + 32) pageViewController];
  v9 = [v10 view];
  UIAccessibilityPostNotification(v7, v9);
}

- (void)switchBarVisibilityForZoomablePageContentViewController:(id)a3
{
  v4 = a3;
  if ([(ICDocCamExtractedDocumentViewController *)self barsShouldBeHidden])
  {
    [(ICDocCamExtractedDocumentViewController *)self showBarsForZoomablePageContentViewController:v4];
  }

  else
  {
    [(ICDocCamExtractedDocumentViewController *)self hideBarsForZoomablePageContentViewController:v4];
  }
}

- (id)currentBackgroundColor
{
  if (DCDebugInterfaceEnabled())
  {
    v3 = 0;
  }

  else
  {
    if ([(ICDocCamExtractedDocumentViewController *)self barsShouldBeHidden])
    {
      [MEMORY[0x277D75348] blackColor];
    }

    else
    {
      [MEMORY[0x277D75348] DCExtractedDocumentViewControllerBackgroundColor];
    }
    v3 = ;
  }

  return v3;
}

- (id)pageViewController:(id)a3 viewControllerBeforeViewController:(id)a4
{
  v5 = [a4 pageIndex];
  v6 = 0;
  if (v5 && v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(ICDocCamExtractedDocumentViewController *)self viewControllerAtIndex:v5 - 1];
  }

  return v6;
}

- (id)pageViewController:(id)a3 viewControllerAfterViewController:(id)a4
{
  v5 = [a4 pageIndex];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL || (v6 = v5 + 1, -[ICDocCamExtractedDocumentViewController documentInfoCollection](self, "documentInfoCollection"), v7 = objc_claimAutoreleasedReturnValue(), [v7 docInfos], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v7, v6 == v9))
  {
    v10 = 0;
  }

  else
  {
    v10 = [(ICDocCamExtractedDocumentViewController *)self viewControllerAtIndex:v6];
  }

  return v10;
}

- (void)setIsScrollingBetweenPages:(BOOL)a3
{
  v3 = a3;
  self->_isScrollingBetweenPages = a3;
  v4 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionViewLayout];
  [v4 setIsScrollingBetweenPages:v3];
}

- (BOOL)isPageViewControllerScrolled
{
  if ([(ICDocCamExtractedDocumentViewController *)self isScrollingBetweenPages])
  {
    return 1;
  }

  [(ICDocCamExtractedDocumentViewController *)self normalizedPageViewControllerScrollPosition];
  return v4 != 0.0;
}

- (BOOL)shouldDisableActions
{
  if ([(ICDocCamExtractedDocumentViewController *)self isPageViewControllerScrolled])
  {
    return 1;
  }

  v4 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionViewLayout];
  v5 = [v4 movingItem];

  return v5;
}

- (BOOL)shouldDisableSharrow
{
  v2 = [(ICDocCamExtractedDocumentViewController *)self navigationController];
  v3 = [v2 view];
  v4 = [v3 dc_isInSecureWindow];

  return v4;
}

- (double)normalizedPageViewControllerScrollPosition
{
  v3 = [(ICDocCamExtractedDocumentViewController *)self pageViewController];
  v4 = [v3 view];
  [v4 bounds];
  v6 = v5 + 16.0;

  v7 = [(ICDocCamExtractedDocumentViewController *)self pageViewControllerScrollView];
  [v7 contentOffset];
  v9 = v8 - v6;

  v10 = [(ICDocCamExtractedDocumentViewController *)self pageViewController];
  v11 = [v10 view];
  [v11 bounds];
  v13 = v9 / (v12 + 16.0);

  return v13;
}

- (id)viewControllerAtIndex:(unint64_t)a3
{
  v5 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  v6 = [v5 docInfos];
  if (![v6 count])
  {
    v10 = 0;
    goto LABEL_5;
  }

  v7 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  v8 = [v7 docInfos];
  v9 = [v8 count];

  if (v9 > a3)
  {
    v10 = objc_alloc_init(ICDocCamZoomablePageContentViewController);
    v11 = [(ICDocCamExtractedDocumentViewController *)self croppedAndFilteredmageForDocumentAtIndex:a3];
    [(ICDocCamZoomablePageContentViewController *)v10 setImage:v11];

    [(ICDocCamZoomablePageContentViewController *)v10 setPageIndex:a3];
    [(ICDocCamZoomablePageContentViewController *)v10 setPageContentDelegate:self];
    v5 = [(ICDocCamExtractedDocumentViewController *)self currentBackgroundColor];
    v6 = [(ICDocCamZoomablePageContentViewController *)v10 view];
    [v6 setBackgroundColor:v5];
LABEL_5:

    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (void)pageViewController:(id)a3 willTransitionToViewControllers:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11 = [(ICDocCamExtractedDocumentViewController *)self currentBackgroundColor];
        v12 = [v10 view];
        [v12 setBackgroundColor:v11];

        v13 = -[ICDocCamExtractedDocumentViewController croppedAndFilteredmageForDocumentAtIndex:](self, "croppedAndFilteredmageForDocumentAtIndex:", [v10 pageIndex]);
        [v10 setImage:v13];

        [v10 resetZoom];
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  [(ICDocCamExtractedDocumentViewController *)self setIsScrollingBetweenPages:1];
}

- (void)pageViewController:(id)a3 didFinishAnimating:(BOOL)a4 previousViewControllers:(id)a5 transitionCompleted:(BOOL)a6
{
  v6 = a6;
  v18 = a5;
  if (v6)
  {
    v8 = [(ICDocCamExtractedDocumentViewController *)self pageViewController];
    v9 = [v8 viewControllers];
    v10 = [v9 lastObject];

    -[ICDocCamExtractedDocumentViewController setPresentationPageIndex:](self, "setPresentationPageIndex:", [v10 pageIndex]);
    [(ICDocCamExtractedDocumentViewController *)self updatePageIndicatorForPageIndex:[(ICDocCamExtractedDocumentViewController *)self presentationPageIndex]];
    v11 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionViewLayout];
    [v11 setInterPageScrollPosition:0.0];

    v12 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionViewLayout];
    [v12 setCurrentItem:-[ICDocCamExtractedDocumentViewController presentationPageIndex](self animated:{"presentationPageIndex"), 0}];

    [(ICDocCamExtractedDocumentViewController *)self updateImageViewAccessibilityForPageContentViewController:v10];
    LODWORD(v12) = *MEMORY[0x277D76438];
    v13 = [v10 imageView];
    v14 = [v13 accessibilityLabel];
    UIAccessibilityPostNotification(v12, v14);

    [(ICDocCamExtractedDocumentViewController *)self updateFilterButtonMenu];
    if ([v18 count])
    {
      v15 = objc_opt_class();
      v16 = [v18 firstObject];
      v17 = DCCheckedDynamicCast(v15, v16);

      [v17 resetZoom];
    }
  }

  [(ICDocCamExtractedDocumentViewController *)self setIsScrollingBetweenPages:0];
}

- (void)setPresentationPageIndex:(int64_t)a3
{
  v5 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  v6 = [v5 docInfos];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
    v9 = [v8 docInfos];
    v10 = [v9 count] - 1;

    if (v10 >= a3)
    {
      v11 = a3;
    }

    else
    {
      v11 = v10;
    }
  }

  else
  {
    v11 = 0;
  }

  self->_presentationPageIndex = v11;

  [(ICDocCamExtractedDocumentViewController *)self updateFilterButtonMenu];
}

- (void)setCurrentThumbnailItem:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  v8 = [v7 docInfos];
  v9 = [v8 count];

  if (v9 > a3)
  {
    v10 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionViewLayout];
    [v10 setCurrentItem:a3 animated:v4];
  }
}

- (void)updatePageIndicatorForPageIndex:(int64_t)a3
{
  v5 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  v6 = [v5 docInfos];
  v7 = [v6 count];

  if (v7 < 2)
  {
    v25 = &stru_285C55A80;
    goto LABEL_10;
  }

  if (([(UIViewController *)self dc_effectiveInterfaceOrientation]- 3) > 1)
  {
    goto LABEL_8;
  }

  v8 = [(ICDocCamExtractedDocumentViewController *)self view];
  v9 = [v8 window];
  if (([v9 dc_requiresCompactLandscapeIcons] & 1) == 0)
  {

    goto LABEL_8;
  }

  v10 = [(ICDocCamExtractedDocumentViewController *)self mode];

  if (!v10)
  {
LABEL_8:
    v11 = MEMORY[0x277CCACA8];
    v12 = @"%d of %d";
    goto LABEL_9;
  }

  v11 = MEMORY[0x277CCACA8];
  v12 = @"(%d of %d)";
LABEL_9:
  v13 = [DCLocalization localizedStringForKey:v12 value:v12 table:@"Localizable"];
  v14 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  v15 = [v14 docInfos];
  v25 = [v11 localizedStringWithFormat:v13, a3 + 1, objc_msgSend(v15, "count")];

LABEL_10:
  v16 = [(ICDocCamExtractedDocumentViewController *)self pageIndexLabel];
  [v16 setText:v25];

  [(ICDocCamExtractedDocumentViewController *)self updateTitleView];
  v17 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  v18 = [v17 docInfos];
  v19 = [v18 count];

  if (v19 > a3)
  {
    v20 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
    v21 = [v20 docInfos];
    v22 = [v21 objectAtIndexedSubscript:a3];
    v23 = [v22 currentFilter];
    v24 = [(ICDocCamExtractedDocumentViewController *)self currentDocument];
    [v24 setCurrentFilter:v23];
  }
}

- (void)changePage:(int64_t)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = [(ICDocCamExtractedDocumentViewController *)self pageViewController];
  v6 = [v5 viewControllers];
  v7 = [v6 objectAtIndex:0];
  v8 = [v7 pageIndex];

  if (a3)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = v8 + 1;
  }

  v10 = [(ICDocCamExtractedDocumentViewController *)self viewControllerAtIndex:v9];
  if (v10)
  {
    v11 = [(ICDocCamExtractedDocumentViewController *)self pageViewController];
    v13[0] = v10;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    [v11 setViewControllers:v12 direction:a3 animated:0 completion:0];
  }
}

- (id)imageForDocInfo:(id)a3 newFilter:(signed __int16)a4
{
  v4 = a4;
  v6 = a3;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy_;
  v35 = __Block_byref_object_dispose_;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = 0;
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __69__ICDocCamExtractedDocumentViewController_imageForDocInfo_newFilter___block_invoke;
  v20 = &unk_278F92F00;
  v23 = &v31;
  v21 = self;
  v7 = v6;
  v22 = v7;
  v24 = &v25;
  dc_performBlockOnMainThread(&v17);
  v8 = v32;
  v9 = v32[5];
  v10 = v8[5];
  if (v10)
  {
    v11 = +[ICDocCamImageFilters filteredImage:orientation:imageFilterType:](ICDocCamImageFilters, "filteredImage:orientation:imageFilterType:", v10, [v7 currentOrientation], v4);

    if (v26[5])
    {
      v12 = [ICDocCamImageFilters imageWithRGBColorspaceFromImage:v11];

      v13 = [v12 dc_JPEGData];
      v14 = MEMORY[0x277D755B8];
      v15 = [DCMarkupUtilities imageDataWithMarkupModelData:v26[5] sourceImageData:v13];
      v9 = [v14 imageWithData:v15];
    }

    else
    {
      v9 = v11;
    }
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v9;
}

void __69__ICDocCamExtractedDocumentViewController_imageForDocInfo_newFilter___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) croppedButNotFilteredImageForDocInfo:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v10 = [*(a1 + 32) delegate];
    v7 = [v10 extractedDocumentControllerMarkupModelDataForDocument:*(a1 + 40)];
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }
}

- (BOOL)filterViewControllerDidSelectFilter:(signed __int16)a3
{
  v3 = a3;
  if ([(ICDocCamExtractedDocumentViewController *)self shouldDisableActions])
  {
    return 0;
  }

  v6 = [(ICDocCamExtractedDocumentViewController *)self presentationPageIndex];
  v7 = [(ICDocCamExtractedDocumentViewController *)self croppedButNotFilteredImageForDocumentAtIndex:v6];
  v8 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  v9 = [v8 docInfos];
  if (v6 >= [v9 count])
  {
    v12 = 0;
  }

  else
  {
    v10 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
    v11 = [v10 docInfos];
    v12 = [v11 objectAtIndexedSubscript:v6];
  }

  v5 = 0;
  if (v7 && v12)
  {
    if ([v12 currentFilter] == v3)
    {
      v5 = 0;
    }

    else
    {
      v13 = [(ICDocCamExtractedDocumentViewController *)self imageForDocInfo:v12 newFilter:v3];
      [(ICDocCamExtractedDocumentViewController *)self updateImage:v13 document:v12 withFilterType:v3];
      v14 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
      [v14 bumpModificationDate];

      v5 = 1;
    }
  }

  return v5;
}

- (BOOL)filterViewControllerCanApplyToAll:(signed __int16)a3
{
  if ([(ICDocCamExtractedDocumentViewController *)self shouldDisableActions])
  {
    return 0;
  }

  v5 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  v6 = [v5 docInfos];
  v7 = [v6 count];

  if (v7 < 2)
  {
    return 0;
  }

  v9 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  v10 = [v9 docInfos];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__ICDocCamExtractedDocumentViewController_filterViewControllerCanApplyToAll___block_invoke;
  v12[3] = &__block_descriptor_34_e37_B32__0__ICDocCamDocumentInfo_8Q16_B24l;
  v13 = a3;
  v8 = [v10 indexOfObjectPassingTest:v12] != 0x7FFFFFFFFFFFFFFFLL;

  return v8;
}

BOOL __77__ICDocCamExtractedDocumentViewController_filterViewControllerCanApplyToAll___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = *(a1 + 32) != [a2 currentFilter];
  *a4 = result;
  return result;
}

- (BOOL)filterViewControllerApplyToAll:(signed __int16)a3
{
  v3 = a3;
  v29 = *MEMORY[0x277D85DE8];
  if ([(ICDocCamExtractedDocumentViewController *)self shouldDisableActions])
  {
    return 0;
  }

  else
  {
    v5 = [(ICDocCamExtractedDocumentViewController *)self filterViewControllerDidSelectFilter:v3];
    if ([(ICDocCamExtractedDocumentViewController *)self mode])
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v6 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
      v7 = [v6 docInfos];

      v8 = [(DCLongRunningTaskController *)v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v23;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v23 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v22 + 1) + 8 * i);
            if ([v12 currentFilter] != v3)
            {
              v13 = v7;
              v14 = [(ICDocCamExtractedDocumentViewController *)self delegate];
              v15 = objc_opt_respondsToSelector();

              if (v15)
              {
                [v12 setCurrentFilter:v3];
                v16 = [(ICDocCamExtractedDocumentViewController *)self delegate];
                [v16 extractedDocumentControllerDidApplyFilter:v3 forDocument:v12];

                v5 = 1;
              }

              v17 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
              [v17 bumpModificationDate];

              v7 = v13;
            }
          }

          v9 = [(DCLongRunningTaskController *)v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
        }

        while (v9);
      }
    }

    else
    {
      v18 = [DCLongRunningTaskController alloc];
      v19 = [(ICDocCamExtractedDocumentViewController *)self view];
      v20 = [v19 window];
      v7 = [(DCLongRunningTaskController *)v18 initWithWindow:v20 intervalBeforeOpeningProgressDialog:0.5];

      [(DCLongRunningTaskController *)v7 setProgressToStringTransformer:&__block_literal_global_705];
      [(DCLongRunningTaskController *)v7 setViewControllerToPresentFrom:self];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __74__ICDocCamExtractedDocumentViewController_filterViewControllerApplyToAll___block_invoke_2;
      v26[3] = &unk_278F92F90;
      v26[4] = self;
      v27 = v3;
      [(DCLongRunningTaskController *)v7 startTask:v26 completionBlock:0];
    }
  }

  return v5;
}

id __74__ICDocCamExtractedDocumentViewController_filterViewControllerApplyToAll___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = [DCLocalization localizedStringForKey:@"Apply Filter to Scan %lu of %lu" value:@"Apply Filter to Scan %lu of %lu" table:@"Localizable"];
  v7 = [v5 localizedStringWithFormat:v6, a2, a3];

  return v7;
}

void __74__ICDocCamExtractedDocumentViewController_filterViewControllerApplyToAll___block_invoke_2(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v25 = a2;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v3 = [*(a1 + 32) documentInfoCollection];
  v4 = [v3 docInfos];
  v5 = [v4 copy];

  v6 = [v5 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v34;
    v9 = 1;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (*(a1 + 40) != [*(*(&v33 + 1) + 8 * i) currentFilter])
        {
          ++v9;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 1;
  }

  [v25 setTotalUnitCount:v9];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = [*(a1 + 32) documentInfoCollection];
  v12 = [v11 docInfos];
  v13 = [v12 copy];

  v14 = [v13 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v30;
    v17 = 1;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v29 + 1) + 8 * j);
        v20 = objc_autoreleasePoolPush();
        if ([v19 currentFilter] != *(a1 + 40))
        {
          v21 = [*(a1 + 32) imageForDocInfo:v19 newFilter:?];
          v22 = v21;
          if (v21)
          {
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __74__ICDocCamExtractedDocumentViewController_filterViewControllerApplyToAll___block_invoke_3;
            block[3] = &unk_278F92F68;
            v28 = *(a1 + 40);
            v23 = *(a1 + 32);
            block[4] = v19;
            block[5] = v23;
            v27 = v21;
            dispatch_async(MEMORY[0x277D85CD0], block);
          }

          [v25 setCompletedUnitCount:++v17];
          v24 = [*(a1 + 32) documentInfoCollection];
          [v24 bumpModificationDate];
        }

        objc_autoreleasePoolPop(v20);
      }

      v15 = [v13 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v15);
  }
}

void __74__ICDocCamExtractedDocumentViewController_filterViewControllerApplyToAll___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) croppedAndFilteredImageUUID];

  if (v2)
  {
    [*(a1 + 32) setCurrentFilter:*(a1 + 56)];
    v3 = [*(a1 + 40) imageCache];
    v4 = *(a1 + 48);
    v5 = [*(a1 + 32) metaData];
    v6 = [*(a1 + 32) croppedAndFilteredImageUUID];
    [v3 replaceImage:v4 metaData:v5 uuid:v6];

    v8 = *(a1 + 32);
    v7 = *(a1 + 40);

    [v7 didUpdateDocumentImage:v8];
  }
}

- (void)showPrimaryControllerForNotes:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([v6 displayMode] == 1)
  {
    v7 = [MEMORY[0x277D75128] sharedApplication];
    v8 = [v7 applicationState];

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __82__ICDocCamExtractedDocumentViewController_showPrimaryControllerForNotes_animated___block_invoke;
    aBlock[3] = &unk_278F92DE8;
    aBlock[4] = self;
    v16 = v6;
    v9 = _Block_copy(aBlock);
    v10 = v9;
    if (v8)
    {
      v11 = 1;
    }

    else
    {
      v11 = !v4;
    }

    if (v11)
    {
      v9[2](v9);
    }

    else
    {
      v12 = MEMORY[0x277D75D18];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __82__ICDocCamExtractedDocumentViewController_showPrimaryControllerForNotes_animated___block_invoke_2;
      v13[3] = &unk_278F92FB8;
      v14 = v9;
      [v12 animateWithDuration:v13 animations:0.2];
    }
  }
}

void __82__ICDocCamExtractedDocumentViewController_showPrimaryControllerForNotes_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) traitCollection];
  v3 = [v2 horizontalSizeClass];

  if (v3 == 2)
  {
    v4 = [*(a1 + 32) view];
    [v4 bounds];
    v6 = v5;
    v8 = v7;

    v9 = *(a1 + 40);
    if (v6 >= v8)
    {
      v10 = 2;
    }

    else
    {
      v10 = 3;
    }

    [v9 setPreferredDisplayMode:v10];
  }
}

- (void)collectionNameTapped:(id)a3
{
  v4 = [(ICDocCamExtractedDocumentViewController *)self collectionTitleButton];
  v5 = [v4 titleForState:0];

  v6 = [[ICDocCamRenamePrompt alloc] initWithExistingTitle:v5];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__ICDocCamExtractedDocumentViewController_collectionNameTapped___block_invoke;
  v7[3] = &unk_278F92FE0;
  v7[4] = self;
  [(ICDocCamRenamePrompt *)v6 showFromViewController:self completion:v7];
}

void __64__ICDocCamExtractedDocumentViewController_collectionNameTapped___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  if (v13)
  {
    v3 = [*(a1 + 32) collectionTitleButton];
    [v3 setTitle:v13 forState:0];

    v4 = [*(a1 + 32) delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [*(a1 + 32) delegate];
      [v6 extractedDocumentControllerDidChangeTitle:v13];
    }

    v7 = [*(a1 + 32) documentInfoCollection];
    [v7 bumpModificationDate];
  }

  [*(a1 + 32) updateTitleView];
  v8 = [*(a1 + 32) view];
  v9 = [v8 window];

  v10 = [v9 rootViewController];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  if ([v12 isEqualToString:@"ICSplitViewController"])
  {
    [*(a1 + 32) showPrimaryControllerForNotes:v10 animated:0];
  }

  [*(a1 + 32) becomeFirstResponder];
}

- (ICDocCamReorderingThumbnailCollectionViewLayout)thumbnailCollectionViewLayout
{
  v3 = objc_opt_class();
  v4 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
  v5 = [v4 collectionViewLayout];
  v6 = DCCheckedDynamicCast(v3, v5);

  return v6;
}

- (CGSize)collectionView:(id)a3 imageSizeAtIndex:(int64_t)a4
{
  [(ICDocCamExtractedDocumentViewController *)self imageSizeForDocumentAtIndex:a4];
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGRect)targetViewRect
{
  v2 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
  [v2 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)respondToImageLongPressGesture:(id)a3
{
  v4 = a3;
  v5 = [(ICDocCamExtractedDocumentViewController *)self currentImageView];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [v4 state];
  if (v10 == 1)
  {
    v11 = [(ICDocCamExtractedDocumentViewController *)self currentImageView];
    [v11 bounds];
    v23.x = v7;
    v23.y = v9;
    v12 = CGRectContainsPoint(v24, v23);

    if (v12)
    {
      v21 = [MEMORY[0x277D75718] sharedMenuController];
      v13 = DCTSDRectWithCenterAndSize(v7, v9, 10.0);
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v20 = [(ICDocCamExtractedDocumentViewController *)self currentImageView];
      [v21 showMenuFromView:v20 rect:{v13, v15, v17, v19}];

      [(ICDocCamExtractedDocumentViewController *)self setMenuControllerTargetRect:v13, v15, v17, v19];
    }
  }
}

- (void)share:(id)a3
{
  v14 = [(ICDocCamExtractedDocumentViewController *)self delegate];
  v4 = [(ICDocCamExtractedDocumentViewController *)self currentDocument];
  [(ICDocCamExtractedDocumentViewController *)self menuControllerTargetRect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(ICDocCamExtractedDocumentViewController *)self currentImageView];
  [v14 extractedDocumentControllerDidSelectShareFromMenuForDocument:v4 sourceRect:v13 sourceView:{v6, v8, v10, v12}];
}

- (void)copy:(id)a3
{
  v5 = [(ICDocCamExtractedDocumentViewController *)self delegate];
  v4 = [(ICDocCamExtractedDocumentViewController *)self currentDocument];
  [v5 extractedDocumentControllerDidSelectCopyFromMenuForDocument:v4];
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  v7 = [(ICDocCamExtractedDocumentViewController *)self currentPageContentViewController];
  v8 = [v7 analysisInteraction];

  if (([v8 hasActiveTextSelection] & 1) == 0 && !-[ICDocCamExtractedDocumentViewController shouldDisableActions](self, "shouldDisableActions"))
  {
    if (sel_copy_ == a3 || ![(ICDocCamExtractedDocumentViewController *)self shouldDisableSharrow]&& sel_share_ == a3)
    {
      v11 = [(ICDocCamExtractedDocumentViewController *)self delegate];
      v9 = objc_opt_respondsToSelector();

      goto LABEL_4;
    }

    if (sel_delete_ == a3 && [(ICDocCamExtractedDocumentViewController *)self canPerformAction:sel_copy_ withSender:v6])
    {
      v9 = [(ICDocCamExtractedDocumentViewController *)self mode]!= 2;
      goto LABEL_4;
    }
  }

  v9 = 0;
LABEL_4:

  return v9 & 1;
}

- (void)respondToThumbnailLongPressGesture:(id)a3
{
  v44 = a3;
  v4 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
  v5 = [v4 numberOfItemsInSection:0];

  if (v5 >= 2 && [(ICDocCamExtractedDocumentViewController *)self mode]== 1)
  {
    v6 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
    [v44 locationInView:v6];
    v8 = v7;
    v10 = v9;

    v11 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
    v12 = [v11 indexPathForItemAtPoint:{v8, v10}];

    if (v12)
    {
      v13 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
      v14 = [v13 cellForItemAtIndexPath:v12];
    }

    else
    {
      v14 = 0;
    }

    v15 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
    v16 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:0];
    v17 = [v15 cellForItemAtIndexPath:v16];

    if (v17)
    {
      [v17 frame];
      v18 = CGRectGetMinX(v46) + -24.0;
      if (v8 < v18)
      {
        v8 = v18;
      }
    }

    v19 = fmax(v8, 0.0);
    v20 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
    [v20 contentOffset];
    v22 = v21;

    v23 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
    [v23 frame];
    v25 = v22 + v24;

    v26 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
    v27 = v5 - 1;
    v28 = [MEMORY[0x277CCAA70] indexPathForItem:v5 - 1 inSection:0];
    v29 = [v26 cellForItemAtIndexPath:v28];

    if (v29)
    {
      [v29 frame];
      v30 = CGRectGetMaxX(v47) + 24.0;
      if (v19 >= v30)
      {
        v19 = v30;
      }
    }

    if (v19 < v25)
    {
      v25 = v19;
    }

    v31 = [v44 state];
    switch(v31)
    {
      case 3:
        v36 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
        [v36 endInteractiveMovement];
        break;
      case 2:
        v34 = [(ICDocCamExtractedDocumentViewController *)self movingIndexPath];
        if ([v34 item] || (-[ICDocCamExtractedDocumentViewController movingXPosition](self, "movingXPosition"), v25 >= v35))
        {
          v38 = [(ICDocCamExtractedDocumentViewController *)self movingIndexPath];
          if ([v38 item] == v27)
          {
            [(ICDocCamExtractedDocumentViewController *)self movingXPosition];
            v40 = v39;

            if (v25 > v40)
            {
              goto LABEL_30;
            }
          }

          else
          {
          }

          [(ICDocCamExtractedDocumentViewController *)self movingYPosition];
          v42 = v41;
          v43 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
          [v43 updateInteractiveMovementTargetPosition:{v25, v42}];

          [(ICDocCamExtractedDocumentViewController *)self speakAccessibilityAnnouncementForReorderIfNecessaryForProposedIndexPath:v12];
        }

        else
        {
        }

LABEL_30:

        goto LABEL_31;
      case 1:
        if (v12)
        {
          [v14 frame];
          [(ICDocCamExtractedDocumentViewController *)self setMovingYPosition:CGRectGetMidY(v48)];
          [(ICDocCamExtractedDocumentViewController *)self setMovingXPosition:v25];
          [(ICDocCamExtractedDocumentViewController *)self setMovingIndexPath:v12];
          v32 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionViewLayout];
          [v32 setMovingItem:1];

          v33 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
          [v33 beginInteractiveMovementForItemAtIndexPath:v12];

          -[ICDocCamExtractedDocumentViewController setLastAXProposedIndexForReordering:](self, "setLastAXProposedIndexForReordering:", [v12 item]);
        }

        goto LABEL_30;
      default:
        v36 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
        [v36 cancelInteractiveMovement];
        break;
    }

    v37 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionViewLayout];
    [v37 setMovingItem:0];

    [(ICDocCamExtractedDocumentViewController *)self setMovingIndexPath:0];
    [(ICDocCamExtractedDocumentViewController *)self setCurrentThumbnailItem:[(ICDocCamExtractedDocumentViewController *)self presentationPageIndex] animated:1];
    goto LABEL_30;
  }

LABEL_31:
}

- (void)handleAccessibilityLongPressOnCollectionTitle:(id)a3
{
  v20 = a3;
  if (DCAccessibilityAccessibilityLargerTextSizesEnabled())
  {
    v4 = [(ICDocCamExtractedDocumentViewController *)self collectionTitleButton];
    v5 = [v4 currentTitle];
    v6 = [(ICDocCamExtractedDocumentViewController *)self truncatedString:v5 clipLength:48];

    v7 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
    v8 = [v7 docInfos];
    v9 = [v8 count];

    if (v9 > 1)
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = [(ICDocCamExtractedDocumentViewController *)self pageIndexLabel];
      v13 = [v12 text];
      v10 = [v11 stringWithFormat:@"%@\n%@", v6, v13];
    }

    else
    {
      v10 = v6;
    }

    v14 = [(ICDocCamExtractedDocumentViewController *)self hudItemForAccessibilityLargerText];

    if (!v14)
    {
      v15 = objc_alloc(MEMORY[0x277D750B0]);
      v16 = [v15 initWithTitle:v10 image:0 imageInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
      [(ICDocCamExtractedDocumentViewController *)self setHudItemForAccessibilityLargerText:v16];
    }

    v17 = [v20 state];
    if ((v17 - 3) >= 2)
    {
      if (v17 == 1)
      {
        v18 = [(ICDocCamExtractedDocumentViewController *)self hudItemForAccessibilityLargerText];
        [v18 setTitle:v10];

        v19 = [(ICDocCamExtractedDocumentViewController *)self hudItemForAccessibilityLargerText];
        [(ICDocCamExtractedDocumentViewController *)self _showAccessibilityHUDItem:v19];
      }
    }

    else
    {
      [(ICDocCamExtractedDocumentViewController *)self _dismissAccessibilityHUD];
    }
  }
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (v6 && ![(ICDocCamExtractedDocumentViewController *)self isPageViewControllerScrolled])
  {
    -[ICDocCamExtractedDocumentViewController setCurrentThumbnailItem:animated:](self, "setCurrentThumbnailItem:animated:", [v6 item], 1);
    -[ICDocCamExtractedDocumentViewController showViewControllerAtIndex:animated:](self, "showViewControllerAtIndex:animated:", [v6 item], 0);
    [(ICDocCamExtractedDocumentViewController *)self updatePageIndicatorForPageIndex:[(ICDocCamExtractedDocumentViewController *)self presentationPageIndex]];
  }
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  -[ICDocCamExtractedDocumentViewController imageSizeForDocumentAtIndex:](self, "imageSizeForDocumentAtIndex:", [a5 item]);

  [(ICDocCamExtractedDocumentViewController *)self frameSizeForImageSize:?];
  result.height = v7;
  result.width = v6;
  return result;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection:a3];
  v5 = [v4 docInfos];
  v6 = [v5 count];

  return v6;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 dequeueReusableCellWithReuseIdentifier:@"ICDocCamExtractedDocumentThumbnailCell" forIndexPath:v7];
  v9 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  v10 = [v9 docInfos];
  if (v10)
  {
    v11 = v10;
    v12 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
    v13 = [v12 docInfos];
    v14 = [v13 count];

    if (v14)
    {
      v15 = [v7 item];
      v16 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
      v17 = [v16 docInfos];
      v18 = [v17 count] - 1;

      if (v15 <= v18)
      {
        v21 = [v7 item];
      }

      else
      {
        v19 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
        v20 = [v19 docInfos];
        v21 = [v20 count] - 1;
      }

      v22 = [(ICDocCamExtractedDocumentViewController *)self delegate];
      v23 = objc_opt_respondsToSelector();

      if (v23)
      {
        [v6 bounds];
        v25 = v24;
        objc_initWeak(&v38, self);
        v26 = [(ICDocCamExtractedDocumentViewController *)self delegate];
        v27 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
        v28 = [v27 docInfos];
        v29 = [v28 objectAtIndexedSubscript:v21];
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __81__ICDocCamExtractedDocumentViewController_collectionView_cellForItemAtIndexPath___block_invoke;
        v40[3] = &unk_278F93008;
        objc_copyWeak(&v42, &v38);
        v41 = v8;
        [v26 extractedDocumentControllerLoadThumbnailForDocument:v29 size:v40 completionBlock:{v25, v25}];

        objc_destroyWeak(&v42);
        objc_destroyWeak(&v38);
      }

      else
      {
        v30 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
        v31 = [v30 docInfos];
        v32 = [v31 objectAtIndexedSubscript:v21];
        v33 = [v32 croppedAndFilteredImageUUID];

        v34 = [(ICDocCamExtractedDocumentViewController *)self imageCache];
        v35 = [v34 getImage:v33];

        [(ICDocCamExtractedDocumentViewController *)self setImage:v35 forCell:v8 useResizedImage:1];
      }
    }
  }

  else
  {
  }

  if ([MEMORY[0x277D74248] dc_isRTL])
  {
    CGAffineTransformMakeScale(&v39, -1.0, 1.0);
    v36 = [v8 contentView];
    v38 = v39;
    [v36 setTransform:&v38];
  }

  return v8;
}

void __81__ICDocCamExtractedDocumentViewController_collectionView_cellForItemAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setImage:v3 forCell:*(a1 + 32) useResizedImage:1];
}

- (void)collectionView:(id)a3 moveItemAtIndexPath:(id)a4 toIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 item];
  v12 = [v10 item];
  if (v12 == v11)
  {
    goto LABEL_14;
  }

  v13 = v12;
  v14 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  v15 = [v14 docInfos];
  v16 = [v15 objectAtIndexedSubscript:v11];

  v17 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  v18 = [v17 docInfos];
  [v18 removeObjectAtIndex:v11];

  v19 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  v20 = [v19 docInfos];
  [v20 insertObject:v16 atIndex:v13];

  v21 = [(ICDocCamExtractedDocumentViewController *)self presentationPageIndex];
  v22 = v13;
  if (v11 != v21)
  {
    if (v11 < [(ICDocCamExtractedDocumentViewController *)self presentationPageIndex]&& v13 >= [(ICDocCamExtractedDocumentViewController *)self presentationPageIndex])
    {
      v23 = -1;
    }

    else
    {
      if (v11 <= [(ICDocCamExtractedDocumentViewController *)self presentationPageIndex]|| v13 > [(ICDocCamExtractedDocumentViewController *)self presentationPageIndex])
      {
        goto LABEL_11;
      }

      v23 = 1;
    }

    v22 = [(ICDocCamExtractedDocumentViewController *)self presentationPageIndex]+ v23;
  }

  [(ICDocCamExtractedDocumentViewController *)self setPresentationPageIndex:v22];
LABEL_11:
  [(ICDocCamExtractedDocumentViewController *)self showViewControllerAtIndex:[(ICDocCamExtractedDocumentViewController *)self presentationPageIndex] animated:0];
  [(ICDocCamExtractedDocumentViewController *)self setCurrentThumbnailItem:[(ICDocCamExtractedDocumentViewController *)self presentationPageIndex] animated:1];
  v24 = [(ICDocCamExtractedDocumentViewController *)self delegate];
  v25 = objc_opt_respondsToSelector();

  if (v25)
  {
    v26 = [(ICDocCamExtractedDocumentViewController *)self delegate];
    v27 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
    v28 = [v27 docInfos];
    v29 = [v28 objectAtIndexedSubscript:v11];
    [v26 extractedDocumentControllerDidMovePageFromIndex:v11 toIndex:v13 forDocument:v29];
  }

  v30 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  [v30 bumpModificationDate];

  objc_initWeak(&location, self);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __90__ICDocCamExtractedDocumentViewController_collectionView_moveItemAtIndexPath_toIndexPath___block_invoke;
  v31[3] = &unk_278F93030;
  objc_copyWeak(&v34, &location);
  v32 = v9;
  v33 = v10;
  dc_dispatchMainAfterDelay(v31, 0.5);

  objc_destroyWeak(&v34);
  objc_destroyWeak(&location);
LABEL_14:
}

void __90__ICDocCamExtractedDocumentViewController_collectionView_moveItemAtIndexPath_toIndexPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained speakAccessibilityAnnouncementForMovingItemFromIndexPath:*(a1 + 32) toIndexPath:*(a1 + 40)];
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = a3;
  v5 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];

  if (v5 == v4)
  {
    v6 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionViewLayout];
    [v6 setIsScrubbing:1];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v25 = a3;
  v4 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
  if (v4 == v25 && ![(ICDocCamExtractedDocumentViewController *)self isScrollingBetweenPages])
  {
    v11 = [v25 isDragging];

    if (v11)
    {
      v12 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
      [v12 frame];
      v14 = v13 * 0.5;
      [v25 contentOffset];
      v16 = v15 + v14;
      v17 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
      [v17 frame];
      v19 = v18 * 0.5;
      [v25 contentOffset];
      v21 = v20 + v19;

      v22 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
      v9 = [v22 indexPathForItemAtPoint:{v16, v21}];

      if (v9)
      {
        v23 = [v9 item];
        if (v23 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v24 = v23;
          if (v23 != [(ICDocCamExtractedDocumentViewController *)self presentationPageIndex])
          {
            [(ICDocCamExtractedDocumentViewController *)self showViewControllerAtIndex:v24 animated:0];
            [(ICDocCamExtractedDocumentViewController *)self updatePageIndicatorForPageIndex:v24];
          }
        }
      }

      goto LABEL_9;
    }
  }

  else
  {
  }

  v5 = [(ICDocCamExtractedDocumentViewController *)self pageViewControllerScrollView];

  v6 = v25;
  if (v5 == v25)
  {
    v7 = [(ICDocCamExtractedDocumentViewController *)self isScrollingBetweenPages];
    v6 = v25;
    if (v7)
    {
      v8 = [v25 effectiveUserInterfaceLayoutDirection];
      v9 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionViewLayout];
      [(ICDocCamExtractedDocumentViewController *)self normalizedPageViewControllerScrollPosition];
      if (v8 == 1)
      {
        v10 = -v10;
      }

      [v9 setInterPageScrollPosition:v10];
LABEL_9:

      v6 = v25;
    }
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v21 = a3;
  v6 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];

  if (v6 == v21 && !a4)
  {
    v7 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
    [v7 frame];
    v9 = v8 * 0.5;
    [v21 contentOffset];
    v11 = v10 + v9;
    v12 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
    [v12 frame];
    v14 = v13 * 0.5;
    [v21 contentOffset];
    v16 = v15 + v14;

    v17 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
    v18 = [v17 indexPathForItemAtPoint:{v11, v16}];

    if (v18)
    {
      v19 = [v18 item];
      if (v19 != [(ICDocCamExtractedDocumentViewController *)self presentationPageIndex]&& !UIAccessibilityIsVoiceOverRunning())
      {
        -[ICDocCamExtractedDocumentViewController showViewControllerAtIndex:animated:](self, "showViewControllerAtIndex:animated:", [v18 item], 1);
        [(ICDocCamExtractedDocumentViewController *)self updatePageIndicatorForPageIndex:[(ICDocCamExtractedDocumentViewController *)self presentationPageIndex]];
      }
    }

    [(ICDocCamExtractedDocumentViewController *)self setCurrentThumbnailItem:[(ICDocCamExtractedDocumentViewController *)self presentationPageIndex] animated:1];
    v20 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionViewLayout];
    [v20 setIsScrubbing:0];
  }
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v20 = a3;
  v4 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];

  v5 = v20;
  if (v4 == v20)
  {
    v6 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
    [v6 frame];
    v8 = v7 * 0.5;
    [v20 contentOffset];
    v10 = v9 + v8;
    v11 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
    [v11 frame];
    v13 = v12 * 0.5;
    [v20 contentOffset];
    v15 = v14 + v13;

    v16 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
    v17 = [v16 indexPathForItemAtPoint:{v10, v15}];

    if (v17)
    {
      v18 = [v17 item];
      if (v18 != [(ICDocCamExtractedDocumentViewController *)self presentationPageIndex]&& !UIAccessibilityIsVoiceOverRunning())
      {
        -[ICDocCamExtractedDocumentViewController showViewControllerAtIndex:animated:](self, "showViewControllerAtIndex:animated:", [v17 item], 0);
        [(ICDocCamExtractedDocumentViewController *)self updatePageIndicatorForPageIndex:[(ICDocCamExtractedDocumentViewController *)self presentationPageIndex]];
      }
    }

    [(ICDocCamExtractedDocumentViewController *)self setCurrentThumbnailItem:[(ICDocCamExtractedDocumentViewController *)self presentationPageIndex] animated:1];
    v19 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionViewLayout];
    [v19 setIsScrubbing:0];

    v5 = v20;
  }
}

- (void)_pageViewControllerDidFinishTransitions:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionViewLayout];
  [v4 invalidateLayout];

  [(ICDocCamExtractedDocumentViewController *)self setIsScrollingBetweenPages:0];
  [(ICDocCamExtractedDocumentViewController *)self setCurrentThumbnailItem:[(ICDocCamExtractedDocumentViewController *)self presentationPageIndex] animated:0];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(ICDocCamExtractedDocumentViewController *)self documentsToUpdateWhenScrollingStops];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(ICDocCamExtractedDocumentViewController *)self updateDocumentImage:*(*(&v11 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = [(ICDocCamExtractedDocumentViewController *)self documentsToUpdateWhenScrollingStops];
  [v10 removeAllObjects];
}

- (void)setupBottomToolbar
{
  v59[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D75A68]);
  [(ICDocCamExtractedDocumentViewController *)self setButtonStackView:v3];

  v4 = [(ICDocCamExtractedDocumentViewController *)self buttonStackView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(ICDocCamExtractedDocumentViewController *)self buttonStackView];
  [v5 setAxis:0];

  v6 = [(ICDocCamExtractedDocumentViewController *)self buttonStackView];
  [v6 setAlignment:3];

  v7 = [(ICDocCamExtractedDocumentViewController *)self buttonStackView];
  [v7 setDistribution:1];

  +[_TtC14DocumentCamera22DCLiquidGlassConstants editorBottomToolbarInterItemSpacing];
  v9 = v8;
  v10 = [(ICDocCamExtractedDocumentViewController *)self buttonStackView];
  [v10 setSpacing:v9];

  v11 = [DCLabelledButton alloc];
  v12 = [DCLocalization localizedStringForKey:@"Add scan" value:@"Add scan" table:@"Localizable"];
  v13 = [(DCLabelledButton *)v11 initWithSymbolName:@"plus.circle" subtitle:v12];
  [(ICDocCamExtractedDocumentViewController *)self setAddLabelledButton:v13];

  v14 = [(ICDocCamExtractedDocumentViewController *)self addLabelledButton];
  [v14 addTarget:self action:sel_addImageAction_ forControlEvents:64];

  v15 = [DCLabelledButton alloc];
  v16 = [DCLocalization localizedStringForKey:@"Adjust" value:@"Adjust" table:@"Localizable"];
  v17 = [(DCLabelledButton *)v15 initWithSymbolName:@"skew" subtitle:v16];
  [(ICDocCamExtractedDocumentViewController *)self setRecropBottomToolbarButton:v17];

  v18 = [(ICDocCamExtractedDocumentViewController *)self recropBottomToolbarButton];
  [v18 addTarget:self action:sel_recropButtonPressed_ forControlEvents:64];

  v19 = [DCLabelledButton alloc];
  v20 = [DCLocalization localizedStringForKey:@"Filters" value:@"Filters" table:@"Localizable"];
  v21 = [(DCLabelledButton *)v19 initWithSymbolName:@"camera.filters" subtitle:v20];
  [(ICDocCamExtractedDocumentViewController *)self setFilterBottomToolbarButton:v21];

  v22 = [DCLabelledButton alloc];
  v23 = [DCLocalization localizedStringForKey:@"Rotate" value:@"Rotate" table:@"Localizable"];
  v24 = [(DCLabelledButton *)v22 initWithSymbolName:@"rotate.left" subtitle:v23];
  [(ICDocCamExtractedDocumentViewController *)self setRotateBottomToolbarButton:v24];

  v25 = [(ICDocCamExtractedDocumentViewController *)self rotateBottomToolbarButton];
  [v25 addTarget:self action:sel_rotateAction_ forControlEvents:64];

  v26 = [DCLabelledButton alloc];
  v27 = [DCLocalization localizedStringForKey:@"Delete" value:@"Delete" table:@"Localizable"];
  v28 = [(DCLabelledButton *)v26 initWithSymbolName:@"trash" subtitle:v27];
  [(ICDocCamExtractedDocumentViewController *)self setTrashBottomToolbarButton:v28];

  v29 = [(ICDocCamExtractedDocumentViewController *)self trashBottomToolbarButton];
  [v29 addTarget:self action:sel_deleteButtonAction_ forControlEvents:64];

  v30 = [DCLabelledButton alloc];
  v31 = [DCLocalization localizedStringForKey:@"Share" value:@"Share" table:@"Localizable"];
  v32 = [(DCLabelledButton *)v30 initWithSymbolName:@"square.and.arrow.up" subtitle:v31];
  [(ICDocCamExtractedDocumentViewController *)self setActionLabelledButton:v32];

  v33 = [(ICDocCamExtractedDocumentViewController *)self actionLabelledButton];
  [v33 addTarget:self action:sel_shareAction_ forControlEvents:64];

  v34 = [(ICDocCamExtractedDocumentViewController *)self buttonStackView];
  v35 = [(ICDocCamExtractedDocumentViewController *)self addLabelledButton];
  [v34 addArrangedSubview:v35];

  v36 = [(ICDocCamExtractedDocumentViewController *)self buttonStackView];
  v37 = [(ICDocCamExtractedDocumentViewController *)self recropBottomToolbarButton];
  [v36 addArrangedSubview:v37];

  v38 = [(ICDocCamExtractedDocumentViewController *)self buttonStackView];
  v39 = [(ICDocCamExtractedDocumentViewController *)self filterBottomToolbarButton];
  [v38 addArrangedSubview:v39];

  v40 = [(ICDocCamExtractedDocumentViewController *)self buttonStackView];
  v41 = [(ICDocCamExtractedDocumentViewController *)self rotateBottomToolbarButton];
  [v40 addArrangedSubview:v41];

  v42 = [(ICDocCamExtractedDocumentViewController *)self buttonStackView];
  v43 = [(ICDocCamExtractedDocumentViewController *)self trashBottomToolbarButton];
  [v42 addArrangedSubview:v43];

  v44 = [(ICDocCamExtractedDocumentViewController *)self view];
  v45 = [(ICDocCamExtractedDocumentViewController *)self buttonStackView];
  [v44 addSubview:v45];

  v55 = MEMORY[0x277CCAAD0];
  v58 = [(ICDocCamExtractedDocumentViewController *)self buttonStackView];
  v56 = [v58 centerXAnchor];
  v57 = [(ICDocCamExtractedDocumentViewController *)self view];
  v46 = [v57 centerXAnchor];
  v47 = [v56 constraintEqualToAnchor:v46];
  v59[0] = v47;
  v48 = [(ICDocCamExtractedDocumentViewController *)self buttonStackView];
  v49 = [v48 bottomAnchor];
  v50 = [(ICDocCamExtractedDocumentViewController *)self view];
  v51 = [v50 safeAreaLayoutGuide];
  v52 = [v51 bottomAnchor];
  v53 = [v49 constraintEqualToAnchor:v52];
  v59[1] = v53;
  v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
  [v55 activateConstraints:v54];

  [(ICDocCamExtractedDocumentViewController *)self updateBottomToolbarButtonsForCurrentMode];
}

- (void)updateBottomToolbarButtonsForCurrentMode
{
  v3 = [(ICDocCamExtractedDocumentViewController *)self addLabelledButton];
  [v3 setHidden:1];

  v4 = [(ICDocCamExtractedDocumentViewController *)self recropBottomToolbarButton];
  [v4 setHidden:1];

  v5 = [(ICDocCamExtractedDocumentViewController *)self filterBottomToolbarButton];
  [v5 setHidden:1];

  v6 = [(ICDocCamExtractedDocumentViewController *)self rotateBottomToolbarButton];
  [v6 setHidden:1];

  v7 = [(ICDocCamExtractedDocumentViewController *)self trashBottomToolbarButton];
  [v7 setHidden:1];

  v8 = [(ICDocCamExtractedDocumentViewController *)self actionLabelledButton];
  [v8 setHidden:1];

  if ([(ICDocCamExtractedDocumentViewController *)self mode]== 1)
  {
    if (![(ICDocCamExtractedDocumentViewController *)self cameraRestricted])
    {
      v9 = [(ICDocCamExtractedDocumentViewController *)self addLabelledButton];
      [v9 setHidden:0];
    }
  }

  else if ([(ICDocCamExtractedDocumentViewController *)self mode])
  {
    return;
  }

  v10 = [(ICDocCamExtractedDocumentViewController *)self recropBottomToolbarButton];
  [v10 setHidden:0];

  v11 = [(ICDocCamExtractedDocumentViewController *)self filterBottomToolbarButton];
  [v11 setHidden:0];

  v12 = [(ICDocCamExtractedDocumentViewController *)self rotateBottomToolbarButton];
  [v12 setHidden:0];

  v13 = [(ICDocCamExtractedDocumentViewController *)self trashBottomToolbarButton];
  [v13 setHidden:0];
}

- (void)setupAccessibilityInfo
{
  [(ICDocCamExtractedDocumentViewController *)self updateFilterButtonItemAccessibilityInfo];
  v3 = [DCLocalization localizedStringForKey:@"Rotate" value:@"Rotate" table:@"Localizable"];
  v4 = [(ICDocCamExtractedDocumentViewController *)self rotateBottomToolbarButton];
  [v4 setTitle:v3];

  v5 = [(ICDocCamExtractedDocumentViewController *)self rotateBottomToolbarButton];
  v6 = [v5 title];
  v7 = [(ICDocCamExtractedDocumentViewController *)self rotateBottomToolbarButton];
  [v7 setAccessibilityLabel:v6];

  v8 = [DCLocalization localizedStringForKey:@"Double-tap to rotate the scan counter-clockwise." value:@"Double-tap to rotate the scan counter-clockwise." table:@"Localizable"];
  v9 = [(ICDocCamExtractedDocumentViewController *)self rotateBottomToolbarButton];
  [v9 setAccessibilityHint:v8];

  v10 = [DCLocalization localizedStringForKey:@"Double-tap to rename document" value:@"Double-tap to rename document" table:@"Localizable"];
  v11 = [(ICDocCamExtractedDocumentViewController *)self collectionTitleButton];
  [v11 setAccessibilityHint:v10];

  v12 = [DCLocalization localizedStringForKey:@"Add scan" value:@"Add scan" table:@"Localizable"];
  v13 = [(ICDocCamExtractedDocumentViewController *)self addButtonItem];
  [v13 setTitle:v12];

  v14 = [(ICDocCamExtractedDocumentViewController *)self addButtonItem];
  v15 = [v14 title];
  v16 = [(ICDocCamExtractedDocumentViewController *)self addButtonItem];
  [v16 setAccessibilityLabel:v15];

  v17 = [DCLocalization localizedStringForKey:@"Double-tap to add a new scan to this document." value:@"Double-tap to add a new scan to this document." table:@"Localizable"];
  v18 = [(ICDocCamExtractedDocumentViewController *)self addButtonItem];
  [v18 setAccessibilityHint:v17];

  v19 = [DCLocalization localizedStringForKey:@"Share" value:@"Share" table:@"Localizable"];
  v20 = [(ICDocCamExtractedDocumentViewController *)self actionButtonItem];
  [v20 setAccessibilityLabel:v19];

  v21 = [DCLocalization localizedStringForKey:@"Double-tap to share the current scan." value:@"Double-tap to share the current scan." table:@"Localizable"];
  v22 = [(ICDocCamExtractedDocumentViewController *)self actionButtonItem];
  [v22 setAccessibilityHint:v21];

  v23 = [DCLocalization localizedStringForKey:@"Delete scan" value:@"Delete scan" table:@"Localizable"];
  v24 = [(ICDocCamExtractedDocumentViewController *)self trashBottomToolbarButton];
  [v24 setAccessibilityLabel:v23];

  v25 = [DCLocalization localizedStringForKey:@"Double-tap to delete the current scan." value:@"Double-tap to delete the current scan." table:@"Localizable"];
  v26 = [(ICDocCamExtractedDocumentViewController *)self trashBottomToolbarButton];
  [v26 setAccessibilityHint:v25];

  v27 = [DCLocalization localizedStringForKey:@"Adjust" value:@"Adjust" table:@"Localizable"];
  v28 = [(ICDocCamExtractedDocumentViewController *)self recropBottomToolbarButton];
  [v28 setTitle:v27];

  v29 = [(ICDocCamExtractedDocumentViewController *)self recropBottomToolbarButton];
  v30 = [v29 title];
  v31 = [(ICDocCamExtractedDocumentViewController *)self recropBottomToolbarButton];
  [v31 setAccessibilityLabel:v30];

  v32 = [DCLocalization localizedStringForKey:@"Double-tap to adjust and crop the current scan." value:@"Double-tap to adjust and crop the current scan." table:@"Localizable"];
  v33 = [(ICDocCamExtractedDocumentViewController *)self recropBottomToolbarButton];
  [v33 setAccessibilityHint:v32];

  [(ICDocCamExtractedDocumentViewController *)self updateForAccessibilityDarkerSystemColors];
}

- (void)updateFilterButtonItemAccessibilityInfo
{
  v8 = [DCLocalization localizedStringForKey:@"Filters" value:@"Filters" table:@"Localizable"];
  v3 = [DCLocalization localizedStringForKey:@"Show filters" value:@"Show filters" table:@"Localizable"];
  v4 = [DCLocalization localizedStringForKey:@"Tap to choose a filter to apply to this scan." value:@"Tap to choose a filter to apply to this scan." table:@"Localizable"];
  v5 = [(ICDocCamExtractedDocumentViewController *)self filterBottomToolbarButton];
  [v5 setTitle:v8];

  v6 = [(ICDocCamExtractedDocumentViewController *)self filterBottomToolbarButton];
  [v6 setAccessibilityLabel:v3];

  v7 = [(ICDocCamExtractedDocumentViewController *)self filterBottomToolbarButton];
  [v7 setAccessibilityHint:v4];
}

- (void)updateImageViewAccessibilityForPageContentViewController:(id)a3
{
  v37 = a3;
  v4 = [v37 image];
  [v4 size];
  v6 = v5;
  v7 = [v37 image];
  [v7 size];
  v9 = v8;

  if (v6 >= v9)
  {
    v10 = @"portrait";
  }

  else
  {
    v10 = @"landscape";
  }

  v11 = [DCLocalization localizedStringForKey:v10 value:v10 table:@"Localizable"];
  v12 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  v13 = [v12 docInfos];
  v14 = [v13 objectAtIndexedSubscript:{-[ICDocCamExtractedDocumentViewController presentationPageIndex](self, "presentationPageIndex")}];
  v15 = +[ICDocCamImageFilters localizedImageFilterNameForType:](ICDocCamImageFilters, "localizedImageFilterNameForType:", [v14 currentFilter]);

  v16 = MEMORY[0x277CCACA8];
  v17 = [DCLocalization localizedStringForKey:@"%lu of %lu" value:@"%lu of %lu" table:@"Localizable"];
  v18 = [(ICDocCamExtractedDocumentViewController *)self presentationPageIndex]+ 1;
  v19 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  v20 = [v19 docInfos];
  v21 = [v16 localizedStringWithFormat:v17, v18, objc_msgSend(v20, "count")];

  v22 = [DCLocalization localizedStringForKey:@"Scan" value:@"Scan" table:@"Localizable"];
  v23 = [v37 imageView];
  [v23 setIsAccessibilityElement:1];

  v30 = __DCAccessibilityStringForVariables(1, v22, v24, v25, v26, v27, v28, v29, v11);
  v31 = [v37 imageView];
  [v31 setAccessibilityLabel:v30];

  v32 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  v33 = [v32 docInfos];
  v34 = [v33 count];

  if (v34)
  {
    v35 = [DCLocalization localizedStringForKey:@"Three-finger swipe to scroll between scans." value:@"Three-finger swipe to scroll between scans." table:@"Localizable"];
    v36 = [v37 imageView];
    [v36 setAccessibilityHint:v35];
  }
}

- (void)updateForAccessibilityDarkerSystemColors
{
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    [(ICDocCamExtractedDocumentViewController *)self darkenedCollectionViewTitleTintColor];
  }

  else
  {
    [(ICDocCamExtractedDocumentViewController *)self defaultCollectionViewTitleTintColor];
  }
  v4 = ;
  v3 = [(ICDocCamExtractedDocumentViewController *)self collectionTitleButton];
  [v3 setTitleColor:v4 forState:0];
}

- (void)speakAccessibilityAnnouncementForReorderIfNecessaryForProposedIndexPath:(id)a3
{
  v4 = [a3 item];
  if (v4 != [(ICDocCamExtractedDocumentViewController *)self lastAXProposedIndexForReordering])
  {
    v6 = [DCLocalization localizedStringForKey:@"Position %lu" value:@"Position %lu" table:@"Localizable"];
    v5 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v6, v4 + 1];
    UIAccessibilityPostNotification(*MEMORY[0x277D76438], v5);
    [(ICDocCamExtractedDocumentViewController *)self setLastAXProposedIndexForReordering:v4];
  }
}

- (void)speakAccessibilityAnnouncementForMovingItemFromIndexPath:(id)a3 toIndexPath:(id)a4
{
  v5 = a4;
  v6 = [a3 item];
  v7 = [v5 item];

  v9 = [DCLocalization localizedStringForKey:@"Moved item from position %lu to position %lu" value:@"Moved item from position %lu to position %lu" table:@"Localizable"];
  v8 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v9, v6 + 1, v7 + 1];
  UIAccessibilityPostNotification(*MEMORY[0x277D76438], v8);
}

- (id)_accessibilitySpeakThisElementsAndStrings
{
  v3 = MEMORY[0x277CBEB18];
  v12.receiver = self;
  v12.super_class = ICDocCamExtractedDocumentViewController;
  v4 = [(ICDocCamExtractedDocumentViewController *)&v12 _accessibilitySpeakThisElementsAndStrings];
  v5 = [v3 arrayWithArray:v4];

  v6 = [(ICDocCamExtractedDocumentViewController *)self collectionTitleButton];
  v7 = [v6 accessibilityLabel];
  [v5 insertObject:v7 atIndex:0];

  v8 = [(ICDocCamExtractedDocumentViewController *)self pageIndexLabel];
  v9 = [v8 accessibilityLabel];
  [v5 insertObject:v9 atIndex:1];

  v10 = [v5 copy];

  return v10;
}

- (BOOL)accessibilityScrollRightPage
{
  v3 = [(ICDocCamExtractedDocumentViewController *)self presentationPageIndex];
  v4 = v3;
  if (v3)
  {
    [(ICDocCamExtractedDocumentViewController *)self showViewControllerAtIndex:v3 - 1 animated:0];
  }

  return v4 != 0;
}

- (BOOL)accessibilityScrollLeftPage
{
  v3 = [(ICDocCamExtractedDocumentViewController *)self presentationPageIndex];
  v4 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  v5 = [v4 docInfos];
  v6 = [v5 count] - 1;

  if (v3 < v6)
  {
    [(ICDocCamExtractedDocumentViewController *)self showViewControllerAtIndex:v3 + 1 animated:0];
  }

  return v3 < v6;
}

- (void)thumbnailContainerViewIncrementCurrentIndex:(id)a3
{
  v4 = [(ICDocCamExtractedDocumentViewController *)self presentationPageIndex];
  v9 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  v5 = [v9 docInfos];
  if (v4 < [v5 count] - 1)
  {
    v6 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
    v7 = [v6 docInfos];
    v8 = [v7 count];

    if (!v8)
    {
      return;
    }

    v9 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
    v5 = [MEMORY[0x277CCAA70] indexPathForItem:v4 + 1 inSection:0];
    [(ICDocCamExtractedDocumentViewController *)self collectionView:v9 didSelectItemAtIndexPath:v5];
  }
}

- (void)thumbnailContainerViewDecrementCurrentIndex:(id)a3
{
  v4 = [(ICDocCamExtractedDocumentViewController *)self presentationPageIndex];
  if (v4)
  {
    v5 = v4;
    v7 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
    v6 = [MEMORY[0x277CCAA70] indexPathForItem:v5 - 1 inSection:0];
    [(ICDocCamExtractedDocumentViewController *)self collectionView:v7 didSelectItemAtIndexPath:v6];
  }
}

- (unint64_t)thumbnailContainerViewNumberOfItems:(id)a3
{
  v3 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  v4 = [v3 docInfos];
  v5 = [v4 count];

  return v5;
}

- (void)thumbnailContainerView:(id)a3 moveItemFromIndex:(int64_t)a4 toIndex:(int64_t)a5
{
  if ([(ICDocCamExtractedDocumentViewController *)self thumbnailContainerViewSupportsReordering:a3])
  {
    v11 = [MEMORY[0x277CCAA70] indexPathForItem:a4 inSection:0];
    v8 = [MEMORY[0x277CCAA70] indexPathForItem:a5 inSection:0];
    v9 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
    [(ICDocCamExtractedDocumentViewController *)self collectionView:v9 moveItemAtIndexPath:v11 toIndexPath:v8];

    [(ICDocCamExtractedDocumentViewController *)self showViewControllerAtIndex:a5 animated:0];
    v10 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
    [v10 reloadData];
  }
}

- (BOOL)thumbnailContainerViewIsVisible:(id)a3
{
  v4 = [(ICDocCamExtractedDocumentViewController *)self view];
  v5 = [v4 window];
  v6 = [v5 windowScene];
  v7 = [v6 interfaceOrientation] - 3;

  v8 = [(ICDocCamExtractedDocumentViewController *)self traitCollection];
  v9 = [v8 horizontalSizeClass];

  return v7 < 0xFFFFFFFFFFFFFFFELL || v9 != 1;
}

- (BOOL)thumbnailContainerViewIsVisible
{
  v2 = self;
  v3 = [(ICDocCamExtractedDocumentViewController *)self thumbnailContainerView];
  LOBYTE(v2) = [(ICDocCamExtractedDocumentViewController *)v2 thumbnailContainerViewIsVisible:v3];

  return v2;
}

- (CGRect)zoomTargetForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(ICDocCamExtractedDocumentViewController *)self pageViewControllerContainerView];
  [v5 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [v4 item];
  [(ICDocCamExtractedDocumentViewController *)self imageSizeForDocumentAtIndex:v14];
  [ICDocCamUtilities aspectFillSize:"aspectFillSize:targetSize:" targetSize:?];
  [ICDocCamUtilities aspectFitSize:"aspectFitSize:targetSize:" targetSize:?];
  v16 = v15;
  v18 = v17;
  v19 = v7 + v11 * 0.5 - v15 * 0.5;
  v20 = v9 + v13 * 0.5 - v17 * 0.5;
  result.size.height = v18;
  result.size.width = v16;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGRect)imageRectWithZoomAndPanForIndexPath:(id)a3
{
  v4 = [(ICDocCamExtractedDocumentViewController *)self currentImageView];
  v5 = [(ICDocCamExtractedDocumentViewController *)self currentImageView];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(ICDocCamExtractedDocumentViewController *)self view];
  [v4 convertRect:v14 toView:{v7, v9, v11, v13}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = v16;
  v24 = v18;
  v25 = v20;
  v26 = v22;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (unint64_t)documentCount
{
  v2 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  v3 = [v2 docInfos];
  v4 = [v3 count];

  return v4;
}

- (id)indexPathForCurrentDocument
{
  v2 = MEMORY[0x277CCAA70];
  v3 = [(ICDocCamExtractedDocumentViewController *)self presentationPageIndex];

  return [v2 indexPathForItem:v3 inSection:0];
}

- (void)resetImageCentering
{
  v2 = [(ICDocCamExtractedDocumentViewController *)self currentPageContentViewController];
  [v2 resetImageCentering];
}

- (UIView)topToolbar
{
  WeakRetained = objc_loadWeakRetained(&self->_topToolbar);

  return WeakRetained;
}

- (UIToolbar)bottomToolbar
{
  WeakRetained = objc_loadWeakRetained(&self->_bottomToolbar);

  return WeakRetained;
}

- (UIView)pageViewControllerContainerView
{
  WeakRetained = objc_loadWeakRetained(&self->_pageViewControllerContainerView);

  return WeakRetained;
}

- (CGRect)menuControllerTargetRect
{
  x = self->_menuControllerTargetRect.origin.x;
  y = self->_menuControllerTargetRect.origin.y;
  width = self->_menuControllerTargetRect.size.width;
  height = self->_menuControllerTargetRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (ICDocCamExtractedDocumentControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIAlertController)editTitleAlert
{
  WeakRetained = objc_loadWeakRetained(&self->_editTitleAlert);

  return WeakRetained;
}

- (CGSize)previousViewSize
{
  width = self->_previousViewSize.width;
  height = self->_previousViewSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end