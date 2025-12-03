@interface CKPhotoStackBalloonView
- (BOOL)canPresentTapbackPicker;
- (CGRect)currentAssetFrameInCoordinateSpace:(id)space;
- (CKAttachmentMessagePartChatItem)currentAssetChatItem;
- (PXRegionOfInterest)currentAssetRegionOfInterest;
- (UIView)currentAssetSnapshot;
- (id)_createStackView;
- (id)transitionViewForCurrentItem:(id)item sourceFrame:(CGRect *)frame;
- (void)_additionalItemsCountDidChange;
- (void)_setTapbackManagerOnStackView:(id)view;
- (void)_updateAdditionalItemsCount;
- (void)configureForMessagePart:(id)part;
- (void)configureStackViewUsingCurrentTraitCollection;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)removeTransitionView;
- (void)stackView:(id)view didChangeCurrentAssetReference:(id)reference isProgrammaticChange:(BOOL)change didChangeIndex:(BOOL)index;
- (void)stackView:(id)view didSelectAssetReference:(id)reference;
- (void)stackViewDidSelectAdditionalItemsCard:(id)card;
- (void)tapbackPileViewTapped:(id)tapped asset:(id)asset;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CKPhotoStackBalloonView

- (void)prepareForDisplay
{
  v4.receiver = self;
  v4.super_class = CKPhotoStackBalloonView;
  [(CKGenericPhotoStackBalloonView *)&v4 prepareForDisplay];
  stackView = [(CKGenericPhotoStackBalloonView *)self stackView];
  [(CKPhotoStackBalloonView *)self _setTapbackManagerOnStackView:stackView];

  [(CKPhotoStackBalloonView *)self _updateAdditionalItemsCount];
  [(CKPhotoStackBalloonView *)self configureStackViewUsingCurrentTraitCollection];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = CKPhotoStackBalloonView;
  [(CKBalloonView *)&v4 traitCollectionDidChange:change];
  [(CKPhotoStackBalloonView *)self configureStackViewUsingCurrentTraitCollection];
}

- (void)configureStackViewUsingCurrentTraitCollection
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isBalloonMaterialsEnabled = [mEMORY[0x1E69A8070] isBalloonMaterialsEnabled];

  if (isBalloonMaterialsEnabled)
  {
    stackView = [(CKGenericPhotoStackBalloonView *)self stackView];
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      traitCollection = [(CKPhotoStackBalloonView *)self traitCollection];
      v6 = +[CKUIBehavior sharedBehaviors];
      [v6 balloonCornerRadius];
      v8 = v7;
      isTranscriptBackgroundActive = [traitCollection isTranscriptBackgroundActive];
      if (isTranscriptBackgroundActive)
      {
        v10 = objc_opt_class();
      }

      else
      {
        v10 = 0;
      }

      [stackView setItemEffectViewClass:v10];
      [stackView setItemCornerRadius:v8];
      [stackView setShadowsDisabled:isTranscriptBackgroundActive];
      [stackView setCornerRadiusClipsTopLevelContent:isTranscriptBackgroundActive ^ 1];
    }
  }
}

- (id)_createStackView
{
  v7.receiver = self;
  v7.super_class = CKPhotoStackBalloonView;
  _createStackView = [(CKGenericPhotoStackBalloonView *)&v7 _createStackView];
  [_createStackView setDelegate:self];
  [_createStackView setAllowPlayableContentLoading:1];
  tapGestureRecognizer = [_createStackView tapGestureRecognizer];
  doubleTapGestureRecognizer = [(CKBalloonView *)self doubleTapGestureRecognizer];
  [tapGestureRecognizer requireGestureRecognizerToFail:doubleTapGestureRecognizer];

  [(CKPhotoStackBalloonView *)self _setTapbackManagerOnStackView:_createStackView];

  return _createStackView;
}

- (void)_setTapbackManagerOnStackView:(id)view
{
  viewCopy = view;
  v6 = objc_alloc_init(CKMediaObjectTapbackManager);
  gradientReferenceView = [(CKGenericPhotoStackBalloonView *)self gradientReferenceView];
  [(CKMediaObjectTapbackManager *)v6 setGradientReferenceView:gradientReferenceView];

  [(CKMediaObjectTapbackManager *)v6 setInvertTapbackTailDirection:1];
  [(CKMediaObjectTapbackManager *)v6 setPhotoGridTapbackPileDelegate:self];
  [viewCopy setTapbackStatusManager:v6];
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
  stackView = [(CKGenericPhotoStackBalloonView *)self stackView];
  dataSourceManager = [(CKGenericPhotoStackBalloonView *)self dataSourceManager];
  additionalItemsCount = [dataSourceManager additionalItemsCount];
  v6 = v5;

  [stackView setAdditionalItemsCount:{additionalItemsCount, v6}];
}

