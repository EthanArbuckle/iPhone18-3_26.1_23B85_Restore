@interface NTKCompanionResourceDirectoryEditor
+ (BOOL)_transcodeIrisVideoOf:(id)a3 forPhoto:(id)a4 withCrop:(CGRect)a5 into:(id)a6 previewOnly:(BOOL)a7;
+ (BOOL)_transcodeStillImageOf:(id)a3 forPhoto:(id)a4 withCrop:(CGRect)a5 into:(id)a6;
+ (CGSize)_watchPhotoImageSize;
+ (CGSize)_watchPhotoVideoSize;
+ (id)_createResourceDirectoryWithAsset:(id)a3 assetCollection:(id)a4 forDevice:(id)a5 previewOnly:(BOOL)a6;
+ (id)_cropAndScaleUIImage:(id)a3 cropRect:(CGRect)a4 outputSize:(CGSize)a5;
+ (id)_linkPhoto:(id)a3 to:(id)a4 previewOnly:(BOOL)a5;
+ (id)_scaleImage:(id)a3 toLongestEdgeInPixels:(double)a4;
+ (id)_subsampledImageWithData:(id)a3 orientation:(int64_t)a4 subsampleFactor:(unint64_t)a5;
+ (id)_transcodeAsset:(id)a3 withCrop:(CGRect)a4 into:(id)a5 previewOnly:(BOOL)a6;
+ (id)_videoAssetOf:(id)a3;
+ (id)_writeAsset:(id)a3 image:(id)a4 withImageCrop:(CGRect)a5 to:(id)a6;
+ (unint64_t)_subsampleFactorForScale:(double)a3;
+ (void)_imageDataForAsset:(id)a3 completion:(id)a4;
+ (void)_imageForAsset:(id)a3 forSize:(CGSize)a4 completion:(id)a5;
- (NTKCompanionResourceDirectoryEditor)initWithResourceDirectory:(id)a3 forDevice:(id)a4;
- (void)_deleteResourceDirectoryHardLinkIfNecessary;
- (void)dealloc;
- (void)finalizeWithCompletion:(id)a3;
- (void)finalizeWithProgress:(id)a3 completion:(id)a4;
- (void)generateGalleryPreviewResourceDirectoryWithCompletion:(id)a3;
- (void)setResourceDirectory:(id)a3;
@end

@implementation NTKCompanionResourceDirectoryEditor

