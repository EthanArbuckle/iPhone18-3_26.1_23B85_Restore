@interface CKPhotoStackBalloonView
- (BOOL)canPresentTapbackPicker;
- (CGRect)currentAssetFrameInCoordinateSpace:(id)a3;
- (CKAttachmentMessagePartChatItem)currentAssetChatItem;
- (PXRegionOfInterest)currentAssetRegionOfInterest;
- (UIView)currentAssetSnapshot;
- (id)_createStackView;
- (id)transitionViewForCurrentItem:(id)a3 sourceFrame:(CGRect *)a4;
- (void)_additionalItemsCountDidChange;
- (void)_setTapbackManagerOnStackView:(id)a3;
- (void)_updateAdditionalItemsCount;
- (void)configureForMessagePart:(id)a3;
- (void)configureStackViewUsingCurrentTraitCollection;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)removeTransitionView;
- (void)stackView:(id)a3 didChangeCurrentAssetReference:(id)a4 isProgrammaticChange:(BOOL)a5 didChangeIndex:(BOOL)a6;
- (void)stackView:(id)a3 didSelectAssetReference:(id)a4;
- (void)stackViewDidSelectAdditionalItemsCard:(id)a3;
- (void)tapbackPileViewTapped:(id)a3 asset:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CKPhotoStackBalloonView

- (void)prepareForDisplay
{
  v4.receiver = self;
  v4.super_class = CKPhotoStackBalloonView;
  [(CKGenericPhotoStackBalloonView *)&v4 prepareForDisplay];
  v3 = [(CKGenericPhotoStackBalloonView *)self stackView];
  [(CKPhotoStackBalloonView *)self _setTapbackManagerOnStackView:v3];

  [(CKPhotoStackBalloonView *)self _updateAdditionalItemsCount];
  [(CKPhotoStackBalloonView *)self configureStackViewUsingCurrentTraitCollection];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = CKPhotoStackBalloonView;
  [(CKBalloonView *)&v4 traitCollectionDidChange:a3];
  [(CKPhotoStackBalloonView *)self configureStackViewUsingCurrentTraitCollection];
}

- (void)configureStackViewUsingCurrentTraitCollection
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isBalloonMaterialsEnabled];

  if (v4)
  {
    v11 = [(CKGenericPhotoStackBalloonView *)self stackView];
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      v5 = [(CKPhotoStackBalloonView *)self traitCollection];
      v6 = +[CKUIBehavior sharedBehaviors];
      [v6 balloonCornerRadius];
      v8 = v7;
      v9 = [v5 isTranscriptBackgroundActive];
      if (v9)
      {
        v10 = objc_opt_class();
      }

      else
      {
        v10 = 0;
      }

      [v11 setItemEffectViewClass:v10];
      [v11 setItemCornerRadius:v8];
      [v11 setShadowsDisabled:v9];
      [v11 setCornerRadiusClipsTopLevelContent:v9 ^ 1];
    }
  }
}

- (id)_createStackView
{
  v7.receiver = self;
  v7.super_class = CKPhotoStackBalloonView;
  v3 = [(CKGenericPhotoStackBalloonView *)&v7 _createStackView];
  [v3 setDelegate:self];
  [v3 setAllowPlayableContentLoading:1];
  v4 = [v3 tapGestureRecognizer];
  v5 = [(CKBalloonView *)self doubleTapGestureRecognizer];
  [v4 requireGestureRecognizerToFail:v5];

  [(CKPhotoStackBalloonView *)self _setTapbackManagerOnStackView:v3];

  return v3;
}

- (void)_setTapbackManagerOnStackView:(id)a3
{
  v4 = a3;
  v6 = objc_alloc_init(CKMediaObjectTapbackManager);
  v5 = [(CKGenericPhotoStackBalloonView *)self gradientReferenceView];
  [(CKMediaObjectTapbackManager *)v6 setGradientReferenceView:v5];

  [(CKMediaObjectTapbackManager *)v6 setInvertTapbackTailDirection:1];
  [(CKMediaObjectTapbackManager *)v6 setPhotoGridTapbackPileDelegate:self];
  [v4 setTapbackStatusManager:v6];
}

- (void)_additionalItemsCountDidChange
{
  v3.receiver = self;
  v3.super_class = CKPhotoStackBalloonView;
  [(CKGenericPhotoStackBalloonView *)&v3 _additionalItemsCountDidChange];
  [(CKPhotoStackBalloonView *)self _updateAdditionalItemsCount];
}

- (void)_updateAdditionalItemsCount
{
  v7 = [(CKGenericPhotoStackBalloonView *)self stackView];
  v3 = [(CKGenericPhotoStackBalloonView *)self dataSourceManager];
  v4 = [v3 additionalItemsCount];
  v6 = v5;

  [v7 setAdditionalItemsCount:{v4, v6}];
}

- (void)stackView:(id)a3 didSelectAssetReference:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [v11 tapGestureRecognizer];
  [(CKGenericPhotoStackBalloonView *)self tapGestureRecognized:v7];

  if (!CKIsRunningInMacCatalyst())
  {
    v8 = [(CKBalloonView *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(CKBalloonView *)self delegate];
      [v10 photoStackBalloonView:self photoStack:v11 didSelectAssetReference:v6];
    }
  }
}

