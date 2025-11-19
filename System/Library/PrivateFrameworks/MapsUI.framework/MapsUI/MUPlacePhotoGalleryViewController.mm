@interface MUPlacePhotoGalleryViewController
- (CGPoint)imageViewCenterPoint;
- (CGPoint)scrollViewContentOffset;
- (MUPlacePhotoGalleryViewController)initWithPhotos:(id)a3 additionalView:(id)a4 scrollToIndex:(unint64_t)a5 mapItem:(id)a6 delegate:(id)a7;
- (MUPlacePhotoGalleryViewControllerDelegate)delegate;
- (UIActivityIndicatorView)spinner;
- (UIBarButtonItem)addPhotoBarButtonItem;
- (id)currentPhoto;
- (id)keyCommands;
- (id)photoViewForTransition;
- (unint64_t)indexOfView:(id)a3;
- (unint64_t)indexOfVisibleView;
- (unint64_t)viewsCount;
- (void)_addPhoto;
- (void)_didTapDeletePhotoMenuItemForImageAtIndex:(unint64_t)a3;
- (void)_didTapEditPhotoCreditMenuItem;
- (void)_rapButtonPressed;
- (void)_selectedAddPhotosWithEntryPoint:(int64_t)a3;
- (void)_updateNavbarVisibility;
- (void)attributionViewDidSelectDeletePhoto:(id)a3;
- (void)beginAnimatingActivityIndicator;
- (void)cancelDownloadingImages;
- (void)dealloc;
- (void)didTapDone;
- (void)didTapOnAdditionalView;
- (void)didTapOnAttributionView;
- (void)didTapOpen;
- (void)dismiss;
- (void)downloadImageForPhotoViewAtIndex:(unint64_t)a3;
- (void)downloadImageForURL:(id)a3 forIndex:(unint64_t)a4;
- (void)downloadImageForVisibleViews;
- (void)endAnimatingActivityIndicatorWithError:(id)a3;
- (void)handlePanGesture:(id)a3;
- (void)reloadUserAttribution;
- (void)resetPhotosZoomLevel;
- (void)scrollLeft;
- (void)scrollRight;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)setEnablePersonalizedAttribution:(BOOL)a3;
- (void)setupAdditionalView:(id)a3 withStackView:(id)a4;
- (void)setupAttributionView;
- (void)setupPhotoViewsWithStackView:(id)a3;
- (void)setupViewsWithAdditionalView:(id)a3;
- (void)startAnimatingActivityIndicatorViewForRAP;
- (void)toggleBackground:(id)a3;
- (void)updateViewsWithPhotoAtIndex:(unint64_t)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)zoomToPoint:(id)a3;
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

- (void)attributionViewDidSelectDeletePhoto:(id)a3
{
  v4 = [(MUPlacePhotoGalleryViewController *)self indexOfVisibleView];

  [(MUPlacePhotoGalleryViewController *)self _didTapDeletePhotoMenuItemForImageAtIndex:v4];
}

- (void)scrollRight
{
  v3 = [(MUPlacePhotoGalleryViewController *)self indexOfVisibleView];
  if (v3 < [(MUPlacePhotoGalleryViewController *)self viewsCount]- 1)
  {
    [(MUPlacePhotoGalleryViewController *)self scrollViewContentOffset];
    v5 = v4;
    v6 = [(MUPlacePhotoGalleryViewController *)self view];
    [v6 frame];
    v7 = CGRectGetWidth(v13) + v5;

    v8 = [(MUPlacePhotoGalleryViewController *)self scrollView];
    [v8 setContentOffset:0 animated:{v7, 0.0}];

    v9 = [(MUPlacePhotoGalleryViewController *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(MUPlacePhotoGalleryViewController *)self delegate];
      [v11 placePhotoGalleryDidScrollRightToIndex:v3 + 1];
    }
  }
}

