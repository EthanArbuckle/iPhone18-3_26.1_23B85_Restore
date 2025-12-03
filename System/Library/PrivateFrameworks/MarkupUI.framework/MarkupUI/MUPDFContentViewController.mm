@interface MUPDFContentViewController
- (BOOL)PDFView:(id)view shouldHandleLink:(id)link;
- (BOOL)_pageLabelExistAtPoint:(CGPoint)point;
- (BOOL)_thumbnailViewExistAtPoint:(CGPoint)point;
- (BOOL)_updateCachedThumbnailViewInsetsDidChangeLeftOrRight;
- (BOOL)acceptSingleTouch:(id)touch;
- (BOOL)allowsThumbnailViewPageReordering;
- (BOOL)canEditContent;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)canShowPageViewLabel;
- (BOOL)documentCanBeEdited:(id)edited;
- (BOOL)isTouchInThumbnailView:(id)view;
- (BOOL)shouldShowAnnotationsOfType:(id)type;
- (CGAffineTransform)_compensatingAffineTransformForPage:(SEL)page;
- (CGPoint)viewTransitionPointOnPageToCenter;
- (CGRect)visibleContentRect;
- (CGRect)visibleContentRectInCoordinateSpace:(id)space;
- (CGSize)_medianSizeForCurrentDocumentInPDFViewWithGetter:(id)getter;
- (CGSize)_thumbnailViewCellSize;
- (CGSize)contentSize;
- (CGSize)idealContentSizeForScreenSize:(CGSize)size windowDecorationSize:(CGSize)decorationSize;
- (MUPDFContentViewController)initWithNibName:(id)name bundle:(id)bundle delegate:(id)delegate;
- (MUPDFContentViewController)initWithPDFDocument:(id)document delegate:(id)delegate;
- (NSString)documentUnlockedWithPassword;
- (PDFPage)viewTransitionPageToCenter;
- (UIEdgeInsets)cachedThumnailViewInsets;
- (UIEdgeInsets)edgeInsets;
- (UIScrollView)contentViewScrollView;
- (double)_thumbnailViewWidth;
- (id)contentSnapshot;
- (id)controller:(id)controller willSetToolbarItems:(id)items;
- (id)menuElementsForPage:(id)page;
- (unint64_t)pageCount;
- (void)_boundingPathMayHaveChangedForView:(id)view relativeToBoundsOriginOnly:(BOOL)only;
- (void)_createPDFView;
- (void)_prepareToRotate;
- (void)_recoverFromRotation;
- (void)_removePageLabelViewConstraints;
- (void)_teardownPDFViewIfNecessary;
- (void)_updateMinMaxZoomFactor;
- (void)_updatePDFViewDisplayMode;
- (void)_updatePageNumberOverlayToPage:(unint64_t)page animate:(BOOL)animate;
- (void)_updateThumbnailView;
- (void)_updateThumbnailViewAppearance;
- (void)_updateThumbnailViewHolderBackgroundColor;
- (void)_updateThumbnailViewHolderConstraints;
- (void)_updateThumbnailViewHolderVisibility;
- (void)_userChangedScrollViewMagnificationNotification:(id)notification;
- (void)annotationController:(id)controller detectedEditOfType:(unint64_t)type;
- (void)controllerWillDismissSignatureCaptureView:(id)view;
- (void)controllerWillDismissSignatureManagerView:(id)view;
- (void)controllerWillShowSignatureCaptureView:(id)view;
- (void)controllerWillShowSignatureManagerView:(id)view;
- (void)dealloc;
- (void)edgeSwipeGestureRecognized:(id)recognized;
- (void)editCheckpointReachedForAnnotationController:(id)controller;
- (void)find:(id)find;
- (void)findNext:(id)next;
- (void)findPrevious:(id)previous;
- (void)highlight:(id)highlight;
- (void)loadContentWithCompletionBlock:(id)block;
- (void)pageLabelViewTapped:(id)tapped;
- (void)pdfDocumentDidUnlock:(id)unlock;
- (void)pdfScrollViewWillBeginDragging:(id)dragging;
- (void)pdfViewDidChangeCurrentPage:(id)page;
- (void)penStrokeCompletedForAnnotationController:(id)controller;
- (void)positionSketchOverlay:(id)overlay forAnnotationController:(id)controller;
- (void)removeThumbnailViewHolderConstraints;
- (void)setAllowsThumbnailViewPageReordering:(BOOL)reordering;
- (void)setEdgeInsets:(UIEdgeInsets)insets;
- (void)setFixedThumbnailView:(BOOL)view;
- (void)setForcesPDFViewTopAlignment:(BOOL)alignment;
- (void)setInkStyle:(unint64_t)style;
- (void)setNavigationModeHorizontal:(BOOL)horizontal;
- (void)setShowsThumbnailView:(BOOL)view;
- (void)setThumbnailViewStyle:(int64_t)style;
- (void)setup;
- (void)teardown;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation MUPDFContentViewController

- (MUPDFContentViewController)initWithNibName:(id)name bundle:(id)bundle delegate:(id)delegate
{
  v6 = MEMORY[0x277CD93D0];
  delegateCopy = delegate;
  v8 = objc_alloc_init(v6);
  v9 = [(MUPDFContentViewController *)self initWithPDFDocument:v8 delegate:delegateCopy];

  return v9;
}

- (MUPDFContentViewController)initWithPDFDocument:(id)document delegate:(id)delegate
{
  documentCopy = document;
  v11.receiver = self;
  v11.super_class = MUPDFContentViewController;
  v8 = [(MUContentViewController *)&v11 initWithNibName:0 bundle:0 delegate:delegate];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_pdfDocument, document);
    [(PDFDocument *)v9->_pdfDocument setDelegate:v9];
    [(PDFDocument *)v9->_pdfDocument setPDFAKControllerDelegate:v9];
    v9->_thumbnailViewStyle = 0;
    [(MUPDFContentViewController *)v9 setInkStyle:1];
  }

  return v9;
}

- (BOOL)allowsThumbnailViewPageReordering
{
  thumbnailView = [(MUPDFContentViewController *)self thumbnailView];
  v3 = thumbnailView;
  if (thumbnailView)
  {
    allowsPageReordering = [thumbnailView allowsPageReordering];
  }

  else
  {
    allowsPageReordering = 0;
  }

  return allowsPageReordering;
}

- (void)setAllowsThumbnailViewPageReordering:(BOOL)reordering
{
  reorderingCopy = reordering;
  self->_allowsThumbnailViewPageReordering = reordering;
  thumbnailView = [(MUPDFContentViewController *)self thumbnailView];
  [thumbnailView setAllowsPageReordering:reorderingCopy];
}

- (void)setInkStyle:(unint64_t)style
{
  self->_inkStyle = style;
  v3 = style == 0;
  annotationController = [(MUContentViewController *)self annotationController];
  [annotationController setUseHighVisibilityDefaultInks:v3];
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
  darkGrayColor = [MEMORY[0x277D75348] darkGrayColor];
  view = [(MUPDFContentViewController *)self view];
  [view setBackgroundColor:darkGrayColor];
}

