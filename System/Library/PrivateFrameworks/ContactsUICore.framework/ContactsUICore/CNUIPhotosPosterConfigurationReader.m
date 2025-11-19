@interface CNUIPhotosPosterConfigurationReader
+ (id)compoundLayerStackFromURL:(id)a3;
+ (id)faceRectsFromUserInfo:(id)a3;
+ (id)facesFromConfiguration:(id)a3;
+ (id)userInfoFromConfiguration:(id)a3;
- (BOOL)hasFaceRectInPosterSnapshot;
- (CGImage)createFullExtentPreviewImage;
- (CGImage)fullExtentPreviewImage;
- (CGImage)visiblePreviewImage;
- (CGRect)denormalizeFaceRect:(CGRect)a3 toOriginalImageSize:(CGSize)a4;
- (CGRect)faceRect:(CGRect)a3 forFullExtentImageSize:(CGSize)a4 fromOriginalImageSize:(CGSize)a5 zoomOut:(BOOL)a6;
- (CGRect)faceRectInPosterSnapshot;
- (CGRect)fullExtentPreviewImageFaceRect;
- (CGRect)fullExtentPreviewImageFaceRectFromConfiguration;
- (CGRect)transformFaceRectToTopLeftOrigin:(CGRect)a3 withSize:(CGSize)a4;
- (CGRect)visiblePreviewImageFaceRect;
- (CGRect)visiblePreviewImageFrame;
- (CGSize)fullExtentPreviewImageSize;
- (CNUIPhotosPosterConfigurationReader)initWithPosterConfiguration:(id)a3;
- (NSData)fullExtentPreviewImageData;
- (PFWallpaperCompoundLayerStack)compoundLayerStack;
- (double)faceRectInPosterSnapshotPercentFromTop;
- (id)faceRectInPosterSnapshotFromConfiguration;
- (id)fullExtentPreviewImageDataFromConfiguration;
@end

@implementation CNUIPhotosPosterConfigurationReader

- (CNUIPhotosPosterConfigurationReader)initWithPosterConfiguration:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CNUIPhotosPosterConfigurationReader;
  v5 = [(CNUIPhotosPosterConfigurationReader *)&v17 init];
  if (v5)
  {
    v6 = [v4 assetDirectory];
    v16 = 0;
    v7 = [MEMORY[0x1E69C07E8] loadFromURL:v6 error:&v16];
    v8 = v16;
    if (v7)
    {
      objc_storeStrong(&v5->_photosConfiguration, v7);
      v9 = [v7 media];
      v10 = [v9 objectAtIndexedSubscript:0];

      v11 = [v10 subpath];
      v12 = [v6 URLByAppendingPathComponent:v11];

      if (v12)
      {
        objc_storeStrong(&v5->_wallpaperURL, v12);
        v13 = v5;
      }

      else
      {
        v14 = +[CNUICoreLogProvider posters_os_log];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [CNUIPhotosPosterConfigurationReader initWithPosterConfiguration:];
        }

        v13 = 0;
      }
    }

    else
    {
      v10 = +[CNUICoreLogProvider posters_os_log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(CNUIPhotosPosterConfigurationReader *)v6 initWithPosterConfiguration:v8, v10];
      }

      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)userInfoFromConfiguration:(id)a3
{
  v3 = [a3 userInfo];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = +[CNUICoreLogProvider posters_os_log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[CNUIPhotosPosterConfigurationReader userInfoFromConfiguration:];
    }
  }

  return v4;
}

+ (id)compoundLayerStackFromURL:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v4 = getPISegmentationLoaderClass_softClass_0;
  v15 = getPISegmentationLoaderClass_softClass_0;
  if (!getPISegmentationLoaderClass_softClass_0)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getPISegmentationLoaderClass_block_invoke_0;
    v17 = &unk_1E76E79E0;
    v18 = &v12;
    __getPISegmentationLoaderClass_block_invoke_0(buf);
    v4 = v13[3];
  }

  v5 = v4;
  _Block_object_dispose(&v12, 8);
  v11 = 0;
  v6 = [v4 loadCompoundLayerStackFromWallpaperURL:v3 options:0 error:&v11];
  v7 = v11;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = +[CNUICoreLogProvider posters_os_log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = v3;
      *&buf[12] = 2112;
      *&buf[14] = v7;
      _os_log_impl(&dword_1A31E6000, v9, OS_LOG_TYPE_DEFAULT, "Could not could not load layer stack at %@: error %@", buf, 0x16u);
    }
  }

  return v6;
}