- (void)scrollLeft
{
  v3 = [(MUPlacePhotoGalleryViewController *)self indexOfVisibleView];
  if (v3)
  {
    v4 = v3;
    [(MUPlacePhotoGalleryViewController *)self scrollViewContentOffset];
    v6 = v5;
    v7 = [(MUPlacePhotoGalleryViewController *)self view];
    [v7 frame];
    v8 = v6 - CGRectGetWidth(v14);

    v9 = [(MUPlacePhotoGalleryViewController *)self scrollView];
    [v9 setContentOffset:0 animated:{v8, 0.0}];

    v10 = [(MUPlacePhotoGalleryViewController *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [(MUPlacePhotoGalleryViewController *)self delegate];
      [v12 placePhotoGalleryDidScrollLeftToIndex:v4 - 1];
    }
  }
}

- (void)endAnimatingActivityIndicatorWithError:(id)a3
{
  v4 = [(MUPlacePhotoGalleryViewController *)self spinner];
  [v4 stopAnimating];

  v5 = [(MUPlacePhotoGalleryViewController *)self addPhotoBarButtonItem];
  [v5 setCustomView:0];
}

- (void)beginAnimatingActivityIndicator
{
  [(MUPlacePhotoGalleryViewController *)self endAnimatingActivityIndicatorWithError:0];
  v3 = [(MUPlacePhotoGalleryViewController *)self spinner];
  v4 = [(MUPlacePhotoGalleryViewController *)self addPhotoBarButtonItem];
  [v4 setCustomView:v3];

  v5 = [(MUPlacePhotoGalleryViewController *)self spinner];
  [v5 startAnimating];
}

- (void)startAnimatingActivityIndicatorViewForRAP
{
  [(MUPlacePhotoGalleryViewController *)self stopAnimatingActivityIndicatorViewForRAP];
  attributionView = self->_attributionView;

  [(MUPlacePhotoGalleryAttributionView *)attributionView beginAnimatingActivityIndicator];
}

- (void)_updateNavbarVisibility
{
  v3 = [(MUPlacePhotoGalleryViewController *)self navigationController];
  -[MUPlacePhotoGalleryViewController setUIStyleWithNavigationBarHidden:](self, "setUIStyleWithNavigationBarHidden:", [v3 isNavigationBarHidden]);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v11.receiver = self;
  v11.super_class = MUPlacePhotoGalleryViewController;
  v7 = a4;
  [(MUPlacePhotoGalleryViewController *)&v11 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(MUPlacePhotoGalleryViewController *)self indexOfVisibleView];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __88__MUPlacePhotoGalleryViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v10[3] = &unk_1E821A290;
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  v10[4] = self;
  v10[5] = v9;
  [v7 animateAlongsideTransition:v10 completion:0];
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

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v4 = a3;
  v5 = [(MUPlacePhotoGalleryViewController *)self indexOfVisibleView];
  [v4 contentOffset];
  v7 = v6;

  [(MUPlacePhotoGalleryViewController *)self lastScrollViewOffsetBeforeScrolling];
  if (v8 >= v7)
  {
    [(MUPlacePhotoGalleryViewController *)self lastScrollViewOffsetBeforeScrolling];
    if (v12 > v7)
    {
      v13 = [(MUPlacePhotoGalleryViewController *)self delegate];
      v14 = objc_opt_respondsToSelector();

      if (v14)
      {
        v11 = [(MUPlacePhotoGalleryViewController *)self delegate];
        [v11 placePhotoGalleryDidScrollRightToIndex:v5];
        goto LABEL_7;
      }
    }
  }

  else
  {
    v9 = [(MUPlacePhotoGalleryViewController *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(MUPlacePhotoGalleryViewController *)self delegate];
      [v11 placePhotoGalleryDidScrollLeftToIndex:v5];
LABEL_7:
    }
  }

  [(MUPlacePhotoGalleryViewController *)self lastScrollViewOffsetBeforeScrolling];
  if (v15 != v7)
  {
    v16 = [(MUPlacePhotoGalleryViewController *)self delegate];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      v18 = [(MUPlacePhotoGalleryViewController *)self delegate];
      [v18 placePhotoGalleryDidScrollToIndex:v5];
    }
  }

  [(MUPlacePhotoGalleryViewController *)self setLastScrollViewOffsetBeforeScrolling:0.0];

  [(MUPlacePhotoGalleryViewController *)self resetPhotosZoomLevel];
}

- (void)scrollViewDidScroll:(id)a3
{
  v5 = a3;
  [(MUPlacePhotoGalleryViewController *)self updateViewsWithPhotoAtIndex:[(MUPlacePhotoGalleryViewController *)self indexOfVisibleView]];
  [(MUPlacePhotoGalleryViewController *)self lastScrollViewOffsetBeforeScrolling];
  if (v4 == 0.0)
  {
    [v5 contentOffset];
    [(MUPlacePhotoGalleryViewController *)self setLastScrollViewOffsetBeforeScrolling:?];
  }
}

- (void)_didTapDeletePhotoMenuItemForImageAtIndex:(unint64_t)a3
{
  v5 = [(MUPlacePhotoGalleryViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MUPlacePhotoGalleryViewController *)self delegate];
    [v7 placePhotoGallery:self didSelectDeleteImageAtIndex:a3];
  }
}

- (void)_didTapEditPhotoCreditMenuItem
{
  v3 = [(MUPlacePhotoGalleryViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MUPlacePhotoGalleryViewController *)self delegate];
    [v5 placePhotoGalleryDidSelectEditPhotoCredit:self];
  }
}

- (void)didTapOnAdditionalView
{
  v3 = [(MUPlacePhotoGalleryViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MUPlacePhotoGalleryViewController *)self delegate];
    [v5 placePhotoGalleryAdditionalViewTapped:self];
  }
}

- (void)didTapOnAttributionView
{
  v3 = [(MUPlacePhotoGalleryViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MUPlacePhotoGalleryViewController *)self delegate];
    [v5 placePhotoGallery:self attributionViewTappedAtIndex:{-[MUPlacePhotoGalleryViewController indexOfVisibleView](self, "indexOfVisibleView")}];
  }
}

- (void)dismiss
{
  [(MUPlacePhotoGalleryViewController *)self cancelDownloadingImages];
  v3 = [(MUPlacePhotoGalleryViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MUPlacePhotoGalleryViewController *)self delegate];
    [v5 placePhotoGalleryDidCloseAtIndex:{-[MUPlacePhotoGalleryViewController indexOfVisibleView](self, "indexOfVisibleView")}];
  }

  v6 = [(MUPlacePhotoGalleryViewController *)self presentingViewController];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__MUPlacePhotoGalleryViewController_dismiss__block_invoke;
  v7[3] = &unk_1E821A268;
  v7[4] = self;
  [v6 dismissViewControllerAnimated:1 completion:v7];
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
  v3 = [(MUPlacePhotoGalleryViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MUPlacePhotoGalleryViewController *)self delegate];
    [v5 placePhotoGallery:self willCloseAtIndex:{-[MUPlacePhotoGalleryViewController indexOfVisibleView](self, "indexOfVisibleView")}];
  }

  [(MUPlacePhotoGalleryViewController *)self dismiss];
}

