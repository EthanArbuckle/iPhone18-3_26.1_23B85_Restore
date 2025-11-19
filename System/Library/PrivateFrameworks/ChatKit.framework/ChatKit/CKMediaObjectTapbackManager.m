@interface CKMediaObjectTapbackManager
- (BOOL)hasTapbacksForAsset:(id)a3;
- (CKGradientReferenceView)gradientReferenceView;
- (CKPhotoGridTapbackPileDelegate)photoGridTapbackPileDelegate;
- (id)tapbackUserDataForAsset:(id)a3 previousAsset:(id)a4;
@end

@implementation CKMediaObjectTapbackManager

- (BOOL)hasTapbacksForAsset:(id)a3
{
  v4 = a3;
  v5 = [(CKMediaObjectTapbackManager *)self chatItem];
  if (v5)
  {
    v6 = v5;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = [(CKMediaObjectTapbackManager *)self chatItem];
      v9 = _MediaObjectBackedAssetForPhotoKitAsset(v4, v8);

      if (v9)
      {
        v10 = v9;

        v4 = v10;
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v4 acknowledgmentChatItem];
    v12 = v11 != 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)tapbackUserDataForAsset:(id)a3 previousAsset:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = [(CKMediaObjectTapbackManager *)self chatItem];
  if (v9)
  {
    v10 = v9;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v12 = [(CKMediaObjectTapbackManager *)self chatItem];
      v13 = _MediaObjectBackedAssetForPhotoKitAsset(v6, v12);

      if (v13)
      {
        v14 = v13;

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [(CKMediaObjectTapbackManager *)self chatItem];
          v16 = _MediaObjectBackedAssetForPhotoKitAsset(v7, v15);

          v7 = v16;
        }
      }

      else
      {
        v14 = v6;
      }

      v6 = v14;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v6;
    [v8 setAsset:v17];
    v18 = [v17 acknowledgmentChatItem];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v7 acknowledgmentChatItem];
      if (!v18)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v19 = 0;
      if (!v18)
      {
        goto LABEL_15;
      }
    }

    if (!v19)
    {
      v20 = 1;
      goto LABEL_17;
    }

LABEL_15:
    if (!v18)
    {
LABEL_18:

      goto LABEL_19;
    }

    v21 = [v18 latestAcknowledgmentType];
    v20 = v21 != [v19 latestAcknowledgmentType];
LABEL_17:
    [v8 setShouldAnimate:v20];
    goto LABEL_18;
  }

LABEL_19:
  v22 = [(CKMediaObjectTapbackManager *)self gradientReferenceView];
  [v8 setGradientReferenceView:v22];

  [v8 setInvertTailDirection:{-[CKMediaObjectTapbackManager invertTapbackTailDirection](self, "invertTapbackTailDirection")}];
  [v8 setDisplayedInGridView:{-[CKMediaObjectTapbackManager originatedFromGridView](self, "originatedFromGridView")}];
  v23 = [(CKMediaObjectTapbackManager *)self photoGridTapbackPileDelegate];
  [v8 setPhotoGridTapbackPileDelegate:v23];

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