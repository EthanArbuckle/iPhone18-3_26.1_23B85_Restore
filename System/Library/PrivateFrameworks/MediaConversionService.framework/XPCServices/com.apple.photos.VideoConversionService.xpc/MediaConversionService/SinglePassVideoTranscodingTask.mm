@interface SinglePassVideoTranscodingTask
- (BOOL)hasProgress;
- (double)currentFractionCompleted;
- (void)cancelTranscode;
- (void)performExport;
@end

@implementation SinglePassVideoTranscodingTask

- (void)cancelTranscode
{
  v4 = [(SinglePassVideoTranscodingTask *)self singlePassExportItem];

  if (!v4)
  {
    v6 = +[NSAssertionHandler currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"VideoConversionService.m" lineNumber:1265 description:@"Unexpected missing single pass export session with job in running state"];
  }

  v5 = [(SinglePassVideoTranscodingTask *)self singlePassExportItem];
  v7 = [v5 progress];

  [(VideoTranscodingTask *)self logCancellation];
  [v7 cancel];
}

- (double)currentFractionCompleted
{
  v2 = [(SinglePassVideoTranscodingTask *)self singlePassExportItem];
  v3 = [v2 progress];
  [v3 fractionCompleted];
  v5 = v4;

  return v5;
}

- (BOOL)hasProgress
{
  v2 = [(SinglePassVideoTranscodingTask *)self singlePassExportItem];
  v3 = v2 != 0;

  return v3;
}

- (void)performExport
{
  v3 = [(VideoConversionTask *)self options];
  v4 = [v3 objectForKeyedSubscript:@"PAMediaConversionServiceOptionTargetFileSizeKey"];
  v5 = [v4 unsignedLongLongValue];

  v6 = [(VideoConversionTask *)self sourceMainResourceURL];
  v7 = [(VideoConversionTask *)self outputMainResourceURL];
  v54 = 0;
  v8 = [PFVideoExport singlePassExportItemForAssetAtFileURL:v6 destinationURL:v7 targetFileSize:v5 error:&v54];
  v38 = v54;

  if (v8)
  {
    v9 = objc_opt_class();
    v10 = [(VideoConversionTask *)self options];
    v11 = [v9 metadataItemsByApplyingSignatureMetadataFromOptions:v10 toMetadataItems:&__NSArray0__struct];

    if ([v11 count])
    {
      [v8 setAdditionalMetadata:v11];
    }

    v12 = objc_opt_class();
    v13 = [(VideoConversionTask *)self options];
    [v8 inputAssetDuration];
    v15 = v14;
    v16 = [(VideoConversionTask *)self identifier];
    [v8 setMaximizePowerEfficiency:{objc_msgSend(v12, "shouldMaximizeVideoConversionPowerEfficiencyForOptions:inputAssetDuration:taskIdentifier:", v13, v16, v15)}];

    v17 = [v8 identifier];
    v18 = [v8 progress];
    v19 = [v18 cancellationHandler];

    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_10001A19C;
    v50[3] = &unk_10003D548;
    v20 = v17;
    v51 = v20;
    v52 = self;
    v21 = v19;
    v53 = v21;
    v22 = [v8 progress];
    [v22 setCancellationHandler:v50];

    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_10001A27C;
    v48[3] = &unk_10003D570;
    v48[4] = self;
    v23 = v20;
    v49 = v23;
    v24 = objc_retainBlock(v48);
    v44 = 0;
    v45 = &v44;
    v46 = 0x2020000000;
    v47 = 0;
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_10001A4CC;
    v39[3] = &unk_10003D598;
    v39[4] = self;
    v40 = v8;
    v43 = &v44;
    v25 = v24;
    v42 = v25;
    v26 = v23;
    v41 = v26;
    [(VideoTranscodingTask *)self transitionToRunningStateAndConditionallyRunBlock:v39];
    v27 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v28 = [(VideoConversionTask *)self identifier];
      v29 = [(VideoConversionTask *)self sourceMainResourceURL];
      v30 = [v29 path];
      v31 = [(VideoConversionTask *)self outputMainResourceURL];
      v32 = [v31 path];
      v33 = *(v45 + 24);
      *buf = 138544386;
      v56 = v26;
      v57 = 2114;
      v58 = v28;
      v59 = 2112;
      v60 = v30;
      v61 = 2112;
      v62 = v32;
      v63 = 1024;
      v64 = v33;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Single pass video export item %{public}@ for conversion task %{public}@ exporting %@ to %@ didStart: %d", buf, 0x30u);
    }

    _Block_object_dispose(&v44, 8);
  }

  else
  {
    [(VideoConversionTask *)self setStatus:2];
    v65 = NSLocalizedDescriptionKey;
    v34 = [(VideoConversionTask *)self sourceMainResourceURL];
    v35 = [NSString stringWithFormat:@"Unable to create single pass export item for source %@", v34];
    v66 = v35;
    v36 = [NSDictionary dictionaryWithObjects:&v66 forKeys:&v65 count:1];
    v37 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:3 userInfo:v36];
    [(VideoConversionTask *)self setError:v37];

    [(VideoTranscodingTask *)self callCompletionHandler];
  }
}

@end