- (void)didTapOpen
{
  v3 = [(MUPlacePhotoGalleryViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MUPlacePhotoGalleryViewController *)self delegate];
    [v5 placePhotoGallery:self openButtonTappedAtIndex:{-[MUPlacePhotoGalleryViewController indexOfVisibleView](self, "indexOfVisibleView")}];
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

- (void)_selectedAddPhotosWithEntryPoint:(int64_t)a3
{
  v6 = objc_alloc_init(MUPresentationOptions);
  [(MUPresentationOptions *)v6 setSourceItem:self->_addPhotoBarButtonItem];
  [(MUPresentationOptions *)v6 setPresentingViewController:self];
  v5 = [(MUPlacePhotoGalleryViewController *)self delegate];
  [v5 placePhotoGallery:self selectedAddPhotoWithEntryPoint:a3 usingPresentationOptions:v6];
}

- (void)_rapButtonPressed
{
  v3 = [(MUPlacePhotoGalleryViewController *)self delegate];
  [v3 placePhotoGallery:self didSelectReportImageAtIndex:{-[MUPlacePhotoGalleryViewController indexOfVisibleView](self, "indexOfVisibleView")}];
}

- (void)updateViewsWithPhotoAtIndex:(unint64_t)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = [(MUPlacePhotoGalleryViewController *)self photos];
  v6 = [v5 count];

  if (v6 > a3)
  {
    v7 = [(MUPlacePhotoGalleryViewController *)self photos];
    v28 = [v7 objectAtIndexedSubscript:a3];

    v8 = [(MUPlacePhotoGalleryViewController *)self photos];
    v9 = [v8 count];

    if (v9 <= a3)
    {
      v18 = [(MUPlacePhotoGalleryViewController *)self attributionView];
      [v18 setHidden:1];

      v14 = [(MUPlacePhotoGalleryViewController *)self leftBarButtonItem];
      v19 = [(MUPlacePhotoGalleryViewController *)self navigationItem];
      [v19 setLeftBarButtonItem:v14];
LABEL_14:

      v23 = [(MUPlacePhotoGalleryViewController *)self photoViews];
      v24 = [v23 count];

      if (v24 > a3)
      {
        [(MUPlacePhotoGalleryViewController *)self downloadImageForVisibleViews];
      }

      v25 = _MULocalizedStringFromThisBundle(@"%lu of %lu");
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:v25, a3 + 1, -[MUPlacePhotoGalleryViewController viewsCount](self, "viewsCount")];
      [(MUPlacePhotoGalleryViewController *)self setTitle:v26];

      v27 = *MEMORY[0x1E69E9840];

      return;
    }

    v10 = [v28 photoStyle];
    if (v10 == 1)
    {
      v14 = objc_alloc_init(MUPlacePhotoGalleryAttributionViewModel);
      v20 = [v28 title];
      [(MUPlacePhotoGalleryAttributionViewModel *)v14 setTitleText:v20];

      v12 = [v28 subtitle];
      [(MUPlacePhotoGalleryAttributionViewModel *)v14 setSubtitleText:v12];
    }

    else
    {
      if (v10)
      {
        v14 = 0;
        goto LABEL_13;
      }

      mapItem = self->_mapItem;
      v12 = [(MUPlacePhotoGalleryViewController *)self userAttributionViewModel];
      v13 = [v12 attributionName];
      v14 = [MUPlacePhotoGalleryAttributionViewModel viewModelFromMapItem:mapItem photo:v28 photoCreditName:v13 shouldAddPhotoCredit:[(MUPlacePhotoGalleryViewController *)self enablePersonalizedAttribution]];
    }

LABEL_13:
    v21 = [(MUPlacePhotoGalleryViewController *)self attributionView];
    [v21 setViewModel:v14];

    v19 = [(MUPlacePhotoGalleryViewController *)self leftBarButtonItem];
    v22 = [(MUPlacePhotoGalleryViewController *)self navigationItem];
    [v22 setLeftBarButtonItem:v19];

    goto LABEL_14;
  }

  v15 = MUGetMUPlacePhotoVCLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    v16 = [(MUPlacePhotoGalleryViewController *)self photos];
    *buf = 134218240;
    v30 = a3;
    v31 = 2048;
    v32 = [v16 count];
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
  v2 = [(MUPlacePhotoGalleryViewController *)self photoViews];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        [v7 minimumZoomScale];
        [v7 setZoomScale:0 animated:?];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)zoomToPoint:(id)a3
{
  v9 = a3;
  v4 = [(MUPlacePhotoGalleryViewController *)self indexOfVisibleView];
  v5 = [(MUPlacePhotoGalleryViewController *)self photoViews];
  v6 = [v5 count];

  if (v4 < v6)
  {
    v7 = [(MUPlacePhotoGalleryViewController *)self photoViews];
    v8 = [v7 objectAtIndexedSubscript:v4];

    [v8 zoomWithGestureRecognizer:v9];
  }
}

- (void)toggleBackground:(id)a3
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
  v3 = [(MUPlacePhotoGalleryViewController *)self photos];
  v4 = [v3 count];
  v5 = [(MUPlacePhotoGalleryViewController *)self additionalView];
  if (v5)
  {
    v6 = v4 + 1;
  }

  else
  {
    v6 = v4;
  }

  return v6;
}

