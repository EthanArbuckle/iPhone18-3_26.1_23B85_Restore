@interface MUPlacePhotoGalleryViewController
- (CGPoint)imageViewCenterPoint;
- (CGPoint)scrollViewContentOffset;
- (MUPlacePhotoGalleryViewController)initWithPhotos:(id)photos additionalView:(id)view scrollToIndex:(unint64_t)index mapItem:(id)item delegate:(id)delegate;
- (MUPlacePhotoGalleryViewControllerDelegate)delegate;
- (UIActivityIndicatorView)spinner;
- (UIBarButtonItem)addPhotoBarButtonItem;
- (id)currentPhoto;
- (id)keyCommands;
- (id)photoViewForTransition;
- (unint64_t)indexOfView:(id)view;
- (unint64_t)indexOfVisibleView;
- (unint64_t)viewsCount;
- (void)_addPhoto;
- (void)_didTapDeletePhotoMenuItemForImageAtIndex:(unint64_t)index;
- (void)_didTapEditPhotoCreditMenuItem;
- (void)_rapButtonPressed;
- (void)_selectedAddPhotosWithEntryPoint:(int64_t)point;
- (void)_updateNavbarVisibility;
- (void)attributionViewDidSelectDeletePhoto:(id)photo;
- (void)beginAnimatingActivityIndicator;
- (void)cancelDownloadingImages;
- (void)dealloc;
- (void)didTapDone;
- (void)didTapOnAdditionalView;
- (void)didTapOnAttributionView;
- (void)didTapOpen;
- (void)dismiss;
- (void)downloadImageForPhotoViewAtIndex:(unint64_t)index;
- (void)downloadImageForURL:(id)l forIndex:(unint64_t)index;
- (void)downloadImageForVisibleViews;
- (void)endAnimatingActivityIndicatorWithError:(id)error;
- (void)handlePanGesture:(id)gesture;
- (void)reloadUserAttribution;
- (void)resetPhotosZoomLevel;
- (void)scrollLeft;
- (void)scrollRight;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setEnablePersonalizedAttribution:(BOOL)attribution;
- (void)setupAdditionalView:(id)view withStackView:(id)stackView;
- (void)setupAttributionView;
- (void)setupPhotoViewsWithStackView:(id)view;
- (void)setupViewsWithAdditionalView:(id)view;
- (void)startAnimatingActivityIndicatorViewForRAP;
- (void)toggleBackground:(id)background;
- (void)updateViewsWithPhotoAtIndex:(unint64_t)index;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)zoomToPoint:(id)point;
@end

@implementation MUPlacePhotoGalleryViewController

- (CGPoint)imageViewCenterPoint
{
  x = self->_imageViewCenterPoint.x;
  y = self->_imageViewCenterPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (MUPlacePhotoGalleryViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)attributionViewDidSelectDeletePhoto:(id)photo
{
  indexOfVisibleView = [(MUPlacePhotoGalleryViewController *)self indexOfVisibleView];

  [(MUPlacePhotoGalleryViewController *)self _didTapDeletePhotoMenuItemForImageAtIndex:indexOfVisibleView];
}

- (void)scrollRight
{
  indexOfVisibleView = [(MUPlacePhotoGalleryViewController *)self indexOfVisibleView];
  if (indexOfVisibleView < [(MUPlacePhotoGalleryViewController *)self viewsCount]- 1)
  {
    [(MUPlacePhotoGalleryViewController *)self scrollViewContentOffset];
    v5 = v4;
    view = [(MUPlacePhotoGalleryViewController *)self view];
    [view frame];
    v7 = CGRectGetWidth(v13) + v5;

    scrollView = [(MUPlacePhotoGalleryViewController *)self scrollView];
    [scrollView setContentOffset:0 animated:{v7, 0.0}];

    delegate = [(MUPlacePhotoGalleryViewController *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      delegate2 = [(MUPlacePhotoGalleryViewController *)self delegate];
      [delegate2 placePhotoGalleryDidScrollRightToIndex:indexOfVisibleView + 1];
    }
  }
}

- (void)scrollLeft
{
  indexOfVisibleView = [(MUPlacePhotoGalleryViewController *)self indexOfVisibleView];
  if (indexOfVisibleView)
  {
    v4 = indexOfVisibleView;
    [(MUPlacePhotoGalleryViewController *)self scrollViewContentOffset];
    v6 = v5;
    view = [(MUPlacePhotoGalleryViewController *)self view];
    [view frame];
    v8 = v6 - CGRectGetWidth(v14);

    scrollView = [(MUPlacePhotoGalleryViewController *)self scrollView];
    [scrollView setContentOffset:0 animated:{v8, 0.0}];

    delegate = [(MUPlacePhotoGalleryViewController *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegate2 = [(MUPlacePhotoGalleryViewController *)self delegate];
      [delegate2 placePhotoGalleryDidScrollLeftToIndex:v4 - 1];
    }
  }
}

- (void)endAnimatingActivityIndicatorWithError:(id)error
{
  spinner = [(MUPlacePhotoGalleryViewController *)self spinner];
  [spinner stopAnimating];

  addPhotoBarButtonItem = [(MUPlacePhotoGalleryViewController *)self addPhotoBarButtonItem];
  [addPhotoBarButtonItem setCustomView:0];
}

- (void)beginAnimatingActivityIndicator
{
  [(MUPlacePhotoGalleryViewController *)self endAnimatingActivityIndicatorWithError:0];
  spinner = [(MUPlacePhotoGalleryViewController *)self spinner];
  addPhotoBarButtonItem = [(MUPlacePhotoGalleryViewController *)self addPhotoBarButtonItem];
  [addPhotoBarButtonItem setCustomView:spinner];

  spinner2 = [(MUPlacePhotoGalleryViewController *)self spinner];
  [spinner2 startAnimating];
}

- (void)startAnimatingActivityIndicatorViewForRAP
{
  [(MUPlacePhotoGalleryViewController *)self stopAnimatingActivityIndicatorViewForRAP];
  attributionView = self->_attributionView;

  [(MUPlacePhotoGalleryAttributionView *)attributionView beginAnimatingActivityIndicator];
}

- (void)_updateNavbarVisibility
{
  navigationController = [(MUPlacePhotoGalleryViewController *)self navigationController];
  -[MUPlacePhotoGalleryViewController setUIStyleWithNavigationBarHidden:](self, "setUIStyleWithNavigationBarHidden:", [navigationController isNavigationBarHidden]);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v11.receiver = self;
  v11.super_class = MUPlacePhotoGalleryViewController;
  coordinatorCopy = coordinator;
  [(MUPlacePhotoGalleryViewController *)&v11 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  indexOfVisibleView = [(MUPlacePhotoGalleryViewController *)self indexOfVisibleView];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __88__MUPlacePhotoGalleryViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v10[3] = &unk_1E821A290;
  if (indexOfVisibleView == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = indexOfVisibleView;
  }

  v10[4] = self;
  v10[5] = v9;
  [coordinatorCopy animateAlongsideTransition:v10 completion:0];
}

uint64_t __88__MUPlacePhotoGalleryViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) view];
  v4 = [v3 _mapsui_isRTL];

  if (v4)
  {
    v5 = [*(a1 + 32) photoViews];
    v2 = [v5 count] + ~*(a1 + 40);
  }

  v6 = [*(a1 + 32) scrollView];
  v7 = [*(a1 + 32) view];
  [v7 frame];
  [v6 setContentOffset:0 animated:{CGRectGetWidth(v12) * v2, 0.0}];

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);

  return [v8 updateViewsWithPhotoAtIndex:v9];
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  indexOfVisibleView = [(MUPlacePhotoGalleryViewController *)self indexOfVisibleView];
  [deceleratingCopy contentOffset];
  v7 = v6;

  [(MUPlacePhotoGalleryViewController *)self lastScrollViewOffsetBeforeScrolling];
  if (v8 >= v7)
  {
    [(MUPlacePhotoGalleryViewController *)self lastScrollViewOffsetBeforeScrolling];
    if (v12 > v7)
    {
      delegate = [(MUPlacePhotoGalleryViewController *)self delegate];
      v14 = objc_opt_respondsToSelector();

      if (v14)
      {
        delegate2 = [(MUPlacePhotoGalleryViewController *)self delegate];
        [delegate2 placePhotoGalleryDidScrollRightToIndex:indexOfVisibleView];
        goto LABEL_7;
      }
    }
  }

  else
  {
    delegate3 = [(MUPlacePhotoGalleryViewController *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      delegate2 = [(MUPlacePhotoGalleryViewController *)self delegate];
      [delegate2 placePhotoGalleryDidScrollLeftToIndex:indexOfVisibleView];
LABEL_7:
    }
  }

  [(MUPlacePhotoGalleryViewController *)self lastScrollViewOffsetBeforeScrolling];
  if (v15 != v7)
  {
    delegate4 = [(MUPlacePhotoGalleryViewController *)self delegate];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      delegate5 = [(MUPlacePhotoGalleryViewController *)self delegate];
      [delegate5 placePhotoGalleryDidScrollToIndex:indexOfVisibleView];
    }
  }

  [(MUPlacePhotoGalleryViewController *)self setLastScrollViewOffsetBeforeScrolling:0.0];

  [(MUPlacePhotoGalleryViewController *)self resetPhotosZoomLevel];
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  [(MUPlacePhotoGalleryViewController *)self updateViewsWithPhotoAtIndex:[(MUPlacePhotoGalleryViewController *)self indexOfVisibleView]];
  [(MUPlacePhotoGalleryViewController *)self lastScrollViewOffsetBeforeScrolling];
  if (v4 == 0.0)
  {
    [scrollCopy contentOffset];
    [(MUPlacePhotoGalleryViewController *)self setLastScrollViewOffsetBeforeScrolling:?];
  }
}

