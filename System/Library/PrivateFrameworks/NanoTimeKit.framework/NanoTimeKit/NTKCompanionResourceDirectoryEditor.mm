@interface NTKCompanionResourceDirectoryEditor
+ (BOOL)_transcodeIrisVideoOf:(id)of forPhoto:(id)photo withCrop:(CGRect)crop into:(id)into previewOnly:(BOOL)only;
+ (BOOL)_transcodeStillImageOf:(id)of forPhoto:(id)photo withCrop:(CGRect)crop into:(id)into;
+ (CGSize)_watchPhotoImageSize;
+ (CGSize)_watchPhotoVideoSize;
+ (id)_createResourceDirectoryWithAsset:(id)asset assetCollection:(id)collection forDevice:(id)device previewOnly:(BOOL)only;
+ (id)_cropAndScaleUIImage:(id)image cropRect:(CGRect)rect outputSize:(CGSize)size;
+ (id)_linkPhoto:(id)photo to:(id)to previewOnly:(BOOL)only;
+ (id)_scaleImage:(id)image toLongestEdgeInPixels:(double)pixels;
+ (id)_subsampledImageWithData:(id)data orientation:(int64_t)orientation subsampleFactor:(unint64_t)factor;
+ (id)_transcodeAsset:(id)asset withCrop:(CGRect)crop into:(id)into previewOnly:(BOOL)only;
+ (id)_videoAssetOf:(id)of;
+ (id)_writeAsset:(id)asset image:(id)image withImageCrop:(CGRect)crop to:(id)to;
+ (unint64_t)_subsampleFactorForScale:(double)scale;
+ (void)_imageDataForAsset:(id)asset completion:(id)completion;
+ (void)_imageForAsset:(id)asset forSize:(CGSize)size completion:(id)completion;
- (NTKCompanionResourceDirectoryEditor)initWithResourceDirectory:(id)directory forDevice:(id)device;
- (void)_deleteResourceDirectoryHardLinkIfNecessary;
- (void)dealloc;
- (void)finalizeWithCompletion:(id)completion;
- (void)finalizeWithProgress:(id)progress completion:(id)completion;
- (void)generateGalleryPreviewResourceDirectoryWithCompletion:(id)completion;
- (void)setResourceDirectory:(id)directory;
@end

@implementation NTKCompanionResourceDirectoryEditor

- (NTKCompanionResourceDirectoryEditor)initWithResourceDirectory:(id)directory forDevice:(id)device
{
  directoryCopy = directory;
  deviceCopy = device;
  v15.receiver = self;
  v15.super_class = NTKCompanionResourceDirectoryEditor;
  v8 = [(NTKCompanionResourceDirectoryEditor *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_device, device);
    if (directoryCopy)
    {
      v10 = NTKNewUniqueTeporaryResourceDirectory();
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      [defaultManager linkItemAtPath:directoryCopy toPath:v10 error:0];

      resourceDirectory = v9->_resourceDirectory;
      v9->_resourceDirectory = v10;

      v9->_resourceDirectoryIsHardLink = 1;
    }

    galleryPreviewResourceDirectory = v9->_galleryPreviewResourceDirectory;
    v9->_galleryPreviewResourceDirectory = 0;

    v9->_state = 0;
  }

  return v9;
}

- (void)dealloc
{
  [(NTKCompanionResourceDirectoryEditor *)self _deleteResourceDirectoryHardLinkIfNecessary];
  v3.receiver = self;
  v3.super_class = NTKCompanionResourceDirectoryEditor;
  [(NTKCompanionResourceDirectoryEditor *)&v3 dealloc];
}

- (void)setResourceDirectory:(id)directory
{
  directoryCopy = directory;
  if (self->_resourceDirectoryIsHardLink || (NTKEqualStrings(directoryCopy, self->_resourceDirectory) & 1) == 0)
  {
    [(NTKCompanionResourceDirectoryEditor *)self _deleteResourceDirectoryHardLinkIfNecessary];
    objc_storeStrong(&self->_resourceDirectory, directory);
  }
}

- (void)_deleteResourceDirectoryHardLinkIfNecessary
{
  if (self->_resourceDirectoryIsHardLink)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager removeItemAtPath:self->_resourceDirectory error:0];

    resourceDirectory = self->_resourceDirectory;
    self->_resourceDirectory = 0;

    self->_resourceDirectoryIsHardLink = 0;
  }
}

