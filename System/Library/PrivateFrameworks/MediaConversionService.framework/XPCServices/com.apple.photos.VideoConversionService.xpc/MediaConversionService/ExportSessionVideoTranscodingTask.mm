@interface ExportSessionVideoTranscodingTask
+ (id)videoDateFormatter;
- (BOOL)hasProgress;
- (double)currentFractionCompleted;
- (id)exportPresetName;
- (id)exportSessionCompletionHandler;
- (id)exportSessionForInputAsset:(id)asset presetName:(id)name;
- (id)metadataItemsFromOptionsAndInputAsset:(id)asset;
- (id)outputFileTypeForExportSession:(id)session;
- (void)addOutputMetadataFromOptionsAndInputAsset:(id)asset toExportSession:(id)session;
- (void)cancelTranscode;
- (void)configureOutputForExportSession:(id)session outputFileType:(id)type;
- (void)dumpStatistics;
- (void)performExport;
- (void)performMetadataTrackExtractionConversion;
- (void)performPassthroughConversion;
- (void)startExportSession:(id)session;
@end

@implementation ExportSessionVideoTranscodingTask

+ (id)videoDateFormatter
{
  if (qword_100044F10 != -1)
  {
    dispatch_once(&qword_100044F10, &stru_10003D4D0);
  }

  v3 = qword_100044F18;

  return v3;
}

- (void)dumpStatistics
{
  conversionEndTime = [(VideoConversionTask *)self conversionEndTime];
  conversionStartTime = [(VideoConversionTask *)self conversionStartTime];
  [conversionEndTime timeIntervalSinceDate:conversionStartTime];
  v6 = v5;

  asset = [(VideoConversionTask *)self asset];
  v8 = asset;
  if (asset)
  {
    [asset duration];
  }

  else
  {
    memset(&v20, 0, sizeof(v20));
  }

  Seconds = CMTimeGetSeconds(&v20);
  v10 = [PFMediaUtilities tracksWithMediaType:AVMediaTypeVideo forAsset:v8];
  firstObject = [v10 firstObject];
  [firstObject nominalFrameRate];
  v13 = v12;

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v14 = v13;
    v15 = Seconds * v14 / v6;
    v16 = v6 / Seconds;
    identifier = [(VideoConversionTask *)self identifier];
    exportSession = [(ExportSessionVideoTranscodingTask *)self exportSession];
    status = [exportSession status];
    LODWORD(v20.value) = 138544898;
    *(&v20.value + 4) = identifier;
    LOWORD(v20.flags) = 2048;
    *(&v20.flags + 2) = status;
    HIWORD(v20.epoch) = 2048;
    v21 = v6;
    v22 = 2048;
    v23 = Seconds;
    v24 = 2048;
    v25 = v14;
    v26 = 2048;
    v27 = v16;
    v28 = 2048;
    v29 = v15;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Export session for conversion task %{public}@ finished, status %ld, conversion duration %.1fs, input asset duration %.1fs (%.1ffps), %.1f x realtime (%.1ffps)", &v20, 0x48u);
  }
}

- (id)outputFileTypeForExportSession:(id)session
{
  sessionCopy = session;
  if (!sessionCopy)
  {
    v14 = +[NSAssertionHandler currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"VideoConversionService.m" lineNumber:1147 description:{@"Invalid parameter not satisfying: %@", @"exportSession"}];
  }

  options = [(VideoConversionTask *)self options];
  v7 = [options objectForKey:@"PAMediaConversionServiceOptionOutputFileTypeKey"];

  supportedFileTypes = [sessionCopy supportedFileTypes];
  v9 = supportedFileTypes;
  if (!v7 || ([supportedFileTypes containsObject:v7] & 1) == 0)
  {
    firstObject = [v9 firstObject];

    v7 = firstObject;
    if (!firstObject)
    {
      [(VideoConversionTask *)self setStatus:2];
      v15 = NSLocalizedDescriptionKey;
      v16 = @"Unable to determine export output file type";
      v11 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      v12 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:3 userInfo:v11];
      [(VideoConversionTask *)self setError:v12];

      [(VideoTranscodingTask *)self callCompletionHandler];
      v7 = 0;
    }
  }

  return v7;
}

