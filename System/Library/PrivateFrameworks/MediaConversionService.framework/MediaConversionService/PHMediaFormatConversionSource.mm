@interface PHMediaFormatConversionSource
+ (id)sourceForFileURL:(id)l;
+ (id)sourceForFileURL:(id)l mediaType:(int64_t)type imageDimensions:(CGSize)dimensions;
- (BOOL)checkForIsHDR;
- (BOOL)containsHEVCVideo;
- (BOOL)determineMediaTypeFromPathExtensionWithError:(id *)error;
- (BOOL)preflightWithError:(id *)error;
- (CGSize)imageDimensions;
- (NSString)livePhotoPairingIdentifier;
- (PFMetadata)metadata;
- (int64_t)sourceAccessibilityDescriptionMetadataStatus;
- (int64_t)sourceCaptionMetadataStatus;
- (int64_t)sourceLocationMetadataStatus;
- (void)checkForAccessibilityDescriptionData;
- (void)checkForCaptionData;
- (void)checkForImageEligibleForTranscoding;
- (void)checkForLivePhotoPairingIdentifier;
- (void)checkForLocationData;
- (void)checkForVideoEligibleForTranscoding;
- (void)markContainsVideoEligibleForTranscodingAsCheckedWithValue:(BOOL)value codec:(unsigned int)codec isProRes:(BOOL)res;
- (void)markLivePhotoPairingIdentifierAsCheckedWithValue:(id)value;
@end

@implementation PHMediaFormatConversionSource

- (CGSize)imageDimensions
{
  objc_copyStruct(v4, &self->_imageDimensions, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (NSString)livePhotoPairingIdentifier
{
  if (![(PHMediaFormatConversionSource *)self preflighted])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v7 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:445 description:{@"Source must be preflighted or marked as checked before accessing %@", v7}];
  }

  livePhotoPairingIdentifier = self->_livePhotoPairingIdentifier;

  return livePhotoPairingIdentifier;
}

