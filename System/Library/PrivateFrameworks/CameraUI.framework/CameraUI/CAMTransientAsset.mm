@interface CAMTransientAsset
- (BOOL)isLivePhoto;
- (CAMTransientAsset)init;
- (CAMTransientAsset)initWithAsset:(id)asset convertible:(id)convertible;
- (CAMTransientAsset)initWithAsset:(id)asset uuid:(id)uuid;
- (CAMTransientAsset)initWithUUID:(id)d;
- (NSString)description;
- (double)aspectRatio;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)playbackStyle;
- (unint64_t)isContentEqualTo:(id)to;
- (void)_populateStillImageTransientAssetFromConvertible:(id)convertible;
- (void)_populateVideoTransientAssetFromConvertible:(id)convertible;
@end

@implementation CAMTransientAsset

- (int64_t)playbackStyle
{
  mediaType = [(CAMTransientAsset *)self mediaType];
  if (!mediaType || mediaType == 3)
  {
    return 0;
  }

  if (mediaType != 1)
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

  pixelWidth = [(CAMTransientAsset *)self pixelWidth];
  return pixelWidth / [(CAMTransientAsset *)self pixelHeight];
}

- (BOOL)isLivePhoto
{
  if ([(CAMTransientAsset *)self canPlayPhotoIris])
  {
    return 1;
  }

  return [(CAMTransientAsset *)self isPhotoIrisPlaceholder];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CAMTransientAsset alloc];
  uuid = [(CAMTransientAsset *)self uuid];
  v6 = [(CAMTransientAsset *)v4 initWithAsset:self uuid:uuid];

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  uuid = [(CAMTransientAsset *)self uuid];
  creationDate = [(CAMTransientAsset *)self creationDate];
  creationDate2 = [(CAMTransientAsset *)self creationDate];
  [creationDate2 timeIntervalSince1970];
  v9 = v8;
  modificationDate = [(CAMTransientAsset *)self modificationDate];
  modificationDate2 = [(CAMTransientAsset *)self modificationDate];
  [modificationDate2 timeIntervalSince1970];
  v13 = v12;
  representsBurst = [(CAMTransientAsset *)self representsBurst];
  if (representsBurst)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"YES, %ld frames", -[CAMTransientAsset numberOfRepresentedAssets](self, "numberOfRepresentedAssets")];
  }

  else
  {
    v15 = @"NO";
  }

  burstIdentifier = [(CAMTransientAsset *)self burstIdentifier];
  v17 = [v3 stringWithFormat:@"<%@ uuid:%@ creationDate:%@ (%.6f) modificationDate:%@ (%.3f) burst:%@ burstIdentifier:%@>", v4, uuid, creationDate, v9, modificationDate, v13, v15, burstIdentifier];

  if (representsBurst)
  {
  }

  return v17;
}

- (CAMTransientAsset)init
{
  [(CAMTransientAsset *)self doesNotRecognizeSelector:a2];

  return [(CAMTransientAsset *)self initWithUUID:&stru_1F1660A30];
}

- (CAMTransientAsset)initWithUUID:(id)d
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = CAMTransientAsset;
  v5 = [(CAMTransientAsset *)&v10 init];
  if (v5)
  {
    v6 = [dCopy copy];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v5->_mediaType = 0;
    v8 = v5;
  }

  return v5;
}

