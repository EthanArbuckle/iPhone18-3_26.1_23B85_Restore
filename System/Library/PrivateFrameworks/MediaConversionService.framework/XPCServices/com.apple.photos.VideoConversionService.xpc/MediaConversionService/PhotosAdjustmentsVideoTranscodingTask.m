@interface PhotosAdjustmentsVideoTranscodingTask
- (BOOL)hasProgress;
- (double)currentFractionCompleted;
- (id)photosAdjustmentsExporterCompletionHandler;
- (void)cancelTranscode;
- (void)dumpStatistics;
- (void)performExport;
@end

@implementation PhotosAdjustmentsVideoTranscodingTask

- (void)dumpStatistics
{
  v3 = [(VideoConversionTask *)self conversionEndTime];
  v4 = [(VideoConversionTask *)self conversionStartTime];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5;

  v7 = [(VideoConversionTask *)self asset];
  v8 = v7;
  if (v7)
  {
    [v7 duration];
  }

  else
  {
    memset(&v18, 0, sizeof(v18));
  }

  Seconds = CMTimeGetSeconds(&v18);
  v10 = [PFMediaUtilities tracksWithMediaType:AVMediaTypeVideo forAsset:v8];
  v11 = [v10 firstObject];
  [v11 nominalFrameRate];
  v13 = v12;

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = Seconds * v14 / v6;
    v16 = v6 / Seconds;
    v17 = [(VideoConversionTask *)self identifier];
    LODWORD(v18.value) = 138544642;
    *(&v18.value + 4) = v17;
    LOWORD(v18.flags) = 2048;
    *(&v18.flags + 2) = v6;
    HIWORD(v18.epoch) = 2048;
    v19 = Seconds;
    v20 = 2048;
    v21 = v14;
    v22 = 2048;
    v23 = v16;
    v24 = 2048;
    v25 = v15;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Photos adjustments video transcode conversion for conversion task %{public}@ finished, conversion duration %.1fs, input asset duration %.1fs (%.1ffps), %.1f x realtime (%.1ffps)", &v18, 0x3Eu);
  }
}

- (void)cancelTranscode
{
  v5 = [(PhotosAdjustmentsVideoTranscodingTask *)self progress];
  if (!v5)
  {
    v4 = +[NSAssertionHandler currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"VideoConversionService.m" lineNumber:690 description:@"Unexpected missing photos adjustments video transcode export progress with job in running state"];
  }

  [(VideoTranscodingTask *)self logCancellation];
  [v5 cancel];
}

- (double)currentFractionCompleted
{
  v2 = [(PhotosAdjustmentsVideoTranscodingTask *)self progress];
  [v2 fractionCompleted];
  v4 = v3;

  return v4;
}

- (BOOL)hasProgress
{
  v2 = [(PhotosAdjustmentsVideoTranscodingTask *)self progress];
  v3 = v2 != 0;

  return v3;
}

- (id)photosAdjustmentsExporterCompletionHandler
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000169A0;
  v4[3] = &unk_10003D4B0;
  v4[4] = self;
  v2 = objc_retainBlock(v4);

  return v2;
}

- (void)performExport
{
  v3 = [(VideoConversionTask *)self asset];
  if (!v3)
  {
    [(VideoConversionTask *)self setStatus:2];
    [(VideoTranscodingTask *)self callCompletionHandler];
    goto LABEL_32;
  }

  if (![(VideoTranscodingTask *)self hasSlowMotionAdjustments])
  {
    v7 = [(VideoConversionTask *)self sourceMainResourceURL];
    v63 = 0;
    v62 = 0;
    v8 = [v7 getResourceValue:&v63 forKey:NSURLTypeIdentifierKey error:&v62];
    v9 = v63;
    v10 = v62;

    if ((v8 & 1) == 0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v47 = [(VideoConversionTask *)self identifier];
        v48 = [(VideoConversionTask *)self sourceMainResourceURL];
        v49 = [v48 path];
        *buf = 138543618;
        v67 = v47;
        v68 = 2112;
        v69 = v49;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Task %{public}@: Unable to determine type identifier for input file %@", buf, 0x16u);
      }

      [(VideoConversionTask *)self setStatus:2];
      v74 = NSUnderlyingErrorKey;
      v75 = v10;
      v17 = [NSDictionary dictionaryWithObjects:&v75 forKeys:&v74 count:1];
      v18 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:3 userInfo:v17];
      [(VideoConversionTask *)self setError:v18];

      [(VideoTranscodingTask *)self callCompletionHandler];
      goto LABEL_31;
    }

    v11 = [(VideoConversionTask *)self options];
    v12 = [v11 objectForKeyedSubscript:@"PAMediaConversionServiceOptionScaleFactorKey"];

    v13 = [(VideoConversionTask *)self options];
    v14 = [v13 objectForKeyedSubscript:@"PAMediaConversionServiceOptionMaximumPixelCountKey"];

    if (v12 && v14)
    {
      [(VideoConversionTask *)self setStatus:2];
      v72 = NSLocalizedDescriptionKey;
      v73 = @"Scale factor and maximum pixel count options are mutually exclusive";
      v15 = [NSDictionary dictionaryWithObjects:&v73 forKeys:&v72 count:1];
      v16 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:6 userInfo:v15];
      [(VideoConversionTask *)self setError:v16];

      [(VideoTranscodingTask *)self callCompletionHandler];
