@interface PHMediaFormatConversionSource
+ (id)sourceForFileURL:(id)a3;
+ (id)sourceForFileURL:(id)a3 mediaType:(int64_t)a4 imageDimensions:(CGSize)a5;
- (BOOL)checkForIsHDR;
- (BOOL)containsHEVCVideo;
- (BOOL)determineMediaTypeFromPathExtensionWithError:(id *)a3;
- (BOOL)preflightWithError:(id *)a3;
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
- (void)markContainsVideoEligibleForTranscodingAsCheckedWithValue:(BOOL)a3 codec:(unsigned int)a4 isProRes:(BOOL)a5;
- (void)markLivePhotoPairingIdentifierAsCheckedWithValue:(id)a3;
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
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = NSStringFromSelector(a2);
    [v6 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:445 description:{@"Source must be preflighted or marked as checked before accessing %@", v7}];
  }

  livePhotoPairingIdentifier = self->_livePhotoPairingIdentifier;

  return livePhotoPairingIdentifier;
}

- (int64_t)sourceAccessibilityDescriptionMetadataStatus
{
  v2 = [(PHMediaFormatConversionSource *)self metadata];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 artworkContentDescription];
    if (v4)
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
    v3 = [(PHMediaFormatConversionSource *)self sourceAccessibilityDescriptionMetadataStatus];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v5 = [(PHMediaFormatConversionContent *)self fileURL];
      v6 = 134218242;
      v7 = v3;
      v8 = 2112;
      v9 = v5;
      _os_log_debug_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Read accessibility description metadata status: %ld from file: %@", &v6, 0x16u);
    }

    [(PHMediaFormatConversionSource *)self markAccessibilityDescriptionMetadataAsCheckedWithStatus:v3];
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (int64_t)sourceCaptionMetadataStatus
{
  v2 = [(PHMediaFormatConversionSource *)self metadata];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 captionAbstract];
    if (v4)
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
    v3 = [(PHMediaFormatConversionSource *)self sourceCaptionMetadataStatus];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v5 = [(PHMediaFormatConversionContent *)self fileURL];
      v6 = 134218242;
      v7 = v3;
      v8 = 2112;
      v9 = v5;
      _os_log_debug_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Read caption metadata status: %ld from file: %@", &v6, 0x16u);
    }

    [(PHMediaFormatConversionSource *)self markCaptionMetadataAsCheckedWithStatus:v3];
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (int64_t)sourceLocationMetadataStatus
{
  v2 = [(PHMediaFormatConversionSource *)self metadata];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 gpsLocation];
    if (v4)
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
    v3 = [(PHMediaFormatConversionSource *)self sourceLocationMetadataStatus];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v5 = [(PHMediaFormatConversionContent *)self fileURL];
      v6 = 134218242;
      v7 = v3;
      v8 = 2112;
      v9 = v5;
      _os_log_debug_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Read location metadata status: %ld from file: %@", &v6, 0x16u);
    }

    [(PHMediaFormatConversionSource *)self markLocationMetadataAsCheckedWithStatus:v3];
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (PFMetadata)metadata
{
  cachedMetadata = self->_cachedMetadata;
  if (!cachedMetadata)
  {
    v4 = objc_alloc(MEMORY[0x277D3B458]);
    v5 = [(PHMediaFormatConversionContent *)self fileURL];
    v6 = [v4 initWithMediaURL:v5 options:13 timeZoneLookup:0 shouldCache:1];
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
    v3 = [(PHMediaFormatConversionSource *)self metadata];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 livePhotoPairingIdentifier];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v6 = [(PHMediaFormatConversionContent *)self fileURL];
        v9 = 138412546;
        v10 = v5;
        v11 = 2112;
        v12 = v6;
        _os_log_debug_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Read pairing identifier: %@ from file: %@", &v9, 0x16u);
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v8 = [(PHMediaFormatConversionContent *)self fileURL];
        v9 = 138412290;
        v10 = v8;
        _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to read pairing identifier from %@", &v9, 0xCu);
      }

      v5 = 0;
    }

    [(PHMediaFormatConversionSource *)self markLivePhotoPairingIdentifierAsCheckedWithValue:v5];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)markLivePhotoPairingIdentifierAsCheckedWithValue:(id)a3
{
  v4 = a3;
  [(PHMediaFormatConversionSource *)self setDidCheckForLivePhotoPairingIdentifier:1];
  [(PHMediaFormatConversionSource *)self setLivePhotoPairingIdentifier:v4];
}

