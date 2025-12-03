@interface PHMediaFormatConversionRequest
+ (BOOL)hasInternalDiagnostics;
+ (double)heifToJPEGFactorForBitsPerPixel:(double)pixel;
+ (double)heifToJPEGFactorWithImageDimensions:(CGSize)dimensions fileLength:(unint64_t)length;
+ (id)requestForSource:(id)source destinationCapabilities:(id)capabilities error:(id *)error;
+ (id)stringForRequestStatus:(int64_t)status;
- (BOOL)_calculateRequiresFormatConversion;
- (BOOL)_isKnownUTTypeForPathExtension:(id)extension;
- (BOOL)destinationCapabilitiesHintsIndicateSupportForSource;
- (BOOL)requiresAccessibilityDescriptionMetadataChange;
- (BOOL)requiresCaptionMetadataChange;
- (BOOL)requiresCreationDateMetadataChange;
- (BOOL)requiresFormatConversion;
- (BOOL)requiresLivePhotoPairingIdentifierChange;
- (BOOL)requiresLocationMetadataChange;
- (BOOL)requiresMetadataChanges;
- (BOOL)requiresPassthroughConversion;
- (BOOL)sourceSupportsPassthroughConversion;
- (NSString)description;
- (NSString)outputFileType;
- (NSString)outputPathExtension;
- (NSString)statusString;
- (PHMediaFormatConversionCompositeRequest)parentRequest;
- (PHMediaFormatConversionRequest)init;
- (double)formatConversionExpansionFactor;
- (int64_t)backwardsCompatibilityStatus;
- (int64_t)passthroughConversionAdditionalByteCount;
- (unint64_t)estimatedOutputFileLength;
- (void)didFinishProcessing;
- (void)enableSinglePassVideoEncodingWithUpdateHandler:(id)handler;
- (void)markAsCancelled;
- (void)padOutputFileToEstimatedLength;
- (void)preflightWithConversionManager:(id)manager;
- (void)setAccessibilityDescriptionMetadataBehavior:(int64_t)behavior withAccessibilityDescription:(id)description;
- (void)setCaptionMetadataBehavior:(int64_t)behavior withCaption:(id)caption;
- (void)setCreationDateMetadataBehavior:(int64_t)behavior withCreationDate:(id)date inTimeZone:(id)zone;
- (void)setDestination:(id)destination;
- (void)setFormatConversionExpansionFactor:(double)factor;
- (void)setLocationMetadataBehavior:(int64_t)behavior withLocation:(id)location;
- (void)setupProgress;
- (void)updateSinglePassVideoConversionStatus:(int64_t)status addedRange:(_NSRange)range error:(id)error;
@end

@implementation PHMediaFormatConversionRequest

- (PHMediaFormatConversionCompositeRequest)parentRequest
{
  WeakRetained = objc_loadWeakRetained(&self->_parentRequest);

  return WeakRetained;
}

- (void)updateSinglePassVideoConversionStatus:(int64_t)status addedRange:(_NSRange)range error:(id)error
{
  length = range.length;
  location = range.location;
  v17 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (!self->_requiresSinglePassVideoConversion)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:1471 description:@"Invalid request configuration for single pass video conversion callback"];
  }

  if (!self->_singlePassVideoConversionUpdateHandler)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:1472 description:@"Unexpected nil single pass video conversion update handler"];
  }

  status = [(PHMediaFormatConversionRequest *)self status];
  if (status == 3)
  {
    [(PHMediaFormatConversionDestination *)self->_destination addAvailableRange:location, length];
    (*(self->_singlePassVideoConversionUpdateHandler + 2))();
  }

  else
  {
    v11 = status;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134217984;
      v16 = v11;
      _os_log_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Ignoring single pass video conversion status update for request in non-processing state %zd", &v15, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)enableSinglePassVideoEncodingWithUpdateHandler:(id)handler
{
  handlerCopy = handler;
  if ([(PHMediaFormatConversionContent *)self->_source mediaType]!= 1 || [(PHMediaFormatConversionRequest *)self isCompositeRequest])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:1464 description:@"Invalid request configuration for single pass video conversion"];
  }

  self->_requiresSinglePassVideoConversion = 1;
  v5 = MEMORY[0x259C84340](handlerCopy);
  singlePassVideoConversionUpdateHandler = self->_singlePassVideoConversionUpdateHandler;
  self->_singlePassVideoConversionUpdateHandler = v5;
}

- (void)didFinishProcessing
{
  if ([(PHMediaFormatConversionRequest *)self status]== 4 && [(PHMediaFormatConversionRequest *)self shouldPadOutputFileToEstimatedLength]&& ![(PHMediaFormatConversionRequest *)self requiresSinglePassVideoConversion])
  {
    [(PHMediaFormatConversionRequest *)self padOutputFileToEstimatedLength];
  }

  if ([(PHMediaFormatConversionRequest *)self status]!= 4 && [(PHMediaFormatConversionRequest *)self requiresSinglePassVideoConversion])
  {
    destination = [(PHMediaFormatConversionRequest *)self destination];
    singlePassVideoExportRangeCoordinator = [destination singlePassVideoExportRangeCoordinator];
    [singlePassVideoExportRangeCoordinator cancel];
  }

  progress = [(PHMediaFormatConversionRequest *)self progress];
  [progress setCompletedUnitCount:1];
}

