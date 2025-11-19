@interface CAMCameraReviewAdapter
+ (id)reviewAssetForAVAsset:(id)a3 audioMix:(id)a4 properties:(id)a5;
+ (id)reviewAssetForLivePhoto:(id)a3 withProperties:(id)a4;
+ (id)reviewAssetForPhoto:(id)a3 withProperties:(id)a4;
- (CAMCameraReviewAdapter)init;
- (CAMCameraReviewViewController)cameraReviewViewController;
- (void)cameraViewController:(id)a3 didCaptureAVAsset:(id)a4 andAudioMix:(id)a5 withProperties:(id)a6 error:(id)a7;
- (void)cameraViewController:(id)a3 didCaptureLivePhoto:(id)a4 withProperties:(id)a5 error:(id)a6;
- (void)cameraViewController:(id)a3 didCapturePhoto:(id)a4 withProperties:(id)a5 error:(id)a6;
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
  v3 = [(CAMCameraReviewAdapter *)self _cachedReviewViewController];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = [(CAMCameraReviewAdapter *)self _pendingAssetsForReview];
    v6 = [v5 copy];
    v7 = [objc_opt_class() cameraReviewViewControllerClass];
    if ([(objc_class *)v7 conformsToProtocol:&unk_1F173D588])
    {
      v8 = v7;
    }

    else
    {
      v8 = CAMReviewViewController;
    }

    v9 = [[v8 alloc] initWithAssets:v6];
    [v5 removeAllObjects];
    [(CAMCameraReviewAdapter *)self _setCachedReviewViewController:v9];
    v4 = v9;
  }

  return v4;
}