- (void)handlePanGesture:(id)a3
{
  v4 = a3;
  if ([(MUPlacePhotoGalleryViewController *)self panAndSwipeToDismissGestureEnabled])
  {
    v5 = [v4 view];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = [v4 view];
      v8 = v7;
      if (v7)
      {
        v9 = [v7 isZoomed];
        v10 = [v8 image];

        if ((v9 & 1) != 0 || !v10)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
      v8 = 0;
    }

    v11 = [v4 view];
    [v4 translationInView:v11];
    v13 = v12;
    v15 = v14;

    v16 = [v4 view];
    [v16 bounds];
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

    v21 = [v4 state];
    if ((v21 - 3) < 2)
    {
      v25 = [(MUPlacePhotoGalleryViewController *)self gestureTrackedView];
      v26 = [v4 view];

      if (v25 != v26)
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
        v67 = v4;
        v68 = self;
        [v61 animateWithDuration:&v63 animations:0.15];
      }
    }

    else
    {
      if (v21 == 2)
      {
        v27 = [(MUPlacePhotoGalleryViewController *)self gestureTrackedView];
        v28 = [v4 view];

        if (v27 == v28 && ([(MUPlacePhotoGalleryViewController *)self panGestureStartingDirection]== 2 || [(MUPlacePhotoGalleryViewController *)self panGestureStartingDirection]== 1))
        {
          v29 = fmin(v20, 1.0);
          v30 = [(MUPlacePhotoGalleryViewController *)self scrollView];
          [v30 setScrollEnabled:0];

          v31 = fmax(1.0 - v29, 0.8);
          v32 = *(MEMORY[0x1E695EFD0] + 16);
          *&v69.a = *MEMORY[0x1E695EFD0];
          *&v69.c = v32;
          *&v69.tx = *(MEMORY[0x1E695EFD0] + 32);
          CGAffineTransformScale(&v70, &v69, v31, v31);
          v33 = [v4 view];
          v69 = v70;
          [v33 setTransform:&v69];

          [(MUPlacePhotoGalleryViewController *)self imageViewCenterPoint];
          v35 = v34 + v13;
          [(MUPlacePhotoGalleryViewController *)self imageViewCenterPoint];
          v37 = v36 + v15;
          v38 = [v4 view];
          [v38 setCenter:{v35, v37}];

          v39 = [(MUPlacePhotoGalleryViewController *)self view];
          v40 = [v39 backgroundColor];
          v41 = [v40 colorWithAlphaComponent:v31];
          v42 = [(MUPlacePhotoGalleryViewController *)self view];
          [v42 setBackgroundColor:v41];

          v43 = [(MUPlacePhotoGalleryViewController *)self attributionView];
          [v43 setAlpha:v31];

          v44 = [v4 view];
          [v44 setAlpha:1.0];

          [(MUPlacePhotoGalleryViewController *)self setShouldFinishAnimation:v29 > 0.15];
        }

        goto LABEL_41;
      }

      if (v21 == 1)
      {
        v22 = [(MUPlacePhotoGalleryViewController *)self gestureTrackedView];

        if (!v22)
        {
          v45 = [v4 view];
          [(MUPlacePhotoGalleryViewController *)self setGestureTrackedView:v45];

LABEL_26:
          [v8 setUserInteractionEnabled:0];
          if (![(MUPlacePhotoGalleryViewController *)self panGestureStartingDirection])
          {
            v46 = [v4 view];
            [v4 velocityInView:v46];
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
          v56 = [v4 view];
          [v56 center];
          [(MUPlacePhotoGalleryViewController *)self setImageViewCenterPoint:?];

          if ([(MUPlacePhotoGalleryViewController *)self panGestureStartingDirection]== 2 || [(MUPlacePhotoGalleryViewController *)self panGestureStartingDirection]== 1)
          {
            v57 = [(MUPlacePhotoGalleryViewController *)self delegate];
            v58 = objc_opt_respondsToSelector();

            if (v58)
            {
              v59 = [(MUPlacePhotoGalleryViewController *)self delegate];
              v60 = [v4 view];
              [v59 placePhotoGallery:self willCloseAtIndex:{-[MUPlacePhotoGalleryViewController indexOfView:](self, "indexOfView:", v60)}];
            }
          }

          goto LABEL_41;
        }

        v23 = [(MUPlacePhotoGalleryViewController *)self gestureTrackedView];
        v24 = [v4 view];

        if (v23 == v24)
        {
          goto LABEL_26;
        }

LABEL_41:

        goto LABEL_42;
      }

      [v8 setUserInteractionEnabled:1];
    }

    [(MUPlacePhotoGalleryViewController *)self setPanGestureStartingDirection:0, v63, v64, v65, v66];
    v62 = [(MUPlacePhotoGalleryViewController *)self scrollView];
    [v62 setScrollEnabled:1];

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
  v2 = [(MUPlacePhotoGalleryViewController *)self scrollView];
  [v2 contentOffset];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (unint64_t)indexOfView:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MUPlacePhotoGalleryViewController *)self photoViews];
    v6 = [v5 containsObject:v4];

    if (v6)
    {
      v7 = [(MUPlacePhotoGalleryViewController *)self photoViews];
      v8 = [v7 indexOfObject:v4];
LABEL_9:
      v13 = v8;

      goto LABEL_10;
    }
  }

  v9 = [(MUPlacePhotoGalleryViewController *)self additionalView];
  v10 = v9;
  if (v9 == v4)
  {

    goto LABEL_8;
  }

  v11 = [(MUPlacePhotoGalleryViewController *)self additionalView];
  v12 = [v11 superview];

  if (v12 == v4)
  {
LABEL_8:
    v7 = [(MUPlacePhotoGalleryViewController *)self photoViews];
    v8 = [v7 count];
    goto LABEL_9;
  }

  v13 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_10:

  return v13;
}