- (void)generateGalleryPreviewResourceDirectoryWithCompletion:(id)completion
{
  completionCopy = completion;
  self->_state = 3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __93__NTKCompanionResourceDirectoryEditor_generateGalleryPreviewResourceDirectoryWithCompletion___block_invoke;
  v6[3] = &unk_27877FF60;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __93__NTKCompanionResourceDirectoryEditor_generateGalleryPreviewResourceDirectoryWithCompletion___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 32) = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)finalizeWithCompletion:(id)completion
{
  completionCopy = completion;
  self->_state = 4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__NTKCompanionResourceDirectoryEditor_finalizeWithCompletion___block_invoke;
  v6[3] = &unk_27877FF60;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)finalizeWithProgress:(id)progress completion:(id)completion
{
  progressCopy = progress;
  completionCopy = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__NTKCompanionResourceDirectoryEditor_finalizeWithProgress_completion___block_invoke;
  block[3] = &unk_278784548;
  block[4] = self;
  v11 = progressCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = progressCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __71__NTKCompanionResourceDirectoryEditor_finalizeWithProgress_completion___block_invoke(void *a1)
{
  *(a1[4] + 32) = 0;
  (*(a1[5] + 16))(0.0);
  v2 = *(a1[6] + 16);

  return v2();
}

+ (id)_linkPhoto:(id)photo to:(id)to previewOnly:(BOOL)only
{
  onlyCopy = only;
  v23 = *MEMORY[0x277D85DE8];
  photoCopy = photo;
  toCopy = to;
  v9 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    imageURL = [photoCopy imageURL];
    v11 = imageURL;
    v12 = "NO";
    if (onlyCopy)
    {
      v12 = "YES";
    }

    v19 = 138412546;
    v20 = imageURL;
    v21 = 2080;
    v22 = v12;
    _os_log_impl(&dword_22D9C5000, v9, OS_LOG_TYPE_DEFAULT, "_linkPhoto: linking existing photo %@ into the new resource directory; preview == %s", &v19, 0x16u);
  }

  v13 = [photoCopy copy];
  imageURL2 = [photoCopy imageURL];
  v15 = NTKPhotosLinkURL(imageURL2, toCopy);

  if (!v15)
  {
    v16 = 0;
    goto LABEL_13;
  }

  [v13 setImageURL:v15];
  if (onlyCopy)
  {
    [v13 setIsIris:0];
    [v13 setIrisVideoURL:0];
    [v13 setIrisDuration:0.0];
    [v13 setIrisStillDisplayTime:0.0];
  }

  else if ([photoCopy isIris])
  {
    irisVideoURL = [photoCopy irisVideoURL];
    v16 = NTKPhotosLinkURL(irisVideoURL, toCopy);

    if (!v16)
    {
      goto LABEL_13;
    }

    [v13 setIrisVideoURL:v16];
  }

  v16 = v13;
LABEL_13:

  return v16;
}

+ (id)_transcodeAsset:(id)asset withCrop:(CGRect)crop into:(id)into previewOnly:(BOOL)only
{
  onlyCopy = only;
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  v32 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  intoCopy = into;
  v15 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    localIdentifier = [assetCopy localIdentifier];
    v17 = localIdentifier;
    v18 = "NO";
    if (onlyCopy)
    {
      v18 = "YES";
    }

    v28 = 138412546;
    v29 = localIdentifier;
    v30 = 2080;
    v31 = v18;
    _os_log_impl(&dword_22D9C5000, v15, OS_LOG_TYPE_DEFAULT, "_transcodeAsset: transcoding new asset %@ into the new resource directory; preview == %s", &v28, 0x16u);
  }

  v19 = objc_opt_new();
  localIdentifier2 = [assetCopy localIdentifier];
  [v19 setLocalIdentifier:localIdentifier2];

  modificationDate = [assetCopy modificationDate];
  [v19 setModificationDate:modificationDate];

  [v19 setOriginalCrop:{x, y, width, height}];
  v22 = x / [assetCopy pixelWidth];
  v23 = y / [assetCopy pixelHeight];
  v24 = width / [assetCopy pixelWidth];
  v25 = height / [assetCopy pixelHeight];
  if ([self _transcodeStillImageOf:assetCopy forPhoto:v19 withCrop:intoCopy into:{v22, v23, v24, v25}] && objc_msgSend(self, "_transcodeIrisVideoOf:forPhoto:withCrop:into:previewOnly:", assetCopy, v19, intoCopy, onlyCopy, v22, v23, v24, v25))
  {
    v26 = v19;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

+ (BOOL)_transcodeStillImageOf:(id)of forPhoto:(id)photo withCrop:(CGRect)crop into:(id)into
{
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  ofCopy = of;
  photoCopy = photo;
  intoCopy = into;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__39;
  v53 = __Block_byref_object_dispose__39;
  v54 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v16 = dispatch_semaphore_create(0);
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __85__NTKCompanionResourceDirectoryEditor__transcodeStillImageOf_forPhoto_withCrop_into___block_invoke;
  v41[3] = &unk_278784570;
  v43 = &v49;
  v44 = &v45;
  v17 = v16;
  v42 = v17;
  [self _imageDataForAsset:ofCopy completion:v41];
  dispatch_semaphore_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
  if (v50[5])
  {
    pixelWidth = [ofCopy pixelWidth];
    pixelHeight = [ofCopy pixelHeight];
    CGAffineTransformMakeScale(&v40, [ofCopy pixelWidth], objc_msgSend(ofCopy, "pixelHeight"));
    v59.origin.x = x;
    v59.origin.y = y;
    v59.size.width = width;
    v59.size.height = height;
    v60 = CGRectApplyAffineTransform(v59, &v40);
    v20 = v60.origin.x;
    v21 = v60.origin.y;
    v22 = v60.size.width;
    v23 = v60.size.height;
    [self _watchPhotoImageSize];
    v25 = v24;
    v27 = v26;
    v28 = [NTKCompanionImageDataScaler alloc];
    v29 = [(NTKCompanionImageDataScaler *)v28 initWithSize:v50[5] crop:v46[3] data:pixelWidth orientation:pixelHeight outputSize:v20, v21, v22, v23, v25, v27];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __85__NTKCompanionResourceDirectoryEditor__transcodeStillImageOf_forPhoto_withCrop_into___block_invoke_2;
    v33[3] = &unk_2787845C0;
    v30 = v17;
    v34 = v30;
    v35 = photoCopy;
    v38 = v25;
    v39 = v27;
    v36 = intoCopy;
    v37 = &v55;
    [(NTKCompanionImageDataScaler *)v29 cropAndScaleWithCompletion:v33];
    dispatch_semaphore_wait(v30, 0xFFFFFFFFFFFFFFFFLL);
    v31 = *(v56 + 24);
  }

  else
  {
    v31 = *(v56 + 24);
  }

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v49, 8);

  _Block_object_dispose(&v55, 8);
  return v31 & 1;
}