+ (id)faceRectsFromUserInfo:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"regions"];
  v5 = [v4 objectForKeyedSubscript:@"faces"];

  v6 = *MEMORY[0x1E6996530];
  if ((*(*MEMORY[0x1E6996530] + 16))(*MEMORY[0x1E6996530], v5))
  {
    v7 = [v3 objectForKeyedSubscript:@"regions"];
    v8 = [v7 objectForKeyedSubscript:@"pets"];

    v5 = v8;
  }

  if ((*(v6 + 16))(v6, v5))
  {
    v9 = +[CNUICoreLogProvider posters_os_log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [CNUIPhotosPosterConfigurationReader faceRectsFromUserInfo:v9];
    }

    v10 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v10 = v5;
  }

  return v10;
}

+ (id)facesFromConfiguration:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() userInfoFromConfiguration:v3];

  if (v4)
  {
    v5 = [objc_opt_class() faceRectsFromUserInfo:v4];
    if ((*(*MEMORY[0x1E6996530] + 16))())
    {
      v6 = MEMORY[0x1E695E0F0];
    }

    else
    {
      v6 = v5;
    }
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

- (NSData)fullExtentPreviewImageData
{
  v3 = self->_fullExtentPreviewImageData;
  if (!v3)
  {
    v4 = [(CNUIPhotosPosterConfigurationReader *)self fullExtentPreviewImageDataFromConfiguration];
    v5 = [v4 imageData];
    fullExtentPreviewImageData = self->_fullExtentPreviewImageData;
    self->_fullExtentPreviewImageData = v5;

    [v4 imageSize];
    self->_fullExtentPreviewImageSize.width = v7;
    self->_fullExtentPreviewImageSize.height = v8;
    v3 = self->_fullExtentPreviewImageData;
  }

  return v3;
}

- (CGSize)fullExtentPreviewImageSize
{
  width = self->_fullExtentPreviewImageSize.width;
  height = self->_fullExtentPreviewImageSize.height;
  if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
  {
    fullExtentPreviewImage = self->_fullExtentPreviewImage;
    if (!fullExtentPreviewImage)
    {
      fullExtentPreviewImage = [(CNUIPhotosPosterConfigurationReader *)self fullExtentPreviewImage];
      self->_fullExtentPreviewImage = fullExtentPreviewImage;
    }

    width = CGImageGetWidth(fullExtentPreviewImage);
    height = CGImageGetHeight(self->_fullExtentPreviewImage);
    self->_fullExtentPreviewImageSize.width = width;
    self->_fullExtentPreviewImageSize.height = height;
  }

  v7 = width;
  result.height = height;
  result.width = v7;
  return result;
}

- (CGImage)fullExtentPreviewImage
{
  result = self->_fullExtentPreviewImage;
  if (!result)
  {
    v4 = [(CNUIPhotosPosterConfigurationReader *)self createFullExtentPreviewImage];
    self->_fullExtentPreviewImage = v4;
    Width = CGImageGetWidth(v4);
    Height = CGImageGetHeight(self->_fullExtentPreviewImage);
    self->_fullExtentPreviewImageSize.width = Width;
    self->_fullExtentPreviewImageSize.height = Height;
    return self->_fullExtentPreviewImage;
  }

  return result;
}

- (CGRect)fullExtentPreviewImageFaceRect
{
  if (CGRectEqualToRect(self->_fullExtentPreviewImageFaceRect, *MEMORY[0x1E695F058]))
  {
    [(CNUIPhotosPosterConfigurationReader *)self fullExtentPreviewImageFaceRectFromConfiguration];
    self->_fullExtentPreviewImageFaceRect.origin.x = x;
    self->_fullExtentPreviewImageFaceRect.origin.y = y;
    self->_fullExtentPreviewImageFaceRect.size.width = width;
    self->_fullExtentPreviewImageFaceRect.size.height = height;
  }

  else
  {
    width = self->_fullExtentPreviewImageFaceRect.size.width;
    height = self->_fullExtentPreviewImageFaceRect.size.height;
    x = self->_fullExtentPreviewImageFaceRect.origin.x;
    y = self->_fullExtentPreviewImageFaceRect.origin.y;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGImage)visiblePreviewImage
{
  result = self->_visiblePreviewImage;
  if (!result)
  {
    v4 = [(CNUIPhotosPosterConfigurationReader *)self fullExtentPreviewImage];
    [(CNUIPhotosPosterConfigurationReader *)self visiblePreviewImageFrame];
    result = CGImageCreateWithImageInRect(v4, v5);
    self->_visiblePreviewImage = result;
  }

  return result;
}

- (CGRect)visiblePreviewImageFrame
{
  v3 = [(CNUIPhotosPosterConfigurationReader *)self compoundLayerStack];
  v4 = [v3 layout];
  v5 = [v4 portraitLayout];
  [v5 normalizedVisibleFrame];
  [CNUIPhotosPosterConfigurationReader transformFaceRectToTopLeftOrigin:"transformFaceRectToTopLeftOrigin:withSize:" withSize:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(CNUIPhotosPosterConfigurationReader *)self fullExtentPreviewImageSize];
  v15 = v11 * v14;
  v17 = v13 * v16;
  v18 = v7 * v14;
  v19 = v9 * v16;

  return CGRectIntegral(*&v18);
}

- (CGRect)visiblePreviewImageFaceRect
{
  if (CGRectEqualToRect(self->_visiblePreviewImageFaceRect, *MEMORY[0x1E695F058]))
  {
    [(CNUIPhotosPosterConfigurationReader *)self fullExtentPreviewImageFaceRect];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(CNUIPhotosPosterConfigurationReader *)self visiblePreviewImageFrame];
    v12 = -v11;
    v14 = -v13;
    v15.origin.x = v4;
    v15.origin.y = v6;
    v15.size.width = v8;
    v15.size.height = v10;
    result = CGRectOffset(v15, v12, v14);
    self->_visiblePreviewImageFaceRect = result;
  }

  else
  {
    return self->_visiblePreviewImageFaceRect;
  }

  return result;
}

- (id)fullExtentPreviewImageDataFromConfiguration
{
  v2 = [(CNUIPhotosPosterConfigurationReader *)self fullExtentPreviewImage];
  v3 = objc_opt_new();
  v4 = CGImageDestinationCreateWithData(v3, @"public.jpeg", 1uLL, 0);
  CGImageDestinationAddImage(v4, v2, 0);
  CGImageDestinationFinalize(v4);
  if (v4)
  {
    CFRelease(v4);
  }

  Width = CGImageGetWidth(v2);
  Height = CGImageGetHeight(v2);
  v7 = objc_alloc_init(CNUIPhotosPosterConfigurationReaderPreviewImageResult);
  v8 = [(__CFData *)v3 copy];
  [(CNUIPhotosPosterConfigurationReaderPreviewImageResult *)v7 setImageData:v8];

  [(CNUIPhotosPosterConfigurationReaderPreviewImageResult *)v7 setImageSize:Width, Height];

  return v7;
}

- (CGRect)fullExtentPreviewImageFaceRectFromConfiguration
{
  v3 = objc_opt_class();
  v4 = [(CNUIPhotosPosterConfigurationReader *)self photosConfiguration];
  v5 = [v3 facesFromConfiguration:v4];

  if ((*(*MEMORY[0x1E6996530] + 16))())
  {
    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 8);
    v8 = *(MEMORY[0x1E695F058] + 16);
    v9 = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    v10 = objc_opt_class();
    v11 = [(CNUIPhotosPosterConfigurationReader *)self wallpaperURL];
    v12 = [v10 compoundLayerStackFromURL:v11];

    if (v12)
    {
      v13 = [v12 layout];
      [v13 imageSize];
      v15 = v14;
      v17 = v16;
      v18 = [v5 firstObject];
      memset(&v29, 0, sizeof(v29));
      CGRectMakeWithDictionaryRepresentation(v18, &v29);
      [(CNUIPhotosPosterConfigurationReader *)self fullExtentPreviewImageSize];
      [(CNUIPhotosPosterConfigurationReader *)self faceRect:1 forFullExtentImageSize:*&v29.origin fromOriginalImageSize:*&v29.size zoomOut:v19, v20, v15, v17];
      v6 = v21;
      v7 = v22;
      v8 = v23;
      v9 = v24;
    }

    else
    {
      v6 = *MEMORY[0x1E695F058];
      v7 = *(MEMORY[0x1E695F058] + 8);
      v8 = *(MEMORY[0x1E695F058] + 16);
      v9 = *(MEMORY[0x1E695F058] + 24);
    }
  }

  v25 = v6;
  v26 = v7;
  v27 = v8;
  v28 = v9;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (CGImage)createFullExtentPreviewImage
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v3 = getPISegmentationClass_softClass;
  v16 = getPISegmentationClass_softClass;
  if (!getPISegmentationClass_softClass)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __getPISegmentationClass_block_invoke;
    v12[3] = &unk_1E76E79E0;
    v12[4] = &v13;
    __getPISegmentationClass_block_invoke(v12);
    v3 = v14[3];
  }

  v4 = v3;
  _Block_object_dispose(&v13, 8);
  v5 = [(CNUIPhotosPosterConfigurationReader *)self wallpaperURL];
  v11 = 0;
  v6 = [v3 createFullExtentPreviewImageForWallpaperAtURL:v5 error:&v11];
  v7 = v11;
  if (v6)
  {
    v8 = CFAutorelease(v6);

    if (v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v9 = +[CNUICoreLogProvider posters_os_log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [CNUIPhotosPosterConfigurationReader createFullExtentPreviewImage];
  }

  v8 = 0;
LABEL_10:

  return v8;
}

- (PFWallpaperCompoundLayerStack)compoundLayerStack
{
  p_compoundLayerStack = &self->_compoundLayerStack;
  v4 = self->_compoundLayerStack;
  if (!v4)
  {
    v5 = objc_opt_class();
    v6 = [(CNUIPhotosPosterConfigurationReader *)self wallpaperURL];
    v4 = [v5 compoundLayerStackFromURL:v6];

    objc_storeStrong(p_compoundLayerStack, v4);
  }

  return v4;
}

- (CGRect)faceRect:(CGRect)a3 forFullExtentImageSize:(CGSize)a4 fromOriginalImageSize:(CGSize)a5 zoomOut:(BOOL)a6
{
  v6 = a6;
  height = a5.height;
  width = a5.width;
  v9 = a4.height;
  v10 = a4.width;
  [(CNUIPhotosPosterConfigurationReader *)self denormalizeFaceRect:a3.origin.x toOriginalImageSize:a3.origin.y, a3.size.width, a3.size.height, a5.width, a5.height];
  [CNUIPhotosPosterConfigurationReader transformFaceRectToTopLeftOrigin:"transformFaceRectToTopLeftOrigin:withSize:" withSize:?];
  if (width != v10 || height != v9)
  {
    v12 = v10 / width * v12;
    v13 = v10 / width * v13;
    v14 = v10 / width * v14;
    v15 = v10 / width * v15;
  }

  if (v6)
  {
    v14 = v14 * 3.0;
    v17 = v15 * 3.0;
    if (v14 >= v17)
    {
      v14 = v17;
    }

    v12 = v12 - v14 * 0.3;
    v13 = v13 - v14 * 0.3;
    v15 = v14;
  }

  v18 = MEMORY[0x1E6996738];

  [v18 squareCropRect:v12 toFitSize:{v13, v14, v15, v10, v9}];
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGRect)faceRectInPosterSnapshot
{
  if (CGRectEqualToRect(self->_faceRectInPosterSnapshot, *MEMORY[0x1E695F058]))
  {
    v3 = [(CNUIPhotosPosterConfigurationReader *)self faceRectInPosterSnapshotFromConfiguration];
    [v3 faceRect];
    self->_faceRectInPosterSnapshot.origin.x = v4;
    self->_faceRectInPosterSnapshot.origin.y = v5;
    self->_faceRectInPosterSnapshot.size.width = v6;
    self->_faceRectInPosterSnapshot.size.height = v7;
    [v3 percentFromTop];
    self->_faceRectInPosterSnapshotPercentFromTop = v8;
    x = self->_faceRectInPosterSnapshot.origin.x;
    y = self->_faceRectInPosterSnapshot.origin.y;
    width = self->_faceRectInPosterSnapshot.size.width;
    height = self->_faceRectInPosterSnapshot.size.height;
  }

  else
  {
    x = self->_faceRectInPosterSnapshot.origin.x;
    y = self->_faceRectInPosterSnapshot.origin.y;
    width = self->_faceRectInPosterSnapshot.size.width;
    height = self->_faceRectInPosterSnapshot.size.height;
  }

  v13 = x;
  v14 = y;
  v15 = width;
  v16 = height;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (double)faceRectInPosterSnapshotPercentFromTop
{
  faceRectInPosterSnapshotPercentFromTop = self->_faceRectInPosterSnapshotPercentFromTop;
  if (faceRectInPosterSnapshotPercentFromTop == 0.0)
  {
    v4 = [(CNUIPhotosPosterConfigurationReader *)self faceRectInPosterSnapshotFromConfiguration];
    [v4 faceRect];
    self->_faceRectInPosterSnapshot.origin.x = v5;
    self->_faceRectInPosterSnapshot.origin.y = v6;
    self->_faceRectInPosterSnapshot.size.width = v7;
    self->_faceRectInPosterSnapshot.size.height = v8;
    [v4 percentFromTop];
    faceRectInPosterSnapshotPercentFromTop = v9;
    self->_faceRectInPosterSnapshotPercentFromTop = v9;
  }

  return faceRectInPosterSnapshotPercentFromTop;
}

- (BOOL)hasFaceRectInPosterSnapshot
{
  [(CNUIPhotosPosterConfigurationReader *)self faceRectInPosterSnapshot];
  x = v7.origin.x;
  y = v7.origin.y;
  width = v7.size.width;
  height = v7.size.height;
  if (CGRectEqualToRect(v7, *MEMORY[0x1E695F058]))
  {
    return 0;
  }

  v8.origin.x = x;
  v8.origin.y = y;
  v8.size.width = width;
  v8.size.height = height;
  return !CGRectIsNull(v8);
}

- (id)faceRectInPosterSnapshotFromConfiguration
{
  v3 = objc_opt_class();
  v4 = [(CNUIPhotosPosterConfigurationReader *)self photosConfiguration];
  v5 = [v3 facesFromConfiguration:v4];

  if ((*(*MEMORY[0x1E6996530] + 16))())
  {
    v6 = 0;
  }

  else
  {
    v7 = [(CNUIPhotosPosterConfigurationReader *)self compoundLayerStack];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 portraitLayerStack];
      v10 = v9;
      if (v9)
      {
        v11 = [v9 backgroundLayer];
        objc_opt_class();
        v12 = v11;
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }

        v14 = v13;

        v15 = [v14 image];
        Width = CVPixelBufferGetWidth(v15);
        Height = CVPixelBufferGetHeight(v15);
        v18 = [v10 layout];
        [v18 imageSize];
        v20 = v19;
        v22 = v21;
        [v18 visibleFrame];
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v30 = v29;
        v31 = [v5 firstObject];
        memset(&v45, 0, sizeof(v45));
        CGRectMakeWithDictionaryRepresentation(v31, &v45);
        [(CNUIPhotosPosterConfigurationReader *)self denormalizeFaceRect:*&v45.origin toOriginalImageSize:*&v45.size, v20, v22];
        v45.origin.x = Width / v28 * (v32 - v24);
        v45.origin.y = Height / v30 * (v33 - v26);
        v45.size.width = Width / v28 * v34;
        v45.size.height = Height / v30 * v35;
        [(CNUIPhotosPosterConfigurationReader *)self transformFaceRectToTopLeftOrigin:*&v45.origin withSize:*&v45.size];
        [MEMORY[0x1E6996738] squareCropRect:v36 toFitSize:{v37, v38, v39}];
        v45.origin.x = v40;
        v45.origin.y = v41;
        v45.size.width = v42;
        v45.size.height = v43;
        v6 = objc_alloc_init(CNUIPhotosPosterConfigurationReaderFaceRectResult);
        [(CNUIPhotosPosterConfigurationReaderFaceRectResult *)v6 setPercentFromTop:v45.origin.y / Height];
        [(CNUIPhotosPosterConfigurationReaderFaceRectResult *)v6 setFaceRect:*&v45.origin, *&v45.size];
      }

      else
      {
        v12 = +[CNUICoreLogProvider posters_os_log];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [CNUIPhotosPosterConfigurationReader faceRectInPosterSnapshotFromConfiguration];
        }

        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (CGRect)denormalizeFaceRect:(CGRect)a3 toOriginalImageSize:(CGSize)a4
{
  v4 = a3.origin.x * a4.width;
  v5 = a3.origin.y * a4.height;
  v6 = a3.size.width * a4.width;
  v7 = a3.size.height * a4.height;
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)transformFaceRectToTopLeftOrigin:(CGRect)a3 withSize:(CGSize)a4
{
  height = a4.height;
  v5 = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  memset(&v11, 0, sizeof(v11));
  CGAffineTransformMakeScale(&v11, 1.0, -1.0);
  v9 = v11;
  CGAffineTransformTranslate(&v10, &v9, 0.0, -height);
  v11 = v10;
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = v5;
  return CGRectApplyAffineTransform(v12, &v10);
}

- (void)initWithPosterConfiguration:(os_log_t)log .cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1A31E6000, log, OS_LOG_TYPE_ERROR, "Failed to load photos poster config at %@: error %@", &v3, 0x16u);
}

@end