- (void)padOutputFileToEstimatedLength
{
  v29 = *MEMORY[0x277D85DE8];
  destination = [(PHMediaFormatConversionRequest *)self destination];
  v16 = 0;
  v4 = [destination padToLength:-[PHMediaFormatConversionRequest estimatedOutputFileLength](self error:{"estimatedOutputFileLength"), &v16}];
  v5 = v16;

  if ((v4 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      source = [(PHMediaFormatConversionRequest *)self source];
      fileType = [source fileType];
      destination2 = [(PHMediaFormatConversionRequest *)self destination];
      v9 = [destination2 length];
      estimatedOutputFileLength = [(PHMediaFormatConversionRequest *)self estimatedOutputFileLength];
      source2 = [(PHMediaFormatConversionRequest *)self source];
      fileURL = [source2 fileURL];
      destination3 = [(PHMediaFormatConversionRequest *)self destination];
      fileURL2 = [destination3 fileURL];
      *buf = 138544642;
      v18 = fileType;
      v19 = 2048;
      v20 = v9;
      v21 = 2048;
      v22 = estimatedOutputFileLength;
      v23 = 2114;
      v24 = v5;
      v25 = 2112;
      v26 = fileURL;
      v27 = 2112;
      v28 = fileURL2;
      _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to pad output file (type %{public}@) of length %llu to estimated length %llu: %{public}@, %@ -> %@", buf, 0x3Eu);
    }

    [(PHMediaFormatConversionRequest *)self setStatus:5];
    [(PHMediaFormatConversionRequest *)self setError:v5];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (int64_t)passthroughConversionAdditionalByteCount
{
  if (self->_passthroughConversionAdditionalByteCount <= 0)
  {
    return 512;
  }

  else
  {
    return self->_passthroughConversionAdditionalByteCount;
  }
}

- (double)formatConversionExpansionFactor
{
  v27 = *MEMORY[0x277D85DE8];
  formatConversionExpansionFactor = self->_formatConversionExpansionFactor;
  if (formatConversionExpansionFactor <= 0.0)
  {
    if (![(PHMediaFormatConversionRequest *)self preflighted])
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:1384 description:@"Request must be preflighted"];
    }

    source = [(PHMediaFormatConversionRequest *)self source];
    isVideo = [source isVideo];

    if (isVideo)
    {
      [(PHMediaFormatConversionRequest *)self requiresSinglePassVideoConversion];
      formatConversionExpansionFactor = 2.2;
    }

    else
    {
      v7 = objc_opt_class();
      source2 = [(PHMediaFormatConversionRequest *)self source];
      [source2 imageDimensions];
      v10 = v9;
      v12 = v11;
      source3 = [(PHMediaFormatConversionRequest *)self source];
      [v7 heifToJPEGFactorWithImageDimensions:objc_msgSend(source3 fileLength:{"length"), v10, v12}];
      formatConversionExpansionFactor = v14;

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        source4 = [(PHMediaFormatConversionRequest *)self source];
        [source4 imageDimensions];
        v18 = NSStringFromSize(v28);
        source5 = [(PHMediaFormatConversionRequest *)self source];
        v21 = 134218498;
        v22 = formatConversionExpansionFactor;
        v23 = 2112;
        v24 = v18;
        v25 = 2048;
        v26 = [source5 length];
        _os_log_debug_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Calculated formatConversionExpansionFactor: %f (image dimensions: %@, file length: %llu)", &v21, 0x20u);
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v21 = 134217984;
    v22 = formatConversionExpansionFactor;
    _os_log_debug_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Explicit formatConversionExpansionFactor: %f", &v21, 0xCu);
    formatConversionExpansionFactor = self->_formatConversionExpansionFactor;
  }

  v15 = *MEMORY[0x277D85DE8];
  return formatConversionExpansionFactor;
}

- (void)setFormatConversionExpansionFactor:(double)factor
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    formatConversionExpansionFactor = self->_formatConversionExpansionFactor;
    v7 = 134217984;
    v8 = formatConversionExpansionFactor;
    _os_log_debug_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Setting explicit formatConversionExpansionFactor: %f", &v7, 0xCu);
  }

  self->_formatConversionExpansionFactor = factor;
  v5 = *MEMORY[0x277D85DE8];
}

- (unint64_t)estimatedOutputFileLength
{
  if ([(PHMediaFormatConversionRequest *)self requiresFormatConversion])
  {
    source = [(PHMediaFormatConversionRequest *)self source];
    v4 = [source length];
    [(PHMediaFormatConversionRequest *)self formatConversionExpansionFactor];
    v6 = (v5 * v4);
  }

  else
  {
    requiresPassthroughConversion = [(PHMediaFormatConversionRequest *)self requiresPassthroughConversion];
    source = [(PHMediaFormatConversionRequest *)self source];
    v6 = [source length];
    if (requiresPassthroughConversion)
    {
      v6 += [(PHMediaFormatConversionRequest *)self passthroughConversionAdditionalByteCount];
    }
  }

  return v6;
}