- (BOOL)preflightWithError:(id *)a3
{
  if ([(PHMediaFormatConversionSource *)self preflighted])
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:299 description:@"Preflight of already preflighted source"];
  }

  [(PHMediaFormatConversionSource *)self setPreflighted:1];
  if ([(PHMediaFormatConversionContent *)self mediaType]|| (v6 = [(PHMediaFormatConversionSource *)self determineMediaTypeFromPathExtensionWithError:a3]))
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
  v3 = [(PFMetadata *)self->_cachedMetadata contentType];

  if (v3)
  {
    v4 = [(PFMetadata *)self->_cachedMetadata contentType];
    self->_containsHEIFImage = [v4 conformsToType:*MEMORY[0x277CE1F10]];
  }

  else
  {
    v4 = [(PHMediaFormatConversionContent *)self fileURL];
    v5 = [v4 pathExtension];
    v6 = [v5 lowercaseString];
    self->_containsHEIFImage = [&unk_2869A1150 containsObject:v6];
  }

  v7 = [(PFMetadata *)self->_cachedMetadata contentType];
  if (!v7)
  {
    v8 = MEMORY[0x277CE1CB8];
    v9 = [(PHMediaFormatConversionContent *)self fileURL];
    v10 = [v9 pathExtension];
    v7 = [v8 typeWithFilenameExtension:v10 conformingToType:*MEMORY[0x277CE1DB0]];
  }

  v11 = [MEMORY[0x277D3B508] imageTypesNotWellSupportedForSharing];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __68__PHMediaFormatConversionSource_checkForImageEligibleForTranscoding__block_invoke;
  v15[3] = &unk_27989B650;
  v12 = v7;
  v16 = v12;
  v13 = [v11 indexOfObjectPassingTest:v15];
  if (([(PFMetadata *)self->_cachedMetadata isHDR_TS22028]& 1) != 0)
  {
    v14 = 1;
  }

  else
  {
    v14 = [(PFMetadata *)self->_cachedMetadata isHDR_ExtendedRange];
  }

  self->_containsImageWithFormatEligibleForTranscoding = (v13 != 0x7FFFFFFFFFFFFFFFLL) | v14 & 1;
}

- (BOOL)checkForIsHDR
{
  if (self->_didCheckForIsHDR)
  {
    return self->_isHDR;
  }

  if (!self->_preflighted)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:255 description:@"Must preflight source before calling this method"];
  }

  if (!self->_containsVideoWithFormatEligibleForTranscoding || self->_didCheckForLivePhotoPairingIdentifier && self->_livePhotoPairingIdentifier)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(PHMediaFormatConversionSource *)self metadata];
    v4 = [v5 isHDR];
  }

  [(PHMediaFormatConversionSource *)self markIsHDRAsCheckedWithValue:v4];

  return [(PHMediaFormatConversionSource *)self isHDR];
}

- (BOOL)containsHEVCVideo
{
  if (![(PHMediaFormatConversionSource *)self preflighted])
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:247 description:@"Must preflight source before calling this method"];
  }

  return self->_containsVideoWithFormatEligibleForTranscoding;
}

- (void)markContainsVideoEligibleForTranscodingAsCheckedWithValue:(BOOL)a3 codec:(unsigned int)a4 isProRes:(BOOL)a5
{
  self->_didCheckForVideoWithFormatEligibleForTranscoding = 1;
  self->_containsVideoWithFormatEligibleForTranscoding = a3;
  self->_firstVideoTrackCodec = a4;
  self->_containsProResVideoWithFormatEligibleForTranscoding = a5;
}