- (void)_didTapDeletePhotoMenuItemForImageAtIndex:(unint64_t)index
{
  delegate = [(MUPlacePhotoGalleryViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MUPlacePhotoGalleryViewController *)self delegate];
    [delegate2 placePhotoGallery:self didSelectDeleteImageAtIndex:index];
  }
}

- (void)_didTapEditPhotoCreditMenuItem
{
  delegate = [(MUPlacePhotoGalleryViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MUPlacePhotoGalleryViewController *)self delegate];
    [delegate2 placePhotoGalleryDidSelectEditPhotoCredit:self];
  }
}

- (void)didTapOnAdditionalView
{
  delegate = [(MUPlacePhotoGalleryViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MUPlacePhotoGalleryViewController *)self delegate];
    [delegate2 placePhotoGalleryAdditionalViewTapped:self];
  }
}

- (void)didTapOnAttributionView
{
  delegate = [(MUPlacePhotoGalleryViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MUPlacePhotoGalleryViewController *)self delegate];
    [delegate2 placePhotoGallery:self attributionViewTappedAtIndex:{-[MUPlacePhotoGalleryViewController indexOfVisibleView](self, "indexOfVisibleView")}];
  }
}

- (void)dismiss
{
  [(MUPlacePhotoGalleryViewController *)self cancelDownloadingImages];
  delegate = [(MUPlacePhotoGalleryViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MUPlacePhotoGalleryViewController *)self delegate];
    [delegate2 placePhotoGalleryDidCloseAtIndex:{-[MUPlacePhotoGalleryViewController indexOfVisibleView](self, "indexOfVisibleView")}];
  }

  presentingViewController = [(MUPlacePhotoGalleryViewController *)self presentingViewController];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__MUPlacePhotoGalleryViewController_dismiss__block_invoke;
  v7[3] = &unk_1E821A268;
  v7[4] = self;
  [presentingViewController dismissViewControllerAnimated:1 completion:v7];
}

void __44__MUPlacePhotoGalleryViewController_dismiss__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 placePhotoGalleryDidFinishDismissing:*(a1 + 32)];
  }
}

- (void)didTapDone
{
  delegate = [(MUPlacePhotoGalleryViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MUPlacePhotoGalleryViewController *)self delegate];
    [delegate2 placePhotoGallery:self willCloseAtIndex:{-[MUPlacePhotoGalleryViewController indexOfVisibleView](self, "indexOfVisibleView")}];
  }

  [(MUPlacePhotoGalleryViewController *)self dismiss];
}

- (void)didTapOpen
{
  delegate = [(MUPlacePhotoGalleryViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MUPlacePhotoGalleryViewController *)self delegate];
    [delegate2 placePhotoGallery:self openButtonTappedAtIndex:{-[MUPlacePhotoGalleryViewController indexOfVisibleView](self, "indexOfVisibleView")}];
  }
}

- (void)_addPhoto
{
  v3 = +[MUPhotoOptionsMenuButton preferredEntryPoint];
  if (v3)
  {

    [(MUPlacePhotoGalleryViewController *)self _selectedAddPhotosWithEntryPoint:v3];
  }
}

- (UIActivityIndicatorView)spinner
{
  spinner = self->_spinner;
  if (!spinner)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    v5 = self->_spinner;
    self->_spinner = v4;

    [(UIActivityIndicatorView *)self->_spinner setHidesWhenStopped:1];
    spinner = self->_spinner;
  }

  return spinner;
}

- (UIBarButtonItem)addPhotoBarButtonItem
{
  v3 = [MEMORY[0x1E696F2E8] shouldShowAddPhotoButtonsOnSingleFullScreenPhotoViewerForMapItem:self->_mapItem photoAttribution:0];
  v4 = 0;
  if (v3)
  {
    addPhotoBarButtonItem = self->_addPhotoBarButtonItem;
    if (!addPhotoBarButtonItem)
    {
      v6 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:4 target:self action:0];
      v7 = self->_addPhotoBarButtonItem;
      self->_addPhotoBarButtonItem = v6;

      objc_initWeak(&location, self);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __58__MUPlacePhotoGalleryViewController_addPhotoBarButtonItem__block_invoke;
      v12[3] = &unk_1E821BAC8;
      objc_copyWeak(&v13, &location);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __58__MUPlacePhotoGalleryViewController_addPhotoBarButtonItem__block_invoke_2;
      v10[3] = &unk_1E821BAC8;
      objc_copyWeak(&v11, &location);
      v8 = [MUPhotoOptionsMenuButton menuForPhotoOptionsMenuButtonWithCameraCompletion:v12 libraryCompletion:v10];
      [(UIBarButtonItem *)self->_addPhotoBarButtonItem setMenu:v8];

      if (+[MUPhotoOptionsMenuButton preferredEntryPoint])
      {
        [(UIBarButtonItem *)self->_addPhotoBarButtonItem setAction:sel__addPhoto];
      }

      objc_destroyWeak(&v11);
      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
      addPhotoBarButtonItem = self->_addPhotoBarButtonItem;
    }

    v4 = addPhotoBarButtonItem;
  }

  return v4;
}

