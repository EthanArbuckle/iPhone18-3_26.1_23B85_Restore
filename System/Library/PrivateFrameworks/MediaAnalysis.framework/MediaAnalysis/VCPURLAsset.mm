@interface VCPURLAsset
+ (id)imageAssetWithURL:(id)l;
+ (id)livePhotoAssetWithImageURL:(id)l andMovieURL:(id)rL;
+ (id)movieAssetWithURL:(id)l;
+ (id)sdofImageAssetWithURL:(id)l;
- ($AFC8CF76A46F37F9FB23C20884F4FD99)slomoRange;
- (VCPURLAsset)initWithImageURL:(id)l andMovieURL:(id)rL;
- (VCPURLAsset)initWithImageURL:(id)l isSDOF:(BOOL)f;
- (VCPURLAsset)initWithMovieURL:(id)l;
- (__CVBuffer)imageWithPreferredDimension:(unint64_t)dimension;
- (__CVBuffer)imageWithPreferredDimension:(unint64_t)dimension orientation:(unsigned int *)orientation;
- (double)duration;
- (float)photoOffsetSeconds;
- (float)slowmoRate;
- (id)exif;
- (id)mainFileURL;
- (id)modificationDate;
- (id)scenes;
@end

@implementation VCPURLAsset

- (id)modificationDate
{
  if ([(VCPAsset *)self isMovie])
  {
    v3 = [(AVURLAsset *)self->_movie URL];
  }

  else
  {
    v3 = self->_imageURL;
  }

  v4 = v3;
  v8 = 0;
  [(NSURL *)v3 getResourceValue:&v8 forKey:*MEMORY[0x1E695DA98] error:0];
  v5 = v8;
  v6 = v8;

  return v5;
}

- (id)mainFileURL
{
  if ([(VCPAsset *)self isMovie])
  {
    v3 = [(AVURLAsset *)self->_movie URL];
  }

  else
  {
    v3 = self->_imageURL;
  }

  return v3;
}

- (id)scenes
{
  v35[1] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_onceScenes)
  {
    v29 = 0;
  }

  else
  {
    selfCopy->_onceScenes = 1;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    cachedScenes = selfCopy->_cachedScenes;
    selfCopy->_cachedScenes = dictionary;

    array = [MEMORY[0x1E695DF70] array];
    v6 = objc_autoreleasePoolPush();
    v7 = objc_alloc(MEMORY[0x1E69845B8]);
    v8 = [v7 initWithURL:selfCopy->_imageURL options:MEMORY[0x1E695E0F8]];
    if (v8)
    {
      v9 = objc_alloc_init(MEMORY[0x1E6984668]);
      v10 = v9;
      if (v9 && ([v9 setPreferBackgroundProcessing:1], objc_msgSend(v10, "setRevision:", 2), v35[0] = v10, objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v35, 1), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v8, "performRequests:error:", v11, 0), v11, (v12 & 1) != 0))
      {
        results = [v10 results];
        v14 = results == 0;

        if (!v14)
        {
          results2 = [v10 results];
          [array addObjectsFromArray:results2];
        }

        v16 = 0;
        v29 = 0;
      }

      else
      {
        v29 = -18;
        v16 = 4;
      }
    }

    else
    {
      v29 = -108;
      v16 = 4;
    }

    objc_autoreleasePoolPop(v6);
    if (v16)
    {

      objc_sync_exit(selfCopy);
      goto LABEL_27;
    }

    if ([array count])
    {
      if ([array count] >= 0xB)
      {
        [array sortUsingComparator:&__block_literal_global_38];
        v17 = [array subarrayWithRange:{0, 10}];
        v18 = [v17 mutableCopy];

        array = v18;
      }

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      array = array;
      v19 = [array countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v19)
      {
        v20 = *v31;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v31 != v20)
            {
              objc_enumerationMutation(array);
            }

            v22 = *(*(&v30 + 1) + 8 * i);
            v23 = selfCopy->_cachedScenes;
            v24 = MEMORY[0x1E696AD98];
            [v22 confidence];
            v25 = [v24 numberWithFloat:?];
            identifier = [v22 identifier];
            [(NSMutableDictionary *)v23 setObject:v25 forKey:identifier];
          }

          v19 = [array countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v19);
      }
    }
  }

  objc_sync_exit(selfCopy);