- (unint64_t)indexOfVisibleView
{
  v3 = [(MUPlacePhotoGalleryViewController *)self scrollView];
  [v3 frame];
  Width = CGRectGetWidth(v15);

  if (Width == 0.0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = [(MUPlacePhotoGalleryViewController *)self view];
  v7 = [v6 _mapsui_isRTL];

  if (v7)
  {
    v8 = [(MUPlacePhotoGalleryViewController *)self photoViews];
    v9 = [v8 count];
    v10 = [(MUPlacePhotoGalleryViewController *)self scrollView];
    [v10 contentOffset];
    v12 = v9 + -1.0 - v11 / Width;
  }

  else
  {
    v8 = [(MUPlacePhotoGalleryViewController *)self scrollView];
    [v8 contentOffset];
    v12 = v13 / Width;
  }

  v5 = v12;

  return v5;
}

- (id)photoViewForTransition
{
  v3 = [(MUPlacePhotoGalleryViewController *)self originalIndex];
  if (v3)
  {
    v4 = v3;
    v5 = [(MUPlacePhotoGalleryViewController *)self originalIndex];
    v6 = [v5 unsignedIntegerValue];
    v7 = [(MUPlacePhotoGalleryViewController *)self photoViews];
    v8 = [v7 count];

    if (v6 < v8)
    {
      v9 = [(MUPlacePhotoGalleryViewController *)self photoViews];
      v10 = [(MUPlacePhotoGalleryViewController *)self originalIndex];
      v11 = [v9 objectAtIndexedSubscript:{objc_msgSend(v10, "unsignedIntegerValue")}];

LABEL_11:
      goto LABEL_12;
    }
  }

  v12 = [(MUPlacePhotoGalleryViewController *)self indexOfVisibleView];
  v13 = [(MUPlacePhotoGalleryViewController *)self photoViews];
  v14 = [v13 count];

  if (v12 < v14)
  {
    v9 = [(MUPlacePhotoGalleryViewController *)self photoViews];
    v15 = [v9 objectAtIndexedSubscript:{-[MUPlacePhotoGalleryViewController indexOfVisibleView](self, "indexOfVisibleView")}];
LABEL_9:
    v11 = v15;
    goto LABEL_11;
  }

  v16 = [(MUPlacePhotoGalleryViewController *)self indexOfVisibleView];
  v9 = [(MUPlacePhotoGalleryViewController *)self photoViews];
  if (v16 != [v9 count])
  {
    v11 = 0;
    goto LABEL_11;
  }

  v17 = [(MUPlacePhotoGalleryViewController *)self additionalView];

  if (v17)
  {
    v9 = [(MUPlacePhotoGalleryViewController *)self additionalView];
    v15 = [v9 superview];
    goto LABEL_9;
  }

  v11 = 0;
LABEL_12:

  return v11;
}

- (id)currentPhoto
{
  v3 = [(MUPlacePhotoGalleryViewController *)self indexOfVisibleView];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [(NSNumber *)self->_originalIndex unsignedIntValue];
    v5 = [(MUPlacePhotoGalleryViewController *)self photos];
    v6 = [v5 count];

    if (v6 > v4)
    {
      v7 = [(MUPlacePhotoGalleryViewController *)self photos];
      v8 = [(NSNumber *)self->_originalIndex unsignedIntValue];
      v9 = v7;
LABEL_6:
      v13 = [v9 objectAtIndex:v8];

      goto LABEL_8;
    }
  }

  else
  {
    v10 = v3;
    v11 = [(MUPlacePhotoGalleryViewController *)self photos];
    v12 = [v11 count];

    if (v10 < v12)
    {
      v9 = [(MUPlacePhotoGalleryViewController *)self photos];
      v7 = v9;
      v8 = v10;
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
  v2 = [(MUPlacePhotoGalleryViewController *)self downloadingImagesURLs];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v18 count:16];
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
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = MUGetMUPlacePhotoVCLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v9 = [v7 absoluteString];
          *buf = 138412290;
          v17 = v9;
          _os_log_impl(&dword_1C5620000, v8, OS_LOG_TYPE_DEBUG, "[X]Cancelling image download for url: %@", buf, 0xCu);
        }

        v10 = [MEMORY[0x1E696F190] sharedImageManager];
        [v10 cancelLoadAppImageAtURL:v7];
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)downloadImageForPhotoViewAtIndex:(unint64_t)a3
{
  v5 = [(MUPlacePhotoGalleryViewController *)self photoViews];
  v6 = [v5 count] - 1;

  if (v6 >= a3)
  {
    v7 = [(MUPlacePhotoGalleryViewController *)self photoViews];
    v11 = [v7 objectAtIndexedSubscript:a3];

    v8 = [(MUPlacePhotoGalleryViewController *)self photos];
    v9 = [v8 objectAtIndexedSubscript:a3];

    v10 = [v9 largestPhotoURL];
    if (v10)
    {
      [(MUPlacePhotoGalleryViewController *)self downloadImageForURL:v10 forIndex:a3];
    }
  }
}