- (void)viewDidLayoutSubviews
{
  v16.receiver = self;
  v16.super_class = MUPDFContentViewController;
  [(MUPDFContentViewController *)&v16 viewDidLayoutSubviews];
  if (![(MUPDFContentViewController *)self viewIsTransitioningBetweenSizes])
  {
    pdfView = [(MUPDFContentViewController *)self pdfView];
    autoScales = [pdfView autoScales];

    pdfView2 = [(MUPDFContentViewController *)self pdfView];
    [pdfView2 scaleFactor];
    v7 = v6;
    pdfView3 = [(MUPDFContentViewController *)self pdfView];
    [pdfView3 autoScaleFactor];
    v10 = vabdd_f64(v7, v9);

    [(MUPDFContentViewController *)self _updateMinMaxZoomFactor];
    if (v10 < 0.0005)
    {
      pdfView4 = [(MUPDFContentViewController *)self pdfView];
      pdfView5 = [(MUPDFContentViewController *)self pdfView];
      [pdfView5 autoScaleFactor];
      [pdfView4 setScaleFactor:?];
    }

    pdfView6 = [(MUPDFContentViewController *)self pdfView];
    autoScales2 = [pdfView6 autoScales];

    if (autoScales != autoScales2)
    {
      pdfView7 = [(MUPDFContentViewController *)self pdfView];
      [pdfView7 setAutoScales:autoScales];
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  if ([(MUPDFContentViewController *)self didSetup])
  {

    [(MUPDFContentViewController *)self setDidSetup:0];
  }
}

- (void)loadContentWithCompletionBlock:(id)block
{
  blockCopy = block;
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v4 = objc_autoreleasePoolPush();
  [(MUPDFContentViewController *)self _createPDFView];
  objc_autoreleasePoolPop(v4);
  [MEMORY[0x277CD9FF0] commit];
  v5 = blockCopy;
  if (blockCopy)
  {
    (*(blockCopy + 2))(blockCopy);
    v5 = blockCopy;
  }
}

- (CGSize)contentSize
{
  pdfView = [(MUPDFContentViewController *)self pdfView];
  [pdfView scaleFactor];
  v5 = v4;
  autoScales = [pdfView autoScales];
  [pdfView setAutoScales:0];
  [pdfView setScaleFactor:1.0];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __41__MUPDFContentViewController_contentSize__block_invoke;
  v14[3] = &unk_27986E9F8;
  v15 = pdfView;
  v7 = pdfView;
  [(MUPDFContentViewController *)self _medianSizeForCurrentDocumentInPDFViewWithGetter:v14];
  v9 = v8;
  v11 = v10;
  [v7 setScaleFactor:v5];
  [v7 setAutoScales:autoScales];

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGSize)idealContentSizeForScreenSize:(CGSize)size windowDecorationSize:(CGSize)decorationSize
{
  v5 = size.width - decorationSize.width;
  v6 = size.height - decorationSize.height;
  pdfView = [(MUPDFContentViewController *)self pdfView];
  autoScales = [pdfView autoScales];
  [pdfView setScaleFactor:1.0];
  [pdfView setAutoScales:0];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __81__MUPDFContentViewController_idealContentSizeForScreenSize_windowDecorationSize___block_invoke;
  v27[3] = &unk_27986E9F8;
  v9 = pdfView;
  v28 = v9;
  [(MUPDFContentViewController *)self _medianSizeForCurrentDocumentInPDFViewWithGetter:v27];
  v11 = v10;
  v13 = v12;
  if ([v9 displayMode])
  {
    document = [v9 document];
    pageCount = [document pageCount];

    if (pageCount > 1)
    {
      v13 = 1.79769313e308;
    }
  }

  displayMode = [v9 displayMode];
  v17 = v6 / v13;
  if (v5 / v11 < v6 / v13)
  {
    v17 = v5 / v11;
  }

  if (displayMode)
  {
    v17 = v5 / v11;
  }

  v18 = fmin(v17, 1.0);
  [v9 setScaleFactor:v18];
  [v9 setAutoScales:0];
  v19 = v13 * v18;
  if ([v9 displayMode])
  {
    document2 = [v9 document];
    pageCount2 = [document2 pageCount];

    if (pageCount2 > 1)
    {
      v19 = 1.79769313e308;
    }
  }

  if (autoScales)
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
  pdfView = [(MUPDFContentViewController *)self pdfView];
  documentScrollView = [pdfView documentScrollView];

  return documentScrollView;
}

- (BOOL)PDFView:(id)view shouldHandleLink:(id)link
{
  linkCopy = link;
  delegate = [(MUContentViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [delegate contentViewController:self shouldHandleURL:linkCopy];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)shouldShowAnnotationsOfType:(id)type
{
  typeCopy = type;
  v4 = +[MUCGPDFAnnotationAdaptor supportedAnnotationTypes];
  v5 = [v4 containsObject:typeCopy];

  return v5 ^ 1;
}

- (BOOL)documentCanBeEdited:(id)edited
{
  editedCopy = edited;
  pdfDocument = [(MUPDFContentViewController *)self pdfDocument];

  if (pdfDocument != editedCopy)
  {
    goto LABEL_2;
  }

  canEditContent = [(MUPDFContentViewController *)self canEditContent];

  if (!canEditContent)
  {
    return 0;
  }

  pdfDocument = [(MUContentViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    allowsEditing = [pdfDocument allowsEditing];
  }

  else
  {
LABEL_2:
    allowsEditing = 0;
  }

  return allowsEditing;
}

- (id)menuElementsForPage:(id)page
{
  pageCopy = page;
  delegate = [(MUContentViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [delegate getMenuElementsForPage:pageCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)canShowPageViewLabel
{
  delegate = [(MUContentViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    LOBYTE(v4) = [delegate canShowPageViewLabel];
  }

  else
  {
    pdfDocument = [(MUPDFContentViewController *)self pdfDocument];
    v4 = [pdfDocument isLocked] ^ 1;
  }

  return v4;
}

- (id)controller:(id)controller willSetToolbarItems:(id)items
{
  itemsCopy = items;
  delegate = [(MUContentViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [delegate annotationControllerOfContentViewController:self willSetToolbarItems:itemsCopy];
  }

  else
  {
    v7 = itemsCopy;
  }

  v8 = v7;

  return v8;
}

- (void)positionSketchOverlay:(id)overlay forAnnotationController:(id)controller
{
  overlayCopy = overlay;
  delegate = [(MUContentViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate positionSketchOverlay:overlayCopy forContentViewController:self];
  }
}

- (void)annotationController:(id)controller detectedEditOfType:(unint64_t)type
{
  controllerCopy = controller;
  delegate = [(MUContentViewController *)self delegate];
  [delegate annotationController:controllerCopy detectedEditOfType:type];
}

- (void)editCheckpointReachedForAnnotationController:(id)controller
{
  controllerCopy = controller;
  delegate = [(MUContentViewController *)self delegate];
  [delegate editCheckpointReachedForAnnotationController:controllerCopy];
}

- (void)penStrokeCompletedForAnnotationController:(id)controller
{
  controllerCopy = controller;
  delegate = [(MUContentViewController *)self delegate];
  [delegate penStrokeCompletedForAnnotationController:controllerCopy];
}

- (void)controllerWillShowSignatureCaptureView:(id)view
{
  viewCopy = view;
  delegate = [(MUContentViewController *)self delegate];
  [delegate controllerWillShowSignatureCaptureView:viewCopy];
}

- (void)controllerWillDismissSignatureCaptureView:(id)view
{
  viewCopy = view;
  delegate = [(MUContentViewController *)self delegate];
  [delegate controllerWillDismissSignatureCaptureView:viewCopy];
}

- (void)controllerWillShowSignatureManagerView:(id)view
{
  viewCopy = view;
  delegate = [(MUContentViewController *)self delegate];
  [delegate controllerWillShowSignatureManagerView:viewCopy];
}

- (void)controllerWillDismissSignatureManagerView:(id)view
{
  viewCopy = view;
  delegate = [(MUContentViewController *)self delegate];
  [delegate controllerWillDismissSignatureManagerView:viewCopy];
}

- (void)setEdgeInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  top = insets.top;
  v14 = *&self->_edgeInsets.bottom;
  v15 = *&self->_edgeInsets.top;
  self->_edgeInsets = insets;
  left = insets.left;
  bottom = insets.bottom;
  navigationModeHorizontal = [(MUPDFContentViewController *)self navigationModeHorizontal];
  if (navigationModeHorizontal)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = top;
  }

  if (v5 > 0.0)
  {
    if (navigationModeHorizontal)
    {
      v6 = left;
    }

    else
    {
      v6 = 0.0;
    }

    if (navigationModeHorizontal)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = bottom;
    }

    if (navigationModeHorizontal)
    {
      v8 = right;
    }

    else
    {
      v8 = 0.0;
    }

    thumbnailView = [(MUPDFContentViewController *)self thumbnailView];
    [thumbnailView setContentInset:{v5, v6, v7, v8}];
  }

  v10.f64[0] = top;
  v11.f64[0] = bottom;
  v10.f64[1] = left;
  v11.f64[1] = right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v15, v10), vceqq_f64(v14, v11)))) & 1) == 0)
  {
    annotationController = [(MUContentViewController *)self annotationController];
    currentPageIndex = [annotationController currentPageIndex];

    if (currentPageIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(MUPDFContentViewController *)self _updatePageNumberOverlayToPage:currentPageIndex animate:0];
    }
  }

  if (![(MUPDFContentViewController *)self viewIsTransitioningBetweenSizes])
  {

    [(MUPDFContentViewController *)self _updateMinMaxZoomFactor];
  }
}