- (void)stackView:(id)view didSelectAssetReference:(id)reference
{
  viewCopy = view;
  referenceCopy = reference;
  tapGestureRecognizer = [viewCopy tapGestureRecognizer];
  [(CKGenericPhotoStackBalloonView *)self tapGestureRecognized:tapGestureRecognizer];

  if (!CKIsRunningInMacCatalyst())
  {
    delegate = [(CKBalloonView *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      delegate2 = [(CKBalloonView *)self delegate];
      [delegate2 photoStackBalloonView:self photoStack:viewCopy didSelectAssetReference:referenceCopy];
    }
  }
}

- (void)stackView:(id)view didChangeCurrentAssetReference:(id)reference isProgrammaticChange:(BOOL)change didChangeIndex:(BOOL)index
{
  indexCopy = index;
  changeCopy = change;
  referenceCopy = reference;
  delegate = [(CKBalloonView *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(CKBalloonView *)self delegate];
    [delegate2 photoStackBalloonView:self didChangeCurrentAssetReference:referenceCopy isProgrammaticChange:changeCopy didChangeIndex:indexCopy];
  }
}

- (void)stackViewDidSelectAdditionalItemsCard:(id)card
{
  cardCopy = card;
  delegate = [(CKBalloonView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CKBalloonView *)self delegate];
    [delegate2 photoStackBalloonView:self photoStackDidSelectAdditionalItems:cardCopy];
  }
}

- (id)transitionViewForCurrentItem:(id)item sourceFrame:(CGRect *)frame
{
  itemCopy = item;
  stackView = [(CKGenericPhotoStackBalloonView *)self stackView];
  currentAssetReference = [stackView currentAssetReference];

  asset = [currentAssetReference asset];
  mediaObject = [asset mediaObject];

  if (([mediaObject isEqual:itemCopy] & 1) == 0)
  {
    dataSourceManager = [(CKGenericPhotoStackBalloonView *)self dataSourceManager];
    mediaObjectDataSource = [dataSourceManager mediaObjectDataSource];
    v13 = [mediaObjectDataSource assetReferenceForMediaObject:itemCopy];

    stackView2 = [(CKGenericPhotoStackBalloonView *)self stackView];
    [stackView2 scrollToAssetReference:v13 animated:0];

    currentAssetReference = v13;
  }

  transfer = [mediaObject transfer];
  isFileURLFinalized = [transfer isFileURLFinalized];

  if (isFileURLFinalized)
  {
    stackView3 = [(CKGenericPhotoStackBalloonView *)self stackView];
    v18 = [stackView3 installTransitionSnapshotViewForAssetReference:currentAssetReference uncroppedImageFrame:frame];
  }

  else
  {
    v18 = 0;
    v19 = *(MEMORY[0x1E695F058] + 16);
    frame->origin = *MEMORY[0x1E695F058];
    frame->size = v19;
  }

  return v18;
}

- (void)removeTransitionView
{
  stackView = [(CKGenericPhotoStackBalloonView *)self stackView];
  [stackView removeTransitionSnapshotView];
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = CKPhotoStackBalloonView;
  [(CKGenericPhotoStackBalloonView *)&v5 prepareForReuse];
  dataSourceManager = [(CKGenericPhotoStackBalloonView *)self dataSourceManager];
  [dataSourceManager setMediaObjectDataSource:0];

  stackView = [(CKGenericPhotoStackBalloonView *)self stackView];
  [stackView setAdditionalItemsCount:{*MEMORY[0x1E69C4890], *(MEMORY[0x1E69C4890] + 8)}];
}

- (CGRect)currentAssetFrameInCoordinateSpace:(id)space
{
  spaceCopy = space;
  stackView = [(CKGenericPhotoStackBalloonView *)self stackView];
  currentAssetReference = [stackView currentAssetReference];
  v7 = [stackView regionOfInterestForAssetReference:currentAssetReference];
  [v7 rectInCoordinateSpace:spaceCopy];
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

- (void)tapbackPileViewTapped:(id)tapped asset:(id)asset
{
  v5 = [(CKBalloonView *)self delegate:tapped];
  [v5 balloonViewDoubleTapped:self];
}

- (void)configureForMessagePart:(id)part
{
  partCopy = part;
  v11.receiver = self;
  v11.super_class = CKPhotoStackBalloonView;
  [(CKBalloonView *)&v11 configureForMessagePart:partCopy];
  mediaProvider = [(CKGenericPhotoStackBalloonView *)self mediaProvider];
  if (!mediaProvider)
  {
    v6 = objc_alloc_init(CKMediaObjectImageProvider);
    [(CKGenericPhotoStackBalloonView *)self setMediaProvider:v6];
  }

  dataSource = [partCopy dataSource];
  dataSourceManager = [(CKGenericPhotoStackBalloonView *)self dataSourceManager];
  v9 = dataSourceManager;
  if (dataSourceManager)
  {
    [dataSourceManager setMediaObjectDataSource:dataSource];
  }

  else
  {
    v10 = [[CKMediaObjectAssetDataSourceManager alloc] initWithDataSource:dataSource];
    [(CKGenericPhotoStackBalloonView *)self setDataSourceManager:v10];
  }
}

- (CKAttachmentMessagePartChatItem)currentAssetChatItem
{
  selfCopy = self;
  v3 = CKPhotoStackBalloonView.currentAssetChatItem.getter();

  return v3;
}

- (PXRegionOfInterest)currentAssetRegionOfInterest
{
  selfCopy = self;
  v3 = CKPhotoStackBalloonView.currentAssetRegionOfInterest.getter();

  return v3;
}

- (UIView)currentAssetSnapshot
{
  selfCopy = self;
  v3 = CKPhotoStackBalloonView.currentAssetSnapshot.getter();

  return v3;
}

- (BOOL)canPresentTapbackPicker
{
  currentAssetReference = [(CKGenericPhotoStackBalloonView *)self currentAssetReference];
  v3 = currentAssetReference;
  if (currentAssetReference)
  {
  }

  return v3 != 0;
}

@end