- (id)exportPresetName
{
  options = [(VideoConversionTask *)self options];
  v3 = [options objectForKey:@"PAMediaConversionServiceOptionExportPresetNameKey"];

  if (!v3)
  {
    v3 = AVAssetExportPreset1280x720;
  }

  return v3;
}

- (id)metadataItemsFromOptionsAndInputAsset:(id)asset
{
  metadata = [asset metadata];
  options = [(VideoConversionTask *)self options];
  v6 = objc_opt_new();
  v7 = [options objectForKeyedSubscript:@"PAMediaConversionServiceOptionAVMetadataIncludeLocationKey"];
  bOOLValue = [v7 BOOLValue];

  v9 = [options objectForKeyedSubscript:@"PAMediaConversionServiceOptionAVMetadataLocationKey"];
  v10 = v9;
  if (!bOOLValue || v9)
  {
    [v6 addObject:AVMetadataIdentifierQuickTimeMetadataLocationISO6709];
    [v6 addObject:AVMetadataIdentifierQuickTimeUserDataLocationISO6709];
    [v6 addObject:AVMetadataIdentifier3GPUserDataLocation];
  }

  v11 = [options objectForKeyedSubscript:@"PAMediaConversionServiceOptionAVMetadataIncludeDescriptionKey"];
  bOOLValue2 = [v11 BOOLValue];

  v13 = [options objectForKeyedSubscript:@"PAMediaConversionServiceOptionAVMetadataDescriptionKey"];
  v14 = v13;
  if (!bOOLValue2 || v13)
  {
    [v6 addObject:AVMetadataCommonIdentifierDescription];
    [v6 addObject:AVMetadataIdentifierQuickTimeMetadataDescription];
    [v6 addObject:AVMetadataIdentifierQuickTimeUserDataDescription];
    [v6 addObject:AVMetadataIdentifier3GPUserDataDescription];
  }

  v55 = v14;
  v15 = [options objectForKeyedSubscript:@"PAMediaConversionServiceOptionAVMetadataIncludeAccessibilityDescriptionKey"];
  bOOLValue3 = [v15 BOOLValue];

  v17 = [options objectForKeyedSubscript:@"PAMediaConversionServiceOptionAVMetadataAccessibilityDescriptionKey"];
  v18 = v17;
  if (!bOOLValue3 || v17)
  {
    [v6 addObject:AVMetadataCommonKeyAccessibilityDescription];
  }

  v57 = [options objectForKeyedSubscript:@"PAMediaConversionServiceOptionAVMetadataKeywordsKey"];
  if (v57)
  {
    [v6 addObject:AVMetadataIdentifierQuickTimeMetadataKeywords];
  }

  v56 = [options objectForKeyedSubscript:@"PAMediaConversionServiceOptionAVMetadataContentCreationDateKey"];
  if (v56)
  {
    [v6 addObject:AVMetadataCommonIdentifierCreationDate];
    [v6 addObject:AVMetadataIdentifierQuickTimeUserDataCreationDate];
    [v6 addObject:AVMetadataIdentifierQuickTimeMetadataCreationDate];
  }

  v53 = v18;
  v19 = [options objectForKeyedSubscript:@"PAMediaConversionServiceOptionAVMetadataTitleKey"];
  if (v19)
  {
    [v6 addObject:AVMetadataIdentifierQuickTimeMetadataTitle];
  }

  v20 = +[NSMutableArray array];
  v58 = v19;
  v54 = v10;
  if ([metadata count])
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v52 = metadata;
    v21 = metadata;
    v22 = [v21 countByEnumeratingWithState:&v63 objects:v68 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v64;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v64 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v63 + 1) + 8 * i);
          identifier = [v26 identifier];
          v28 = [v6 containsObject:identifier];

          if ((v28 & 1) == 0)
          {
            [v20 addObject:v26];
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v63 objects:v68 count:16];
      }

      while (v23);
    }

    metadata = v52;
    v10 = v54;
    v19 = v58;
  }

  if (v10)
  {
    iso6709Notation = [v10 iso6709Notation];
    v30 = +[AVMutableMetadataItem metadataItem];
    [v30 setKeySpace:AVMetadataKeySpaceCommon];
    [v30 setKey:AVMetadataCommonKeyLocation];
    [v30 setValue:iso6709Notation];
    v31 = +[NSLocale currentLocale];
    [v30 setLocale:v31];

    [v20 addObject:v30];
    v19 = v58;
  }

  if ([v57 count])
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v32 = v57;
    v33 = [v32 countByEnumeratingWithState:&v59 objects:v67 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v60;
LABEL_32:
      v36 = 0;
      while (1)
      {
        if (*v60 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v59 + 1) + 8 * v36);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        if (v34 == ++v36)
        {
          v34 = [v32 countByEnumeratingWithState:&v59 objects:v67 count:16];
          if (v34)
          {
            goto LABEL_32;
          }

          goto LABEL_38;
        }
      }
    }

    else
    {
LABEL_38:

      v32 = [v32 componentsJoinedByString:{@", "}];
      v38 = +[AVMutableMetadataItem metadataItem];
      [v38 setIdentifier:AVMetadataIdentifierQuickTimeMetadataKeywords];
      [v38 setValue:v32];
      [v20 addObject:v38];
    }

    v10 = v54;
    v19 = v58;
  }

  if (v56)
  {
    v39 = +[AVMutableMetadataItem metadataItem];
    [v39 setKeySpace:AVMetadataKeySpaceCommon];
    [v39 setKey:AVMetadataCommonKeyCreationDate];
    videoDateFormatter = [objc_opt_class() videoDateFormatter];
    v41 = [options objectForKeyedSubscript:@"PAMediaConversionServiceOptionAVMetadataContentCreationDateTimeZoneOffsetKey"];
    v42 = v41;
    if (v41)
    {
      v43 = +[NSTimeZone timeZoneForSecondsFromGMT:](NSTimeZone, "timeZoneForSecondsFromGMT:", [v41 integerValue]);
      [videoDateFormatter setTimeZone:v43];
    }

    v44 = [videoDateFormatter stringFromDate:v56];
    [v39 setValue:v44];
    [v20 addObject:v39];

    v19 = v58;
  }

  if (v19)
  {
    v45 = +[AVMutableMetadataItem metadataItem];
    [v45 setIdentifier:AVMetadataIdentifierQuickTimeMetadataTitle];
    [v45 setValue:v19];
    [v20 addObject:v45];
  }

  if (v55)
  {
    v46 = +[AVMutableMetadataItem metadataItem];
    [v46 setKeySpace:AVMetadataKeySpaceCommon];
    [v46 setKey:AVMetadataCommonKeyDescription];
    [v46 setValue:v55];
    [v20 addObject:v46];
  }

  if (v53)
  {
    v47 = +[AVMutableMetadataItem metadataItem];
    [v47 setKeySpace:AVMetadataKeySpaceCommon];
    [v47 setKey:AVMetadataCommonKeyAccessibilityDescription];
    [v47 setValue:v53];
    [v20 addObject:v47];
  }

  v48 = objc_opt_class();
  v49 = [v20 copy];
  v50 = [v48 metadataItemsByApplyingSignatureMetadataFromOptions:options toMetadataItems:v49];

  return v50;
}

