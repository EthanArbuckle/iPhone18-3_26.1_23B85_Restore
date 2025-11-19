@interface MUPDFContentViewController
- (BOOL)PDFView:(id)a3 shouldHandleLink:(id)a4;
- (BOOL)_pageLabelExistAtPoint:(CGPoint)a3;
- (BOOL)_thumbnailViewExistAtPoint:(CGPoint)a3;
- (BOOL)_updateCachedThumbnailViewInsetsDidChangeLeftOrRight;
- (BOOL)acceptSingleTouch:(id)a3;
- (BOOL)allowsThumbnailViewPageReordering;
- (BOOL)canEditContent;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)canShowPageViewLabel;
- (BOOL)documentCanBeEdited:(id)a3;
- (BOOL)isTouchInThumbnailView:(id)a3;
- (BOOL)shouldShowAnnotationsOfType:(id)a3;
- (CGAffineTransform)_compensatingAffineTransformForPage:(SEL)a3;
- (CGPoint)viewTransitionPointOnPageToCenter;
- (CGRect)visibleContentRect;
- (CGRect)visibleContentRectInCoordinateSpace:(id)a3;
- (CGSize)_medianSizeForCurrentDocumentInPDFViewWithGetter:(id)a3;
- (CGSize)_thumbnailViewCellSize;
- (CGSize)contentSize;
- (CGSize)idealContentSizeForScreenSize:(CGSize)a3 windowDecorationSize:(CGSize)a4;
- (MUPDFContentViewController)initWithNibName:(id)a3 bundle:(id)a4 delegate:(id)a5;
- (MUPDFContentViewController)initWithPDFDocument:(id)a3 delegate:(id)a4;
- (NSString)documentUnlockedWithPassword;
- (PDFPage)viewTransitionPageToCenter;
- (UIEdgeInsets)cachedThumnailViewInsets;
- (UIEdgeInsets)edgeInsets;
- (UIScrollView)contentViewScrollView;
- (double)_thumbnailViewWidth;
- (id)contentSnapshot;
- (id)controller:(id)a3 willSetToolbarItems:(id)a4;
- (id)menuElementsForPage:(id)a3;
- (unint64_t)pageCount;
- (void)_boundingPathMayHaveChangedForView:(id)a3 relativeToBoundsOriginOnly:(BOOL)a4;
- (void)_createPDFView;
- (void)_prepareToRotate;
- (void)_recoverFromRotation;
- (void)_removePageLabelViewConstraints;
- (void)_teardownPDFViewIfNecessary;
- (void)_updateMinMaxZoomFactor;
- (void)_updatePDFViewDisplayMode;
- (void)_updatePageNumberOverlayToPage:(unint64_t)a3 animate:(BOOL)a4;
- (void)_updateThumbnailView;
- (void)_updateThumbnailViewAppearance;
- (void)_updateThumbnailViewHolderBackgroundColor;
- (void)_updateThumbnailViewHolderConstraints;
- (void)_updateThumbnailViewHolderVisibility;
- (void)_userChangedScrollViewMagnificationNotification:(id)a3;
- (void)annotationController:(id)a3 detectedEditOfType:(unint64_t)a4;
- (void)controllerWillDismissSignatureCaptureView:(id)a3;
- (void)controllerWillDismissSignatureManagerView:(id)a3;
- (void)controllerWillShowSignatureCaptureView:(id)a3;
- (void)controllerWillShowSignatureManagerView:(id)a3;
- (void)dealloc;
- (void)edgeSwipeGestureRecognized:(id)a3;
- (void)editCheckpointReachedForAnnotationController:(id)a3;
- (void)find:(id)a3;
- (void)findNext:(id)a3;
- (void)findPrevious:(id)a3;
- (void)highlight:(id)a3;
- (void)loadContentWithCompletionBlock:(id)a3;
- (void)pageLabelViewTapped:(id)a3;
- (void)pdfDocumentDidUnlock:(id)a3;
- (void)pdfScrollViewWillBeginDragging:(id)a3;
- (void)pdfViewDidChangeCurrentPage:(id)a3;
- (void)penStrokeCompletedForAnnotationController:(id)a3;
- (void)positionSketchOverlay:(id)a3 forAnnotationController:(id)a4;
- (void)removeThumbnailViewHolderConstraints;
- (void)setAllowsThumbnailViewPageReordering:(BOOL)a3;
- (void)setEdgeInsets:(UIEdgeInsets)a3;
- (void)setFixedThumbnailView:(BOOL)a3;
- (void)setForcesPDFViewTopAlignment:(BOOL)a3;
- (void)setInkStyle:(unint64_t)a3;
- (void)setNavigationModeHorizontal:(BOOL)a3;
- (void)setShowsThumbnailView:(BOOL)a3;
- (void)setThumbnailViewStyle:(int64_t)a3;
- (void)setup;
- (void)teardown;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation MUPDFContentViewController

- (MUPDFContentViewController)initWithNibName:(id)a3 bundle:(id)a4 delegate:(id)a5
{
  v6 = MEMORY[0x277CD93D0];
  v7 = a5;
  v8 = objc_alloc_init(v6);
  v9 = [(MUPDFContentViewController *)self initWithPDFDocument:v8 delegate:v7];

  return v9;
}

- (MUPDFContentViewController)initWithPDFDocument:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = MUPDFContentViewController;
  v8 = [(MUContentViewController *)&v11 initWithNibName:0 bundle:0 delegate:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_pdfDocument, a3);
    [(PDFDocument *)v9->_pdfDocument setDelegate:v9];
    [(PDFDocument *)v9->_pdfDocument setPDFAKControllerDelegate:v9];
    v9->_thumbnailViewStyle = 0;
    [(MUPDFContentViewController *)v9 setInkStyle:1];
  }

  return v9;
}

- (BOOL)allowsThumbnailViewPageReordering
{
  v2 = [(MUPDFContentViewController *)self thumbnailView];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 allowsPageReordering];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAllowsThumbnailViewPageReordering:(BOOL)a3
{
  v3 = a3;
  self->_allowsThumbnailViewPageReordering = a3;
  v4 = [(MUPDFContentViewController *)self thumbnailView];
  [v4 setAllowsPageReordering:v3];
}

- (void)setInkStyle:(unint64_t)a3
{
  self->_inkStyle = a3;
  v3 = a3 == 0;
  v4 = [(MUContentViewController *)self annotationController];
  [v4 setUseHighVisibilityDefaultInks:v3];
}

- (void)dealloc
{
  [(MUPDFContentViewController *)self teardown];
  v3.receiver = self;
  v3.super_class = MUPDFContentViewController;
  [(MUPDFContentViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = MUPDFContentViewController;
  [(MUPDFContentViewController *)&v5 viewDidLoad];
  v3 = [MEMORY[0x277D75348] darkGrayColor];
  v4 = [(MUPDFContentViewController *)self view];
  [v4 setBackgroundColor:v3];
}

- (void)viewDidLayoutSubviews
{
  v16.receiver = self;
  v16.super_class = MUPDFContentViewController;
  [(MUPDFContentViewController *)&v16 viewDidLayoutSubviews];
  if (![(MUPDFContentViewController *)self viewIsTransitioningBetweenSizes])
  {
    v3 = [(MUPDFContentViewController *)self pdfView];
    v4 = [v3 autoScales];

    v5 = [(MUPDFContentViewController *)self pdfView];
    [v5 scaleFactor];
    v7 = v6;
    v8 = [(MUPDFContentViewController *)self pdfView];
    [v8 autoScaleFactor];
    v10 = vabdd_f64(v7, v9);

    [(MUPDFContentViewController *)self _updateMinMaxZoomFactor];
    if (v10 < 0.0005)
    {
      v11 = [(MUPDFContentViewController *)self pdfView];
      v12 = [(MUPDFContentViewController *)self pdfView];
      [v12 autoScaleFactor];
      [v11 setScaleFactor:?];
    }

    v13 = [(MUPDFContentViewController *)self pdfView];
    v14 = [v13 autoScales];

    if (v4 != v14)
    {
      v15 = [(MUPDFContentViewController *)self pdfView];
      [v15 setAutoScales:v4];
    }
  }
}

- (void)viewSafeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = MUPDFContentViewController;
  [(MUPDFContentViewController *)&v3 viewSafeAreaInsetsDidChange];
  [(MUPDFContentViewController *)self _updateThumbnailViewHolderConstraints];
}

- (void)setup
{
  NSLog(&cfstr_S_0.isa, a2, "[MUPDFContentViewController setup]");

  [(MUPDFContentViewController *)self setDidSetup:1];
}

- (void)teardown
{
  NSLog(&cfstr_S_0.isa, a2, "[MUPDFContentViewController teardown]");
  [(MUPDFContentViewController *)self _teardownPDFViewIfNecessary];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  if ([(MUPDFContentViewController *)self didSetup])
  {

    [(MUPDFContentViewController *)self setDidSetup:0];
  }
}

- (void)loadContentWithCompletionBlock:(id)a3
{
  v6 = a3;
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v4 = objc_autoreleasePoolPush();
  [(MUPDFContentViewController *)self _createPDFView];
  objc_autoreleasePoolPop(v4);
  [MEMORY[0x277CD9FF0] commit];
  v5 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6);
    v5 = v6;
  }
}