- (NSString)outputFileType
{
  v24 = *MEMORY[0x277D85DE8];
  if (![(PHMediaFormatConversionRequest *)self preflighted])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:1337 description:@"Request must be preflighted"];
  }

  source = [(PHMediaFormatConversionRequest *)self source];

  if (!source)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:1338 description:@"Invalid request for output type identifier on request without source"];
  }

  source2 = [(PHMediaFormatConversionRequest *)self source];
  if ([source2 mediaType] != 2)
  {

    goto LABEL_11;
  }

  requiresFormatConversion = [(PHMediaFormatConversionRequest *)self requiresFormatConversion];

  if (!requiresFormatConversion)
  {
LABEL_11:
    source3 = [(PHMediaFormatConversionRequest *)self source];
    fileType = [source3 fileType];
LABEL_12:

    goto LABEL_13;
  }

  fileType = [*MEMORY[0x277CE1DC0] identifier];
  forcedOutputPathExtension = [(PHMediaFormatConversionRequest *)self forcedOutputPathExtension];

  if (!forcedOutputPathExtension)
  {
    goto LABEL_13;
  }

  forcedOutputPathExtension2 = [(PHMediaFormatConversionRequest *)self forcedOutputPathExtension];
  v10 = [(PHMediaFormatConversionRequest *)self _isKnownUTTypeForPathExtension:forcedOutputPathExtension2];

  if (v10)
  {
    v11 = MEMORY[0x277CE1CB8];
    forcedOutputPathExtension3 = [(PHMediaFormatConversionRequest *)self forcedOutputPathExtension];
    v13 = [v11 typeWithFilenameExtension:forcedOutputPathExtension3];

    identifier = [v13 identifier];

    fileType = identifier;
    goto LABEL_13;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    source3 = [(PHMediaFormatConversionRequest *)self forcedOutputPathExtension];
    v20 = 138412546;
    v21 = source3;
    v22 = 2114;
    v23 = fileType;
    _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Forced path extension (%@) is not a known UTType. Falling back to %{public}@ as the output type identifier.", &v20, 0x16u);
    goto LABEL_12;
  }

LABEL_13:
  v16 = *MEMORY[0x277D85DE8];

  return fileType;
}

- (NSString)outputPathExtension
{
  v21 = *MEMORY[0x277D85DE8];
  if (![(PHMediaFormatConversionRequest *)self preflighted])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:1319 description:@"Request must be preflighted"];
  }

  source = [(PHMediaFormatConversionRequest *)self source];

  if (!source)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:1320 description:@"Invalid request for output path extension on request without source"];
  }

  source2 = [(PHMediaFormatConversionRequest *)self source];
  if ([source2 mediaType] != 2)
  {

    goto LABEL_11;
  }

  requiresFormatConversion = [(PHMediaFormatConversionRequest *)self requiresFormatConversion];

  if (!requiresFormatConversion)
  {
LABEL_11:
    source3 = [(PHMediaFormatConversionRequest *)self source];
    fileURL = [source3 fileURL];
    pathExtension = [fileURL pathExtension];

LABEL_12:
    goto LABEL_13;
  }

  forcedOutputPathExtension = [(PHMediaFormatConversionRequest *)self forcedOutputPathExtension];

  if (forcedOutputPathExtension)
  {
    forcedOutputPathExtension2 = [(PHMediaFormatConversionRequest *)self forcedOutputPathExtension];
    v9 = [(PHMediaFormatConversionRequest *)self _isKnownUTTypeForPathExtension:forcedOutputPathExtension2];

    if (v9)
    {
      pathExtension = [(PHMediaFormatConversionRequest *)self forcedOutputPathExtension];
      goto LABEL_13;
    }

    pathExtension = @"jpg";
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      source3 = [(PHMediaFormatConversionRequest *)self forcedOutputPathExtension];
      v17 = 138412546;
      v18 = source3;
      v19 = 2114;
      v20 = @"jpg";
      _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Forced path extension (%@) is not a known UTType. Falling back to %{public}@ as the output path extension.", &v17, 0x16u);
      goto LABEL_12;
    }
  }

  else
  {
    pathExtension = @"jpg";
  }

LABEL_13:
  v13 = *MEMORY[0x277D85DE8];

  return pathExtension;
}

- (BOOL)_isKnownUTTypeForPathExtension:(id)extension
{
  v3 = [MEMORY[0x277CE1CB8] typeWithFilenameExtension:extension];
  isDynamic = [v3 isDynamic];

  return isDynamic ^ 1;
}

- (void)setAccessibilityDescriptionMetadataBehavior:(int64_t)behavior withAccessibilityDescription:(id)description
{
  descriptionCopy = description;
  v12 = descriptionCopy;
  if (self->_accessibilityDescriptionMetadataBehavior != behavior || (v8 = [(NSString *)self->_accessibilityDescription isEqualToString:descriptionCopy], descriptionCopy = v12, !v8))
  {
    self->_accessibilityDescriptionMetadataBehavior = behavior;
    if (behavior == 2)
    {
      if (!descriptionCopy)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:1304 description:@"caption must not be nil if accessibilityDescriptionMetadataBehavior is PHMediaFormatMetadataBehaviorApply"];

        descriptionCopy = v12;
      }

      v9 = [descriptionCopy copy];
    }

    else
    {
      v9 = 0;
    }

    accessibilityDescription = self->_accessibilityDescription;
    self->_accessibilityDescription = v9;
  }

  MEMORY[0x2821F96F8]();
}

- (void)setCaptionMetadataBehavior:(int64_t)behavior withCaption:(id)caption
{
  captionCopy = caption;
  v12 = captionCopy;
  if (self->_captionMetadataBehavior != behavior || (v8 = [(NSString *)self->_caption isEqualToString:captionCopy], captionCopy = v12, !v8))
  {
    self->_captionMetadataBehavior = behavior;
    if (behavior == 2)
    {
      if (!captionCopy)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:1290 description:@"caption must not be nil if behavior is PHMediaFormatMetadataBehaviorApply"];

        captionCopy = v12;
      }

      v9 = [captionCopy copy];
    }

    else
    {
      v9 = 0;
    }

    caption = self->_caption;
    self->_caption = v9;
  }

  MEMORY[0x2821F96F8]();
}

