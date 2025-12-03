@interface COSWatchFaceResolutionResult
+ (id)confirmationRequiredWithWatchFaceToConfirm:(id)confirm;
+ (id)disambiguationWithWatchFacesToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedWatchFace:(id)face;
@end

@implementation COSWatchFaceResolutionResult

+ (id)successWithResolvedWatchFace:(id)face
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___COSWatchFaceResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "successWithResolvedObject:", face);

  return v3;
}

+ (id)disambiguationWithWatchFacesToDisambiguate:(id)disambiguate
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___COSWatchFaceResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "disambiguationWithObjectsToDisambiguate:", disambiguate);

  return v3;
}

+ (id)confirmationRequiredWithWatchFaceToConfirm:(id)confirm
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___COSWatchFaceResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "confirmationRequiredWithObjectToConfirm:", confirm);

  return v3;
}

@end