void __85__NTKCompanionResourceDirectoryEditor__transcodeStillImageOf_forPhoto_withCrop_into___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v6 = a2;
  *(*(*(a1 + 48) + 8) + 24) = a3;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __85__NTKCompanionResourceDirectoryEditor__transcodeStillImageOf_forPhoto_withCrop_into___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [*(a1 + 40) irisVideoURL];

    v6 = MEMORY[0x277CCACA8];
    if (v5)
    {
      v7 = [*(a1 + 40) irisVideoURL];
      v8 = [v6 stringWithUTF8String:{objc_msgSend(v7, "fileSystemRepresentation")}];
      v9 = [v8 lastPathComponent];

      v6 = MEMORY[0x277CCACA8];
      v10 = [v9 stringByDeletingPathExtension];
      v11 = v10;
    }

    else
    {
      v11 = [MEMORY[0x277CCAD78] UUID];
      v10 = [v11 UUIDString];
      v9 = v10;
    }

    v12 = [v6 stringWithFormat:@"%@.jpg", v10];

    v13 = [*(a1 + 48) stringByAppendingPathComponent:v12];
    v30 = 0;
    [v3 writeToFile:v13 options:0 error:&v30];
    v14 = v30;
    if (v14)
    {
      v15 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __85__NTKCompanionResourceDirectoryEditor__transcodeStillImageOf_forPhoto_withCrop_into___block_invoke_2_cold_1(v12, v14, v15);
      }
    }

    else
    {
      v23 = v12;
      v24 = v4;
      v16 = [MEMORY[0x277CBEBC0] fileURLWithPath:v13];
      [*(a1 + 40) setImageURL:v16];

      [*(a1 + 40) setCrop:{0.0, 0.0, *(a1 + 64), *(a1 + 72)}];
      v25 = v3;
      v17 = [MEMORY[0x277D755B8] imageWithData:v3 scale:1.0];
      v18 = 0;
      v19 = MEMORY[0x277D85DD0];
      v20 = 1;
      do
      {
        v21 = v20;
        v22 = MEMORY[0x277CBBAE8];
        v26[0] = v19;
        v26[1] = 3221225472;
        v26[2] = __85__NTKCompanionResourceDirectoryEditor__transcodeStillImageOf_forPhoto_withCrop_into___block_invoke_3;
        v26[3] = &unk_278784598;
        v27 = *(a1 + 40);
        v29 = v18;
        v15 = v17;
        v28 = v15;
        [v22 enumerateSizeClasses:v26];

        v20 = 0;
        v18 = 1;
      }

      while ((v21 & 1) != 0);
      *(*(*(a1 + 56) + 8) + 24) = 1;
      v4 = v24;
      v3 = v25;
      v12 = v23;
      v14 = 0;
    }

    objc_autoreleasePoolPop(v4);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __85__NTKCompanionResourceDirectoryEditor__transcodeStillImageOf_forPhoto_withCrop_into___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) analysisForAlignment:*(a1 + 48) deviceSizeClass:a2];

  if (!v4)
  {
    v5 = *(a1 + 32);
    v6 = [NTKPhotoAnalysis analysisWithImage:*(a1 + 40) alignment:*(a1 + 48) deviceSizeClass:a2];
    [v5 setAnalysis:v6 alignment:*(a1 + 48) deviceSizeClass:a2];
  }
}