- (void)downloadImageForURL:(id)a3 forIndex:(unint64_t)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(MUPlacePhotoGalleryViewController *)self downloadingImagesURLs];
  v8 = [v7 containsObject:v6];

  if ((v8 & 1) == 0)
  {
    v9 = MUGetMUPlacePhotoVCLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [v6 absoluteString];
      *buf = 134218242;
      v20 = a4;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&dword_1C5620000, v9, OS_LOG_TYPE_DEBUG, "[...]Starting download for image at index: %lu. URL: %@", buf, 0x16u);
    }

    v11 = [(MUPlacePhotoGalleryViewController *)self downloadingImagesURLs];
    [v11 addObject:v6];

    objc_initWeak(buf, self);
    v12 = [MEMORY[0x1E696F190] sharedImageManager];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __66__MUPlacePhotoGalleryViewController_downloadImageForURL_forIndex___block_invoke;
    v15[3] = &unk_1E821A240;
    objc_copyWeak(v18, buf);
    v13 = v6;
    v18[1] = a4;
    v16 = v13;
    v17 = self;
    [v12 loadAppImageAtURL:v13 completionHandler:v15];

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
  v4 = [(MUPlacePhotoGalleryViewController *)self indexOfVisibleView];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];
    [v3 addObject:v6];

    if (v5)
    {
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5 - 1];
      [v3 addObject:v7];
    }

    v8 = [(MUPlacePhotoGalleryViewController *)self photos];
    v9 = [v8 count] - 1;

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
        v17 = [(MUPlacePhotoGalleryViewController *)self indexesOfDownloadedImages];
        v18 = [v17 containsObject:v16];

        if ((v18 & 1) == 0)
        {
          v19 = [v16 unsignedIntegerValue];
          v20 = [(MUPlacePhotoGalleryViewController *)self photos];
          v21 = [v20 count];

          if (v19 < v21)
          {
            v22 = [(MUPlacePhotoGalleryViewController *)self photos];
            v23 = [v22 objectAtIndexedSubscript:{objc_msgSend(v16, "unsignedIntegerValue")}];

            v24 = [v23 largestPhotoURL];
            if (v24)
            {
              -[MUPlacePhotoGalleryViewController downloadImageForURL:forIndex:](self, "downloadImageForURL:forIndex:", v24, [v16 unsignedIntegerValue]);
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
  v3 = [(MUPlacePhotoGalleryViewController *)self view];
  [v3 setAccessibilityIdentifier:@"PlacePhotoGalleryView"];

  v4 = [(MUPlacePhotoGalleryViewController *)self additionalView];
  [(MUPlacePhotoGalleryViewController *)self setupViewsWithAdditionalView:v4];

  v5 = objc_alloc(MEMORY[0x1E69DC708]);
  v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.backward"];
  v7 = [v5 initWithImage:v6 style:0 target:self action:sel_didTapDone];
  [(MUPlacePhotoGalleryViewController *)self setBackBarButtonItem:v7];

  v8 = [(MUPlacePhotoGalleryViewController *)self leftBarButtonItem];
  v9 = [(MUPlacePhotoGalleryViewController *)self navigationItem];
  [v9 setLeftBarButtonItem:v8];

  v10 = [(MUPlacePhotoGalleryViewController *)self rightBarButtonItem];
  v11 = [(MUPlacePhotoGalleryViewController *)self navigationItem];
  [v11 setRightBarButtonItem:v10];

  v12 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v13 = [(MUPlacePhotoGalleryViewController *)self view];
  [v13 setBackgroundColor:v12];

  v14 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_toggleBackground_];
  [v14 setNumberOfTapsRequired:1];
  v15 = [(MUPlacePhotoGalleryViewController *)self view];
  [v15 addGestureRecognizer:v14];

  v16 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_zoomToPoint_];
  [v16 setNumberOfTapsRequired:2];
  v17 = [(MUPlacePhotoGalleryViewController *)self view];
  [v17 addGestureRecognizer:v16];

  [v14 requireGestureRecognizerToFail:v16];
  [v16 setDelaysTouchesBegan:1];
  [v14 setDelaysTouchesBegan:1];
  v18 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
  [v18 configureWithDefaultBackground];
  v19 = [(MUPlacePhotoGalleryViewController *)self navigationItem];
  [v19 setScrollEdgeAppearance:v18];

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
  v3 = [(MUPlacePhotoGalleryViewController *)self originalIndex];

  if (v3)
  {
    v4 = [(MUPlacePhotoGalleryViewController *)self originalIndex];
    v5 = [v4 unsignedIntegerValue];

    v6 = [(MUPlacePhotoGalleryViewController *)self view];
    v7 = [v6 _mapsui_isRTL];

    if (v7)
    {
      v8 = [(MUPlacePhotoGalleryViewController *)self photoViews];
      v9 = [v8 count];
      v10 = [(MUPlacePhotoGalleryViewController *)self originalIndex];
      v5 = v9 + ~[v10 unsignedIntegerValue];
    }

    v11 = [(MUPlacePhotoGalleryViewController *)self scrollView];
    [v11 frame];
    v12 = CGRectGetWidth(v15) * v5;
    v13 = [(MUPlacePhotoGalleryViewController *)self scrollView];
    [v13 setContentOffset:{v12, 0.0}];

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
  v18 = [(MUPlacePhotoGalleryAttributionView *)self->_attributionView leadingAnchor];
  v19 = [(MUPlacePhotoGalleryViewController *)self view];
  v17 = [v19 leadingAnchor];
  v16 = [v18 constraintEqualToAnchor:v17];
  v21[0] = v16;
  v5 = [(MUPlacePhotoGalleryAttributionView *)self->_attributionView trailingAnchor];
  v6 = [(MUPlacePhotoGalleryViewController *)self view];
  v7 = [v6 trailingAnchor];
  v8 = [v5 constraintEqualToAnchor:v7];
  v21[1] = v8;
  v9 = [(MUPlacePhotoGalleryAttributionView *)self->_attributionView bottomAnchor];
  v10 = [(MUPlacePhotoGalleryViewController *)self view];
  v11 = [v10 bottomAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  v21[2] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:3];
  [v15 activateConstraints:v13];

  [(MUPlacePhotoGalleryViewController *)self updateViewsWithPhotoAtIndex:[(NSNumber *)self->_originalIndex unsignedIntegerValue]];
  v14 = *MEMORY[0x1E69E9840];
}

- (void)setupAdditionalView:(id)a3 withStackView:(id)a4
{
  v42[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (v7)
  {
    v40 = v7;
    objc_storeStrong(&self->_additionalView, a3);
    v8 = a4;
    v9 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [v9 setTranslatesAutoresizingMaskIntoConstraints:1];
    v10 = [MEMORY[0x1E69DC888] clearColor];
    [v9 setBackgroundColor:v10];

    [v8 addArrangedSubview:v9];
    v35 = MEMORY[0x1E696ACD8];
    v11 = v9;
    v37 = [v9 heightAnchor];
    v12 = [(MUPlacePhotoGalleryViewController *)self view];
    v13 = [v12 heightAnchor];
    v14 = [v37 constraintEqualToAnchor:v13];
    v42[0] = v14;
    v39 = v9;
    v15 = [v9 widthAnchor];
    v16 = [(MUPlacePhotoGalleryViewController *)self view];
    v17 = [v16 widthAnchor];
    v18 = [v15 constraintEqualToAnchor:v17];
    v42[1] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
    [v35 activateConstraints:v19];

    [(UIView *)self->_additionalView setTranslatesAutoresizingMaskIntoConstraints:0];
    [v11 addSubview:self->_additionalView];
    v32 = MEMORY[0x1E696ACD8];
    v36 = [(UIView *)self->_additionalView heightAnchor];
    v38 = [(MUPlacePhotoGalleryViewController *)self view];
    v34 = [v38 widthAnchor];
    v33 = [v36 constraintEqualToAnchor:v34];
    v41[0] = v33;
    v20 = [(UIView *)self->_additionalView widthAnchor];
    v21 = [(MUPlacePhotoGalleryViewController *)self view];
    v22 = [v21 widthAnchor];
    v23 = [v20 constraintEqualToAnchor:v22];
    v41[1] = v23;
    v24 = [(UIView *)self->_additionalView centerYAnchor];
    v25 = [(MUPlacePhotoGalleryViewController *)self view];
    v26 = [v25 centerYAnchor];
    v27 = [v24 constraintEqualToAnchor:v26];
    v41[2] = v27;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:3];
    [v32 activateConstraints:v28];

    v29 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_didTapOnAdditionalView];
    [v29 setNumberOfTapsRequired:1];
    [(UIView *)self->_additionalView addGestureRecognizer:v29];
    v30 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel_handlePanGesture_];
    [v30 setDelegate:self];
    [v39 addGestureRecognizer:v30];

    v7 = v40;
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (void)setupPhotoViewsWithStackView:(id)a3
{
  v38[2] = *MEMORY[0x1E69E9840];
  v32 = a3;
  v31 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_photos, "count")}];
  if ([(NSArray *)self->_photos count])
  {
    v4 = 0;
    do
    {
      v5 = [(NSArray *)self->_photos objectAtIndexedSubscript:v4];
      v6 = [MEMORY[0x1E696F190] sharedImageManager];
      v7 = [v5 largestPhotoURL];
      v8 = [v6 cachedImageAtURL:v7];

      if (v8)
      {
        indexesOfDownloadedImages = self->_indexesOfDownloadedImages;
        v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];
        [(NSMutableArray *)indexesOfDownloadedImages addObject:v10];
        v11 = v8;
      }

      else
      {
        v10 = [(MUPlacePhotoGalleryViewController *)self delegate];
        v12 = [v10 placePhotoGalleryImageViewForPhotoAtIndex:v4];
        v11 = [v12 image];
      }

      v35 = v11;
      v13 = [[MUPlacePhotoView alloc] initWithImage:v11];
      [(MUPlacePhotoView *)v13 setNeedsFullImageDownload:v8 == 0];
      v36 = v5;
      v37 = v4;
      if ([v5 needsObfuscationWhenRenderedInFullScreen] && (objc_msgSend(v5, "attribution"), v14 = objc_claimAutoreleasedReturnValue(), v14, v14))
      {
        v15 = [MUPlacePhotoViewObfuscationModel alloc];
        v16 = [v5 attribution];
        v17 = [v16 providerName];
        v18 = [(MUPlacePhotoViewObfuscationModel *)v15 initWithProviderName:v17];

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
      [v32 addArrangedSubview:v13];
      v33 = MEMORY[0x1E696ACD8];
      v34 = [(MUPlacePhotoView *)v13 heightAnchor];
      v20 = [(MUPlacePhotoGalleryViewController *)self view];
      v21 = [v20 heightAnchor];
      v22 = [v34 constraintEqualToAnchor:v21];
      v38[0] = v22;
      v23 = [(MUPlacePhotoView *)v13 widthAnchor];
      v24 = [(MUPlacePhotoGalleryViewController *)self view];
      v25 = [v24 widthAnchor];
      v26 = [v23 constraintEqualToAnchor:v25];
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
  v3 = [(MUPlacePhotoGalleryViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MUPlacePhotoGalleryViewController *)self delegate];
    v8 = [v5 placePhotoGalleryRequestsUserAttribution:self];
  }

  else
  {
    v8 = 0;
  }

  v6 = [(MUPlacePhotoGalleryViewController *)self userAttributionViewModel];
  v7 = [v8 isEqual:v6];

  if ((v7 & 1) == 0)
  {
    [(MUPlacePhotoGalleryViewController *)self setUserAttributionViewModel:v8];
    [(MUPlacePhotoGalleryViewController *)self updateViewsWithPhotoAtIndex:[(MUPlacePhotoGalleryViewController *)self indexOfVisibleView]];
  }
}

