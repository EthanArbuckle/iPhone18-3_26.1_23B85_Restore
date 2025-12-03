@interface ICDocCamExtractedDocumentViewController
+ (BOOL)isLiquidGlassEnabledForEdit;
+ (CGRect)targetRectForOrientation:(int64_t)orientation window:(id)window;
- (BOOL)accessibilityScrollLeftPage;
- (BOOL)accessibilityScrollRightPage;
- (BOOL)cameraDisabled;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)currentImageHasMarkup;
- (BOOL)filterViewControllerApplyToAll:(signed __int16)all;
- (BOOL)filterViewControllerCanApplyToAll:(signed __int16)all;
- (BOOL)filterViewControllerDidSelectFilter:(signed __int16)filter;
- (BOOL)imageIsPortrait:(id)portrait;
- (BOOL)isPageViewControllerScrolled;
- (BOOL)prefersStatusBarHidden;
- (BOOL)shouldDisableActions;
- (BOOL)shouldDisableSharrow;
- (BOOL)thumbnailContainerViewIsVisible;
- (BOOL)thumbnailContainerViewIsVisible:(id)visible;
- (CGRect)imageRectWithZoomAndPanForIndexPath:(id)path;
- (CGRect)menuControllerTargetRect;
- (CGRect)targetViewRect;
- (CGRect)zoomTargetForIndexPath:(id)path;
- (CGSize)collectionView:(id)view imageSizeAtIndex:(int64_t)index;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (CGSize)frameSizeForImageSize:(CGSize)size;
- (CGSize)imageSizeForDocumentAtIndex:(int64_t)index;
- (CGSize)previousViewSize;
- (CIContext)sharedCoreImageContext;
- (DCScanDataDelegate)scanCollectionDataDelegate;
- (DCScanDataDelegate)selectedScanDataDelegate;
- (ICDocCamExtractedDocumentControllerDelegate)delegate;
- (ICDocCamExtractedDocumentViewController)initWithDelegate:(id)delegate documentInfoCollection:(id)collection imageCache:(id)cache currentIndex:(int64_t)index mode:(int)mode;
- (ICDocCamReorderingThumbnailCollectionViewLayout)thumbnailCollectionViewLayout;
- (UIAlertController)editTitleAlert;
- (UIImageView)currentImageView;
- (UIToolbar)bottomToolbar;
- (UIView)pageViewControllerContainerView;
- (UIView)topToolbar;
- (double)normalizedPageViewControllerScrollPosition;
- (double)thumbnailToolbarHeight;
- (id)_accessibilitySpeakThisElementsAndStrings;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)croppedAndFilteredmageForDocumentAtIndex:(int64_t)index;
- (id)croppedButNotFilteredImageForDocInfo:(id)info;
- (id)croppedButNotFilteredImageForDocumentAtIndex:(int64_t)index;
- (id)currentBackgroundColor;
- (id)currentDocument;
- (id)currentPageContentViewController;
- (id)imageForDocInfo:(id)info newFilter:(signed __int16)filter;
- (id)indexPathForCurrentDocument;
- (id)makeUIImageFromCIImage:(id)image;
- (id)orientationString:(int64_t)string;
- (id)pageViewController:(id)controller viewControllerAfterViewController:(id)viewController;
- (id)pageViewController:(id)controller viewControllerBeforeViewController:(id)viewController;
- (id)truncatedString:(id)string clipLength:(unint64_t)length;
- (id)undoManager;
- (id)viewControllerAtIndex:(unint64_t)index;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)orientationRotated90DegreesFromOrientation:(int64_t)orientation;
- (unint64_t)documentCount;
- (unint64_t)thumbnailContainerViewNumberOfItems:(id)items;
- (void)_pageViewControllerDidFinishTransitions:(id)transitions;
- (void)addImageAction:(id)action;
- (void)alertAndDiscardMarkup;
- (void)applyFilter:(signed __int16)filter;
- (void)changePage:(int64_t)page;
- (void)collectionNameTapped:(id)tapped;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)contentSizeCategoryDidChange:(id)change;
- (void)copy:(id)copy;
- (void)dealloc;
- (void)defaultsChanged;
- (void)deleteButtonAction:(id)action;
- (void)deleteCurrentPage;
- (void)didDismissMarkupViewController;
- (void)didUpdateDocumentImage:(id)image;
- (void)didUpdateDocumentInfoArrayNewCurrentDocument:(id)document;
- (void)didUpdateDocumentTitle:(id)title;
- (void)doneAction:(id)action;
- (void)handleAccessibilityLongPressOnCollectionTitle:(id)title;
- (void)hideBarsForZoomablePageContentViewController:(id)controller;
- (void)pageViewController:(id)controller didFinishAnimating:(BOOL)animating previousViewControllers:(id)controllers transitionCompleted:(BOOL)completed;
- (void)pageViewController:(id)controller willTransitionToViewControllers:(id)controllers;
- (void)pencilDownInZoomablePageContentViewController:(id)controller;
- (void)prepareForDismissal;
- (void)recreateThumbnailContainerWithWidth:(double)width leadingTrailingMargin:(double)margin;
- (void)recropButtonPressed:(id)pressed;
- (void)resetImageCentering;
- (void)respondToImageLongPressGesture:(id)gesture;
- (void)respondToThumbnailLongPressGesture:(id)gesture;
- (void)retakeAction:(id)action;
- (void)rotateAction:(id)action;
- (void)rotateCurrentImage;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)setCurrentThumbnailItem:(unint64_t)item animated:(BOOL)animated;
- (void)setImage:(id)image forCell:(id)cell useResizedImage:(BOOL)resizedImage;
- (void)setIsScrollingBetweenPages:(BOOL)pages;
- (void)setPresentationPageIndex:(int64_t)index;
- (void)setupAccessibilityInfo;
- (void)setupBottomToolbar;
- (void)setupGlurBar;
- (void)setupThumbnailViewController;
- (void)share:(id)share;
- (void)shareAction:(id)action;
- (void)showBarsForZoomablePageContentViewController:(id)controller;
- (void)showPrimaryControllerForNotes:(id)notes animated:(BOOL)animated;
- (void)showViewControllerAtIndex:(unint64_t)index animated:(BOOL)animated;
- (void)speakAccessibilityAnnouncementForMovingItemFromIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)speakAccessibilityAnnouncementForReorderIfNecessaryForProposedIndexPath:(id)path;
- (void)startMarkupViewController;
- (void)switchBarVisibilityForZoomablePageContentViewController:(id)controller;
- (void)thumbnailContainerView:(id)view moveItemFromIndex:(int64_t)index toIndex:(int64_t)toIndex;
- (void)thumbnailContainerViewDecrementCurrentIndex:(id)index;
- (void)thumbnailContainerViewIncrementCurrentIndex:(id)index;
- (void)traitCollectionDidChange:(id)change;
- (void)updateBottomToolbarButtonsForCurrentMode;
- (void)updateDocumentImage:(id)image;
- (void)updateFilterButtonItemAccessibilityInfo;
- (void)updateFilterButtonMenu;
- (void)updateForAccessibilityDarkerSystemColors;
- (void)updateImage:(id)image document:(id)document withFilterType:(signed __int16)type;
- (void)updateImageViewAccessibilityForPageContentViewController:(id)controller;
- (void)updateLayout;
- (void)updatePageIndicatorForPageIndex:(int64_t)index;
- (void)updatePageViewControllerConstraints:(BOOL)constraints animationBlock:(id)block completionBlock:(id)completionBlock;
- (void)updateTitleView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation ICDocCamExtractedDocumentViewController