- (unint64_t)pageCount
{
  pdfDocument = [(MUPDFContentViewController *)self pdfDocument];
  pageCount = [pdfDocument pageCount];

  return pageCount;
}

- (void)setFixedThumbnailView:(BOOL)view
{
  if (self->_fixedThumbnailView != view)
  {
    self->_fixedThumbnailView = view;
    [(MUPDFContentViewController *)self removeThumbnailViewHolderConstraints];

    [(MUPDFContentViewController *)self _updateThumbnailViewHolderConstraints];
  }
}

- (void)setShowsThumbnailView:(BOOL)view
{
  v36[2] = *MEMORY[0x277D85DE8];
  if (self->_showsThumbnailView == view)
  {
    return;
  }

  viewCopy = view;
  pdfView = [(MUPDFContentViewController *)self pdfView];

  if (!pdfView)
  {
    self->_showsThumbnailView = viewCopy;
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
    self->_showsThumbnailView = viewCopy;
    if ([(MUPDFContentViewController *)self fixedThumbnailView])
    {
      if (viewCopy)
      {
        v8 = 1.0;
      }

      else
      {
        v8 = 0.0;
      }

      thumbnailViewHolder = [(MUPDFContentViewController *)self thumbnailViewHolder];
      [thumbnailViewHolder setAlpha:v8];
    }

    [(MUPDFContentViewController *)self _updateThumbnailViewHolderVisibility];
    if (!viewCopy)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (viewCopy)
  {
LABEL_16:
    thumbnailView = [(MUPDFContentViewController *)self thumbnailView];

    if (!thumbnailView)
    {
      v11 = [objc_alloc(MEMORY[0x277CD93F0]) initWithFrame:self->_thumbnailViewStyle style:{0.0, 0.0, 100.0, 100.0}];
      [v11 setThumbnailContextMenuDelegate:self];
      [v11 setAllowsPageReordering:self->_allowsThumbnailViewPageReordering];
      [(MUPDFContentViewController *)self setThumbnailView:v11];
      pdfView2 = [(MUPDFContentViewController *)self pdfView];
      [v11 setPDFView:pdfView2];

      [(MUPDFContentViewController *)self _updateThumbnailViewAppearance];
      [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
      thumbnailViewHolder2 = [(MUPDFContentViewController *)self thumbnailViewHolder];
      [thumbnailViewHolder2 addSubview:v11];

      v14 = _NSDictionaryOfVariableBindings(&cfstr_Thumbnailview.isa, v11, 0);
      thumbnailViewHolder3 = [(MUPDFContentViewController *)self thumbnailViewHolder];
      v16 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-0-[thumbnailView]-0@999-|" options:0 metrics:0 views:v14];
      [thumbnailViewHolder3 addConstraints:v16];

      thumbnailView2 = [(MUPDFContentViewController *)self thumbnailView];
      leadingAnchor = [thumbnailView2 leadingAnchor];
      thumbnailViewHolder4 = [(MUPDFContentViewController *)self thumbnailViewHolder];
      leadingAnchor2 = [thumbnailViewHolder4 leadingAnchor];
      v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      [(MUPDFContentViewController *)self setThumbnailViewLeadingConstraint:v21];

      thumbnailView3 = [(MUPDFContentViewController *)self thumbnailView];
      trailingAnchor = [thumbnailView3 trailingAnchor];
      thumbnailViewHolder5 = [(MUPDFContentViewController *)self thumbnailViewHolder];
      trailingAnchor2 = [thumbnailViewHolder5 trailingAnchor];
      v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

      LODWORD(v27) = 1148829696;
      [v26 setPriority:v27];
      thumbnailViewHolder6 = [(MUPDFContentViewController *)self thumbnailViewHolder];
      thumbnailViewLeadingConstraint = [(MUPDFContentViewController *)self thumbnailViewLeadingConstraint];
      v36[0] = thumbnailViewLeadingConstraint;
      v36[1] = v26;
      v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
      [thumbnailViewHolder6 addConstraints:v30];

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
  self->_showsThumbnailView = viewCopy;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __52__MUPDFContentViewController_setShowsThumbnailView___block_invoke;
  v34[3] = &unk_27986EA48;
  v35 = viewCopy;
  v34[4] = self;
  v34[5] = 0x3FC999999999999ALL;
  v31 = MEMORY[0x259C7BE00](v34);
  view = [(MUPDFContentViewController *)self view];
  window = [view window];

  if (window)
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

- (void)setNavigationModeHorizontal:(BOOL)horizontal
{
  if (self->_navigationModeHorizontal != horizontal)
  {
    self->_navigationModeHorizontal = horizontal;
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    [(MUPDFContentViewController *)self _updateThumbnailViewAppearance];
    [(MUPDFContentViewController *)self _updateThumbnailViewHolderConstraints];
    [(MUPDFContentViewController *)self _updatePDFViewDisplayMode];
    v5 = MEMORY[0x277CD9FF0];

    [v5 commit];
  }
}

- (void)setForcesPDFViewTopAlignment:(BOOL)alignment
{
  if (self->_forcesPDFViewTopAlignment != alignment)
  {
    self->_forcesPDFViewTopAlignment = alignment;
    pdfView = [(MUPDFContentViewController *)self pdfView];
    [pdfView setForcesTopAlignment:self->_forcesPDFViewTopAlignment];
  }
}

- (void)_updatePDFViewDisplayMode
{
  pdfView = [(MUPDFContentViewController *)self pdfView];

  if (pdfView)
  {
    v4 = [(MUPDFContentViewController *)self navigationModeHorizontal]^ 1;
    pdfView2 = [(MUPDFContentViewController *)self pdfView];
    [pdfView2 setDisplayMode:v4];

    pdfView3 = [(MUPDFContentViewController *)self pdfView];
    [pdfView3 setDisplayBox:1];
  }
}

- (void)_boundingPathMayHaveChangedForView:(id)view relativeToBoundsOriginOnly:(BOOL)only
{
  viewCopy = view;
  pdfView = [(MUPDFContentViewController *)self pdfView];
  documentScrollView = [pdfView documentScrollView];

  if (documentScrollView == viewCopy && !only && [(MUPDFContentViewController *)self _updateCachedThumbnailViewInsetsDidChangeLeftOrRight]&& [(MUPDFContentViewController *)self showsThumbnailView])
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

  defaultMetrics = [MEMORY[0x277D75520] defaultMetrics];
  traitCollection = [(MUPDFContentViewController *)self traitCollection];
  [defaultMetrics scaledValueForValue:traitCollection compatibleWithTraitCollection:81.0];
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
  contentViewScrollView = [(MUPDFContentViewController *)self contentViewScrollView];
  v4 = self->_thumbnailViewStyle != 1;
  [(MUPDFContentViewController *)self _thumbnailViewWidth];
  [contentViewScrollView _baseInsetsForAccessoryOnEdge:v4 hasCustomClientInsets:0 accessorySize:? additionalInsetFromEdge:?];
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
    clearColor = [MEMORY[0x277D75348] clearColor];
    thumbnailViewHolder = [(MUPDFContentViewController *)self thumbnailViewHolder];
    [thumbnailViewHolder setBackgroundColor:clearColor];

    scrollerBackgroundView = [(MUPDFContentViewController *)self scrollerBackgroundView];

    if (!scrollerBackgroundView)
    {
      v6 = [MEMORY[0x277D75210] effectWithStyle:8];
      v7 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v6];
      [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
      thumbnailViewHolder2 = [(MUPDFContentViewController *)self thumbnailViewHolder];
      [thumbnailViewHolder2 addSubview:v7];

      v9 = _NSDictionaryOfVariableBindings(&cfstr_Backgroundview.isa, v7, 0);
      thumbnailViewHolder3 = [(MUPDFContentViewController *)self thumbnailViewHolder];
      v11 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-0-[backgroundView]-0-|" options:0 metrics:0 views:v9];
      [thumbnailViewHolder3 addConstraints:v11];

      thumbnailViewHolder4 = [(MUPDFContentViewController *)self thumbnailViewHolder];
      v13 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-0-[backgroundView]-0-|" options:0 metrics:0 views:v9];
      [thumbnailViewHolder4 addConstraints:v13];

      [(MUPDFContentViewController *)self setScrollerBackgroundView:v7];
    }

    showsThumbnailView = self->_showsThumbnailView;
    scrollerBackgroundView2 = [(MUPDFContentViewController *)self scrollerBackgroundView];
    [scrollerBackgroundView2 setHidden:!showsThumbnailView];
  }

  else
  {
    v15 = [MEMORY[0x277D75348] colorWithWhite:0.301960784 alpha:0.2];
    thumbnailViewHolder5 = [(MUPDFContentViewController *)self thumbnailViewHolder];
    [thumbnailViewHolder5 setBackgroundColor:v15];

    scrollerBackgroundView3 = [(MUPDFContentViewController *)self scrollerBackgroundView];
    [scrollerBackgroundView3 removeFromSuperview];

    [(MUPDFContentViewController *)self setScrollerBackgroundView:0];
  }
}

- (void)_updateThumbnailViewHolderVisibility
{
  showsThumbnailView = self->_showsThumbnailView;
  scrollerBackgroundView = [(MUPDFContentViewController *)self scrollerBackgroundView];
  [scrollerBackgroundView setHidden:!showsThumbnailView];

  thumbnailViewHolder = [(MUPDFContentViewController *)self thumbnailViewHolder];
  [thumbnailViewHolder setHidden:!showsThumbnailView];
}

- (void)removeThumbnailViewHolderConstraints
{
  thumbnailViewHolderConstraints = [(MUPDFContentViewController *)self thumbnailViewHolderConstraints];

  if (thumbnailViewHolderConstraints)
  {
    view = [(MUPDFContentViewController *)self view];
    thumbnailViewHolderConstraints2 = [(MUPDFContentViewController *)self thumbnailViewHolderConstraints];
    [view removeConstraints:thumbnailViewHolderConstraints2];

    [(MUPDFContentViewController *)self setThumbnailViewHolderWidthConstraint:0];
    [(MUPDFContentViewController *)self setThumbnailViewHolderConstraints:0];

    [(MUPDFContentViewController *)self setThumbnailViewHolderRevealConstraint:0];
  }
}

- (void)_updateThumbnailViewHolderConstraints
{
  v60[2] = *MEMORY[0x277D85DE8];
  thumbnailViewHolder = [(MUPDFContentViewController *)self thumbnailViewHolder];

  if (thumbnailViewHolder)
  {
    thumbnailViewHolderConstraints = [(MUPDFContentViewController *)self thumbnailViewHolderConstraints];
    if (thumbnailViewHolderConstraints)
    {
      navigationModeHorizontal = [(MUPDFContentViewController *)self navigationModeHorizontal];
      v6 = navigationModeHorizontal ^ [(MUPDFContentViewController *)self constraintsAreHorizontal];
    }

    else
    {
      v6 = 1;
    }

    thumbnailViewStyle = self->_thumbnailViewStyle;
    if (thumbnailViewStyle == 1)
    {
      view = [(MUPDFContentViewController *)self view];
      [view safeAreaInsets];
      v9 = v13;
      v11 = v14;
    }

    else
    {
      [(MUPDFContentViewController *)self cachedThumnailViewInsets];
      v9 = v8;
      v11 = v10;
    }

    thumbnailViewHolder2 = [(MUPDFContentViewController *)self thumbnailViewHolder];
    if ([thumbnailViewHolder2 effectiveUserInterfaceLayoutDirection])
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

    navigationModeHorizontal2 = [(MUPDFContentViewController *)self navigationModeHorizontal];
    if (thumbnailViewStyle != 1 || navigationModeHorizontal2)
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
      view2 = [(MUPDFContentViewController *)self view];
      thumbnailViewHolder3 = [(MUPDFContentViewController *)self thumbnailViewHolder];
      v25 = _NSDictionaryOfVariableBindings(&cfstr_Holderview.isa, thumbnailViewHolder3, 0);
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

        v32 = [MEMORY[0x277CCAAD0] constraintWithItem:thumbnailViewHolder3 attribute:4 relatedBy:0 toItem:view2 attribute:4 multiplier:1.0 constant:v21];
        [(MUPDFContentViewController *)self setThumbnailViewHolderRevealConstraint:v32];

        v33 = @"H:|-(-1)-[holderView]-(-1)-|";
      }

      else
      {
        widthAnchor = [thumbnailViewHolder3 widthAnchor];
        v38 = [widthAnchor constraintEqualToConstant:v20];
        [(MUPDFContentViewController *)self setThumbnailViewHolderWidthConstraint:v38];

        thumbnailViewHolderWidthConstraint = [(MUPDFContentViewController *)self thumbnailViewHolderWidthConstraint];
        [v22 addObject:thumbnailViewHolderWidthConstraint];

        if (thumbnailViewStyle == 1)
        {
          thumbnailViewLeadingConstraint = [(MUPDFContentViewController *)self thumbnailViewLeadingConstraint];
          [thumbnailViewLeadingConstraint setConstant:v9];

          fixedThumbnailView = [(MUPDFContentViewController *)self fixedThumbnailView];
          pdfViewLeadingConstraint = [(MUPDFContentViewController *)self pdfViewLeadingConstraint];
          v44 = pdfViewLeadingConstraint;
          if (fixedThumbnailView)
          {
            [pdfViewLeadingConstraint setActive:0];

            leadingAnchor = [thumbnailViewHolder3 leadingAnchor];
            [view2 leadingAnchor];
            v46 = v58 = view2;
            leadingAnchor3 = [leadingAnchor constraintEqualToAnchor:v46];

            trailingAnchor = [thumbnailViewHolder3 trailingAnchor];
            pdfView = [(MUPDFContentViewController *)self pdfView];
            leadingAnchor2 = [pdfView leadingAnchor];
            leadingAnchor4 = [trailingAnchor constraintEqualToAnchor:leadingAnchor2];

            v30 = 0x277CCA000;
            view2 = v58;

            [v22 addObject:leadingAnchor3];
            [v22 addObject:leadingAnchor4];
          }

          else
          {
            [pdfViewLeadingConstraint setActive:1];

            leadingAnchor3 = [thumbnailViewHolder3 leadingAnchor];
            leadingAnchor4 = [view2 leadingAnchor];
            v51 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:-v21];
            [(MUPDFContentViewController *)self setThumbnailViewHolderRevealConstraint:v51];
          }
        }

        else
        {
          leadingAnchor3 = [MEMORY[0x277CCAAD0] constraintWithItem:thumbnailViewHolder3 attribute:2 relatedBy:0 toItem:view2 attribute:2 multiplier:1.0 constant:v21];
          [(MUPDFContentViewController *)self setThumbnailViewHolderRevealConstraint:leadingAnchor3];
        }

        thumbnailViewHolderRevealConstraint = [(MUPDFContentViewController *)self thumbnailViewHolderRevealConstraint];

        v33 = @"V:|-(-1)-[holderView]-(-1)-|";
        if (!thumbnailViewHolderRevealConstraint)
        {
          goto LABEL_47;
        }
      }

      thumbnailViewHolderRevealConstraint2 = [(MUPDFContentViewController *)self thumbnailViewHolderRevealConstraint];
      [v22 addObject:thumbnailViewHolderRevealConstraint2];

LABEL_47:
      v54 = [*(v30 + 2768) constraintsWithVisualFormat:v33 options:0 metrics:v29 views:v25];
      [v22 addObjectsFromArray:v54];

      [(MUPDFContentViewController *)self setConstraintsAreHorizontal:[(MUPDFContentViewController *)self navigationModeHorizontal]];
      view3 = [(MUPDFContentViewController *)self view];
      [view3 addConstraints:v22];

      view4 = [(MUPDFContentViewController *)self view];
      [view4 setNeedsLayout];

      return;
    }

    if (thumbnailViewStyle == 1)
    {
      v21 = -v21;
    }

    thumbnailViewHolderRevealConstraint3 = [(MUPDFContentViewController *)self thumbnailViewHolderRevealConstraint];
    [thumbnailViewHolderRevealConstraint3 setConstant:v21];

    navigationModeHorizontal3 = [(MUPDFContentViewController *)self navigationModeHorizontal];
    if (thumbnailViewStyle == 1 && !navigationModeHorizontal3)
    {
      thumbnailViewHolderWidthConstraint2 = [(MUPDFContentViewController *)self thumbnailViewHolderWidthConstraint];
      [thumbnailViewHolderWidthConstraint2 setConstant:v20];

      thumbnailViewLeadingConstraint2 = [(MUPDFContentViewController *)self thumbnailViewLeadingConstraint];
      [thumbnailViewLeadingConstraint2 setConstant:v9];
    }
  }
}

- (void)_updateThumbnailViewAppearance
{
  thumbnailView = [(MUPDFContentViewController *)self thumbnailView];
  if (thumbnailView)
  {
    v16 = thumbnailView;
    if ([(MUPDFContentViewController *)self navigationModeHorizontal])
    {
      whiteColor = [MEMORY[0x277D75348] whiteColor];
      [v16 setBackgroundColor:whiteColor];

      v5 = [MEMORY[0x277D75348] colorWithWhite:0.274509804 alpha:1.0];
      cGColor = [v5 CGColor];
      layer = [v16 layer];
      [layer setBorderColor:cGColor];

      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen nativeScale];
      v10 = 1.0 / v9;
      layer2 = [v16 layer];
      [layer2 setBorderWidth:v10];

      v12 = 1;
    }

    else
    {
      [v16 setBackgroundColor:0];
      v13 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.0];
      cGColor2 = [v13 CGColor];
      layer3 = [v16 layer];
      [layer3 setBorderColor:cGColor2];

      mainScreen = [v16 layer];
      [mainScreen setBorderWidth:0.0];
      v12 = 0;
    }

    [v16 setLayoutMode:v12];
    [(MUPDFContentViewController *)self _thumbnailViewCellSize];
    [v16 setThumbnailSize:?];
    thumbnailView = v16;
  }
}