LABEL_27:
  if (v29)
  {
    v27 = 0;
  }

  else
  {
    v27 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:selfCopy->_cachedScenes];
  }

  return v27;
}

uint64_t __21__VCPURLAsset_scenes__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 confidence];
  v7 = v6;
  [v5 confidence];
  if (v7 <= v8)
  {
    [v4 confidence];
    v11 = v10;
    [v5 confidence];
    v9 = v11 < v12;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

- (VCPURLAsset)initWithImageURL:(id)l isSDOF:(BOOL)f
{
  fCopy = f;
  lCopy = l;
  v7 = CGImageSourceCreateWithURL(lCopy, 0);
  if (!v7)
  {
    v18 = 0;
    goto LABEL_23;
  }

  v24.receiver = self;
  v24.super_class = VCPURLAsset;
  v8 = [(VCPURLAsset *)&v24 init];
  self = v8;
  if (v8)
  {
    v9 = [(__CFURL *)lCopy copy];
    imageURL = v8->_imageURL;
    v8->_imageURL = v9;

    v8->_mediaType = 1;
    Size = CGImageSourceGetSize(v7);
    p_pixelWidth = &v8->_pixelWidth;
    v8->_pixelWidth = Size;
    v14 = v13;
    v8->_pixelHeight = v13;
    pixelWidth = v8->_pixelWidth;
    if (pixelWidth)
    {
      v16 = v14 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      v17 = 0;
      goto LABEL_20;
    }

    v19 = pixelWidth > v14;
    if (pixelWidth >= v14)
    {
      p_pixelHeight = &v8->_pixelWidth;
    }

    else
    {
      p_pixelHeight = &v8->_pixelHeight;
    }

    v21 = *p_pixelHeight;
    if (v19)
    {
      p_pixelWidth = &v8->_pixelHeight;
    }

    if (v21 > 2 * *p_pixelWidth)
    {
      v8->_mediaSubtypes |= 1uLL;
    }

    if (fCopy)
    {
      v8->_mediaSubtypes |= 0x10uLL;
    }
  }

  v17 = 1;
LABEL_20:
  CFRelease(v7);
  if (v17)
  {
    v18 = v8;
  }

  else
  {
    v18 = 0;
  }

LABEL_23:
  v22 = v18;

  return v22;
}

+ (id)imageAssetWithURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v4 = [objc_alloc(objc_opt_class()) initWithImageURL:lCopy isSDOF:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)sdofImageAssetWithURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v4 = [objc_alloc(objc_opt_class()) initWithImageURL:lCopy isSDOF:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)exif
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_onceExif)
  {
    v3 = [MEMORY[0x1E695DF20] vcp_exifFromImageURL:selfCopy->_imageURL];
    cachedExif = selfCopy->_cachedExif;
    selfCopy->_cachedExif = v3;

    selfCopy->_onceExif = 1;
  }

  objc_sync_exit(selfCopy);

  v5 = selfCopy->_cachedExif;

  return v5;
}

- (__CVBuffer)imageWithPreferredDimension:(unint64_t)dimension
{
  v5 = +[VCPImageManager sharedImageManager];
  v6 = [v5 pixelBufferWithFormat:875704422 andMaxDimension:dimension fromImageURL:self->_imageURL];

  return v6;
}

- (__CVBuffer)imageWithPreferredDimension:(unint64_t)dimension orientation:(unsigned int *)orientation
{
  v7 = +[VCPImageManager sharedImageManager];
  v8 = [v7 pixelBufferWithFormat:875704422 andMaxDimension:dimension fromImageURL:self->_imageURL orientation:orientation];

  return v8;
}