- (int64_t)sourceAccessibilityDescriptionMetadataStatus
{
  metadata = [(PHMediaFormatConversionSource *)self metadata];
  v3 = metadata;
  if (metadata)
  {
    artworkContentDescription = [metadata artworkContentDescription];
    if (artworkContentDescription)
    {
      v5 = 2;
    }

    else
    {
      v5 = 3;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)checkForAccessibilityDescriptionData
{
  v10 = *MEMORY[0x277D85DE8];
  if (!self->_accessibilityDescriptionMetadataStatus)
  {
    sourceAccessibilityDescriptionMetadataStatus = [(PHMediaFormatConversionSource *)self sourceAccessibilityDescriptionMetadataStatus];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      fileURL = [(PHMediaFormatConversionContent *)self fileURL];
      v6 = 134218242;
      v7 = sourceAccessibilityDescriptionMetadataStatus;
      v8 = 2112;
      v9 = fileURL;
      _os_log_debug_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Read accessibility description metadata status: %ld from file: %@", &v6, 0x16u);
    }

    [(PHMediaFormatConversionSource *)self markAccessibilityDescriptionMetadataAsCheckedWithStatus:sourceAccessibilityDescriptionMetadataStatus];
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (int64_t)sourceCaptionMetadataStatus
{
  metadata = [(PHMediaFormatConversionSource *)self metadata];
  v3 = metadata;
  if (metadata)
  {
    captionAbstract = [metadata captionAbstract];
    if (captionAbstract)
    {
      v5 = 2;
    }

    else
    {
      v5 = 3;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)checkForCaptionData
{
  v10 = *MEMORY[0x277D85DE8];
  if (!self->_captionMetadataStatus)
  {
    sourceCaptionMetadataStatus = [(PHMediaFormatConversionSource *)self sourceCaptionMetadataStatus];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      fileURL = [(PHMediaFormatConversionContent *)self fileURL];
      v6 = 134218242;
      v7 = sourceCaptionMetadataStatus;
      v8 = 2112;
      v9 = fileURL;
      _os_log_debug_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Read caption metadata status: %ld from file: %@", &v6, 0x16u);
    }

    [(PHMediaFormatConversionSource *)self markCaptionMetadataAsCheckedWithStatus:sourceCaptionMetadataStatus];
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (int64_t)sourceLocationMetadataStatus
{
  metadata = [(PHMediaFormatConversionSource *)self metadata];
  v3 = metadata;
  if (metadata)
  {
    gpsLocation = [metadata gpsLocation];
    if (gpsLocation)
    {
      v5 = 2;
    }

    else
    {
      v5 = 3;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)checkForLocationData
{
  v10 = *MEMORY[0x277D85DE8];
  if (!self->_locationMetadataStatus)
  {
    sourceLocationMetadataStatus = [(PHMediaFormatConversionSource *)self sourceLocationMetadataStatus];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      fileURL = [(PHMediaFormatConversionContent *)self fileURL];
      v6 = 134218242;
      v7 = sourceLocationMetadataStatus;
      v8 = 2112;
      v9 = fileURL;
      _os_log_debug_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Read location metadata status: %ld from file: %@", &v6, 0x16u);
    }

    [(PHMediaFormatConversionSource *)self markLocationMetadataAsCheckedWithStatus:sourceLocationMetadataStatus];
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (PFMetadata)metadata
{
  cachedMetadata = self->_cachedMetadata;
  if (!cachedMetadata)
  {
    v4 = objc_alloc(MEMORY[0x277D3B458]);
    fileURL = [(PHMediaFormatConversionContent *)self fileURL];
    v6 = [v4 initWithMediaURL:fileURL options:13 timeZoneLookup:0 shouldCache:1];
    v7 = self->_cachedMetadata;
    self->_cachedMetadata = v6;

    cachedMetadata = self->_cachedMetadata;
  }

  return cachedMetadata;
}

- (void)checkForLivePhotoPairingIdentifier
{
  v13 = *MEMORY[0x277D85DE8];
  if (![(PHMediaFormatConversionSource *)self didCheckForLivePhotoPairingIdentifier])
  {
    metadata = [(PHMediaFormatConversionSource *)self metadata];
    v4 = metadata;
    if (metadata)
    {
      livePhotoPairingIdentifier = [metadata livePhotoPairingIdentifier];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        fileURL = [(PHMediaFormatConversionContent *)self fileURL];
        v9 = 138412546;
        v10 = livePhotoPairingIdentifier;
        v11 = 2112;
        v12 = fileURL;
        _os_log_debug_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Read pairing identifier: %@ from file: %@", &v9, 0x16u);
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        fileURL2 = [(PHMediaFormatConversionContent *)self fileURL];
        v9 = 138412290;
        v10 = fileURL2;
        _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to read pairing identifier from %@", &v9, 0xCu);
      }

      livePhotoPairingIdentifier = 0;
    }

    [(PHMediaFormatConversionSource *)self markLivePhotoPairingIdentifierAsCheckedWithValue:livePhotoPairingIdentifier];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)markLivePhotoPairingIdentifierAsCheckedWithValue:(id)value
{
  valueCopy = value;
  [(PHMediaFormatConversionSource *)self setDidCheckForLivePhotoPairingIdentifier:1];
  [(PHMediaFormatConversionSource *)self setLivePhotoPairingIdentifier:valueCopy];
}

- (BOOL)preflightWithError:(id *)error
{
  if ([(PHMediaFormatConversionSource *)self preflighted])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:299 description:@"Preflight of already preflighted source"];
  }

  [(PHMediaFormatConversionSource *)self setPreflighted:1];
  if ([(PHMediaFormatConversionContent *)self mediaType]|| (v6 = [(PHMediaFormatConversionSource *)self determineMediaTypeFromPathExtensionWithError:error]))
  {
    if ([(PHMediaFormatConversionContent *)self mediaType]== 2)
    {
      [(PHMediaFormatConversionSource *)self checkForImageEligibleForTranscoding];
    }

    else if ([(PHMediaFormatConversionContent *)self mediaType]== 1)
    {
      [(PHMediaFormatConversionSource *)self checkForVideoEligibleForTranscoding];
    }

    [(PHMediaFormatConversionSource *)self checkForIsHDR];
    [(PHMediaFormatConversionSource *)self checkForLivePhotoPairingIdentifier];
    [(PHMediaFormatConversionSource *)self checkForLocationData];
    [(PHMediaFormatConversionSource *)self checkForCaptionData];
    [(PHMediaFormatConversionSource *)self checkForAccessibilityDescriptionData];
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (void)checkForImageEligibleForTranscoding
{
  contentType = [(PFMetadata *)self->_cachedMetadata contentType];

  if (contentType)
  {
    contentType2 = [(PFMetadata *)self->_cachedMetadata contentType];
    self->_containsHEIFImage = [contentType2 conformsToType:*MEMORY[0x277CE1F10]];
  }

  else
  {
    contentType2 = [(PHMediaFormatConversionContent *)self fileURL];
    pathExtension = [contentType2 pathExtension];
    lowercaseString = [pathExtension lowercaseString];
    self->_containsHEIFImage = [&unk_2869A1150 containsObject:lowercaseString];
  }

  contentType3 = [(PFMetadata *)self->_cachedMetadata contentType];
  if (!contentType3)
  {
    v8 = MEMORY[0x277CE1CB8];
    fileURL = [(PHMediaFormatConversionContent *)self fileURL];
    pathExtension2 = [fileURL pathExtension];
    contentType3 = [v8 typeWithFilenameExtension:pathExtension2 conformingToType:*MEMORY[0x277CE1DB0]];
  }

  imageTypesNotWellSupportedForSharing = [MEMORY[0x277D3B508] imageTypesNotWellSupportedForSharing];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __68__PHMediaFormatConversionSource_checkForImageEligibleForTranscoding__block_invoke;
  v15[3] = &unk_27989B650;
  v12 = contentType3;
  v16 = v12;
  v13 = [imageTypesNotWellSupportedForSharing indexOfObjectPassingTest:v15];
  if (([(PFMetadata *)self->_cachedMetadata isHDR_TS22028]& 1) != 0)
  {
    isHDR_ExtendedRange = 1;
  }

  else
  {
    isHDR_ExtendedRange = [(PFMetadata *)self->_cachedMetadata isHDR_ExtendedRange];
  }

  self->_containsImageWithFormatEligibleForTranscoding = (v13 != 0x7FFFFFFFFFFFFFFFLL) | isHDR_ExtendedRange & 1;
}

- (BOOL)checkForIsHDR
{
  if (self->_didCheckForIsHDR)
  {
    return self->_isHDR;
  }

  if (!self->_preflighted)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:255 description:@"Must preflight source before calling this method"];
  }

  if (!self->_containsVideoWithFormatEligibleForTranscoding || self->_didCheckForLivePhotoPairingIdentifier && self->_livePhotoPairingIdentifier)
  {
    isHDR = 0;
  }

  else
  {
    metadata = [(PHMediaFormatConversionSource *)self metadata];
    isHDR = [metadata isHDR];
  }

  [(PHMediaFormatConversionSource *)self markIsHDRAsCheckedWithValue:isHDR];

  return [(PHMediaFormatConversionSource *)self isHDR];
}

- (BOOL)containsHEVCVideo
{
  if (![(PHMediaFormatConversionSource *)self preflighted])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:247 description:@"Must preflight source before calling this method"];
  }

  return self->_containsVideoWithFormatEligibleForTranscoding;
}

- (void)markContainsVideoEligibleForTranscodingAsCheckedWithValue:(BOOL)value codec:(unsigned int)codec isProRes:(BOOL)res
{
  self->_didCheckForVideoWithFormatEligibleForTranscoding = 1;
  self->_containsVideoWithFormatEligibleForTranscoding = value;
  self->_firstVideoTrackCodec = codec;
  self->_containsProResVideoWithFormatEligibleForTranscoding = res;
}

- (void)checkForVideoEligibleForTranscoding
{
  v13 = *MEMORY[0x277D85DE8];
  if (!self->_didCheckForVideoWithFormatEligibleForTranscoding)
  {
    self->_didCheckForVideoWithFormatEligibleForTranscoding = 1;
    metadata = [(PHMediaFormatConversionSource *)self metadata];
    v4 = metadata;
    if (metadata)
    {
      firstVideoTrackCodec = [metadata firstVideoTrackCodec];
      v6 = firstVideoTrackCodec;
      if (!self->_firstVideoTrackCodec)
      {
        self->_firstVideoTrackCodec = firstVideoTrackCodec;
      }

      if ([MEMORY[0x277D3B448] videoCodecIsProResEligibleForBackwardsCompatibilityTranscoding:firstVideoTrackCodec])
      {
        self->_containsProResVideoWithFormatEligibleForTranscoding = 1;
      }

      if ([MEMORY[0x277D3B448] videoCodecIsEligibleForBackwardsCompatibilityTranscoding:v6])
      {
        self->_containsVideoWithFormatEligibleForTranscoding = 1;
        videoTrackFormatDescription = [v4 videoTrackFormatDescription];
        transcodingEligibleVideoTrackFormatDescription = self->_transcodingEligibleVideoTrackFormatDescription;
        self->_transcodingEligibleVideoTrackFormatDescription = videoTrackFormatDescription;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      fileURL = [(PHMediaFormatConversionContent *)self fileURL];
      v11 = 138412290;
      v12 = fileURL;
      _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to get metadata for URL: %@", &v11, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)determineMediaTypeFromPathExtensionWithError:(id *)error
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [(PHMediaFormatConversionContent *)self typeFromFileExtensionWithError:?];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  if (![v5 conformsToType:*MEMORY[0x277CE1DB0]])
  {
    if ([v6 conformsToType:*MEMORY[0x277CE1E00]])
    {
      LOBYTE(error) = 1;
      [(PHMediaFormatConversionContent *)self setMediaType:1];
      goto LABEL_10;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      path = [(NSURL *)self->super._fileURL path];
      *buf = 138478083;
      v15 = path;
      v16 = 2114;
      v17 = v6;
      _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to determine image/video type for %{private}@ from UTI %{public}@", buf, 0x16u);

      if (!error)
      {
        goto LABEL_10;
      }
    }

    else if (!error)
    {
      goto LABEL_10;
    }

    v7 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277CCA450];
    v13 = @"Unable to determine source media type from type identifier. Use videoSourceForFileURL/imageSourceForFileURL instead";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    *error = [v7 errorWithDomain:@"PHMediaFormatConversionErrorDomain" code:2 userInfo:v8];

LABEL_9:
    LOBYTE(error) = 0;
    goto LABEL_10;
  }

  [(PHMediaFormatConversionContent *)self setMediaType:2];
  LOBYTE(error) = 1;
LABEL_10:

  v9 = *MEMORY[0x277D85DE8];
  return error;
}

+ (id)sourceForFileURL:(id)l
{
  lCopy = l;
  pathExtension = [lCopy pathExtension];
  lowercaseString = [pathExtension lowercaseString];

  if ([lowercaseString isEqualToString:@"pvt"])
  {
    v7 = PHMediaFormatConversionLivePhotoBundleSource;
LABEL_5:
    v8 = [(__objc2_class *)v7 sourceForFileURL:lCopy];
    goto LABEL_7;
  }

  if ([lowercaseString isEqualToString:@"photosasset"])
  {
    v7 = PHMediaFormatConversionAssetBundleSource;
    goto LABEL_5;
  }

  v8 = [self sourceForFileURL:lCopy mediaType:0 imageDimensions:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
LABEL_7:
  v9 = v8;

  return v9;
}

+ (id)sourceForFileURL:(id)l mediaType:(int64_t)type imageDimensions:(CGSize)dimensions
{
  height = dimensions.height;
  width = dimensions.width;
  lCopy = l;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:154 description:{@"Invalid parameter not satisfying: %@", @"fileURL"}];
  }

  v11 = objc_opt_new();
  [v11 setFileURL:lCopy];
  [v11 setMediaType:type];
  [v11 setImageDimensions:{width, height}];

  return v11;
}

@end