- (void)setCreationDateMetadataBehavior:(int64_t)behavior withCreationDate:(id)date inTimeZone:(id)zone
{
  dateCopy = date;
  zoneCopy = zone;
  if (behavior == 1)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:1267 description:@"Stripping creation date metadata is not permitted"];
  }

  if (self->_creationDateMetadataBehavior != behavior || ![(NSDate *)self->_creationDate isEqualToDate:dateCopy])
  {
    self->_creationDateMetadataBehavior = behavior;
    if (behavior == 2)
    {
      if (!dateCopy)
      {
        currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:1274 description:@"creationDate must not be nil if behavior is PHMediaFormatMetadataBehaviorApply"];
      }

      objc_storeStrong(&self->_creationDate, date);
      v11 = zoneCopy;
      creationDateTimeZone = self->_creationDateTimeZone;
      self->_creationDateTimeZone = v11;
    }

    else
    {
      creationDate = self->_creationDate;
      self->_creationDate = 0;

      creationDateTimeZone = self->_creationDateTimeZone;
      self->_creationDateTimeZone = 0;
    }
  }
}

- (void)setLocationMetadataBehavior:(int64_t)behavior withLocation:(id)location
{
  locationCopy = location;
  v12 = locationCopy;
  if (self->_locationMetadataBehavior != behavior || (v8 = [(CLLocation *)self->_location isEqual:locationCopy], locationCopy = v12, (v8 & 1) == 0))
  {
    self->_locationMetadataBehavior = behavior;
    if (behavior == 2)
    {
      if (!locationCopy)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:1259 description:@"location must not be nil if behavior is PHMediaFormatMetadataBehaviorApply"];

        locationCopy = v12;
      }

      v9 = locationCopy;
      location = self->_location;
      self->_location = v9;
    }

    else
    {
      location = self->_location;
      self->_location = 0;
    }
  }

  MEMORY[0x2821F96F8]();
}

