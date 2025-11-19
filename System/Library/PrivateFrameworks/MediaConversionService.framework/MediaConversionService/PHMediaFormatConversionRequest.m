@interface PHMediaFormatConversionRequest
+ (BOOL)hasInternalDiagnostics;
+ (double)heifToJPEGFactorForBitsPerPixel:(double)a3;
+ (double)heifToJPEGFactorWithImageDimensions:(CGSize)a3 fileLength:(unint64_t)a4;
+ (id)requestForSource:(id)a3 destinationCapabilities:(id)a4 error:(id *)a5;
+ (id)stringForRequestStatus:(int64_t)a3;
- (BOOL)_calculateRequiresFormatConversion;
- (BOOL)_isKnownUTTypeForPathExtension:(id)a3;
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
- (void)enableSinglePassVideoEncodingWithUpdateHandler:(id)a3;
- (void)markAsCancelled;
- (void)padOutputFileToEstimatedLength;
- (void)preflightWithConversionManager:(id)a3;
- (void)setAccessibilityDescriptionMetadataBehavior:(int64_t)a3 withAccessibilityDescription:(id)a4;
- (void)setCaptionMetadataBehavior:(int64_t)a3 withCaption:(id)a4;
- (void)setCreationDateMetadataBehavior:(int64_t)a3 withCreationDate:(id)a4 inTimeZone:(id)a5;
- (void)setDestination:(id)a3;
- (void)setFormatConversionExpansionFactor:(double)a3;
- (void)setLocationMetadataBehavior:(int64_t)a3 withLocation:(id)a4;
- (void)setupProgress;
- (void)updateSinglePassVideoConversionStatus:(int64_t)a3 addedRange:(_NSRange)a4 error:(id)a5;
@end

@implementation PHMediaFormatConversionRequest

- (PHMediaFormatConversionCompositeRequest)parentRequest
{
  WeakRetained = objc_loadWeakRetained(&self->_parentRequest);

  return WeakRetained;
}

- (void)updateSinglePassVideoConversionStatus:(int64_t)a3 addedRange:(_NSRange)a4 error:(id)a5
{
  length = a4.length;
  location = a4.location;
  v17 = *MEMORY[0x277D85DE8];
  v9 = a5;
  if (!self->_requiresSinglePassVideoConversion)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:1471 description:@"Invalid request configuration for single pass video conversion callback"];
  }

  if (!self->_singlePassVideoConversionUpdateHandler)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:1472 description:@"Unexpected nil single pass video conversion update handler"];
  }

  v10 = [(PHMediaFormatConversionRequest *)self status];
  if (v10 == 3)
  {
    [(PHMediaFormatConversionDestination *)self->_destination addAvailableRange:location, length];
    (*(self->_singlePassVideoConversionUpdateHandler + 2))();
  }

  else
  {
    v11 = v10;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134217984;
      v16 = v11;
      _os_log_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Ignoring single pass video conversion status update for request in non-processing state %zd", &v15, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)enableSinglePassVideoEncodingWithUpdateHandler:(id)a3
{
  v8 = a3;
  if ([(PHMediaFormatConversionContent *)self->_source mediaType]!= 1 || [(PHMediaFormatConversionRequest *)self isCompositeRequest])
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:1464 description:@"Invalid request configuration for single pass video conversion"];
  }

  self->_requiresSinglePassVideoConversion = 1;
  v5 = MEMORY[0x259C84340](v8);
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
    v3 = [(PHMediaFormatConversionRequest *)self destination];
    v4 = [v3 singlePassVideoExportRangeCoordinator];
    [v4 cancel];
  }

  v5 = [(PHMediaFormatConversionRequest *)self progress];
  [v5 setCompletedUnitCount:1];
}