- (CGSize)contentSize
{
  v3 = [(MUPDFContentViewController *)self pdfView];
  [v3 scaleFactor];
  v5 = v4;
  v6 = [v3 autoScales];
  [v3 setAutoScales:0];
  [v3 setScaleFactor:1.0];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __41__MUPDFContentViewController_contentSize__block_invoke;
  v14[3] = &unk_27986E9F8;
  v15 = v3;
  v7 = v3;
  [(MUPDFContentViewController *)self _medianSizeForCurrentDocumentInPDFViewWithGetter:v14];
  v9 = v8;
  v11 = v10;
  [v7 setScaleFactor:v5];
  [v7 setAutoScales:v6];

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGSize)idealContentSizeForScreenSize:(CGSize)a3 windowDecorationSize:(CGSize)a4
{
  v5 = a3.width - a4.width;
  v6 = a3.height - a4.height;
  v7 = [(MUPDFContentViewController *)self pdfView];
  v8 = [v7 autoScales];
  [v7 setScaleFactor:1.0];
  [v7 setAutoScales:0];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __81__MUPDFContentViewController_idealContentSizeForScreenSize_windowDecorationSize___block_invoke;
  v27[3] = &unk_27986E9F8;
  v9 = v7;
  v28 = v9;
  [(MUPDFContentViewController *)self _medianSizeForCurrentDocumentInPDFViewWithGetter:v27];
  v11 = v10;
  v13 = v12;
  if ([v9 displayMode])
  {
    v14 = [v9 document];
    v15 = [v14 pageCount];

    if (v15 > 1)
    {
      v13 = 1.79769313e308;
    }
  }

  v16 = [v9 displayMode];
  v17 = v6 / v13;
  if (v5 / v11 < v6 / v13)
  {
    v17 = v5 / v11;
  }

  if (v16)
  {
    v17 = v5 / v11;
  }

  v18 = fmin(v17, 1.0);
  [v9 setScaleFactor:v18];
  [v9 setAutoScales:0];
  v19 = v13 * v18;
  if ([v9 displayMode])
  {
    v20 = [v9 document];
    v21 = [v20 pageCount];

    if (v21 > 1)
    {
      v19 = 1.79769313e308;
    }
  }

  if (v8)
  {
    [v9 setAutoScales:1];
  }

  v22 = v11 * v18;
  if (v19 >= v6)
  {
    v23 = v6;
  }

  else
  {
    v23 = v19;
  }

  if (v22 >= v5)
  {
    v24 = v5;
  }

  else
  {
    v24 = v22;
  }

  v25 = v24;
  v26 = v23;
  result.height = v26;
  result.width = v25;
  return result;
}

- (UIScrollView)contentViewScrollView
{
  v2 = [(MUPDFContentViewController *)self pdfView];
  v3 = [v2 documentScrollView];

  return v3;
}

- (BOOL)PDFView:(id)a3 shouldHandleLink:(id)a4
{
  v5 = a4;
  v6 = [(MUContentViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 contentViewController:self shouldHandleURL:v5];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)shouldShowAnnotationsOfType:(id)a3
{
  v3 = a3;
  v4 = +[MUCGPDFAnnotationAdaptor supportedAnnotationTypes];
  v5 = [v4 containsObject:v3];

  return v5 ^ 1;
}

- (BOOL)documentCanBeEdited:(id)a3
{
  v4 = a3;
  v5 = [(MUPDFContentViewController *)self pdfDocument];

  if (v5 != v4)
  {
    goto LABEL_2;
  }

  v8 = [(MUPDFContentViewController *)self canEditContent];

  if (!v8)
  {
    return 0;
  }

  v5 = [(MUContentViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 allowsEditing];
  }

  else
  {
LABEL_2:
    v6 = 0;
  }

  return v6;
}

- (id)menuElementsForPage:(id)a3
{
  v4 = a3;
  v5 = [(MUContentViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 getMenuElementsForPage:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)canShowPageViewLabel
{
  v3 = [(MUContentViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    LOBYTE(v4) = [v3 canShowPageViewLabel];
  }

  else
  {
    v5 = [(MUPDFContentViewController *)self pdfDocument];
    v4 = [v5 isLocked] ^ 1;
  }

  return v4;
}

- (id)controller:(id)a3 willSetToolbarItems:(id)a4
{
  v5 = a4;
  v6 = [(MUContentViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 annotationControllerOfContentViewController:self willSetToolbarItems:v5];
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v8;
}

- (void)positionSketchOverlay:(id)a3 forAnnotationController:(id)a4
{
  v6 = a3;
  v5 = [(MUContentViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 positionSketchOverlay:v6 forContentViewController:self];
  }
}

- (void)annotationController:(id)a3 detectedEditOfType:(unint64_t)a4
{
  v6 = a3;
  v7 = [(MUContentViewController *)self delegate];
  [v7 annotationController:v6 detectedEditOfType:a4];
}

- (void)editCheckpointReachedForAnnotationController:(id)a3
{
  v4 = a3;
  v5 = [(MUContentViewController *)self delegate];
  [v5 editCheckpointReachedForAnnotationController:v4];
}

- (void)penStrokeCompletedForAnnotationController:(id)a3
{
  v4 = a3;
  v5 = [(MUContentViewController *)self delegate];
  [v5 penStrokeCompletedForAnnotationController:v4];
}

- (void)controllerWillShowSignatureCaptureView:(id)a3
{
  v4 = a3;
  v5 = [(MUContentViewController *)self delegate];
  [v5 controllerWillShowSignatureCaptureView:v4];
}

- (void)controllerWillDismissSignatureCaptureView:(id)a3
{
  v4 = a3;
  v5 = [(MUContentViewController *)self delegate];
  [v5 controllerWillDismissSignatureCaptureView:v4];
}

- (void)controllerWillShowSignatureManagerView:(id)a3
{
  v4 = a3;
  v5 = [(MUContentViewController *)self delegate];
  [v5 controllerWillShowSignatureManagerView:v4];
}

- (void)controllerWillDismissSignatureManagerView:(id)a3
{
  v4 = a3;
  v5 = [(MUContentViewController *)self delegate];
  [v5 controllerWillDismissSignatureManagerView:v4];
}

- (void)setEdgeInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  top = a3.top;
  v14 = *&self->_edgeInsets.bottom;
  v15 = *&self->_edgeInsets.top;
  self->_edgeInsets = a3;
  left = a3.left;
  bottom = a3.bottom;
  v4 = [(MUPDFContentViewController *)self navigationModeHorizontal];
  if (v4)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = top;
  }

  if (v5 > 0.0)
  {
    if (v4)
    {
      v6 = left;
    }

    else
    {
      v6 = 0.0;
    }

    if (v4)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = bottom;
    }

    if (v4)
    {
      v8 = right;
    }

    else
    {
      v8 = 0.0;
    }

    v9 = [(MUPDFContentViewController *)self thumbnailView];
    [v9 setContentInset:{v5, v6, v7, v8}];
  }

  v10.f64[0] = top;
  v11.f64[0] = bottom;
  v10.f64[1] = left;
  v11.f64[1] = right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v15, v10), vceqq_f64(v14, v11)))) & 1) == 0)
  {
    v12 = [(MUContentViewController *)self annotationController];
    v13 = [v12 currentPageIndex];

    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(MUPDFContentViewController *)self _updatePageNumberOverlayToPage:v13 animate:0];
    }
  }

  if (![(MUPDFContentViewController *)self viewIsTransitioningBetweenSizes])
  {

    [(MUPDFContentViewController *)self _updateMinMaxZoomFactor];
  }
}

- (unint64_t)pageCount
{
  v2 = [(MUPDFContentViewController *)self pdfDocument];
  v3 = [v2 pageCount];

  return v3;
}

