@interface CAMTransientAsset
- (BOOL)isLivePhoto;
- (CAMTransientAsset)init;
- (CAMTransientAsset)initWithAsset:(id)a3 convertible:(id)a4;
- (CAMTransientAsset)initWithAsset:(id)a3 uuid:(id)a4;
- (CAMTransientAsset)initWithUUID:(id)a3;
- (NSString)description;
- (double)aspectRatio;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)playbackStyle;
- (unint64_t)isContentEqualTo:(id)a3;
- (void)_populateStillImageTransientAssetFromConvertible:(id)a3;
- (void)_populateVideoTransientAssetFromConvertible:(id)a3;
@end

@implementation CAMTransientAsset

- (int64_t)playbackStyle
{
  v3 = [(CAMTransientAsset *)self mediaType];
  if (!v3 || v3 == 3)
  {
    return 0;
  }

  if (v3 != 1)
  {
    return 4;
  }

  if ([(CAMTransientAsset *)self isLivePhoto])
  {
    return 3;
  }

  return 1;
}

- (double)aspectRatio
{
  if (![(CAMTransientAsset *)self pixelHeight])
  {
    return 1.0;
  }

  v3 = [(CAMTransientAsset *)self pixelWidth];
  return v3 / [(CAMTransientAsset *)self pixelHeight];
}

- (BOOL)isLivePhoto
{
  if ([(CAMTransientAsset *)self canPlayPhotoIris])
  {
    return 1;
  }

  return [(CAMTransientAsset *)self isPhotoIrisPlaceholder];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CAMTransientAsset alloc];
  v5 = [(CAMTransientAsset *)self uuid];
  v6 = [(CAMTransientAsset *)v4 initWithAsset:self uuid:v5];

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(CAMTransientAsset *)self uuid];
  v6 = [(CAMTransientAsset *)self creationDate];
  v7 = [(CAMTransientAsset *)self creationDate];
  [v7 timeIntervalSince1970];
  v9 = v8;
  v10 = [(CAMTransientAsset *)self modificationDate];
  v11 = [(CAMTransientAsset *)self modificationDate];
  [v11 timeIntervalSince1970];
  v13 = v12;
  v14 = [(CAMTransientAsset *)self representsBurst];
  if (v14)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"YES, %ld frames", -[CAMTransientAsset numberOfRepresentedAssets](self, "numberOfRepresentedAssets")];
  }

  else
  {
    v15 = @"NO";
  }

  v16 = [(CAMTransientAsset *)self burstIdentifier];
  v17 = [v3 stringWithFormat:@"<%@ uuid:%@ creationDate:%@ (%.6f) modificationDate:%@ (%.3f) burst:%@ burstIdentifier:%@>", v4, v5, v6, v9, v10, v13, v15, v16];

  if (v14)
  {
  }

  return v17;
}

- (CAMTransientAsset)init
{
  [(CAMTransientAsset *)self doesNotRecognizeSelector:a2];

  return [(CAMTransientAsset *)self initWithUUID:&stru_1F1660A30];
}

- (CAMTransientAsset)initWithUUID:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CAMTransientAsset;
  v5 = [(CAMTransientAsset *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v5->_mediaType = 0;
    v8 = v5;
  }

  return v5;
}

