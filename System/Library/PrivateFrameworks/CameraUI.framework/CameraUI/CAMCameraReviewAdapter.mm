@interface CAMCameraReviewAdapter
+ (id)reviewAssetForAVAsset:(id)asset audioMix:(id)mix properties:(id)properties;
+ (id)reviewAssetForLivePhoto:(id)photo withProperties:(id)properties;
+ (id)reviewAssetForPhoto:(id)photo withProperties:(id)properties;
- (CAMCameraReviewAdapter)init;
- (CAMCameraReviewViewController)cameraReviewViewController;
- (void)cameraViewController:(id)controller didCaptureAVAsset:(id)asset andAudioMix:(id)mix withProperties:(id)properties error:(id)error;
- (void)cameraViewController:(id)controller didCaptureLivePhoto:(id)photo withProperties:(id)properties error:(id)error;
- (void)cameraViewController:(id)controller didCapturePhoto:(id)photo withProperties:(id)properties error:(id)error;
@end

@implementation CAMCameraReviewAdapter

- (CAMCameraReviewAdapter)init
{
  v7.receiver = self;
  v7.super_class = CAMCameraReviewAdapter;
  v2 = [(CAMCameraReviewAdapter *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingAssetsForReview = v2->__pendingAssetsForReview;
    v2->__pendingAssetsForReview = v3;

    v5 = v2;
  }

  return v2;
}

- (CAMCameraReviewViewController)cameraReviewViewController
{
  _cachedReviewViewController = [(CAMCameraReviewAdapter *)self _cachedReviewViewController];
  if (_cachedReviewViewController)
  {
    v4 = _cachedReviewViewController;
  }

  else
  {
    _pendingAssetsForReview = [(CAMCameraReviewAdapter *)self _pendingAssetsForReview];
    v6 = [_pendingAssetsForReview copy];
    cameraReviewViewControllerClass = [objc_opt_class() cameraReviewViewControllerClass];
    if ([(objc_class *)cameraReviewViewControllerClass conformsToProtocol:&unk_1F173D588])
    {
      v8 = cameraReviewViewControllerClass;
    }

    else
    {
      v8 = CAMReviewViewController;
    }

    v9 = [[v8 alloc] initWithAssets:v6];
    [_pendingAssetsForReview removeAllObjects];
    [(CAMCameraReviewAdapter *)self _setCachedReviewViewController:v9];
    v4 = v9;
  }

  return v4;
}

+ (id)reviewAssetForPhoto:(id)photo withProperties:(id)properties
{
  propertiesCopy = properties;
  photoCopy = photo;
  CAMSignpostWithIDAndArgs(25, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
  v7 = [propertiesCopy objectForKeyedSubscript:@"CAMCameraViewControllerCaptureMode"];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  v25 = unsignedIntegerValue == 3;
  v9 = [propertiesCopy objectForKeyedSubscript:@"CAMCameraViewControllerPixelWidth"];
  unsignedIntegerValue2 = [v9 unsignedIntegerValue];

  v10 = [propertiesCopy objectForKeyedSubscript:@"CAMCameraViewControllerPixelHeight"];
  unsignedIntegerValue3 = [v10 unsignedIntegerValue];

  v11 = [propertiesCopy objectForKeyedSubscript:@"CAMCameraViewControllerCaptureDate"];
  v12 = [propertiesCopy objectForKeyedSubscript:@"CAMCameraViewControllerBurstIdentifier"];
  v13 = [propertiesCopy objectForKeyedSubscript:@"CAMCameraViewControllerBurstRepresentedCount"];
  unsignedIntegerValue4 = [v13 unsignedIntegerValue];

  v15 = [propertiesCopy objectForKeyedSubscript:@"CAMCameraViewControllerPhotoURL"];
  v16 = [propertiesCopy objectForKeyedSubscript:@"CAMCameraViewControllerUnadjustedPhotoURL"];
  v17 = [propertiesCopy objectForKeyedSubscript:@"CAMCameraViewControllerAdjustments"];
  v18 = [propertiesCopy objectForKeyedSubscript:@"CAMCameraViewControllerUniquePersistenceIdentifier"];
  v19 = [propertiesCopy objectForKeyedSubscript:@"CAMCameraViewControllerPhotoMetadata"];

  v20 = [v19 mutableCopy];
  [v20 setObject:0 forKeyedSubscript:@"{Diagnostic}"];
  v21 = [objc_alloc(MEMORY[0x1E69C4978]) initWithPhoto:photoCopy mediaSubtypes:v25 width:unsignedIntegerValue2 height:unsignedIntegerValue3 captureDate:v11 metadata:v20 burstIdentifier:v12 representedCount:unsignedIntegerValue4 fullsizeImageURL:v15 fullsizeUnadjustedImageURL:v16 assetAdjustments:v17 identifier:v18];

  CAMSignpostWithIDAndArgs(26, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);

  return v21;
}

+ (id)reviewAssetForLivePhoto:(id)photo withProperties:(id)properties
{
  propertiesCopy = properties;
  photoCopy = photo;
  CAMSignpostWithIDAndArgs(25, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
  v7 = [propertiesCopy objectForKeyedSubscript:@"CAMCameraViewControllerPixelWidth"];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  v8 = [propertiesCopy objectForKeyedSubscript:@"CAMCameraViewControllerPixelHeight"];
  unsignedIntegerValue2 = [v8 unsignedIntegerValue];

  v10 = [propertiesCopy objectForKeyedSubscript:@"CAMCameraViewControllerCaptureDate"];
  v11 = [propertiesCopy objectForKeyedSubscript:@"CAMCameraViewControllerVideoDuration"];
  [v11 doubleValue];
  v13 = v12;

  v14 = [propertiesCopy objectForKeyedSubscript:@"CAMCameraViewControllerPreviewImage"];
  v15 = [propertiesCopy objectForKeyedSubscript:@"CAMCameraViewControllerUniquePersistenceIdentifier"];
  v16 = [propertiesCopy objectForKeyedSubscript:@"CAMCameraViewControllerUnadjustedPhotoURL"];
  v17 = [propertiesCopy objectForKeyedSubscript:@"CAMCameraViewControllerUnadjustedVideoURL"];
  v18 = [propertiesCopy objectForKeyedSubscript:@"CAMCameraViewControllerAdjustments"];
  v19 = [propertiesCopy objectForKeyedSubscript:@"CAMCameraViewControllerPhotoMetadata"];

  v20 = [v19 mutableCopy];
  [v20 setObject:0 forKeyedSubscript:@"{Diagnostic}"];
  v21 = [objc_alloc(MEMORY[0x1E69C4978]) initWithLivePhoto:photoCopy fullsizeUnadjustedImageURL:v16 fullsizeUnadjustedVideoURL:v17 assetAdjustments:v18 width:unsignedIntegerValue height:unsignedIntegerValue2 captureDate:v13 metadata:v10 duration:v20 previewImage:v14 identifier:v15];

  CAMSignpostWithIDAndArgs(26, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);

  return v21;
}

+ (id)reviewAssetForAVAsset:(id)asset audioMix:(id)mix properties:(id)properties
{
  propertiesCopy = properties;
  mixCopy = mix;
  assetCopy = asset;
  CAMSignpostWithIDAndArgs(25, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
  v10 = [propertiesCopy objectForKeyedSubscript:@"CAMCameraViewControllerPixelWidth"];
  unsignedIntegerValue = [v10 unsignedIntegerValue];

  v11 = [propertiesCopy objectForKeyedSubscript:@"CAMCameraViewControllerPixelHeight"];
  unsignedIntegerValue2 = [v11 unsignedIntegerValue];

  v13 = [propertiesCopy objectForKeyedSubscript:@"CAMCameraViewControllerCaptureDate"];
  v14 = [propertiesCopy objectForKeyedSubscript:@"CAMCameraViewControllerVideoDuration"];
  [v14 doubleValue];
  v16 = v15;

  v17 = [propertiesCopy objectForKeyedSubscript:@"CAMCameraViewControllerPreviewImage"];
  v18 = [propertiesCopy objectForKeyedSubscript:@"CAMCameraViewControllerVideoURL"];
  v19 = [propertiesCopy objectForKeyedSubscript:@"CAMCameraViewControllerUnadjustedVideoURL"];
  v20 = [propertiesCopy objectForKeyedSubscript:@"CAMCameraViewControllerAdjustments"];
  v21 = [propertiesCopy objectForKeyedSubscript:@"CAMCameraViewControllerUniquePersistenceIdentifier"];

  v22 = [objc_alloc(MEMORY[0x1E69C4978]) initWithAVAsset:assetCopy audioMix:mixCopy width:unsignedIntegerValue height:unsignedIntegerValue2 captureDate:v13 duration:v17 previewImage:v16 videoURL:v18 unadjustedVideoURL:v19 adjustments:v20 identifier:v21];
  CAMSignpostWithIDAndArgs(26, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);

  return v22;
}

- (void)cameraViewController:(id)controller didCapturePhoto:(id)photo withProperties:(id)properties error:(id)error
{
  if (!error)
  {
    propertiesCopy = properties;
    photoCopy = photo;
    v12 = [objc_opt_class() reviewAssetForPhoto:photoCopy withProperties:propertiesCopy];

    _pendingAssetsForReview = [(CAMCameraReviewAdapter *)self _pendingAssetsForReview];
    [_pendingAssetsForReview addObject:v12];
    [(CAMCameraReviewAdapter *)self _setCachedReviewViewController:0];
  }
}

- (void)cameraViewController:(id)controller didCaptureLivePhoto:(id)photo withProperties:(id)properties error:(id)error
{
  if (!error)
  {
    propertiesCopy = properties;
    photoCopy = photo;
    v12 = [objc_opt_class() reviewAssetForLivePhoto:photoCopy withProperties:propertiesCopy];

    _pendingAssetsForReview = [(CAMCameraReviewAdapter *)self _pendingAssetsForReview];
    [_pendingAssetsForReview addObject:v12];
    [(CAMCameraReviewAdapter *)self _setCachedReviewViewController:0];
  }
}

- (void)cameraViewController:(id)controller didCaptureAVAsset:(id)asset andAudioMix:(id)mix withProperties:(id)properties error:(id)error
{
  if (!error)
  {
    propertiesCopy = properties;
    mixCopy = mix;
    assetCopy = asset;
    v15 = [objc_opt_class() reviewAssetForAVAsset:assetCopy audioMix:mixCopy properties:propertiesCopy];

    _pendingAssetsForReview = [(CAMCameraReviewAdapter *)self _pendingAssetsForReview];
    [_pendingAssetsForReview addObject:v15];
    [(CAMCameraReviewAdapter *)self _setCachedReviewViewController:0];
  }
}

@end