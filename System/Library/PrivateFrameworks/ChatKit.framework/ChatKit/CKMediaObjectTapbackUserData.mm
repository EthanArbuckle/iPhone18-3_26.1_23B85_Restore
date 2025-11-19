@interface CKMediaObjectTapbackUserData
- (CKGradientReferenceView)gradientReferenceView;
- (CKPhotoGridTapbackPileDelegate)photoGridTapbackPileDelegate;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CKMediaObjectTapbackUserData

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v5 = [(CKMediaObjectTapbackUserData *)self asset];
  [v4 setAsset:v5];

  v6 = [(CKMediaObjectTapbackUserData *)self gradientReferenceView];
  [v4 setGradientReferenceView:v6];

  [v4 setShouldAnimate:{-[CKMediaObjectTapbackUserData shouldAnimate](self, "shouldAnimate")}];
  [v4 setInvertTailDirection:{-[CKMediaObjectTapbackUserData invertTailDirection](self, "invertTailDirection")}];
  [v4 setDisplayedInGridView:{-[CKMediaObjectTapbackUserData isDisplayedInGridView](self, "isDisplayedInGridView")}];
  v7 = [(CKMediaObjectTapbackUserData *)self photoGridTapbackPileDelegate];
  [v4 setPhotoGridTapbackPileDelegate:v7];

  return v4;
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