- (void)addOutputMetadataFromOptionsAndInputAsset:(id)asset toExportSession:(id)session
{
  sessionCopy = session;
  v6 = [(ExportSessionVideoTranscodingTask *)self metadataItemsFromOptionsAndInputAsset:asset];
  [sessionCopy setMetadata:v6];

  options = [(VideoConversionTask *)self options];
  v8 = [options objectForKeyedSubscript:@"PAMediaConversionServiceOptionAVMetadataIncludeLocationKey"];
  bOOLValue = [v8 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    v10 = +[AVMetadataItemFilter metadataItemFilterForSharing];
    [sessionCopy setMetadataItemFilter:v10];
  }
}

- (id)exportSessionForInputAsset:(id)asset presetName:(id)name
{
  assetCopy = asset;
  nameCopy = name;
  v8 = [[AVAssetExportSession alloc] initWithAsset:assetCopy presetName:nameCopy];

  if (!v8)
  {
    [(VideoConversionTask *)self setStatus:2];
    identifier = [(VideoConversionTask *)self identifier];
    v18 = NSLocalizedDescriptionKey;
    v10 = [NSString stringWithFormat:@"Unable to create export session for job %@", identifier];
    v19 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v12 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:3 userInfo:v11];
    [(VideoConversionTask *)self setError:v12];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543619;
      v15 = identifier;
      v16 = 2113;
      v17 = assetCopy;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to create export session for job %{public}@, asset %{private}@", buf, 0x16u);
    }

    [(VideoTranscodingTask *)self callCompletionHandler];
  }

  return v8;
}