- (BOOL)destinationCapabilitiesHintsIndicateSupportForSource
{
  v35 = *MEMORY[0x277D85DE8];
  destinationCapabilities = [(PHMediaFormatConversionRequest *)self destinationCapabilities];
  outOfBandHints = [destinationCapabilities outOfBandHints];

  if (outOfBandHints)
  {
    v5 = [outOfBandHints objectForKeyedSubscript:*MEMORY[0x277D3B578]];
    v6 = v5;
    if (v5 && [v5 integerValue] == 1 && -[PHMediaFormatConversionSource containsProResVideoWithFormatEligibleForTranscoding](self->_source, "containsProResVideoWithFormatEligibleForTranscoding"))
    {
      LOBYTE(v7) = 1;
    }

    else
    {
      if ([(PHMediaFormatConversionContent *)self->_source isVideo]&& [(PHMediaFormatConversionSource *)self->_source containsVideoWithFormatEligibleForTranscoding])
      {
        v8 = [outOfBandHints objectForKeyedSubscript:*MEMORY[0x277D3B570]];
        if (v8)
        {
          firstVideoTrackCodec = [(PHMediaFormatConversionSource *)self->_source firstVideoTrackCodec];
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v10 = v8;
          v11 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v30;
            while (2)
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v30 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                if ([*(*(&v29 + 1) + 8 * i) unsignedIntValue] == firstVideoTrackCodec)
                {
                  LOBYTE(v7) = 1;
                  v15 = v10;
                  goto LABEL_37;
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
              if (v12)
              {
                continue;
              }

              break;
            }
          }
        }
      }

      v15 = [outOfBandHints objectForKeyedSubscript:*MEMORY[0x277D3B568]];
      v16 = MEMORY[0x277D3B508];
      fileType = [(PHMediaFormatConversionContent *)self->_source fileType];
      v10 = [v16 typeWithIdentifier:fileType];

      if (v15)
      {
        v18 = v10 == 0;
      }

      else
      {
        v18 = 1;
      }

      if (v18)
      {
        LOBYTE(v7) = 0;
      }

      else
      {
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v19 = v15;
        v20 = [v19 countByEnumeratingWithState:&v25 objects:v33 count:16];
        v7 = v20;
        if (v20)
        {
          v21 = *v26;
          while (2)
          {
            v22 = 0;
            do
            {
              if (*v26 != v21)
              {
                objc_enumerationMutation(v19);
              }

              if ([v10 conformsToType:{*(*(&v25 + 1) + 8 * v22), v25}])
              {
                LOBYTE(v7) = 1;
                goto LABEL_36;
              }

              ++v22;
            }

            while (v7 != v22);
            v7 = [v19 countByEnumeratingWithState:&v25 objects:v33 count:16];
            if (v7)
            {
              continue;
            }

            break;
          }
        }

LABEL_36:
      }

LABEL_37:
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)_calculateRequiresFormatConversion
{
  v74 = *MEMORY[0x277D85DE8];
  if (![(PHMediaFormatConversionRequest *)self preflighted])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:1128 description:@"Request must be preflighted"];
  }

  forceFormatConversion = [(PHMediaFormatConversionRequest *)self forceFormatConversion];
  useTransferBehaviorUserPreference = [(PHMediaFormatConversionRequest *)self useTransferBehaviorUserPreference];
  userPreferenceProhibitsFormatConversion = [(PHMediaFormatConversionRequest *)self userPreferenceProhibitsFormatConversion];
  destinationCapabilitiesHintsIndicateSupportForSource = [(PHMediaFormatConversionRequest *)self destinationCapabilitiesHintsIndicateSupportForSource];
  source = [(PHMediaFormatConversionRequest *)self source];
  isVideo = [source isVideo];

  source2 = [(PHMediaFormatConversionRequest *)self source];
  v11 = source2;
  if (!isVideo)
  {
    isImage = [source2 isImage];

    if (isImage)
    {
      source3 = [(PHMediaFormatConversionRequest *)self source];
      containsImageWithFormatEligibleForTranscoding = [source3 containsImageWithFormatEligibleForTranscoding];

      if (containsImageWithFormatEligibleForTranscoding)
      {
        destinationCapabilities = [(PHMediaFormatConversionRequest *)self destinationCapabilities];
        identifier = [*MEMORY[0x277CE1F10] identifier];
        v28 = [destinationCapabilities supportForContainerTypeIdentifier:identifier];

        v18 = ((v28 + 1) < 2) & ~destinationCapabilitiesHintsIndicateSupportForSource;
LABEL_18:
        v19 = 1;
        goto LABEL_19;
      }
    }

LABEL_14:
    v18 = 0;
    v19 = 0;
LABEL_19:
    [(PHMediaFormatConversionRequest *)self shouldExportAsHDR];
    v20 = 0;
    v16 = 0;
    goto LABEL_20;
  }

  containsVideoWithFormatEligibleForTranscoding = [source2 containsVideoWithFormatEligibleForTranscoding];

  if (destinationCapabilitiesHintsIndicateSupportForSource & 1 | ((containsVideoWithFormatEligibleForTranscoding & 1) == 0))
  {
    goto LABEL_14;
  }

  source4 = [(PHMediaFormatConversionRequest *)self source];
  transcodingEligibleVideoTrackFormatDescription = [source4 transcodingEligibleVideoTrackFormatDescription];

  if (!transcodingEligibleVideoTrackFormatDescription)
  {
    source5 = [(PHMediaFormatConversionRequest *)self source];
    firstVideoTrackCodec = [source5 firstVideoTrackCodec];

    if (firstVideoTrackCodec == 1752589105)
    {
      destinationCapabilities2 = [(PHMediaFormatConversionRequest *)self destinationCapabilities];
      v32 = [destinationCapabilities2 supportForCodec:1752589105];

      v18 = v32 == -1;
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_18;
  }

  destinationCapabilities3 = [(PHMediaFormatConversionRequest *)self destinationCapabilities];
  v16 = [destinationCapabilities3 decodingSupportForFormatDescription:transcodingEligibleVideoTrackFormatDescription];

  shouldExportAsHDR = [(PHMediaFormatConversionRequest *)self shouldExportAsHDR];
  v18 = 0;
  v19 = 1;
  v20 = v16 != 2;
  if (v16 != 2 && shouldExportAsHDR)
  {
    source6 = [(PHMediaFormatConversionRequest *)self source];
    containsProResVideoWithFormatEligibleForTranscoding = [source6 containsProResVideoWithFormatEligibleForTranscoding];

    if ((containsProResVideoWithFormatEligibleForTranscoding & 1) == 0)
    {
      [(PHMediaFormatConversionRequest *)self setShouldExportAsHDR:0];
    }

    v18 = 0;
    v20 = 1;
  }

LABEL_20:
  v49 = v20;
  if (([(PHMediaFormatConversionRequest *)self requiresLocationMetadataChange]|| [(PHMediaFormatConversionRequest *)self requiresAccessibilityDescriptionMetadataChange]|| [(PHMediaFormatConversionRequest *)self requiresCaptionMetadataChange]|| [(PHMediaFormatConversionRequest *)self requiresCreationDateMetadataChange]) && ![(PHMediaFormatConversionRequest *)self sourceSupportsPassthroughConversion])
  {
    v48 = 1;
    v33 = 1;
  }

  else
  {
    v48 = 0;
    v33 = v19 & (forceFormatConversion | (!useTransferBehaviorUserPreference || !userPreferenceProhibitsFormatConversion) & (v20 | v18));
  }

  if ([objc_opt_class() hasInternalDiagnostics])
  {
    v34 = OS_LOG_TYPE_INFO;
  }

  else
  {
    v34 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], v34))
  {
    v46 = useTransferBehaviorUserPreference;
    v47 = v18;
    v35 = userPreferenceProhibitsFormatConversion;
    v36 = [MEMORY[0x277D3B448] stringForSupport:v16];
    shouldExportAsHDR2 = [(PHMediaFormatConversionRequest *)self shouldExportAsHDR];
    source7 = [(PHMediaFormatConversionRequest *)self source];
    fileURL = [source7 fileURL];
    lastPathComponent = [fileURL lastPathComponent];
    v41 = v19;
    v42 = lastPathComponent;
    *buf = 67111939;
    v51 = v33;
    v52 = 1024;
    v53 = v41;
    v54 = 1024;
    v55 = forceFormatConversion;
    v56 = 1024;
    v57 = v35;
    v58 = 1024;
    v59 = v46;
    v60 = 1024;
    v61 = v47;
    v62 = 1024;
    v63 = v49;
    v64 = 2114;
    v65 = v36;
    v66 = 1024;
    v67 = destinationCapabilitiesHintsIndicateSupportForSource;
    v68 = 1024;
    v69 = v48;
    v70 = 1024;
    v71 = shouldExportAsHDR2;
    v72 = 2113;
    v73 = lastPathComponent;
    _os_log_impl(&dword_2585D9000, MEMORY[0x277D86220], v34, "Media format conversion decision: result=%d containsModernFormat=%d forcedOnRequest=%d prohibitedByUserPreference=%d useTransferBehaviorUserChoice=%d destinationMissingSupport=%d, destinationMissingSupportForAsset=%d (assetSupport=%{public}@), destinationPlatformHintIndicatesSupport=%d, unsupportedUserModifiedMetadataPassthroughConversion=%d shouldExportAsHDR=%d filename=%{private}@", buf, 0x52u);
  }

  v43 = *MEMORY[0x277D85DE8];
  return v33;
}

