@interface CKMediaObjectTapbackManager
- (BOOL)hasTapbacksForAsset:(id)asset;
- (CKGradientReferenceView)gradientReferenceView;
- (CKPhotoGridTapbackPileDelegate)photoGridTapbackPileDelegate;
- (id)tapbackUserDataForAsset:(id)asset previousAsset:(id)previousAsset;
@end

@implementation CKMediaObjectTapbackManager

- (BOOL)hasTapbacksForAsset:(id)asset
{
  assetCopy = asset;
  chatItem = [(CKMediaObjectTapbackManager *)self chatItem];
  if (chatItem)
  {
    v6 = chatItem;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      chatItem2 = [(CKMediaObjectTapbackManager *)self chatItem];
      v9 = _MediaObjectBackedAssetForPhotoKitAsset(assetCopy, chatItem2);

      if (v9)
      {
        v10 = v9;

        assetCopy = v10;
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    acknowledgmentChatItem = [assetCopy acknowledgmentChatItem];
    v12 = acknowledgmentChatItem != 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)tapbackUserDataForAsset:(id)asset previousAsset:(id)previousAsset
{
  assetCopy = asset;
  previousAssetCopy = previousAsset;
  v8 = objc_opt_new();
  chatItem = [(CKMediaObjectTapbackManager *)self chatItem];
  if (chatItem)
  {
    v10 = chatItem;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      chatItem2 = [(CKMediaObjectTapbackManager *)self chatItem];
      v13 = _MediaObjectBackedAssetForPhotoKitAsset(assetCopy, chatItem2);

      if (v13)
      {
        v14 = v13;

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          chatItem3 = [(CKMediaObjectTapbackManager *)self chatItem];
          v16 = _MediaObjectBackedAssetForPhotoKitAsset(previousAssetCopy, chatItem3);

          previousAssetCopy = v16;
        }
      }

      else
      {
        v14 = assetCopy;
      }

      assetCopy = v14;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = assetCopy;
    [v8 setAsset:v17];
    acknowledgmentChatItem = [v17 acknowledgmentChatItem];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      acknowledgmentChatItem2 = [previousAssetCopy acknowledgmentChatItem];
      if (!acknowledgmentChatItem)
      {
        goto LABEL_15;
      }
    }

    else
    {
      acknowledgmentChatItem2 = 0;
      if (!acknowledgmentChatItem)
      {
        goto LABEL_15;
      }
    }

    if (!acknowledgmentChatItem2)
    {
      v20 = 1;
      goto LABEL_17;
    }

LABEL_15:
    if (!acknowledgmentChatItem)
    {
LABEL_18:

      goto LABEL_19;
    }

    latestAcknowledgmentType = [acknowledgmentChatItem latestAcknowledgmentType];
    v20 = latestAcknowledgmentType != [acknowledgmentChatItem2 latestAcknowledgmentType];
LABEL_17:
    [v8 setShouldAnimate:v20];
    goto LABEL_18;
  }

LABEL_19:
  gradientReferenceView = [(CKMediaObjectTapbackManager *)self gradientReferenceView];
  [v8 setGradientReferenceView:gradientReferenceView];

  [v8 setInvertTailDirection:{-[CKMediaObjectTapbackManager invertTapbackTailDirection](self, "invertTapbackTailDirection")}];
  [v8 setDisplayedInGridView:{-[CKMediaObjectTapbackManager originatedFromGridView](self, "originatedFromGridView")}];
  photoGridTapbackPileDelegate = [(CKMediaObjectTapbackManager *)self photoGridTapbackPileDelegate];
  [v8 setPhotoGridTapbackPileDelegate:photoGridTapbackPileDelegate];

  return v8;
}

- (CKGradientReferenceView)gradientReferenceView
{
  WeakRetained = objc_loadWeakRetained(&self->_gradientReferenceView);

  return WeakRetained;
}

- (CKPhotoGridTapbackPileDelegate)photoGridTapbackPileDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_photoGridTapbackPileDelegate);

  return WeakRetained;
}

@end