LABEL_30:

LABEL_31:
      goto LABEL_32;
    }

    +[PAMediaConversionServiceSharedUtilitiesServiceSide registerPhotosAdjustmentsSubsystems];
    v19 = [NUVideoUtilities videoOrientationForAsset:v3 videoComposition:0];
    v20 = [(VideoConversionTask *)self options];
    v21 = [v20 objectForKeyedSubscript:@"PAMediaConversionServiceOptionAdjustmentInformationKey"];

    v55 = v21;
    if (v21)
    {
      v61 = v10;
      v22 = [PAMediaConversionServiceSharedUtilitiesServiceSide compositionForPhotosAdjustmentInformation:v21 error:&v61];
      v23 = v61;

      v54 = v23;
      if (!v22)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v51 = [(VideoConversionTask *)self identifier];
          v52 = [(VideoConversionTask *)self sourceMainResourceURL];
          v53 = [v52 path];
          *buf = 138543874;
          v67 = v51;
          v68 = 2112;
          v69 = v53;
          v70 = 2114;
          v71 = v23;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Task %{public}@: Unable to deserialize adjustment data for input file %@: %{public}@", buf, 0x20u);
        }

        [(VideoConversionTask *)self setStatus:2];
        if (v23)
        {
          v64 = @"PAMediaConversionServiceErrorUnderlyingErrorDescriptionKey";
          v46 = [v23 description];
          v65 = v46;
          v43 = [NSDictionary dictionaryWithObjects:&v65 forKeys:&v64 count:1];
        }

        else
        {
          v43 = 0;
        }

        v45 = v55;
        v50 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:6 userInfo:v43];
        [(VideoConversionTask *)self setError:v50];

        [(VideoTranscodingTask *)self callCompletionHandler];
        goto LABEL_29;
      }

      v24 = [v22 objectForKeyedSubscript:@"orientation"];

      if (!v24)
      {
        v25 = [NUGenericAdjustment alloc];
        v26 = [[NUIdentifier alloc] initWithName:@"Orientation"];
        v27 = [v25 initWithIdentifier:v26];

        v28 = [NSNumber numberWithInteger:v19];
        [v27 setObject:v28 forKeyedSubscript:@"value"];

        [v22 setObject:v27 forKeyedSubscript:@"orientation"];
      }
    }

    else
    {
      v22 = [PAMediaConversionServiceSharedUtilitiesServiceSide emptyGenericCompositionWithAdjustmentForOrientation:v19];
      v54 = v10;
    }

    v29 = [(VideoConversionTask *)self sourceMainResourceURL];
    v30 = [PIPhotoEditHelper videoSourceWithURL:v29];
    [v22 setObject:v30 forKeyedSubscript:@"source"];

    [v22 setMediaType:2];
    v31 = [PIPhotoEditHelper validatedCompositionCopyForComposition:v22 mediaType:2];

    v32 = objc_alloc_init(PICompositionExporter);
    v33 = objc_alloc_init(PICompositionExporterVideoOptions);
    v34 = [[NUPriority alloc] initWithLevel:1];
    [v33 setPriority:v34];

    if (v12)
    {
      v35 = [NUFixedScalePolicy alloc];
      [v12 doubleValue];
      v36 = NUScaleFromDouble();
      v38 = [v35 initWithScale:{v36, v37}];
    }

    else
    {
      if (!v14)
      {
LABEL_22:
        [v33 setBypassOutputSettingsIfNoComposition:1];
        v40 = [(VideoConversionTask *)self options];
        v41 = [v40 objectForKeyedSubscript:@"PAMediaConversionServiceOptionApplyOrientationTransformKey"];
        [v33 setApplyVideoOrientationAsMetadata:{objc_msgSend(v41, "BOOLValue") ^ 1}];

        v60[0] = _NSConcreteStackBlock;
        v60[1] = 3221225472;
        v60[2] = sub_100017540;
        v60[3] = &unk_10003D460;
        v60[4] = self;
        [v33 setMetadataProcessor:v60];
        v56[0] = _NSConcreteStackBlock;
        v56[1] = 3221225472;
        v56[2] = sub_1000175C4;
        v56[3] = &unk_10003D488;
        v56[4] = self;
        v57 = v32;
        v58 = v31;
        v59 = v33;
        v42 = v33;
        v43 = v31;
        v44 = v32;
        [(VideoTranscodingTask *)self transitionToRunningStateAndConditionallyRunBlock:v56];

        v45 = v55;
LABEL_29:

        v10 = v54;
        goto LABEL_30;
      }

      v38 = [[NUPixelCountScalePolicy alloc] initWithTargetPixelCount:{objc_msgSend(v14, "integerValue")}];
    }

    v39 = v38;
    [v33 setScalePolicy:v38];

    goto LABEL_22;
  }

  v4 = [NSString stringWithFormat:@"%@ and %@ are mutually exclusive", @"PAMediaConversionServiceOptionAdjustmentInformationKey", @"PAMediaConversionServiceOptionVideoAdjustmentsPropertyListKey"];
  v76 = NSLocalizedDescriptionKey;
  v77 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v77 forKeys:&v76 count:1];
  v6 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:6 userInfo:v5];
  [(VideoConversionTask *)self setError:v6];

  [(VideoConversionTask *)self setStatus:2];
  [(VideoTranscodingTask *)self callCompletionHandler];

LABEL_32:
}

@end