- (BOOL)requiresFormatConversion
{
  if (self->_didCalculateRequiresFormatConversion)
  {
    return self->_requiresFormatConversion;
  }

  else
  {
    self->_didCalculateRequiresFormatConversion = 1;
    _calculateRequiresFormatConversion = [(PHMediaFormatConversionRequest *)self _calculateRequiresFormatConversion];
    self->_requiresFormatConversion = _calculateRequiresFormatConversion;
  }

  return _calculateRequiresFormatConversion;
}

- (BOOL)requiresAccessibilityDescriptionMetadataChange
{
  if ([(PHMediaFormatConversionRequest *)self accessibilityDescriptionMetadataBehavior]== 1)
  {
    source = [(PHMediaFormatConversionRequest *)self source];
    v4 = [source accessibilityDescriptionMetadataStatus] == 2;
  }

  else
  {
    v4 = 0;
  }

  if ([(PHMediaFormatConversionRequest *)self accessibilityDescriptionMetadataBehavior]== 2)
  {
    accessibilityDescription = [(PHMediaFormatConversionRequest *)self accessibilityDescription];
    v6 = accessibilityDescription != 0;
  }

  else
  {
    v6 = 0;
  }

  return v4 || v6;
}

- (BOOL)requiresCaptionMetadataChange
{
  if ([(PHMediaFormatConversionRequest *)self captionMetadataBehavior]== 1)
  {
    source = [(PHMediaFormatConversionRequest *)self source];
    v4 = [source captionMetadataStatus] == 2;
  }

  else
  {
    v4 = 0;
  }

  if ([(PHMediaFormatConversionRequest *)self captionMetadataBehavior]== 2)
  {
    caption = [(PHMediaFormatConversionRequest *)self caption];
    v6 = caption != 0;
  }

  else
  {
    v6 = 0;
  }

  return v4 || v6;
}

- (BOOL)requiresCreationDateMetadataChange
{
  if ([(PHMediaFormatConversionRequest *)self creationDateMetadataBehavior]!= 2)
  {
    return 0;
  }

  creationDate = [(PHMediaFormatConversionRequest *)self creationDate];
  v4 = creationDate != 0;

  return v4;
}

- (BOOL)requiresLocationMetadataChange
{
  if ([(PHMediaFormatConversionRequest *)self locationMetadataBehavior]== 1)
  {
    source = [(PHMediaFormatConversionRequest *)self source];
    v4 = [source locationMetadataStatus] == 2;
  }

  else
  {
    v4 = 0;
  }

  if ([(PHMediaFormatConversionRequest *)self locationMetadataBehavior]== 2)
  {
    location = [(PHMediaFormatConversionRequest *)self location];
    v6 = location != 0;
  }

  else
  {
    v6 = 0;
  }

  return v4 || v6;
}

- (BOOL)requiresLivePhotoPairingIdentifierChange
{
  livePhotoPairingIdentifierBehavior = [(PHMediaFormatConversionRequest *)self livePhotoPairingIdentifierBehavior];
  requiresFormatConversion = 1;
  if (livePhotoPairingIdentifierBehavior <= 1)
  {
    if (livePhotoPairingIdentifierBehavior)
    {
      return livePhotoPairingIdentifierBehavior != 1;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:1084 description:@"Unexpected invalid live photo pairing identifier behavior value"];

    return 1;
  }

  if (livePhotoPairingIdentifierBehavior == 5)
  {
    source = [(PHMediaFormatConversionRequest *)self source];
    livePhotoPairingIdentifier = [source livePhotoPairingIdentifier];
    if (livePhotoPairingIdentifier)
    {
      requiresFormatConversion = [(PHMediaFormatConversionRequest *)self requiresFormatConversion];
    }

    else
    {
      requiresFormatConversion = 0;
    }

    return requiresFormatConversion;
  }

  if (livePhotoPairingIdentifierBehavior != 4)
  {
    if (livePhotoPairingIdentifierBehavior == 2)
    {
      source2 = [(PHMediaFormatConversionRequest *)self source];
      livePhotoPairingIdentifier2 = [source2 livePhotoPairingIdentifier];
      requiresFormatConversion = livePhotoPairingIdentifier2 != 0;
    }

    return requiresFormatConversion;
  }

  return [(PHMediaFormatConversionRequest *)self requiresFormatConversion];
}

- (BOOL)requiresMetadataChanges
{
  source = [(PHMediaFormatConversionRequest *)self source];
  renderOriginatingSignature = [source renderOriginatingSignature];
  v5 = renderOriginatingSignature || [(PHMediaFormatConversionRequest *)self requiresLivePhotoPairingIdentifierChange]|| [(PHMediaFormatConversionRequest *)self requiresLocationMetadataChange]|| [(PHMediaFormatConversionRequest *)self requiresCreationDateMetadataChange]|| [(PHMediaFormatConversionRequest *)self requiresCaptionMetadataChange]|| [(PHMediaFormatConversionRequest *)self requiresAccessibilityDescriptionMetadataChange];

  return v5;
}