- (CAMTransientAsset)initWithAsset:(id)a3 uuid:(id)a4
{
  v6 = a3;
  v7 = [(CAMTransientAsset *)self initWithUUID:a4];
  if (v7)
  {
    v7->_mediaType = [v6 mediaType];
    v7->_mediaSubtypes = [v6 mediaSubtypes];
    v7->_pixelWidth = [v6 pixelWidth];
    v7->_pixelHeight = [v6 pixelHeight];
    [v6 duration];
    v7->_duration = v8;
    v9 = [v6 creationDate];
    creationDate = v7->_creationDate;
    v7->_creationDate = v9;

    v11 = [v6 modificationDate];
    modificationDate = v7->_modificationDate;
    v7->_modificationDate = v11;

    v7->_playbackVariation = [v6 playbackVariation];
    v7->_canPlayPhotoIris = [v6 canPlayPhotoIris];
    if (v6)
    {
      [v6 photoIrisStillDisplayTime];
      *&v7->_photoIrisStillDisplayTime.value = v17;
      v7->_photoIrisStillDisplayTime.epoch = v18;
      [v6 photoIrisVideoDuration];
    }

    else
    {
      v7->_photoIrisStillDisplayTime.value = 0;
      *&v7->_photoIrisStillDisplayTime.timescale = 0;
      v7->_photoIrisStillDisplayTime.epoch = 0;
      v17 = 0uLL;
      v18 = 0;
    }

    *&v7->_photoIrisVideoDuration.value = v17;
    v7->_photoIrisVideoDuration.epoch = v18;
    v13 = [v6 placeholderImage];
    placeholderImage = v7->_placeholderImage;
    v7->_placeholderImage = v13;

    v7->_isTemporaryPlaceholder = [v6 isTemporaryPlaceholder];
    v15 = v7;
  }

  return v7;
}

- (void)_populateStillImageTransientAssetFromConvertible:(id)a3
{
  v4 = a3;
  [v4 finalExpectedPixelSize];
  self->_pixelWidth = v5;
  [v4 finalExpectedPixelSize];
  self->_pixelHeight = v6;
  v7 = [v4 captureDate];
  objc_storeStrong(&self->_creationDate, v7);
  objc_storeStrong(&self->_modificationDate, v7);
  v8 = [MEMORY[0x1E695DFE8] localTimeZone];
  v9 = [v8 secondsFromGMTForDate:v7];

  v10 = [v7 dateByAddingTimeInterval:v9];
  localCreationDate = self->_localCreationDate;
  self->_localCreationDate = v10;

  v12 = [v4 burstIdentifier];
  self->_numberOfRepresentedAssets = [v4 numberOfRepresentedAssets];
  self->_representsBurst = v12 != 0;
  objc_storeStrong(&self->_burstIdentifier, v12);
  v13 = self->_mediaSubtypes | [v4 mediaSubtypes];
  self->_mediaSubtypes = v13;
  self->_HDR = (v13 & 2) != 0;
  v14 = [v4 placeholderImage];
  [(UIImage *)self->_placeholderImage size];
  v16 = v15;
  v18 = v17;
  [v14 size];
  if (v20 > v16 && v19 > v18)
  {
    objc_storeStrong(&self->_placeholderImage, v14);
  }

  if ([v4 isExpectingPairedVideo])
  {
    self->_canPlayPhotoIris = 1;
    self->_mediaSubtypes |= 8uLL;
    self->_isPhotoIrisPlaceholder = 1;
    if (v4)
    {
      [v4 irisStillDisplayTime];
      *&self->_photoIrisStillDisplayTime.value = v21;
      self->_photoIrisStillDisplayTime.epoch = v22;
      [v4 duration];
    }

    else
    {
      self->_photoIrisStillDisplayTime.value = 0;
      *&self->_photoIrisStillDisplayTime.timescale = 0;
      self->_photoIrisStillDisplayTime.epoch = 0;
      v21 = 0uLL;
      v22 = 0;
    }

    *&self->_photoIrisVideoDuration.value = v21;
    self->_photoIrisVideoDuration.epoch = v22;
  }
}