- (void)padOutputFileToEstimatedLength
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [(PHMediaFormatConversionRequest *)self destination];
  v16 = 0;
  v4 = [v3 padToLength:-[PHMediaFormatConversionRequest estimatedOutputFileLength](self error:{"estimatedOutputFileLength"), &v16}];
  v5 = v16;

  if ((v4 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v15 = [(PHMediaFormatConversionRequest *)self source];
      v7 = [v15 fileType];
      v8 = [(PHMediaFormatConversionRequest *)self destination];
      v9 = [v8 length];
      v10 = [(PHMediaFormatConversionRequest *)self estimatedOutputFileLength];
      v11 = [(PHMediaFormatConversionRequest *)self source];
      v12 = [v11 fileURL];
      v13 = [(PHMediaFormatConversionRequest *)self destination];
      v14 = [v13 fileURL];
      *buf = 138544642;
      v18 = v7;
      v19 = 2048;
      v20 = v9;
      v21 = 2048;
      v22 = v10;
      v23 = 2114;
      v24 = v5;
      v25 = 2112;
      v26 = v12;
      v27 = 2112;
      v28 = v14;
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
      v20 = [MEMORY[0x277CCA890] currentHandler];
      [v20 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:1384 description:@"Request must be preflighted"];
    }

    v5 = [(PHMediaFormatConversionRequest *)self source];
    v6 = [v5 isVideo];

    if (v6)
    {
      [(PHMediaFormatConversionRequest *)self requiresSinglePassVideoConversion];
      formatConversionExpansionFactor = 2.2;
    }

    else
    {
      v7 = objc_opt_class();
      v8 = [(PHMediaFormatConversionRequest *)self source];
      [v8 imageDimensions];
      v10 = v9;
      v12 = v11;
      v13 = [(PHMediaFormatConversionRequest *)self source];
      [v7 heifToJPEGFactorWithImageDimensions:objc_msgSend(v13 fileLength:{"length"), v10, v12}];
      formatConversionExpansionFactor = v14;

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v17 = [(PHMediaFormatConversionRequest *)self source];
        [v17 imageDimensions];
        v18 = NSStringFromSize(v28);
        v19 = [(PHMediaFormatConversionRequest *)self source];
        v21 = 134218498;
        v22 = formatConversionExpansionFactor;
        v23 = 2112;
        v24 = v18;
        v25 = 2048;
        v26 = [v19 length];
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

- (void)setFormatConversionExpansionFactor:(double)a3
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    formatConversionExpansionFactor = self->_formatConversionExpansionFactor;
    v7 = 134217984;
    v8 = formatConversionExpansionFactor;
    _os_log_debug_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Setting explicit formatConversionExpansionFactor: %f", &v7, 0xCu);
  }

  self->_formatConversionExpansionFactor = a3;
  v5 = *MEMORY[0x277D85DE8];
}

- (unint64_t)estimatedOutputFileLength
{
  if ([(PHMediaFormatConversionRequest *)self requiresFormatConversion])
  {
    v3 = [(PHMediaFormatConversionRequest *)self source];
    v4 = [v3 length];
    [(PHMediaFormatConversionRequest *)self formatConversionExpansionFactor];
    v6 = (v5 * v4);
  }

  else
  {
    v7 = [(PHMediaFormatConversionRequest *)self requiresPassthroughConversion];
    v3 = [(PHMediaFormatConversionRequest *)self source];
    v6 = [v3 length];
    if (v7)
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
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:1337 description:@"Request must be preflighted"];
  }

  v4 = [(PHMediaFormatConversionRequest *)self source];

  if (!v4)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:1338 description:@"Invalid request for output type identifier on request without source"];
  }

  v5 = [(PHMediaFormatConversionRequest *)self source];
  if ([v5 mediaType] != 2)
  {

    goto LABEL_11;
  }

  v6 = [(PHMediaFormatConversionRequest *)self requiresFormatConversion];

  if (!v6)
  {
LABEL_11:
    v15 = [(PHMediaFormatConversionRequest *)self source];
    v7 = [v15 fileType];
LABEL_12:

    goto LABEL_13;
  }

  v7 = [*MEMORY[0x277CE1DC0] identifier];
  v8 = [(PHMediaFormatConversionRequest *)self forcedOutputPathExtension];

  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = [(PHMediaFormatConversionRequest *)self forcedOutputPathExtension];
  v10 = [(PHMediaFormatConversionRequest *)self _isKnownUTTypeForPathExtension:v9];

  if (v10)
  {
    v11 = MEMORY[0x277CE1CB8];
    v12 = [(PHMediaFormatConversionRequest *)self forcedOutputPathExtension];
    v13 = [v11 typeWithFilenameExtension:v12];

    v14 = [v13 identifier];

    v7 = v14;
    goto LABEL_13;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v15 = [(PHMediaFormatConversionRequest *)self forcedOutputPathExtension];
    v20 = 138412546;
    v21 = v15;
    v22 = 2114;
    v23 = v7;
    _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Forced path extension (%@) is not a known UTType. Falling back to %{public}@ as the output type identifier.", &v20, 0x16u);
    goto LABEL_12;
  }