void __58__MUPlacePhotoGalleryViewController_addPhotoBarButtonItem__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _selectedAddPhotosWithEntryPoint:1];
    WeakRetained = v2;
  }
}

void __58__MUPlacePhotoGalleryViewController_addPhotoBarButtonItem__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _selectedAddPhotosWithEntryPoint:2];
    WeakRetained = v2;
  }
}

- (void)_selectedAddPhotosWithEntryPoint:(int64_t)point
{
  v6 = objc_alloc_init(MUPresentationOptions);
  [(MUPresentationOptions *)v6 setSourceItem:self->_addPhotoBarButtonItem];
  [(MUPresentationOptions *)v6 setPresentingViewController:self];
  delegate = [(MUPlacePhotoGalleryViewController *)self delegate];
  [delegate placePhotoGallery:self selectedAddPhotoWithEntryPoint:point usingPresentationOptions:v6];
}

- (void)_rapButtonPressed
{
  delegate = [(MUPlacePhotoGalleryViewController *)self delegate];
  [delegate placePhotoGallery:self didSelectReportImageAtIndex:{-[MUPlacePhotoGalleryViewController indexOfVisibleView](self, "indexOfVisibleView")}];
}

- (void)updateViewsWithPhotoAtIndex:(unint64_t)index
{
  v33 = *MEMORY[0x1E69E9840];
  photos = [(MUPlacePhotoGalleryViewController *)self photos];
  v6 = [photos count];

  if (v6 > index)
  {
    photos2 = [(MUPlacePhotoGalleryViewController *)self photos];
    v28 = [photos2 objectAtIndexedSubscript:index];

    photos3 = [(MUPlacePhotoGalleryViewController *)self photos];
    v9 = [photos3 count];

    if (v9 <= index)
    {
      attributionView = [(MUPlacePhotoGalleryViewController *)self attributionView];
      [attributionView setHidden:1];

      leftBarButtonItem = [(MUPlacePhotoGalleryViewController *)self leftBarButtonItem];
      navigationItem = [(MUPlacePhotoGalleryViewController *)self navigationItem];
      [navigationItem setLeftBarButtonItem:leftBarButtonItem];
LABEL_14:

      photoViews = [(MUPlacePhotoGalleryViewController *)self photoViews];
      v24 = [photoViews count];

      if (v24 > index)
      {
        [(MUPlacePhotoGalleryViewController *)self downloadImageForVisibleViews];
      }

      v25 = _MULocalizedStringFromThisBundle(@"%lu of %lu");
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:v25, index + 1, -[MUPlacePhotoGalleryViewController viewsCount](self, "viewsCount")];
      [(MUPlacePhotoGalleryViewController *)self setTitle:v26];

      v27 = *MEMORY[0x1E69E9840];

      return;
    }

    photoStyle = [v28 photoStyle];
    if (photoStyle == 1)
    {
      leftBarButtonItem = objc_alloc_init(MUPlacePhotoGalleryAttributionViewModel);
      title = [v28 title];
      [(MUPlacePhotoGalleryAttributionViewModel *)leftBarButtonItem setTitleText:title];

      subtitle = [v28 subtitle];
      [(MUPlacePhotoGalleryAttributionViewModel *)leftBarButtonItem setSubtitleText:subtitle];
    }

    else
    {
      if (photoStyle)
      {
        leftBarButtonItem = 0;
        goto LABEL_13;
      }

      mapItem = self->_mapItem;
      subtitle = [(MUPlacePhotoGalleryViewController *)self userAttributionViewModel];
      attributionName = [subtitle attributionName];
      leftBarButtonItem = [MUPlacePhotoGalleryAttributionViewModel viewModelFromMapItem:mapItem photo:v28 photoCreditName:attributionName shouldAddPhotoCredit:[(MUPlacePhotoGalleryViewController *)self enablePersonalizedAttribution]];
    }

LABEL_13:
    attributionView2 = [(MUPlacePhotoGalleryViewController *)self attributionView];
    [attributionView2 setViewModel:leftBarButtonItem];

    navigationItem = [(MUPlacePhotoGalleryViewController *)self leftBarButtonItem];
    navigationItem2 = [(MUPlacePhotoGalleryViewController *)self navigationItem];
    [navigationItem2 setLeftBarButtonItem:navigationItem];

    goto LABEL_14;
  }

  v15 = MUGetMUPlacePhotoVCLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    photos4 = [(MUPlacePhotoGalleryViewController *)self photos];
    *buf = 134218240;
    indexCopy = index;
    v31 = 2048;
    v32 = [photos4 count];
    _os_log_impl(&dword_1C5620000, v15, OS_LOG_TYPE_FAULT, "Tried to update views when index %lu >= photos count %lu", buf, 0x16u);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)resetPhotosZoomLevel
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  photoViews = [(MUPlacePhotoGalleryViewController *)self photoViews];
  v3 = [photoViews countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(photoViews);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        [v7 minimumZoomScale];
        [v7 setZoomScale:0 animated:?];
      }

      v4 = [photoViews countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)zoomToPoint:(id)point
{
  pointCopy = point;
  indexOfVisibleView = [(MUPlacePhotoGalleryViewController *)self indexOfVisibleView];
  photoViews = [(MUPlacePhotoGalleryViewController *)self photoViews];
  v6 = [photoViews count];

  if (indexOfVisibleView < v6)
  {
    photoViews2 = [(MUPlacePhotoGalleryViewController *)self photoViews];
    v8 = [photoViews2 objectAtIndexedSubscript:indexOfVisibleView];

    [v8 zoomWithGestureRecognizer:pointCopy];
  }
}

- (void)toggleBackground:(id)background
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54__MUPlacePhotoGalleryViewController_toggleBackground___block_invoke;
  v3[3] = &unk_1E821A268;
  v3[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v3 animations:0.150000006];
}

void __54__MUPlacePhotoGalleryViewController_toggleBackground___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 navigationController];
  [v1 setUIStyleWithNavigationBarHidden:{objc_msgSend(v2, "isNavigationBarHidden") ^ 1}];
}

- (unint64_t)viewsCount
{
  photos = [(MUPlacePhotoGalleryViewController *)self photos];
  v4 = [photos count];
  additionalView = [(MUPlacePhotoGalleryViewController *)self additionalView];
  if (additionalView)
  {
    v6 = v4 + 1;
  }

  else
  {
    v6 = v4;
  }

  return v6;
}