- (void)performMetadataTrackExtractionConversion
{
  identifier = [(VideoConversionTask *)self identifier];
  asset = [(VideoConversionTask *)self asset];
  v5 = [PFMediaUtilities tracksWithMediaType:AVMediaTypeMetadata forAsset:asset];

  if ([v5 count])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v6 = [v5 count];
      asset2 = [(VideoConversionTask *)self asset];
      *buf = 138543874;
      *&buf[4] = identifier;
      *&buf[12] = 2048;
      *&buf[14] = v6;
      *&buf[22] = 2112;
      *&buf[24] = asset2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Metadata track extraction job %{public}@: found %lu input metadata tracks in asset %@", buf, 0x20u);
    }

    selfCopy = self;
    v29 = identifier;
    v8 = objc_opt_new();
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v28 = v5;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v33 objects:v43 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v34;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v34 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v33 + 1) + 8 * i);
          v15 = [v8 addMutableTrackWithMediaType:AVMediaTypeMetadata preferredTrackID:0];
          v42 = 0u;
          memset(buf, 0, sizeof(buf));
          if (v14)
          {
            [v14 timeRange];
          }

          *v39 = *buf;
          *&v39[16] = *&buf[16];
          v40 = v42;
          v30 = *buf;
          v31 = *&buf[16];
          v32 = 0;
          v16 = [v15 insertTimeRange:v39 ofTrack:v14 atTime:&v30 error:&v32];
          v17 = v32;
          v18 = v17;
          if ((v16 & 1) == 0)
          {
            [(VideoConversionTask *)selfCopy setStatus:2];
            v37[0] = NSLocalizedDescriptionKey;
            identifier = v29;
            v19 = [NSString stringWithFormat:@"Unable to create export session for job %@", v29];
            v37[1] = NSUnderlyingErrorKey;
            v38[0] = v19;
            v38[1] = v18;
            v20 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:2];
            v21 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:8 userInfo:v20];
            [(VideoConversionTask *)selfCopy setError:v21];

            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              asset3 = [(VideoConversionTask *)selfCopy asset];
              *v39 = 138544130;
              *&v39[4] = v29;
              *&v39[12] = 2114;
              *&v39[14] = v14;
              *&v39[22] = 2112;
              *&v39[24] = asset3;
              LOWORD(v40) = 2114;
              *(&v40 + 2) = v18;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Metadata track extraction job %{public}@: Unable to insert metadata track %{public}@ of input asset %@: %{public}@", v39, 0x2Au);
            }

            [(VideoTranscodingTask *)selfCopy callCompletionHandler];

            goto LABEL_21;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v33 objects:v43 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v9 = [(ExportSessionVideoTranscodingTask *)selfCopy exportSessionForInputAsset:v8 presetName:AVAssetExportPresetPassthrough];
    if (v9)
    {
      v15 = [(ExportSessionVideoTranscodingTask *)selfCopy outputFileTypeForExportSession:v9];
      if (v15)
      {
        [(ExportSessionVideoTranscodingTask *)selfCopy configureOutputForExportSession:v9 outputFileType:v15];
        [(ExportSessionVideoTranscodingTask *)selfCopy startExportSession:v9];
      }

      identifier = v29;
LABEL_21:
      v5 = v28;
    }

    else
    {
      v5 = v28;
      identifier = v29;
    }
  }

  else
  {
    [(VideoConversionTask *)self setStatus:2];
    v44 = NSLocalizedDescriptionKey;
    v22 = [NSString stringWithFormat:@"Metadata track extraction for job %@ failed because the input video has no metadata tracks", identifier];
    v45 = v22;
    v23 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    v24 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:7 userInfo:v23];
    [(VideoConversionTask *)self setError:v24];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      asset4 = [(VideoConversionTask *)self asset];
      *buf = 138543618;
      *&buf[4] = identifier;
      *&buf[12] = 2112;
      *&buf[14] = asset4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Metadata track extraction job %{public}@: input asset has no metadata tracks: %@", buf, 0x16u);
    }

    [(VideoTranscodingTask *)self callCompletionHandler];
  }
}