LABEL_13:
  v16 = *MEMORY[0x277D85DE8];

  return v7;
}

- (NSString)outputPathExtension
{
  v21 = *MEMORY[0x277D85DE8];
  if (![(PHMediaFormatConversionRequest *)self preflighted])
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:1319 description:@"Request must be preflighted"];
  }

  v4 = [(PHMediaFormatConversionRequest *)self source];

  if (!v4)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:1320 description:@"Invalid request for output path extension on request without source"];
  }

  v5 = [(PHMediaFormatConversionRequest *)self source];
  if ([v5 mediaType] != 2)
  {

    goto LABEL_11;
  }

  v6 = [(PHMediaFormatConversionRequest *)self requiresFormatConversion];

  if (!v6)
  {
LABEL_11:
    v11 = [(PHMediaFormatConversionRequest *)self source];
    v12 = [v11 fileURL];
    v10 = [v12 pathExtension];

LABEL_12:
    goto LABEL_13;
  }

  v7 = [(PHMediaFormatConversionRequest *)self forcedOutputPathExtension];

  if (v7)
  {
    v8 = [(PHMediaFormatConversionRequest *)self forcedOutputPathExtension];
    v9 = [(PHMediaFormatConversionRequest *)self _isKnownUTTypeForPathExtension:v8];

    if (v9)
    {
      v10 = [(PHMediaFormatConversionRequest *)self forcedOutputPathExtension];
      goto LABEL_13;
    }

    v10 = @"jpg";
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v11 = [(PHMediaFormatConversionRequest *)self forcedOutputPathExtension];
      v17 = 138412546;
      v18 = v11;
      v19 = 2114;
      v20 = @"jpg";
      _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Forced path extension (%@) is not a known UTType. Falling back to %{public}@ as the output path extension.", &v17, 0x16u);
      goto LABEL_12;
    }
  }

  else
  {
    v10 = @"jpg";
  }

LABEL_13:
  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)_isKnownUTTypeForPathExtension:(id)a3
{
  v3 = [MEMORY[0x277CE1CB8] typeWithFilenameExtension:a3];
  v4 = [v3 isDynamic];

  return v4 ^ 1;
}