- (void)handlePanGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([(MUPlacePhotoGalleryViewController *)self panAndSwipeToDismissGestureEnabled])
  {
    view = [gestureCopy view];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      view2 = [gestureCopy view];
      v8 = view2;
      if (view2)
      {
        isZoomed = [view2 isZoomed];
        image = [v8 image];

        if ((isZoomed & 1) != 0 || !image)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
      v8 = 0;
    }

    view3 = [gestureCopy view];
    [gestureCopy translationInView:view3];
    v13 = v12;
    v15 = v14;

    view4 = [gestureCopy view];
    [view4 bounds];
    v18 = v17;

    v19 = fabs(v15 / v18);
    if (v18 > 0.0)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0.0;
    }

    state = [gestureCopy state];
    if ((state - 3) < 2)
    {
      gestureTrackedView = [(MUPlacePhotoGalleryViewController *)self gestureTrackedView];
      view5 = [gestureCopy view];

      if (gestureTrackedView != view5)
      {
        goto LABEL_41;
      }

      [v8 setUserInteractionEnabled:1];
      if ([(MUPlacePhotoGalleryViewController *)self shouldFinishAnimation])
      {
        [(MUPlacePhotoGalleryViewController *)self dismiss];
      }

      else
      {
        v61 = MEMORY[0x1E69DD250];
        v63 = MEMORY[0x1E69E9820];
        v64 = 3221225472;
        v65 = __54__MUPlacePhotoGalleryViewController_handlePanGesture___block_invoke;
        v66 = &unk_1E821A870;
        v67 = gestureCopy;
        selfCopy = self;
        [v61 animateWithDuration:&v63 animations:0.15];
      }
    }

    else
    {
      if (state == 2)
      {
        gestureTrackedView2 = [(MUPlacePhotoGalleryViewController *)self gestureTrackedView];
        view6 = [gestureCopy view];

        if (gestureTrackedView2 == view6 && ([(MUPlacePhotoGalleryViewController *)self panGestureStartingDirection]== 2 || [(MUPlacePhotoGalleryViewController *)self panGestureStartingDirection]== 1))
        {
          v29 = fmin(v20, 1.0);
          scrollView = [(MUPlacePhotoGalleryViewController *)self scrollView];
          [scrollView setScrollEnabled:0];

          v31 = fmax(1.0 - v29, 0.8);
          v32 = *(MEMORY[0x1E695EFD0] + 16);
          *&v69.a = *MEMORY[0x1E695EFD0];
          *&v69.c = v32;
          *&v69.tx = *(MEMORY[0x1E695EFD0] + 32);
          CGAffineTransformScale(&v70, &v69, v31, v31);
          view7 = [gestureCopy view];
          v69 = v70;
          [view7 setTransform:&v69];

          [(MUPlacePhotoGalleryViewController *)self imageViewCenterPoint];
          v35 = v34 + v13;
          [(MUPlacePhotoGalleryViewController *)self imageViewCenterPoint];
          v37 = v36 + v15;
          view8 = [gestureCopy view];
          [view8 setCenter:{v35, v37}];

          view9 = [(MUPlacePhotoGalleryViewController *)self view];
          backgroundColor = [view9 backgroundColor];
          v41 = [backgroundColor colorWithAlphaComponent:v31];
          view10 = [(MUPlacePhotoGalleryViewController *)self view];
          [view10 setBackgroundColor:v41];

          attributionView = [(MUPlacePhotoGalleryViewController *)self attributionView];
          [attributionView setAlpha:v31];

          view11 = [gestureCopy view];
          [view11 setAlpha:1.0];

          [(MUPlacePhotoGalleryViewController *)self setShouldFinishAnimation:v29 > 0.15];
        }

        goto LABEL_41;
      }

      if (state == 1)
      {
        gestureTrackedView3 = [(MUPlacePhotoGalleryViewController *)self gestureTrackedView];

        if (!gestureTrackedView3)
        {
          view12 = [gestureCopy view];
          [(MUPlacePhotoGalleryViewController *)self setGestureTrackedView:view12];

LABEL_26:
          [v8 setUserInteractionEnabled:0];
          if (![(MUPlacePhotoGalleryViewController *)self panGestureStartingDirection])
          {
            view13 = [gestureCopy view];
            [gestureCopy velocityInView:view13];
            v48 = v47;
            v50 = v49;

            v51 = fabs(v50);
            v52 = fabs(v48);
            v53 = 2;
            if (v50 <= 0.0)
            {
              v53 = 1;
            }

            v54 = 3;
            if (v48 > 0.0)
            {
              v54 = 4;
            }

            if (v51 <= v52)
            {
              v55 = v54;
            }

            else
            {
              v55 = v53;
            }

            [(MUPlacePhotoGalleryViewController *)self setPanGestureStartingDirection:v55];
          }

          [(MUPlacePhotoGalleryViewController *)self setShouldFinishAnimation:0];
          view14 = [gestureCopy view];
          [view14 center];
          [(MUPlacePhotoGalleryViewController *)self setImageViewCenterPoint:?];

          if ([(MUPlacePhotoGalleryViewController *)self panGestureStartingDirection]== 2 || [(MUPlacePhotoGalleryViewController *)self panGestureStartingDirection]== 1)
          {
            delegate = [(MUPlacePhotoGalleryViewController *)self delegate];
            v58 = objc_opt_respondsToSelector();

            if (v58)
            {
              delegate2 = [(MUPlacePhotoGalleryViewController *)self delegate];
              view15 = [gestureCopy view];
              [delegate2 placePhotoGallery:self willCloseAtIndex:{-[MUPlacePhotoGalleryViewController indexOfView:](self, "indexOfView:", view15)}];
            }
          }

          goto LABEL_41;
        }

        gestureTrackedView4 = [(MUPlacePhotoGalleryViewController *)self gestureTrackedView];
        view16 = [gestureCopy view];

        if (gestureTrackedView4 == view16)
        {
          goto LABEL_26;
        }

LABEL_41:

        goto LABEL_42;
      }

      [v8 setUserInteractionEnabled:1];
    }

    [(MUPlacePhotoGalleryViewController *)self setPanGestureStartingDirection:0, v63, v64, v65, v66];
    scrollView2 = [(MUPlacePhotoGalleryViewController *)self scrollView];
    [scrollView2 setScrollEnabled:1];

    [(MUPlacePhotoGalleryViewController *)self setGestureTrackedView:0];
    goto LABEL_41;
  }

LABEL_42:
}

void __54__MUPlacePhotoGalleryViewController_handlePanGesture___block_invoke(uint64_t a1)
{
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  *&v14.a = *MEMORY[0x1E695EFD0];
  *&v14.c = v2;
  *&v14.tx = *(MEMORY[0x1E695EFD0] + 32);
  CGAffineTransformScale(&v15, &v14, 1.0, 1.0);
  v3 = [*(a1 + 32) view];
  v14 = v15;
  [v3 setTransform:&v14];

  [*(a1 + 40) imageViewCenterPoint];
  v5 = v4;
  v7 = v6;
  v8 = [*(a1 + 32) view];
  [v8 setCenter:{v5, v7}];

  v9 = [*(a1 + 40) view];
  v10 = [v9 backgroundColor];
  v11 = [v10 colorWithAlphaComponent:1.0];
  v12 = [*(a1 + 40) view];
  [v12 setBackgroundColor:v11];

  v13 = [*(a1 + 40) attributionView];
  [v13 setAlpha:1.0];
}