- (void)checkForVideoEligibleForTranscoding
{
  v13 = *MEMORY[0x277D85DE8];
  if (!self->_didCheckForVideoWithFormatEligibleForTranscoding)
  {
    self->_didCheckForVideoWithFormatEligibleForTranscoding = 1;
    v3 = [(PHMediaFormatConversionSource *)self metadata];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 firstVideoTrackCodec];
      v6 = v5;
      if (!self->_firstVideoTrackCodec)
      {
        self->_firstVideoTrackCodec = v5;
      }

      if ([MEMORY[0x277D3B448] videoCodecIsProResEligibleForBackwardsCompatibilityTranscoding:v5])
      {
        self->_containsProResVideoWithFormatEligibleForTranscoding = 1;
      }

      if ([MEMORY[0x277D3B448] videoCodecIsEligibleForBackwardsCompatibilityTranscoding:v6])
      {
        self->_containsVideoWithFormatEligibleForTranscoding = 1;
        v7 = [v4 videoTrackFormatDescription];
        transcodingEligibleVideoTrackFormatDescription = self->_transcodingEligibleVideoTrackFormatDescription;
        self->_transcodingEligibleVideoTrackFormatDescription = v7;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v10 = [(PHMediaFormatConversionContent *)self fileURL];
      v11 = 138412290;
      v12 = v10;
      _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to get metadata for URL: %@", &v11, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)determineMediaTypeFromPathExtensionWithError:(id *)a3
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
      LOBYTE(a3) = 1;
      [(PHMediaFormatConversionContent *)self setMediaType:1];
      goto LABEL_10;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v11 = [(NSURL *)self->super._fileURL path];
      *buf = 138478083;
      v15 = v11;
      v16 = 2114;
      v17 = v6;
      _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to determine image/video type for %{private}@ from UTI %{public}@", buf, 0x16u);

      if (!a3)
      {
        goto LABEL_10;
      }
    }

    else if (!a3)
    {
      goto LABEL_10;
    }

    v7 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277CCA450];
    v13 = @"Unable to determine source media type from type identifier. Use videoSourceForFileURL/imageSourceForFileURL instead";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    *a3 = [v7 errorWithDomain:@"PHMediaFormatConversionErrorDomain" code:2 userInfo:v8];

LABEL_9:
    LOBYTE(a3) = 0;
    goto LABEL_10;
  }

  [(PHMediaFormatConversionContent *)self setMediaType:2];
  LOBYTE(a3) = 1;
LABEL_10:

  v9 = *MEMORY[0x277D85DE8];
  return a3;
}

+ (id)sourceForFileURL:(id)a3
{
  v4 = a3;
  v5 = [v4 pathExtension];
  v6 = [v5 lowercaseString];

  if ([v6 isEqualToString:@"pvt"])
  {
    v7 = PHMediaFormatConversionLivePhotoBundleSource;
LABEL_5:
    v8 = [(__objc2_class *)v7 sourceForFileURL:v4];
    goto LABEL_7;
  }

  if ([v6 isEqualToString:@"photosasset"])
  {
    v7 = PHMediaFormatConversionAssetBundleSource;
    goto LABEL_5;
  }

  v8 = [a1 sourceForFileURL:v4 mediaType:0 imageDimensions:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
LABEL_7:
  v9 = v8;

  return v9;
}

+ (id)sourceForFileURL:(id)a3 mediaType:(int64_t)a4 imageDimensions:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v10 = a3;
  if (!v10)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"PHMediaFormatConversion.m" lineNumber:154 description:{@"Invalid parameter not satisfying: %@", @"fileURL"}];
  }

  v11 = objc_opt_new();
  [v11 setFileURL:v10];
  [v11 setMediaType:a4];
  [v11 setImageDimensions:{width, height}];

  return v11;
}

@end