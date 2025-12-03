@interface PKImageSet
+ (BOOL)shouldCacheForDisplayProfile:(id)profile imageSetType:(int64_t)type;
+ (Class)classForDisplayProfile:(id)profile imageSetType:(int64_t)type;
+ (id)_archiveImageSetIfAppropriate:(id)appropriate screenScale:(double)scale screenSize:(CGSize)size archiveURL:(id)l cacheURL:(id)rL;
+ (id)_archiveURL:(id)l;
+ (id)_createXPCContainerForImageSetWithType:(int64_t)type displayProfile:(id)profile screenScale:(double)scale screenSize:(CGSize)size suffix:(id)suffix fileURL:(id)l cacheURL:(id)rL imageSetOut:(id *)self0;
+ (id)cachedXPCContainerForImageSetWithType:(int64_t)type displayProfile:(id)profile displayTraits:(id)traits cacheURL:(id)l;
+ (id)createXPCContainerForImageSet:(id)set screenScale:(double)scale screenSize:(CGSize)size cacheURL:(id)l;
+ (id)imageSetForType:(int64_t)type screenScale:(double)scale suffix:(id)suffix displayProfile:(id)profile fileURL:(id)l;
- (BOOL)_isSetImage:(id)image equalToImage:(id)toImage;
- (PKImageSet)initWithCoder:(id)coder;
- (PKImageSet)initWithDisplayProfile:(id)profile fileURL:(id)l screenScale:(double)scale suffix:(id)suffix;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKImageSet

+ (BOOL)shouldCacheForDisplayProfile:(id)profile imageSetType:(int64_t)type
{
  v4 = [self classForDisplayProfile:profile imageSetType:type];

  return [v4 shouldCache];
}

+ (Class)classForDisplayProfile:(id)profile imageSetType:(int64_t)type
{
  profileCopy = profile;
  v6 = profileCopy;
  if (profileCopy)
  {
    if ([profileCopy type])
    {
      profileCopy = 0;
    }

    else
    {
      profileCopy = objc_opt_class();
    }
  }

  v7 = [profileCopy classForImageSetType:type];

  return v7;
}

+ (id)imageSetForType:(int64_t)type screenScale:(double)scale suffix:(id)suffix displayProfile:(id)profile fileURL:(id)l
{
  suffixCopy = suffix;
  profileCopy = profile;
  lCopy = l;
  if (scale == 0.0)
  {
    scale = PKScreenScale();
  }

  v15 = [objc_alloc(objc_msgSend(self classForDisplayProfile:profileCopy imageSetType:{type)), "initWithDisplayProfile:fileURL:screenScale:suffix:", profileCopy, lCopy, suffixCopy, scale}];

  return v15;
}

- (PKImageSet)initWithDisplayProfile:(id)profile fileURL:(id)l screenScale:(double)scale suffix:(id)suffix
{
  v8.receiver = self;
  v8.super_class = PKImageSet;
  v6 = [(PKImageSet *)&v8 init:profile];
  if (v6)
  {
    v6->_version = [objc_opt_class() currentVersion];
  }

  return v6;
}

+ (id)cachedXPCContainerForImageSetWithType:(int64_t)type displayProfile:(id)profile displayTraits:(id)traits cacheURL:(id)l
{
  traitsCopy = traits;
  lCopy = l;
  v12 = [self classForDisplayProfile:profile imageSetType:type];
  shouldCache = [v12 shouldCache];
  v14 = 0;
  if (lCopy && shouldCache)
  {
    [traitsCopy canvasScale];
    if (v15 == 0.0)
    {
      v15 = PKScreenScale();
    }

    v16 = v15;
    [traitsCopy canvasSize];
    v19 = v18;
    v20 = v17;
    if (v18 == *MEMORY[0x1E695F060] && v17 == *(MEMORY[0x1E695F060] + 8))
    {
      v19 = PKScreenSize();
      v20 = v22;
    }

    v23 = [v12 _archiveURL:lCopy];
    v14 = PKLoadXPCDataWithURL(v23, [v12 currentVersion], v16, v19, v20);
  }

  return v14;
}

+ (id)createXPCContainerForImageSet:(id)set screenScale:(double)scale screenSize:(CGSize)size cacheURL:(id)l
{
  height = size.height;
  width = size.width;
  setCopy = set;
  lCopy = l;
  if (lCopy)
  {
    v13 = [objc_opt_class() _archiveURL:lCopy];
  }

  else
  {
    v13 = 0;
  }

  v14 = [self _archiveImageSetIfAppropriate:setCopy screenScale:v13 screenSize:lCopy archiveURL:scale cacheURL:{width, height}];

  return v14;
}