- (CGPoint)scrollViewContentOffset
{
  scrollView = [(MUPlacePhotoGalleryViewController *)self scrollView];
  [scrollView contentOffset];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (unint64_t)indexOfView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    photoViews = [(MUPlacePhotoGalleryViewController *)self photoViews];
    v6 = [photoViews containsObject:viewCopy];

    if (v6)
    {
      photoViews2 = [(MUPlacePhotoGalleryViewController *)self photoViews];
      v8 = [photoViews2 indexOfObject:viewCopy];
LABEL_9:
      v13 = v8;

      goto LABEL_10;
    }
  }

  additionalView = [(MUPlacePhotoGalleryViewController *)self additionalView];
  v10 = additionalView;
  if (additionalView == viewCopy)
  {

    goto LABEL_8;
  }

  additionalView2 = [(MUPlacePhotoGalleryViewController *)self additionalView];
  superview = [additionalView2 superview];

  if (superview == viewCopy)
  {
LABEL_8:
    photoViews2 = [(MUPlacePhotoGalleryViewController *)self photoViews];
    v8 = [photoViews2 count];
    goto LABEL_9;
  }

  v13 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_10:

  return v13;
}

- (unint64_t)indexOfVisibleView
{
  scrollView = [(MUPlacePhotoGalleryViewController *)self scrollView];
  [scrollView frame];
  Width = CGRectGetWidth(v15);

  if (Width == 0.0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  view = [(MUPlacePhotoGalleryViewController *)self view];
  _mapsui_isRTL = [view _mapsui_isRTL];

  if (_mapsui_isRTL)
  {
    photoViews = [(MUPlacePhotoGalleryViewController *)self photoViews];
    v9 = [photoViews count];
    scrollView2 = [(MUPlacePhotoGalleryViewController *)self scrollView];
    [scrollView2 contentOffset];
    v12 = v9 + -1.0 - v11 / Width;
  }

  else
  {
    photoViews = [(MUPlacePhotoGalleryViewController *)self scrollView];
    [photoViews contentOffset];
    v12 = v13 / Width;
  }

  v5 = v12;

  return v5;
}

- (id)photoViewForTransition
{
  originalIndex = [(MUPlacePhotoGalleryViewController *)self originalIndex];
  if (originalIndex)
  {
    v4 = originalIndex;
    originalIndex2 = [(MUPlacePhotoGalleryViewController *)self originalIndex];
    unsignedIntegerValue = [originalIndex2 unsignedIntegerValue];
    photoViews = [(MUPlacePhotoGalleryViewController *)self photoViews];
    v8 = [photoViews count];

    if (unsignedIntegerValue < v8)
    {
      photoViews2 = [(MUPlacePhotoGalleryViewController *)self photoViews];
      originalIndex3 = [(MUPlacePhotoGalleryViewController *)self originalIndex];
      v11 = [photoViews2 objectAtIndexedSubscript:{objc_msgSend(originalIndex3, "unsignedIntegerValue")}];

LABEL_11:
      goto LABEL_12;
    }
  }

  indexOfVisibleView = [(MUPlacePhotoGalleryViewController *)self indexOfVisibleView];
  photoViews3 = [(MUPlacePhotoGalleryViewController *)self photoViews];
  v14 = [photoViews3 count];

  if (indexOfVisibleView < v14)
  {
    photoViews2 = [(MUPlacePhotoGalleryViewController *)self photoViews];
    superview = [photoViews2 objectAtIndexedSubscript:{-[MUPlacePhotoGalleryViewController indexOfVisibleView](self, "indexOfVisibleView")}];
LABEL_9:
    v11 = superview;
    goto LABEL_11;
  }

  indexOfVisibleView2 = [(MUPlacePhotoGalleryViewController *)self indexOfVisibleView];
  photoViews2 = [(MUPlacePhotoGalleryViewController *)self photoViews];
  if (indexOfVisibleView2 != [photoViews2 count])
  {
    v11 = 0;
    goto LABEL_11;
  }

  additionalView = [(MUPlacePhotoGalleryViewController *)self additionalView];

  if (additionalView)
  {
    photoViews2 = [(MUPlacePhotoGalleryViewController *)self additionalView];
    superview = [photoViews2 superview];
    goto LABEL_9;
  }

  v11 = 0;
LABEL_12:

  return v11;
}

- (id)currentPhoto
{
  indexOfVisibleView = [(MUPlacePhotoGalleryViewController *)self indexOfVisibleView];
  if (indexOfVisibleView == 0x7FFFFFFFFFFFFFFFLL)
  {
    unsignedIntValue = [(NSNumber *)self->_originalIndex unsignedIntValue];
    photos = [(MUPlacePhotoGalleryViewController *)self photos];
    v6 = [photos count];

    if (v6 > unsignedIntValue)
    {
      photos2 = [(MUPlacePhotoGalleryViewController *)self photos];
      unsignedIntValue2 = [(NSNumber *)self->_originalIndex unsignedIntValue];
      photos4 = photos2;
LABEL_6:
      v13 = [photos4 objectAtIndex:unsignedIntValue2];

      goto LABEL_8;
    }
  }

  else
  {
    v10 = indexOfVisibleView;
    photos3 = [(MUPlacePhotoGalleryViewController *)self photos];
    v12 = [photos3 count];

    if (v10 < v12)
    {
      photos4 = [(MUPlacePhotoGalleryViewController *)self photos];
      photos2 = photos4;
      unsignedIntValue2 = v10;
      goto LABEL_6;
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)cancelDownloadingImages
{
  v19 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  downloadingImagesURLs = [(MUPlacePhotoGalleryViewController *)self downloadingImagesURLs];
  v3 = [downloadingImagesURLs countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(downloadingImagesURLs);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = MUGetMUPlacePhotoVCLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          absoluteString = [v7 absoluteString];
          *buf = 138412290;
          v17 = absoluteString;
          _os_log_impl(&dword_1C5620000, v8, OS_LOG_TYPE_DEBUG, "[X]Cancelling image download for url: %@", buf, 0xCu);
        }

        mEMORY[0x1E696F190] = [MEMORY[0x1E696F190] sharedImageManager];
        [mEMORY[0x1E696F190] cancelLoadAppImageAtURL:v7];
      }

      v4 = [downloadingImagesURLs countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)downloadImageForPhotoViewAtIndex:(unint64_t)index
{
  photoViews = [(MUPlacePhotoGalleryViewController *)self photoViews];
  v6 = [photoViews count] - 1;

  if (v6 >= index)
  {
    photoViews2 = [(MUPlacePhotoGalleryViewController *)self photoViews];
    v11 = [photoViews2 objectAtIndexedSubscript:index];

    photos = [(MUPlacePhotoGalleryViewController *)self photos];
    v9 = [photos objectAtIndexedSubscript:index];

    largestPhotoURL = [v9 largestPhotoURL];
    if (largestPhotoURL)
    {
      [(MUPlacePhotoGalleryViewController *)self downloadImageForURL:largestPhotoURL forIndex:index];
    }
  }
}

- (void)downloadImageForURL:(id)l forIndex:(unint64_t)index
{
  v23 = *MEMORY[0x1E69E9840];
  lCopy = l;
  downloadingImagesURLs = [(MUPlacePhotoGalleryViewController *)self downloadingImagesURLs];
  v8 = [downloadingImagesURLs containsObject:lCopy];

  if ((v8 & 1) == 0)
  {
    v9 = MUGetMUPlacePhotoVCLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      absoluteString = [lCopy absoluteString];
      *buf = 134218242;
      indexCopy = index;
      v21 = 2112;
      v22 = absoluteString;
      _os_log_impl(&dword_1C5620000, v9, OS_LOG_TYPE_DEBUG, "[...]Starting download for image at index: %lu. URL: %@", buf, 0x16u);
    }

    downloadingImagesURLs2 = [(MUPlacePhotoGalleryViewController *)self downloadingImagesURLs];
    [downloadingImagesURLs2 addObject:lCopy];

    objc_initWeak(buf, self);
    mEMORY[0x1E696F190] = [MEMORY[0x1E696F190] sharedImageManager];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __66__MUPlacePhotoGalleryViewController_downloadImageForURL_forIndex___block_invoke;
    v15[3] = &unk_1E821A240;
    objc_copyWeak(v18, buf);
    v13 = lCopy;
    v18[1] = index;
    v16 = v13;
    selfCopy = self;
    [mEMORY[0x1E696F190] loadAppImageAtURL:v13 completionHandler:v15];

    objc_destroyWeak(v18);
    objc_destroyWeak(buf);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __66__MUPlacePhotoGalleryViewController_downloadImageForURL_forIndex___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__MUPlacePhotoGalleryViewController_downloadImageForURL_forIndex___block_invoke_2;
  v12[3] = &unk_1E821A218;
  objc_copyWeak(v17, (a1 + 48));
  v13 = *(a1 + 32);
  v14 = v8;
  v17[1] = *(a1 + 56);
  v9 = *(a1 + 40);
  v15 = v7;
  v16 = v9;
  v10 = v7;
  v11 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], v12);

  objc_destroyWeak(v17);
}

void __66__MUPlacePhotoGalleryViewController_downloadImageForURL_forIndex___block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained downloadingImagesURLs];
  [v3 removeObject:*(a1 + 32)];

  if (*(a1 + 40))
  {
    v4 = MUGetMUPlacePhotoVCLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 72);
      v6 = [*(a1 + 40) debugDescription];
      v7 = [*(a1 + 32) absoluteString];
      v16 = 134218498;
      v17 = v5;
      v18 = 2112;
      v19 = v6;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_1C5620000, v4, OS_LOG_TYPE_ERROR, "[X]Error encountered for photo at index: %lu. Error: %@. URL: %@", &v16, 0x20u);
    }
  }

  if (*(a1 + 48))
  {
    v8 = [WeakRetained photoViews];
    v9 = [v8 objectAtIndexedSubscript:*(a1 + 72)];

    [v9 setNeedsFullImageDownload:0];
    v10 = MUGetMUPlacePhotoVCLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 72);
      v12 = [*(a1 + 32) absoluteString];
      v16 = 134218242;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_1C5620000, v10, OS_LOG_TYPE_DEBUG, "[✔]Showing image at index: %lu. URL: %@", &v16, 0x16u);
    }

    v13 = [*(a1 + 56) indexesOfDownloadedImages];
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 72)];
    [v13 addObject:v14];

    [v9 setImage:*(a1 + 48)];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)downloadImageForVisibleViews
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
  indexOfVisibleView = [(MUPlacePhotoGalleryViewController *)self indexOfVisibleView];
  if (indexOfVisibleView != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = indexOfVisibleView;
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:indexOfVisibleView];
    [v3 addObject:v6];

    if (v5)
    {
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5 - 1];
      [v3 addObject:v7];
    }

    photos = [(MUPlacePhotoGalleryViewController *)self photos];
    v9 = [photos count] - 1;

    if (v5 < v9)
    {
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5 + 1];
      [v3 addObject:v10];
    }
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = v3;
  v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v27;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v26 + 1) + 8 * i);
        indexesOfDownloadedImages = [(MUPlacePhotoGalleryViewController *)self indexesOfDownloadedImages];
        v18 = [indexesOfDownloadedImages containsObject:v16];

        if ((v18 & 1) == 0)
        {
          unsignedIntegerValue = [v16 unsignedIntegerValue];
          photos2 = [(MUPlacePhotoGalleryViewController *)self photos];
          v21 = [photos2 count];

          if (unsignedIntegerValue < v21)
          {
            photos3 = [(MUPlacePhotoGalleryViewController *)self photos];
            v23 = [photos3 objectAtIndexedSubscript:{objc_msgSend(v16, "unsignedIntegerValue")}];

            largestPhotoURL = [v23 largestPhotoURL];
            if (largestPhotoURL)
            {
              -[MUPlacePhotoGalleryViewController downloadImageForURL:forIndex:](self, "downloadImageForURL:forIndex:", largestPhotoURL, [v16 unsignedIntegerValue]);
            }
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v13);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)viewDidLoad
{
  v25[1] = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = MUPlacePhotoGalleryViewController;
  [(MUPlacePhotoGalleryViewController *)&v24 viewDidLoad];
  view = [(MUPlacePhotoGalleryViewController *)self view];
  [view setAccessibilityIdentifier:@"PlacePhotoGalleryView"];

  additionalView = [(MUPlacePhotoGalleryViewController *)self additionalView];
  [(MUPlacePhotoGalleryViewController *)self setupViewsWithAdditionalView:additionalView];

  v5 = objc_alloc(MEMORY[0x1E69DC708]);
  v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.backward"];
  v7 = [v5 initWithImage:v6 style:0 target:self action:sel_didTapDone];
  [(MUPlacePhotoGalleryViewController *)self setBackBarButtonItem:v7];

  leftBarButtonItem = [(MUPlacePhotoGalleryViewController *)self leftBarButtonItem];
  navigationItem = [(MUPlacePhotoGalleryViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:leftBarButtonItem];

  rightBarButtonItem = [(MUPlacePhotoGalleryViewController *)self rightBarButtonItem];
  navigationItem2 = [(MUPlacePhotoGalleryViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:rightBarButtonItem];

  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  view2 = [(MUPlacePhotoGalleryViewController *)self view];
  [view2 setBackgroundColor:systemBackgroundColor];

  v14 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_toggleBackground_];
  [v14 setNumberOfTapsRequired:1];
  view3 = [(MUPlacePhotoGalleryViewController *)self view];
  [view3 addGestureRecognizer:v14];

  v16 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_zoomToPoint_];
  [v16 setNumberOfTapsRequired:2];
  view4 = [(MUPlacePhotoGalleryViewController *)self view];
  [view4 addGestureRecognizer:v16];

  [v14 requireGestureRecognizerToFail:v16];
  [v16 setDelaysTouchesBegan:1];
  [v14 setDelaysTouchesBegan:1];
  v18 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
  [v18 configureWithDefaultBackground];
  navigationItem3 = [(MUPlacePhotoGalleryViewController *)self navigationItem];
  [navigationItem3 setScrollEdgeAppearance:v18];

  v20 = objc_opt_self();
  v25[0] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  v22 = [(MUPlacePhotoGalleryViewController *)self registerForTraitChanges:v21 withAction:sel__updateNavbarVisibility];

  v23 = *MEMORY[0x1E69E9840];
}

