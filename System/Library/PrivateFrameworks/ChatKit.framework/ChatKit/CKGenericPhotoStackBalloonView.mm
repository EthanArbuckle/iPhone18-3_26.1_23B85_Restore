@interface CKGenericPhotoStackBalloonView
+ (id)genericStackView;
- (BOOL)_scrollLeadingAnimated:(BOOL)animated;
- (BOOL)_scrollTrailingAnimated:(BOOL)animated;
- (BOOL)pageLeftAnimated:(BOOL)animated;
- (BOOL)pageRightAnimated:(BOOL)animated;
- (CKGradientReferenceView)gradientReferenceView;
- (double)horizontalContentMarginForSize:(CGSize)size;
- (id)_createStackView;
- (void)layoutSubviews;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)setDataSourceManager:(id)manager;
- (void)setHasHighlightOverlay:(BOOL)overlay animated:(BOOL)animated autoDismiss:(BOOL)dismiss;
- (void)setHorizontalContentMarginAdjustment:(double)adjustment edge:(int64_t)edge;
- (void)setMediaProvider:(id)provider;
- (void)tapGestureRecognized:(id)recognized;
@end

@implementation CKGenericPhotoStackBalloonView

+ (id)genericStackView
{
  v2 = objc_alloc_init(CKMessagesCarouselView);

  return v2;
}

- (void)prepareForDisplay
{
  v5.receiver = self;
  v5.super_class = CKGenericPhotoStackBalloonView;
  [(CKBalloonView *)&v5 prepareForDisplay];
  if (!self->_stackView)
  {
    _createStackView = [(CKGenericPhotoStackBalloonView *)self _createStackView];
    stackView = self->_stackView;
    self->_stackView = _createStackView;

    [(CKGenericPhotoStackBalloonView *)self addSubview:self->_stackView];
  }

  if (objc_opt_respondsToSelector())
  {
    [(PXMessagesStackView *)self->_stackView prepareForDisplay];
  }
}

- (void)tapGestureRecognized:(id)recognized
{
  recognizedCopy = recognized;
  if (CKIsRunningInMacCatalyst())
  {
    stackView = [(CKGenericPhotoStackBalloonView *)self stackView];
    if (objc_opt_respondsToSelector())
    {
      stackView2 = [(CKGenericPhotoStackBalloonView *)self stackView];
      isPlayingInlineVideo = [stackView2 isPlayingInlineVideo];

      if (isPlayingInlineVideo)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v8.receiver = self;
  v8.super_class = CKGenericPhotoStackBalloonView;
  [(CKBalloonView *)&v8 tapGestureRecognized:recognizedCopy];
LABEL_7:
}

- (void)setHasHighlightOverlay:(BOOL)overlay animated:(BOOL)animated autoDismiss:(BOOL)dismiss
{
  overlayCopy = overlay;
  v7.receiver = self;
  v7.super_class = CKGenericPhotoStackBalloonView;
  [(CKBalloonView *)&v7 setHasHighlightOverlay:overlay animated:animated autoDismiss:dismiss];
  if (objc_opt_respondsToSelector())
  {
    [(PXMessagesStackView *)self->_stackView setSelectionOverlayEnabled:overlayCopy];
  }
}

- (double)horizontalContentMarginForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = objc_opt_respondsToSelector();
  stackView = self->_stackView;
  if (v6)
  {

    [(PXMessagesStackView *)stackView horizontalContentMarginForSize:width, height];
  }

  else if (objc_opt_respondsToSelector())
  {
    v9 = self->_stackView;

    [(PXMessagesStackView *)v9 horizontalContentMargin];
  }

  else
  {
    return 0.0;
  }

  return result;
}

- (void)setHorizontalContentMarginAdjustment:(double)adjustment edge:(int64_t)edge
{
  if (objc_opt_respondsToSelector())
  {
    if (edge)
    {
      if (edge != 1)
      {
        return;
      }

      adjustmentCopy = 0.0;
    }

    else
    {
      adjustmentCopy = adjustment;
      adjustment = 0.0;
    }

    [(PXMessagesStackView *)self->_stackView setLeftEdgeHorizontalContentMarginAdjustment:adjustmentCopy];
    stackView = self->_stackView;

    [(PXMessagesStackView *)stackView setRightEdgeHorizontalContentMarginAdjustment:adjustment];
  }
}

- (BOOL)_scrollTrailingAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = [(PXMessagesStackView *)self->_stackView currentIndex]+ 1;
  stackView = self->_stackView;

  return [(PXMessagesStackView *)stackView scrollToIndex:v5 animated:animatedCopy];
}

- (BOOL)_scrollLeadingAnimated:(BOOL)animated
{
  animatedCopy = animated;
  currentIndex = [(PXMessagesStackView *)self->_stackView currentIndex];
  if (currentIndex)
  {
    v6 = currentIndex - 1;
    stackView = self->_stackView;

    LOBYTE(currentIndex) = [(PXMessagesStackView *)stackView scrollToIndex:v6 animated:animatedCopy];
  }

  return currentIndex;
}