- (CGSize)imageSizeForDocumentAtIndex:(int64_t)index
{
  documentInfoCollection = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  docInfos = [documentInfoCollection docInfos];
  v7 = [docInfos count];

  v8 = 0.0;
  v9 = 0.0;
  if (v7 > index)
  {
    documentInfoCollection2 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
    docInfos2 = [documentInfoCollection2 docInfos];
    v12 = [docInfos2 objectAtIndexedSubscript:index];

    croppedAndFilteredImageUUID = [v12 croppedAndFilteredImageUUID];

    if (croppedAndFilteredImageUUID)
    {
      imageCache = [(ICDocCamExtractedDocumentViewController *)self imageCache];
      croppedAndFilteredImageUUID2 = [v12 croppedAndFilteredImageUUID];
      [imageCache getImageSize:croppedAndFilteredImageUUID2];
      v8 = v16;
      v9 = v17;
    }

    else
    {
      delegate = [(ICDocCamExtractedDocumentViewController *)self delegate];
      v19 = objc_opt_respondsToSelector();

      if ((v19 & 1) == 0)
      {
LABEL_7:

        goto LABEL_8;
      }

      imageCache = [(ICDocCamExtractedDocumentViewController *)self delegate];
      croppedAndFilteredImageUUID2 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
      docInfos3 = [croppedAndFilteredImageUUID2 docInfos];
      v21 = [docInfos3 objectAtIndexedSubscript:index];
      [imageCache extractedDocumentControllerImageSizeForDocument:v21];
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

- (id)croppedAndFilteredmageForDocumentAtIndex:(int64_t)index
{
  documentInfoCollection = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  docInfos = [documentInfoCollection docInfos];
  v7 = [docInfos count];

  if (v7 <= index)
  {
    v14 = 0;
    goto LABEL_9;
  }

  documentInfoCollection2 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  docInfos2 = [documentInfoCollection2 docInfos];
  v10 = [docInfos2 objectAtIndexedSubscript:index];

  croppedAndFilteredImageUUID = [v10 croppedAndFilteredImageUUID];

  if (croppedAndFilteredImageUUID)
  {
    imageCache = [(ICDocCamExtractedDocumentViewController *)self imageCache];
    croppedAndFilteredImageUUID2 = [v10 croppedAndFilteredImageUUID];
    v14 = [imageCache getImage:croppedAndFilteredImageUUID2];
  }

  else
  {
    delegate = [(ICDocCamExtractedDocumentViewController *)self delegate];
    v16 = objc_opt_respondsToSelector();

    if ((v16 & 1) == 0)
    {
      v14 = 0;
      goto LABEL_8;
    }

    imageCache = [(ICDocCamExtractedDocumentViewController *)self delegate];
    v14 = [imageCache extractedDocumentControllerImageForDocument:v10];
  }

LABEL_8:
LABEL_9:

  return v14;
}

- (id)croppedButNotFilteredImageForDocumentAtIndex:(int64_t)index
{
  documentInfoCollection = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  docInfos = [documentInfoCollection docInfos];
  if ([docInfos count] <= index)
  {
    v10 = 0;
  }

  else
  {
    documentInfoCollection2 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
    docInfos2 = [documentInfoCollection2 docInfos];
    v9 = [docInfos2 objectAtIndexedSubscript:index];
    v10 = [(ICDocCamExtractedDocumentViewController *)self croppedButNotFilteredImageForDocInfo:v9];
  }

  return v10;
}

- (id)croppedButNotFilteredImageForDocInfo:(id)info
{
  infoCopy = info;
  croppedButNotFilteredImageUUID = [infoCopy croppedButNotFilteredImageUUID];

  if (!croppedButNotFilteredImageUUID || (-[ICDocCamExtractedDocumentViewController imageCache](self, "imageCache"), v6 = objc_claimAutoreleasedReturnValue(), [infoCopy croppedButNotFilteredImageUUID], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "getImage:", v7), fullImageUUID = objc_claimAutoreleasedReturnValue(), v7, v6, !fullImageUUID))
  {
    delegate = [(ICDocCamExtractedDocumentViewController *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if ((v10 & 1) == 0 || (-[ICDocCamExtractedDocumentViewController delegate](self, "delegate"), v11 = objc_claimAutoreleasedReturnValue(), [v11 extractedDocumentControllerUncroppedImageForDocument:infoCopy], fullImageUUID = objc_claimAutoreleasedReturnValue(), v11, !fullImageUUID))
    {
      fullImageUUID = [infoCopy fullImageUUID];

      if (fullImageUUID)
      {
        imageCache = [(ICDocCamExtractedDocumentViewController *)self imageCache];
        fullImageUUID2 = [infoCopy fullImageUUID];
        fullImageUUID = [imageCache getImage:fullImageUUID2];
      }
    }

    imageQuad = [infoCopy imageQuad];
    v15 = imageQuad;
    if (fullImageUUID && imageQuad)
    {
      v16 = [ICDocCamImageFilters perspectiveCorrectedImageFromImage:fullImageUUID normalizedImageQuad:imageQuad];

      fullImageUUID = v16;
    }

    if (fullImageUUID)
    {
      delegate2 = [(ICDocCamExtractedDocumentViewController *)self delegate];
      v18 = objc_opt_respondsToSelector();

      if ((v18 & 1) == 0)
      {
        imageCache2 = [(ICDocCamExtractedDocumentViewController *)self imageCache];
        metaData = [infoCopy metaData];
        v21 = [imageCache2 setImage:fullImageUUID metaData:metaData];
        [infoCopy setCroppedButNotFilteredImageUUID:v21];
      }
    }
  }

  return fullImageUUID;
}

- (CIContext)sharedCoreImageContext
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  sharedCoreImageContext = selfCopy->_sharedCoreImageContext;
  if (!sharedCoreImageContext)
  {
    v4 = +[ICDocCamImageFilters sharedCoreImageContext];
    v5 = selfCopy->_sharedCoreImageContext;
    selfCopy->_sharedCoreImageContext = v4;

    sharedCoreImageContext = selfCopy->_sharedCoreImageContext;
  }

  v6 = sharedCoreImageContext;
  objc_sync_exit(selfCopy);

  return v6;
}

+ (CGRect)targetRectForOrientation:(int64_t)orientation window:(id)window
{
  windowCopy = window;
  [ICDocCamPageContentViewController leadingTrailingOffset:orientation];
  v7 = v6;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v10 = v9;
  v12 = v11;

  v13 = 37.0;
  if ((DCDebugInterfaceEnabled() & 1) != 0 || ([MEMORY[0x277D75418] currentDevice], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "userInterfaceIdiom"), v14, v15 == 1))
  {
    *&v16 = 44.0;
  }

  else
  {
    if ((orientation - 1) < 2 || (orientation - 3) <= 1 && ![windowCopy dc_requiresCompactLandscapeIcons])
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

- (ICDocCamExtractedDocumentViewController)initWithDelegate:(id)delegate documentInfoCollection:(id)collection imageCache:(id)cache currentIndex:(int64_t)index mode:(int)mode
{
  delegateCopy = delegate;
  collectionCopy = collection;
  cacheCopy = cache;
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18.receiver = self;
  v18.super_class = ICDocCamExtractedDocumentViewController;
  v16 = [(ICDocCamExtractedDocumentViewController *)&v18 initWithNibName:@"ICDocCamExtractedDocumentViewController" bundle:v15];

  if (v16)
  {
    objc_storeWeak(&v16->_delegate, delegateCopy);
    objc_storeStrong(&v16->_documentInfoCollection, collection);
    v16->_presentationPageIndex = index;
    objc_storeStrong(&v16->_imageCache, cache);
    v16->_mode = mode;
  }

  [(ICDocCamExtractedDocumentViewController *)v16 updatePageIndicatorForPageIndex:[(ICDocCamExtractedDocumentViewController *)v16 presentationPageIndex]];

  return v16;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICDocCamExtractedDocumentViewController;
  [(ICDocCamExtractedDocumentViewController *)&v4 dealloc];
}

- (id)undoManager
{
  delegate = [(ICDocCamExtractedDocumentViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(ICDocCamExtractedDocumentViewController *)self delegate];
    extractedDocumentControllerUndoManager = [delegate2 extractedDocumentControllerUndoManager];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = ICDocCamExtractedDocumentViewController;
    extractedDocumentControllerUndoManager = [(ICDocCamExtractedDocumentViewController *)&v8 undoManager];
  }

  return extractedDocumentControllerUndoManager;
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
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"com.apple.notes.cameraDisabled"];

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
    doneButtonItem = [(ICDocCamExtractedDocumentViewController *)self doneButtonItem];
    action = [doneButtonItem action];

    v7 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:101 target:self action:action];
    [(ICDocCamExtractedDocumentViewController *)self setDoneButtonItem:v7];
  }

  else
  {
    navigationController = [(ICDocCamExtractedDocumentViewController *)self navigationController];
    navigationBar = [navigationController navigationBar];
    [navigationBar setBarStyle:0];

    dc_barColor = [MEMORY[0x277D75348] dc_barColor];
    navigationController2 = [(ICDocCamExtractedDocumentViewController *)self navigationController];
    navigationBar2 = [navigationController2 navigationBar];
    [navigationBar2 setBarTintColor:dc_barColor];

    dc_barColor2 = [MEMORY[0x277D75348] dc_barColor];
    bottomToolbar = [(ICDocCamExtractedDocumentViewController *)self bottomToolbar];
    [bottomToolbar setBarTintColor:dc_barColor2];

    [(ICDocCamExtractedDocumentViewController *)self setNeedsStatusBarAppearanceUpdate];
  }

  dCExtractedDocumentViewControllerBackgroundColor = [MEMORY[0x277D75348] DCExtractedDocumentViewControllerBackgroundColor];
  view = [(ICDocCamExtractedDocumentViewController *)self view];
  [view setBackgroundColor:dCExtractedDocumentViewControllerBackgroundColor];

  [(ICDocCamExtractedDocumentViewController *)self setupBottomToolbar];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_defaultsChanged name:*MEMORY[0x277CCA858] object:0];

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

  pageViewController = [(ICDocCamExtractedDocumentViewController *)self pageViewController];
  [pageViewController setDataSource:self];

  pageViewController2 = [(ICDocCamExtractedDocumentViewController *)self pageViewController];
  [pageViewController2 setDelegate:self];

  pageViewController3 = [(ICDocCamExtractedDocumentViewController *)self pageViewController];
  [(ICDocCamExtractedDocumentViewController *)self addChildViewController:pageViewController3];

  pageViewControllerContainerView = [(ICDocCamExtractedDocumentViewController *)self pageViewControllerContainerView];
  pageViewController4 = [(ICDocCamExtractedDocumentViewController *)self pageViewController];
  view2 = [pageViewController4 view];
  [pageViewControllerContainerView addSubview:view2];

  pageViewController5 = [(ICDocCamExtractedDocumentViewController *)self pageViewController];
  [pageViewController5 didMoveToParentViewController:self];

  currentBackgroundColor = [(ICDocCamExtractedDocumentViewController *)self currentBackgroundColor];
  pageViewControllerContainerView2 = [(ICDocCamExtractedDocumentViewController *)self pageViewControllerContainerView];
  [pageViewControllerContainerView2 setBackgroundColor:currentBackgroundColor];

  v32 = MEMORY[0x277CCAAD0];
  v88 = @"childView";
  pageViewController6 = [(ICDocCamExtractedDocumentViewController *)self pageViewController];
  view3 = [pageViewController6 view];
  v89 = view3;
  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
  v36 = [v32 constraintsWithVisualFormat:@"H:|[childView]|" options:0 metrics:0 views:v35];

  v37 = MEMORY[0x277CCAAD0];
  v86 = @"childView";
  pageViewController7 = [(ICDocCamExtractedDocumentViewController *)self pageViewController];
  view4 = [pageViewController7 view];
  v87 = view4;
  v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
  v41 = [v37 constraintsWithVisualFormat:@"V:|[childView]|" options:0 metrics:0 views:v40];

  [MEMORY[0x277CCAAD0] activateConstraints:v36];
  [MEMORY[0x277CCAAD0] activateConstraints:v41];
  pageViewController8 = [(ICDocCamExtractedDocumentViewController *)self pageViewController];
  view5 = [pageViewController8 view];
  [view5 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(ICDocCamExtractedDocumentViewController *)self showViewControllerAtIndex:[(ICDocCamExtractedDocumentViewController *)self presentationPageIndex] animated:0];
  thumbnailCollectionView = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
  [thumbnailCollectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"ICDocCamThumbnailCellKind"];

  thumbnailCollectionView2 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
  [thumbnailCollectionView2 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"ICDocCamExtractedDocumentThumbnailCell"];

  v46 = *MEMORY[0x277D76EB8];
  thumbnailCollectionView3 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
  [thumbnailCollectionView3 setDecelerationRate:v46];

  collectionTitleButton = [(ICDocCamExtractedDocumentViewController *)self collectionTitleButton];
  [collectionTitleButton setTranslatesAutoresizingMaskIntoConstraints:1];

  collectionTitleButton2 = [(ICDocCamExtractedDocumentViewController *)self collectionTitleButton];
  LODWORD(v50) = 1132068864;
  [collectionTitleButton2 setContentCompressionResistancePriority:0 forAxis:v50];

  pageIndexLabel = [(ICDocCamExtractedDocumentViewController *)self pageIndexLabel];
  [pageIndexLabel setTranslatesAutoresizingMaskIntoConstraints:1];

  pageIndexLabel2 = [(ICDocCamExtractedDocumentViewController *)self pageIndexLabel];
  [pageIndexLabel2 setTextAlignment:1];

  v53 = [[ICDocCamReorderingThumbnailCollectionViewLayout alloc] initWithDelegate:self];
  thumbnailCollectionView4 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
  [thumbnailCollectionView4 setCollectionViewLayout:v53];

  [(ICDocCamExtractedDocumentViewController *)self setCurrentThumbnailItem:[(ICDocCamExtractedDocumentViewController *)self presentationPageIndex] animated:0];
  thumbnailLongPressGestureRecognizer = [(ICDocCamExtractedDocumentViewController *)self thumbnailLongPressGestureRecognizer];

  if (!thumbnailLongPressGestureRecognizer)
  {
    v56 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel_respondToThumbnailLongPressGesture_];
    thumbnailCollectionView5 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
    [thumbnailCollectionView5 addGestureRecognizer:v56];

    [(ICDocCamExtractedDocumentViewController *)self setThumbnailLongPressGestureRecognizer:v56];
  }

  imageLongPressGestureRecognizer = [(ICDocCamExtractedDocumentViewController *)self imageLongPressGestureRecognizer];

  if (!imageLongPressGestureRecognizer)
  {
    v59 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel_respondToImageLongPressGesture_];
    view6 = [(ICDocCamExtractedDocumentViewController *)self view];
    [view6 addGestureRecognizer:v59];

    [(ICDocCamExtractedDocumentViewController *)self setImageLongPressGestureRecognizer:v59];
    imageLongPressGestureRecognizer2 = [(ICDocCamExtractedDocumentViewController *)self imageLongPressGestureRecognizer];
    [imageLongPressGestureRecognizer2 setDelegate:self];
  }

  axHUDLongPressGestureRecognizer = [(ICDocCamExtractedDocumentViewController *)self axHUDLongPressGestureRecognizer];

  if (!axHUDLongPressGestureRecognizer)
  {
    v63 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel_handleAccessibilityLongPressOnCollectionTitle_];
    [(ICDocCamExtractedDocumentViewController *)self setAxHUDLongPressGestureRecognizer:v63];

    axHUDLongPressGestureRecognizer2 = [(ICDocCamExtractedDocumentViewController *)self axHUDLongPressGestureRecognizer];
    [axHUDLongPressGestureRecognizer2 setDelegate:self];

    v65 = DCAccessibilityAccessibilityLargerTextSizesEnabled();
    axHUDLongPressGestureRecognizer3 = [(ICDocCamExtractedDocumentViewController *)self axHUDLongPressGestureRecognizer];
    [axHUDLongPressGestureRecognizer3 setEnabled:v65];

    collectionTitleButton3 = [(ICDocCamExtractedDocumentViewController *)self collectionTitleButton];
    axHUDLongPressGestureRecognizer4 = [(ICDocCamExtractedDocumentViewController *)self axHUDLongPressGestureRecognizer];
    [collectionTitleButton3 addGestureRecognizer:axHUDLongPressGestureRecognizer4];
  }

  axHUDLongPressGestureRecognizer5 = [(ICDocCamExtractedDocumentViewController *)self axHUDLongPressGestureRecognizer];
  imageLongPressGestureRecognizer3 = [(ICDocCamExtractedDocumentViewController *)self imageLongPressGestureRecognizer];
  [axHUDLongPressGestureRecognizer5 requireGestureRecognizerToFail:imageLongPressGestureRecognizer3];

  imageLongPressGestureRecognizer4 = [(ICDocCamExtractedDocumentViewController *)self imageLongPressGestureRecognizer];
  thumbnailLongPressGestureRecognizer2 = [(ICDocCamExtractedDocumentViewController *)self thumbnailLongPressGestureRecognizer];
  [imageLongPressGestureRecognizer4 requireGestureRecognizerToFail:thumbnailLongPressGestureRecognizer2];

  pageViewController9 = [(ICDocCamExtractedDocumentViewController *)self pageViewController];
  view7 = [pageViewController9 view];
  subviews = [view7 subviews];
  v76 = [subviews dc_objectPassingTest:&__block_literal_global];
  [(ICDocCamExtractedDocumentViewController *)self setPageViewControllerScrollView:v76];

  pageViewControllerScrollView = [(ICDocCamExtractedDocumentViewController *)self pageViewControllerScrollView];
  [pageViewControllerScrollView setContentInsetAdjustmentBehavior:2];

  pageViewControllerScrollView2 = [(ICDocCamExtractedDocumentViewController *)self pageViewControllerScrollView];
  [pageViewControllerScrollView2 setDelegate:self];

  [(ICDocCamExtractedDocumentViewController *)self setupAccessibilityInfo];
  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_updateForAccessibilityDarkerSystemColors name:*MEMORY[0x277D76460] object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x277D76810] object:0];

  collectionTitleButton4 = [(ICDocCamExtractedDocumentViewController *)self collectionTitleButton];
  v82 = objc_alloc_init(MEMORY[0x277D75870]);
  [collectionTitleButton4 addInteraction:v82];

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

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v74[2] = *MEMORY[0x277D85DE8];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__ICDocCamExtractedDocumentViewController_viewWillAppear___block_invoke;
  block[3] = &unk_278F92C70;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  delegate = [(ICDocCamExtractedDocumentViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    collectionTitleButton = [(ICDocCamExtractedDocumentViewController *)self collectionTitleButton];
    delegate2 = [(ICDocCamExtractedDocumentViewController *)self delegate];
    extractedDocumentControllerTitle = [delegate2 extractedDocumentControllerTitle];
    [collectionTitleButton setTitle:extractedDocumentControllerTitle forState:0];
  }

  navigationController = [(ICDocCamExtractedDocumentViewController *)self navigationController];
  [navigationController setNavigationBarHidden:0 animated:1];

  navigationController2 = [(ICDocCamExtractedDocumentViewController *)self navigationController];
  [navigationController2 setToolbarHidden:1];

  navigationController3 = [(ICDocCamExtractedDocumentViewController *)self navigationController];
  navigationBar = [navigationController3 navigationBar];
  [navigationBar setOpaque:1];

  navigationController4 = [(ICDocCamExtractedDocumentViewController *)self navigationController];
  navigationBar2 = [navigationController4 navigationBar];
  [navigationBar2 setTranslucent:0];

  bottomToolbar = [(ICDocCamExtractedDocumentViewController *)self bottomToolbar];
  [bottomToolbar setOpaque:1];

  bottomToolbar2 = [(ICDocCamExtractedDocumentViewController *)self bottomToolbar];
  [bottomToolbar2 setTranslucent:0];

  titleViewWrapper = [(ICDocCamExtractedDocumentViewController *)self titleViewWrapper];

  if (!titleViewWrapper)
  {
    v19 = objc_alloc_init(MEMORY[0x277D75D18]);
    [(ICDocCamExtractedDocumentViewController *)self setTitleViewWrapper:v19];

    clearColor = [MEMORY[0x277D75348] clearColor];
    titleViewWrapper2 = [(ICDocCamExtractedDocumentViewController *)self titleViewWrapper];
    [titleViewWrapper2 setBackgroundColor:clearColor];

    titleViewWrapper3 = [(ICDocCamExtractedDocumentViewController *)self titleViewWrapper];
    [titleViewWrapper3 setTranslatesAutoresizingMaskIntoConstraints:0];

    titleViewWrapper4 = [(ICDocCamExtractedDocumentViewController *)self titleViewWrapper];
    [titleViewWrapper4 setUserInteractionEnabled:1];

    titleViewWrapper5 = [(ICDocCamExtractedDocumentViewController *)self titleViewWrapper];
    LODWORD(v25) = 1132068864;
    [titleViewWrapper5 setContentCompressionResistancePriority:0 forAxis:v25];

    v26 = MEMORY[0x277CCAAD0];
    titleViewWrapper6 = [(ICDocCamExtractedDocumentViewController *)self titleViewWrapper];
    v28 = [v26 constraintWithItem:titleViewWrapper6 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:100.0];
    [(ICDocCamExtractedDocumentViewController *)self setTitleViewWrapperWidthConstraint:v28];

    titleViewWrapperWidthConstraint = [(ICDocCamExtractedDocumentViewController *)self titleViewWrapperWidthConstraint];
    LODWORD(v30) = 1140457472;
    [titleViewWrapperWidthConstraint setPriority:v30];

    v31 = MEMORY[0x277CCAAD0];
    titleViewWrapper7 = [(ICDocCamExtractedDocumentViewController *)self titleViewWrapper];
    v33 = [v31 constraintWithItem:titleViewWrapper7 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:44.0];
    [(ICDocCamExtractedDocumentViewController *)self setTitleViewWrapperHeightConstraint:v33];

    v34 = MEMORY[0x277CCAAD0];
    titleViewWrapperWidthConstraint2 = [(ICDocCamExtractedDocumentViewController *)self titleViewWrapperWidthConstraint];
    v74[0] = titleViewWrapperWidthConstraint2;
    titleViewWrapperHeightConstraint = [(ICDocCamExtractedDocumentViewController *)self titleViewWrapperHeightConstraint];
    v74[1] = titleViewWrapperHeightConstraint;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:2];
    [v34 activateConstraints:v37];

    v38 = objc_alloc_init(MEMORY[0x277D75A68]);
    [(ICDocCamExtractedDocumentViewController *)self setTitleView:v38];

    titleView = [(ICDocCamExtractedDocumentViewController *)self titleView];
    LODWORD(v40) = 1132068864;
    [titleView setContentCompressionResistancePriority:0 forAxis:v40];

    titleView2 = [(ICDocCamExtractedDocumentViewController *)self titleView];
    [titleView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    titleViewWrapper8 = [(ICDocCamExtractedDocumentViewController *)self titleViewWrapper];
    titleView3 = [(ICDocCamExtractedDocumentViewController *)self titleView];
    [titleViewWrapper8 addSubview:titleView3];

    titleView4 = [(ICDocCamExtractedDocumentViewController *)self titleView];
    leadingAnchor = [titleView4 leadingAnchor];
    titleViewWrapper9 = [(ICDocCamExtractedDocumentViewController *)self titleViewWrapper];
    leadingAnchor2 = [titleViewWrapper9 leadingAnchor];
    v48 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];

    titleView5 = [(ICDocCamExtractedDocumentViewController *)self titleView];
    trailingAnchor = [titleView5 trailingAnchor];
    titleViewWrapper10 = [(ICDocCamExtractedDocumentViewController *)self titleViewWrapper];
    trailingAnchor2 = [titleViewWrapper10 trailingAnchor];
    v53 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:0.0];

    titleView6 = [(ICDocCamExtractedDocumentViewController *)self titleView];
    bottomAnchor = [titleView6 bottomAnchor];
    titleViewWrapper11 = [(ICDocCamExtractedDocumentViewController *)self titleViewWrapper];
    bottomAnchor2 = [titleViewWrapper11 bottomAnchor];
    v58 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];

    titleView7 = [(ICDocCamExtractedDocumentViewController *)self titleView];
    topAnchor = [titleView7 topAnchor];
    titleViewWrapper12 = [(ICDocCamExtractedDocumentViewController *)self titleViewWrapper];
    topAnchor2 = [titleViewWrapper12 topAnchor];
    v63 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];

    v64 = MEMORY[0x277CCAAD0];
    v73[0] = v48;
    v73[1] = v53;
    v73[2] = v58;
    v73[3] = v63;
    v65 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:4];
    [v64 activateConstraints:v65];

    titleViewWrapper13 = [(ICDocCamExtractedDocumentViewController *)self titleViewWrapper];
    navigationItem = [(ICDocCamExtractedDocumentViewController *)self navigationItem];
    [navigationItem setTitleView:titleViewWrapper13];
  }

  currentPageContentViewController = [(ICDocCamExtractedDocumentViewController *)self currentPageContentViewController];
  [(ICDocCamExtractedDocumentViewController *)self showBarsForZoomablePageContentViewController:currentPageContentViewController];

  navigationController5 = [(ICDocCamExtractedDocumentViewController *)self navigationController];
  navigationBar3 = [navigationController5 navigationBar];
  [navigationBar3 setNeedsLayout];

  v71.receiver = self;
  v71.super_class = ICDocCamExtractedDocumentViewController;
  [(ICDocCamExtractedDocumentViewController *)&v71 viewWillAppear:appearCopy];
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
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    bottomToolbar = [(ICDocCamExtractedDocumentViewController *)self bottomToolbar];
    [bottomToolbar invalidateIntrinsicContentSize];

    bottomToolbar2 = [(ICDocCamExtractedDocumentViewController *)self bottomToolbar];
    [bottomToolbar2 sizeToFit];
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
  view = [(ICDocCamExtractedDocumentViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;

  [(ICDocCamExtractedDocumentViewController *)self previousViewSize];
  if (v5 != v9 || v7 != v8)
  {
    [(ICDocCamExtractedDocumentViewController *)self setPreviousViewSize:v5, v7];
    [(ICDocCamExtractedDocumentViewController *)self updateLayout];
    [(ICDocCamExtractedDocumentViewController *)self updatePageIndicatorForPageIndex:[(ICDocCamExtractedDocumentViewController *)self presentationPageIndex]];
    thumbnailCollectionViewLayout = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionViewLayout];
    [thumbnailCollectionViewLayout invalidateLayout];

    thumbnailCollectionView = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
    [thumbnailCollectionView layoutIfNeeded];
  }

  presentationPageIndex = [(ICDocCamExtractedDocumentViewController *)self presentationPageIndex];
  documentInfoCollection = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  docInfos = [documentInfoCollection docInfos];
  v16 = [docInfos count];

  if (presentationPageIndex < v16)
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

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = ICDocCamExtractedDocumentViewController;
  [(ICDocCamExtractedDocumentViewController *)&v4 viewDidAppear:appear];
  [(ICDocCamExtractedDocumentViewController *)self becomeFirstResponder];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(ICDocCamExtractedDocumentViewController *)self setBarsShouldBeHidden:1];
  v5 = +[DCImageAnalyzerManager sharedInstance];
  [v5 cleanup];

  v6.receiver = self;
  v6.super_class = ICDocCamExtractedDocumentViewController;
  [(ICDocCamExtractedDocumentViewController *)&v6 viewDidDisappear:disappearCopy];
}

- (BOOL)prefersStatusBarHidden
{
  if ([(ICDocCamExtractedDocumentViewController *)self barsShouldBeHidden])
  {
    return 1;
  }

  view = [(ICDocCamExtractedDocumentViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  interfaceOrientation = [windowScene interfaceOrientation];

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice userInterfaceIdiom])
  {
    v9 = 1;
  }

  else
  {
    v9 = (interfaceOrientation - 3) >= 2;
  }

  v3 = !v9;

  return v3;
}

- (void)contentSizeCategoryDidChange:(id)change
{
  v4 = DCAccessibilityAccessibilityLargerTextSizesEnabled();
  axHUDLongPressGestureRecognizer = [(ICDocCamExtractedDocumentViewController *)self axHUDLongPressGestureRecognizer];
  [axHUDLongPressGestureRecognizer setEnabled:v4];
}