+ (id)_createResourceDirectoryWithAsset:(id)asset assetCollection:(id)collection forDevice:(id)device previewOnly:(BOOL)only
{
  onlyCopy = only;
  assetCopy = asset;
  collectionCopy = collection;
  deviceCopy = device;
  if (!(assetCopy | collectionCopy))
  {
    v13 = 0;
    goto LABEL_15;
  }

  v14 = NTKPhotosCreateResourceDirectory();
  if (v14)
  {
    if (assetCopy)
    {
      NTKPhotosDefaultCropForAsset(assetCopy, deviceCopy);
      v13 = [self _transcodeAsset:assetCopy withCrop:v14 into:onlyCopy previewOnly:?];
      if (!v13)
      {
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        [defaultManager removeItemAtPath:v14 error:0];
LABEL_13:

        goto LABEL_14;
      }

      defaultManager = objc_opt_new();
      encodeAsDictionary = [v13 encodeAsDictionary];
      [defaultManager addObject:encodeAsDictionary];
    }

    else
    {
      defaultManager = objc_opt_new();
    }

    if (NTKPhotosWriteImageListForAssetCollection(defaultManager, collectionCopy, v14))
    {
      v13 = v14;
    }

    else
    {
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      [defaultManager2 removeItemAtPath:v14 error:0];

      v13 = 0;
    }

    goto LABEL_13;
  }

  v13 = 0;
LABEL_14:

LABEL_15:

  return v13;
}

+ (BOOL)_transcodeIrisVideoOf:(id)of forPhoto:(id)photo withCrop:(CGRect)crop into:(id)into previewOnly:(BOOL)only
{
  onlyCopy = only;
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  ofCopy = of;
  photoCopy = photo;
  intoCopy = into;
  if (!NTKPhotosIsPHAssetIris(ofCopy) || onlyCopy)
  {
    [photoCopy setIsIris:0];
    [photoCopy setIrisVideoURL:0];
    [photoCopy setIrisDuration:0.0];
    [photoCopy setIrisStillDisplayTime:0.0];
    v26 = 1;
  }

  else
  {
    context = objc_autoreleasePoolPush();
    [photoCopy setIsIris:1];
    imageURL = [photoCopy imageURL];

    if (imageURL)
    {
      v19 = MEMORY[0x277CCACA8];
      imageURL2 = [photoCopy imageURL];
      v21 = [v19 stringWithUTF8String:{objc_msgSend(imageURL2, "fileSystemRepresentation")}];
      lastPathComponent = [v21 lastPathComponent];

      v23 = MEMORY[0x277CCACA8];
      stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
      uUIDString = [v23 stringWithFormat:@"%@.mov", stringByDeletingPathExtension];
    }

    else
    {
      stringByDeletingPathExtension = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [stringByDeletingPathExtension UUIDString];
    }

    v27 = dispatch_semaphore_create(0);
    v54 = 0;
    v55 = &v54;
    v56 = 0x3032000000;
    v57 = __Block_byref_object_copy__39;
    v58 = __Block_byref_object_dispose__39;
    v59 = 0;
    v28 = MEMORY[0x277CBEBC0];
    v29 = [intoCopy stringByAppendingPathComponent:uUIDString];
    v30 = [v28 fileURLWithPath:v29];

    v31 = [NTKCompanionIrisVideoExportSession alloc];
    v32 = [self _videoAssetOf:ofCopy];
    [self _watchPhotoVideoSize];
    v35 = [(NTKCompanionIrisVideoExportSession *)v31 initWithVideo:v32 crop:300000 outputSize:v30 bitrate:x outputURL:y, width, height, v33, v34];

    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __96__NTKCompanionResourceDirectoryEditor__transcodeIrisVideoOf_forPhoto_withCrop_into_previewOnly___block_invoke;
    v48[3] = &unk_2787845E8;
    v36 = v30;
    v49 = v36;
    v37 = v35;
    v50 = v37;
    v53 = &v54;
    v38 = ofCopy;
    v51 = v38;
    v39 = v27;
    v52 = v39;
    [(NTKCompanionIrisVideoExportSession *)v37 exportAsynchronouslyWithCompletion:v48];
    dispatch_semaphore_wait(v39, 0xFFFFFFFFFFFFFFFFLL);
    v40 = v55[5];
    v26 = v40 == 0;
    if (!v40)
    {
      [photoCopy setIrisVideoURL:v36];
      photoIrisProperties = [v38 photoIrisProperties];
      v42 = photoIrisProperties;
      if (photoIrisProperties)
      {
        [photoIrisProperties photoIrisVideoDuration];
      }

      else
      {
        memset(&time, 0, sizeof(time));
      }

      [photoCopy setIrisDuration:CMTimeGetSeconds(&time)];

      photoIrisProperties2 = [v38 photoIrisProperties];
      v44 = photoIrisProperties2;
      if (photoIrisProperties2)
      {
        [photoIrisProperties2 photoIrisStillDisplayTime];
      }

      else
      {
        memset(&time, 0, sizeof(time));
      }

      [photoCopy setIrisStillDisplayTime:CMTimeGetSeconds(&time)];
    }

    _Block_object_dispose(&v54, 8);
    objc_autoreleasePoolPop(context);
  }

  return v26;
}