- (void)stackView:(id)a3 didChangeCurrentAssetReference:(id)a4 isProgrammaticChange:(BOOL)a5 didChangeIndex:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v12 = a4;
  v9 = [(CKBalloonView *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(CKBalloonView *)self delegate];
    [v11 photoStackBalloonView:self didChangeCurrentAssetReference:v12 isProgrammaticChange:v7 didChangeIndex:v6];
  }
}

- (void)stackViewDidSelectAdditionalItemsCard:(id)a3
{
  v7 = a3;
  v4 = [(CKBalloonView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CKBalloonView *)self delegate];
    [v6 photoStackBalloonView:self photoStackDidSelectAdditionalItems:v7];
  }
}

- (id)transitionViewForCurrentItem:(id)a3 sourceFrame:(CGRect *)a4
{
  v6 = a3;
  v7 = [(CKGenericPhotoStackBalloonView *)self stackView];
  v8 = [v7 currentAssetReference];

  v9 = [v8 asset];
  v10 = [v9 mediaObject];

  if (([v10 isEqual:v6] & 1) == 0)
  {
    v11 = [(CKGenericPhotoStackBalloonView *)self dataSourceManager];
    v12 = [v11 mediaObjectDataSource];
    v13 = [v12 assetReferenceForMediaObject:v6];

    v14 = [(CKGenericPhotoStackBalloonView *)self stackView];
    [v14 scrollToAssetReference:v13 animated:0];

    v8 = v13;
  }

  v15 = [v10 transfer];
  v16 = [v15 isFileURLFinalized];

  if (v16)
  {
    v17 = [(CKGenericPhotoStackBalloonView *)self stackView];
    v18 = [v17 installTransitionSnapshotViewForAssetReference:v8 uncroppedImageFrame:a4];
  }

  else
  {
    v18 = 0;
    v19 = *(MEMORY[0x1E695F058] + 16);
    a4->origin = *MEMORY[0x1E695F058];
    a4->size = v19;
  }

  return v18;
}

- (void)removeTransitionView
{
  v2 = [(CKGenericPhotoStackBalloonView *)self stackView];
  [v2 removeTransitionSnapshotView];
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = CKPhotoStackBalloonView;
  [(CKGenericPhotoStackBalloonView *)&v5 prepareForReuse];
  v3 = [(CKGenericPhotoStackBalloonView *)self dataSourceManager];
  [v3 setMediaObjectDataSource:0];

  v4 = [(CKGenericPhotoStackBalloonView *)self stackView];
  [v4 setAdditionalItemsCount:{*MEMORY[0x1E69C4890], *(MEMORY[0x1E69C4890] + 8)}];
}

- (CGRect)currentAssetFrameInCoordinateSpace:(id)a3
{
  v4 = a3;
  v5 = [(CKGenericPhotoStackBalloonView *)self stackView];
  v6 = [v5 currentAssetReference];
  v7 = [v5 regionOfInterestForAssetReference:v6];
  [v7 rectInCoordinateSpace:v4];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)tapbackPileViewTapped:(id)a3 asset:(id)a4
{
  v5 = [(CKBalloonView *)self delegate:a3];
  [v5 balloonViewDoubleTapped:self];
}

- (void)configureForMessagePart:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CKPhotoStackBalloonView;
  [(CKBalloonView *)&v11 configureForMessagePart:v4];
  v5 = [(CKGenericPhotoStackBalloonView *)self mediaProvider];
  if (!v5)
  {
    v6 = objc_alloc_init(CKMediaObjectImageProvider);
    [(CKGenericPhotoStackBalloonView *)self setMediaProvider:v6];
  }

  v7 = [v4 dataSource];
  v8 = [(CKGenericPhotoStackBalloonView *)self dataSourceManager];
  v9 = v8;
  if (v8)
  {
    [v8 setMediaObjectDataSource:v7];
  }

  else
  {
    v10 = [[CKMediaObjectAssetDataSourceManager alloc] initWithDataSource:v7];
    [(CKGenericPhotoStackBalloonView *)self setDataSourceManager:v10];
  }
}

- (CKAttachmentMessagePartChatItem)currentAssetChatItem
{
  v2 = self;
  v3 = CKPhotoStackBalloonView.currentAssetChatItem.getter();

  return v3;
}

- (PXRegionOfInterest)currentAssetRegionOfInterest
{
  v2 = self;
  v3 = CKPhotoStackBalloonView.currentAssetRegionOfInterest.getter();

  return v3;
}

- (UIView)currentAssetSnapshot
{
  v2 = self;
  v3 = CKPhotoStackBalloonView.currentAssetSnapshot.getter();

  return v3;
}

- (BOOL)canPresentTapbackPicker
{
  v2 = [(CKGenericPhotoStackBalloonView *)self currentAssetReference];
  v3 = v2;
  if (v2)
  {
  }

  return v3 != 0;
}

@end