- (NSString)documentUnlockedWithPassword
{
  pdfDocument = [(MUPDFContentViewController *)self pdfDocument];
  isEncrypted = [pdfDocument isEncrypted];

  if (isEncrypted)
  {
    pdfDocument2 = [(MUPDFContentViewController *)self pdfDocument];
    passwordUsedForUnlocking = [pdfDocument2 passwordUsedForUnlocking];
  }

  else
  {
    passwordUsedForUnlocking = 0;
  }

  return passwordUsedForUnlocking;
}

- (void)_createPDFView
{
  [(MUPDFContentViewController *)self _teardownPDFViewIfNecessary];
  firstValue = [[MUPDFView alloc] initWithFrame:0.0, 0.0, 100.0, 100.0];
  [(MUPDFView *)firstValue setForcesTopAlignment:[(MUPDFContentViewController *)self forcesPDFViewTopAlignment]];
  [(MUPDFContentViewController *)self setPdfView:firstValue];
  [(MUPDFView *)firstValue setDelegate:self];
  view = [(MUPDFContentViewController *)self view];
  [view addSubview:firstValue];

  [(MUPDFView *)firstValue setTranslatesAutoresizingMaskIntoConstraints:0];
  leadingAnchor = [(MUPDFView *)firstValue leadingAnchor];
  view2 = [(MUPDFContentViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

  trailingAnchor = [(MUPDFView *)firstValue trailingAnchor];
  view3 = [(MUPDFContentViewController *)self view];
  trailingAnchor2 = [view3 trailingAnchor];
  v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

  LODWORD(v12) = 1148829696;
  [v11 setPriority:v12];
  view4 = [(MUPDFContentViewController *)self view];
  [view4 addConstraint:v7];

  view5 = [(MUPDFContentViewController *)self view];
  [view5 addConstraint:v11];

  [(MUPDFContentViewController *)self setPdfViewLeadingConstraint:v7];
  v15 = _NSDictionaryOfVariableBindings(&cfstr_Pdfview.isa, firstValue, 0);
  view6 = [(MUPDFContentViewController *)self view];
  v17 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-0-[pdfView]-0@999-|" options:0 metrics:0 views:v15];
  [view6 addConstraints:v17];

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
  view7 = [(MUPDFContentViewController *)self view];
  [view7 insertSubview:v23 above:firstValue];

  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
  pdfDocument = [(MUPDFContentViewController *)self pdfDocument];
  isLocked = [pdfDocument isLocked];

  if (isLocked)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v29 = *MEMORY[0x277CD9410];
    pdfDocument2 = [(MUPDFContentViewController *)self pdfDocument];
    [defaultCenter addObserver:self selector:sel_pdfDocumentDidUnlock_ name:v29 object:pdfDocument2];
  }

  pdfDocument3 = [(MUPDFContentViewController *)self pdfDocument];
  [(MUPDFView *)firstValue setDocument:pdfDocument3 waitDuration:0.25];

  [(MUPDFView *)firstValue setAutoScales:1];
  navigationModeHorizontal = [(MUPDFContentViewController *)self navigationModeHorizontal];
  showsThumbnailView = [(MUPDFContentViewController *)self showsThumbnailView];
  self->_navigationModeHorizontal = !navigationModeHorizontal;
  self->_showsThumbnailView = !showsThumbnailView;
  [(MUPDFContentViewController *)self setNavigationModeHorizontal:navigationModeHorizontal];
  [(MUPDFContentViewController *)self setShowsThumbnailView:showsThumbnailView];
  if (showsThumbnailView)
  {
    thumbnailView = [(MUPDFContentViewController *)self thumbnailView];
    [thumbnailView setPDFView:firstValue];
  }

  documentScrollView = [(MUPDFView *)firstValue documentScrollView];
  [documentScrollView setDecelerationRate:*MEMORY[0x277D76EC0]];
  [documentScrollView setMaximumZoomScale:10.0];
  [documentScrollView setMinimumZoomScale:0.1];
  [documentScrollView _addBoundingPathChangeObserver:self];
  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__userChangedScrollViewMagnificationNotification_ name:@"UITextSelectionDidZoom" object:documentScrollView];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel_pdfViewDidChangeCurrentPage_ name:*MEMORY[0x277CD9440] object:firstValue];

  defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter4 addObserver:self selector:sel_pdfScrollViewWillBeginDragging_ name:*MEMORY[0x277CD9438] object:0];

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
    pdfView = [(MUPDFContentViewController *)self pdfView];
    effectiveUserInterfaceLayoutDirection = [pdfView effectiveUserInterfaceLayoutDirection];

    v45 = [objc_alloc(MEMORY[0x277D759A8]) initWithTarget:self action:sel_edgeSwipeGestureRecognized_];
    edgePanGestureRecognizer = self->_edgePanGestureRecognizer;
    self->_edgePanGestureRecognizer = v45;

    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      v47 = 8;
    }

    else
    {
      v47 = 2;
    }

    [(UIScreenEdgePanGestureRecognizer *)self->_edgePanGestureRecognizer setEdges:v47];
    pdfView2 = [(MUPDFContentViewController *)self pdfView];
    [pdfView2 addGestureRecognizer:self->_edgePanGestureRecognizer];
  }

  pdfDocument4 = [(MUPDFContentViewController *)self pdfDocument];
  akController = [pdfDocument4 akController];
  [(MUContentViewController *)self setAnnotationController:akController];
}