- (void)_populateVideoTransientAssetFromConvertible:(id)a3
{
  v4 = a3;
  v5 = [v4 isTransientAssetTemporaryPlaceholder];
  v6 = [v4 placeholderImage];

  if (v6)
  {
    v7 = [v4 placeholderImage];
    placeholderImage = self->_placeholderImage;
    self->_placeholderImage = v7;
  }

  v9 = [v4 persistenceURL];
  v10 = v9;
  if ((v5 & 1) == 0)
  {
    v11 = [v9 copy];
    persistenceURL = self->_persistenceURL;
    self->_persistenceURL = v11;
  }

  [v4 finalExpectedPixelSize];
  if (v13 == 0.0 || (height = v14, v14 == 0.0))
  {
    v17 = [MEMORY[0x1E6988168] assetWithURL:v10];
    v18 = [v17 tracksWithMediaType:*MEMORY[0x1E6987608]];
    v19 = [v18 firstObject];

    if (v19)
    {
      v20 = *MEMORY[0x1E695EFF8];
      v21 = *(MEMORY[0x1E695EFF8] + 8);
      [v19 naturalSize];
      v23 = v22;
      v25 = v24;
      [v19 preferredTransform];
      v33.origin.x = v20;
      v33.origin.y = v21;
      v33.size.width = v23;
      v33.size.height = v25;
      v34 = CGRectApplyAffineTransform(v33, &v32);
      v34.origin.x = 0.0;
      v34.origin.y = 0.0;
      v35 = CGRectStandardize(v34);
      width = v35.size.width;
      height = v35.size.height;
    }

    else
    {
      [(UIImage *)self->_placeholderImage size];
      width = v26;
      height = v27;
    }
  }

  else
  {
    width = v13;
  }

  if (width > 0.0 && height > 0.0)
  {
    self->_pixelWidth = width;
    self->_pixelHeight = height;
  }

  if ((v5 & 1) == 0)
  {
    if (v4)
    {
      [v4 duration];
    }

    else
    {
      memset(&v32, 0, 24);
    }

    self->_duration = CMTimeGetSeconds(&v32);
  }

  v28 = [v4 captureDate];
  objc_storeStrong(&self->_creationDate, v28);
  modificationDate = self->_modificationDate;
  self->_modificationDate = v28;
  v30 = v28;

  self->_representsBurst = 0;
  burstIdentifier = self->_burstIdentifier;
  self->_burstIdentifier = 0;

  self->_numberOfRepresentedAssets = 0;
}

- (CAMTransientAsset)initWithAsset:(id)a3 convertible:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v7 = v6;
  }

  v9 = [v7 uuid];
  v10 = [(CAMTransientAsset *)self initWithAsset:v6 uuid:v9];
  if (v10)
  {
    v11 = [v6 mediaType];
    if (!v11)
    {
      v11 = [v8 mediaType];
      v10->_mediaType = v11;
    }

    v10->_isTemporaryPlaceholder = [v8 isTransientAssetTemporaryPlaceholder];
    if (v11 <= 1)
    {
      if (v11)
      {
        if (v11 == 1)
        {
          [(CAMTransientAsset *)v10 _populateStillImageTransientAssetFromConvertible:v8];
        }

        goto LABEL_16;
      }

LABEL_12:
      v12 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 134217984;
        v16 = v11;
        _os_log_impl(&dword_1A3640000, v12, OS_LOG_TYPE_DEFAULT, "Attempting to populate a transient asset for an unsupported media type %ld", &v15, 0xCu);
      }

      goto LABEL_16;
    }

    if (v11 == 2)
    {
      [(CAMTransientAsset *)v10 _populateVideoTransientAssetFromConvertible:v8];
    }

    else if (v11 == 3)
    {
      goto LABEL_12;
    }

LABEL_16:
    v13 = v10;
  }

  return v10;
}

- (unint64_t)isContentEqualTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    goto LABEL_14;
  }

  v6 = [(CAMTransientAsset *)v4 uuid];
  v7 = [(CAMTransientAsset *)self uuid];
  v8 = [v6 isEqualToString:v7];

  if (!v8)
  {
    v11 = v5 == 0;
    goto LABEL_15;
  }

  v9 = [(CAMTransientAsset *)self mediaType];
  v10 = [(CAMTransientAsset *)self canPlayPhotoIris];
  if (v9 == 2 || v10)
  {
    v12 = [(CAMTransientAsset *)self persistenceURL];
    if (v12 || (objc_opt_respondsToSelector() & 1) == 0)
    {
    }

    else
    {
      v13 = [(CAMTransientAsset *)v5 persistenceURL];

      if (v13)
      {
        goto LABEL_5;
      }
    }

    if ([(CAMTransientAsset *)self isTemporaryPlaceholder])
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_5;
      }
    }

LABEL_14:
    v11 = 2;
    goto LABEL_15;
  }

LABEL_5:
  v11 = 1;
LABEL_15:

  return v11;
}

@end