- (void)prepareForDismissal
{
  presentedViewController = [(ICDocCamExtractedDocumentViewController *)self presentedViewController];
  if (presentedViewController)
  {
    v3 = presentedViewController;
    if (objc_opt_respondsToSelector())
    {
      [v3 prepareForDismissal];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = ICDocCamExtractedDocumentViewController;
  [(ICDocCamExtractedDocumentViewController *)&v7 traitCollectionDidChange:change];
  if (([objc_opt_class() isLiquidGlassEnabledForEdit] & 1) == 0)
  {
    dc_barColor = [MEMORY[0x277D75348] dc_barColor];
    navigationController = [(ICDocCamExtractedDocumentViewController *)self navigationController];
    navigationBar = [navigationController navigationBar];
    [navigationBar setBarTintColor:dc_barColor];
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
    mode = [(ICDocCamExtractedDocumentViewController *)self mode];
    view = [(ICDocCamExtractedDocumentViewController *)self view];
    [view bounds];
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

    if (mode == 1)
    {
      doneButtonItem = [(ICDocCamExtractedDocumentViewController *)self doneButtonItem];
      v44 = doneButtonItem;
      actionButtonItem = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
      navigationItem = [(ICDocCamExtractedDocumentViewController *)self navigationItem];
      [navigationItem setLeftBarButtonItems:actionButtonItem];

      shouldDisableSharrow = [(ICDocCamExtractedDocumentViewController *)self shouldDisableSharrow];
      if (shouldDisableSharrow)
      {
        v13 = MEMORY[0x277CBEBF8];
      }

      else
      {
        actionButtonItem = [(ICDocCamExtractedDocumentViewController *)self actionButtonItem];
        v43 = actionButtonItem;
        v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
      }

      navigationItem2 = [(ICDocCamExtractedDocumentViewController *)self navigationItem];
      [navigationItem2 setRightBarButtonItems:v13];

      if (!shouldDisableSharrow)
      {
      }

      [(ICDocCamExtractedDocumentViewController *)self recreateThumbnailContainerWithWidth:v6 leadingTrailingMargin:v8];
      v26 = MEMORY[0x277CCAAD0];
      v41 = @"childView";
      thumbnailContainerView = [(ICDocCamExtractedDocumentViewController *)self thumbnailContainerView];
      v42 = thumbnailContainerView;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v29 = [v26 constraintsWithVisualFormat:@"H:|[childView]|" options:0 metrics:0 views:v28];

      v30 = MEMORY[0x277CCAAD0];
      v39 = @"childView";
      thumbnailContainerView2 = [(ICDocCamExtractedDocumentViewController *)self thumbnailContainerView];
      v40 = thumbnailContainerView2;
      v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      v33 = [v30 constraintsWithVisualFormat:@"V:|[childView]|" options:0 metrics:0 views:v32];

      [MEMORY[0x277CCAAD0] activateConstraints:v29];
      [MEMORY[0x277CCAAD0] activateConstraints:v33];
      [(ICDocCamExtractedDocumentViewController *)self updateTitleView];
    }

    else
    {
      [(ICDocCamExtractedDocumentViewController *)self recreateThumbnailContainerWithWidth:v6 leadingTrailingMargin:v8];
      doneButtonItem2 = [(ICDocCamExtractedDocumentViewController *)self doneButtonItem];
      v38 = doneButtonItem2;
      actionButtonItem2 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
      navigationItem3 = [(ICDocCamExtractedDocumentViewController *)self navigationItem];
      [navigationItem3 setLeftBarButtonItems:actionButtonItem2];

      shouldDisableSharrow2 = [(ICDocCamExtractedDocumentViewController *)self shouldDisableSharrow];
      if (shouldDisableSharrow2)
      {
        v24 = MEMORY[0x277CBEBF8];
      }

      else
      {
        actionButtonItem2 = [(ICDocCamExtractedDocumentViewController *)self actionButtonItem];
        v37 = actionButtonItem2;
        v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
      }

      navigationItem4 = [(ICDocCamExtractedDocumentViewController *)self navigationItem];
      [navigationItem4 setRightBarButtonItems:v24];

      if (!shouldDisableSharrow2)
      {
      }
    }
  }

  else
  {
    if (!v35)
    {
      doneButtonItem3 = [(ICDocCamExtractedDocumentViewController *)self doneButtonItem];
      v46[0] = doneButtonItem3;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:1];
      navigationItem5 = [(ICDocCamExtractedDocumentViewController *)self navigationItem];
      [navigationItem5 setLeftBarButtonItems:v15];

      retakeButtonItem = [(ICDocCamExtractedDocumentViewController *)self retakeButtonItem];
      v45 = retakeButtonItem;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
      navigationItem6 = [(ICDocCamExtractedDocumentViewController *)self navigationItem];
      [navigationItem6 setRightBarButtonItems:v18];
    }

    [(ICDocCamExtractedDocumentViewController *)self updateTitleView];
  }

  [(ICDocCamExtractedDocumentViewController *)self updateBottomToolbarButtonsForCurrentMode];
}

- (void)updateTitleView
{
  v109 = *MEMORY[0x277D85DE8];
  titleViewWrapper = [(ICDocCamExtractedDocumentViewController *)self titleViewWrapper];

  if (!titleViewWrapper)
  {
    return;
  }

  [(ICDocCamExtractedDocumentViewController *)self updateForAccessibilityDarkerSystemColors];
  titleView = [(ICDocCamExtractedDocumentViewController *)self titleView];
  [titleView removeFromSuperview];

  titleView2 = [(ICDocCamExtractedDocumentViewController *)self titleView];
  arrangedSubviews = [titleView2 arrangedSubviews];

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v7 = arrangedSubviews;
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
        titleView3 = [(ICDocCamExtractedDocumentViewController *)self titleView];
        [titleView3 removeArrangedSubview:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v103 objects:v108 count:16];
    }

    while (v9);
  }

  documentCount = [(ICDocCamExtractedDocumentViewController *)self documentCount];
  mode = [(ICDocCamExtractedDocumentViewController *)self mode];
  if (!mode)
  {
    if (documentCount < 2)
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
      view = [(ICDocCamExtractedDocumentViewController *)self view];
      window = [view window];
      windowScene = [window windowScene];
      interfaceOrientation = [windowScene interfaceOrientation];

      v42 = MEMORY[0x277D74300];
      if ((interfaceOrientation - 1) > 1)
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
    pageIndexLabel = [(ICDocCamExtractedDocumentViewController *)self pageIndexLabel];
    [pageIndexLabel setFont:v45];

    v29 = 1;
    v38 = 0.0;
LABEL_23:
    pageIndexLabel2 = [(ICDocCamExtractedDocumentViewController *)self pageIndexLabel];
    [pageIndexLabel2 sizeToFit];

    pageIndexLabel3 = [(ICDocCamExtractedDocumentViewController *)self pageIndexLabel];
    [pageIndexLabel3 size];
    v39 = v49;

    goto LABEL_25;
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom || (-[ICDocCamExtractedDocumentViewController view](self, "view"), v18 = objc_claimAutoreleasedReturnValue(), [v18 window], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "windowScene"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "interfaceOrientation"), v20, v19, v18, (v21 - 3) > 1))
  {
    v25 = MEMORY[0x277D74300];
    v30 = *MEMORY[0x277D74410];
    v31 = 16.0;
  }

  else
  {
    view2 = [(ICDocCamExtractedDocumentViewController *)self view];
    window2 = [view2 window];
    dc_requiresCompactLandscapeIcons = [window2 dc_requiresCompactLandscapeIcons];

    v25 = MEMORY[0x277D74300];
    v26 = *MEMORY[0x277D74410];
    if (dc_requiresCompactLandscapeIcons)
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
  pageIndexLabel4 = [(ICDocCamExtractedDocumentViewController *)self pageIndexLabel];
  [pageIndexLabel4 setFont:v28];

  collectionTitleButton = [(ICDocCamExtractedDocumentViewController *)self collectionTitleButton];
  titleLabel = [collectionTitleButton titleLabel];
  [titleLabel setFont:v27];

  collectionTitleButton2 = [(ICDocCamExtractedDocumentViewController *)self collectionTitleButton];
  [collectionTitleButton2 sizeToFit];

  collectionTitleButton3 = [(ICDocCamExtractedDocumentViewController *)self collectionTitleButton];
  [collectionTitleButton3 size];
  v38 = v37;

  v39 = 0.0;
  if (documentCount > 1)
  {
    goto LABEL_23;
  }

LABEL_25:
  titleView4 = [(ICDocCamExtractedDocumentViewController *)self titleView];
  [titleView4 setDistribution:0];

  titleView5 = [(ICDocCamExtractedDocumentViewController *)self titleView];
  v52 = titleView5;
  if (v29)
  {
    [titleView5 setAxis:1];

    titleView6 = [(ICDocCamExtractedDocumentViewController *)self titleView];
    [titleView6 setDistribution:1];

    titleView7 = [(ICDocCamExtractedDocumentViewController *)self titleView];
    [titleView7 setSpacing:-16.0];

    if (mode)
    {
      titleView8 = [(ICDocCamExtractedDocumentViewController *)self titleView];
      collectionTitleButton4 = [(ICDocCamExtractedDocumentViewController *)self collectionTitleButton];
      [titleView8 addArrangedSubview:collectionTitleButton4];
    }

    if (documentCount >= 2)
    {
      titleView9 = [(ICDocCamExtractedDocumentViewController *)self titleView];
      pageIndexLabel5 = [(ICDocCamExtractedDocumentViewController *)self pageIndexLabel];
      [titleView9 addArrangedSubview:pageIndexLabel5];

      titleView10 = [(ICDocCamExtractedDocumentViewController *)self titleView];
      [titleView10 setSpacing:-6.0];
    }

    goto LABEL_41;
  }

  [titleView5 setAxis:0];

  titleView11 = [(ICDocCamExtractedDocumentViewController *)self titleView];
  [titleView11 setSpacing:4.0];

  if ([MEMORY[0x277D74248] dc_isRTL])
  {
    if (documentCount >= 2)
    {
      titleView12 = [(ICDocCamExtractedDocumentViewController *)self titleView];
      pageIndexLabel6 = [(ICDocCamExtractedDocumentViewController *)self pageIndexLabel];
      [titleView12 addArrangedSubview:pageIndexLabel6];
    }

    if (!mode)
    {
      goto LABEL_40;
    }

    titleView13 = [(ICDocCamExtractedDocumentViewController *)self titleView];
    collectionTitleButton5 = [(ICDocCamExtractedDocumentViewController *)self collectionTitleButton];
  }

  else
  {
    if (mode)
    {
      titleView14 = [(ICDocCamExtractedDocumentViewController *)self titleView];
      collectionTitleButton6 = [(ICDocCamExtractedDocumentViewController *)self collectionTitleButton];
      [titleView14 addArrangedSubview:collectionTitleButton6];
    }

    if (documentCount < 2)
    {
      goto LABEL_40;
    }

    titleView13 = [(ICDocCamExtractedDocumentViewController *)self titleView];
    collectionTitleButton5 = [(ICDocCamExtractedDocumentViewController *)self pageIndexLabel];
  }

  v67 = collectionTitleButton5;
  [titleView13 addArrangedSubview:collectionTitleButton5];

LABEL_40:
  v38 = v38 + v39;
LABEL_41:
  titleViewWrapperWidthConstraint = [(ICDocCamExtractedDocumentViewController *)self titleViewWrapperWidthConstraint];
  [titleViewWrapperWidthConstraint constant];
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

  titleViewWrapperWidthConstraint2 = [(ICDocCamExtractedDocumentViewController *)self titleViewWrapperWidthConstraint];
  [titleViewWrapperWidthConstraint2 setConstant:v72];

  titleViewWrapper2 = [(ICDocCamExtractedDocumentViewController *)self titleViewWrapper];
  titleView15 = [(ICDocCamExtractedDocumentViewController *)self titleView];
  [titleViewWrapper2 addSubview:titleView15];

  titleView16 = [(ICDocCamExtractedDocumentViewController *)self titleView];
  leadingAnchor = [titleView16 leadingAnchor];
  titleViewWrapper3 = [(ICDocCamExtractedDocumentViewController *)self titleViewWrapper];
  leadingAnchor2 = [titleViewWrapper3 leadingAnchor];
  v80 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];

  titleView17 = [(ICDocCamExtractedDocumentViewController *)self titleView];
  trailingAnchor = [titleView17 trailingAnchor];
  titleViewWrapper4 = [(ICDocCamExtractedDocumentViewController *)self titleViewWrapper];
  trailingAnchor2 = [titleViewWrapper4 trailingAnchor];
  v85 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:0.0];

  titleView18 = [(ICDocCamExtractedDocumentViewController *)self titleView];
  bottomAnchor = [titleView18 bottomAnchor];
  titleViewWrapper5 = [(ICDocCamExtractedDocumentViewController *)self titleViewWrapper];
  bottomAnchor2 = [titleViewWrapper5 bottomAnchor];
  v90 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];

  titleView19 = [(ICDocCamExtractedDocumentViewController *)self titleView];
  topAnchor = [titleView19 topAnchor];
  titleViewWrapper6 = [(ICDocCamExtractedDocumentViewController *)self titleViewWrapper];
  topAnchor2 = [titleViewWrapper6 topAnchor];
  v95 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];

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
    view = [(ICDocCamExtractedDocumentViewController *)self view];
    window = [view window];
    dc_requiresCompactLandscapeIcons = [window dc_requiresCompactLandscapeIcons];

    result = 44.0;
    if (dc_requiresCompactLandscapeIcons)
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

- (void)recreateThumbnailContainerWithWidth:(double)width leadingTrailingMargin:(double)margin
{
  v49[4] = *MEMORY[0x277D85DE8];
  thumbnailContainerView = [(ICDocCamExtractedDocumentViewController *)self thumbnailContainerView];
  [thumbnailContainerView removeFromSuperview];

  [(ICDocCamExtractedDocumentViewController *)self setThumbnailContainerViewItem:0];
  [(ICDocCamExtractedDocumentViewController *)self setThumbnailContainerView:0];
  [(ICDocCamExtractedDocumentViewController *)self setThumbnailCollectionViewController:0];
  v8 = objc_alloc_init(ICDocCamExtractedThumbnailContainerView);
  [(ICDocCamExtractedDocumentViewController *)self setThumbnailContainerView:v8];

  clearColor = [MEMORY[0x277D75348] clearColor];
  thumbnailContainerView2 = [(ICDocCamExtractedDocumentViewController *)self thumbnailContainerView];
  [thumbnailContainerView2 setBackgroundColor:clearColor];

  thumbnailContainerView3 = [(ICDocCamExtractedDocumentViewController *)self thumbnailContainerView];
  [thumbnailContainerView3 setDelegate:self];

  v12 = objc_alloc(MEMORY[0x277D751E0]);
  thumbnailContainerView4 = [(ICDocCamExtractedDocumentViewController *)self thumbnailContainerView];
  v14 = [v12 initWithCustomView:thumbnailContainerView4];
  [(ICDocCamExtractedDocumentViewController *)self setThumbnailContainerViewItem:v14];

  if ([MEMORY[0x277D74248] dc_isRTL])
  {
    CGAffineTransformMakeScale(&v48, -1.0, 1.0);
    thumbnailContainerView5 = [(ICDocCamExtractedDocumentViewController *)self thumbnailContainerView];
    v47 = v48;
    [thumbnailContainerView5 setTransform:&v47];
  }

  thumbnailContainerViewItem = [(ICDocCamExtractedDocumentViewController *)self thumbnailContainerViewItem];
  [thumbnailContainerViewItem setWidth:width + margin * -2.0];

  [(ICDocCamExtractedDocumentViewController *)self thumbnailToolbarHeight];
  v18 = v17;
  thumbnailContainerViewItem2 = [(ICDocCamExtractedDocumentViewController *)self thumbnailContainerViewItem];
  [thumbnailContainerViewItem2 width];
  v21 = v20;
  thumbnailContainerView6 = [(ICDocCamExtractedDocumentViewController *)self thumbnailContainerView];
  [thumbnailContainerView6 setFrame:{0.0, 0.0, v21, v18}];

  thumbnailContainerView7 = [(ICDocCamExtractedDocumentViewController *)self thumbnailContainerView];
  heightAnchor = [thumbnailContainerView7 heightAnchor];
  v25 = [heightAnchor constraintEqualToConstant:v18];
  [v25 setActive:1];

  view = [(ICDocCamExtractedDocumentViewController *)self view];
  [view layoutIfNeeded];

  [(ICDocCamExtractedDocumentViewController *)self setupThumbnailViewController];
  layer = [MEMORY[0x277CD9EB0] layer];
  thumbnailContainerView8 = [(ICDocCamExtractedDocumentViewController *)self thumbnailContainerView];
  [thumbnailContainerView8 bounds];
  [layer setFrame:?];

  v29 = MEMORY[0x277CBEA60];
  v30 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
  cGColor = [v30 CGColor];
  v32 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  cGColor2 = [v32 CGColor];
  v34 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  cGColor3 = [v34 CGColor];
  v36 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
  v37 = [v29 arrayWithObjects:{cGColor, cGColor2, cGColor3, objc_msgSend(v36, "CGColor"), 0}];
  [layer setColors:v37];

  v49[0] = &unk_285C6D348;
  v38 = MEMORY[0x277CCABB0];
  [layer frame];
  v40 = [v38 numberWithDouble:12.0 / v39];
  v49[1] = v40;
  v41 = MEMORY[0x277CCABB0];
  [layer frame];
  v43 = [v41 numberWithDouble:1.0 - 12.0 / v42];
  v49[2] = v43;
  v49[3] = &unk_285C6D360;
  v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:4];
  [layer setLocations:v44];

  [layer setStartPoint:{0.0, 0.5}];
  [layer setEndPoint:{1.0, 0.5}];
  thumbnailContainerView9 = [(ICDocCamExtractedDocumentViewController *)self thumbnailContainerView];
  layer2 = [thumbnailContainerView9 layer];
  [layer2 setMask:layer];
}

- (void)setupThumbnailViewController
{
  v28[1] = *MEMORY[0x277D85DE8];
  thumbnailCollectionViewController = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionViewController];

  if (!thumbnailCollectionViewController)
  {
    v4 = objc_alloc_init(MEMORY[0x277D752C8]);
    [(ICDocCamExtractedDocumentViewController *)self setThumbnailCollectionViewController:v4];

    thumbnailCollectionView = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
    thumbnailCollectionViewController2 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionViewController];
    [thumbnailCollectionViewController2 setCollectionView:thumbnailCollectionView];

    thumbnailCollectionViewController3 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionViewController];
    [(ICDocCamExtractedDocumentViewController *)self addChildViewController:thumbnailCollectionViewController3];

    thumbnailContainerView = [(ICDocCamExtractedDocumentViewController *)self thumbnailContainerView];
    thumbnailCollectionView2 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
    [thumbnailContainerView addSubview:thumbnailCollectionView2];

    thumbnailCollectionViewController4 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionViewController];
    [thumbnailCollectionViewController4 didMoveToParentViewController:self];

    v11 = MEMORY[0x277CCAAD0];
    v27 = @"childView";
    thumbnailCollectionViewController5 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionViewController];
    collectionView = [thumbnailCollectionViewController5 collectionView];
    v28[0] = collectionView;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v15 = [v11 constraintsWithVisualFormat:@"H:|[childView]|" options:0 metrics:0 views:v14];

    v16 = MEMORY[0x277CCAAD0];
    v25 = @"childView";
    thumbnailCollectionViewController6 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionViewController];
    collectionView2 = [thumbnailCollectionViewController6 collectionView];
    v26 = collectionView2;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v20 = [v16 constraintsWithVisualFormat:@"V:|[childView]|" options:0 metrics:0 views:v19];

    thumbnailCollectionViewController7 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionViewController];
    collectionView3 = [thumbnailCollectionViewController7 collectionView];
    [collectionView3 setTranslatesAutoresizingMaskIntoConstraints:0];

    thumbnailCollectionViewController8 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionViewController];
    collectionView4 = [thumbnailCollectionViewController8 collectionView];
    [collectionView4 setContentInsetAdjustmentBehavior:2];

    [MEMORY[0x277CCAAD0] activateConstraints:v15];
    [MEMORY[0x277CCAAD0] activateConstraints:v20];
  }

  [(ICDocCamExtractedDocumentViewController *)self setCurrentThumbnailItem:[(ICDocCamExtractedDocumentViewController *)self presentationPageIndex] animated:0];
}