+ (id)_createXPCContainerForImageSetWithType:(int64_t)type displayProfile:(id)profile screenScale:(double)scale screenSize:(CGSize)size suffix:(id)suffix fileURL:(id)l cacheURL:(id)rL imageSetOut:(id *)self0
{
  height = size.height;
  width = size.width;
  v45 = *MEMORY[0x1E69E9840];
  profileCopy = profile;
  suffixCopy = suffix;
  lCopy = l;
  rLCopy = rL;
  if (scale == 0.0)
  {
    scale = PKScreenScale();
  }

  if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
  {
    width = PKScreenSize();
    height = v24;
  }

  v25 = objc_alloc_init(PKDisplayTraitCollection);
  [(PKDisplayTraitCollection *)v25 setCanvasSize:width, height];
  [(PKDisplayTraitCollection *)v25 setCanvasScale:scale];
  v26 = [self cachedXPCContainerForImageSetWithType:type displayProfile:profileCopy displayTraits:v25 cacheURL:rLCopy];
  if (v26)
  {
    v27 = v26;
    if (out)
    {
      consumeImageSet = [v26 consumeImageSet];
      v29 = *out;
      *out = consumeImageSet;

      v27 = 0;
    }

    goto LABEL_32;
  }

  v43 = suffixCopy;
  if (lCopy)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [lCopy path];
    v32 = [defaultManager fileExistsAtPath:path];

    if (v32)
    {
      context = objc_autoreleasePoolPush();
      v33 = [self classForDisplayProfile:profileCopy imageSetType:type];
      if (rLCopy && v33 == objc_opt_class())
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
          suffixCopy = v43;
          v40 = [(PKPassPlaceHolderImageSet *)v39 _initWithDisplayProfile:profileCopy fileURL:lCopy screenScale:v43 suffix:*buf frontFaceImageSet:scale];
        }

        else
        {
LABEL_26:
          suffixCopy = v43;
          v40 = [[v33 alloc] initWithDisplayProfile:profileCopy fileURL:lCopy screenScale:v43 suffix:scale];
        }

        v34 = v40;

        objc_autoreleasePoolPop(v37);
      }

      else
      {
        suffixCopy = v43;
        v34 = [[v33 alloc] initWithDisplayProfile:profileCopy fileURL:lCopy screenScale:v43 suffix:scale];
        if (!rLCopy)
        {
          v35 = 0;
LABEL_29:
          v27 = [self _archiveImageSetIfAppropriate:v34 screenScale:v35 screenSize:rLCopy archiveURL:scale cacheURL:{width, height}];
          if (out)
          {
            objc_storeStrong(out, v34);

            v27 = 0;
          }

          objc_autoreleasePoolPop(context);
          goto LABEL_32;
        }
      }

      v35 = [objc_opt_class() _archiveURL:rLCopy];
      goto LABEL_29;
    }
  }

  v36 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = lCopy;
    _os_log_impl(&dword_1AD337000, v36, OS_LOG_TYPE_DEFAULT, "Attempting to create container for image set with missing pass bundle: %@", buf, 0xCu);
  }

  v27 = 0;
  suffixCopy = v43;
LABEL_32:

  return v27;
}

+ (id)_archiveImageSetIfAppropriate:(id)appropriate screenScale:(double)scale screenSize:(CGSize)size archiveURL:(id)l cacheURL:(id)rL
{
  width = size.width;
  height = size.height;
  v32 = *MEMORY[0x1E69E9840];
  appropriateCopy = appropriate;
  lCopy = l;
  rLCopy = rL;
  if (appropriateCopy && ([MEMORY[0x1E696ACC8] archivedDataWithRootObject:appropriateCopy requiringSecureCoding:1 error:0], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v14 = v13;
    shouldCache = [objc_opt_class() shouldCache];
    if (!lCopy || !shouldCache || ([v14 SHA256Hash], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(objc_opt_class(), "currentVersion"), v18 = objc_msgSend(objc_alloc(MEMORY[0x1E695DF88]), "initWithCapacity:", objc_msgSend(v14, "length") + 48), v31 = 0u, v30 = 0u, v19.f64[0] = width, v19.f64[1] = height, v28[0] = bswap32(v17), v28[1] = bswap32(scale), v29 = vrev32_s8(vmovn_s64(vcvtq_u64_f64(vmulq_n_f64(v19, scale)))), objc_msgSend(v16, "bytes"), objc_msgSend(v16, "length"), __memcpy_chk(), objc_msgSend(v18, "appendBytes:length:", v28, 48), objc_msgSend(v18, "appendData:", v14), objc_msgSend(MEMORY[0x1E696AC08], "defaultManager"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "createDirectoryAtURL:withIntermediateDirectories:attributes:error:", rLCopy, 1, 0, 0), objc_msgSend(v18, "writeToURL:atomically:", lCopy, 1), v21 = PKLoadXPCDataWithURL(lCopy, v17, scale, width, height), v20, v18, v16, !v21))
    {
      v22 = xpc_data_create([v14 bytes], objc_msgSend(v14, "length"));
      if (v22)
      {
        v23 = v22;
        sHA256Hash = [v14 SHA256Hash];
        v21 = [[PKImageSetXPCContainer alloc] initWithWithXPCObject:v23 hash:sHA256Hash];
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

+ (id)_archiveURL:(id)l
{
  lCopy = l;
  archiveName = [self archiveName];
  if (archiveName)
  {
    v6 = [lCopy URLByAppendingPathComponent:archiveName isDirectory:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_isSetImage:(id)image equalToImage:(id)toImage
{
  imageCopy = image;
  toImageCopy = toImage;
  v7 = toImageCopy;
  if (imageCopy == toImageCopy)
  {
    v10 = 1;
  }

  else if (toImageCopy)
  {
    imageHash = [imageCopy imageHash];
    imageHash2 = [v7 imageHash];
    v10 = [imageHash isEqual:imageHash2];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (PKImageSet)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKImageSet;
  v5 = [(PKImageSet *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originCacheURL"];
    originCacheURL = v5->_originCacheURL;
    v5->_originCacheURL = v6;

    v5->_version = [coderCopy decodeIntegerForKey:@"version"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  originCacheURL = self->_originCacheURL;
  coderCopy = coder;
  [coderCopy encodeObject:originCacheURL forKey:@"originCacheURL"];
  [coderCopy encodeInteger:self->_version forKey:@"version"];
}

@end