@interface CKMediaObjectTapbackUserData
- (CKGradientReferenceView)gradientReferenceView;
- (CKPhotoGridTapbackPileDelegate)photoGridTapbackPileDelegate;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CKMediaObjectTapbackUserData

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  asset = [(CKMediaObjectTapbackUserData *)self asset];
  [v4 setAsset:asset];

  gradientReferenceView = [(CKMediaObjectTapbackUserData *)self gradientReferenceView];
  [v4 setGradientReferenceView:gradientReferenceView];

  [v4 setShouldAnimate:{-[CKMediaObjectTapbackUserData shouldAnimate](self, "shouldAnimate")}];
  [v4 setInvertTailDirection:{-[CKMediaObjectTapbackUserData invertTailDirection](self, "invertTailDirection")}];
  [v4 setDisplayedInGridView:{-[CKMediaObjectTapbackUserData isDisplayedInGridView](self, "isDisplayedInGridView")}];
  photoGridTapbackPileDelegate = [(CKMediaObjectTapbackUserData *)self photoGridTapbackPileDelegate];
  [v4 setPhotoGridTapbackPileDelegate:photoGridTapbackPileDelegate];

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