- (void)performPassthroughConversion
{
  asset = [(VideoConversionTask *)self asset];
  v6 = [(ExportSessionVideoTranscodingTask *)self exportSessionForInputAsset:asset presetName:AVAssetExportPresetPassthrough];

  if (v6)
  {
    v4 = [(ExportSessionVideoTranscodingTask *)self outputFileTypeForExportSession:v6];
    if (v4)
    {
      asset2 = [(VideoConversionTask *)self asset];
      [(ExportSessionVideoTranscodingTask *)self addOutputMetadataFromOptionsAndInputAsset:asset2 toExportSession:v6];

      [(ExportSessionVideoTranscodingTask *)self configureOutputForExportSession:v6 outputFileType:v4];
      [(ExportSessionVideoTranscodingTask *)self startExportSession:v6];
    }
  }

  _objc_release_x1();
}

- (void)cancelTranscode
{
  exportSession = [(ExportSessionVideoTranscodingTask *)self exportSession];
  if (!exportSession)
  {
    v4 = +[NSAssertionHandler currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"VideoConversionService.m" lineNumber:907 description:@"Unexpected missing video export session with job in running state"];
  }

  [(VideoTranscodingTask *)self logCancellation];
  [exportSession cancelExport];
}

- (double)currentFractionCompleted
{
  exportSession = [(ExportSessionVideoTranscodingTask *)self exportSession];
  [exportSession progress];
  v4 = v3;

  return v4;
}

- (BOOL)hasProgress
{
  exportSession = [(ExportSessionVideoTranscodingTask *)self exportSession];
  v3 = exportSession != 0;

  return v3;
}

- (id)exportSessionCompletionHandler
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100018DA8;
  v4[3] = &unk_10003D438;
  v4[4] = self;
  v2 = objc_retainBlock(v4);

  return v2;
}

- (void)startExportSession:(id)session
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100019200;
  v4[3] = &unk_10003D520;
  selfCopy = self;
  sessionCopy = session;
  v3 = sessionCopy;
  [(VideoTranscodingTask *)selfCopy transitionToRunningStateAndConditionallyRunBlock:v4];
}

- (void)configureOutputForExportSession:(id)session outputFileType:(id)type
{
  sessionCopy = session;
  [sessionCopy setOutputFileType:type];
  outputMainResourceURL = [(VideoConversionTask *)self outputMainResourceURL];
  [sessionCopy setOutputURL:outputMainResourceURL];
}

