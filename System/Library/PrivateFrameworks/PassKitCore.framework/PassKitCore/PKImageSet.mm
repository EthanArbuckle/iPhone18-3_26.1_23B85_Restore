@interface PKImageSet
+ (BOOL)shouldCacheForDisplayProfile:(id)a3 imageSetType:(int64_t)a4;
+ (Class)classForDisplayProfile:(id)a3 imageSetType:(int64_t)a4;
+ (id)_archiveImageSetIfAppropriate:(id)a3 screenScale:(double)a4 screenSize:(CGSize)a5 archiveURL:(id)a6 cacheURL:(id)a7;
+ (id)_archiveURL:(id)a3;
+ (id)_createXPCContainerForImageSetWithType:(int64_t)a3 displayProfile:(id)a4 screenScale:(double)a5 screenSize:(CGSize)a6 suffix:(id)a7 fileURL:(id)a8 cacheURL:(id)a9 imageSetOut:(id *)a10;
+ (id)cachedXPCContainerForImageSetWithType:(int64_t)a3 displayProfile:(id)a4 displayTraits:(id)a5 cacheURL:(id)a6;
+ (id)createXPCContainerForImageSet:(id)a3 screenScale:(double)a4 screenSize:(CGSize)a5 cacheURL:(id)a6;
+ (id)imageSetForType:(int64_t)a3 screenScale:(double)a4 suffix:(id)a5 displayProfile:(id)a6 fileURL:(id)a7;
- (BOOL)_isSetImage:(id)a3 equalToImage:(id)a4;
- (PKImageSet)initWithCoder:(id)a3;
- (PKImageSet)initWithDisplayProfile:(id)a3 fileURL:(id)a4 screenScale:(double)a5 suffix:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKImageSet

+ (BOOL)shouldCacheForDisplayProfile:(id)a3 imageSetType:(int64_t)a4
{
  v4 = [a1 classForDisplayProfile:a3 imageSetType:a4];

  return [v4 shouldCache];
}

+ (Class)classForDisplayProfile:(id)a3 imageSetType:(int64_t)a4
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    if ([v5 type])
    {
      v5 = 0;
    }

    else
    {
      v5 = objc_opt_class();
    }
  }

  v7 = [v5 classForImageSetType:a4];

  return v7;
}

+ (id)imageSetForType:(int64_t)a3 screenScale:(double)a4 suffix:(id)a5 displayProfile:(id)a6 fileURL:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  if (a4 == 0.0)
  {
    a4 = PKScreenScale();
  }

  v15 = [objc_alloc(objc_msgSend(a1 classForDisplayProfile:v13 imageSetType:{a3)), "initWithDisplayProfile:fileURL:screenScale:suffix:", v13, v14, v12, a4}];

  return v15;
}

- (PKImageSet)initWithDisplayProfile:(id)a3 fileURL:(id)a4 screenScale:(double)a5 suffix:(id)a6
{
  v8.receiver = self;
  v8.super_class = PKImageSet;
  v6 = [(PKImageSet *)&v8 init:a3];
  if (v6)
  {
    v6->_version = [objc_opt_class() currentVersion];
  }

  return v6;
}

+ (id)cachedXPCContainerForImageSetWithType:(int64_t)a3 displayProfile:(id)a4 displayTraits:(id)a5 cacheURL:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = [a1 classForDisplayProfile:a4 imageSetType:a3];
  v13 = [v12 shouldCache];
  v14 = 0;
  if (v11 && v13)
  {
    [v10 canvasScale];
    if (v15 == 0.0)
    {
      v15 = PKScreenScale();
    }

    v16 = v15;
    [v10 canvasSize];
    v19 = v18;
    v20 = v17;
    if (v18 == *MEMORY[0x1E695F060] && v17 == *(MEMORY[0x1E695F060] + 8))
    {
      v19 = PKScreenSize();
      v20 = v22;
    }

    v23 = [v12 _archiveURL:v11];
    v14 = PKLoadXPCDataWithURL(v23, [v12 currentVersion], v16, v19, v20);
  }

  return v14;
}

+ (id)createXPCContainerForImageSet:(id)a3 screenScale:(double)a4 screenSize:(CGSize)a5 cacheURL:(id)a6
{
  height = a5.height;
  width = a5.width;
  v11 = a3;
  v12 = a6;
  if (v12)
  {
    v13 = [objc_opt_class() _archiveURL:v12];
  }

  else
  {
    v13 = 0;
  }

  v14 = [a1 _archiveImageSetIfAppropriate:v11 screenScale:v13 screenSize:v12 archiveURL:a4 cacheURL:{width, height}];

  return v14;
}