- (void)setFixedThumbnailView:(BOOL)a3
{
  if (self->_fixedThumbnailView != a3)
  {
    self->_fixedThumbnailView = a3;
    [(MUPDFContentViewController *)self removeThumbnailViewHolderConstraints];

    [(MUPDFContentViewController *)self _updateThumbnailViewHolderConstraints];
  }
}

- (void)setShowsThumbnailView:(BOOL)a3
{
  v36[2] = *MEMORY[0x277D85DE8];
  if (self->_showsThumbnailView == a3)
  {
    return;
  }

  v3 = a3;
  v5 = [(MUPDFContentViewController *)self pdfView];

  if (!v5)
  {
    self->_showsThumbnailView = v3;
    return;
  }

  [MEMORY[0x277CD9FF0] animationDuration];
  v7 = v6;
  if (([MEMORY[0x277CD9FF0] disableActions] & 1) != 0 || -[MUPDFContentViewController fixedThumbnailView](self, "fixedThumbnailView"))
  {
    v7 = 0.0;
  }

  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  if (v7 <= 0.0)
  {
    self->_showsThumbnailView = v3;
    if ([(MUPDFContentViewController *)self fixedThumbnailView])
    {
      if (v3)
      {
        v8 = 1.0;
      }

      else
      {
        v8 = 0.0;
      }

      v9 = [(MUPDFContentViewController *)self thumbnailViewHolder];
      [v9 setAlpha:v8];
    }

    [(MUPDFContentViewController *)self _updateThumbnailViewHolderVisibility];
    if (!v3)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v3)
  {
LABEL_16:
    v10 = [(MUPDFContentViewController *)self thumbnailView];

    if (!v10)
    {
      v11 = [objc_alloc(MEMORY[0x277CD93F0]) initWithFrame:self->_thumbnailViewStyle style:{0.0, 0.0, 100.0, 100.0}];
      [v11 setThumbnailContextMenuDelegate:self];
      [v11 setAllowsPageReordering:self->_allowsThumbnailViewPageReordering];
      [(MUPDFContentViewController *)self setThumbnailView:v11];
      v12 = [(MUPDFContentViewController *)self pdfView];
      [v11 setPDFView:v12];

      [(MUPDFContentViewController *)self _updateThumbnailViewAppearance];
      [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
      v13 = [(MUPDFContentViewController *)self thumbnailViewHolder];
      [v13 addSubview:v11];

      v14 = _NSDictionaryOfVariableBindings(&cfstr_Thumbnailview.isa, v11, 0);
      v15 = [(MUPDFContentViewController *)self thumbnailViewHolder];
      v16 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-0-[thumbnailView]-0@999-|" options:0 metrics:0 views:v14];
      [v15 addConstraints:v16];

      v17 = [(MUPDFContentViewController *)self thumbnailView];
      v18 = [v17 leadingAnchor];
      v19 = [(MUPDFContentViewController *)self thumbnailViewHolder];
      v20 = [v19 leadingAnchor];
      v21 = [v18 constraintEqualToAnchor:v20];
      [(MUPDFContentViewController *)self setThumbnailViewLeadingConstraint:v21];

      v22 = [(MUPDFContentViewController *)self thumbnailView];
      v23 = [v22 trailingAnchor];
      v24 = [(MUPDFContentViewController *)self thumbnailViewHolder];
      v25 = [v24 trailingAnchor];
      v26 = [v23 constraintEqualToAnchor:v25];

      LODWORD(v27) = 1148829696;
      [v26 setPriority:v27];
      v28 = [(MUPDFContentViewController *)self thumbnailViewHolder];
      v29 = [(MUPDFContentViewController *)self thumbnailViewLeadingConstraint];
      v36[0] = v29;
      v36[1] = v26;
      v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
      [v28 addConstraints:v30];

      [(MUPDFContentViewController *)self _updateThumbnailViewHolderConstraints];
      [(MUPDFContentViewController *)self setEdgeInsets:self->_edgeInsets.top, self->_edgeInsets.left, self->_edgeInsets.bottom, self->_edgeInsets.right];

LABEL_20:
      [MEMORY[0x277CD9FF0] commit];
      if (v7 <= 0.0)
      {
        return;
      }

      goto LABEL_21;
    }

LABEL_17:
    [(MUPDFContentViewController *)self _updateThumbnailViewHolderConstraints];
    goto LABEL_20;
  }

  [MEMORY[0x277CD9FF0] commit];
LABEL_21:
  self->_showsThumbnailView = v3;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __52__MUPDFContentViewController_setShowsThumbnailView___block_invoke;
  v34[3] = &unk_27986EA48;
  v35 = v3;
  v34[4] = self;
  v34[5] = 0x3FC999999999999ALL;
  v31 = MEMORY[0x259C7BE00](v34);
  v32 = [(MUPDFContentViewController *)self view];
  v33 = [v32 window];

  if (v33)
  {
    v31[2](v31);
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], v31);
  }
}

uint64_t __52__MUPDFContentViewController_setShowsThumbnailView___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateCachedThumbnailViewInsetsDidChangeLeftOrRight];
  [*(a1 + 32) _updateThumbnailViewHolderConstraints];
  v2 = *(a1 + 48);
  if (v2 == 1)
  {
    [*(a1 + 32) _updateThumbnailViewHolderVisibility];
    LOBYTE(v2) = *(a1 + 48);
  }

  v3 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__MUPDFContentViewController_setShowsThumbnailView___block_invoke_2;
  v7[3] = &unk_27986E5B8;
  v8 = *(a1 + 32);
  v9 = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__MUPDFContentViewController_setShowsThumbnailView___block_invoke_3;
  v5[3] = &unk_27986EA20;
  v6 = v2;
  v5[4] = v8;
  return [MEMORY[0x277D75D18] animateWithDuration:v7 animations:v5 completion:v3];
}

void __52__MUPDFContentViewController_setShowsThumbnailView___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];

  if ([*(a1 + 32) fixedThumbnailView])
  {
    if (*(a1 + 40))
    {
      v3 = 1.0;
    }

    else
    {
      v3 = 0.0;
    }

    v4 = [*(a1 + 32) thumbnailViewHolder];
    [v4 setAlpha:v3];
  }
}

uint64_t __52__MUPDFContentViewController_setShowsThumbnailView___block_invoke_3(uint64_t result)
{
  if ((*(result + 40) & 1) == 0)
  {
    return [*(result + 32) _updateThumbnailViewHolderVisibility];
  }

  return result;
}

- (void)setNavigationModeHorizontal:(BOOL)a3
{
  if (self->_navigationModeHorizontal != a3)
  {
    self->_navigationModeHorizontal = a3;
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    [(MUPDFContentViewController *)self _updateThumbnailViewAppearance];
    [(MUPDFContentViewController *)self _updateThumbnailViewHolderConstraints];
    [(MUPDFContentViewController *)self _updatePDFViewDisplayMode];
    v5 = MEMORY[0x277CD9FF0];

    [v5 commit];
  }
}

- (void)setForcesPDFViewTopAlignment:(BOOL)a3
{
  if (self->_forcesPDFViewTopAlignment != a3)
  {
    self->_forcesPDFViewTopAlignment = a3;
    v4 = [(MUPDFContentViewController *)self pdfView];
    [v4 setForcesTopAlignment:self->_forcesPDFViewTopAlignment];
  }
}

- (void)_updatePDFViewDisplayMode
{
  v3 = [(MUPDFContentViewController *)self pdfView];

  if (v3)
  {
    v4 = [(MUPDFContentViewController *)self navigationModeHorizontal]^ 1;
    v5 = [(MUPDFContentViewController *)self pdfView];
    [v5 setDisplayMode:v4];

    v6 = [(MUPDFContentViewController *)self pdfView];
    [v6 setDisplayBox:1];
  }
}

- (void)_boundingPathMayHaveChangedForView:(id)a3 relativeToBoundsOriginOnly:(BOOL)a4
{
  v6 = a3;
  v7 = [(MUPDFContentViewController *)self pdfView];
  v8 = [v7 documentScrollView];

  if (v8 == v6 && !a4 && [(MUPDFContentViewController *)self _updateCachedThumbnailViewInsetsDidChangeLeftOrRight]&& [(MUPDFContentViewController *)self showsThumbnailView])
  {

    [(MUPDFContentViewController *)self _updateThumbnailViewHolderConstraints];
  }
}

- (double)_thumbnailViewWidth
{
  if (self->_thumbnailViewStyle != 1)
  {
    return 61.0;
  }

  v3 = [MEMORY[0x277D75520] defaultMetrics];
  v4 = [(MUPDFContentViewController *)self traitCollection];
  [v3 scaledValueForValue:v4 compatibleWithTraitCollection:81.0];
  v6 = v5;

  return (v6 + -81.0) * 0.5 + 81.0;
}