- (CGSize)frameSizeForImageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  thumbnailCollectionViewLayout = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionViewLayout];
  [thumbnailCollectionViewLayout itemSizeForImageSize:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)setImage:(id)image forCell:(id)cell useResizedImage:(BOOL)resizedImage
{
  resizedImageCopy = resizedImage;
  cellCopy = cell;
  imageCopy = image;
  thumbnailCollectionView = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
  [thumbnailCollectionView frame];

  thumbnailCollectionView2 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
  [thumbnailCollectionView2 contentInset];

  if (imageCopy && resizedImageCopy)
  {
    [imageCopy size];
    v12 = v11;
    v14 = v13;
    [(ICDocCamExtractedDocumentViewController *)self frameSizeForImageSize:?];
    v16 = v15;
    v18 = v17;
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v21 = v20;

    v22 = fmax(v21, 1.0);
    [ICDocCamUtilities aspectFillSize:v12 targetSize:v14, v16 * v22, v18 * v22];
    v23 = [ICDocCamUtilities resizedImage:imageCopy newSize:3 interpolationQuality:?];

    imageView = [cellCopy imageView];
    imageCopy = imageView;
    v25 = v23;
  }

  else
  {
    imageView = [cellCopy imageView];
    v23 = imageView;
    v25 = imageCopy;
  }

  [imageView setImage:v25];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v10.receiver = self;
  v10.super_class = ICDocCamExtractedDocumentViewController;
  coordinatorCopy = coordinator;
  [(ICDocCamExtractedDocumentViewController *)&v10 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  thumbnailCollectionViewLayout = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionViewLayout];
  [thumbnailCollectionViewLayout setIsUndergoingOrientationChange:1];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __94__ICDocCamExtractedDocumentViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v9[3] = &unk_278F92D48;
  v9[4] = self;
  [coordinatorCopy animateAlongsideTransition:&__block_literal_global_542 completion:v9];
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

- (int64_t)orientationRotated90DegreesFromOrientation:(int64_t)orientation
{
  if (orientation >= 4)
  {
    [ICDocCamExtractedDocumentViewController orientationRotated90DegreesFromOrientation:];
  }

  return qword_2492F76E8[orientation];
}

- (void)updatePageViewControllerConstraints:(BOOL)constraints animationBlock:(id)block completionBlock:(id)completionBlock
{
  constraintsCopy = constraints;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  adjustPageViewControllerForMarkup = [(ICDocCamExtractedDocumentViewController *)self adjustPageViewControllerForMarkup];
  v11 = 0.0;
  v12 = 0.0;
  if (adjustPageViewControllerForMarkup)
  {
    [(UIViewController *)self dc_safeAreaDistanceFromTop];
    v12 = v13;
    v11 = 35.0;
  }

  v14 = -v11;
  pageViewBottomConstraint = [(ICDocCamExtractedDocumentViewController *)self pageViewBottomConstraint];
  [pageViewBottomConstraint setConstant:v14];

  pageViewTopConstraint = [(ICDocCamExtractedDocumentViewController *)self pageViewTopConstraint];
  [pageViewTopConstraint setConstant:v12];

  pageViewLeadingConstraint = [(ICDocCamExtractedDocumentViewController *)self pageViewLeadingConstraint];
  [pageViewLeadingConstraint setConstant:0.0];

  pageViewTrailingConstraint = [(ICDocCamExtractedDocumentViewController *)self pageViewTrailingConstraint];
  [pageViewTrailingConstraint setConstant:-0.0];

  if (constraintsCopy)
  {
    [(ICDocCamExtractedDocumentViewController *)self setIsAnimatingPageViewController:1];
    v19 = MEMORY[0x277D75D18];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __110__ICDocCamExtractedDocumentViewController_updatePageViewControllerConstraints_animationBlock_completionBlock___block_invoke;
    v22[3] = &unk_278F92D70;
    v22[4] = self;
    v23 = blockCopy;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __110__ICDocCamExtractedDocumentViewController_updatePageViewControllerConstraints_animationBlock_completionBlock___block_invoke_2;
    v20[3] = &unk_278F92D98;
    v20[4] = self;
    v21 = completionBlockCopy;
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

- (void)updateImage:(id)image document:(id)document withFilterType:(signed __int16)type
{
  typeCopy = type;
  v26[1] = *MEMORY[0x277D85DE8];
  imageCopy = image;
  documentCopy = document;
  documentInfoCollection = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  docInfos = [documentInfoCollection docInfos];
  v12 = [docInfos indexOfObject:documentCopy];

  if ([documentCopy currentFilter] != typeCopy && v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [documentCopy setCurrentFilter:typeCopy];
    croppedAndFilteredImageUUID = [documentCopy croppedAndFilteredImageUUID];

    imageCache = [(ICDocCamExtractedDocumentViewController *)self imageCache];
    v15 = imageCache;
    if (croppedAndFilteredImageUUID)
    {
      metaData = [documentCopy metaData];
      croppedAndFilteredImageUUID2 = [documentCopy croppedAndFilteredImageUUID];
      [v15 replaceImage:imageCopy metaData:metaData uuid:croppedAndFilteredImageUUID2];
    }

    else
    {
      metaData = [imageCache setImage:imageCopy metaData:0 addToMemoryCache:0 completion:0];
      [documentCopy setCroppedAndFilteredImageUUID:metaData];
    }

    if (v12 == [(ICDocCamExtractedDocumentViewController *)self presentationPageIndex])
    {
      currentImageView = [(ICDocCamExtractedDocumentViewController *)self currentImageView];
      [currentImageView setImage:imageCopy];
    }

    delegate = [(ICDocCamExtractedDocumentViewController *)self delegate];
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      currentFilter = [documentCopy currentFilter];
      delegate2 = [(ICDocCamExtractedDocumentViewController *)self delegate];
      [delegate2 extractedDocumentControllerDidApplyFilter:currentFilter forDocument:documentCopy];
    }

    v23 = [MEMORY[0x277CCAA70] indexPathForItem:v12 inSection:0];
    thumbnailCollectionView = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
    v26[0] = v23;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
    [thumbnailCollectionView reloadItemsAtIndexPaths:v25];
  }
}

- (void)didUpdateDocumentTitle:(id)title
{
  titleCopy = title;
  collectionTitleButton = [(ICDocCamExtractedDocumentViewController *)self collectionTitleButton];
  [collectionTitleButton setTitle:titleCopy forState:0];

  [(ICDocCamExtractedDocumentViewController *)self updateTitleView];
}

- (void)didUpdateDocumentInfoArrayNewCurrentDocument:(id)document
{
  documentCopy = document;
  thumbnailCollectionViewLayout = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionViewLayout];
  movingItem = [thumbnailCollectionViewLayout movingItem];

  if (movingItem)
  {
    thumbnailCollectionView = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
    [thumbnailCollectionView cancelInteractiveMovement];
  }

  thumbnailCollectionViewLayout2 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionViewLayout];
  [thumbnailCollectionViewLayout2 invalidateLayout];

  thumbnailCollectionView2 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
  [thumbnailCollectionView2 reloadData];

  v9 = documentCopy;
  if (documentCopy)
  {
    documentInfoCollection = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
    docInfos = [documentInfoCollection docInfos];
    v12 = [docInfos indexOfObject:documentCopy];

    v9 = documentCopy;
    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(ICDocCamExtractedDocumentViewController *)self showViewControllerAtIndex:v12 animated:0];
      [(ICDocCamExtractedDocumentViewController *)self setCurrentThumbnailItem:v12 animated:1];
      [(ICDocCamExtractedDocumentViewController *)self updateFilterButtonMenu];
      v9 = documentCopy;
    }
  }
}

- (void)didUpdateDocumentImage:(id)image
{
  imageCopy = image;
  if ([(ICDocCamExtractedDocumentViewController *)self isScrollingBetweenPages])
  {
    documentsToUpdateWhenScrollingStops = [(ICDocCamExtractedDocumentViewController *)self documentsToUpdateWhenScrollingStops];
    [documentsToUpdateWhenScrollingStops addObject:imageCopy];
  }

  else
  {
    [(ICDocCamExtractedDocumentViewController *)self updateDocumentImage:imageCopy];
  }
}

- (void)updateDocumentImage:(id)image
{
  v21[1] = *MEMORY[0x277D85DE8];
  imageCopy = image;
  documentInfoCollection = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  docInfos = [documentInfoCollection docInfos];
  v7 = [docInfos indexOfObject:imageCopy];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    thumbnailCollectionView = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
    v9 = [MEMORY[0x277CCAA70] indexPathForItem:v7 inSection:0];
    v21[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    [thumbnailCollectionView reloadItemsAtIndexPaths:v10];

    if ([(ICDocCamExtractedDocumentViewController *)self presentationPageIndex]== v7)
    {
      documentInfoCollection2 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
      docInfos2 = [documentInfoCollection2 docInfos];
      if (v7 >= [docInfos2 count])
      {
LABEL_6:

        goto LABEL_7;
      }

      documentInfoCollection3 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
      docInfos3 = [documentInfoCollection3 docInfos];
      v15 = [docInfos3 objectAtIndexedSubscript:v7];

      if (v15)
      {
        v16 = [(ICDocCamExtractedDocumentViewController *)self croppedAndFilteredmageForDocumentAtIndex:v7];
        currentPageContentViewController = [(ICDocCamExtractedDocumentViewController *)self currentPageContentViewController];
        [currentPageContentViewController setImage:v16];

        currentFilter = [v15 currentFilter];
        docInfos2 = [(ICDocCamExtractedDocumentViewController *)self currentDocument];
        [docInfos2 setCurrentFilter:currentFilter];
        documentInfoCollection2 = v15;
        goto LABEL_6;
      }
    }

LABEL_7:
    thumbnailCollectionViewLayout = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionViewLayout];
    [thumbnailCollectionViewLayout invalidateLayout];

    [(ICDocCamExtractedDocumentViewController *)self setCurrentThumbnailItem:[(ICDocCamExtractedDocumentViewController *)self presentationPageIndex] animated:1];
    documentInfoCollection4 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
    [documentInfoCollection4 bumpModificationDate];
  }
}

- (id)currentDocument
{
  presentationPageIndex = [(ICDocCamExtractedDocumentViewController *)self presentationPageIndex];
  documentInfoCollection = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  docInfos = [documentInfoCollection docInfos];
  if (presentationPageIndex >= [docInfos count])
  {
    v8 = 0;
  }

  else
  {
    documentInfoCollection2 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
    docInfos2 = [documentInfoCollection2 docInfos];
    v8 = [docInfos2 objectAtIndexedSubscript:presentationPageIndex];
  }

  return v8;
}

- (void)addImageAction:(id)action
{
  if (![(ICDocCamExtractedDocumentViewController *)self shouldDisableActions])
  {
    presentedViewController = [(ICDocCamExtractedDocumentViewController *)self presentedViewController];
    if (presentedViewController)
    {
      [(ICDocCamExtractedDocumentViewController *)self dismissViewControllerAnimated:0 completion:0];
    }

    delegate = [(ICDocCamExtractedDocumentViewController *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      delegate2 = [(ICDocCamExtractedDocumentViewController *)self delegate];
      [delegate2 extractedDocumentControllerDidTapAddImage];
    }
  }
}

- (void)recropButtonPressed:(id)pressed
{
  if (![(ICDocCamExtractedDocumentViewController *)self shouldDisableActions])
  {
    documentInfoCollection = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
    docInfos = [documentInfoCollection docInfos];
    v6 = [docInfos count];

    if (v6)
    {
      delegate = [(ICDocCamExtractedDocumentViewController *)self delegate];
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        if ([(ICDocCamExtractedDocumentViewController *)self currentImageHasMarkup])
        {

          [(ICDocCamExtractedDocumentViewController *)self alertAndDiscardMarkup];
        }

        else
        {
          delegate2 = [(ICDocCamExtractedDocumentViewController *)self delegate];
          currentDocument = [(ICDocCamExtractedDocumentViewController *)self currentDocument];
          [delegate2 extractedDocumentController:self didTapRecrop:currentDocument index:{-[ICDocCamExtractedDocumentViewController presentationPageIndex](self, "presentationPageIndex")}];
        }
      }
    }
  }
}