- (void)performExport
{
  asset = [(VideoConversionTask *)self asset];
  if (!asset)
  {
    [(VideoConversionTask *)self setStatus:2];
    [(VideoTranscodingTask *)self callCompletionHandler];
    goto LABEL_32;
  }

  if (![(VideoConversionTask *)self isMetadataTrackExtractionConversion])
  {
    if ([(VideoConversionTask *)self isPassthroughConversion])
    {
      [(ExportSessionVideoTranscodingTask *)self performPassthroughConversion];
      goto LABEL_32;
    }

    exportPresetName = [(ExportSessionVideoTranscodingTask *)self exportPresetName];
    if (!exportPresetName)
    {
      v49 = NSLocalizedDescriptionKey;
      v50 = @"Unable to determine export preset";
      v13 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      v14 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:3 userInfo:v13];
      [(VideoConversionTask *)self setError:v14];

      [(VideoConversionTask *)self setStatus:2];
      [(VideoTranscodingTask *)self callCompletionHandler];
LABEL_31:

      goto LABEL_32;
    }

    v5 = [PFMediaUtilities tracksWithMediaType:AVMediaTypeVideo forAsset:asset];
    firstObject = [v5 firstObject];

    if (!firstObject)
    {
      [(VideoConversionTask *)self setStatus:2];
      v47 = NSLocalizedDescriptionKey;
      v48 = @"Unable to get input asset video track";
      v15 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      v16 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:3 userInfo:v15];
      [(VideoConversionTask *)self setError:v16];

      [(VideoTranscodingTask *)self callCompletionHandler];
LABEL_30:

      goto LABEL_31;
    }

    v40 = 0;
    v41 = &v40;
    v42 = 0x3032000000;
    v43 = sub_1000162F0;
    v44 = sub_100016300;
    v7 = asset;
    v45 = v7;
    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = sub_1000162F0;
    v38 = sub_100016300;
    v39 = 0;
    if ([(VideoTranscodingTask *)self hasSlowMotionAdjustments])
    {
      options = [(VideoConversionTask *)self options];
      v9 = [options objectForKeyedSubscript:@"PAMediaConversionServiceOptionVideoAdjustmentsPropertyListKey"];

      v10 = [[PFVideoAdjustments alloc] initWithPropertyListDictionary:v9];
      if (!v10)
      {
        v30 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          identifier = [(VideoConversionTask *)self identifier];
          LODWORD(time.value) = 138543618;
          *(&time.value + 4) = identifier;
          LOWORD(time.flags) = 2114;
          *(&time.flags + 2) = v9;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to create adjustments for conversion task %{public}@ from property list %{public}@", &time, 0x16u);
        }

        v31 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:6 userInfo:0];
        [(VideoConversionTask *)self setError:v31];

        [(VideoTranscodingTask *)self callCompletionHandler];
        goto LABEL_28;
      }

      v11 = [PFVideoAVObjectBuilder alloc];
      v12 = [v11 initWithVideoAsset:v41[5] videoAdjustments:v10];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_100019964;
      v33[3] = &unk_10003D4F8;
      v33[4] = self;
      v33[5] = &v34;
      v33[6] = &v40;
      [v12 requestExportSessionWithExportPreset:exportPresetName resultHandler:v33];
    }

    else
    {
      v17 = [(ExportSessionVideoTranscodingTask *)self exportSessionForInputAsset:v41[5] presetName:exportPresetName];
      v9 = v35[5];
      v35[5] = v17;
    }

    if (!v35[5])
    {
LABEL_29:
      _Block_object_dispose(&v34, 8);

      _Block_object_dispose(&v40, 8);
      goto LABEL_30;
    }

    v18 = objc_opt_class();
    options2 = [(VideoConversionTask *)self options];
    v20 = v41[5];
    if (v20)
    {
      [v20 duration];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    Seconds = CMTimeGetSeconds(&time);
    identifier2 = [(VideoConversionTask *)self identifier];
    v23 = [v18 shouldMaximizeVideoConversionPowerEfficiencyForOptions:options2 inputAssetDuration:identifier2 taskIdentifier:Seconds];
    [v35[5] setMaximizePowerEfficiency:v23];

    v9 = [(ExportSessionVideoTranscodingTask *)self outputFileTypeForExportSession:v35[5]];
    if (v9)
    {
      options3 = [(VideoConversionTask *)self options];
      v25 = [options3 objectForKeyedSubscript:@"PAMediaConversionServiceOptionAudioTrackGroupHandlingKey"];

      if (v25)
      {
        integerValue = [v25 integerValue];
        [v35[5] setAudioTrackGroupHandling:integerValue];
      }

      options4 = [(VideoConversionTask *)self options];
      v28 = [options4 objectForKeyedSubscript:@"PAMediaConversionServiceOptionAVIncludeMetadataKey"];
      bOOLValue = [v28 BOOLValue];

      if (bOOLValue)
      {
        [(ExportSessionVideoTranscodingTask *)self addOutputMetadataFromOptionsAndInputAsset:v7 toExportSession:v35[5]];
      }

      [v35[5] setShouldOptimizeForNetworkUse:1];
      [v35[5] setAudioTimePitchAlgorithm:AVAudioTimePitchAlgorithmVarispeed];
      [(ExportSessionVideoTranscodingTask *)self configureOutputForExportSession:v35[5] outputFileType:v9];
      [(ExportSessionVideoTranscodingTask *)self startExportSession:v35[5]];
    }

LABEL_28:

    goto LABEL_29;
  }

  [(ExportSessionVideoTranscodingTask *)self performMetadataTrackExtractionConversion];
LABEL_32:
}

@end