- (CAMTransientAsset)initWithAsset:(id)asset uuid:(id)uuid
{
  assetCopy = asset;
  v7 = [(CAMTransientAsset *)self initWithUUID:uuid];
  if (v7)
  {
    v7->_mediaType = [assetCopy mediaType];
    v7->_mediaSubtypes = [assetCopy mediaSubtypes];
    v7->_pixelWidth = [assetCopy pixelWidth];
    v7->_pixelHeight = [assetCopy pixelHeight];
    [assetCopy duration];
    v7->_duration = v8;
    creationDate = [assetCopy creationDate];
    creationDate = v7->_creationDate;
    v7->_creationDate = creationDate;

    modificationDate = [assetCopy modificationDate];
    modificationDate = v7->_modificationDate;
    v7->_modificationDate = modificationDate;

    v7->_playbackVariation = [assetCopy playbackVariation];
    v7->_canPlayPhotoIris = [assetCopy canPlayPhotoIris];
    if (assetCopy)
    {
      [assetCopy photoIrisStillDisplayTime];
      *&v7->_photoIrisStillDisplayTime.value = v17;
      v7->_photoIrisStillDisplayTime.epoch = v18;
      [assetCopy photoIrisVideoDuration];
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
    placeholderImage = [assetCopy placeholderImage];
    placeholderImage = v7->_placeholderImage;
    v7->_placeholderImage = placeholderImage;

    v7->_isTemporaryPlaceholder = [assetCopy isTemporaryPlaceholder];
    v15 = v7;
  }

  return v7;
}

- (void)_populateStillImageTransientAssetFromConvertible:(id)convertible
{
  convertibleCopy = convertible;
  [convertibleCopy finalExpectedPixelSize];
  self->_pixelWidth = v5;
  [convertibleCopy finalExpectedPixelSize];
  self->_pixelHeight = v6;
  captureDate = [convertibleCopy captureDate];
  objc_storeStrong(&self->_creationDate, captureDate);
  objc_storeStrong(&self->_modificationDate, captureDate);
  localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
  v9 = [localTimeZone secondsFromGMTForDate:captureDate];

  v10 = [captureDate dateByAddingTimeInterval:v9];
  localCreationDate = self->_localCreationDate;
  self->_localCreationDate = v10;

  burstIdentifier = [convertibleCopy burstIdentifier];
  self->_numberOfRepresentedAssets = [convertibleCopy numberOfRepresentedAssets];
  self->_representsBurst = burstIdentifier != 0;
  objc_storeStrong(&self->_burstIdentifier, burstIdentifier);
  v13 = self->_mediaSubtypes | [convertibleCopy mediaSubtypes];
  self->_mediaSubtypes = v13;
  self->_HDR = (v13 & 2) != 0;
  placeholderImage = [convertibleCopy placeholderImage];
  [(UIImage *)self->_placeholderImage size];
  v16 = v15;
  v18 = v17;
  [placeholderImage size];
  if (v20 > v16 && v19 > v18)
  {
    objc_storeStrong(&self->_placeholderImage, placeholderImage);
  }

  if ([convertibleCopy isExpectingPairedVideo])
  {
    self->_canPlayPhotoIris = 1;
    self->_mediaSubtypes |= 8uLL;
    self->_isPhotoIrisPlaceholder = 1;
    if (convertibleCopy)
    {
      [convertibleCopy irisStillDisplayTime];
      *&self->_photoIrisStillDisplayTime.value = v21;
      self->_photoIrisStillDisplayTime.epoch = v22;
      [convertibleCopy duration];
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

- (void)_populateVideoTransientAssetFromConvertible:(id)convertible
{
  convertibleCopy = convertible;
  isTransientAssetTemporaryPlaceholder = [convertibleCopy isTransientAssetTemporaryPlaceholder];
  placeholderImage = [convertibleCopy placeholderImage];

  if (placeholderImage)
  {
    placeholderImage2 = [convertibleCopy placeholderImage];
    placeholderImage = self->_placeholderImage;
    self->_placeholderImage = placeholderImage2;
  }

  persistenceURL = [convertibleCopy persistenceURL];
  v10 = persistenceURL;
  if ((isTransientAssetTemporaryPlaceholder & 1) == 0)
  {
    v11 = [persistenceURL copy];
    persistenceURL = self->_persistenceURL;
    self->_persistenceURL = v11;
  }

  [convertibleCopy finalExpectedPixelSize];
  if (v13 == 0.0 || (height = v14, v14 == 0.0))
  {
    v17 = [MEMORY[0x1E6988168] assetWithURL:v10];
    v18 = [v17 tracksWithMediaType:*MEMORY[0x1E6987608]];
    firstObject = [v18 firstObject];

    if (firstObject)
    {
      v20 = *MEMORY[0x1E695EFF8];
      v21 = *(MEMORY[0x1E695EFF8] + 8);
      [firstObject naturalSize];
      v23 = v22;
      v25 = v24;
      [firstObject preferredTransform];
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

  if ((isTransientAssetTemporaryPlaceholder & 1) == 0)
  {
    if (convertibleCopy)
    {
      [convertibleCopy duration];
    }

    else
    {
      memset(&v32, 0, 24);
    }

    self->_duration = CMTimeGetSeconds(&v32);
  }

  captureDate = [convertibleCopy captureDate];
  objc_storeStrong(&self->_creationDate, captureDate);
  modificationDate = self->_modificationDate;
  self->_modificationDate = captureDate;
  v30 = captureDate;

  self->_representsBurst = 0;
  burstIdentifier = self->_burstIdentifier;
  self->_burstIdentifier = 0;

  self->_numberOfRepresentedAssets = 0;
}

- (CAMTransientAsset)initWithAsset:(id)asset convertible:(id)convertible
{
  v17 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  convertibleCopy = convertible;
  v8 = convertibleCopy;
  if (assetCopy)
  {
    convertibleCopy = assetCopy;
  }

  uuid = [convertibleCopy uuid];
  v10 = [(CAMTransientAsset *)self initWithAsset:assetCopy uuid:uuid];
  if (v10)
  {
    mediaType = [assetCopy mediaType];
    if (!mediaType)
    {
      mediaType = [v8 mediaType];
      v10->_mediaType = mediaType;
    }

    v10->_isTemporaryPlaceholder = [v8 isTransientAssetTemporaryPlaceholder];
    if (mediaType <= 1)
    {
      if (mediaType)
      {
        if (mediaType == 1)
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
        v16 = mediaType;
        _os_log_impl(&dword_1A3640000, v12, OS_LOG_TYPE_DEFAULT, "Attempting to populate a transient asset for an unsupported media type %ld", &v15, 0xCu);
      }

      goto LABEL_16;
    }

    if (mediaType == 2)
    {
      [(CAMTransientAsset *)v10 _populateVideoTransientAssetFromConvertible:v8];
    }

    else if (mediaType == 3)
    {
      goto LABEL_12;
    }

LABEL_16:
    v13 = v10;
  }

  return v10;
}

- (unint64_t)isContentEqualTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (toCopy == self)
  {
    goto LABEL_14;
  }

  uuid = [(CAMTransientAsset *)toCopy uuid];
  uuid2 = [(CAMTransientAsset *)self uuid];
  v8 = [uuid isEqualToString:uuid2];

  if (!v8)
  {
    v11 = v5 == 0;
    goto LABEL_15;
  }

  mediaType = [(CAMTransientAsset *)self mediaType];
  canPlayPhotoIris = [(CAMTransientAsset *)self canPlayPhotoIris];
  if (mediaType == 2 || canPlayPhotoIris)
  {
    persistenceURL = [(CAMTransientAsset *)self persistenceURL];
    if (persistenceURL || (objc_opt_respondsToSelector() & 1) == 0)
    {
    }

    else
    {
      persistenceURL2 = [(CAMTransientAsset *)v5 persistenceURL];

      if (persistenceURL2)
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