- (void)viewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = MUPlacePhotoGalleryViewController;
  [(MUPlacePhotoGalleryViewController *)&v14 viewDidLayoutSubviews];
  originalIndex = [(MUPlacePhotoGalleryViewController *)self originalIndex];

  if (originalIndex)
  {
    originalIndex2 = [(MUPlacePhotoGalleryViewController *)self originalIndex];
    unsignedIntegerValue = [originalIndex2 unsignedIntegerValue];

    view = [(MUPlacePhotoGalleryViewController *)self view];
    _mapsui_isRTL = [view _mapsui_isRTL];

    if (_mapsui_isRTL)
    {
      photoViews = [(MUPlacePhotoGalleryViewController *)self photoViews];
      v9 = [photoViews count];
      originalIndex3 = [(MUPlacePhotoGalleryViewController *)self originalIndex];
      unsignedIntegerValue = v9 + ~[originalIndex3 unsignedIntegerValue];
    }

    scrollView = [(MUPlacePhotoGalleryViewController *)self scrollView];
    [scrollView frame];
    v12 = CGRectGetWidth(v15) * unsignedIntegerValue;
    scrollView2 = [(MUPlacePhotoGalleryViewController *)self scrollView];
    [scrollView2 setContentOffset:{v12, 0.0}];

    [(MUPlacePhotoGalleryViewController *)self setOriginalIndex:0];
  }

  [(MUPlacePhotoGalleryViewController *)self downloadImageForVisibleViews];
}