- (CGSize)_thumbnailViewCellSize
{
  if ([(MUPDFContentViewController *)self navigationModeHorizontal])
  {
    v3 = 22.0;
    v4 = 18.0;
  }

  else if (self->_thumbnailViewStyle == 1)
  {
    [(MUPDFContentViewController *)self _thumbnailViewWidth];
    v6 = 47.0;
    if (v5 <= 47.0)
    {
      v6 = v5;
    }

    v4 = v5 + -12.0;
    if (v4 < v6)
    {
      v4 = v6;
    }

    v3 = v4;
  }

  else
  {
    v4 = 31.0;
    v3 = 41.0;
  }

  result.height = v3;
  result.width = v4;
  return result;
}

- (BOOL)_updateCachedThumbnailViewInsetsDidChangeLeftOrRight
{
  v3 = [(MUPDFContentViewController *)self contentViewScrollView];
  v4 = self->_thumbnailViewStyle != 1;
  [(MUPDFContentViewController *)self _thumbnailViewWidth];
  [v3 _baseInsetsForAccessoryOnEdge:v4 hasCustomClientInsets:0 accessorySize:? additionalInsetFromEdge:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(MUPDFContentViewController *)self cachedThumnailViewInsets];
  v16 = 0;
  if (v17 != v8 || v13 != v6 || v15 != v12 || v14 != v10)
  {
    [(MUPDFContentViewController *)self cachedThumnailViewInsets];
    v16 = 1;
    if (v21 == v12)
    {
      [(MUPDFContentViewController *)self cachedThumnailViewInsets];
      if (v22 == v8)
      {
        v16 = 0;
      }
    }

    [(MUPDFContentViewController *)self setCachedThumnailViewInsets:v6, v8, v10, v12];
  }

  return v16;
}

- (void)_updateThumbnailViewHolderBackgroundColor
{
  if (self->_thumbnailViewStyle == 1)
  {
    v3 = [MEMORY[0x277D75348] clearColor];
    v4 = [(MUPDFContentViewController *)self thumbnailViewHolder];
    [v4 setBackgroundColor:v3];

    v5 = [(MUPDFContentViewController *)self scrollerBackgroundView];

    if (!v5)
    {
      v6 = [MEMORY[0x277D75210] effectWithStyle:8];
      v7 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v6];
      [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
      v8 = [(MUPDFContentViewController *)self thumbnailViewHolder];
      [v8 addSubview:v7];

      v9 = _NSDictionaryOfVariableBindings(&cfstr_Backgroundview.isa, v7, 0);
      v10 = [(MUPDFContentViewController *)self thumbnailViewHolder];
      v11 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-0-[backgroundView]-0-|" options:0 metrics:0 views:v9];
      [v10 addConstraints:v11];

      v12 = [(MUPDFContentViewController *)self thumbnailViewHolder];
      v13 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-0-[backgroundView]-0-|" options:0 metrics:0 views:v9];
      [v12 addConstraints:v13];

      [(MUPDFContentViewController *)self setScrollerBackgroundView:v7];
    }

    showsThumbnailView = self->_showsThumbnailView;
    v18 = [(MUPDFContentViewController *)self scrollerBackgroundView];
    [v18 setHidden:!showsThumbnailView];
  }

  else
  {
    v15 = [MEMORY[0x277D75348] colorWithWhite:0.301960784 alpha:0.2];
    v16 = [(MUPDFContentViewController *)self thumbnailViewHolder];
    [v16 setBackgroundColor:v15];

    v17 = [(MUPDFContentViewController *)self scrollerBackgroundView];
    [v17 removeFromSuperview];

    [(MUPDFContentViewController *)self setScrollerBackgroundView:0];
  }
}

- (void)_updateThumbnailViewHolderVisibility
{
  showsThumbnailView = self->_showsThumbnailView;
  v4 = [(MUPDFContentViewController *)self scrollerBackgroundView];
  [v4 setHidden:!showsThumbnailView];

  v5 = [(MUPDFContentViewController *)self thumbnailViewHolder];
  [v5 setHidden:!showsThumbnailView];
}

- (void)removeThumbnailViewHolderConstraints
{
  v3 = [(MUPDFContentViewController *)self thumbnailViewHolderConstraints];

  if (v3)
  {
    v4 = [(MUPDFContentViewController *)self view];
    v5 = [(MUPDFContentViewController *)self thumbnailViewHolderConstraints];
    [v4 removeConstraints:v5];

    [(MUPDFContentViewController *)self setThumbnailViewHolderWidthConstraint:0];
    [(MUPDFContentViewController *)self setThumbnailViewHolderConstraints:0];

    [(MUPDFContentViewController *)self setThumbnailViewHolderRevealConstraint:0];
  }
}

- (void)_updateThumbnailViewHolderConstraints
{
  v60[2] = *MEMORY[0x277D85DE8];
  v3 = [(MUPDFContentViewController *)self thumbnailViewHolder];

  if (v3)
  {
    v4 = [(MUPDFContentViewController *)self thumbnailViewHolderConstraints];
    if (v4)
    {
      v5 = [(MUPDFContentViewController *)self navigationModeHorizontal];
      v6 = v5 ^ [(MUPDFContentViewController *)self constraintsAreHorizontal];
    }

    else
    {
      v6 = 1;
    }

    thumbnailViewStyle = self->_thumbnailViewStyle;
    if (thumbnailViewStyle == 1)
    {
      v12 = [(MUPDFContentViewController *)self view];
      [v12 safeAreaInsets];
      v9 = v13;
      v11 = v14;
    }

    else
    {
      [(MUPDFContentViewController *)self cachedThumnailViewInsets];
      v9 = v8;
      v11 = v10;
    }

    v15 = [(MUPDFContentViewController *)self thumbnailViewHolder];
    if ([v15 effectiveUserInterfaceLayoutDirection])
    {
      v9 = v11;
    }

    if ([(MUPDFContentViewController *)self navigationModeHorizontal])
    {
      v16 = 40.0;
    }

    else
    {
      [(MUPDFContentViewController *)self _thumbnailViewWidth];
      v16 = v17;
    }

    v18 = [(MUPDFContentViewController *)self navigationModeHorizontal];
    if (thumbnailViewStyle != 1 || v18)
    {
      v20 = v16;
    }

    else
    {
      v20 = v9 + v16;
    }

    if ([(MUPDFContentViewController *)self showsThumbnailView])
    {
      v21 = 1.0;
    }

    else
    {
      v21 = v20 + 1.0;
    }

    if ([(MUPDFContentViewController *)self showsThumbnailView]&& ![(MUPDFContentViewController *)self navigationModeHorizontal]&& thumbnailViewStyle != 1)
    {
      v21 = v21 - v11;
    }

    if (v6)
    {
      [(MUPDFContentViewController *)self removeThumbnailViewHolderConstraints];
      v22 = objc_opt_new();
      [(MUPDFContentViewController *)self setThumbnailViewHolderConstraints:v22];
      v23 = [(MUPDFContentViewController *)self view];
      v24 = [(MUPDFContentViewController *)self thumbnailViewHolder];
      v25 = _NSDictionaryOfVariableBindings(&cfstr_Holderview.isa, v24, 0);
      v59[0] = @"WIDTH";
      v26 = [MEMORY[0x277CCABB0] numberWithDouble:v20];
      v59[1] = @"OFFSET";
      v60[0] = v26;
      if (thumbnailViewStyle == 1)
      {
        v27 = -v21;
      }

      else
      {
        v27 = v21;
      }

      v28 = [MEMORY[0x277CCABB0] numberWithDouble:v27];
      v60[1] = v28;
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:2];

      v30 = 0x277CCA000uLL;
      if ([(MUPDFContentViewController *)self navigationModeHorizontal])
      {
        v31 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:[holderView(WIDTH)]" options:0 metrics:v29 views:v25];
        [v22 addObjectsFromArray:v31];

        v32 = [MEMORY[0x277CCAAD0] constraintWithItem:v24 attribute:4 relatedBy:0 toItem:v23 attribute:4 multiplier:1.0 constant:v21];
        [(MUPDFContentViewController *)self setThumbnailViewHolderRevealConstraint:v32];

        v33 = @"H:|-(-1)-[holderView]-(-1)-|";
      }

      else
      {
        v37 = [v24 widthAnchor];
        v38 = [v37 constraintEqualToConstant:v20];
        [(MUPDFContentViewController *)self setThumbnailViewHolderWidthConstraint:v38];

        v39 = [(MUPDFContentViewController *)self thumbnailViewHolderWidthConstraint];
        [v22 addObject:v39];

        if (thumbnailViewStyle == 1)
        {
          v41 = [(MUPDFContentViewController *)self thumbnailViewLeadingConstraint];
          [v41 setConstant:v9];

          v42 = [(MUPDFContentViewController *)self fixedThumbnailView];
          v43 = [(MUPDFContentViewController *)self pdfViewLeadingConstraint];
          v44 = v43;
          if (v42)
          {
            [v43 setActive:0];

            v45 = [v24 leadingAnchor];
            [v23 leadingAnchor];
            v46 = v58 = v23;
            v40 = [v45 constraintEqualToAnchor:v46];

            v47 = [v24 trailingAnchor];
            v48 = [(MUPDFContentViewController *)self pdfView];
            v49 = [v48 leadingAnchor];
            v50 = [v47 constraintEqualToAnchor:v49];

            v30 = 0x277CCA000;
            v23 = v58;

            [v22 addObject:v40];
            [v22 addObject:v50];
          }

          else
          {
            [v43 setActive:1];

            v40 = [v24 leadingAnchor];
            v50 = [v23 leadingAnchor];
            v51 = [v40 constraintEqualToAnchor:v50 constant:-v21];
            [(MUPDFContentViewController *)self setThumbnailViewHolderRevealConstraint:v51];
          }
        }

        else
        {
          v40 = [MEMORY[0x277CCAAD0] constraintWithItem:v24 attribute:2 relatedBy:0 toItem:v23 attribute:2 multiplier:1.0 constant:v21];
          [(MUPDFContentViewController *)self setThumbnailViewHolderRevealConstraint:v40];
        }

        v52 = [(MUPDFContentViewController *)self thumbnailViewHolderRevealConstraint];

        v33 = @"V:|-(-1)-[holderView]-(-1)-|";
        if (!v52)
        {
          goto LABEL_47;
        }
      }

      v53 = [(MUPDFContentViewController *)self thumbnailViewHolderRevealConstraint];
      [v22 addObject:v53];

LABEL_47:
      v54 = [*(v30 + 2768) constraintsWithVisualFormat:v33 options:0 metrics:v29 views:v25];
      [v22 addObjectsFromArray:v54];

      [(MUPDFContentViewController *)self setConstraintsAreHorizontal:[(MUPDFContentViewController *)self navigationModeHorizontal]];
      v55 = [(MUPDFContentViewController *)self view];
      [v55 addConstraints:v22];

      v56 = [(MUPDFContentViewController *)self view];
      [v56 setNeedsLayout];

      return;
    }

    if (thumbnailViewStyle == 1)
    {
      v21 = -v21;
    }

    v34 = [(MUPDFContentViewController *)self thumbnailViewHolderRevealConstraint];
    [v34 setConstant:v21];

    v35 = [(MUPDFContentViewController *)self navigationModeHorizontal];
    if (thumbnailViewStyle == 1 && !v35)
    {
      v36 = [(MUPDFContentViewController *)self thumbnailViewHolderWidthConstraint];
      [v36 setConstant:v20];

      v57 = [(MUPDFContentViewController *)self thumbnailViewLeadingConstraint];
      [v57 setConstant:v9];
    }
  }
}