intptr_t __96__NTKCompanionResourceDirectoryEditor__transcodeIrisVideoOf_forPhoto_withCrop_into_previewOnly___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_22D9C5000, v2, OS_LOG_TYPE_DEFAULT, "transcoded video to %@", &v9, 0xCu);
  }

  if ([*(a1 + 40) status] == 4)
  {
    v4 = [*(a1 + 40) error];
    v5 = *(*(a1 + 64) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __96__NTKCompanionResourceDirectoryEditor__transcodeIrisVideoOf_forPhoto_withCrop_into_previewOnly___block_invoke_cold_1(a1, a1 + 64, v7);
    }
  }

  return dispatch_semaphore_signal(*(a1 + 56));
}

+ (id)_writeAsset:(id)asset image:(id)image withImageCrop:(CGRect)crop to:(id)to
{
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  assetCopy = asset;
  imageCopy = image;
  toCopy = to;
  v15 = MEMORY[0x277CCACA8];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v18 = [v15 stringWithFormat:@"%@.jpg", uUIDString];

  v19 = UIImageJPEGRepresentation(imageCopy, 0.85);
  if (v19)
  {
    v20 = [toCopy stringByAppendingPathComponent:v18];
    v53[0] = 0;
    [v19 writeToFile:v20 options:0 error:v53];
    v21 = v53[0];
    if (v21)
    {
      v22 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [NTKCompanionResourceDirectoryEditor _writeAsset:v18 image:v22 withImageCrop:? to:?];
      }

      v23 = 0;
    }

    else
    {
      v48 = v18;
      v31 = objc_opt_new();
      v47 = v19;
      if (assetCopy)
      {
        localIdentifier = [assetCopy localIdentifier];
        [v31 setLocalIdentifier:localIdentifier];

        [assetCopy modificationDate];
      }

      else
      {
        v33 = MEMORY[0x277CCACA8];
        uUID2 = [MEMORY[0x277CCAD78] UUID];
        [uUID2 UUIDString];
        v36 = v35 = v20;
        v37 = [v33 stringWithFormat:@"Temp-%@", v36];
        [v31 setLocalIdentifier:v37];

        v20 = v35;
        [MEMORY[0x277CBEAA8] distantPast];
      }
      v38 = ;
      [v31 setModificationDate:v38];

      v46 = v20;
      v39 = [MEMORY[0x277CBEBC0] fileURLWithPath:v20];
      [v31 setImageURL:v39];

      [v31 setOriginalCrop:{x, y, width, height}];
      [v31 setCrop:{x, y, width, height}];
      v40 = 0;
      v41 = MEMORY[0x277D85DD0];
      v42 = 1;
      do
      {
        v43 = v42;
        v44 = MEMORY[0x277CBBAE8];
        v49[0] = v41;
        v49[1] = 3221225472;
        v49[2] = __74__NTKCompanionResourceDirectoryEditor__writeAsset_image_withImageCrop_to___block_invoke;
        v49[3] = &unk_278784598;
        v23 = v31;
        v50 = v23;
        v51 = imageCopy;
        v52 = v40;
        [v44 enumerateSizeClasses:v49];

        v42 = 0;
        v40 = 1;
      }

      while ((v43 & 1) != 0);
      v19 = v47;
      v18 = v48;
      v20 = v46;
      v21 = 0;
    }
  }

  else
  {
    v21 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [(NTKCompanionResourceDirectoryEditor *)v21 _writeAsset:v24 image:v25 withImageCrop:v26 to:v27, v28, v29, v30];
    }

    v23 = 0;
  }

  return v23;
}