- (void)setAccessibilityDescriptionMetadataBehavior:(int64_t)a3 withAccessibilityDescription:(id)a4
{
  v7 = a4;
  v12 = v7;
  if (self->_accessibilityDescriptionMetadataBehavior != a3 || (v8 = [(NSString *)self->_accessibilityDescription isEqualToString:v7], v7 = v12, !v8))
  {
    self->_accessibilityDescriptionMetadataBehavior = a3;
    if (a3 == 2)
    {
      if (!v7)
      {
        v11 = [MEMORY[0x277CCA890] currentHandler];
        [v11 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:1304 description:@"caption must not be nil if accessibilityDescriptionMetadataBehavior is PHMediaFormatMetadataBehaviorApply"];

        v7 = v12;
      }

      v9 = [v7 copy];
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

- (void)setCaptionMetadataBehavior:(int64_t)a3 withCaption:(id)a4
{
  v7 = a4;
  v12 = v7;
  if (self->_captionMetadataBehavior != a3 || (v8 = [(NSString *)self->_caption isEqualToString:v7], v7 = v12, !v8))
  {
    self->_captionMetadataBehavior = a3;
    if (a3 == 2)
    {
      if (!v7)
      {
        v11 = [MEMORY[0x277CCA890] currentHandler];
        [v11 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:1290 description:@"caption must not be nil if behavior is PHMediaFormatMetadataBehaviorApply"];

        v7 = v12;
      }

      v9 = [v7 copy];
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

- (void)setCreationDateMetadataBehavior:(int64_t)a3 withCreationDate:(id)a4 inTimeZone:(id)a5
{
  v16 = a4;
  v10 = a5;
  if (a3 == 1)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:1267 description:@"Stripping creation date metadata is not permitted"];
  }

  if (self->_creationDateMetadataBehavior != a3 || ![(NSDate *)self->_creationDate isEqualToDate:v16])
  {
    self->_creationDateMetadataBehavior = a3;
    if (a3 == 2)
    {
      if (!v16)
      {
        v15 = [MEMORY[0x277CCA890] currentHandler];
        [v15 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:1274 description:@"creationDate must not be nil if behavior is PHMediaFormatMetadataBehaviorApply"];
      }

      objc_storeStrong(&self->_creationDate, a4);
      v11 = v10;
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

- (void)setLocationMetadataBehavior:(int64_t)a3 withLocation:(id)a4
{
  v7 = a4;
  v12 = v7;
  if (self->_locationMetadataBehavior != a3 || (v8 = [(CLLocation *)self->_location isEqual:v7], v7 = v12, (v8 & 1) == 0))
  {
    self->_locationMetadataBehavior = a3;
    if (a3 == 2)
    {
      if (!v7)
      {
        v11 = [MEMORY[0x277CCA890] currentHandler];
        [v11 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:1259 description:@"location must not be nil if behavior is PHMediaFormatMetadataBehaviorApply"];

        v7 = v12;
      }

      v9 = v7;
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
  v3 = [(PHMediaFormatConversionRequest *)self destinationCapabilities];
  v4 = [v3 outOfBandHints];

  if (v4)
  {
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D3B578]];
    v6 = v5;
    if (v5 && [v5 integerValue] == 1 && -[PHMediaFormatConversionSource containsProResVideoWithFormatEligibleForTranscoding](self->_source, "containsProResVideoWithFormatEligibleForTranscoding"))
    {
      LOBYTE(v7) = 1;
    }

    else
    {
      if ([(PHMediaFormatConversionContent *)self->_source isVideo]&& [(PHMediaFormatConversionSource *)self->_source containsVideoWithFormatEligibleForTranscoding])
      {
        v8 = [v4 objectForKeyedSubscript:*MEMORY[0x277D3B570]];
        if (v8)
        {
          v9 = [(PHMediaFormatConversionSource *)self->_source firstVideoTrackCodec];
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

                if ([*(*(&v29 + 1) + 8 * i) unsignedIntValue] == v9)
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

      v15 = [v4 objectForKeyedSubscript:*MEMORY[0x277D3B568]];
      v16 = MEMORY[0x277D3B508];
      v17 = [(PHMediaFormatConversionContent *)self->_source fileType];
      v10 = [v16 typeWithIdentifier:v17];

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
    v45 = [MEMORY[0x277CCA890] currentHandler];
    [v45 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:1128 description:@"Request must be preflighted"];
  }

  v4 = [(PHMediaFormatConversionRequest *)self forceFormatConversion];
  v5 = [(PHMediaFormatConversionRequest *)self useTransferBehaviorUserPreference];
  v6 = [(PHMediaFormatConversionRequest *)self userPreferenceProhibitsFormatConversion];
  v7 = [(PHMediaFormatConversionRequest *)self destinationCapabilitiesHintsIndicateSupportForSource];
  v8 = [(PHMediaFormatConversionRequest *)self source];
  v9 = [v8 isVideo];

  v10 = [(PHMediaFormatConversionRequest *)self source];
  v11 = v10;
  if (!v9)
  {
    v23 = [v10 isImage];

    if (v23)
    {
      v24 = [(PHMediaFormatConversionRequest *)self source];
      v25 = [v24 containsImageWithFormatEligibleForTranscoding];

      if (v25)
      {
        v26 = [(PHMediaFormatConversionRequest *)self destinationCapabilities];
        v27 = [*MEMORY[0x277CE1F10] identifier];
        v28 = [v26 supportForContainerTypeIdentifier:v27];

        v18 = ((v28 + 1) < 2) & ~v7;
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

  v12 = [v10 containsVideoWithFormatEligibleForTranscoding];

  if (v7 & 1 | ((v12 & 1) == 0))
  {
    goto LABEL_14;
  }

  v13 = [(PHMediaFormatConversionRequest *)self source];
  v14 = [v13 transcodingEligibleVideoTrackFormatDescription];

  if (!v14)
  {
    v29 = [(PHMediaFormatConversionRequest *)self source];
    v30 = [v29 firstVideoTrackCodec];

    if (v30 == 1752589105)
    {
      v31 = [(PHMediaFormatConversionRequest *)self destinationCapabilities];
      v32 = [v31 supportForCodec:1752589105];

      v18 = v32 == -1;
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_18;
  }

  v15 = [(PHMediaFormatConversionRequest *)self destinationCapabilities];
  v16 = [v15 decodingSupportForFormatDescription:v14];

  v17 = [(PHMediaFormatConversionRequest *)self shouldExportAsHDR];
  v18 = 0;
  v19 = 1;
  v20 = v16 != 2;
  if (v16 != 2 && v17)
  {
    v21 = [(PHMediaFormatConversionRequest *)self source];
    v22 = [v21 containsProResVideoWithFormatEligibleForTranscoding];

    if ((v22 & 1) == 0)
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
    v33 = v19 & (v4 | (!v5 || !v6) & (v20 | v18));
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
    v46 = v5;
    v47 = v18;
    v35 = v6;
    v36 = [MEMORY[0x277D3B448] stringForSupport:v16];
    v37 = [(PHMediaFormatConversionRequest *)self shouldExportAsHDR];
    v38 = [(PHMediaFormatConversionRequest *)self source];
    v39 = [v38 fileURL];
    v40 = [v39 lastPathComponent];
    v41 = v19;
    v42 = v40;
    *buf = 67111939;
    v51 = v33;
    v52 = 1024;
    v53 = v41;
    v54 = 1024;
    v55 = v4;
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
    v67 = v7;
    v68 = 1024;
    v69 = v48;
    v70 = 1024;
    v71 = v37;
    v72 = 2113;
    v73 = v40;
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
    v3 = [(PHMediaFormatConversionRequest *)self _calculateRequiresFormatConversion];
    self->_requiresFormatConversion = v3;
  }

  return v3;
}

- (BOOL)requiresAccessibilityDescriptionMetadataChange
{
  if ([(PHMediaFormatConversionRequest *)self accessibilityDescriptionMetadataBehavior]== 1)
  {
    v3 = [(PHMediaFormatConversionRequest *)self source];
    v4 = [v3 accessibilityDescriptionMetadataStatus] == 2;
  }

  else
  {
    v4 = 0;
  }

  if ([(PHMediaFormatConversionRequest *)self accessibilityDescriptionMetadataBehavior]== 2)
  {
    v5 = [(PHMediaFormatConversionRequest *)self accessibilityDescription];
    v6 = v5 != 0;
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
    v3 = [(PHMediaFormatConversionRequest *)self source];
    v4 = [v3 captionMetadataStatus] == 2;
  }

  else
  {
    v4 = 0;
  }

  if ([(PHMediaFormatConversionRequest *)self captionMetadataBehavior]== 2)
  {
    v5 = [(PHMediaFormatConversionRequest *)self caption];
    v6 = v5 != 0;
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

  v3 = [(PHMediaFormatConversionRequest *)self creationDate];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)requiresLocationMetadataChange
{
  if ([(PHMediaFormatConversionRequest *)self locationMetadataBehavior]== 1)
  {
    v3 = [(PHMediaFormatConversionRequest *)self source];
    v4 = [v3 locationMetadataStatus] == 2;
  }

  else
  {
    v4 = 0;
  }

  if ([(PHMediaFormatConversionRequest *)self locationMetadataBehavior]== 2)
  {
    v5 = [(PHMediaFormatConversionRequest *)self location];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v4 || v6;
}

- (BOOL)requiresLivePhotoPairingIdentifierChange
{
  v4 = [(PHMediaFormatConversionRequest *)self livePhotoPairingIdentifierBehavior];
  v5 = 1;
  if (v4 <= 1)
  {
    if (v4)
    {
      return v4 != 1;
    }

    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:1084 description:@"Unexpected invalid live photo pairing identifier behavior value"];

    return 1;
  }

  if (v4 == 5)
  {
    v8 = [(PHMediaFormatConversionRequest *)self source];
    v9 = [v8 livePhotoPairingIdentifier];
    if (v9)
    {
      v5 = [(PHMediaFormatConversionRequest *)self requiresFormatConversion];
    }

    else
    {
      v5 = 0;
    }

    return v5;
  }

  if (v4 != 4)
  {
    if (v4 == 2)
    {
      v6 = [(PHMediaFormatConversionRequest *)self source];
      v7 = [v6 livePhotoPairingIdentifier];
      v5 = v7 != 0;
    }

    return v5;
  }

  return [(PHMediaFormatConversionRequest *)self requiresFormatConversion];
}

- (BOOL)requiresMetadataChanges
{
  v3 = [(PHMediaFormatConversionRequest *)self source];
  v4 = [v3 renderOriginatingSignature];
  v5 = v4 || [(PHMediaFormatConversionRequest *)self requiresLivePhotoPairingIdentifierChange]|| [(PHMediaFormatConversionRequest *)self requiresLocationMetadataChange]|| [(PHMediaFormatConversionRequest *)self requiresCreationDateMetadataChange]|| [(PHMediaFormatConversionRequest *)self requiresCaptionMetadataChange]|| [(PHMediaFormatConversionRequest *)self requiresAccessibilityDescriptionMetadataChange];

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
        v11 = [(PHMediaFormatConversionContent *)self->_source fileType];
        v12 = [v10 typeWithIdentifier:v11];
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
  v3 = [(PHMediaFormatConversionRequest *)self useTransferBehaviorUserPreference];
  v4 = [(PHMediaFormatConversionRequest *)self userPreferenceProhibitsFormatConversion];
  if (v3 && v4 || [(PHMediaFormatConversionRequest *)self requiresFormatConversion]|| ![(PHMediaFormatConversionRequest *)self requiresMetadataChanges])
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

  v3 = [(PHMediaFormatConversionRequest *)self videoExportPreset];

  if (v3)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)preflightWithConversionManager:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = [(PHMediaFormatConversionRequest *)self status];
  if (v5 <= 5 && ((1 << v5) & 0x31) != 0)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = [(PHMediaFormatConversionRequest *)self statusString];
    [v6 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:957 description:{@"Preflight of request in invalid state %@", v7}];
  }

  if ([(PHMediaFormatConversionRequest *)self preflighted])
  {
    v25 = [MEMORY[0x277CCA890] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:960 description:@"Preflight of already preflighted request"];
  }

  v8 = [(PHMediaFormatConversionRequest *)self source];

  if (!v8)
  {
    v26 = [MEMORY[0x277CCA890] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:962 description:@"Preflight of request without source"];
  }

  if ([(PHMediaFormatConversionRequest *)self locationMetadataBehavior]!= 1)
  {
    v9 = [(PHMediaFormatConversionRequest *)self source];
    [v9 markLocationMetadataAsCheckedWithStatus:1];
  }

  if ([(PHMediaFormatConversionRequest *)self captionMetadataBehavior]!= 1)
  {
    v10 = [(PHMediaFormatConversionRequest *)self source];
    [v10 markCaptionMetadataAsCheckedWithStatus:1];
  }

  if ([(PHMediaFormatConversionRequest *)self accessibilityDescriptionMetadataBehavior]!= 1)
  {
    v11 = [(PHMediaFormatConversionRequest *)self source];
    [v11 markAccessibilityDescriptionMetadataAsCheckedWithStatus:1];
  }

  v12 = [(PHMediaFormatConversionRequest *)self source];
  v27 = 0;
  v13 = [v12 preflightWithError:&v27];
  v14 = v27;

  if (v13)
  {
    if (![(PHMediaFormatConversionRequest *)self requiresSinglePassVideoConversion])
    {
      goto LABEL_25;
    }

    v15 = [(PHMediaFormatConversionRequest *)self source];
    if ([v15 mediaType] == 1)
    {
      v16 = [(PHMediaFormatConversionRequest *)self isCompositeRequest];

      if (!v16)
      {
        if ([(PHMediaFormatConversionRequest *)self locationMetadataBehavior]|| [(PHMediaFormatConversionRequest *)self creationDateMetadataBehavior]|| [(PHMediaFormatConversionRequest *)self captionMetadataBehavior]|| [(PHMediaFormatConversionRequest *)self accessibilityDescriptionMetadataBehavior])
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v17 = [(PHMediaFormatConversionRequest *)self source];
            *buf = 138412290;
            v29 = v17;
            v18 = MEMORY[0x277D86220];
            v19 = "Invalid request using single pass encoding option and metadata changes (like location stripping, custom location, custom creation date, custom description) for video source %@";
LABEL_36:
            _os_log_error_impl(&dword_2585D9000, v18, OS_LOG_TYPE_ERROR, v19, buf, 0xCu);

            goto LABEL_32;
          }

          goto LABEL_32;
        }

LABEL_25:
        v20 = [(PHMediaFormatConversionRequest *)self destinationCapabilities];
        if ([v20 supportsHDR])
        {
          v21 = [(PHMediaFormatConversionRequest *)self source];
          -[PHMediaFormatConversionRequest setShouldExportAsHDR:](self, "setShouldExportAsHDR:", [v21 isHDR]);
        }

        else
        {
          [(PHMediaFormatConversionRequest *)self setShouldExportAsHDR:0];
        }

        [(PHMediaFormatConversionRequest *)self setPreflighted:1];
        v22 = [(PHMediaFormatConversionRequest *)self parentRequest];
        v23 = v22;
        if (v22)
        {
          [v22 didPreflightSubrequest:self];
        }

        goto LABEL_33;
      }
    }

    else
    {
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v17 = [(PHMediaFormatConversionRequest *)self source];
      *buf = 138412290;
      v29 = v17;
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
  v4 = [(PHMediaFormatConversionRequest *)self status];

  return [v3 stringForRequestStatus:v4];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PHMediaFormatConversionRequest *)self identifier];
  v7 = [(PHMediaFormatConversionRequest *)self statusString];
  v8 = [(PHMediaFormatConversionRequest *)self preflighted];
  v9 = [(PHMediaFormatConversionRequest *)self source];
  v10 = [v9 fileURL];
  v11 = [v10 path];
  v12 = [v11 lastPathComponent];
  v13 = [v3 stringWithFormat:@"<%@ %p identifier=%@ status=%@ preflighted=%d path=%@>", v5, self, v6, v7, v8, v12];

  return v13;
}

- (void)setDestination:(id)a3
{
  v5 = a3;
  if (self->_destination)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:875 description:@"Conversion destination may be set only once"];

    destination = self->_destination;
  }

  else
  {
    destination = 0;
  }

  self->_destination = v5;
}

- (PHMediaFormatConversionRequest)init
{
  v17 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = PHMediaFormatConversionRequest;
  v2 = [(PHMediaFormatConversionRequest *)&v12 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAD78] UUID];
    identifier = v2->_identifier;
    v2->_identifier = v3;

    v2->_status = 1;
    v2->_livePhotoPairingIdentifierBehavior = 4;
    v5 = [MEMORY[0x277CCAD78] UUID];
    v6 = [v5 UUIDString];
    livePhotoPairingIdentifier = v2->_livePhotoPairingIdentifier;
    v2->_livePhotoPairingIdentifier = v6;

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

+ (double)heifToJPEGFactorForBitsPerPixel:(double)a3
{
  v3 = 2.3;
  if (a3 > 1.3)
  {
    v3 = 2.0;
  }

  v4 = a3 > 0.7;
  result = 3.0;
  if (v4)
  {
    return v3;
  }

  return result;
}

+ (double)heifToJPEGFactorWithImageDimensions:(CGSize)a3 fileLength:(unint64_t)a4
{
  v4 = *MEMORY[0x277CBF3A8];
  v5 = a3.height == *(MEMORY[0x277CBF3A8] + 8) && a3.width == *MEMORY[0x277CBF3A8];
  if (!a4 || v5)
  {
    return 2.3;
  }

  [a1 bitsPerPixelWithImageDimensions:? fileLength:?];

  [a1 heifToJPEGFactorForBitsPerPixel:?];
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

+ (id)requestForSource:(id)a3 destinationCapabilities:(id)a4 error:(id *)a5
{
  v9 = a4;
  v10 = a3;
  v11 = [v10 fileURL];

  if (!v11)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"PHMediaFormatConversion.m" lineNumber:926 description:{@"Invalid parameter not satisfying: %@", @"source.fileURL"}];
  }

  [objc_opt_class() requestClass];
  v12 = objc_opt_new();
  [v12 setSource:v10];

  [v12 setDestinationCapabilities:v9];
  if ([v12 prepareWithError:a5])
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

+ (id)stringForRequestStatus:(int64_t)a3
{
  if ((a3 - 1) > 4)
  {
    return @"PHMediaFormatRequestStatusUnknown";
  }

  else
  {
    return off_27989B800[a3 - 1];
  }
}

@end