- (void)_updateThumbnailViewAppearance
{
  v3 = [(MUPDFContentViewController *)self thumbnailView];
  if (v3)
  {
    v16 = v3;
    if ([(MUPDFContentViewController *)self navigationModeHorizontal])
    {
      v4 = [MEMORY[0x277D75348] whiteColor];
      [v16 setBackgroundColor:v4];

      v5 = [MEMORY[0x277D75348] colorWithWhite:0.274509804 alpha:1.0];
      v6 = [v5 CGColor];
      v7 = [v16 layer];
      [v7 setBorderColor:v6];

      v8 = [MEMORY[0x277D759A0] mainScreen];
      [v8 nativeScale];
      v10 = 1.0 / v9;
      v11 = [v16 layer];
      [v11 setBorderWidth:v10];

      v12 = 1;
    }

    else
    {
      [v16 setBackgroundColor:0];
      v13 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.0];
      v14 = [v13 CGColor];
      v15 = [v16 layer];
      [v15 setBorderColor:v14];

      v8 = [v16 layer];
      [v8 setBorderWidth:0.0];
      v12 = 0;
    }

    [v16 setLayoutMode:v12];
    [(MUPDFContentViewController *)self _thumbnailViewCellSize];
    [v16 setThumbnailSize:?];
    v3 = v16;
  }
}