- (void)retakeAction:(id)action
{
  view = [(ICDocCamExtractedDocumentViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  statusBarManager = [windowScene statusBarManager];
  -[ICDocCamExtractedDocumentViewController setStatusBarWasHiddenWhenRetakeTapped:](self, "setStatusBarWasHiddenWhenRetakeTapped:", [statusBarManager isStatusBarHidden]);

  delegate = [(ICDocCamExtractedDocumentViewController *)self delegate];
  [delegate extractedDocumentControllerDidTapRetake:{-[ICDocCamExtractedDocumentViewController presentationPageIndex](self, "presentationPageIndex")}];
}

- (void)doneAction:(id)action
{
  view = [(ICDocCamExtractedDocumentViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  statusBarManager = [windowScene statusBarManager];
  -[ICDocCamExtractedDocumentViewController setStatusBarWasHiddenWhenDoneTapped:](self, "setStatusBarWasHiddenWhenDoneTapped:", [statusBarManager isStatusBarHidden]);

  delegate = [(ICDocCamExtractedDocumentViewController *)self delegate];
  LOBYTE(window) = objc_opt_respondsToSelector();

  delegate2 = [(ICDocCamExtractedDocumentViewController *)self delegate];
  presentationPageIndex = [(ICDocCamExtractedDocumentViewController *)self presentationPageIndex];
  if (window)
  {
    scanCollectionDataDelegate = [(ICDocCamExtractedDocumentViewController *)self scanCollectionDataDelegate];
    [delegate2 extractedDocumentControllerDidTapDone:presentationPageIndex scanDataDelegate:scanCollectionDataDelegate];
  }

  else
  {
    [delegate2 extractedDocumentControllerDidTapDone:presentationPageIndex];
  }
}

- (void)shareAction:(id)action
{
  actionCopy = action;
  if (![(ICDocCamExtractedDocumentViewController *)self shouldDisableActions])
  {
    delegate = [(ICDocCamExtractedDocumentViewController *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      documentInfoCollection = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
      docInfos = [documentInfoCollection docInfos];
      v8 = [docInfos count];

      if (v8)
      {
        delegate2 = [(ICDocCamExtractedDocumentViewController *)self delegate];
        documentInfoCollection2 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
        docInfos2 = [documentInfoCollection2 docInfos];
        v12 = [docInfos2 objectAtIndexedSubscript:{-[ICDocCamExtractedDocumentViewController presentationPageIndex](self, "presentationPageIndex")}];
        [delegate2 extractedDocumentController:self shareDocument:v12 sender:actionCopy];
      }
    }
  }
}

- (DCScanDataDelegate)scanCollectionDataDelegate
{
  v3 = objc_opt_class();
  documentInfoCollection = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  docInfos = [documentInfoCollection docInfos];
  firstObject = [docInfos firstObject];
  v7 = DCDynamicCast(v3, firstObject);

  scanDataDelegate = [v7 scanDataDelegate];
  parentAttachment = [scanDataDelegate parentAttachment];

  return parentAttachment;
}

- (DCScanDataDelegate)selectedScanDataDelegate
{
  currentDocument = [(ICDocCamExtractedDocumentViewController *)self currentDocument];
  scanDataDelegate = [currentDocument scanDataDelegate];

  return scanDataDelegate;
}

- (id)orientationString:(int64_t)string
{
  if (string >= 4)
  {
    [ICDocCamExtractedDocumentViewController orientationString:];
  }

  return off_278F93088[string];
}

- (id)currentPageContentViewController
{
  pageViewController = [(ICDocCamExtractedDocumentViewController *)self pageViewController];
  viewControllers = [pageViewController viewControllers];

  firstObject = [viewControllers firstObject];

  return firstObject;
}

- (UIImageView)currentImageView
{
  currentPageContentViewController = [(ICDocCamExtractedDocumentViewController *)self currentPageContentViewController];
  imageView = [currentPageContentViewController imageView];

  return imageView;
}

- (void)alertAndDiscardMarkup
{
  documentInfoCollection = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  docInfos = [documentInfoCollection docInfos];
  v5 = [docInfos objectAtIndexedSubscript:{-[ICDocCamExtractedDocumentViewController presentationPageIndex](self, "presentationPageIndex")}];

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
  selfCopy = self;
  v22 = v5;
  v12 = v5;
  v13 = [v10 actionWithTitle:v11 style:2 handler:&v17];
  [v8 addAction:{v13, v17, v18, v19, v20, selfCopy}];

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
  delegate = [(ICDocCamExtractedDocumentViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  presentationPageIndex = [(ICDocCamExtractedDocumentViewController *)self presentationPageIndex];
  documentInfoCollection = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  docInfos = [documentInfoCollection docInfos];
  v8 = [docInfos count];

  if (presentationPageIndex >= v8)
  {
    return 0;
  }

  documentInfoCollection2 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  docInfos2 = [documentInfoCollection2 docInfos];
  v11 = [docInfos2 objectAtIndexedSubscript:{-[ICDocCamExtractedDocumentViewController presentationPageIndex](self, "presentationPageIndex")}];

  delegate2 = [(ICDocCamExtractedDocumentViewController *)self delegate];
  v13 = [delegate2 extractedDocumentControllerMarkupModelDataForDocument:v11];
  v14 = [v13 length] != 0;

  return v14;
}

- (BOOL)imageIsPortrait:(id)portrait
{
  portraitCopy = portrait;
  [portraitCopy size];
  v5 = v4;
  [portraitCopy size];
  v7 = v6;

  return v5 <= v7;
}

- (void)rotateAction:(id)action
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
  presentationPageIndex = [(ICDocCamExtractedDocumentViewController *)self presentationPageIndex];
  v88 = 0;
  v89 = &v88;
  v90 = 0x3032000000;
  v91 = __Block_byref_object_copy_;
  v92 = __Block_byref_object_dispose_;
  v93 = [(ICDocCamExtractedDocumentViewController *)self croppedAndFilteredmageForDocumentAtIndex:presentationPageIndex];
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
    pageViewController = [(ICDocCamExtractedDocumentViewController *)self pageViewController];
    view = [pageViewController view];
    subviews = [view subviews];

    v7 = 0;
    v8 = 0;
    while ([subviews count] > v7)
    {
      v9 = [subviews objectAtIndexedSubscript:v7];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);

      if ([v11 isEqualToString:@"_UIQueuingScrollView"])
      {
        v12 = [subviews objectAtIndexedSubscript:v7];

        [v12 setClipsToBounds:0];
        v8 = v12;
      }

      ++v7;
    }

    pageViewController2 = [(ICDocCamExtractedDocumentViewController *)self pageViewController];
    view2 = [pageViewController2 view];
    [view2 setClipsToBounds:0];

    currentPageContentViewController = [(ICDocCamExtractedDocumentViewController *)self currentPageContentViewController];
    [currentPageContentViewController resetZoom];

    currentPageContentViewController2 = [(ICDocCamExtractedDocumentViewController *)self currentPageContentViewController];
    view3 = [currentPageContentViewController2 view];

    v19 = -[ICDocCamExtractedDocumentViewController orientationRotated90DegreesFromOrientation:](self, "orientationRotated90DegreesFromOrientation:", [v89[5] imageOrientation]);
    [view3 frame];
    v21 = v20;
    [view3 frame];
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
          [view3 frame];
          v33 = v32;
          [v89[5] size];
          v35 = v34;
          [v89[5] size];
          v37 = v36;
          [view3 frame];
LABEL_20:
          v43 = v38 / (v33 / v35 * v37);
          goto LABEL_31;
        }

        [view3 frame];
        v41 = v51;
        [view3 frame];
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
        selfCopy = self;
        v76 = view3;
        v84 = v76;
        v85 = &v88;
        v86 = presentationPageIndex;
        v87 = v19;
        [v75 setCompletionBlock:v81];
        layer = [v76 layer];
        [layer addAnimation:v63 forKey:@"rotate"];

        layer2 = [v76 layer];
        [layer2 addAnimation:v69 forKey:@"scale"];

        [MEMORY[0x277CD9FF0] commit];
        rotateBottomToolbarButton = [(ICDocCamExtractedDocumentViewController *)self rotateBottomToolbarButton];
        accessibilityTraits = [rotateBottomToolbarButton accessibilityTraits];
        [rotateBottomToolbarButton setAccessibilityTraits:accessibilityTraits & ~*MEMORY[0x277D76580]];

LABEL_32:
        goto LABEL_33;
      }

      v44 = 1.0 / v31;
      if (1.0 / v31 > v28)
      {
        [view3 frame];
        v33 = v45;
        [v89[5] size];
        v35 = v46;
        [v89[5] size];
        v37 = v47;
        [view3 frame];
        goto LABEL_20;
      }

      [view3 frame];
      v49 = v59;
      [view3 frame];
LABEL_28:
      v43 = v49 / v50;
      goto LABEL_31;
    }

    if ([(ICDocCamExtractedDocumentViewController *)self imageIsPortrait:v30])
    {
      v39 = 1.0 / v31;
      if (1.0 / v31 > v28)
      {
        [view3 frame];
        v41 = v40;
        [view3 frame];
        goto LABEL_25;
      }

      [view3 frame];
      v53 = v52;
      [v89[5] size];
      v55 = v54;
      [v89[5] size];
      v57 = v56;
      [view3 frame];
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
        [view3 frame];
        v49 = v48;
        [view3 frame];
        goto LABEL_28;
      }

      [view3 frame];
      v53 = v60;
      [v89[5] size];
      v55 = v61;
      [v89[5] size];
      v57 = v62;
      [view3 frame];
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

  view = [(ICDocCamExtractedDocumentViewController *)self view];
  glurBar = [(ICDocCamExtractedDocumentViewController *)self glurBar];
  [view addSubview:glurBar];

  v19 = MEMORY[0x277CCAAD0];
  glurBar2 = [(ICDocCamExtractedDocumentViewController *)self glurBar];
  bottomAnchor = [glurBar2 bottomAnchor];
  view2 = [(ICDocCamExtractedDocumentViewController *)self view];
  bottomAnchor2 = [view2 bottomAnchor];
  v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v25[0] = v20;
  glurBar3 = [(ICDocCamExtractedDocumentViewController *)self glurBar];
  widthAnchor = [glurBar3 widthAnchor];
  view3 = [(ICDocCamExtractedDocumentViewController *)self view];
  widthAnchor2 = [view3 widthAnchor];
  v10 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v25[1] = v10;
  glurBar4 = [(ICDocCamExtractedDocumentViewController *)self glurBar];
  heightAnchor = [glurBar4 heightAnchor];
  +[_TtC14DocumentCamera22DCLiquidGlassConstants gradientBlurBarHeight];
  v13 = [heightAnchor constraintEqualToConstant:?];
  v25[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];
  [v19 activateConstraints:v14];

  view4 = [(ICDocCamExtractedDocumentViewController *)self view];
  glurBar5 = [(ICDocCamExtractedDocumentViewController *)self glurBar];
  [view4 bringSubviewToFront:glurBar5];

  view5 = [(ICDocCamExtractedDocumentViewController *)self view];
  buttonStackView = [(ICDocCamExtractedDocumentViewController *)self buttonStackView];
  [view5 bringSubviewToFront:buttonStackView];
}

- (void)updateFilterButtonMenu
{
  presentationPageIndex = [(ICDocCamExtractedDocumentViewController *)self presentationPageIndex];
  documentInfoCollection = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  docInfos = [documentInfoCollection docInfos];
  v6 = [docInfos count];

  if (presentationPageIndex >= v6)
  {
    currentFilter = 1;
  }

  else
  {
    documentInfoCollection2 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
    docInfos2 = [documentInfoCollection2 docInfos];
    v9 = [docInfos2 objectAtIndexedSubscript:{-[ICDocCamExtractedDocumentViewController presentationPageIndex](self, "presentationPageIndex")}];

    currentFilter = [v9 currentFilter];
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = MEMORY[0x277D750C8];
  v13 = [DCLocalization localizedStringForKey:@"Photo" value:@"Photo" table:@"Localizable"];
  if (currentFilter)
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
  if (!currentFilter)
  {
  }

  [v11 addObject:v15];
  v16 = MEMORY[0x277D750C8];
  v17 = [DCLocalization localizedStringForKey:@"Color" value:@"Color" table:@"Localizable"];
  if (currentFilter == 1)
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
  if (currentFilter == 1)
  {
  }

  [v11 addObject:v19];
  v20 = MEMORY[0x277D750C8];
  v21 = [DCLocalization localizedStringForKey:@"Grayscale" value:@"Grayscale" table:@"Localizable"];
  if (currentFilter == 2)
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
  if (currentFilter == 2)
  {
  }

  [v11 addObject:v23];
  v24 = MEMORY[0x277D750C8];
  v25 = [DCLocalization localizedStringForKey:@"Black & White" value:@"Black & White" table:@"Localizable"];
  if (currentFilter == 3)
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
  if (currentFilter == 3)
  {
  }

  [v11 addObject:v27];
  v28 = MEMORY[0x277D75710];
  v29 = [DCLocalization localizedStringForKey:@"Filters" value:@"Filters" table:@"Localizable"];
  v30 = [v28 menuWithTitle:v29 children:v11];

  filterBottomToolbarButton = [(ICDocCamExtractedDocumentViewController *)self filterBottomToolbarButton];
  [filterBottomToolbarButton setMenu:v30];

  filterBottomToolbarButton2 = [(ICDocCamExtractedDocumentViewController *)self filterBottomToolbarButton];
  [filterBottomToolbarButton2 setShowsMenuAsPrimaryAction:1];
}

- (void)applyFilter:(signed __int16)filter
{
  filterCopy = filter;
  if (![(ICDocCamExtractedDocumentViewController *)self shouldDisableActions])
  {
    documentInfoCollection = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
    docInfos = [documentInfoCollection docInfos];
    v7 = [docInfos count];

    if (v7)
    {
      [(ICDocCamExtractedDocumentViewController *)self filterViewControllerDidSelectFilter:filterCopy];
      [(ICDocCamExtractedDocumentViewController *)self updateFilterButtonMenu];

      [(ICDocCamExtractedDocumentViewController *)self updateFilterButtonItemAccessibilityInfo];
    }
  }
}

- (void)deleteButtonAction:(id)action
{
  actionCopy = action;
  if (![(ICDocCamExtractedDocumentViewController *)self shouldDisableActions])
  {
    if ([(ICDocCamExtractedDocumentViewController *)self mode])
    {
      v5 = objc_opt_class();
      v6 = DCDynamicCast(v5, actionCopy);
      if (!v6)
      {
        documentInfoCollection = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
        docInfos = [documentInfoCollection docInfos];
        v9 = [docInfos count];

        if (v9 >= 2)
        {
          [(ICDocCamExtractedDocumentViewController *)self deleteCurrentPage];
LABEL_18:

          goto LABEL_19;
        }
      }

      documentInfoCollection2 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
      docInfos2 = [documentInfoCollection2 docInfos];
      if ([docInfos2 count] == 1)
      {
        delegate = [(ICDocCamExtractedDocumentViewController *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          mode = [(ICDocCamExtractedDocumentViewController *)self mode];

          if (mode == 1)
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
            popoverPresentationController = [v15 popoverPresentationController];
            v23 = popoverPresentationController;
            if (v6)
            {
              [popoverPresentationController setBarButtonItem:v6];
            }

            else
            {
              currentImageView = [(ICDocCamExtractedDocumentViewController *)self currentImageView];
              [v23 setSourceView:currentImageView];

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

- (id)makeUIImageFromCIImage:(id)image
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBF740];
  v11 = *MEMORY[0x277CBF910];
  v12[0] = MEMORY[0x277CBEC28];
  v4 = MEMORY[0x277CBEAC0];
  imageCopy = image;
  v6 = [v4 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v7 = [v3 contextWithOptions:v6];

  [imageCopy extent];
  v8 = [v7 createCGImage:imageCopy fromRect:?];

  v9 = [MEMORY[0x277D755B8] imageWithCGImage:v8];
  CGImageRelease(v8);

  return v9;
}

- (void)deleteCurrentPage
{
  v85[2] = *MEMORY[0x277D85DE8];
  currentPageContentViewController = [(ICDocCamExtractedDocumentViewController *)self currentPageContentViewController];
  [currentPageContentViewController resetZoom];

  currentPageContentViewController2 = [(ICDocCamExtractedDocumentViewController *)self currentPageContentViewController];
  imageView = [currentPageContentViewController2 imageView];

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  _graphicsQuality = [currentDevice _graphicsQuality];

  if (_graphicsQuality != 100)
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
    imageByClampingToExtent = [v74 imageByClampingToExtent];
    [imageByClampingToExtent extent];
    v14 = [imageByClampingToExtent imageBySettingAlphaOneInExtent:?];

    v15 = MEMORY[0x277CBF750];
    v84[0] = *MEMORY[0x277CBFAF0];
    v84[1] = @"inputRadius";
    v85[0] = v14;
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:40.0];
    v85[1] = v16;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:v84 count:2];
    v18 = v17 = imageView;
    [v15 filterWithName:@"CIGaussianBlur" withInputParameters:v18];
    v20 = v19 = _graphicsQuality;
    outputImage = [v20 outputImage];
    v22 = [outputImage imageByCroppingToRect:{x, y, width, height}];

    imageView = v17;
    v23 = [(ICDocCamExtractedDocumentViewController *)self makeUIImageFromCIImage:v22];
    [v8 size];
    v25 = v24;
    [v8 size];
    v26 = [v23 dc_scaledImageWithSize:v25 scale:?];
    currentPageContentViewController3 = [(ICDocCamExtractedDocumentViewController *)self currentPageContentViewController];
    [currentPageContentViewController3 setImage:v26];

    _graphicsQuality = v19;
  }

  trashBottomToolbarButton = [(ICDocCamExtractedDocumentViewController *)self trashBottomToolbarButton];
  [trashBottomToolbarButton setEnabled:0];

  retakeButtonItem = [(ICDocCamExtractedDocumentViewController *)self retakeButtonItem];
  [retakeButtonItem setEnabled:0];

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
  layer = [imageView layer];
  v32 = layer;
  if (layer)
  {
    [layer transform];
  }

  else
  {
    memset(&v78, 0, sizeof(v78));
  }

  currentPageContentViewController4 = [(ICDocCamExtractedDocumentViewController *)self currentPageContentViewController];
  [currentPageContentViewController4 zoomScale];
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

  if (_graphicsQuality == 100)
  {
    v49 = *MEMORY[0x277CDA328];
    v50 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
    [v50 setEnabled:1];
    [v50 setValue:MEMORY[0x277CBEC38] forKey:@"inputNormalizeEdges"];
    [v50 setValue:&unk_285C6D348 forKey:@"inputRadius"];
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice2 _graphicsQuality] == 100)
    {
      v52 = @"default";
    }

    else
    {
      v52 = @"low";
    }

    [v50 setValue:v52 forKey:@"inputQuality"];

    layer2 = [imageView layer];
    v83 = v50;
    v54 = [MEMORY[0x277CBEA60] arrayWithObjects:&v83 count:1];
    [layer2 setFilters:v54];

    layer3 = [imageView layer];
    [layer3 setShouldRasterize:1];

    v56 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"filters.gaussianBlur.inputRadius"];
    layer4 = [imageView layer];
    v58 = [layer4 valueForKeyPath:@"filters.gaussianBlur.inputRadius"];
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
    currentDevice3 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice3 _graphicsQuality] == 100)
    {
      v63 = @"default";
    }

    else
    {
      v63 = @"low";
    }

    [v61 setValue:v63 forKey:@"inputQuality"];

    layer5 = [imageView layer];
    v82 = v61;
    v65 = [MEMORY[0x277CBEA60] arrayWithObjects:&v82 count:1];
    [layer5 setFilters:v65];

    _graphicsQuality = 100;
    v30 = 0x277CD9000;
  }

  else
  {
    v56 = 0;
  }

  layer6 = [imageView layer];
  [layer6 setOpacity:0.0];

  v76 = v78;
  CATransform3DScale(&v77, &v76, 0.5, 0.5, 0.5);
  layer7 = [imageView layer];
  v76 = v77;
  [layer7 setTransform:&v76];

  animation = [MEMORY[0x277CD9E00] animation];
  [animation setDuration:0.28];
  if (_graphicsQuality == 100 && v56)
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
  [animation setAnimations:v72];

  layer8 = [imageView layer];
  [layer8 addAnimation:animation forKey:@"animGroup"];

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

- (void)showViewControllerAtIndex:(unint64_t)index animated:(BOOL)animated
{
  animatedCopy = animated;
  v16[1] = *MEMORY[0x277D85DE8];
  [(ICDocCamExtractedDocumentViewController *)self setPresentationPageIndex:?];
  documentInfoCollection = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  docInfos = [documentInfoCollection docInfos];
  v9 = [docInfos count];

  if (v9 > index)
  {
    objc_initWeak(&location, self);
    v10 = [(ICDocCamExtractedDocumentViewController *)self viewControllerAtIndex:index];
    pageViewController = [(ICDocCamExtractedDocumentViewController *)self pageViewController];
    v16[0] = v10;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __78__ICDocCamExtractedDocumentViewController_showViewControllerAtIndex_animated___block_invoke;
    v13[3] = &unk_278F92E88;
    objc_copyWeak(v14, &location);
    v14[1] = index;
    [pageViewController setViewControllers:v12 direction:0 animated:animatedCopy completion:v13];

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
  currentDocument = [(ICDocCamExtractedDocumentViewController *)self currentDocument];
  objc_initWeak(&location, self);
  [(ICDocCamExtractedDocumentViewController *)self setAdjustPageViewControllerForMarkup:1];
  if (currentDocument)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __68__ICDocCamExtractedDocumentViewController_startMarkupViewController__block_invoke;
    aBlock[3] = &unk_278F92EB0;
    aBlock[4] = self;
    v4 = _Block_copy(aBlock);
    delegate = [(ICDocCamExtractedDocumentViewController *)self delegate];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __68__ICDocCamExtractedDocumentViewController_startMarkupViewController__block_invoke_4;
    v6[3] = &unk_278F92ED8;
    objc_copyWeak(&v7, &location);
    [delegate extractedDocumentController:self startMarkupOnDocument:currentDocument inkStyle:1 startPresentBlock:v4 dismissCompletionBlock:v6];

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

- (id)truncatedString:(id)string clipLength:(unint64_t)length
{
  stringCopy = string;
  if ([stringCopy length] <= length)
  {
    v8 = stringCopy;
  }

  else
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [stringCopy substringToIndex:length];
    v8 = [v6 stringWithFormat:@"%@…", v7];
  }

  return v8;
}

- (void)pencilDownInZoomablePageContentViewController:(id)controller
{
  if ([(ICDocCamExtractedDocumentViewController *)self isShowingBarsForZoomablePageContentViewController:controller])
  {
    currentDocument = [(ICDocCamExtractedDocumentViewController *)self currentDocument];
    if (currentDocument)
    {
      v7 = currentDocument;
      delegate = [(ICDocCamExtractedDocumentViewController *)self delegate];
      v6 = objc_opt_respondsToSelector();

      currentDocument = v7;
      if (v6)
      {
        [(ICDocCamExtractedDocumentViewController *)self startMarkupViewController];
        currentDocument = v7;
      }
    }
  }
}

- (void)hideBarsForZoomablePageContentViewController:(id)controller
{
  controllerCopy = controller;
  if (![(ICDocCamExtractedDocumentViewController *)self barsShouldBeHidden])
  {
    [(ICDocCamExtractedDocumentViewController *)self setBarsShouldBeHidden:1];
    currentBackgroundColor = [(ICDocCamExtractedDocumentViewController *)self currentBackgroundColor];
    pageViewControllerContainerView = [(ICDocCamExtractedDocumentViewController *)self pageViewControllerContainerView];
    [pageViewControllerContainerView setBackgroundColor:currentBackgroundColor];

    v7 = MEMORY[0x277D75D18];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __88__ICDocCamExtractedDocumentViewController_hideBarsForZoomablePageContentViewController___block_invoke;
    v9[3] = &unk_278F92DE8;
    v9[4] = self;
    v10 = controllerCopy;
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

- (void)showBarsForZoomablePageContentViewController:(id)controller
{
  controllerCopy = controller;
  barsShouldBeHidden = [(ICDocCamExtractedDocumentViewController *)self barsShouldBeHidden];
  if (controllerCopy && barsShouldBeHidden)
  {
    [(ICDocCamExtractedDocumentViewController *)self setBarsShouldBeHidden:0];
    currentBackgroundColor = [(ICDocCamExtractedDocumentViewController *)self currentBackgroundColor];
    pageViewControllerContainerView = [(ICDocCamExtractedDocumentViewController *)self pageViewControllerContainerView];
    [pageViewControllerContainerView setBackgroundColor:currentBackgroundColor];

    navigationController = [(ICDocCamExtractedDocumentViewController *)self navigationController];
    [navigationController setNavigationBarHidden:0 animated:0];

    navigationController2 = [(ICDocCamExtractedDocumentViewController *)self navigationController];
    navigationBar = [navigationController2 navigationBar];
    [navigationBar setAlpha:0.0];

    pageViewController = [(ICDocCamExtractedDocumentViewController *)self pageViewController];
    view = [pageViewController view];
    [view setAccessibilityViewIsModal:0];

    v13 = MEMORY[0x277D75D18];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __88__ICDocCamExtractedDocumentViewController_showBarsForZoomablePageContentViewController___block_invoke;
    v14[3] = &unk_278F92DE8;
    v14[4] = self;
    v15 = controllerCopy;
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

- (void)switchBarVisibilityForZoomablePageContentViewController:(id)controller
{
  controllerCopy = controller;
  if ([(ICDocCamExtractedDocumentViewController *)self barsShouldBeHidden])
  {
    [(ICDocCamExtractedDocumentViewController *)self showBarsForZoomablePageContentViewController:controllerCopy];
  }

  else
  {
    [(ICDocCamExtractedDocumentViewController *)self hideBarsForZoomablePageContentViewController:controllerCopy];
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

- (id)pageViewController:(id)controller viewControllerBeforeViewController:(id)viewController
{
  pageIndex = [viewController pageIndex];
  v6 = 0;
  if (pageIndex && pageIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(ICDocCamExtractedDocumentViewController *)self viewControllerAtIndex:pageIndex - 1];
  }

  return v6;
}

- (id)pageViewController:(id)controller viewControllerAfterViewController:(id)viewController
{
  pageIndex = [viewController pageIndex];
  if (pageIndex == 0x7FFFFFFFFFFFFFFFLL || (v6 = pageIndex + 1, -[ICDocCamExtractedDocumentViewController documentInfoCollection](self, "documentInfoCollection"), v7 = objc_claimAutoreleasedReturnValue(), [v7 docInfos], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v7, v6 == v9))
  {
    v10 = 0;
  }

  else
  {
    v10 = [(ICDocCamExtractedDocumentViewController *)self viewControllerAtIndex:v6];
  }

  return v10;
}

- (void)setIsScrollingBetweenPages:(BOOL)pages
{
  pagesCopy = pages;
  self->_isScrollingBetweenPages = pages;
  thumbnailCollectionViewLayout = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionViewLayout];
  [thumbnailCollectionViewLayout setIsScrollingBetweenPages:pagesCopy];
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

  thumbnailCollectionViewLayout = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionViewLayout];
  movingItem = [thumbnailCollectionViewLayout movingItem];

  return movingItem;
}

- (BOOL)shouldDisableSharrow
{
  navigationController = [(ICDocCamExtractedDocumentViewController *)self navigationController];
  view = [navigationController view];
  dc_isInSecureWindow = [view dc_isInSecureWindow];

  return dc_isInSecureWindow;
}

- (double)normalizedPageViewControllerScrollPosition
{
  pageViewController = [(ICDocCamExtractedDocumentViewController *)self pageViewController];
  view = [pageViewController view];
  [view bounds];
  v6 = v5 + 16.0;

  pageViewControllerScrollView = [(ICDocCamExtractedDocumentViewController *)self pageViewControllerScrollView];
  [pageViewControllerScrollView contentOffset];
  v9 = v8 - v6;

  pageViewController2 = [(ICDocCamExtractedDocumentViewController *)self pageViewController];
  view2 = [pageViewController2 view];
  [view2 bounds];
  v13 = v9 / (v12 + 16.0);

  return v13;
}

- (id)viewControllerAtIndex:(unint64_t)index
{
  documentInfoCollection = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  docInfos = [documentInfoCollection docInfos];
  if (![docInfos count])
  {
    v10 = 0;
    goto LABEL_5;
  }

  documentInfoCollection2 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  docInfos2 = [documentInfoCollection2 docInfos];
  v9 = [docInfos2 count];

  if (v9 > index)
  {
    v10 = objc_alloc_init(ICDocCamZoomablePageContentViewController);
    v11 = [(ICDocCamExtractedDocumentViewController *)self croppedAndFilteredmageForDocumentAtIndex:index];
    [(ICDocCamZoomablePageContentViewController *)v10 setImage:v11];

    [(ICDocCamZoomablePageContentViewController *)v10 setPageIndex:index];
    [(ICDocCamZoomablePageContentViewController *)v10 setPageContentDelegate:self];
    documentInfoCollection = [(ICDocCamExtractedDocumentViewController *)self currentBackgroundColor];
    docInfos = [(ICDocCamZoomablePageContentViewController *)v10 view];
    [docInfos setBackgroundColor:documentInfoCollection];
LABEL_5:

    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (void)pageViewController:(id)controller willTransitionToViewControllers:(id)controllers
{
  v19 = *MEMORY[0x277D85DE8];
  controllersCopy = controllers;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [controllersCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(controllersCopy);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        currentBackgroundColor = [(ICDocCamExtractedDocumentViewController *)self currentBackgroundColor];
        view = [v10 view];
        [view setBackgroundColor:currentBackgroundColor];

        v13 = -[ICDocCamExtractedDocumentViewController croppedAndFilteredmageForDocumentAtIndex:](self, "croppedAndFilteredmageForDocumentAtIndex:", [v10 pageIndex]);
        [v10 setImage:v13];

        [v10 resetZoom];
        ++v9;
      }

      while (v7 != v9);
      v7 = [controllersCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  [(ICDocCamExtractedDocumentViewController *)self setIsScrollingBetweenPages:1];
}

- (void)pageViewController:(id)controller didFinishAnimating:(BOOL)animating previousViewControllers:(id)controllers transitionCompleted:(BOOL)completed
{
  completedCopy = completed;
  controllersCopy = controllers;
  if (completedCopy)
  {
    pageViewController = [(ICDocCamExtractedDocumentViewController *)self pageViewController];
    viewControllers = [pageViewController viewControllers];
    lastObject = [viewControllers lastObject];

    -[ICDocCamExtractedDocumentViewController setPresentationPageIndex:](self, "setPresentationPageIndex:", [lastObject pageIndex]);
    [(ICDocCamExtractedDocumentViewController *)self updatePageIndicatorForPageIndex:[(ICDocCamExtractedDocumentViewController *)self presentationPageIndex]];
    thumbnailCollectionViewLayout = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionViewLayout];
    [thumbnailCollectionViewLayout setInterPageScrollPosition:0.0];

    thumbnailCollectionViewLayout2 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionViewLayout];
    [thumbnailCollectionViewLayout2 setCurrentItem:-[ICDocCamExtractedDocumentViewController presentationPageIndex](self animated:{"presentationPageIndex"), 0}];

    [(ICDocCamExtractedDocumentViewController *)self updateImageViewAccessibilityForPageContentViewController:lastObject];
    LODWORD(thumbnailCollectionViewLayout2) = *MEMORY[0x277D76438];
    imageView = [lastObject imageView];
    accessibilityLabel = [imageView accessibilityLabel];
    UIAccessibilityPostNotification(thumbnailCollectionViewLayout2, accessibilityLabel);

    [(ICDocCamExtractedDocumentViewController *)self updateFilterButtonMenu];
    if ([controllersCopy count])
    {
      v15 = objc_opt_class();
      firstObject = [controllersCopy firstObject];
      v17 = DCCheckedDynamicCast(v15, firstObject);

      [v17 resetZoom];
    }
  }

  [(ICDocCamExtractedDocumentViewController *)self setIsScrollingBetweenPages:0];
}

- (void)setPresentationPageIndex:(int64_t)index
{
  documentInfoCollection = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  docInfos = [documentInfoCollection docInfos];
  v7 = [docInfos count];

  if (v7)
  {
    documentInfoCollection2 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
    docInfos2 = [documentInfoCollection2 docInfos];
    v10 = [docInfos2 count] - 1;

    if (v10 >= index)
    {
      indexCopy = index;
    }

    else
    {
      indexCopy = v10;
    }
  }

  else
  {
    indexCopy = 0;
  }

  self->_presentationPageIndex = indexCopy;

  [(ICDocCamExtractedDocumentViewController *)self updateFilterButtonMenu];
}

- (void)setCurrentThumbnailItem:(unint64_t)item animated:(BOOL)animated
{
  animatedCopy = animated;
  documentInfoCollection = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  docInfos = [documentInfoCollection docInfos];
  v9 = [docInfos count];

  if (v9 > item)
  {
    thumbnailCollectionViewLayout = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionViewLayout];
    [thumbnailCollectionViewLayout setCurrentItem:item animated:animatedCopy];
  }
}

- (void)updatePageIndicatorForPageIndex:(int64_t)index
{
  documentInfoCollection = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  docInfos = [documentInfoCollection docInfos];
  v7 = [docInfos count];

  if (v7 < 2)
  {
    v25 = &stru_285C55A80;
    goto LABEL_10;
  }

  if (([(UIViewController *)self dc_effectiveInterfaceOrientation]- 3) > 1)
  {
    goto LABEL_8;
  }

  view = [(ICDocCamExtractedDocumentViewController *)self view];
  window = [view window];
  if (([window dc_requiresCompactLandscapeIcons] & 1) == 0)
  {

    goto LABEL_8;
  }

  mode = [(ICDocCamExtractedDocumentViewController *)self mode];

  if (!mode)
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
  documentInfoCollection2 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  docInfos2 = [documentInfoCollection2 docInfos];
  v25 = [v11 localizedStringWithFormat:v13, index + 1, objc_msgSend(docInfos2, "count")];

LABEL_10:
  pageIndexLabel = [(ICDocCamExtractedDocumentViewController *)self pageIndexLabel];
  [pageIndexLabel setText:v25];

  [(ICDocCamExtractedDocumentViewController *)self updateTitleView];
  documentInfoCollection3 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  docInfos3 = [documentInfoCollection3 docInfos];
  v19 = [docInfos3 count];

  if (v19 > index)
  {
    documentInfoCollection4 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
    docInfos4 = [documentInfoCollection4 docInfos];
    v22 = [docInfos4 objectAtIndexedSubscript:index];
    currentFilter = [v22 currentFilter];
    currentDocument = [(ICDocCamExtractedDocumentViewController *)self currentDocument];
    [currentDocument setCurrentFilter:currentFilter];
  }
}

- (void)changePage:(int64_t)page
{
  v13[1] = *MEMORY[0x277D85DE8];
  pageViewController = [(ICDocCamExtractedDocumentViewController *)self pageViewController];
  viewControllers = [pageViewController viewControllers];
  v7 = [viewControllers objectAtIndex:0];
  pageIndex = [v7 pageIndex];

  if (page)
  {
    v9 = pageIndex - 1;
  }

  else
  {
    v9 = pageIndex + 1;
  }

  v10 = [(ICDocCamExtractedDocumentViewController *)self viewControllerAtIndex:v9];
  if (v10)
  {
    pageViewController2 = [(ICDocCamExtractedDocumentViewController *)self pageViewController];
    v13[0] = v10;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    [pageViewController2 setViewControllers:v12 direction:page animated:0 completion:0];
  }
}

- (id)imageForDocInfo:(id)info newFilter:(signed __int16)filter
{
  filterCopy = filter;
  infoCopy = info;
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
  selfCopy = self;
  v7 = infoCopy;
  v22 = v7;
  v24 = &v25;
  dc_performBlockOnMainThread(&v17);
  v8 = v32;
  v9 = v32[5];
  v10 = v8[5];
  if (v10)
  {
    v11 = +[ICDocCamImageFilters filteredImage:orientation:imageFilterType:](ICDocCamImageFilters, "filteredImage:orientation:imageFilterType:", v10, [v7 currentOrientation], filterCopy);

    if (v26[5])
    {
      v12 = [ICDocCamImageFilters imageWithRGBColorspaceFromImage:v11];

      dc_JPEGData = [v12 dc_JPEGData];
      v14 = MEMORY[0x277D755B8];
      v15 = [DCMarkupUtilities imageDataWithMarkupModelData:v26[5] sourceImageData:dc_JPEGData];
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

- (BOOL)filterViewControllerDidSelectFilter:(signed __int16)filter
{
  filterCopy = filter;
  if ([(ICDocCamExtractedDocumentViewController *)self shouldDisableActions])
  {
    return 0;
  }

  presentationPageIndex = [(ICDocCamExtractedDocumentViewController *)self presentationPageIndex];
  v7 = [(ICDocCamExtractedDocumentViewController *)self croppedButNotFilteredImageForDocumentAtIndex:presentationPageIndex];
  documentInfoCollection = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  docInfos = [documentInfoCollection docInfos];
  if (presentationPageIndex >= [docInfos count])
  {
    v12 = 0;
  }

  else
  {
    documentInfoCollection2 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
    docInfos2 = [documentInfoCollection2 docInfos];
    v12 = [docInfos2 objectAtIndexedSubscript:presentationPageIndex];
  }

  v5 = 0;
  if (v7 && v12)
  {
    if ([v12 currentFilter] == filterCopy)
    {
      v5 = 0;
    }

    else
    {
      v13 = [(ICDocCamExtractedDocumentViewController *)self imageForDocInfo:v12 newFilter:filterCopy];
      [(ICDocCamExtractedDocumentViewController *)self updateImage:v13 document:v12 withFilterType:filterCopy];
      documentInfoCollection3 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
      [documentInfoCollection3 bumpModificationDate];

      v5 = 1;
    }
  }

  return v5;
}

- (BOOL)filterViewControllerCanApplyToAll:(signed __int16)all
{
  if ([(ICDocCamExtractedDocumentViewController *)self shouldDisableActions])
  {
    return 0;
  }

  documentInfoCollection = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  docInfos = [documentInfoCollection docInfos];
  v7 = [docInfos count];

  if (v7 < 2)
  {
    return 0;
  }

  documentInfoCollection2 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  docInfos2 = [documentInfoCollection2 docInfos];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__ICDocCamExtractedDocumentViewController_filterViewControllerCanApplyToAll___block_invoke;
  v12[3] = &__block_descriptor_34_e37_B32__0__ICDocCamDocumentInfo_8Q16_B24l;
  allCopy = all;
  v8 = [docInfos2 indexOfObjectPassingTest:v12] != 0x7FFFFFFFFFFFFFFFLL;

  return v8;
}

BOOL __77__ICDocCamExtractedDocumentViewController_filterViewControllerCanApplyToAll___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = *(a1 + 32) != [a2 currentFilter];
  *a4 = result;
  return result;
}

- (BOOL)filterViewControllerApplyToAll:(signed __int16)all
{
  allCopy = all;
  v29 = *MEMORY[0x277D85DE8];
  if ([(ICDocCamExtractedDocumentViewController *)self shouldDisableActions])
  {
    return 0;
  }

  else
  {
    v5 = [(ICDocCamExtractedDocumentViewController *)self filterViewControllerDidSelectFilter:allCopy];
    if ([(ICDocCamExtractedDocumentViewController *)self mode])
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      documentInfoCollection = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
      docInfos = [documentInfoCollection docInfos];

      v8 = [(DCLongRunningTaskController *)docInfos countByEnumeratingWithState:&v22 objects:v28 count:16];
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
              objc_enumerationMutation(docInfos);
            }

            v12 = *(*(&v22 + 1) + 8 * i);
            if ([v12 currentFilter] != allCopy)
            {
              v13 = docInfos;
              delegate = [(ICDocCamExtractedDocumentViewController *)self delegate];
              v15 = objc_opt_respondsToSelector();

              if (v15)
              {
                [v12 setCurrentFilter:allCopy];
                delegate2 = [(ICDocCamExtractedDocumentViewController *)self delegate];
                [delegate2 extractedDocumentControllerDidApplyFilter:allCopy forDocument:v12];

                v5 = 1;
              }

              documentInfoCollection2 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
              [documentInfoCollection2 bumpModificationDate];

              docInfos = v13;
            }
          }

          v9 = [(DCLongRunningTaskController *)docInfos countByEnumeratingWithState:&v22 objects:v28 count:16];
        }

        while (v9);
      }
    }

    else
    {
      v18 = [DCLongRunningTaskController alloc];
      view = [(ICDocCamExtractedDocumentViewController *)self view];
      window = [view window];
      docInfos = [(DCLongRunningTaskController *)v18 initWithWindow:window intervalBeforeOpeningProgressDialog:0.5];

      [(DCLongRunningTaskController *)docInfos setProgressToStringTransformer:&__block_literal_global_705];
      [(DCLongRunningTaskController *)docInfos setViewControllerToPresentFrom:self];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __74__ICDocCamExtractedDocumentViewController_filterViewControllerApplyToAll___block_invoke_2;
      v26[3] = &unk_278F92F90;
      v26[4] = self;
      v27 = allCopy;
      [(DCLongRunningTaskController *)docInfos startTask:v26 completionBlock:0];
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

- (void)showPrimaryControllerForNotes:(id)notes animated:(BOOL)animated
{
  animatedCopy = animated;
  notesCopy = notes;
  if ([notesCopy displayMode] == 1)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    applicationState = [mEMORY[0x277D75128] applicationState];

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __82__ICDocCamExtractedDocumentViewController_showPrimaryControllerForNotes_animated___block_invoke;
    aBlock[3] = &unk_278F92DE8;
    aBlock[4] = self;
    v16 = notesCopy;
    v9 = _Block_copy(aBlock);
    v10 = v9;
    if (applicationState)
    {
      v11 = 1;
    }

    else
    {
      v11 = !animatedCopy;
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

- (void)collectionNameTapped:(id)tapped
{
  collectionTitleButton = [(ICDocCamExtractedDocumentViewController *)self collectionTitleButton];
  v5 = [collectionTitleButton titleForState:0];

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
  thumbnailCollectionView = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
  collectionViewLayout = [thumbnailCollectionView collectionViewLayout];
  v6 = DCCheckedDynamicCast(v3, collectionViewLayout);

  return v6;
}

- (CGSize)collectionView:(id)view imageSizeAtIndex:(int64_t)index
{
  [(ICDocCamExtractedDocumentViewController *)self imageSizeForDocumentAtIndex:index];
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGRect)targetViewRect
{
  thumbnailCollectionView = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
  [thumbnailCollectionView frame];
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

- (void)respondToImageLongPressGesture:(id)gesture
{
  gestureCopy = gesture;
  currentImageView = [(ICDocCamExtractedDocumentViewController *)self currentImageView];
  [gestureCopy locationInView:currentImageView];
  v7 = v6;
  v9 = v8;

  state = [gestureCopy state];
  if (state == 1)
  {
    currentImageView2 = [(ICDocCamExtractedDocumentViewController *)self currentImageView];
    [currentImageView2 bounds];
    v23.x = v7;
    v23.y = v9;
    v12 = CGRectContainsPoint(v24, v23);

    if (v12)
    {
      mEMORY[0x277D75718] = [MEMORY[0x277D75718] sharedMenuController];
      v13 = DCTSDRectWithCenterAndSize(v7, v9, 10.0);
      v15 = v14;
      v17 = v16;
      v19 = v18;
      currentImageView3 = [(ICDocCamExtractedDocumentViewController *)self currentImageView];
      [mEMORY[0x277D75718] showMenuFromView:currentImageView3 rect:{v13, v15, v17, v19}];

      [(ICDocCamExtractedDocumentViewController *)self setMenuControllerTargetRect:v13, v15, v17, v19];
    }
  }
}

- (void)share:(id)share
{
  delegate = [(ICDocCamExtractedDocumentViewController *)self delegate];
  currentDocument = [(ICDocCamExtractedDocumentViewController *)self currentDocument];
  [(ICDocCamExtractedDocumentViewController *)self menuControllerTargetRect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  currentImageView = [(ICDocCamExtractedDocumentViewController *)self currentImageView];
  [delegate extractedDocumentControllerDidSelectShareFromMenuForDocument:currentDocument sourceRect:currentImageView sourceView:{v6, v8, v10, v12}];
}

- (void)copy:(id)copy
{
  delegate = [(ICDocCamExtractedDocumentViewController *)self delegate];
  currentDocument = [(ICDocCamExtractedDocumentViewController *)self currentDocument];
  [delegate extractedDocumentControllerDidSelectCopyFromMenuForDocument:currentDocument];
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  currentPageContentViewController = [(ICDocCamExtractedDocumentViewController *)self currentPageContentViewController];
  analysisInteraction = [currentPageContentViewController analysisInteraction];

  if (([analysisInteraction hasActiveTextSelection] & 1) == 0 && !-[ICDocCamExtractedDocumentViewController shouldDisableActions](self, "shouldDisableActions"))
  {
    if (sel_copy_ == action || ![(ICDocCamExtractedDocumentViewController *)self shouldDisableSharrow]&& sel_share_ == action)
    {
      delegate = [(ICDocCamExtractedDocumentViewController *)self delegate];
      v9 = objc_opt_respondsToSelector();

      goto LABEL_4;
    }

    if (sel_delete_ == action && [(ICDocCamExtractedDocumentViewController *)self canPerformAction:sel_copy_ withSender:senderCopy])
    {
      v9 = [(ICDocCamExtractedDocumentViewController *)self mode]!= 2;
      goto LABEL_4;
    }
  }

  v9 = 0;
LABEL_4:

  return v9 & 1;
}

- (void)respondToThumbnailLongPressGesture:(id)gesture
{
  gestureCopy = gesture;
  thumbnailCollectionView = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
  v5 = [thumbnailCollectionView numberOfItemsInSection:0];

  if (v5 >= 2 && [(ICDocCamExtractedDocumentViewController *)self mode]== 1)
  {
    thumbnailCollectionView2 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
    [gestureCopy locationInView:thumbnailCollectionView2];
    v8 = v7;
    v10 = v9;

    thumbnailCollectionView3 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
    v12 = [thumbnailCollectionView3 indexPathForItemAtPoint:{v8, v10}];

    if (v12)
    {
      thumbnailCollectionView4 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
      v14 = [thumbnailCollectionView4 cellForItemAtIndexPath:v12];
    }

    else
    {
      v14 = 0;
    }

    thumbnailCollectionView5 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
    v16 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:0];
    v17 = [thumbnailCollectionView5 cellForItemAtIndexPath:v16];

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
    thumbnailCollectionView6 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
    [thumbnailCollectionView6 contentOffset];
    v22 = v21;

    thumbnailCollectionView7 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
    [thumbnailCollectionView7 frame];
    v25 = v22 + v24;

    thumbnailCollectionView8 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
    v27 = v5 - 1;
    v28 = [MEMORY[0x277CCAA70] indexPathForItem:v5 - 1 inSection:0];
    v29 = [thumbnailCollectionView8 cellForItemAtIndexPath:v28];

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

    state = [gestureCopy state];
    switch(state)
    {
      case 3:
        thumbnailCollectionView9 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
        [thumbnailCollectionView9 endInteractiveMovement];
        break;
      case 2:
        movingIndexPath = [(ICDocCamExtractedDocumentViewController *)self movingIndexPath];
        if ([movingIndexPath item] || (-[ICDocCamExtractedDocumentViewController movingXPosition](self, "movingXPosition"), v25 >= v35))
        {
          movingIndexPath2 = [(ICDocCamExtractedDocumentViewController *)self movingIndexPath];
          if ([movingIndexPath2 item] == v27)
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
          thumbnailCollectionView10 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
          [thumbnailCollectionView10 updateInteractiveMovementTargetPosition:{v25, v42}];

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
          thumbnailCollectionViewLayout = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionViewLayout];
          [thumbnailCollectionViewLayout setMovingItem:1];

          thumbnailCollectionView11 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
          [thumbnailCollectionView11 beginInteractiveMovementForItemAtIndexPath:v12];

          -[ICDocCamExtractedDocumentViewController setLastAXProposedIndexForReordering:](self, "setLastAXProposedIndexForReordering:", [v12 item]);
        }

        goto LABEL_30;
      default:
        thumbnailCollectionView9 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
        [thumbnailCollectionView9 cancelInteractiveMovement];
        break;
    }

    thumbnailCollectionViewLayout2 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionViewLayout];
    [thumbnailCollectionViewLayout2 setMovingItem:0];

    [(ICDocCamExtractedDocumentViewController *)self setMovingIndexPath:0];
    [(ICDocCamExtractedDocumentViewController *)self setCurrentThumbnailItem:[(ICDocCamExtractedDocumentViewController *)self presentationPageIndex] animated:1];
    goto LABEL_30;
  }

LABEL_31:
}

- (void)handleAccessibilityLongPressOnCollectionTitle:(id)title
{
  titleCopy = title;
  if (DCAccessibilityAccessibilityLargerTextSizesEnabled())
  {
    collectionTitleButton = [(ICDocCamExtractedDocumentViewController *)self collectionTitleButton];
    currentTitle = [collectionTitleButton currentTitle];
    v6 = [(ICDocCamExtractedDocumentViewController *)self truncatedString:currentTitle clipLength:48];

    documentInfoCollection = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
    docInfos = [documentInfoCollection docInfos];
    v9 = [docInfos count];

    if (v9 > 1)
    {
      v11 = MEMORY[0x277CCACA8];
      pageIndexLabel = [(ICDocCamExtractedDocumentViewController *)self pageIndexLabel];
      text = [pageIndexLabel text];
      v10 = [v11 stringWithFormat:@"%@\n%@", v6, text];
    }

    else
    {
      v10 = v6;
    }

    hudItemForAccessibilityLargerText = [(ICDocCamExtractedDocumentViewController *)self hudItemForAccessibilityLargerText];

    if (!hudItemForAccessibilityLargerText)
    {
      v15 = objc_alloc(MEMORY[0x277D750B0]);
      v16 = [v15 initWithTitle:v10 image:0 imageInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
      [(ICDocCamExtractedDocumentViewController *)self setHudItemForAccessibilityLargerText:v16];
    }

    state = [titleCopy state];
    if ((state - 3) >= 2)
    {
      if (state == 1)
      {
        hudItemForAccessibilityLargerText2 = [(ICDocCamExtractedDocumentViewController *)self hudItemForAccessibilityLargerText];
        [hudItemForAccessibilityLargerText2 setTitle:v10];

        hudItemForAccessibilityLargerText3 = [(ICDocCamExtractedDocumentViewController *)self hudItemForAccessibilityLargerText];
        [(ICDocCamExtractedDocumentViewController *)self _showAccessibilityHUDItem:hudItemForAccessibilityLargerText3];
      }
    }

    else
    {
      [(ICDocCamExtractedDocumentViewController *)self _dismissAccessibilityHUD];
    }
  }
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (pathCopy && ![(ICDocCamExtractedDocumentViewController *)self isPageViewControllerScrolled])
  {
    -[ICDocCamExtractedDocumentViewController setCurrentThumbnailItem:animated:](self, "setCurrentThumbnailItem:animated:", [pathCopy item], 1);
    -[ICDocCamExtractedDocumentViewController showViewControllerAtIndex:animated:](self, "showViewControllerAtIndex:animated:", [pathCopy item], 0);
    [(ICDocCamExtractedDocumentViewController *)self updatePageIndicatorForPageIndex:[(ICDocCamExtractedDocumentViewController *)self presentationPageIndex]];
  }
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  -[ICDocCamExtractedDocumentViewController imageSizeForDocumentAtIndex:](self, "imageSizeForDocumentAtIndex:", [path item]);

  [(ICDocCamExtractedDocumentViewController *)self frameSizeForImageSize:?];
  result.height = v7;
  result.width = v6;
  return result;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection:view];
  docInfos = [v4 docInfos];
  v6 = [docInfos count];

  return v6;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"ICDocCamExtractedDocumentThumbnailCell" forIndexPath:pathCopy];
  documentInfoCollection = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  docInfos = [documentInfoCollection docInfos];
  if (docInfos)
  {
    v11 = docInfos;
    documentInfoCollection2 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
    docInfos2 = [documentInfoCollection2 docInfos];
    v14 = [docInfos2 count];

    if (v14)
    {
      item = [pathCopy item];
      documentInfoCollection3 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
      docInfos3 = [documentInfoCollection3 docInfos];
      v18 = [docInfos3 count] - 1;

      if (item <= v18)
      {
        item2 = [pathCopy item];
      }

      else
      {
        documentInfoCollection4 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
        docInfos4 = [documentInfoCollection4 docInfos];
        item2 = [docInfos4 count] - 1;
      }

      delegate = [(ICDocCamExtractedDocumentViewController *)self delegate];
      v23 = objc_opt_respondsToSelector();

      if (v23)
      {
        [viewCopy bounds];
        v25 = v24;
        objc_initWeak(&v38, self);
        delegate2 = [(ICDocCamExtractedDocumentViewController *)self delegate];
        documentInfoCollection5 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
        docInfos5 = [documentInfoCollection5 docInfos];
        v29 = [docInfos5 objectAtIndexedSubscript:item2];
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __81__ICDocCamExtractedDocumentViewController_collectionView_cellForItemAtIndexPath___block_invoke;
        v40[3] = &unk_278F93008;
        objc_copyWeak(&v42, &v38);
        v41 = v8;
        [delegate2 extractedDocumentControllerLoadThumbnailForDocument:v29 size:v40 completionBlock:{v25, v25}];

        objc_destroyWeak(&v42);
        objc_destroyWeak(&v38);
      }

      else
      {
        documentInfoCollection6 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
        docInfos6 = [documentInfoCollection6 docInfos];
        v32 = [docInfos6 objectAtIndexedSubscript:item2];
        croppedAndFilteredImageUUID = [v32 croppedAndFilteredImageUUID];

        imageCache = [(ICDocCamExtractedDocumentViewController *)self imageCache];
        v35 = [imageCache getImage:croppedAndFilteredImageUUID];

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
    contentView = [v8 contentView];
    v38 = v39;
    [contentView setTransform:&v38];
  }

  return v8;
}

void __81__ICDocCamExtractedDocumentViewController_collectionView_cellForItemAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setImage:v3 forCell:*(a1 + 32) useResizedImage:1];
}

- (void)collectionView:(id)view moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  viewCopy = view;
  pathCopy = path;
  indexPathCopy = indexPath;
  item = [pathCopy item];
  item2 = [indexPathCopy item];
  if (item2 == item)
  {
    goto LABEL_14;
  }

  v13 = item2;
  documentInfoCollection = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  docInfos = [documentInfoCollection docInfos];
  v16 = [docInfos objectAtIndexedSubscript:item];

  documentInfoCollection2 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  docInfos2 = [documentInfoCollection2 docInfos];
  [docInfos2 removeObjectAtIndex:item];

  documentInfoCollection3 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  docInfos3 = [documentInfoCollection3 docInfos];
  [docInfos3 insertObject:v16 atIndex:v13];

  presentationPageIndex = [(ICDocCamExtractedDocumentViewController *)self presentationPageIndex];
  v22 = v13;
  if (item != presentationPageIndex)
  {
    if (item < [(ICDocCamExtractedDocumentViewController *)self presentationPageIndex]&& v13 >= [(ICDocCamExtractedDocumentViewController *)self presentationPageIndex])
    {
      v23 = -1;
    }

    else
    {
      if (item <= [(ICDocCamExtractedDocumentViewController *)self presentationPageIndex]|| v13 > [(ICDocCamExtractedDocumentViewController *)self presentationPageIndex])
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
  delegate = [(ICDocCamExtractedDocumentViewController *)self delegate];
  v25 = objc_opt_respondsToSelector();

  if (v25)
  {
    delegate2 = [(ICDocCamExtractedDocumentViewController *)self delegate];
    documentInfoCollection4 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
    docInfos4 = [documentInfoCollection4 docInfos];
    v29 = [docInfos4 objectAtIndexedSubscript:item];
    [delegate2 extractedDocumentControllerDidMovePageFromIndex:item toIndex:v13 forDocument:v29];
  }

  documentInfoCollection5 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  [documentInfoCollection5 bumpModificationDate];

  objc_initWeak(&location, self);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __90__ICDocCamExtractedDocumentViewController_collectionView_moveItemAtIndexPath_toIndexPath___block_invoke;
  v31[3] = &unk_278F93030;
  objc_copyWeak(&v34, &location);
  v32 = pathCopy;
  v33 = indexPathCopy;
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

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  thumbnailCollectionView = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];

  if (thumbnailCollectionView == draggingCopy)
  {
    thumbnailCollectionViewLayout = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionViewLayout];
    [thumbnailCollectionViewLayout setIsScrubbing:1];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  thumbnailCollectionView = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
  if (thumbnailCollectionView == scrollCopy && ![(ICDocCamExtractedDocumentViewController *)self isScrollingBetweenPages])
  {
    isDragging = [scrollCopy isDragging];

    if (isDragging)
    {
      thumbnailCollectionView2 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
      [thumbnailCollectionView2 frame];
      v14 = v13 * 0.5;
      [scrollCopy contentOffset];
      v16 = v15 + v14;
      thumbnailCollectionView3 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
      [thumbnailCollectionView3 frame];
      v19 = v18 * 0.5;
      [scrollCopy contentOffset];
      v21 = v20 + v19;

      thumbnailCollectionView4 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
      thumbnailCollectionViewLayout = [thumbnailCollectionView4 indexPathForItemAtPoint:{v16, v21}];

      if (thumbnailCollectionViewLayout)
      {
        item = [thumbnailCollectionViewLayout item];
        if (item != 0x7FFFFFFFFFFFFFFFLL)
        {
          v24 = item;
          if (item != [(ICDocCamExtractedDocumentViewController *)self presentationPageIndex])
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

  pageViewControllerScrollView = [(ICDocCamExtractedDocumentViewController *)self pageViewControllerScrollView];

  v6 = scrollCopy;
  if (pageViewControllerScrollView == scrollCopy)
  {
    isScrollingBetweenPages = [(ICDocCamExtractedDocumentViewController *)self isScrollingBetweenPages];
    v6 = scrollCopy;
    if (isScrollingBetweenPages)
    {
      effectiveUserInterfaceLayoutDirection = [scrollCopy effectiveUserInterfaceLayoutDirection];
      thumbnailCollectionViewLayout = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionViewLayout];
      [(ICDocCamExtractedDocumentViewController *)self normalizedPageViewControllerScrollPosition];
      if (effectiveUserInterfaceLayoutDirection == 1)
      {
        v10 = -v10;
      }

      [thumbnailCollectionViewLayout setInterPageScrollPosition:v10];
LABEL_9:

      v6 = scrollCopy;
    }
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  draggingCopy = dragging;
  thumbnailCollectionView = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];

  if (thumbnailCollectionView == draggingCopy && !decelerate)
  {
    thumbnailCollectionView2 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
    [thumbnailCollectionView2 frame];
    v9 = v8 * 0.5;
    [draggingCopy contentOffset];
    v11 = v10 + v9;
    thumbnailCollectionView3 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
    [thumbnailCollectionView3 frame];
    v14 = v13 * 0.5;
    [draggingCopy contentOffset];
    v16 = v15 + v14;

    thumbnailCollectionView4 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
    v18 = [thumbnailCollectionView4 indexPathForItemAtPoint:{v11, v16}];

    if (v18)
    {
      item = [v18 item];
      if (item != [(ICDocCamExtractedDocumentViewController *)self presentationPageIndex]&& !UIAccessibilityIsVoiceOverRunning())
      {
        -[ICDocCamExtractedDocumentViewController showViewControllerAtIndex:animated:](self, "showViewControllerAtIndex:animated:", [v18 item], 1);
        [(ICDocCamExtractedDocumentViewController *)self updatePageIndicatorForPageIndex:[(ICDocCamExtractedDocumentViewController *)self presentationPageIndex]];
      }
    }

    [(ICDocCamExtractedDocumentViewController *)self setCurrentThumbnailItem:[(ICDocCamExtractedDocumentViewController *)self presentationPageIndex] animated:1];
    thumbnailCollectionViewLayout = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionViewLayout];
    [thumbnailCollectionViewLayout setIsScrubbing:0];
  }
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  thumbnailCollectionView = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];

  v5 = deceleratingCopy;
  if (thumbnailCollectionView == deceleratingCopy)
  {
    thumbnailCollectionView2 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
    [thumbnailCollectionView2 frame];
    v8 = v7 * 0.5;
    [deceleratingCopy contentOffset];
    v10 = v9 + v8;
    thumbnailCollectionView3 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
    [thumbnailCollectionView3 frame];
    v13 = v12 * 0.5;
    [deceleratingCopy contentOffset];
    v15 = v14 + v13;

    thumbnailCollectionView4 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
    v17 = [thumbnailCollectionView4 indexPathForItemAtPoint:{v10, v15}];

    if (v17)
    {
      item = [v17 item];
      if (item != [(ICDocCamExtractedDocumentViewController *)self presentationPageIndex]&& !UIAccessibilityIsVoiceOverRunning())
      {
        -[ICDocCamExtractedDocumentViewController showViewControllerAtIndex:animated:](self, "showViewControllerAtIndex:animated:", [v17 item], 0);
        [(ICDocCamExtractedDocumentViewController *)self updatePageIndicatorForPageIndex:[(ICDocCamExtractedDocumentViewController *)self presentationPageIndex]];
      }
    }

    [(ICDocCamExtractedDocumentViewController *)self setCurrentThumbnailItem:[(ICDocCamExtractedDocumentViewController *)self presentationPageIndex] animated:1];
    thumbnailCollectionViewLayout = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionViewLayout];
    [thumbnailCollectionViewLayout setIsScrubbing:0];

    v5 = deceleratingCopy;
  }
}

- (void)_pageViewControllerDidFinishTransitions:(id)transitions
{
  v16 = *MEMORY[0x277D85DE8];
  thumbnailCollectionViewLayout = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionViewLayout];
  [thumbnailCollectionViewLayout invalidateLayout];

  [(ICDocCamExtractedDocumentViewController *)self setIsScrollingBetweenPages:0];
  [(ICDocCamExtractedDocumentViewController *)self setCurrentThumbnailItem:[(ICDocCamExtractedDocumentViewController *)self presentationPageIndex] animated:0];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  documentsToUpdateWhenScrollingStops = [(ICDocCamExtractedDocumentViewController *)self documentsToUpdateWhenScrollingStops];
  v6 = [documentsToUpdateWhenScrollingStops countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(documentsToUpdateWhenScrollingStops);
        }

        [(ICDocCamExtractedDocumentViewController *)self updateDocumentImage:*(*(&v11 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [documentsToUpdateWhenScrollingStops countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  documentsToUpdateWhenScrollingStops2 = [(ICDocCamExtractedDocumentViewController *)self documentsToUpdateWhenScrollingStops];
  [documentsToUpdateWhenScrollingStops2 removeAllObjects];
}

- (void)setupBottomToolbar
{
  v59[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D75A68]);
  [(ICDocCamExtractedDocumentViewController *)self setButtonStackView:v3];

  buttonStackView = [(ICDocCamExtractedDocumentViewController *)self buttonStackView];
  [buttonStackView setTranslatesAutoresizingMaskIntoConstraints:0];

  buttonStackView2 = [(ICDocCamExtractedDocumentViewController *)self buttonStackView];
  [buttonStackView2 setAxis:0];

  buttonStackView3 = [(ICDocCamExtractedDocumentViewController *)self buttonStackView];
  [buttonStackView3 setAlignment:3];

  buttonStackView4 = [(ICDocCamExtractedDocumentViewController *)self buttonStackView];
  [buttonStackView4 setDistribution:1];

  +[_TtC14DocumentCamera22DCLiquidGlassConstants editorBottomToolbarInterItemSpacing];
  v9 = v8;
  buttonStackView5 = [(ICDocCamExtractedDocumentViewController *)self buttonStackView];
  [buttonStackView5 setSpacing:v9];

  v11 = [DCLabelledButton alloc];
  v12 = [DCLocalization localizedStringForKey:@"Add scan" value:@"Add scan" table:@"Localizable"];
  v13 = [(DCLabelledButton *)v11 initWithSymbolName:@"plus.circle" subtitle:v12];
  [(ICDocCamExtractedDocumentViewController *)self setAddLabelledButton:v13];

  addLabelledButton = [(ICDocCamExtractedDocumentViewController *)self addLabelledButton];
  [addLabelledButton addTarget:self action:sel_addImageAction_ forControlEvents:64];

  v15 = [DCLabelledButton alloc];
  v16 = [DCLocalization localizedStringForKey:@"Adjust" value:@"Adjust" table:@"Localizable"];
  v17 = [(DCLabelledButton *)v15 initWithSymbolName:@"skew" subtitle:v16];
  [(ICDocCamExtractedDocumentViewController *)self setRecropBottomToolbarButton:v17];

  recropBottomToolbarButton = [(ICDocCamExtractedDocumentViewController *)self recropBottomToolbarButton];
  [recropBottomToolbarButton addTarget:self action:sel_recropButtonPressed_ forControlEvents:64];

  v19 = [DCLabelledButton alloc];
  v20 = [DCLocalization localizedStringForKey:@"Filters" value:@"Filters" table:@"Localizable"];
  v21 = [(DCLabelledButton *)v19 initWithSymbolName:@"camera.filters" subtitle:v20];
  [(ICDocCamExtractedDocumentViewController *)self setFilterBottomToolbarButton:v21];

  v22 = [DCLabelledButton alloc];
  v23 = [DCLocalization localizedStringForKey:@"Rotate" value:@"Rotate" table:@"Localizable"];
  v24 = [(DCLabelledButton *)v22 initWithSymbolName:@"rotate.left" subtitle:v23];
  [(ICDocCamExtractedDocumentViewController *)self setRotateBottomToolbarButton:v24];

  rotateBottomToolbarButton = [(ICDocCamExtractedDocumentViewController *)self rotateBottomToolbarButton];
  [rotateBottomToolbarButton addTarget:self action:sel_rotateAction_ forControlEvents:64];

  v26 = [DCLabelledButton alloc];
  v27 = [DCLocalization localizedStringForKey:@"Delete" value:@"Delete" table:@"Localizable"];
  v28 = [(DCLabelledButton *)v26 initWithSymbolName:@"trash" subtitle:v27];
  [(ICDocCamExtractedDocumentViewController *)self setTrashBottomToolbarButton:v28];

  trashBottomToolbarButton = [(ICDocCamExtractedDocumentViewController *)self trashBottomToolbarButton];
  [trashBottomToolbarButton addTarget:self action:sel_deleteButtonAction_ forControlEvents:64];

  v30 = [DCLabelledButton alloc];
  v31 = [DCLocalization localizedStringForKey:@"Share" value:@"Share" table:@"Localizable"];
  v32 = [(DCLabelledButton *)v30 initWithSymbolName:@"square.and.arrow.up" subtitle:v31];
  [(ICDocCamExtractedDocumentViewController *)self setActionLabelledButton:v32];

  actionLabelledButton = [(ICDocCamExtractedDocumentViewController *)self actionLabelledButton];
  [actionLabelledButton addTarget:self action:sel_shareAction_ forControlEvents:64];

  buttonStackView6 = [(ICDocCamExtractedDocumentViewController *)self buttonStackView];
  addLabelledButton2 = [(ICDocCamExtractedDocumentViewController *)self addLabelledButton];
  [buttonStackView6 addArrangedSubview:addLabelledButton2];

  buttonStackView7 = [(ICDocCamExtractedDocumentViewController *)self buttonStackView];
  recropBottomToolbarButton2 = [(ICDocCamExtractedDocumentViewController *)self recropBottomToolbarButton];
  [buttonStackView7 addArrangedSubview:recropBottomToolbarButton2];

  buttonStackView8 = [(ICDocCamExtractedDocumentViewController *)self buttonStackView];
  filterBottomToolbarButton = [(ICDocCamExtractedDocumentViewController *)self filterBottomToolbarButton];
  [buttonStackView8 addArrangedSubview:filterBottomToolbarButton];

  buttonStackView9 = [(ICDocCamExtractedDocumentViewController *)self buttonStackView];
  rotateBottomToolbarButton2 = [(ICDocCamExtractedDocumentViewController *)self rotateBottomToolbarButton];
  [buttonStackView9 addArrangedSubview:rotateBottomToolbarButton2];

  buttonStackView10 = [(ICDocCamExtractedDocumentViewController *)self buttonStackView];
  trashBottomToolbarButton2 = [(ICDocCamExtractedDocumentViewController *)self trashBottomToolbarButton];
  [buttonStackView10 addArrangedSubview:trashBottomToolbarButton2];

  view = [(ICDocCamExtractedDocumentViewController *)self view];
  buttonStackView11 = [(ICDocCamExtractedDocumentViewController *)self buttonStackView];
  [view addSubview:buttonStackView11];

  v55 = MEMORY[0x277CCAAD0];
  buttonStackView12 = [(ICDocCamExtractedDocumentViewController *)self buttonStackView];
  centerXAnchor = [buttonStackView12 centerXAnchor];
  view2 = [(ICDocCamExtractedDocumentViewController *)self view];
  centerXAnchor2 = [view2 centerXAnchor];
  v47 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v59[0] = v47;
  buttonStackView13 = [(ICDocCamExtractedDocumentViewController *)self buttonStackView];
  bottomAnchor = [buttonStackView13 bottomAnchor];
  view3 = [(ICDocCamExtractedDocumentViewController *)self view];
  safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
  v53 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v59[1] = v53;
  v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
  [v55 activateConstraints:v54];

  [(ICDocCamExtractedDocumentViewController *)self updateBottomToolbarButtonsForCurrentMode];
}

- (void)updateBottomToolbarButtonsForCurrentMode
{
  addLabelledButton = [(ICDocCamExtractedDocumentViewController *)self addLabelledButton];
  [addLabelledButton setHidden:1];

  recropBottomToolbarButton = [(ICDocCamExtractedDocumentViewController *)self recropBottomToolbarButton];
  [recropBottomToolbarButton setHidden:1];

  filterBottomToolbarButton = [(ICDocCamExtractedDocumentViewController *)self filterBottomToolbarButton];
  [filterBottomToolbarButton setHidden:1];

  rotateBottomToolbarButton = [(ICDocCamExtractedDocumentViewController *)self rotateBottomToolbarButton];
  [rotateBottomToolbarButton setHidden:1];

  trashBottomToolbarButton = [(ICDocCamExtractedDocumentViewController *)self trashBottomToolbarButton];
  [trashBottomToolbarButton setHidden:1];

  actionLabelledButton = [(ICDocCamExtractedDocumentViewController *)self actionLabelledButton];
  [actionLabelledButton setHidden:1];

  if ([(ICDocCamExtractedDocumentViewController *)self mode]== 1)
  {
    if (![(ICDocCamExtractedDocumentViewController *)self cameraRestricted])
    {
      addLabelledButton2 = [(ICDocCamExtractedDocumentViewController *)self addLabelledButton];
      [addLabelledButton2 setHidden:0];
    }
  }

  else if ([(ICDocCamExtractedDocumentViewController *)self mode])
  {
    return;
  }

  recropBottomToolbarButton2 = [(ICDocCamExtractedDocumentViewController *)self recropBottomToolbarButton];
  [recropBottomToolbarButton2 setHidden:0];

  filterBottomToolbarButton2 = [(ICDocCamExtractedDocumentViewController *)self filterBottomToolbarButton];
  [filterBottomToolbarButton2 setHidden:0];

  rotateBottomToolbarButton2 = [(ICDocCamExtractedDocumentViewController *)self rotateBottomToolbarButton];
  [rotateBottomToolbarButton2 setHidden:0];

  trashBottomToolbarButton2 = [(ICDocCamExtractedDocumentViewController *)self trashBottomToolbarButton];
  [trashBottomToolbarButton2 setHidden:0];
}

- (void)setupAccessibilityInfo
{
  [(ICDocCamExtractedDocumentViewController *)self updateFilterButtonItemAccessibilityInfo];
  v3 = [DCLocalization localizedStringForKey:@"Rotate" value:@"Rotate" table:@"Localizable"];
  rotateBottomToolbarButton = [(ICDocCamExtractedDocumentViewController *)self rotateBottomToolbarButton];
  [rotateBottomToolbarButton setTitle:v3];

  rotateBottomToolbarButton2 = [(ICDocCamExtractedDocumentViewController *)self rotateBottomToolbarButton];
  title = [rotateBottomToolbarButton2 title];
  rotateBottomToolbarButton3 = [(ICDocCamExtractedDocumentViewController *)self rotateBottomToolbarButton];
  [rotateBottomToolbarButton3 setAccessibilityLabel:title];

  v8 = [DCLocalization localizedStringForKey:@"Double-tap to rotate the scan counter-clockwise." value:@"Double-tap to rotate the scan counter-clockwise." table:@"Localizable"];
  rotateBottomToolbarButton4 = [(ICDocCamExtractedDocumentViewController *)self rotateBottomToolbarButton];
  [rotateBottomToolbarButton4 setAccessibilityHint:v8];

  v10 = [DCLocalization localizedStringForKey:@"Double-tap to rename document" value:@"Double-tap to rename document" table:@"Localizable"];
  collectionTitleButton = [(ICDocCamExtractedDocumentViewController *)self collectionTitleButton];
  [collectionTitleButton setAccessibilityHint:v10];

  v12 = [DCLocalization localizedStringForKey:@"Add scan" value:@"Add scan" table:@"Localizable"];
  addButtonItem = [(ICDocCamExtractedDocumentViewController *)self addButtonItem];
  [addButtonItem setTitle:v12];

  addButtonItem2 = [(ICDocCamExtractedDocumentViewController *)self addButtonItem];
  title2 = [addButtonItem2 title];
  addButtonItem3 = [(ICDocCamExtractedDocumentViewController *)self addButtonItem];
  [addButtonItem3 setAccessibilityLabel:title2];

  v17 = [DCLocalization localizedStringForKey:@"Double-tap to add a new scan to this document." value:@"Double-tap to add a new scan to this document." table:@"Localizable"];
  addButtonItem4 = [(ICDocCamExtractedDocumentViewController *)self addButtonItem];
  [addButtonItem4 setAccessibilityHint:v17];

  v19 = [DCLocalization localizedStringForKey:@"Share" value:@"Share" table:@"Localizable"];
  actionButtonItem = [(ICDocCamExtractedDocumentViewController *)self actionButtonItem];
  [actionButtonItem setAccessibilityLabel:v19];

  v21 = [DCLocalization localizedStringForKey:@"Double-tap to share the current scan." value:@"Double-tap to share the current scan." table:@"Localizable"];
  actionButtonItem2 = [(ICDocCamExtractedDocumentViewController *)self actionButtonItem];
  [actionButtonItem2 setAccessibilityHint:v21];

  v23 = [DCLocalization localizedStringForKey:@"Delete scan" value:@"Delete scan" table:@"Localizable"];
  trashBottomToolbarButton = [(ICDocCamExtractedDocumentViewController *)self trashBottomToolbarButton];
  [trashBottomToolbarButton setAccessibilityLabel:v23];

  v25 = [DCLocalization localizedStringForKey:@"Double-tap to delete the current scan." value:@"Double-tap to delete the current scan." table:@"Localizable"];
  trashBottomToolbarButton2 = [(ICDocCamExtractedDocumentViewController *)self trashBottomToolbarButton];
  [trashBottomToolbarButton2 setAccessibilityHint:v25];

  v27 = [DCLocalization localizedStringForKey:@"Adjust" value:@"Adjust" table:@"Localizable"];
  recropBottomToolbarButton = [(ICDocCamExtractedDocumentViewController *)self recropBottomToolbarButton];
  [recropBottomToolbarButton setTitle:v27];

  recropBottomToolbarButton2 = [(ICDocCamExtractedDocumentViewController *)self recropBottomToolbarButton];
  title3 = [recropBottomToolbarButton2 title];
  recropBottomToolbarButton3 = [(ICDocCamExtractedDocumentViewController *)self recropBottomToolbarButton];
  [recropBottomToolbarButton3 setAccessibilityLabel:title3];

  v32 = [DCLocalization localizedStringForKey:@"Double-tap to adjust and crop the current scan." value:@"Double-tap to adjust and crop the current scan." table:@"Localizable"];
  recropBottomToolbarButton4 = [(ICDocCamExtractedDocumentViewController *)self recropBottomToolbarButton];
  [recropBottomToolbarButton4 setAccessibilityHint:v32];

  [(ICDocCamExtractedDocumentViewController *)self updateForAccessibilityDarkerSystemColors];
}

- (void)updateFilterButtonItemAccessibilityInfo
{
  v8 = [DCLocalization localizedStringForKey:@"Filters" value:@"Filters" table:@"Localizable"];
  v3 = [DCLocalization localizedStringForKey:@"Show filters" value:@"Show filters" table:@"Localizable"];
  v4 = [DCLocalization localizedStringForKey:@"Tap to choose a filter to apply to this scan." value:@"Tap to choose a filter to apply to this scan." table:@"Localizable"];
  filterBottomToolbarButton = [(ICDocCamExtractedDocumentViewController *)self filterBottomToolbarButton];
  [filterBottomToolbarButton setTitle:v8];

  filterBottomToolbarButton2 = [(ICDocCamExtractedDocumentViewController *)self filterBottomToolbarButton];
  [filterBottomToolbarButton2 setAccessibilityLabel:v3];

  filterBottomToolbarButton3 = [(ICDocCamExtractedDocumentViewController *)self filterBottomToolbarButton];
  [filterBottomToolbarButton3 setAccessibilityHint:v4];
}

- (void)updateImageViewAccessibilityForPageContentViewController:(id)controller
{
  controllerCopy = controller;
  image = [controllerCopy image];
  [image size];
  v6 = v5;
  image2 = [controllerCopy image];
  [image2 size];
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
  documentInfoCollection = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  docInfos = [documentInfoCollection docInfos];
  v14 = [docInfos objectAtIndexedSubscript:{-[ICDocCamExtractedDocumentViewController presentationPageIndex](self, "presentationPageIndex")}];
  v15 = +[ICDocCamImageFilters localizedImageFilterNameForType:](ICDocCamImageFilters, "localizedImageFilterNameForType:", [v14 currentFilter]);

  v16 = MEMORY[0x277CCACA8];
  v17 = [DCLocalization localizedStringForKey:@"%lu of %lu" value:@"%lu of %lu" table:@"Localizable"];
  v18 = [(ICDocCamExtractedDocumentViewController *)self presentationPageIndex]+ 1;
  documentInfoCollection2 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  docInfos2 = [documentInfoCollection2 docInfos];
  v21 = [v16 localizedStringWithFormat:v17, v18, objc_msgSend(docInfos2, "count")];

  v22 = [DCLocalization localizedStringForKey:@"Scan" value:@"Scan" table:@"Localizable"];
  imageView = [controllerCopy imageView];
  [imageView setIsAccessibilityElement:1];

  v30 = __DCAccessibilityStringForVariables(1, v22, v24, v25, v26, v27, v28, v29, v11);
  imageView2 = [controllerCopy imageView];
  [imageView2 setAccessibilityLabel:v30];

  documentInfoCollection3 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  docInfos3 = [documentInfoCollection3 docInfos];
  v34 = [docInfos3 count];

  if (v34)
  {
    v35 = [DCLocalization localizedStringForKey:@"Three-finger swipe to scroll between scans." value:@"Three-finger swipe to scroll between scans." table:@"Localizable"];
    imageView3 = [controllerCopy imageView];
    [imageView3 setAccessibilityHint:v35];
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
  collectionTitleButton = [(ICDocCamExtractedDocumentViewController *)self collectionTitleButton];
  [collectionTitleButton setTitleColor:v4 forState:0];
}

- (void)speakAccessibilityAnnouncementForReorderIfNecessaryForProposedIndexPath:(id)path
{
  item = [path item];
  if (item != [(ICDocCamExtractedDocumentViewController *)self lastAXProposedIndexForReordering])
  {
    v6 = [DCLocalization localizedStringForKey:@"Position %lu" value:@"Position %lu" table:@"Localizable"];
    v5 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v6, item + 1];
    UIAccessibilityPostNotification(*MEMORY[0x277D76438], v5);
    [(ICDocCamExtractedDocumentViewController *)self setLastAXProposedIndexForReordering:item];
  }
}

- (void)speakAccessibilityAnnouncementForMovingItemFromIndexPath:(id)path toIndexPath:(id)indexPath
{
  indexPathCopy = indexPath;
  item = [path item];
  item2 = [indexPathCopy item];

  v9 = [DCLocalization localizedStringForKey:@"Moved item from position %lu to position %lu" value:@"Moved item from position %lu to position %lu" table:@"Localizable"];
  v8 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v9, item + 1, item2 + 1];
  UIAccessibilityPostNotification(*MEMORY[0x277D76438], v8);
}

- (id)_accessibilitySpeakThisElementsAndStrings
{
  v3 = MEMORY[0x277CBEB18];
  v12.receiver = self;
  v12.super_class = ICDocCamExtractedDocumentViewController;
  _accessibilitySpeakThisElementsAndStrings = [(ICDocCamExtractedDocumentViewController *)&v12 _accessibilitySpeakThisElementsAndStrings];
  v5 = [v3 arrayWithArray:_accessibilitySpeakThisElementsAndStrings];

  collectionTitleButton = [(ICDocCamExtractedDocumentViewController *)self collectionTitleButton];
  accessibilityLabel = [collectionTitleButton accessibilityLabel];
  [v5 insertObject:accessibilityLabel atIndex:0];

  pageIndexLabel = [(ICDocCamExtractedDocumentViewController *)self pageIndexLabel];
  accessibilityLabel2 = [pageIndexLabel accessibilityLabel];
  [v5 insertObject:accessibilityLabel2 atIndex:1];

  v10 = [v5 copy];

  return v10;
}

- (BOOL)accessibilityScrollRightPage
{
  presentationPageIndex = [(ICDocCamExtractedDocumentViewController *)self presentationPageIndex];
  v4 = presentationPageIndex;
  if (presentationPageIndex)
  {
    [(ICDocCamExtractedDocumentViewController *)self showViewControllerAtIndex:presentationPageIndex - 1 animated:0];
  }

  return v4 != 0;
}

- (BOOL)accessibilityScrollLeftPage
{
  presentationPageIndex = [(ICDocCamExtractedDocumentViewController *)self presentationPageIndex];
  documentInfoCollection = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  docInfos = [documentInfoCollection docInfos];
  v6 = [docInfos count] - 1;

  if (presentationPageIndex < v6)
  {
    [(ICDocCamExtractedDocumentViewController *)self showViewControllerAtIndex:presentationPageIndex + 1 animated:0];
  }

  return presentationPageIndex < v6;
}

- (void)thumbnailContainerViewIncrementCurrentIndex:(id)index
{
  presentationPageIndex = [(ICDocCamExtractedDocumentViewController *)self presentationPageIndex];
  documentInfoCollection = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  docInfos = [documentInfoCollection docInfos];
  if (presentationPageIndex < [docInfos count] - 1)
  {
    documentInfoCollection2 = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
    docInfos2 = [documentInfoCollection2 docInfos];
    v8 = [docInfos2 count];

    if (!v8)
    {
      return;
    }

    documentInfoCollection = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
    docInfos = [MEMORY[0x277CCAA70] indexPathForItem:presentationPageIndex + 1 inSection:0];
    [(ICDocCamExtractedDocumentViewController *)self collectionView:documentInfoCollection didSelectItemAtIndexPath:docInfos];
  }
}

- (void)thumbnailContainerViewDecrementCurrentIndex:(id)index
{
  presentationPageIndex = [(ICDocCamExtractedDocumentViewController *)self presentationPageIndex];
  if (presentationPageIndex)
  {
    v5 = presentationPageIndex;
    thumbnailCollectionView = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
    v6 = [MEMORY[0x277CCAA70] indexPathForItem:v5 - 1 inSection:0];
    [(ICDocCamExtractedDocumentViewController *)self collectionView:thumbnailCollectionView didSelectItemAtIndexPath:v6];
  }
}

- (unint64_t)thumbnailContainerViewNumberOfItems:(id)items
{
  documentInfoCollection = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  docInfos = [documentInfoCollection docInfos];
  v5 = [docInfos count];

  return v5;
}

- (void)thumbnailContainerView:(id)view moveItemFromIndex:(int64_t)index toIndex:(int64_t)toIndex
{
  if ([(ICDocCamExtractedDocumentViewController *)self thumbnailContainerViewSupportsReordering:view])
  {
    v11 = [MEMORY[0x277CCAA70] indexPathForItem:index inSection:0];
    v8 = [MEMORY[0x277CCAA70] indexPathForItem:toIndex inSection:0];
    thumbnailCollectionView = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
    [(ICDocCamExtractedDocumentViewController *)self collectionView:thumbnailCollectionView moveItemAtIndexPath:v11 toIndexPath:v8];

    [(ICDocCamExtractedDocumentViewController *)self showViewControllerAtIndex:toIndex animated:0];
    thumbnailCollectionView2 = [(ICDocCamExtractedDocumentViewController *)self thumbnailCollectionView];
    [thumbnailCollectionView2 reloadData];
  }
}

- (BOOL)thumbnailContainerViewIsVisible:(id)visible
{
  view = [(ICDocCamExtractedDocumentViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  v7 = [windowScene interfaceOrientation] - 3;

  traitCollection = [(ICDocCamExtractedDocumentViewController *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  return v7 < 0xFFFFFFFFFFFFFFFELL || horizontalSizeClass != 1;
}

- (BOOL)thumbnailContainerViewIsVisible
{
  selfCopy = self;
  thumbnailContainerView = [(ICDocCamExtractedDocumentViewController *)self thumbnailContainerView];
  LOBYTE(selfCopy) = [(ICDocCamExtractedDocumentViewController *)selfCopy thumbnailContainerViewIsVisible:thumbnailContainerView];

  return selfCopy;
}

- (CGRect)zoomTargetForIndexPath:(id)path
{
  pathCopy = path;
  pageViewControllerContainerView = [(ICDocCamExtractedDocumentViewController *)self pageViewControllerContainerView];
  [pageViewControllerContainerView frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  item = [pathCopy item];
  [(ICDocCamExtractedDocumentViewController *)self imageSizeForDocumentAtIndex:item];
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

- (CGRect)imageRectWithZoomAndPanForIndexPath:(id)path
{
  currentImageView = [(ICDocCamExtractedDocumentViewController *)self currentImageView];
  currentImageView2 = [(ICDocCamExtractedDocumentViewController *)self currentImageView];
  [currentImageView2 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  view = [(ICDocCamExtractedDocumentViewController *)self view];
  [currentImageView convertRect:view toView:{v7, v9, v11, v13}];
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
  documentInfoCollection = [(ICDocCamExtractedDocumentViewController *)self documentInfoCollection];
  docInfos = [documentInfoCollection docInfos];
  v4 = [docInfos count];

  return v4;
}

- (id)indexPathForCurrentDocument
{
  v2 = MEMORY[0x277CCAA70];
  presentationPageIndex = [(ICDocCamExtractedDocumentViewController *)self presentationPageIndex];

  return [v2 indexPathForItem:presentationPageIndex inSection:0];
}

- (void)resetImageCentering
{
  currentPageContentViewController = [(ICDocCamExtractedDocumentViewController *)self currentPageContentViewController];
  [currentPageContentViewController resetImageCentering];
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