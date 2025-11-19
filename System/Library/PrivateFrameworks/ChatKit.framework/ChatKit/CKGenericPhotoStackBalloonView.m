@interface CKGenericPhotoStackBalloonView
+ (id)genericStackView;
- (BOOL)_scrollLeadingAnimated:(BOOL)a3;
- (BOOL)_scrollTrailingAnimated:(BOOL)a3;
- (BOOL)pageLeftAnimated:(BOOL)a3;
- (BOOL)pageRightAnimated:(BOOL)a3;
- (CKGradientReferenceView)gradientReferenceView;
- (double)horizontalContentMarginForSize:(CGSize)a3;
- (id)_createStackView;
- (void)layoutSubviews;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)setDataSourceManager:(id)a3;
- (void)setHasHighlightOverlay:(BOOL)a3 animated:(BOOL)a4 autoDismiss:(BOOL)a5;
- (void)setHorizontalContentMarginAdjustment:(double)a3 edge:(int64_t)a4;
- (void)setMediaProvider:(id)a3;
- (void)tapGestureRecognized:(id)a3;
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
    v3 = [(CKGenericPhotoStackBalloonView *)self _createStackView];
    stackView = self->_stackView;
    self->_stackView = v3;

    [(CKGenericPhotoStackBalloonView *)self addSubview:self->_stackView];
  }

  if (objc_opt_respondsToSelector())
  {
    [(PXMessagesStackView *)self->_stackView prepareForDisplay];
  }
}

- (void)tapGestureRecognized:(id)a3
{
  v4 = a3;
  if (CKIsRunningInMacCatalyst())
  {
    v5 = [(CKGenericPhotoStackBalloonView *)self stackView];
    if (objc_opt_respondsToSelector())
    {
      v6 = [(CKGenericPhotoStackBalloonView *)self stackView];
      v7 = [v6 isPlayingInlineVideo];

      if (v7)
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
  [(CKBalloonView *)&v8 tapGestureRecognized:v4];
LABEL_7:
}

- (void)setHasHighlightOverlay:(BOOL)a3 animated:(BOOL)a4 autoDismiss:(BOOL)a5
{
  v5 = a3;
  v7.receiver = self;
  v7.super_class = CKGenericPhotoStackBalloonView;
  [(CKBalloonView *)&v7 setHasHighlightOverlay:a3 animated:a4 autoDismiss:a5];
  if (objc_opt_respondsToSelector())
  {
    [(PXMessagesStackView *)self->_stackView setSelectionOverlayEnabled:v5];
  }
}

- (double)horizontalContentMarginForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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

- (void)setHorizontalContentMarginAdjustment:(double)a3 edge:(int64_t)a4
{
  if (objc_opt_respondsToSelector())
  {
    if (a4)
    {
      if (a4 != 1)
      {
        return;
      }

      v7 = 0.0;
    }

    else
    {
      v7 = a3;
      a3 = 0.0;
    }

    [(PXMessagesStackView *)self->_stackView setLeftEdgeHorizontalContentMarginAdjustment:v7];
    stackView = self->_stackView;

    [(PXMessagesStackView *)stackView setRightEdgeHorizontalContentMarginAdjustment:a3];
  }
}

- (BOOL)_scrollTrailingAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(PXMessagesStackView *)self->_stackView currentIndex]+ 1;
  stackView = self->_stackView;

  return [(PXMessagesStackView *)stackView scrollToIndex:v5 animated:v3];
}

- (BOOL)_scrollLeadingAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(PXMessagesStackView *)self->_stackView currentIndex];
  if (v5)
  {
    v6 = v5 - 1;
    stackView = self->_stackView;

    LOBYTE(v5) = [(PXMessagesStackView *)stackView scrollToIndex:v6 animated:v3];
  }

  return v5;
}

- (BOOL)pageRightAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CKGenericPhotoStackBalloonView *)self effectiveUserInterfaceLayoutDirection];
  if (v5 == 1)
  {

    return [(CKGenericPhotoStackBalloonView *)self _scrollLeadingAnimated:v3];
  }

  else if (v5)
  {
    return 0;
  }

  else
  {

    return [(CKGenericPhotoStackBalloonView *)self _scrollTrailingAnimated:v3];
  }
}

- (BOOL)pageLeftAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CKGenericPhotoStackBalloonView *)self effectiveUserInterfaceLayoutDirection];
  if (v5 == 1)
  {

    return [(CKGenericPhotoStackBalloonView *)self _scrollTrailingAnimated:v3];
  }

  else if (v5)
  {
    return 0;
  }

  else
  {

    return [(CKGenericPhotoStackBalloonView *)self _scrollLeadingAnimated:v3];
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
  v3 = [(CKGenericPhotoStackBalloonView *)self stackView];
  if (objc_opt_respondsToSelector())
  {
    [v3 prepareForReuse];
  }

  v4.receiver = self;
  v4.super_class = CKGenericPhotoStackBalloonView;
  [(CKBalloonView *)&v4 prepareForReuse];
}

- (id)_createStackView
{
  v3 = objc_alloc(MEMORY[0x1E69C36A0]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v5 = [(CKGenericPhotoStackBalloonView *)self mediaProvider];
  [v4 setMediaProvider:v5];

  v6 = [(CKGenericPhotoStackBalloonView *)self dataSourceManager];
  [v4 setDataSourceManager:v6];

  v7 = +[CKUIBehavior sharedBehaviors];
  [v7 stackBalloonVerticalInset];
  [v4 setVerticalContentInsets:?];

  return v4;
}

- (void)setMediaProvider:(id)a3
{
  v5 = a3;
  if (self->_mediaProvider != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_mediaProvider, a3);
    [(PXMessagesStackView *)self->_stackView setMediaProvider:self->_mediaProvider];
    v5 = v6;
  }
}

- (void)setDataSourceManager:(id)a3
{
  v5 = a3;
  dataSourceManager = self->_dataSourceManager;
  if (dataSourceManager != v5)
  {
    v7 = v5;
    [(PXAssetsDataSourceManager *)dataSourceManager unregisterChangeObserver:self context:DataSourceManagerObservationContext];
    objc_storeStrong(&self->_dataSourceManager, a3);
    [(PXAssetsDataSourceManager *)self->_dataSourceManager registerChangeObserver:self context:DataSourceManagerObservationContext];
    [(PXMessagesStackView *)self->_stackView setDataSourceManager:self->_dataSourceManager];
    v5 = v7;
  }
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  if ((a4 & 2) != 0 && DataSourceManagerObservationContext == a5)
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