- (BOOL)pageRightAnimated:(BOOL)animated
{
  animatedCopy = animated;
  effectiveUserInterfaceLayoutDirection = [(CKGenericPhotoStackBalloonView *)self effectiveUserInterfaceLayoutDirection];
  if (effectiveUserInterfaceLayoutDirection == 1)
  {

    return [(CKGenericPhotoStackBalloonView *)self _scrollLeadingAnimated:animatedCopy];
  }

  else if (effectiveUserInterfaceLayoutDirection)
  {
    return 0;
  }

  else
  {

    return [(CKGenericPhotoStackBalloonView *)self _scrollTrailingAnimated:animatedCopy];
  }
}

- (BOOL)pageLeftAnimated:(BOOL)animated
{
  animatedCopy = animated;
  effectiveUserInterfaceLayoutDirection = [(CKGenericPhotoStackBalloonView *)self effectiveUserInterfaceLayoutDirection];
  if (effectiveUserInterfaceLayoutDirection == 1)
  {

    return [(CKGenericPhotoStackBalloonView *)self _scrollTrailingAnimated:animatedCopy];
  }

  else if (effectiveUserInterfaceLayoutDirection)
  {
    return 0;
  }

  else
  {

    return [(CKGenericPhotoStackBalloonView *)self _scrollLeadingAnimated:animatedCopy];
  }
}

- (void)layoutSubviews
{
  v23.receiver = self;
  v23.super_class = CKGenericPhotoStackBalloonView;
  [(CKBalloonView *)&v23 layoutSubviews];
  [(CKGenericPhotoStackBalloonView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = +[CKUIBehavior sharedBehaviors];
  [v9 stackBalloonVerticalInset];
  v11 = v10;
  v12 = +[CKUIBehavior sharedBehaviors];
  [v12 smallTranscriptSpace];
  v14 = v13;

  [(CKGenericPhotoStackBalloonView *)self bounds];
  v16 = v15;
  v18 = v17;
  if (CKMainScreenScale_once_21 != -1)
  {
    [CKGenericPhotoStackBalloonView layoutSubviews];
  }

  v19 = v8 + v14 * -2.0 + v11 * 2.0;
  v20 = *&CKMainScreenScale_sMainScreenScale_21;
  if (*&CKMainScreenScale_sMainScreenScale_21 == 0.0)
  {
    v20 = 1.0;
  }

  v21 = floor((v16 + (v18 - v19) * 0.5) * v20) / v20;
  if (*&CKMainScreenScale_sMainScreenScale_21 == 0.0)
  {
    v22 = 1.0;
  }

  else
  {
    v22 = *&CKMainScreenScale_sMainScreenScale_21;
  }

  [(PXMessagesStackView *)self->_stackView setFrame:round(v4 * v22) / v22, round(v21 * v22) / v22, round(v6 * v22) / v22, round(v19 * v22) / v22];
}

- (void)prepareForReuse
{
  stackView = [(CKGenericPhotoStackBalloonView *)self stackView];
  if (objc_opt_respondsToSelector())
  {
    [stackView prepareForReuse];
  }

  v4.receiver = self;
  v4.super_class = CKGenericPhotoStackBalloonView;
  [(CKBalloonView *)&v4 prepareForReuse];
}

- (id)_createStackView
{
  v3 = objc_alloc(MEMORY[0x1E69C36A0]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  mediaProvider = [(CKGenericPhotoStackBalloonView *)self mediaProvider];
  [v4 setMediaProvider:mediaProvider];

  dataSourceManager = [(CKGenericPhotoStackBalloonView *)self dataSourceManager];
  [v4 setDataSourceManager:dataSourceManager];

  v7 = +[CKUIBehavior sharedBehaviors];
  [v7 stackBalloonVerticalInset];
  [v4 setVerticalContentInsets:?];

  return v4;
}

- (void)setMediaProvider:(id)provider
{
  providerCopy = provider;
  if (self->_mediaProvider != providerCopy)
  {
    v6 = providerCopy;
    objc_storeStrong(&self->_mediaProvider, provider);
    [(PXMessagesStackView *)self->_stackView setMediaProvider:self->_mediaProvider];
    providerCopy = v6;
  }
}

- (void)setDataSourceManager:(id)manager
{
  managerCopy = manager;
  dataSourceManager = self->_dataSourceManager;
  if (dataSourceManager != managerCopy)
  {
    v7 = managerCopy;
    [(PXAssetsDataSourceManager *)dataSourceManager unregisterChangeObserver:self context:DataSourceManagerObservationContext];
    objc_storeStrong(&self->_dataSourceManager, manager);
    [(PXAssetsDataSourceManager *)self->_dataSourceManager registerChangeObserver:self context:DataSourceManagerObservationContext];
    [(PXMessagesStackView *)self->_stackView setDataSourceManager:self->_dataSourceManager];
    managerCopy = v7;
  }
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  if ((change & 2) != 0 && DataSourceManagerObservationContext == context)
  {
    [(CKGenericPhotoStackBalloonView *)self _additionalItemsCountDidChange];
  }
}

- (CKGradientReferenceView)gradientReferenceView
{
  WeakRetained = objc_loadWeakRetained(&self->_gradientReferenceView);

  return WeakRetained;
}

@end