- (NSString)documentUnlockedWithPassword
{
  v3 = [(MUPDFContentViewController *)self pdfDocument];
  v4 = [v3 isEncrypted];

  if (v4)
  {
    v5 = [(MUPDFContentViewController *)self pdfDocument];
    v6 = [v5 passwordUsedForUnlocking];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_createPDFView
{
  [(MUPDFContentViewController *)self _teardownPDFViewIfNecessary];
  firstValue = [[MUPDFView alloc] initWithFrame:0.0, 0.0, 100.0, 100.0];
  [(MUPDFView *)firstValue setForcesTopAlignment:[(MUPDFContentViewController *)self forcesPDFViewTopAlignment]];
  [(MUPDFContentViewController *)self setPdfView:firstValue];
  [(MUPDFView *)firstValue setDelegate:self];
  v3 = [(MUPDFContentViewController *)self view];
  [v3 addSubview:firstValue];

  [(MUPDFView *)firstValue setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [(MUPDFView *)firstValue leadingAnchor];
  v5 = [(MUPDFContentViewController *)self view];
  v6 = [v5 leadingAnchor];
  v7 = [v4 constraintEqualToAnchor:v6];

  v8 = [(MUPDFView *)firstValue trailingAnchor];
  v9 = [(MUPDFContentViewController *)self view];
  v10 = [v9 trailingAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];

  LODWORD(v12) = 1148829696;
  [v11 setPriority:v12];
  v13 = [(MUPDFContentViewController *)self view];
  [v13 addConstraint:v7];

  v14 = [(MUPDFContentViewController *)self view];
  [v14 addConstraint:v11];

  [(MUPDFContentViewController *)self setPdfViewLeadingConstraint:v7];
  v15 = _NSDictionaryOfVariableBindings(&cfstr_Pdfview.isa, firstValue, 0);
  v16 = [(MUPDFContentViewController *)self view];
  v17 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-0-[pdfView]-0@999-|" options:0 metrics:0 views:v15];
  [v16 addConstraints:v17];

  [(MUPDFContentViewController *)self _updatePDFViewDisplayMode];
  v18 = objc_alloc(MEMORY[0x277D75D18]);
  v19 = *MEMORY[0x277CBF3A0];
  v20 = *(MEMORY[0x277CBF3A0] + 8);
  v21 = *(MEMORY[0x277CBF3A0] + 16);
  v22 = *(MEMORY[0x277CBF3A0] + 24);
  v23 = [v18 initWithFrame:{*MEMORY[0x277CBF3A0], v20, v21, v22}];
  v24 = [MEMORY[0x277D75348] colorWithWhite:0.301960784 alpha:0.2];
  [v23 setBackgroundColor:v24];

  [(MUPDFContentViewController *)self setThumbnailViewHolder:v23];
  v25 = [(MUPDFContentViewController *)self view];
  [v25 insertSubview:v23 above:firstValue];

  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
  v26 = [(MUPDFContentViewController *)self pdfDocument];
  v27 = [v26 isLocked];

  if (v27)
  {
    v28 = [MEMORY[0x277CCAB98] defaultCenter];
    v29 = *MEMORY[0x277CD9410];
    v30 = [(MUPDFContentViewController *)self pdfDocument];
    [v28 addObserver:self selector:sel_pdfDocumentDidUnlock_ name:v29 object:v30];
  }

  v31 = [(MUPDFContentViewController *)self pdfDocument];
  [(MUPDFView *)firstValue setDocument:v31 waitDuration:0.25];

  [(MUPDFView *)firstValue setAutoScales:1];
  v32 = [(MUPDFContentViewController *)self navigationModeHorizontal];
  v33 = [(MUPDFContentViewController *)self showsThumbnailView];
  self->_navigationModeHorizontal = !v32;
  self->_showsThumbnailView = !v33;
  [(MUPDFContentViewController *)self setNavigationModeHorizontal:v32];
  [(MUPDFContentViewController *)self setShowsThumbnailView:v33];
  if (v33)
  {
    v34 = [(MUPDFContentViewController *)self thumbnailView];
    [v34 setPDFView:firstValue];
  }

  v35 = [(MUPDFView *)firstValue documentScrollView];
  [v35 setDecelerationRate:*MEMORY[0x277D76EC0]];
  [v35 setMaximumZoomScale:10.0];
  [v35 setMinimumZoomScale:0.1];
  [v35 _addBoundingPathChangeObserver:self];
  v36 = [MEMORY[0x277CCAB98] defaultCenter];
  [v36 addObserver:self selector:sel__userChangedScrollViewMagnificationNotification_ name:@"UITextSelectionDidZoom" object:v35];

  v37 = [MEMORY[0x277CCAB98] defaultCenter];
  [v37 addObserver:self selector:sel_pdfViewDidChangeCurrentPage_ name:*MEMORY[0x277CD9440] object:firstValue];

  v38 = [MEMORY[0x277CCAB98] defaultCenter];
  [v38 addObserver:self selector:sel_pdfScrollViewWillBeginDragging_ name:*MEMORY[0x277CD9438] object:0];

  if (self->_pageLabelView || (v39 = [[MUPDFPageLabelView alloc] initWithFrame:v19, v20, v21, v22], pageLabelView = self->_pageLabelView, self->_pageLabelView = v39, pageLabelView, [(MUPDFPageLabelView *)self->_pageLabelView setTranslatesAutoresizingMaskIntoConstraints:0], self->_pageLabelView))
  {
    if (!self->_pageLabelViewTapGestureRecognizer)
    {
      v41 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_pageLabelViewTapped_];
      pageLabelViewTapGestureRecognizer = self->_pageLabelViewTapGestureRecognizer;
      self->_pageLabelViewTapGestureRecognizer = v41;

      [(MUPDFPageLabelView *)self->_pageLabelView addGestureRecognizer:self->_pageLabelViewTapGestureRecognizer];
    }
  }

  if (!self->_edgePanGestureRecognizer)
  {
    v43 = [(MUPDFContentViewController *)self pdfView];
    v44 = [v43 effectiveUserInterfaceLayoutDirection];

    v45 = [objc_alloc(MEMORY[0x277D759A8]) initWithTarget:self action:sel_edgeSwipeGestureRecognized_];
    edgePanGestureRecognizer = self->_edgePanGestureRecognizer;
    self->_edgePanGestureRecognizer = v45;

    if (v44 == 1)
    {
      v47 = 8;
    }

    else
    {
      v47 = 2;
    }

    [(UIScreenEdgePanGestureRecognizer *)self->_edgePanGestureRecognizer setEdges:v47];
    v48 = [(MUPDFContentViewController *)self pdfView];
    [v48 addGestureRecognizer:self->_edgePanGestureRecognizer];
  }

  v49 = [(MUPDFContentViewController *)self pdfDocument];
  v50 = [v49 akController];
  [(MUContentViewController *)self setAnnotationController:v50];
}

- (void)_teardownPDFViewIfNecessary
{
  v3 = [(MUPDFContentViewController *)self pdfView];

  if (v3)
  {
    v13 = [(MUPDFContentViewController *)self pdfView];
    v4 = [v13 documentScrollView];
    [v4 _removeBoundingPathChangeObserver:self];
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 removeObserver:self name:@"UITextSelectionDidZoom" object:v4];

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 removeObserver:self name:*MEMORY[0x277CD9440] object:v13];

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    v8 = *MEMORY[0x277CD9410];
    v9 = [(MUPDFContentViewController *)self pdfDocument];
    [v7 removeObserver:self name:v8 object:v9];

    [(MUPDFContentViewController *)self removeThumbnailViewHolderConstraints];
    v10 = [(MUPDFContentViewController *)self thumbnailView];
    [v10 setPDFView:0];

    v11 = [(MUPDFContentViewController *)self thumbnailView];
    [v11 removeFromSuperview];

    [(MUPDFContentViewController *)self setThumbnailView:0];
    v12 = [(MUPDFContentViewController *)self thumbnailViewHolder];
    [v12 removeFromSuperview];

    [(MUPDFContentViewController *)self setThumbnailViewHolder:0];
    [(PDFDocument *)self->_pdfDocument setDelegate:0];
    [(PDFDocument *)self->_pdfDocument setPDFAKControllerDelegate:0];
    [v13 setDelegate:0];
    [v13 removeFromSuperview];
    [v13 setDocument:0];
    [(MUPDFContentViewController *)self setPdfView:0];
  }
}

- (void)pdfViewDidChangeCurrentPage:(id)a3
{
  v4 = a3;
  v11 = [(MUPDFContentViewController *)self pdfView];
  v5 = [v4 object];

  v6 = v11;
  if (v5 == v11)
  {
    v7 = [v11 document];
    v8 = [v11 currentPage];
    v9 = v8;
    if (v7)
    {
      if (v8)
      {
        v10 = [v7 indexForPage:v8];
        if (v10 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [(MUPDFContentViewController *)self _updatePageNumberOverlayToPage:v10 animate:1];
        }
      }
    }

    v6 = v11;
  }
}

- (void)pdfScrollViewWillBeginDragging:(id)a3
{
  v4 = a3;
  v5 = [(MUPDFContentViewController *)self view];
  v7 = [v5 window];

  v6 = [v4 object];

  if ((!v7 || [v6 isDescendantOfView:v7]) && self->_shouldShowThumbnailView && -[MUPDFContentViewController thumbnailViewStyle](self, "thumbnailViewStyle") == 1)
  {
    self->_shouldShowThumbnailView = 0;
    [(MUPDFContentViewController *)self _updateThumbnailView];
  }
}

- (void)pdfDocumentDidUnlock:(id)a3
{
  v4 = [a3 object];
  v5 = [(MUPDFContentViewController *)self pdfDocument];

  if (v4 == v5)
  {
    v7 = [(MUPDFContentViewController *)self navigationModeHorizontal];
    v8 = [(MUPDFContentViewController *)self showsThumbnailView];
    self->_navigationModeHorizontal = !v7;
    self->_showsThumbnailView = !v8;
    [(MUPDFContentViewController *)self setNavigationModeHorizontal:v7];
    [(MUPDFContentViewController *)self setShowsThumbnailView:v8];
    v9 = [(MUContentViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v9 contentControllerDidUnlockDocument:self];
    }

    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    v11 = *MEMORY[0x277CD9410];
    v12 = [(MUPDFContentViewController *)self pdfDocument];
    [v10 removeObserver:self name:v11 object:v12];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__MUPDFContentViewController_pdfDocumentDidUnlock___block_invoke;
    block[3] = &unk_27986E2C8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v6 = [(MUPDFContentViewController *)self pdfDocument];
    NSLog(&cfstr_SNotificationD.isa, "[MUPDFContentViewController pdfDocumentDidUnlock:]", v4, v6);
  }
}

- (void)_updateThumbnailView
{
  v2 = [(MUContentViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 updateThumbnailView];
  }
}

- (void)pageLabelViewTapped:(id)a3
{
  if ([(MUPDFContentViewController *)self thumbnailViewStyle]== 1)
  {
    self->_shouldShowThumbnailView ^= 1u;
    [(MUPDFContentViewController *)self _updateThumbnailView];
    pageLabelView = self->_pageLabelView;

    [(MUPDFPageLabelView *)pageLabelView resetFadeOutTimer];
  }
}

- (void)edgeSwipeGestureRecognized:(id)a3
{
  if ([(MUPDFContentViewController *)self thumbnailViewStyle]== 1 && !self->_shouldShowThumbnailView)
  {
    self->_shouldShowThumbnailView = 1;

    [(MUPDFContentViewController *)self _updateThumbnailView];
  }
}

- (void)_removePageLabelViewConstraints
{
  v3 = self->pageLabelViewTopConstraint;
  v8 = v3;
  if (v3)
  {
    [(NSLayoutConstraint *)v3 setActive:0];
    pageLabelViewTopConstraint = self->pageLabelViewTopConstraint;
    self->pageLabelViewTopConstraint = 0;

    v3 = v8;
  }

  pageLabelViewSideConstraint = self->pageLabelViewSideConstraint;
  if (pageLabelViewSideConstraint)
  {
    v6 = pageLabelViewSideConstraint;
    [(NSLayoutConstraint *)v6 setActive:0];
    v7 = self->pageLabelViewSideConstraint;
    self->pageLabelViewSideConstraint = 0;

    v3 = v8;
  }
}