- (void)setEnablePersonalizedAttribution:(BOOL)a3
{
  if (self->_enablePersonalizedAttribution != a3)
  {
    self->_enablePersonalizedAttribution = a3;
    if (!a3)
    {
      [(MUPlacePhotoGalleryViewController *)self setUserAttributionViewModel:0];
    }

    [(MUPlacePhotoGalleryViewController *)self reloadUserAttribution];
  }
}

- (void)setupViewsWithAdditionalView:(id)a3
{
  v43[8] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DCEF8];
  v42 = a3;
  v5 = objc_alloc_init(v4);
  scrollView = self->_scrollView;
  self->_scrollView = v5;

  [(UIScrollView *)self->_scrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [MEMORY[0x1E69DC888] clearColor];
  [(UIScrollView *)self->_scrollView setBackgroundColor:v7];

  [(UIScrollView *)self->_scrollView setPagingEnabled:1];
  [(UIScrollView *)self->_scrollView setShowsHorizontalScrollIndicator:0];
  [(UIScrollView *)self->_scrollView setShowsVerticalScrollIndicator:0];
  [(UIScrollView *)self->_scrollView setDelegate:self];
  v8 = [MEMORY[0x1E69DC888] clearColor];
  [(UIScrollView *)self->_scrollView setBackgroundColor:v8];

  [(UIScrollView *)self->_scrollView setContentInsetAdjustmentBehavior:2];
  [(UIScrollView *)self->_scrollView setAccessibilityIdentifier:@"PlacePhotoGalleryScrollView"];
  v9 = [(MUPlacePhotoGalleryViewController *)self view];
  [v9 addSubview:self->_scrollView];

  v10 = objc_alloc_init(MEMORY[0x1E69DCF90]);
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v10 setDistribution:4];
  [(UIScrollView *)self->_scrollView addSubview:v10];
  v29 = MEMORY[0x1E696ACD8];
  v40 = [(UIScrollView *)self->_scrollView leadingAnchor];
  v41 = [(MUPlacePhotoGalleryViewController *)self view];
  v39 = [v41 leadingAnchor];
  v38 = [v40 constraintEqualToAnchor:v39];
  v43[0] = v38;
  v36 = [(UIScrollView *)self->_scrollView trailingAnchor];
  v37 = [(MUPlacePhotoGalleryViewController *)self view];
  v35 = [v37 trailingAnchor];
  v34 = [v36 constraintEqualToAnchor:v35];
  v43[1] = v34;
  v32 = [(UIScrollView *)self->_scrollView topAnchor];
  v33 = [(MUPlacePhotoGalleryViewController *)self view];
  v31 = [v33 topAnchor];
  v30 = [v32 constraintEqualToAnchor:v31];
  v43[2] = v30;
  v27 = [(UIScrollView *)self->_scrollView bottomAnchor];
  v28 = [(MUPlacePhotoGalleryViewController *)self view];
  v26 = [v28 bottomAnchor];
  v25 = [v27 constraintEqualToAnchor:v26];
  v43[3] = v25;
  v24 = [v10 leadingAnchor];
  v23 = [(UIScrollView *)self->_scrollView leadingAnchor];
  v22 = [v24 constraintEqualToAnchor:v23];
  v43[4] = v22;
  v21 = [v10 trailingAnchor];
  v20 = [(UIScrollView *)self->_scrollView trailingAnchor];
  v11 = [v21 constraintEqualToAnchor:v20];
  v43[5] = v11;
  v12 = [v10 topAnchor];
  v13 = [(UIScrollView *)self->_scrollView topAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  v43[6] = v14;
  v15 = [v10 bottomAnchor];
  v16 = [(UIScrollView *)self->_scrollView bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  v43[7] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:8];
  [v29 activateConstraints:v18];

  [(MUPlacePhotoGalleryViewController *)self setupPhotoViewsWithStackView:v10];
  [(MUPlacePhotoGalleryViewController *)self setupAdditionalView:v42 withStackView:v10];

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

- (MUPlacePhotoGalleryViewController)initWithPhotos:(id)a3 additionalView:(id)a4 scrollToIndex:(unint64_t)a5 mapItem:(id)a6 delegate:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v26.receiver = self;
  v26.super_class = MUPlacePhotoGalleryViewController;
  v16 = [(MUPlacePhotoGalleryViewController *)&v26 initWithNibName:0 bundle:0];
  if (v16)
  {
    v17 = [v12 copy];
    photos = v16->_photos;
    v16->_photos = v17;

    objc_storeStrong(&v16->_mapItem, a6);
    objc_storeWeak(&v16->_delegate, v15);
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
    originalIndex = v16->_originalIndex;
    v16->_originalIndex = v19;

    objc_storeStrong(&v16->_additionalView, a4);
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