void __74__NTKCompanionResourceDirectoryEditor__writeAsset_image_withImageCrop_to___block_invoke(void *a1, uint64_t a2)
{
  v4 = a1[4];
  v5 = [NTKPhotoAnalysis analysisWithImage:a1[5] alignment:a1[6] deviceSizeClass:a2];
  [v4 setAnalysis:v5 alignment:a1[6] deviceSizeClass:a2];
}

+ (id)_scaleImage:(id)image toLongestEdgeInPixels:(double)pixels
{
  imageCopy = image;
  v5 = imageCopy;
  if (imageCopy)
  {
    [imageCopy size];
    v20 = v7;
    v21 = v6;
    [v5 scale];
    v9 = v8;
    [v5 scale];
    CGAffineTransformMakeScale(&v24, v9, v10);
    v11 = vmlaq_n_f64(vmulq_n_f64(*&v24.c, v20), *&v24.a, v21);
    v12 = vdivq_f64(vdupq_lane_s64(*&pixels, 0), v11);
    if (v12.f64[0] >= v12.f64[1])
    {
      v12.f64[0] = v12.f64[1];
    }

    if (v12.f64[0] >= 1.0)
    {
      v18 = v5;
    }

    else
    {
      v23 = v11;
      CGAffineTransformMakeScale(&v24, v12.f64[0], v12.f64[0]);
      v13 = vmlaq_n_f64(vmulq_laneq_f64(*&v24.c, v23, 1), *&v24.a, v23.f64[0]);
      v23.f64[0] = v13.width;
      v14 = *MEMORY[0x277CBF348];
      v15 = *(MEMORY[0x277CBF348] + 8);
      height = v13.height;
      v17 = v13.height;
      UIGraphicsBeginImageContextWithOptions(v13, 0, 1.0);
      [v5 drawInRect:{v14, v15, v23.f64[0], height}];
      v18 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)_videoAssetOf:(id)of
{
  v29 = *MEMORY[0x277D85DE8];
  ofCopy = of;
  v4 = objc_alloc_init(MEMORY[0x277CD9A00]);
  [v4 setVersion:0];
  [v4 setDeliveryMode:1];
  [v4 setNetworkAccessAllowed:1];
  [v4 setVideoComplementAllowed:1];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__39;
  v23 = __Block_byref_object_dispose__39;
  v24 = 0;
  v5 = dispatch_semaphore_create(0);
  defaultManager = [MEMORY[0x277CD9898] defaultManager];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __53__NTKCompanionResourceDirectoryEditor__videoAssetOf___block_invoke;
  v16 = &unk_278784610;
  v18 = &v19;
  v7 = v5;
  v17 = v7;
  [defaultManager requestURLForVideo:ofCopy options:v4 resultHandler:&v13];

  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v8 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    localIdentifier = [ofCopy localIdentifier];
    v10 = [v20[5] URL];
    *buf = 138412546;
    v26 = localIdentifier;
    v27 = 2112;
    v28 = v10;
    _os_log_impl(&dword_22D9C5000, v8, OS_LOG_TYPE_DEFAULT, "_videoAssetOf: %@ ==> %@", buf, 0x16u);
  }

  v11 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v11;
}

intptr_t __53__NTKCompanionResourceDirectoryEditor__videoAssetOf___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [MEMORY[0x277CE6650] assetWithURL:a2];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  v6 = *(a1 + 32);

  return dispatch_semaphore_signal(v6);
}