- (void)_updatePageNumberOverlayToPage:(unint64_t)a3 animate:(BOOL)a4
{
  v4 = a4;
  if ([(MUPDFContentViewController *)self canShowPageViewLabel])
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"%lu of %lu" value:&stru_286962590 table:@"MUPDFContentViewController"];
    v10 = [(MUPDFContentViewController *)self pdfDocument];
    v11 = [v7 stringWithFormat:v9, a3 + 1, objc_msgSend(v10, "pageCount")];

    v12 = [(MUPDFContentViewController *)self pdfView];
    v13 = self->_pageLabelView;
    v14 = [(MUPDFPageLabelView *)v13 superview];

    if (!v14)
    {
      [(MUPDFContentViewController *)self _removePageLabelViewConstraints];
    }

    [(MUPDFPageLabelView *)v13 showNowInSuperView:v12 withText:v11];
    [(MUPDFContentViewController *)self _updateThumbnailViewHolderConstraints];
    v15 = [(MUPDFContentViewController *)self thumbnailViewHolder];
    v16 = v15;
    if (self->pageLabelViewTopConstraint || !v15)
    {
      [(MUPDFContentViewController *)self edgeInsets];
      [(NSLayoutConstraint *)self->pageLabelViewTopConstraint setConstant:v23 + 20.0];
    }

    else
    {
      v17 = [(MUPDFPageLabelView *)v13 topAnchor];
      v18 = [v16 topAnchor];
      [(MUPDFContentViewController *)self edgeInsets];
      v20 = [v17 constraintEqualToAnchor:v18 constant:v19 + 20.0];
      pageLabelViewTopConstraint = self->pageLabelViewTopConstraint;
      self->pageLabelViewTopConstraint = v20;

      [(NSLayoutConstraint *)self->pageLabelViewTopConstraint setActive:1];
      v22 = [(MUPDFContentViewController *)self view];
      [v22 setNeedsUpdateConstraints];
    }

    pageLabelViewSideConstraint = self->pageLabelViewSideConstraint;
    if (pageLabelViewSideConstraint)
    {
      [(NSLayoutConstraint *)pageLabelViewSideConstraint setConstant:20.0];
      if (v4)
      {
LABEL_10:
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __69__MUPDFContentViewController__updatePageNumberOverlayToPage_animate___block_invoke;
        v33[3] = &unk_27986E2C8;
        v33[4] = self;
        [MEMORY[0x277D75D18] animateWithDuration:v33 animations:0.3];
LABEL_16:

        return;
      }
    }

    else
    {
      thumbnailViewStyle = self->_thumbnailViewStyle;
      v26 = [(MUPDFPageLabelView *)v13 leadingAnchor];
      if (thumbnailViewStyle == 1)
      {
        v27 = [v16 trailingAnchor];
        v28 = [v26 constraintEqualToAnchor:v27 constant:20.0];
        v29 = self->pageLabelViewSideConstraint;
        self->pageLabelViewSideConstraint = v28;
      }

      else
      {
        v27 = [(MUPDFContentViewController *)self view];
        v29 = [v27 leadingAnchor];
        v30 = [v26 constraintEqualToAnchor:v29 constant:20.0];
        v31 = self->pageLabelViewSideConstraint;
        self->pageLabelViewSideConstraint = v30;
      }

      [(NSLayoutConstraint *)self->pageLabelViewSideConstraint setActive:1];
      if (v4)
      {
        goto LABEL_10;
      }
    }

    v32 = [(MUPDFContentViewController *)self view];
    [v32 updateConstraints];

    goto LABEL_16;
  }
}

void __69__MUPDFContentViewController__updatePageNumberOverlayToPage_animate___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 updateConstraints];
}

- (BOOL)canEditContent
{
  v2 = [(MUPDFContentViewController *)self pdfDocument];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 allowsDocumentAssembly];
    v5 = [v3 allowsDocumentChanges];
    v6 = v5 & ([v3 isLocked] ^ 1);
    if (v4)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)acceptSingleTouch:(id)a3
{
  v4 = a3;
  v5 = [(MUPDFContentViewController *)self view];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  if ([(MUPDFContentViewController *)self _pageLabelExistAtPoint:v7, v9]|| [(MUPDFContentViewController *)self _thumbnailViewExistAtPoint:v7, v9])
  {
    v10 = 1;
  }

  else
  {
    v11 = [(MUPDFContentViewController *)self pdfView];
    v12 = v11;
    v10 = v11 && ([v11 shouldAcceptTouch:v4 ofGestureRecognizer:0] & 1) != 0;
  }

  return v10;
}

- (BOOL)_pageLabelExistAtPoint:(CGPoint)a3
{
  pageLabelView = self->_pageLabelView;
  if (!pageLabelView)
  {
    return 0;
  }

  y = a3.y;
  x = a3.x;
  v7 = pageLabelView;
  v8 = [(MUPDFContentViewController *)self view];
  v9 = [(MUPDFPageLabelView *)v7 superview];
  [v8 convertPoint:v9 toView:{x, y}];
  v11 = v10;
  v13 = v12;

  [(MUPDFPageLabelView *)v7 frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  v26 = v11;
  v27 = v13;

  return CGRectContainsPoint(*&v22, *&v26);
}

- (BOOL)_thumbnailViewExistAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(MUPDFContentViewController *)self thumbnailView];
  v6 = v5;
  if (v5)
  {
    [v5 frame];
    v9.x = x;
    v9.y = y;
    v7 = CGRectContainsPoint(v10, v9);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setThumbnailViewStyle:(int64_t)a3
{
  if (self->_thumbnailViewStyle != a3)
  {
    self->_thumbnailViewStyle = a3;
    v5 = [MEMORY[0x277D75348] clearColor];
    v6 = [(MUPDFContentViewController *)self thumbnailViewHolder];
    [v6 setBackgroundColor:v5];

    [(MUPDFContentViewController *)self removeThumbnailViewHolderConstraints];
    [(MUPDFContentViewController *)self _updateThumbnailViewHolderBackgroundColor];
    [(MUPDFContentViewController *)self _removePageLabelViewConstraints];
    if (a3 == 1)
    {
      [(MUPDFContentViewController *)self _updateThumbnailViewHolderConstraints];
      v7 = [(MUPDFContentViewController *)self thumbnailViewHolder];
      v8 = [v7 superview];
      v9 = [(MUPDFContentViewController *)self thumbnailViewHolderRevealConstraint];
      v10 = [v9 secondItem];

      if (v8 == v10)
      {
        v11 = [(MUPDFContentViewController *)self thumbnailViewHolder];
        [v11 frame];
        v13 = v12;
        v15 = v14;
        v17 = v16;

        v18 = [(MUPDFContentViewController *)self thumbnailViewHolder];
        v19 = [v18 effectiveUserInterfaceLayoutDirection];

        if (v19)
        {
          v20 = [(MUPDFContentViewController *)self thumbnailViewHolder];
          v21 = [v20 superview];
          [v21 bounds];
          v23 = v22;
          v24 = [(MUPDFContentViewController *)self thumbnailViewHolderRevealConstraint];
          [v24 constant];
          v26 = v23 - v25;
        }

        else
        {
          v20 = [(MUPDFContentViewController *)self thumbnailViewHolderRevealConstraint];
          [v20 constant];
          v26 = v27;
        }

        v28 = [(MUPDFContentViewController *)self thumbnailViewHolder];
        [v28 setFrame:{v26, v13, v15, v17}];
      }
    }
  }
}

- (BOOL)isTouchInThumbnailView:(id)a3
{
  v4 = a3;
  v5 = [(MUPDFContentViewController *)self thumbnailView];
  v6 = v5;
  if (v5)
  {
    [v5 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [v4 locationInView:v6];
    v19.x = v15;
    v19.y = v16;
    v20.origin.x = v8;
    v20.origin.y = v10;
    v20.size.width = v12;
    v20.size.height = v14;
    v17 = CGRectContainsPoint(v20, v19);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (CGRect)visibleContentRect
{
  v3 = [(MUPDFContentViewController *)self view];
  v4 = [v3 window];
  [(MUPDFContentViewController *)self visibleContentRectInCoordinateSpace:v4];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)visibleContentRectInCoordinateSpace:(id)a3
{
  v4 = a3;
  v5 = [(MUContentViewController *)self annotationController];
  v6 = [(MUPDFContentViewController *)self pdfView];
  [v6 bounds];
  [v6 convertRect:v4 toCoordinateSpace:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(MUPDFContentViewController *)self pdfDocument];
  v16 = [v15 isLocked];

  if ((v16 & 1) == 0)
  {
    v17 = [v6 pageViewForPageAtIndex:{objc_msgSend(v5, "currentPageIndex")}];
    v18 = v17;
    if (v17)
    {
      [v17 bounds];
      [v18 convertRect:v4 toCoordinateSpace:?];
      v8 = v19;
      v10 = v20;
      v12 = v21;
      v14 = v22;
    }
  }

  v23 = v8;
  v24 = v10;
  v25 = v12;
  v26 = v14;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (id)contentSnapshot
{
  v3 = [(MUContentViewController *)self annotationController];
  v4 = [(MUPDFContentViewController *)self pdfDocument];
  v5 = [v4 isLocked];

  if (v5)
  {
    v6 = [(MUPDFContentViewController *)self pdfView];
  }

  else
  {
    v7 = [v3 currentPageIndex];
    v8 = [(MUPDFContentViewController *)self pdfView];
    v6 = [v8 pageViewForPageAtIndex:v7];

    if ([v3 isOverlayViewLoadedAtIndex:v7])
    {
      v9 = [v3 overlayViewAtIndex:v7];
      goto LABEL_6;
    }
  }

  v9 = 0;
LABEL_6:
  v10 = [v6 snapshotViewAfterScreenUpdates:1];
  if (v9)
  {
    v11 = [v9 snapshotViewAfterScreenUpdates:1];
    [v11 setAutoresizingMask:18];
    [v10 addSubview:v11];
  }

  return v10;
}

- (void)highlight:(id)a3
{
  v5 = objc_alloc_init(MEMORY[0x277D75220]);
  [v5 setTag:764050];
  v4 = [(MUContentViewController *)self annotationController];
  [v4 performActionForSender:v5];
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x277D75718] sharedMenuController];
  v8 = v7;
  if (v7 == v6)
  {
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v10 = [(MUPDFContentViewController *)&v15 canPerformAction:a3 withSender:v6, self, MUPDFContentViewController, v16.receiver, v16.super_class];
      goto LABEL_7;
    }
  }

  if (sel_highlight_ == a3)
  {
    v12 = objc_alloc_init(MEMORY[0x277D75220]);
    [v12 setTag:764050];
    v13 = [(MUContentViewController *)self annotationController];
    v11 = [v13 validateSender:v12];

    goto LABEL_9;
  }

  v10 = [(MUPDFContentViewController *)&v16 canPerformAction:a3 withSender:v6, v15.receiver, v15.super_class, self, MUPDFContentViewController];
LABEL_7:
  v11 = v10;
LABEL_9:

  return v11;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  [(MUPDFContentViewController *)self setViewIsTransitioningBetweenSizes:1];
  [(MUPDFContentViewController *)self _prepareToRotate];
  v9[4] = self;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__MUPDFContentViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v10[3] = &unk_27986EA70;
  v10[4] = self;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81__MUPDFContentViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v9[3] = &unk_27986EA70;
  [v7 animateAlongsideTransition:v10 completion:v9];
  v8.receiver = self;
  v8.super_class = MUPDFContentViewController;
  [(MUPDFContentViewController *)&v8 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
}

- (void)_prepareToRotate
{
  v2 = [(MUPDFContentViewController *)self pdfView];
  [v2 beginPDFViewRotation];
}

- (void)_recoverFromRotation
{
  v22 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v3 = [(MUPDFContentViewController *)self pdfView];
  [v3 endPDFViewRotation];
  v4 = [(MUPDFContentViewController *)self pdfView];
  v5 = [v4 visiblePages];

  v6 = [(MUPDFContentViewController *)self pdfDocument];
  v7 = [v6 isLocked];

  if ((v7 & 1) == 0)
  {
    v8 = [(MUContentViewController *)self annotationController];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        v13 = 0;
        do
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v17 + 1) + 8 * v13);
          v15 = [(MUPDFContentViewController *)self pdfDocument];
          v16 = [v15 indexForPage:v14];

          [v8 updateOverlayViewAtIndex:v16];
          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }
  }

  [MEMORY[0x277CD9FF0] commit];
}