- (BOOL)sourceSupportsPassthroughConversion
{
  v21[3] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CE1F10];
  v21[0] = *MEMORY[0x277CE1DC0];
  v21[1] = v3;
  v21[2] = *MEMORY[0x277CE1E40];
  [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = v19 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = MEMORY[0x277CE1CB8];
        fileType = [(PHMediaFormatConversionContent *)self->_source fileType];
        v12 = [v10 typeWithIdentifier:fileType];
        LOBYTE(v9) = [v12 conformsToType:v9];

        if (v9)
        {
          v13 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)requiresPassthroughConversion
{
  useTransferBehaviorUserPreference = [(PHMediaFormatConversionRequest *)self useTransferBehaviorUserPreference];
  userPreferenceProhibitsFormatConversion = [(PHMediaFormatConversionRequest *)self userPreferenceProhibitsFormatConversion];
  if (useTransferBehaviorUserPreference && userPreferenceProhibitsFormatConversion || [(PHMediaFormatConversionRequest *)self requiresFormatConversion]|| ![(PHMediaFormatConversionRequest *)self requiresMetadataChanges])
  {
    return 0;
  }

  return [(PHMediaFormatConversionRequest *)self sourceSupportsPassthroughConversion];
}

- (int64_t)backwardsCompatibilityStatus
{
  if ([(PHMediaFormatConversionRequest *)self requiresFormatConversion])
  {
    return 2;
  }

  if ([(PHMediaFormatConversionRequest *)self requiresPassthroughConversion])
  {
    return 2;
  }

  videoExportPreset = [(PHMediaFormatConversionRequest *)self videoExportPreset];

  if (videoExportPreset)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)preflightWithConversionManager:(id)manager
{
  v30 = *MEMORY[0x277D85DE8];
  status = [(PHMediaFormatConversionRequest *)self status];
  if (status <= 5 && ((1 << status) & 0x31) != 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    statusString = [(PHMediaFormatConversionRequest *)self statusString];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:957 description:{@"Preflight of request in invalid state %@", statusString}];
  }

  if ([(PHMediaFormatConversionRequest *)self preflighted])
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:960 description:@"Preflight of already preflighted request"];
  }

  source = [(PHMediaFormatConversionRequest *)self source];

  if (!source)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:962 description:@"Preflight of request without source"];
  }

  if ([(PHMediaFormatConversionRequest *)self locationMetadataBehavior]!= 1)
  {
    source2 = [(PHMediaFormatConversionRequest *)self source];
    [source2 markLocationMetadataAsCheckedWithStatus:1];
  }

  if ([(PHMediaFormatConversionRequest *)self captionMetadataBehavior]!= 1)
  {
    source3 = [(PHMediaFormatConversionRequest *)self source];
    [source3 markCaptionMetadataAsCheckedWithStatus:1];
  }

  if ([(PHMediaFormatConversionRequest *)self accessibilityDescriptionMetadataBehavior]!= 1)
  {
    source4 = [(PHMediaFormatConversionRequest *)self source];
    [source4 markAccessibilityDescriptionMetadataAsCheckedWithStatus:1];
  }

  source5 = [(PHMediaFormatConversionRequest *)self source];
  v27 = 0;
  v13 = [source5 preflightWithError:&v27];
  v14 = v27;

  if (v13)
  {
    if (![(PHMediaFormatConversionRequest *)self requiresSinglePassVideoConversion])
    {
      goto LABEL_25;
    }

    source6 = [(PHMediaFormatConversionRequest *)self source];
    if ([source6 mediaType] == 1)
    {
      isCompositeRequest = [(PHMediaFormatConversionRequest *)self isCompositeRequest];

      if (!isCompositeRequest)
      {
        if ([(PHMediaFormatConversionRequest *)self locationMetadataBehavior]|| [(PHMediaFormatConversionRequest *)self creationDateMetadataBehavior]|| [(PHMediaFormatConversionRequest *)self captionMetadataBehavior]|| [(PHMediaFormatConversionRequest *)self accessibilityDescriptionMetadataBehavior])
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            source7 = [(PHMediaFormatConversionRequest *)self source];
            *buf = 138412290;
            v29 = source7;
            v18 = MEMORY[0x277D86220];
            v19 = "Invalid request using single pass encoding option and metadata changes (like location stripping, custom location, custom creation date, custom description) for video source %@";
LABEL_36:
            _os_log_error_impl(&dword_2585D9000, v18, OS_LOG_TYPE_ERROR, v19, buf, 0xCu);

            goto LABEL_32;
          }

          goto LABEL_32;
        }

LABEL_25:
        destinationCapabilities = [(PHMediaFormatConversionRequest *)self destinationCapabilities];
        if ([destinationCapabilities supportsHDR])
        {
          source8 = [(PHMediaFormatConversionRequest *)self source];
          -[PHMediaFormatConversionRequest setShouldExportAsHDR:](self, "setShouldExportAsHDR:", [source8 isHDR]);
        }

        else
        {
          [(PHMediaFormatConversionRequest *)self setShouldExportAsHDR:0];
        }

        [(PHMediaFormatConversionRequest *)self setPreflighted:1];
        parentRequest = [(PHMediaFormatConversionRequest *)self parentRequest];
        v23 = parentRequest;
        if (parentRequest)
        {
          [parentRequest didPreflightSubrequest:self];
        }

        goto LABEL_33;
      }
    }

    else
    {
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      source7 = [(PHMediaFormatConversionRequest *)self source];
      *buf = 138412290;
      v29 = source7;
      v18 = MEMORY[0x277D86220];
      v19 = "Invalid request using single pass encoding option for non-video source %@";
      goto LABEL_36;
    }