- (VCPURLAsset)initWithImageURL:(id)l andMovieURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v8 = CGImageSourceCreateWithURL(lCopy, 0);
  if (v8)
  {
    v20.receiver = self;
    v20.super_class = VCPURLAsset;
    v9 = [(VCPURLAsset *)&v20 init];
    self = v9;
    if (v9)
    {
      v10 = [(__CFURL *)lCopy copy];
      imageURL = v9->_imageURL;
      v9->_imageURL = v10;

      v9->_mediaType = 1;
      v9->_mediaSubtypes = 8;
      v9->_pixelWidth = CGImageSourceGetSize(v8);
      v9->_pixelHeight = v12;
      if (v9->_pixelWidth)
      {
        v13 = v12 == 0;
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
        v17 = 0;
      }

      else
      {
        v15 = [MEMORY[0x1E6988168] assetWithURL:rLCopy];
        movie = v9->_movie;
        v9->_movie = v15;

        v17 = v9->_movie != 0;
      }
    }

    else
    {
      v17 = 1;
    }

    CFRelease(v8);
    if (v17)
    {
      v14 = v9;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v18 = v14;

  return v18;
}

+ (id)livePhotoAssetWithImageURL:(id)l andMovieURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v7 = rLCopy;
  v8 = 0;
  if (lCopy && rLCopy)
  {
    v8 = [objc_alloc(objc_opt_class()) initWithImageURL:lCopy andMovieURL:rLCopy];
  }

  return v8;
}

- (float)photoOffsetSeconds
{
  isLivePhoto = [(VCPAsset *)self isLivePhoto];
  v4 = 0.0;
  if (isLivePhoto)
  {
    memset(&v9, 0, sizeof(v9));
    movie = self->_movie;
    if (movie && ([(AVURLAsset *)movie vcp_livePhotoStillDisplayTime], (v9.flags & 1) != 0))
    {
      time = v9;
      *&v4 = CMTimeGetSeconds(&time);
    }

    else
    {
      v7.receiver = self;
      v7.super_class = VCPURLAsset;
      [(VCPAsset *)&v7 photoOffsetSeconds];
    }
  }

  return *&v4;
}

- (VCPURLAsset)initWithMovieURL:(id)l
{
  lCopy = l;
  v25.receiver = self;
  v25.super_class = VCPURLAsset;
  v5 = [(VCPURLAsset *)&v25 init];
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = objc_autoreleasePoolPush();
  v5->_mediaType = 2;
  v7 = [MEMORY[0x1E6988168] assetWithURL:lCopy];
  movie = v5->_movie;
  v5->_movie = v7;

  v9 = v5->_movie;
  if (v9)
  {
    v10 = [(AVURLAsset *)v9 vcp_firstEnabledTrackWithMediaType:*MEMORY[0x1E6987608]];
    v11 = v10;
    v12 = v10 != 0;
    if (v10)
    {
      [v10 naturalSize];
      v14 = v13;
      v16 = v15;
      [v11 preferredTransform];
      v5->_pixelWidth = fabs(v16 * v23 + v21 * v14);
      v5->_pixelHeight = fabs(v16 * v24 + v22 * v14);
      [v11 nominalFrameRate];
      v17 = 0;
      if (v18 >= 120.0)
      {
        v5->_mediaSubtypes |= 0x20000uLL;
      }
    }

    else
    {
      v17 = 4;
    }
  }

  else
  {
    v12 = 0;
    v17 = 4;
  }

  objc_autoreleasePoolPop(v6);
  if ((v17 | 4) == 4)
  {
    if (!v12)
    {
      v19 = 0;
      goto LABEL_14;
    }

LABEL_11:
    v19 = v5;
LABEL_14:
    v6 = v19;
  }

  return v6;
}

+ (id)movieAssetWithURL:(id)l
{
  lCopy = l;
  v4 = [objc_alloc(objc_opt_class()) initWithMovieURL:lCopy];

  return v4;
}

- (double)duration
{
  movie = self->_movie;
  if (movie)
  {
    [(AVURLAsset *)movie duration];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  return CMTimeGetSeconds(&time);
}

- (float)slowmoRate
{
  v3 = 1.0;
  if ([(VCPAsset *)self isSlowmo])
  {
    v4 = [(AVURLAsset *)self->_movie vcp_firstEnabledTrackWithMediaType:*MEMORY[0x1E6987608]];
    [v4 nominalFrameRate];
    v3 = 30.0 / v5;
  }

  return v3;
}

- ($AFC8CF76A46F37F9FB23C20884F4FD99)slomoRange
{
  v3 = MEMORY[0x1E6960C98];
  v4 = *(MEMORY[0x1E6960C98] + 16);
  *&retstr->var0.var0 = *MEMORY[0x1E6960C98];
  *&retstr->var0.var3 = v4;
  *&retstr->var1.var1 = *(v3 + 32);
  return self;
}

@end