- (CGSize)_medianSizeForCurrentDocumentInPDFViewWithGetter:(id)a3
{
  v20[64] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MUPDFContentViewController *)self pdfView];
  v6 = [v5 document];
  v7 = v6;
  v8 = 792.0;
  v9 = 612.0;
  if (v5 && v6 && [v6 pageCount])
  {
    v10 = [v7 pageCount];
    if (v10 >= 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = v10;
    }

    if (v10)
    {
      v12 = 0;
      do
      {
        v13 = [v7 pageAtIndex:v12];
        v14 = v4[2](v4, v13);
        v16 = v15;

        *&v20[v12] = v14;
        v19[v12++] = v16;
      }

      while (v11 != v12);
    }

    v9 = akMedian(v20, v11);
    v8 = akMedian(v19, v11);
  }

  v17 = v9;
  v18 = v8;
  result.height = v18;
  result.width = v17;
  return result;
}

- (void)_updateMinMaxZoomFactor
{
  v4 = [(MUPDFContentViewController *)self pdfView];
  v2 = [v4 documentScrollView];
  [v2 setMinimumZoomScale:0.1];
  [v4 autoScaleFactor];
  [v2 setMinimumZoomScale:{fmin(v3, 10.0)}];
  [v2 setMaximumZoomScale:10.0];
}

- (void)_userChangedScrollViewMagnificationNotification:(id)a3
{
  v4 = a3;
  v11 = [(MUPDFContentViewController *)self pdfView];
  v5 = [v4 object];

  v6 = [v11 documentScrollView];

  if (v5 == v6)
  {
    [v11 scaleFactor];
    v8 = v7;
    [v11 autoScaleFactor];
    v10 = v9 + 0.005;
    if (v8 < v9 + 0.005 != [v11 autoScales])
    {
      [v11 setAutoScales:v8 < v10];
    }
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = MUPDFContentViewController;
  v4 = a3;
  [(MUPDFContentViewController *)&v8 traitCollectionDidChange:v4];
  v5 = [v4 preferredContentSizeCategory];

  v6 = [(MUPDFContentViewController *)self traitCollection];
  v7 = [v6 preferredContentSizeCategory];

  if (v5 != v7)
  {
    [(MUPDFContentViewController *)self _updateThumbnailViewAppearance];
    [(MUPDFContentViewController *)self removeThumbnailViewHolderConstraints];
    [(MUPDFContentViewController *)self _updateThumbnailViewHolderConstraints];
  }
}

- (CGAffineTransform)_compensatingAffineTransformForPage:(SEL)a3
{
  v5 = a4;
  v6 = [v5 rotation];
  [v5 boundsForBox:1];
  v8 = v7;
  v10 = v9;

  memset(&v18, 0, sizeof(v18));
  CGAffineTransformMakeRotation(&v18, v6 * 3.14159265 / 180.0);
  v11 = *(MEMORY[0x277CBF2C0] + 16);
  *&v17.a = *MEMORY[0x277CBF2C0];
  *&v17.c = v11;
  *&v17.tx = *(MEMORY[0x277CBF2C0] + 32);
  switch(v6)
  {
    case 270:
      v13 = 0.0;
      goto LABEL_7;
    case 180:
      v13 = v8;
LABEL_7:
      v12 = v10;
      goto LABEL_8;
    case 90:
      v12 = 0.0;
      v13 = v8;
LABEL_8:
      CGAffineTransformMakeTranslation(&v17, v13, v12);
      break;
  }

  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  t1 = v18;
  v15 = v17;
  return CGAffineTransformConcat(retstr, &t1, &v15);
}

- (void)find:(id)a3
{
  v4 = [(MUPDFContentViewController *)self pdfView];
  v3 = [v4 findInteraction];
  [v3 presentFindNavigatorShowingReplace:0];
}

- (void)findNext:(id)a3
{
  v4 = [(MUPDFContentViewController *)self pdfView];
  v3 = [v4 findInteraction];
  [v3 findNext];
}

- (void)findPrevious:(id)a3
{
  v4 = [(MUPDFContentViewController *)self pdfView];
  v3 = [v4 findInteraction];
  [v3 findPrevious];
}

- (UIEdgeInsets)edgeInsets
{
  top = self->_edgeInsets.top;
  left = self->_edgeInsets.left;
  bottom = self->_edgeInsets.bottom;
  right = self->_edgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (PDFPage)viewTransitionPageToCenter
{
  WeakRetained = objc_loadWeakRetained(&self->_viewTransitionPageToCenter);

  return WeakRetained;
}

- (CGPoint)viewTransitionPointOnPageToCenter
{
  objc_copyStruct(v4, &self->_viewTransitionPointOnPageToCenter, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (UIEdgeInsets)cachedThumnailViewInsets
{
  top = self->_cachedThumnailViewInsets.top;
  left = self->_cachedThumnailViewInsets.left;
  bottom = self->_cachedThumnailViewInsets.bottom;
  right = self->_cachedThumnailViewInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end