+ (id)_cropAndScaleUIImage:(id)image cropRect:(CGRect)rect outputSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v7 = rect.size.height;
  v8 = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v36 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  v38.width = width;
  v38.height = height;
  UIGraphicsBeginImageContextWithOptions(v38, 0, 1.0);
  if (width / v8 >= height / v7)
  {
    v12 = width / v8;
  }

  else
  {
    v12 = height / v7;
  }

  CGAffineTransformMakeScale(v31, 1.0 / v12, 1.0 / v12);
  v39.origin.x = 0.0;
  v39.origin.y = 0.0;
  v39.size.width = width;
  v39.size.height = height;
  v40 = CGRectApplyAffineTransform(v39, v31);
  v29 = v8;
  v30 = v7;
  v27 = x;
  v28 = y;
  v13 = x + fmax((v8 - v40.size.width) * 0.5, 0.0);
  v14 = y + fmax((v7 - v40.size.height) * 0.5, 0.0);
  [imageCopy size];
  v16 = v15;
  v18 = v17;
  [imageCopy scale];
  v20 = v19;
  [imageCopy scale];
  CGAffineTransformMakeScale(v31, v20, v21);
  v22 = v18 * *&v31[16] + *v31 * v16;
  v23 = v18 * *&v31[24] + *&v31[8] * v16;
  CGAffineTransformMakeScale(v31, v12, v12);
  v41.origin.x = -v13;
  v41.origin.y = -v14;
  v41.size.width = v22;
  v41.size.height = v23;
  v42 = CGRectApplyAffineTransform(v41, v31);
  [imageCopy drawInRect:{v42.origin.x, v42.origin.y, v42.size.width, v42.size.height}];
  v24 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  if (!v24)
  {
    v25 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *v31 = 138413826;
      *&v31[4] = imageCopy;
      *&v31[12] = 2048;
      *&v31[14] = v27;
      *&v31[22] = 2048;
      *&v31[24] = v28;
      *&v31[32] = 2048;
      *&v31[34] = v29;
      *&v31[42] = 2048;
      *&v31[44] = v30;
      v32 = 2048;
      v33 = width;
      v34 = 2048;
      v35 = height;
      _os_log_error_impl(&dword_22D9C5000, v25, OS_LOG_TYPE_ERROR, "Cannot crop and scale image %@, crop { %.2f, %.2f, %.2f, %2.f } to size { %.2f, %.2f }", v31, 0x48u);
    }
  }

  return v24;
}

+ (void)_imageDataForAsset:(id)asset completion:(id)completion
{
  assetCopy = asset;
  completionCopy = completion;
  v7 = dispatch_get_global_queue(25, 0);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__NTKCompanionResourceDirectoryEditor__imageDataForAsset_completion___block_invoke;
  v10[3] = &unk_27877FF60;
  v11 = assetCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = assetCopy;
  dispatch_async(v7, v10);
}

void __69__NTKCompanionResourceDirectoryEditor__imageDataForAsset_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) localIdentifier];
  v3 = objc_alloc_init(MEMORY[0x277CD98A0]);
  [v3 setVersion:0];
  [v3 setDeliveryMode:1];
  [v3 setNetworkAccessAllowed:1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__NTKCompanionResourceDirectoryEditor__imageDataForAsset_completion___block_invoke_2;
  v11[3] = &unk_278784638;
  v4 = v2;
  v12 = v4;
  [v3 setProgressHandler:v11];
  v5 = [MEMORY[0x277CD9898] defaultManager];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__NTKCompanionResourceDirectoryEditor__imageDataForAsset_completion___block_invoke_60;
  v8[3] = &unk_278784660;
  v9 = v4;
  v6 = *(a1 + 32);
  v10 = *(a1 + 40);
  v7 = v4;
  [v5 requestImageDataAndOrientationForAsset:v6 options:v3 resultHandler:v8];
}

void __69__NTKCompanionResourceDirectoryEditor__imageDataForAsset_completion___block_invoke_2(uint64_t a1, void *a2, double a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v10 = 138412802;
      v11 = v8;
      v12 = 2048;
      v13 = a3 * 100.0;
      v14 = 2112;
      v15 = v5;
      _os_log_error_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_ERROR, "Failed to download asset %@, progress: %.0f%%, error: %@", &v10, 0x20u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = 138412546;
    v11 = v9;
    v12 = 2048;
    v13 = a3 * 100.0;
    _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "Downloading asset %@, progress: %.0f%%", &v10, 0x16u);
  }
}

void __69__NTKCompanionResourceDirectoryEditor__imageDataForAsset_completion___block_invoke_60(uint64_t a1, void *a2, uint64_t a3, int a4, void *a5)
{
  v8 = a2;
  v9 = [a5 objectForKeyedSubscript:*MEMORY[0x277CD9BF8]];
  if (v9)
  {
    v10 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __69__NTKCompanionResourceDirectoryEditor__imageDataForAsset_completion___block_invoke_60_cold_1(a1, v9, v10);
    }

    v11 = 0;
  }

  else
  {
    NTKCGImagePropertyOrientationToUIImageOrientation(a4);
    v11 = v8;
  }

  (*(*(a1 + 40) + 16))();
}

+ (void)_imageForAsset:(id)asset forSize:(CGSize)size completion:(id)completion
{
  height = size.height;
  width = size.width;
  assetCopy = asset;
  completionCopy = completion;
  v10 = dispatch_get_global_queue(25, 0);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __73__NTKCompanionResourceDirectoryEditor__imageForAsset_forSize_completion___block_invoke;
  v13[3] = &unk_278782DB8;
  v16 = width;
  v17 = height;
  v14 = assetCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = assetCopy;
  dispatch_async(v10, v13);
}