- (NTKCompanionResourceDirectoryEditor)initWithResourceDirectory:(id)a3 forDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = NTKCompanionResourceDirectoryEditor;
  v8 = [(NTKCompanionResourceDirectoryEditor *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_device, a4);
    if (v6)
    {
      v10 = NTKNewUniqueTeporaryResourceDirectory();
      v11 = [MEMORY[0x277CCAA00] defaultManager];
      [v11 linkItemAtPath:v6 toPath:v10 error:0];

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

- (void)setResourceDirectory:(id)a3
{
  v5 = a3;
  if (self->_resourceDirectoryIsHardLink || (NTKEqualStrings(v5, self->_resourceDirectory) & 1) == 0)
  {
    [(NTKCompanionResourceDirectoryEditor *)self _deleteResourceDirectoryHardLinkIfNecessary];
    objc_storeStrong(&self->_resourceDirectory, a3);
  }
}

- (void)_deleteResourceDirectoryHardLinkIfNecessary
{
  if (self->_resourceDirectoryIsHardLink)
  {
    v3 = [MEMORY[0x277CCAA00] defaultManager];
    [v3 removeItemAtPath:self->_resourceDirectory error:0];

    resourceDirectory = self->_resourceDirectory;
    self->_resourceDirectory = 0;

    self->_resourceDirectoryIsHardLink = 0;
  }
}

- (void)generateGalleryPreviewResourceDirectoryWithCompletion:(id)a3
{
  v4 = a3;
  self->_state = 3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __93__NTKCompanionResourceDirectoryEditor_generateGalleryPreviewResourceDirectoryWithCompletion___block_invoke;
  v6[3] = &unk_27877FF60;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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

- (void)finalizeWithCompletion:(id)a3
{
  v4 = a3;
  self->_state = 4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__NTKCompanionResourceDirectoryEditor_finalizeWithCompletion___block_invoke;
  v6[3] = &unk_27877FF60;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)finalizeWithProgress:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__NTKCompanionResourceDirectoryEditor_finalizeWithProgress_completion___block_invoke;
  block[3] = &unk_278784548;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __71__NTKCompanionResourceDirectoryEditor_finalizeWithProgress_completion___block_invoke(void *a1)
{
  *(a1[4] + 32) = 0;
  (*(a1[5] + 16))(0.0);
  v2 = *(a1[6] + 16);

  return v2();
}

+ (id)_linkPhoto:(id)a3 to:(id)a4 previewOnly:(BOOL)a5
{
  v5 = a5;
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v7 imageURL];
    v11 = v10;
    v12 = "NO";
    if (v5)
    {
      v12 = "YES";
    }

    v19 = 138412546;
    v20 = v10;
    v21 = 2080;
    v22 = v12;
    _os_log_impl(&dword_22D9C5000, v9, OS_LOG_TYPE_DEFAULT, "_linkPhoto: linking existing photo %@ into the new resource directory; preview == %s", &v19, 0x16u);
  }

  v13 = [v7 copy];
  v14 = [v7 imageURL];
  v15 = NTKPhotosLinkURL(v14, v8);

  if (!v15)
  {
    v16 = 0;
    goto LABEL_13;
  }

  [v13 setImageURL:v15];
  if (v5)
  {
    [v13 setIsIris:0];
    [v13 setIrisVideoURL:0];
    [v13 setIrisDuration:0.0];
    [v13 setIrisStillDisplayTime:0.0];
  }

  else if ([v7 isIris])
  {
    v17 = [v7 irisVideoURL];
    v16 = NTKPhotosLinkURL(v17, v8);

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

+ (id)_transcodeAsset:(id)a3 withCrop:(CGRect)a4 into:(id)a5 previewOnly:(BOOL)a6
{
  v6 = a6;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v32 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a5;
  v15 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v13 localIdentifier];
    v17 = v16;
    v18 = "NO";
    if (v6)
    {
      v18 = "YES";
    }

    v28 = 138412546;
    v29 = v16;
    v30 = 2080;
    v31 = v18;
    _os_log_impl(&dword_22D9C5000, v15, OS_LOG_TYPE_DEFAULT, "_transcodeAsset: transcoding new asset %@ into the new resource directory; preview == %s", &v28, 0x16u);
  }

  v19 = objc_opt_new();
  v20 = [v13 localIdentifier];
  [v19 setLocalIdentifier:v20];

  v21 = [v13 modificationDate];
  [v19 setModificationDate:v21];

  [v19 setOriginalCrop:{x, y, width, height}];
  v22 = x / [v13 pixelWidth];
  v23 = y / [v13 pixelHeight];
  v24 = width / [v13 pixelWidth];
  v25 = height / [v13 pixelHeight];
  if ([a1 _transcodeStillImageOf:v13 forPhoto:v19 withCrop:v14 into:{v22, v23, v24, v25}] && objc_msgSend(a1, "_transcodeIrisVideoOf:forPhoto:withCrop:into:previewOnly:", v13, v19, v14, v6, v22, v23, v24, v25))
  {
    v26 = v19;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

+ (BOOL)_transcodeStillImageOf:(id)a3 forPhoto:(id)a4 withCrop:(CGRect)a5 into:(id)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v13 = a3;
  v14 = a4;
  v15 = a6;
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
  [a1 _imageDataForAsset:v13 completion:v41];
  dispatch_semaphore_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
  if (v50[5])
  {
    v18 = [v13 pixelWidth];
    v19 = [v13 pixelHeight];
    CGAffineTransformMakeScale(&v40, [v13 pixelWidth], objc_msgSend(v13, "pixelHeight"));
    v59.origin.x = x;
    v59.origin.y = y;
    v59.size.width = width;
    v59.size.height = height;
    v60 = CGRectApplyAffineTransform(v59, &v40);
    v20 = v60.origin.x;
    v21 = v60.origin.y;
    v22 = v60.size.width;
    v23 = v60.size.height;
    [a1 _watchPhotoImageSize];
    v25 = v24;
    v27 = v26;
    v28 = [NTKCompanionImageDataScaler alloc];
    v29 = [(NTKCompanionImageDataScaler *)v28 initWithSize:v50[5] crop:v46[3] data:v18 orientation:v19 outputSize:v20, v21, v22, v23, v25, v27];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __85__NTKCompanionResourceDirectoryEditor__transcodeStillImageOf_forPhoto_withCrop_into___block_invoke_2;
    v33[3] = &unk_2787845C0;
    v30 = v17;
    v34 = v30;
    v35 = v14;
    v38 = v25;
    v39 = v27;
    v36 = v15;
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

+ (id)_createResourceDirectoryWithAsset:(id)a3 assetCollection:(id)a4 forDevice:(id)a5 previewOnly:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!(v10 | v11))
  {
    v13 = 0;
    goto LABEL_15;
  }

  v14 = NTKPhotosCreateResourceDirectory();
  if (v14)
  {
    if (v10)
    {
      NTKPhotosDefaultCropForAsset(v10, v12);
      v13 = [a1 _transcodeAsset:v10 withCrop:v14 into:v6 previewOnly:?];
      if (!v13)
      {
        v15 = [MEMORY[0x277CCAA00] defaultManager];
        [v15 removeItemAtPath:v14 error:0];
LABEL_13:

        goto LABEL_14;
      }

      v15 = objc_opt_new();
      v16 = [v13 encodeAsDictionary];
      [v15 addObject:v16];
    }

    else
    {
      v15 = objc_opt_new();
    }

    if (NTKPhotosWriteImageListForAssetCollection(v15, v11, v14))
    {
      v13 = v14;
    }

    else
    {
      v17 = [MEMORY[0x277CCAA00] defaultManager];
      [v17 removeItemAtPath:v14 error:0];

      v13 = 0;
    }

    goto LABEL_13;
  }

  v13 = 0;
LABEL_14:

LABEL_15:

  return v13;
}

+ (BOOL)_transcodeIrisVideoOf:(id)a3 forPhoto:(id)a4 withCrop:(CGRect)a5 into:(id)a6 previewOnly:(BOOL)a7
{
  v7 = a7;
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v15 = a3;
  v16 = a4;
  v17 = a6;
  if (!NTKPhotosIsPHAssetIris(v15) || v7)
  {
    [v16 setIsIris:0];
    [v16 setIrisVideoURL:0];
    [v16 setIrisDuration:0.0];
    [v16 setIrisStillDisplayTime:0.0];
    v26 = 1;
  }

  else
  {
    context = objc_autoreleasePoolPush();
    [v16 setIsIris:1];
    v18 = [v16 imageURL];

    if (v18)
    {
      v19 = MEMORY[0x277CCACA8];
      v20 = [v16 imageURL];
      v21 = [v19 stringWithUTF8String:{objc_msgSend(v20, "fileSystemRepresentation")}];
      v22 = [v21 lastPathComponent];

      v23 = MEMORY[0x277CCACA8];
      v24 = [v22 stringByDeletingPathExtension];
      v25 = [v23 stringWithFormat:@"%@.mov", v24];
    }

    else
    {
      v24 = [MEMORY[0x277CCAD78] UUID];
      v25 = [v24 UUIDString];
    }

    v27 = dispatch_semaphore_create(0);
    v54 = 0;
    v55 = &v54;
    v56 = 0x3032000000;
    v57 = __Block_byref_object_copy__39;
    v58 = __Block_byref_object_dispose__39;
    v59 = 0;
    v28 = MEMORY[0x277CBEBC0];
    v29 = [v17 stringByAppendingPathComponent:v25];
    v30 = [v28 fileURLWithPath:v29];

    v31 = [NTKCompanionIrisVideoExportSession alloc];
    v32 = [a1 _videoAssetOf:v15];
    [a1 _watchPhotoVideoSize];
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
    v38 = v15;
    v51 = v38;
    v39 = v27;
    v52 = v39;
    [(NTKCompanionIrisVideoExportSession *)v37 exportAsynchronouslyWithCompletion:v48];
    dispatch_semaphore_wait(v39, 0xFFFFFFFFFFFFFFFFLL);
    v40 = v55[5];
    v26 = v40 == 0;
    if (!v40)
    {
      [v16 setIrisVideoURL:v36];
      v41 = [v38 photoIrisProperties];
      v42 = v41;
      if (v41)
      {
        [v41 photoIrisVideoDuration];
      }

      else
      {
        memset(&time, 0, sizeof(time));
      }

      [v16 setIrisDuration:CMTimeGetSeconds(&time)];

      v43 = [v38 photoIrisProperties];
      v44 = v43;
      if (v43)
      {
        [v43 photoIrisStillDisplayTime];
      }

      else
      {
        memset(&time, 0, sizeof(time));
      }

      [v16 setIrisStillDisplayTime:CMTimeGetSeconds(&time)];
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

+ (id)_writeAsset:(id)a3 image:(id)a4 withImageCrop:(CGRect)a5 to:(id)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = MEMORY[0x277CCACA8];
  v16 = [MEMORY[0x277CCAD78] UUID];
  v17 = [v16 UUIDString];
  v18 = [v15 stringWithFormat:@"%@.jpg", v17];

  v19 = UIImageJPEGRepresentation(v13, 0.85);
  if (v19)
  {
    v20 = [v14 stringByAppendingPathComponent:v18];
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
      if (v12)
      {
        v32 = [v12 localIdentifier];
        [v31 setLocalIdentifier:v32];

        [v12 modificationDate];
      }

      else
      {
        v33 = MEMORY[0x277CCACA8];
        v34 = [MEMORY[0x277CCAD78] UUID];
        [v34 UUIDString];
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
        v51 = v13;
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

+ (id)_scaleImage:(id)a3 toLongestEdgeInPixels:(double)a4
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 size];
    v20 = v7;
    v21 = v6;
    [v5 scale];
    v9 = v8;
    [v5 scale];
    CGAffineTransformMakeScale(&v24, v9, v10);
    v11 = vmlaq_n_f64(vmulq_n_f64(*&v24.c, v20), *&v24.a, v21);
    v12 = vdivq_f64(vdupq_lane_s64(*&a4, 0), v11);
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

+ (id)_videoAssetOf:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a3;
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
  v6 = [MEMORY[0x277CD9898] defaultManager];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __53__NTKCompanionResourceDirectoryEditor__videoAssetOf___block_invoke;
  v16 = &unk_278784610;
  v18 = &v19;
  v7 = v5;
  v17 = v7;
  [v6 requestURLForVideo:v3 options:v4 resultHandler:&v13];

  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v8 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v3 localIdentifier];
    v10 = [v20[5] URL];
    *buf = 138412546;
    v26 = v9;
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

+ (id)_cropAndScaleUIImage:(id)a3 cropRect:(CGRect)a4 outputSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v7 = a4.size.height;
  v8 = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v36 = *MEMORY[0x277D85DE8];
  v11 = a3;
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
  [v11 size];
  v16 = v15;
  v18 = v17;
  [v11 scale];
  v20 = v19;
  [v11 scale];
  CGAffineTransformMakeScale(v31, v20, v21);
  v22 = v18 * *&v31[16] + *v31 * v16;
  v23 = v18 * *&v31[24] + *&v31[8] * v16;
  CGAffineTransformMakeScale(v31, v12, v12);
  v41.origin.x = -v13;
  v41.origin.y = -v14;
  v41.size.width = v22;
  v41.size.height = v23;
  v42 = CGRectApplyAffineTransform(v41, v31);
  [v11 drawInRect:{v42.origin.x, v42.origin.y, v42.size.width, v42.size.height}];
  v24 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  if (!v24)
  {
    v25 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *v31 = 138413826;
      *&v31[4] = v11;
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

+ (void)_imageDataForAsset:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = dispatch_get_global_queue(25, 0);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__NTKCompanionResourceDirectoryEditor__imageDataForAsset_completion___block_invoke;
  v10[3] = &unk_27877FF60;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
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

+ (void)_imageForAsset:(id)a3 forSize:(CGSize)a4 completion:(id)a5
{
  height = a4.height;
  width = a4.width;
  v8 = a3;
  v9 = a5;
  v10 = dispatch_get_global_queue(25, 0);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __73__NTKCompanionResourceDirectoryEditor__imageForAsset_forSize_completion___block_invoke;
  v13[3] = &unk_278782DB8;
  v16 = width;
  v17 = height;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
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

+ (unint64_t)_subsampleFactorForScale:(double)a3
{
  v3 = 2;
  if (a3 > 0.5)
  {
    v3 = 1;
  }

  return v3 << (a3 <= 0.25) << (a3 <= 0.125);
}

+ (id)_subsampledImageWithData:(id)a3 orientation:(int64_t)a4 subsampleFactor:(unint64_t)a5
{
  v31[1] = *MEMORY[0x277D85DE8];
  v7 = CGImageSourceCreateWithData(a3, 0);
  if (v7)
  {
    v8 = v7;
    v30 = *MEMORY[0x277CD3650];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
    v31[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];

    ImageAtIndex = CGImageSourceCreateImageAtIndex(v8, 0, v10);
    if (ImageAtIndex)
    {
      v12 = ImageAtIndex;
      v13 = [MEMORY[0x277D755B8] imageWithCGImage:ImageAtIndex scale:a4 orientation:1.0];
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