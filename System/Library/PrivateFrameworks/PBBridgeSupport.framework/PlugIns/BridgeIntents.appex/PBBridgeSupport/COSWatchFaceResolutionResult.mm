@interface COSWatchFaceResolutionResult
+ (id)confirmationRequiredWithWatchFaceToConfirm:(id)a3;
+ (id)disambiguationWithWatchFacesToDisambiguate:(id)a3;
+ (id)successWithResolvedWatchFace:(id)a3;
@end

@implementation COSWatchFaceResolutionResult

+ (id)successWithResolvedWatchFace:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___COSWatchFaceResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "successWithResolvedObject:", a3);

  return v3;
}

+ (id)disambiguationWithWatchFacesToDisambiguate:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___COSWatchFaceResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "disambiguationWithObjectsToDisambiguate:", a3);

  return v3;
}

+ (id)confirmationRequiredWithWatchFaceToConfirm:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___COSWatchFaceResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "confirmationRequiredWithObjectToConfirm:", a3);

  return v3;
}

@end