- (void)setupAttributionView
{
  v21[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MUPlacePhotoGalleryAttributionView);
  attributionView = self->_attributionView;
  self->_attributionView = v3;

  [(MUPlacePhotoGalleryAttributionView *)self->_attributionView setDelegate:self];
  [(MUPlacePhotoGalleryAttributionView *)self->_attributionView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIScrollView *)self->_scrollView addSubview:self->_attributionView];
  v20 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_didTapOnAttributionView];
  [v20 setNumberOfTapsRequired:1];
  [(MUPlacePhotoGalleryAttributionView *)self->_attributionView addGestureRecognizer:v20];
  v15 = MEMORY[0x1E696ACD8];
  leadingAnchor = [(MUPlacePhotoGalleryAttributionView *)self->_attributionView leadingAnchor];
  view = [(MUPlacePhotoGalleryViewController *)self view];
  leadingAnchor2 = [view leadingAnchor];
  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v21[0] = v16;
  trailingAnchor = [(MUPlacePhotoGalleryAttributionView *)self->_attributionView trailingAnchor];
  view2 = [(MUPlacePhotoGalleryViewController *)self view];
  trailingAnchor2 = [view2 trailingAnchor];
  v8 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v21[1] = v8;
  bottomAnchor = [(MUPlacePhotoGalleryAttributionView *)self->_attributionView bottomAnchor];
  view3 = [(MUPlacePhotoGalleryViewController *)self view];
  bottomAnchor2 = [view3 bottomAnchor];
  v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v21[2] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:3];
  [v15 activateConstraints:v13];

  [(MUPlacePhotoGalleryViewController *)self updateViewsWithPhotoAtIndex:[(NSNumber *)self->_originalIndex unsignedIntegerValue]];
  v14 = *MEMORY[0x1E69E9840];
}

- (void)setupAdditionalView:(id)view withStackView:(id)stackView
{
  v42[2] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  if (viewCopy)
  {
    v40 = viewCopy;
    objc_storeStrong(&self->_additionalView, view);
    stackViewCopy = stackView;
    v9 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [v9 setTranslatesAutoresizingMaskIntoConstraints:1];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [v9 setBackgroundColor:clearColor];

    [stackViewCopy addArrangedSubview:v9];
    v35 = MEMORY[0x1E696ACD8];
    v11 = v9;
    heightAnchor = [v9 heightAnchor];
    view = [(MUPlacePhotoGalleryViewController *)self view];
    heightAnchor2 = [view heightAnchor];
    v14 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    v42[0] = v14;
    v39 = v9;
    widthAnchor = [v9 widthAnchor];
    view2 = [(MUPlacePhotoGalleryViewController *)self view];
    widthAnchor2 = [view2 widthAnchor];
    v18 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v42[1] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
    [v35 activateConstraints:v19];

    [(UIView *)self->_additionalView setTranslatesAutoresizingMaskIntoConstraints:0];
    [v11 addSubview:self->_additionalView];
    v32 = MEMORY[0x1E696ACD8];
    heightAnchor3 = [(UIView *)self->_additionalView heightAnchor];
    view3 = [(MUPlacePhotoGalleryViewController *)self view];
    widthAnchor3 = [view3 widthAnchor];
    v33 = [heightAnchor3 constraintEqualToAnchor:widthAnchor3];
    v41[0] = v33;
    widthAnchor4 = [(UIView *)self->_additionalView widthAnchor];
    view4 = [(MUPlacePhotoGalleryViewController *)self view];
    widthAnchor5 = [view4 widthAnchor];
    v23 = [widthAnchor4 constraintEqualToAnchor:widthAnchor5];
    v41[1] = v23;
    centerYAnchor = [(UIView *)self->_additionalView centerYAnchor];
    view5 = [(MUPlacePhotoGalleryViewController *)self view];
    centerYAnchor2 = [view5 centerYAnchor];
    v27 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v41[2] = v27;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:3];
    [v32 activateConstraints:v28];

    v29 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_didTapOnAdditionalView];
    [v29 setNumberOfTapsRequired:1];
    [(UIView *)self->_additionalView addGestureRecognizer:v29];
    v30 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel_handlePanGesture_];
    [v30 setDelegate:self];
    [v39 addGestureRecognizer:v30];

    viewCopy = v40;
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (void)setupPhotoViewsWithStackView:(id)view
{
  v38[2] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v31 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_photos, "count")}];
  if ([(NSArray *)self->_photos count])
  {
    v4 = 0;
    do
    {
      v5 = [(NSArray *)self->_photos objectAtIndexedSubscript:v4];
      mEMORY[0x1E696F190] = [MEMORY[0x1E696F190] sharedImageManager];
      largestPhotoURL = [v5 largestPhotoURL];
      v8 = [mEMORY[0x1E696F190] cachedImageAtURL:largestPhotoURL];

      if (v8)
      {
        indexesOfDownloadedImages = self->_indexesOfDownloadedImages;
        delegate = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];
        [(NSMutableArray *)indexesOfDownloadedImages addObject:delegate];
        image = v8;
      }

      else
      {
        delegate = [(MUPlacePhotoGalleryViewController *)self delegate];
        v12 = [delegate placePhotoGalleryImageViewForPhotoAtIndex:v4];
        image = [v12 image];
      }

      v35 = image;
      v13 = [[MUPlacePhotoView alloc] initWithImage:image];
      [(MUPlacePhotoView *)v13 setNeedsFullImageDownload:v8 == 0];
      v36 = v5;
      v37 = v4;
      if ([v5 needsObfuscationWhenRenderedInFullScreen] && (objc_msgSend(v5, "attribution"), v14 = objc_claimAutoreleasedReturnValue(), v14, v14))
      {
        v15 = [MUPlacePhotoViewObfuscationModel alloc];
        attribution = [v5 attribution];
        providerName = [attribution providerName];
        v18 = [(MUPlacePhotoViewObfuscationModel *)v15 initWithProviderName:providerName];

        v19 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_didTapOpen];
        [(MUPlacePhotoViewObfuscationModel *)v18 setTapGestureRecognizer:v19];
        [(MUPlacePhotoView *)v13 setObfuscationModel:v18];
      }

      else
      {
        v18 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel_handlePanGesture_];
        [(MUPlacePhotoViewObfuscationModel *)v18 setDelegate:self];
        [(MUPlacePhotoView *)v13 addGestureRecognizer:v18];
      }

      [v31 addObject:v13];
      [viewCopy addArrangedSubview:v13];
      v33 = MEMORY[0x1E696ACD8];
      heightAnchor = [(MUPlacePhotoView *)v13 heightAnchor];
      view = [(MUPlacePhotoGalleryViewController *)self view];
      heightAnchor2 = [view heightAnchor];
      v22 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
      v38[0] = v22;
      widthAnchor = [(MUPlacePhotoView *)v13 widthAnchor];
      view2 = [(MUPlacePhotoGalleryViewController *)self view];
      widthAnchor2 = [view2 widthAnchor];
      v26 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
      v38[1] = v26;
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
      [v33 activateConstraints:v27];

      v4 = v37 + 1;
    }

    while (v37 + 1 < [(NSArray *)self->_photos count]);
  }

  v28 = [v31 copy];
  photoViews = self->_photoViews;
  self->_photoViews = v28;

  v30 = *MEMORY[0x1E69E9840];
}