LABEL_32:
    [(PHMediaFormatConversionRequest *)self setStatus:5];
    v23 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PHMediaFormatConversionErrorDomain" code:4 userInfo:0];
    [(PHMediaFormatConversionRequest *)self setError:v23];
LABEL_33:

    goto LABEL_34;
  }

  [(PHMediaFormatConversionRequest *)self setStatus:5];
  [(PHMediaFormatConversionRequest *)self setError:v14];
LABEL_34:

  v24 = *MEMORY[0x277D85DE8];
}

- (void)markAsCancelled
{
  [(PHMediaFormatConversionRequest *)self setStatus:5];
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PHMediaFormatConversionErrorDomain" code:3 userInfo:0];
  [(PHMediaFormatConversionRequest *)self setError:v3];
}

- (void)setupProgress
{
  v3 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:1];
  progress = self->_progress;
  self->_progress = v3;

  MEMORY[0x2821F96F8]();
}

- (NSString)statusString
{
  v3 = objc_opt_class();
  status = [(PHMediaFormatConversionRequest *)self status];

  return [v3 stringForRequestStatus:status];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(PHMediaFormatConversionRequest *)self identifier];
  statusString = [(PHMediaFormatConversionRequest *)self statusString];
  preflighted = [(PHMediaFormatConversionRequest *)self preflighted];
  source = [(PHMediaFormatConversionRequest *)self source];
  fileURL = [source fileURL];
  path = [fileURL path];
  lastPathComponent = [path lastPathComponent];
  v13 = [v3 stringWithFormat:@"<%@ %p identifier=%@ status=%@ preflighted=%d path=%@>", v5, self, identifier, statusString, preflighted, lastPathComponent];

  return v13;
}

- (void)setDestination:(id)destination
{
  destinationCopy = destination;
  if (self->_destination)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:875 description:@"Conversion destination may be set only once"];

    destination = self->_destination;
  }

  else
  {
    destination = 0;
  }

  self->_destination = destinationCopy;
}

- (PHMediaFormatConversionRequest)init
{
  v17 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = PHMediaFormatConversionRequest;
  v2 = [(PHMediaFormatConversionRequest *)&v12 init];
  if (v2)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    identifier = v2->_identifier;
    v2->_identifier = uUID;

    v2->_status = 1;
    v2->_livePhotoPairingIdentifierBehavior = 4;
    uUID2 = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID2 UUIDString];
    livePhotoPairingIdentifier = v2->_livePhotoPairingIdentifier;
    v2->_livePhotoPairingIdentifier = uUIDString;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v10 = v2->_identifier;
      v11 = v2->_livePhotoPairingIdentifier;
      *buf = 138543618;
      v14 = v10;
      v15 = 2114;
      v16 = v11;
      _os_log_debug_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Initial live photo pairing identifier for request %{public}@: %{public}@", buf, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v2;
}

+ (double)heifToJPEGFactorForBitsPerPixel:(double)pixel
{
  v3 = 2.3;
  if (pixel > 1.3)
  {
    v3 = 2.0;
  }

  v4 = pixel > 0.7;
  result = 3.0;
  if (v4)
  {
    return v3;
  }

  return result;
}

+ (double)heifToJPEGFactorWithImageDimensions:(CGSize)dimensions fileLength:(unint64_t)length
{
  v4 = *MEMORY[0x277CBF3A8];
  v5 = dimensions.height == *(MEMORY[0x277CBF3A8] + 8) && dimensions.width == *MEMORY[0x277CBF3A8];
  if (!length || v5)
  {
    return 2.3;
  }

  [self bitsPerPixelWithImageDimensions:? fileLength:?];

  [self heifToJPEGFactorForBitsPerPixel:?];
  return result;
}

+ (BOOL)hasInternalDiagnostics
{
  if (hasInternalDiagnostics_onceToken != -1)
  {
    dispatch_once(&hasInternalDiagnostics_onceToken, &__block_literal_global_421);
  }

  return hasInternalDiagnostics_hasInternalDiagnostics;
}

uint64_t __56__PHMediaFormatConversionRequest_hasInternalDiagnostics__block_invoke()
{
  result = os_variant_has_internal_diagnostics();
  hasInternalDiagnostics_hasInternalDiagnostics = result;
  return result;
}

+ (id)requestForSource:(id)source destinationCapabilities:(id)capabilities error:(id *)error
{
  capabilitiesCopy = capabilities;
  sourceCopy = source;
  fileURL = [sourceCopy fileURL];

  if (!fileURL)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:926 description:{@"Invalid parameter not satisfying: %@", @"source.fileURL"}];
  }

  [objc_opt_class() requestClass];
  v12 = objc_opt_new();
  [v12 setSource:sourceCopy];

  [v12 setDestinationCapabilities:capabilitiesCopy];
  if ([v12 prepareWithError:error])
  {
    [v12 setupProgress];
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)stringForRequestStatus:(int64_t)status
{
  if ((status - 1) > 4)
  {
    return @"PHMediaFormatRequestStatusUnknown";
  }

  else
  {
    return off_27989B800[status - 1];
  }
}

@end