void __73__NTKCompanionResourceDirectoryEditor__imageForAsset_forSize_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) localIdentifier];
  v3 = objc_alloc_init(MEMORY[0x277CD98A0]);
  [v3 setVersion:0];
  [v3 setDeliveryMode:1];
  [v3 setNetworkAccessAllowed:1];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__NTKCompanionResourceDirectoryEditor__imageForAsset_forSize_completion___block_invoke_2;
  v9[3] = &unk_278784638;
  v10 = v2;
  v4 = v2;
  [v3 setProgressHandler:v9];
  v5 = [MEMORY[0x277CD9898] defaultManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__NTKCompanionResourceDirectoryEditor__imageForAsset_forSize_completion___block_invoke_62;
  v7[3] = &unk_278784688;
  v6 = *(a1 + 32);
  v8 = *(a1 + 40);
  [v5 requestImageForAsset:v6 targetSize:1 contentMode:v3 options:v7 resultHandler:{*(a1 + 48), *(a1 + 56)}];
}

void __73__NTKCompanionResourceDirectoryEditor__imageForAsset_forSize_completion___block_invoke_2(uint64_t a1, void *a2, double a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v10 = 138412802;
      v11 = v8;
      v12 = 2048;
      v13 = a3 * 100.0;
      v14 = 2112;
      v15 = v5;
      _os_log_error_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_ERROR, "Failed to download asset %@, progress: %.0f%%, error: %@", &v10, 0x20u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = 138412546;
    v11 = v9;
    v12 = 2048;
    v13 = a3 * 100.0;
    _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "Downloading asset %@, progress: %.0f%%", &v10, 0x16u);
  }
}

void __73__NTKCompanionResourceDirectoryEditor__imageForAsset_forSize_completion___block_invoke_62(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = [a3 objectForKeyedSubscript:*MEMORY[0x277CD9BF8]];
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = v7;
  }

  (*(*(a1 + 32) + 16))();
}

+ (CGSize)_watchPhotoImageSize
{
  v2 = 384.0;
  v3 = 480.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (CGSize)_watchPhotoVideoSize
{
  v2 = 320.0;
  v3 = 400.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (unint64_t)_subsampleFactorForScale:(double)scale
{
  v3 = 2;
  if (scale > 0.5)
  {
    v3 = 1;
  }

  return v3 << (scale <= 0.25) << (scale <= 0.125);
}

+ (id)_subsampledImageWithData:(id)data orientation:(int64_t)orientation subsampleFactor:(unint64_t)factor
{
  v31[1] = *MEMORY[0x277D85DE8];
  v7 = CGImageSourceCreateWithData(data, 0);
  if (v7)
  {
    v8 = v7;
    v30 = *MEMORY[0x277CD3650];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:factor];
    v31[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];

    ImageAtIndex = CGImageSourceCreateImageAtIndex(v8, 0, v10);
    if (ImageAtIndex)
    {
      v12 = ImageAtIndex;
      v13 = [MEMORY[0x277D755B8] imageWithCGImage:ImageAtIndex scale:orientation orientation:1.0];
      CFRelease(v12);
    }

    else
    {
      v21 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [(NTKCompanionResourceDirectoryEditor *)v21 _subsampledImageWithData:v22 orientation:v23 subsampleFactor:v24, v25, v26, v27, v28];
      }

      v13 = 0;
    }

    CFRelease(v8);
  }

  else
  {
    v10 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(NTKCompanionResourceDirectoryEditor *)v10 _subsampledImageWithData:v14 orientation:v15 subsampleFactor:v16, v17, v18, v19, v20];
    }

    v13 = 0;
  }

  return v13;
}

void __85__NTKCompanionResourceDirectoryEditor__transcodeStillImageOf_forPhoto_withCrop_into___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = a1;
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_2(&dword_22D9C5000, a2, a3, "cannot save transcoded jpeg to %@, error %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

void __96__NTKCompanionResourceDirectoryEditor__transcodeIrisVideoOf_forPhoto_withCrop_into_previewOnly___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [*(a1 + 48) localIdentifier];
  v6 = *(*(*a2 + 8) + 40);
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_22D9C5000, a3, OS_LOG_TYPE_ERROR, "failed to transcode iris video for %@, error = %@", &v7, 0x16u);
}

+ (void)_writeAsset:(uint64_t)a1 image:(NSObject *)a2 withImageCrop:to:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "_writeAsset: cannot save transcoded jpeg to %@", &v2, 0xCu);
}

void __69__NTKCompanionResourceDirectoryEditor__imageDataForAsset_completion___block_invoke_60_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *(a1 + 32);
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_2(&dword_22D9C5000, a2, a3, "cannot retrieve data for asset %@, error %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

@end