+ (id)reviewAssetForPhoto:(id)a3 withProperties:(id)a4
{
  v5 = a4;
  v6 = a3;
  CAMSignpostWithIDAndArgs(25, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
  v7 = [v5 objectForKeyedSubscript:@"CAMCameraViewControllerCaptureMode"];
  v8 = [v7 unsignedIntegerValue];

  v25 = v8 == 3;
  v9 = [v5 objectForKeyedSubscript:@"CAMCameraViewControllerPixelWidth"];
  v24 = [v9 unsignedIntegerValue];

  v10 = [v5 objectForKeyedSubscript:@"CAMCameraViewControllerPixelHeight"];
  v23 = [v10 unsignedIntegerValue];

  v11 = [v5 objectForKeyedSubscript:@"CAMCameraViewControllerCaptureDate"];
  v12 = [v5 objectForKeyedSubscript:@"CAMCameraViewControllerBurstIdentifier"];
  v13 = [v5 objectForKeyedSubscript:@"CAMCameraViewControllerBurstRepresentedCount"];
  v14 = [v13 unsignedIntegerValue];

  v15 = [v5 objectForKeyedSubscript:@"CAMCameraViewControllerPhotoURL"];
  v16 = [v5 objectForKeyedSubscript:@"CAMCameraViewControllerUnadjustedPhotoURL"];
  v17 = [v5 objectForKeyedSubscript:@"CAMCameraViewControllerAdjustments"];
  v18 = [v5 objectForKeyedSubscript:@"CAMCameraViewControllerUniquePersistenceIdentifier"];
  v19 = [v5 objectForKeyedSubscript:@"CAMCameraViewControllerPhotoMetadata"];

  v20 = [v19 mutableCopy];
  [v20 setObject:0 forKeyedSubscript:@"{Diagnostic}"];
  v21 = [objc_alloc(MEMORY[0x1E69C4978]) initWithPhoto:v6 mediaSubtypes:v25 width:v24 height:v23 captureDate:v11 metadata:v20 burstIdentifier:v12 representedCount:v14 fullsizeImageURL:v15 fullsizeUnadjustedImageURL:v16 assetAdjustments:v17 identifier:v18];

  CAMSignpostWithIDAndArgs(26, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);

  return v21;
}

+ (id)reviewAssetForLivePhoto:(id)a3 withProperties:(id)a4
{
  v5 = a4;
  v6 = a3;
  CAMSignpostWithIDAndArgs(25, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
  v7 = [v5 objectForKeyedSubscript:@"CAMCameraViewControllerPixelWidth"];
  v23 = [v7 unsignedIntegerValue];

  v8 = [v5 objectForKeyedSubscript:@"CAMCameraViewControllerPixelHeight"];
  v9 = [v8 unsignedIntegerValue];

  v10 = [v5 objectForKeyedSubscript:@"CAMCameraViewControllerCaptureDate"];
  v11 = [v5 objectForKeyedSubscript:@"CAMCameraViewControllerVideoDuration"];
  [v11 doubleValue];
  v13 = v12;

  v14 = [v5 objectForKeyedSubscript:@"CAMCameraViewControllerPreviewImage"];
  v15 = [v5 objectForKeyedSubscript:@"CAMCameraViewControllerUniquePersistenceIdentifier"];
  v16 = [v5 objectForKeyedSubscript:@"CAMCameraViewControllerUnadjustedPhotoURL"];
  v17 = [v5 objectForKeyedSubscript:@"CAMCameraViewControllerUnadjustedVideoURL"];
  v18 = [v5 objectForKeyedSubscript:@"CAMCameraViewControllerAdjustments"];
  v19 = [v5 objectForKeyedSubscript:@"CAMCameraViewControllerPhotoMetadata"];

  v20 = [v19 mutableCopy];
  [v20 setObject:0 forKeyedSubscript:@"{Diagnostic}"];
  v21 = [objc_alloc(MEMORY[0x1E69C4978]) initWithLivePhoto:v6 fullsizeUnadjustedImageURL:v16 fullsizeUnadjustedVideoURL:v17 assetAdjustments:v18 width:v23 height:v9 captureDate:v13 metadata:v10 duration:v20 previewImage:v14 identifier:v15];

  CAMSignpostWithIDAndArgs(26, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);

  return v21;
}

+ (id)reviewAssetForAVAsset:(id)a3 audioMix:(id)a4 properties:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  CAMSignpostWithIDAndArgs(25, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
  v10 = [v7 objectForKeyedSubscript:@"CAMCameraViewControllerPixelWidth"];
  v24 = [v10 unsignedIntegerValue];

  v11 = [v7 objectForKeyedSubscript:@"CAMCameraViewControllerPixelHeight"];
  v12 = [v11 unsignedIntegerValue];

  v13 = [v7 objectForKeyedSubscript:@"CAMCameraViewControllerCaptureDate"];
  v14 = [v7 objectForKeyedSubscript:@"CAMCameraViewControllerVideoDuration"];
  [v14 doubleValue];
  v16 = v15;

  v17 = [v7 objectForKeyedSubscript:@"CAMCameraViewControllerPreviewImage"];
  v18 = [v7 objectForKeyedSubscript:@"CAMCameraViewControllerVideoURL"];
  v19 = [v7 objectForKeyedSubscript:@"CAMCameraViewControllerUnadjustedVideoURL"];
  v20 = [v7 objectForKeyedSubscript:@"CAMCameraViewControllerAdjustments"];
  v21 = [v7 objectForKeyedSubscript:@"CAMCameraViewControllerUniquePersistenceIdentifier"];

  v22 = [objc_alloc(MEMORY[0x1E69C4978]) initWithAVAsset:v9 audioMix:v8 width:v24 height:v12 captureDate:v13 duration:v17 previewImage:v16 videoURL:v18 unadjustedVideoURL:v19 adjustments:v20 identifier:v21];
  CAMSignpostWithIDAndArgs(26, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);

  return v22;
}

- (void)cameraViewController:(id)a3 didCapturePhoto:(id)a4 withProperties:(id)a5 error:(id)a6
{
  if (!a6)
  {
    v9 = a5;
    v10 = a4;
    v12 = [objc_opt_class() reviewAssetForPhoto:v10 withProperties:v9];

    v11 = [(CAMCameraReviewAdapter *)self _pendingAssetsForReview];
    [v11 addObject:v12];
    [(CAMCameraReviewAdapter *)self _setCachedReviewViewController:0];
  }
}

- (void)cameraViewController:(id)a3 didCaptureLivePhoto:(id)a4 withProperties:(id)a5 error:(id)a6
{
  if (!a6)
  {
    v9 = a5;
    v10 = a4;
    v12 = [objc_opt_class() reviewAssetForLivePhoto:v10 withProperties:v9];

    v11 = [(CAMCameraReviewAdapter *)self _pendingAssetsForReview];
    [v11 addObject:v12];
    [(CAMCameraReviewAdapter *)self _setCachedReviewViewController:0];
  }
}

- (void)cameraViewController:(id)a3 didCaptureAVAsset:(id)a4 andAudioMix:(id)a5 withProperties:(id)a6 error:(id)a7
{
  if (!a7)
  {
    v11 = a6;
    v12 = a5;
    v13 = a4;
    v15 = [objc_opt_class() reviewAssetForAVAsset:v13 audioMix:v12 properties:v11];

    v14 = [(CAMCameraReviewAdapter *)self _pendingAssetsForReview];
    [v14 addObject:v15];
    [(CAMCameraReviewAdapter *)self _setCachedReviewViewController:0];
  }
}

@end