- (void)_teardownPDFViewIfNecessary
{
  pdfView = [(MUPDFContentViewController *)self pdfView];

  if (pdfView)
  {
    pdfView2 = [(MUPDFContentViewController *)self pdfView];
    documentScrollView = [pdfView2 documentScrollView];
    [documentScrollView _removeBoundingPathChangeObserver:self];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:@"UITextSelectionDidZoom" object:documentScrollView];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 removeObserver:self name:*MEMORY[0x277CD9440] object:pdfView2];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    v8 = *MEMORY[0x277CD9410];
    pdfDocument = [(MUPDFContentViewController *)self pdfDocument];
    [defaultCenter3 removeObserver:self name:v8 object:pdfDocument];

    [(MUPDFContentViewController *)self removeThumbnailViewHolderConstraints];
    thumbnailView = [(MUPDFContentViewController *)self thumbnailView];
    [thumbnailView setPDFView:0];

    thumbnailView2 = [(MUPDFContentViewController *)self thumbnailView];
    [thumbnailView2 removeFromSuperview];

    [(MUPDFContentViewController *)self setThumbnailView:0];
    thumbnailViewHolder = [(MUPDFContentViewController *)self thumbnailViewHolder];
    [thumbnailViewHolder removeFromSuperview];

    [(MUPDFContentViewController *)self setThumbnailViewHolder:0];
    [(PDFDocument *)self->_pdfDocument setDelegate:0];
    [(PDFDocument *)self->_pdfDocument setPDFAKControllerDelegate:0];
    [pdfView2 setDelegate:0];
    [pdfView2 removeFromSuperview];
    [pdfView2 setDocument:0];
    [(MUPDFContentViewController *)self setPdfView:0];
  }
}