+ (id)_createXPCContainerForImageSetWithType:(int64_t)a3 displayProfile:(id)a4 screenScale:(double)a5 screenSize:(CGSize)a6 suffix:(id)a7 fileURL:(id)a8 cacheURL:(id)a9 imageSetOut:(id *)a10
{
  height = a6.height;
  width = a6.width;
  v45 = *MEMORY[0x1E69E9840];
  v19 = a4;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  if (a5 == 0.0)
  {
    a5 = PKScreenScale();
  }

  if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
  {
    width = PKScreenSize();
    height = v24;
  }

  v25 = objc_alloc_init(PKDisplayTraitCollection);
  [(PKDisplayTraitCollection *)v25 setCanvasSize:width, height];
  [(PKDisplayTraitCollection *)v25 setCanvasScale:a5];
  v26 = [a1 cachedXPCContainerForImageSetWithType:a3 displayProfile:v19 displayTraits:v25 cacheURL:v22];
  if (v26)
  {
    v27 = v26;
    if (a10)
    {
      v28 = [v26 consumeImageSet];
      v29 = *a10;
      *a10 = v28;

      v27 = 0;
    }

    goto LABEL_32;
  }

  v43 = v20;
  if (v21)
  {
    v30 = [MEMORY[0x1E696AC08] defaultManager];
    v31 = [v21 path];
    v32 = [v30 fileExistsAtPath:v31];

    if (v32)
    {
      context = objc_autoreleasePoolPush();
      v33 = [a1 classForDisplayProfile:v19 imageSetType:a3];
      if (v22 && v33 == objc_opt_class())
      {
        v37 = objc_autoreleasePoolPush();
        *buf = 0;

        if (!*buf)
        {
          goto LABEL_26;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v38 = *buf;
          *buf = 0;
        }

        if (*buf)
        {
          v39 = [PKPassPlaceHolderImageSet alloc];
          v20 = v43;
          v40 = [(PKPassPlaceHolderImageSet *)v39 _initWithDisplayProfile:v19 fileURL:v21 screenScale:v43 suffix:*buf frontFaceImageSet:a5];
        }

        else
        {
LABEL_26:
          v20 = v43;
          v40 = [[v33 alloc] initWithDisplayProfile:v19 fileURL:v21 screenScale:v43 suffix:a5];
        }

        v34 = v40;

        objc_autoreleasePoolPop(v37);
      }

      else
      {
        v20 = v43;
        v34 = [[v33 alloc] initWithDisplayProfile:v19 fileURL:v21 screenScale:v43 suffix:a5];
        if (!v22)
        {
          v35 = 0;
LABEL_29:
          v27 = [a1 _archiveImageSetIfAppropriate:v34 screenScale:v35 screenSize:v22 archiveURL:a5 cacheURL:{width, height}];
          if (a10)
          {
            objc_storeStrong(a10, v34);

            v27 = 0;
          }

          objc_autoreleasePoolPop(context);
          goto LABEL_32;
        }
      }

      v35 = [objc_opt_class() _archiveURL:v22];
      goto LABEL_29;
    }
  }

  v36 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v21;
    _os_log_impl(&dword_1AD337000, v36, OS_LOG_TYPE_DEFAULT, "Attempting to create container for image set with missing pass bundle: %@", buf, 0xCu);
  }

  v27 = 0;
  v20 = v43;
LABEL_32:

  return v27;
}

+ (id)_archiveImageSetIfAppropriate:(id)a3 screenScale:(double)a4 screenSize:(CGSize)a5 archiveURL:(id)a6 cacheURL:(id)a7
{
  width = a5.width;
  height = a5.height;
  v32 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  v12 = a7;
  if (v10 && ([MEMORY[0x1E696ACC8] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:0], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v14 = v13;
    v15 = [objc_opt_class() shouldCache];
    if (!v11 || !v15 || ([v14 SHA256Hash], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(objc_opt_class(), "currentVersion"), v18 = objc_msgSend(objc_alloc(MEMORY[0x1E695DF88]), "initWithCapacity:", objc_msgSend(v14, "length") + 48), v31 = 0u, v30 = 0u, v19.f64[0] = width, v19.f64[1] = height, v28[0] = bswap32(v17), v28[1] = bswap32(a4), v29 = vrev32_s8(vmovn_s64(vcvtq_u64_f64(vmulq_n_f64(v19, a4)))), objc_msgSend(v16, "bytes"), objc_msgSend(v16, "length"), __memcpy_chk(), objc_msgSend(v18, "appendBytes:length:", v28, 48), objc_msgSend(v18, "appendData:", v14), objc_msgSend(MEMORY[0x1E696AC08], "defaultManager"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "createDirectoryAtURL:withIntermediateDirectories:attributes:error:", v12, 1, 0, 0), objc_msgSend(v18, "writeToURL:atomically:", v11, 1), v21 = PKLoadXPCDataWithURL(v11, v17, a4, width, height), v20, v18, v16, !v21))
    {
      v22 = xpc_data_create([v14 bytes], objc_msgSend(v14, "length"));
      if (v22)
      {
        v23 = v22;
        v24 = [v14 SHA256Hash];
        v21 = [[PKImageSetXPCContainer alloc] initWithWithXPCObject:v23 hash:v24];
      }

      else
      {
        v21 = 0;
      }
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

+ (id)_archiveURL:(id)a3
{
  v4 = a3;
  v5 = [a1 archiveName];
  if (v5)
  {
    v6 = [v4 URLByAppendingPathComponent:v5 isDirectory:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_isSetImage:(id)a3 equalToImage:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 == v6)
  {
    v10 = 1;
  }

  else if (v6)
  {
    v8 = [v5 imageHash];
    v9 = [v7 imageHash];
    v10 = [v8 isEqual:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (PKImageSet)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKImageSet;
  v5 = [(PKImageSet *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originCacheURL"];
    originCacheURL = v5->_originCacheURL;
    v5->_originCacheURL = v6;

    v5->_version = [v4 decodeIntegerForKey:@"version"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  originCacheURL = self->_originCacheURL;
  v5 = a3;
  [v5 encodeObject:originCacheURL forKey:@"originCacheURL"];
  [v5 encodeInteger:self->_version forKey:@"version"];
}

@end