- (void)reloadUserAttribution
{
  delegate = [(MUPlacePhotoGalleryViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MUPlacePhotoGalleryViewController *)self delegate];
    v8 = [delegate2 placePhotoGalleryRequestsUserAttribution:self];
  }

  else
  {
    v8 = 0;
  }

  userAttributionViewModel = [(MUPlacePhotoGalleryViewController *)self userAttributionViewModel];
  v7 = [v8 isEqual:userAttributionViewModel];

  if ((v7 & 1) == 0)
  {
    [(MUPlacePhotoGalleryViewController *)self setUserAttributionViewModel:v8];
    [(MUPlacePhotoGalleryViewController *)self updateViewsWithPhotoAtIndex:[(MUPlacePhotoGalleryViewController *)self indexOfVisibleView]];
  }
}

- (void)setEnablePersonalizedAttribution:(BOOL)attribution
{
  if (self->_enablePersonalizedAttribution != attribution)
  {
    self->_enablePersonalizedAttribution = attribution;
    if (!attribution)
    {
      [(MUPlacePhotoGalleryViewController *)self setUserAttributionViewModel:0];
    }

    [(MUPlacePhotoGalleryViewController *)self reloadUserAttribution];
  }
}

- (void)setupViewsWithAdditionalView:(id)view
{
  v43[8] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DCEF8];
  viewCopy = view;
  v5 = objc_alloc_init(v4);
  scrollView = self->_scrollView;
  self->_scrollView = v5;

  [(UIScrollView *)self->_scrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(UIScrollView *)self->_scrollView setBackgroundColor:clearColor];

  [(UIScrollView *)self->_scrollView setPagingEnabled:1];
  [(UIScrollView *)self->_scrollView setShowsHorizontalScrollIndicator:0];
  [(UIScrollView *)self->_scrollView setShowsVerticalScrollIndicator:0];
  [(UIScrollView *)self->_scrollView setDelegate:self];
  clearColor2 = [MEMORY[0x1E69DC888] clearColor];
  [(UIScrollView *)self->_scrollView setBackgroundColor:clearColor2];

  [(UIScrollView *)self->_scrollView setContentInsetAdjustmentBehavior:2];
  [(UIScrollView *)self->_scrollView setAccessibilityIdentifier:@"PlacePhotoGalleryScrollView"];
  view = [(MUPlacePhotoGalleryViewController *)self view];
  [view addSubview:self->_scrollView];

  v10 = objc_alloc_init(MEMORY[0x1E69DCF90]);
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v10 setDistribution:4];
  [(UIScrollView *)self->_scrollView addSubview:v10];
  v29 = MEMORY[0x1E696ACD8];
  leadingAnchor = [(UIScrollView *)self->_scrollView leadingAnchor];
  view2 = [(MUPlacePhotoGalleryViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  v38 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v43[0] = v38;
  trailingAnchor = [(UIScrollView *)self->_scrollView trailingAnchor];
  view3 = [(MUPlacePhotoGalleryViewController *)self view];
  trailingAnchor2 = [view3 trailingAnchor];
  v34 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v43[1] = v34;
  topAnchor = [(UIScrollView *)self->_scrollView topAnchor];
  view4 = [(MUPlacePhotoGalleryViewController *)self view];
  topAnchor2 = [view4 topAnchor];
  v30 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v43[2] = v30;
  bottomAnchor = [(UIScrollView *)self->_scrollView bottomAnchor];
  view5 = [(MUPlacePhotoGalleryViewController *)self view];
  bottomAnchor2 = [view5 bottomAnchor];
  v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v43[3] = v25;
  leadingAnchor3 = [v10 leadingAnchor];
  leadingAnchor4 = [(UIScrollView *)self->_scrollView leadingAnchor];
  v22 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v43[4] = v22;
  trailingAnchor3 = [v10 trailingAnchor];
  trailingAnchor4 = [(UIScrollView *)self->_scrollView trailingAnchor];
  v11 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v43[5] = v11;
  topAnchor3 = [v10 topAnchor];
  topAnchor4 = [(UIScrollView *)self->_scrollView topAnchor];
  v14 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v43[6] = v14;
  bottomAnchor3 = [v10 bottomAnchor];
  bottomAnchor4 = [(UIScrollView *)self->_scrollView bottomAnchor];
  v17 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v43[7] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:8];
  [v29 activateConstraints:v18];

  [(MUPlacePhotoGalleryViewController *)self setupPhotoViewsWithStackView:v10];
  [(MUPlacePhotoGalleryViewController *)self setupAdditionalView:viewCopy withStackView:v10];

  [(MUPlacePhotoGalleryViewController *)self setupAttributionView];
  [(MUPlacePhotoGalleryViewController *)self updateViewsWithPhotoAtIndex:[(NSNumber *)self->_originalIndex unsignedIntegerValue]];
  [(MUPlacePhotoGalleryViewController *)self reloadUserAttribution];

  v19 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(MUPlacePhotoGalleryViewController *)self cancelDownloadingImages];
  v3.receiver = self;
  v3.super_class = MUPlacePhotoGalleryViewController;
  [(MUPlacePhotoGalleryViewController *)&v3 dealloc];
}

- (id)keyCommands
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDEA0] modifierFlags:0 action:sel_didTapDone];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (MUPlacePhotoGalleryViewController)initWithPhotos:(id)photos additionalView:(id)view scrollToIndex:(unint64_t)index mapItem:(id)item delegate:(id)delegate
{
  photosCopy = photos;
  viewCopy = view;
  itemCopy = item;
  delegateCopy = delegate;
  v26.receiver = self;
  v26.super_class = MUPlacePhotoGalleryViewController;
  v16 = [(MUPlacePhotoGalleryViewController *)&v26 initWithNibName:0 bundle:0];
  if (v16)
  {
    v17 = [photosCopy copy];
    photos = v16->_photos;
    v16->_photos = v17;

    objc_storeStrong(&v16->_mapItem, item);
    objc_storeWeak(&v16->_delegate, delegateCopy);
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
    originalIndex = v16->_originalIndex;
    v16->_originalIndex = v19;

    objc_storeStrong(&v16->_additionalView, view);
    v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](v16->_photos, "count")}];
    indexesOfDownloadedImages = v16->_indexesOfDownloadedImages;
    v16->_indexesOfDownloadedImages = v21;

    v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](v16->_photos, "count")}];
    downloadingImagesURLs = v16->_downloadingImagesURLs;
    v16->_downloadingImagesURLs = v23;

    v16->_panAndSwipeToDismissGestureEnabled = 1;
  }

  return v16;
}

@end