- (void)pdfViewDidChangeCurrentPage:(id)page
{
  pageCopy = page;
  pdfView = [(MUPDFContentViewController *)self pdfView];
  object = [pageCopy object];

  v6 = pdfView;
  if (object == pdfView)
  {
    document = [pdfView document];
    currentPage = [pdfView currentPage];
    v9 = currentPage;
    if (document)
    {
      if (currentPage)
      {
        v10 = [document indexForPage:currentPage];
        if (v10 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [(MUPDFContentViewController *)self _updatePageNumberOverlayToPage:v10 animate:1];
        }
      }
    }

    v6 = pdfView;
  }
}

- (void)pdfScrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  view = [(MUPDFContentViewController *)self view];
  window = [view window];

  object = [draggingCopy object];

  if ((!window || [object isDescendantOfView:window]) && self->_shouldShowThumbnailView && -[MUPDFContentViewController thumbnailViewStyle](self, "thumbnailViewStyle") == 1)
  {
    self->_shouldShowThumbnailView = 0;
    [(MUPDFContentViewController *)self _updateThumbnailView];
  }
}

- (void)pdfDocumentDidUnlock:(id)unlock
{
  object = [unlock object];
  pdfDocument = [(MUPDFContentViewController *)self pdfDocument];

  if (object == pdfDocument)
  {
    navigationModeHorizontal = [(MUPDFContentViewController *)self navigationModeHorizontal];
    showsThumbnailView = [(MUPDFContentViewController *)self showsThumbnailView];
    self->_navigationModeHorizontal = !navigationModeHorizontal;
    self->_showsThumbnailView = !showsThumbnailView;
    [(MUPDFContentViewController *)self setNavigationModeHorizontal:navigationModeHorizontal];
    [(MUPDFContentViewController *)self setShowsThumbnailView:showsThumbnailView];
    delegate = [(MUContentViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate contentControllerDidUnlockDocument:self];
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v11 = *MEMORY[0x277CD9410];
    pdfDocument2 = [(MUPDFContentViewController *)self pdfDocument];
    [defaultCenter removeObserver:self name:v11 object:pdfDocument2];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__MUPDFContentViewController_pdfDocumentDidUnlock___block_invoke;
    block[3] = &unk_27986E2C8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    pdfDocument3 = [(MUPDFContentViewController *)self pdfDocument];
    NSLog(&cfstr_SNotificationD.isa, "[MUPDFContentViewController pdfDocumentDidUnlock:]", object, pdfDocument3);
  }
}

- (void)_updateThumbnailView
{
  delegate = [(MUContentViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate updateThumbnailView];
  }
}

- (void)pageLabelViewTapped:(id)tapped
{
  if ([(MUPDFContentViewController *)self thumbnailViewStyle]== 1)
  {
    self->_shouldShowThumbnailView ^= 1u;
    [(MUPDFContentViewController *)self _updateThumbnailView];
    pageLabelView = self->_pageLabelView;

    [(MUPDFPageLabelView *)pageLabelView resetFadeOutTimer];
  }
}

- (void)edgeSwipeGestureRecognized:(id)recognized
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

- (void)_updatePageNumberOverlayToPage:(unint64_t)page animate:(BOOL)animate
{
  animateCopy = animate;
  if ([(MUPDFContentViewController *)self canShowPageViewLabel])
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"%lu of %lu" value:&stru_286962590 table:@"MUPDFContentViewController"];
    pdfDocument = [(MUPDFContentViewController *)self pdfDocument];
    v11 = [v7 stringWithFormat:v9, page + 1, objc_msgSend(pdfDocument, "pageCount")];

    pdfView = [(MUPDFContentViewController *)self pdfView];
    v13 = self->_pageLabelView;
    superview = [(MUPDFPageLabelView *)v13 superview];

    if (!superview)
    {
      [(MUPDFContentViewController *)self _removePageLabelViewConstraints];
    }

    [(MUPDFPageLabelView *)v13 showNowInSuperView:pdfView withText:v11];
    [(MUPDFContentViewController *)self _updateThumbnailViewHolderConstraints];
    thumbnailViewHolder = [(MUPDFContentViewController *)self thumbnailViewHolder];
    v16 = thumbnailViewHolder;
    if (self->pageLabelViewTopConstraint || !thumbnailViewHolder)
    {
      [(MUPDFContentViewController *)self edgeInsets];
      [(NSLayoutConstraint *)self->pageLabelViewTopConstraint setConstant:v23 + 20.0];
    }

    else
    {
      topAnchor = [(MUPDFPageLabelView *)v13 topAnchor];
      topAnchor2 = [v16 topAnchor];
      [(MUPDFContentViewController *)self edgeInsets];
      v20 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v19 + 20.0];
      pageLabelViewTopConstraint = self->pageLabelViewTopConstraint;
      self->pageLabelViewTopConstraint = v20;

      [(NSLayoutConstraint *)self->pageLabelViewTopConstraint setActive:1];
      view = [(MUPDFContentViewController *)self view];
      [view setNeedsUpdateConstraints];
    }

    pageLabelViewSideConstraint = self->pageLabelViewSideConstraint;
    if (pageLabelViewSideConstraint)
    {
      [(NSLayoutConstraint *)pageLabelViewSideConstraint setConstant:20.0];
      if (animateCopy)
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
      leadingAnchor = [(MUPDFPageLabelView *)v13 leadingAnchor];
      if (thumbnailViewStyle == 1)
      {
        trailingAnchor = [v16 trailingAnchor];
        v28 = [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:20.0];
        leadingAnchor2 = self->pageLabelViewSideConstraint;
        self->pageLabelViewSideConstraint = v28;
      }

      else
      {
        trailingAnchor = [(MUPDFContentViewController *)self view];
        leadingAnchor2 = [trailingAnchor leadingAnchor];
        v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
        v31 = self->pageLabelViewSideConstraint;
        self->pageLabelViewSideConstraint = v30;
      }

      [(NSLayoutConstraint *)self->pageLabelViewSideConstraint setActive:1];
      if (animateCopy)
      {
        goto LABEL_10;
      }
    }

    view2 = [(MUPDFContentViewController *)self view];
    [view2 updateConstraints];

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
  pdfDocument = [(MUPDFContentViewController *)self pdfDocument];
  v3 = pdfDocument;
  if (pdfDocument)
  {
    allowsDocumentAssembly = [pdfDocument allowsDocumentAssembly];
    allowsDocumentChanges = [v3 allowsDocumentChanges];
    v6 = allowsDocumentChanges & ([v3 isLocked] ^ 1);
    if (allowsDocumentAssembly)
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

- (BOOL)acceptSingleTouch:(id)touch
{
  touchCopy = touch;
  view = [(MUPDFContentViewController *)self view];
  [touchCopy locationInView:view];
  v7 = v6;
  v9 = v8;

  if ([(MUPDFContentViewController *)self _pageLabelExistAtPoint:v7, v9]|| [(MUPDFContentViewController *)self _thumbnailViewExistAtPoint:v7, v9])
  {
    v10 = 1;
  }

  else
  {
    pdfView = [(MUPDFContentViewController *)self pdfView];
    v12 = pdfView;
    v10 = pdfView && ([pdfView shouldAcceptTouch:touchCopy ofGestureRecognizer:0] & 1) != 0;
  }

  return v10;
}

- (BOOL)_pageLabelExistAtPoint:(CGPoint)point
{
  pageLabelView = self->_pageLabelView;
  if (!pageLabelView)
  {
    return 0;
  }

  y = point.y;
  x = point.x;
  v7 = pageLabelView;
  view = [(MUPDFContentViewController *)self view];
  superview = [(MUPDFPageLabelView *)v7 superview];
  [view convertPoint:superview toView:{x, y}];
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

- (BOOL)_thumbnailViewExistAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  thumbnailView = [(MUPDFContentViewController *)self thumbnailView];
  v6 = thumbnailView;
  if (thumbnailView)
  {
    [thumbnailView frame];
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

- (void)setThumbnailViewStyle:(int64_t)style
{
  if (self->_thumbnailViewStyle != style)
  {
    self->_thumbnailViewStyle = style;
    clearColor = [MEMORY[0x277D75348] clearColor];
    thumbnailViewHolder = [(MUPDFContentViewController *)self thumbnailViewHolder];
    [thumbnailViewHolder setBackgroundColor:clearColor];

    [(MUPDFContentViewController *)self removeThumbnailViewHolderConstraints];
    [(MUPDFContentViewController *)self _updateThumbnailViewHolderBackgroundColor];
    [(MUPDFContentViewController *)self _removePageLabelViewConstraints];
    if (style == 1)
    {
      [(MUPDFContentViewController *)self _updateThumbnailViewHolderConstraints];
      thumbnailViewHolder2 = [(MUPDFContentViewController *)self thumbnailViewHolder];
      superview = [thumbnailViewHolder2 superview];
      thumbnailViewHolderRevealConstraint = [(MUPDFContentViewController *)self thumbnailViewHolderRevealConstraint];
      secondItem = [thumbnailViewHolderRevealConstraint secondItem];

      if (superview == secondItem)
      {
        thumbnailViewHolder3 = [(MUPDFContentViewController *)self thumbnailViewHolder];
        [thumbnailViewHolder3 frame];
        v13 = v12;
        v15 = v14;
        v17 = v16;

        thumbnailViewHolder4 = [(MUPDFContentViewController *)self thumbnailViewHolder];
        effectiveUserInterfaceLayoutDirection = [thumbnailViewHolder4 effectiveUserInterfaceLayoutDirection];

        if (effectiveUserInterfaceLayoutDirection)
        {
          thumbnailViewHolder5 = [(MUPDFContentViewController *)self thumbnailViewHolder];
          superview2 = [thumbnailViewHolder5 superview];
          [superview2 bounds];
          v23 = v22;
          thumbnailViewHolderRevealConstraint2 = [(MUPDFContentViewController *)self thumbnailViewHolderRevealConstraint];
          [thumbnailViewHolderRevealConstraint2 constant];
          v26 = v23 - v25;
        }

        else
        {
          thumbnailViewHolder5 = [(MUPDFContentViewController *)self thumbnailViewHolderRevealConstraint];
          [thumbnailViewHolder5 constant];
          v26 = v27;
        }

        thumbnailViewHolder6 = [(MUPDFContentViewController *)self thumbnailViewHolder];
        [thumbnailViewHolder6 setFrame:{v26, v13, v15, v17}];
      }
    }
  }
}

- (BOOL)isTouchInThumbnailView:(id)view
{
  viewCopy = view;
  thumbnailView = [(MUPDFContentViewController *)self thumbnailView];
  v6 = thumbnailView;
  if (thumbnailView)
  {
    [thumbnailView bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [viewCopy locationInView:v6];
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
  view = [(MUPDFContentViewController *)self view];
  window = [view window];
  [(MUPDFContentViewController *)self visibleContentRectInCoordinateSpace:window];
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

- (CGRect)visibleContentRectInCoordinateSpace:(id)space
{
  spaceCopy = space;
  annotationController = [(MUContentViewController *)self annotationController];
  pdfView = [(MUPDFContentViewController *)self pdfView];
  [pdfView bounds];
  [pdfView convertRect:spaceCopy toCoordinateSpace:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  pdfDocument = [(MUPDFContentViewController *)self pdfDocument];
  isLocked = [pdfDocument isLocked];

  if ((isLocked & 1) == 0)
  {
    v17 = [pdfView pageViewForPageAtIndex:{objc_msgSend(annotationController, "currentPageIndex")}];
    v18 = v17;
    if (v17)
    {
      [v17 bounds];
      [v18 convertRect:spaceCopy toCoordinateSpace:?];
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
  annotationController = [(MUContentViewController *)self annotationController];
  pdfDocument = [(MUPDFContentViewController *)self pdfDocument];
  isLocked = [pdfDocument isLocked];

  if (isLocked)
  {
    pdfView = [(MUPDFContentViewController *)self pdfView];
  }

  else
  {
    currentPageIndex = [annotationController currentPageIndex];
    pdfView2 = [(MUPDFContentViewController *)self pdfView];
    pdfView = [pdfView2 pageViewForPageAtIndex:currentPageIndex];

    if ([annotationController isOverlayViewLoadedAtIndex:currentPageIndex])
    {
      v9 = [annotationController overlayViewAtIndex:currentPageIndex];
      goto LABEL_6;
    }
  }

  v9 = 0;
LABEL_6:
  v10 = [pdfView snapshotViewAfterScreenUpdates:1];
  if (v9)
  {
    v11 = [v9 snapshotViewAfterScreenUpdates:1];
    [v11 setAutoresizingMask:18];
    [v10 addSubview:v11];
  }

  return v10;
}

- (void)highlight:(id)highlight
{
  v5 = objc_alloc_init(MEMORY[0x277D75220]);
  [v5 setTag:764050];
  annotationController = [(MUContentViewController *)self annotationController];
  [annotationController performActionForSender:v5];
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  mEMORY[0x277D75718] = [MEMORY[0x277D75718] sharedMenuController];
  v8 = mEMORY[0x277D75718];
  if (mEMORY[0x277D75718] == senderCopy)
  {
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      mUPDFContentViewController = [(MUPDFContentViewController *)&v15 canPerformAction:action withSender:senderCopy, self, MUPDFContentViewController, v16.receiver, v16.super_class];
      goto LABEL_7;
    }
  }

  if (sel_highlight_ == action)
  {
    v12 = objc_alloc_init(MEMORY[0x277D75220]);
    [v12 setTag:764050];
    annotationController = [(MUContentViewController *)self annotationController];
    v11 = [annotationController validateSender:v12];

    goto LABEL_9;
  }

  mUPDFContentViewController = [(MUPDFContentViewController *)&v16 canPerformAction:action withSender:senderCopy, v15.receiver, v15.super_class, self, MUPDFContentViewController];
LABEL_7:
  v11 = mUPDFContentViewController;
LABEL_9:

  return v11;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
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
  [coordinatorCopy animateAlongsideTransition:v10 completion:v9];
  v8.receiver = self;
  v8.super_class = MUPDFContentViewController;
  [(MUPDFContentViewController *)&v8 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

- (void)_prepareToRotate
{
  pdfView = [(MUPDFContentViewController *)self pdfView];
  [pdfView beginPDFViewRotation];
}

- (void)_recoverFromRotation
{
  v22 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  pdfView = [(MUPDFContentViewController *)self pdfView];
  [pdfView endPDFViewRotation];
  pdfView2 = [(MUPDFContentViewController *)self pdfView];
  visiblePages = [pdfView2 visiblePages];

  pdfDocument = [(MUPDFContentViewController *)self pdfDocument];
  isLocked = [pdfDocument isLocked];

  if ((isLocked & 1) == 0)
  {
    annotationController = [(MUContentViewController *)self annotationController];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = visiblePages;
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
          pdfDocument2 = [(MUPDFContentViewController *)self pdfDocument];
          v16 = [pdfDocument2 indexForPage:v14];

          [annotationController updateOverlayViewAtIndex:v16];
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

- (CGSize)_medianSizeForCurrentDocumentInPDFViewWithGetter:(id)getter
{
  v20[64] = *MEMORY[0x277D85DE8];
  getterCopy = getter;
  pdfView = [(MUPDFContentViewController *)self pdfView];
  document = [pdfView document];
  v7 = document;
  v8 = 792.0;
  v9 = 612.0;
  if (pdfView && document && [document pageCount])
  {
    pageCount = [v7 pageCount];
    if (pageCount >= 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = pageCount;
    }

    if (pageCount)
    {
      v12 = 0;
      do
      {
        v13 = [v7 pageAtIndex:v12];
        v14 = getterCopy[2](getterCopy, v13);
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
  pdfView = [(MUPDFContentViewController *)self pdfView];
  documentScrollView = [pdfView documentScrollView];
  [documentScrollView setMinimumZoomScale:0.1];
  [pdfView autoScaleFactor];
  [documentScrollView setMinimumZoomScale:{fmin(v3, 10.0)}];
  [documentScrollView setMaximumZoomScale:10.0];
}

- (void)_userChangedScrollViewMagnificationNotification:(id)notification
{
  notificationCopy = notification;
  pdfView = [(MUPDFContentViewController *)self pdfView];
  object = [notificationCopy object];

  documentScrollView = [pdfView documentScrollView];

  if (object == documentScrollView)
  {
    [pdfView scaleFactor];
    v8 = v7;
    [pdfView autoScaleFactor];
    v10 = v9 + 0.005;
    if (v8 < v9 + 0.005 != [pdfView autoScales])
    {
      [pdfView setAutoScales:v8 < v10];
    }
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = MUPDFContentViewController;
  changeCopy = change;
  [(MUPDFContentViewController *)&v8 traitCollectionDidChange:changeCopy];
  preferredContentSizeCategory = [changeCopy preferredContentSizeCategory];

  traitCollection = [(MUPDFContentViewController *)self traitCollection];
  preferredContentSizeCategory2 = [traitCollection preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    [(MUPDFContentViewController *)self _updateThumbnailViewAppearance];
    [(MUPDFContentViewController *)self removeThumbnailViewHolderConstraints];
    [(MUPDFContentViewController *)self _updateThumbnailViewHolderConstraints];
  }
}

- (CGAffineTransform)_compensatingAffineTransformForPage:(SEL)page
{
  v5 = a4;
  rotation = [v5 rotation];
  [v5 boundsForBox:1];
  v8 = v7;
  v10 = v9;

  memset(&v18, 0, sizeof(v18));
  CGAffineTransformMakeRotation(&v18, rotation * 3.14159265 / 180.0);
  v11 = *(MEMORY[0x277CBF2C0] + 16);
  *&v17.a = *MEMORY[0x277CBF2C0];
  *&v17.c = v11;
  *&v17.tx = *(MEMORY[0x277CBF2C0] + 32);
  switch(rotation)
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

- (void)find:(id)find
{
  pdfView = [(MUPDFContentViewController *)self pdfView];
  findInteraction = [pdfView findInteraction];
  [findInteraction presentFindNavigatorShowingReplace:0];
}

- (void)findNext:(id)next
{
  pdfView = [(MUPDFContentViewController *)self pdfView];
  findInteraction = [pdfView findInteraction];
  [findInteraction findNext];
}

- (void)findPrevious:(id)previous
{
  pdfView = [(MUPDFContentViewController *)self pdfView];
  findInteraction = [pdfView findInteraction];
  [findInteraction findPrevious];
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