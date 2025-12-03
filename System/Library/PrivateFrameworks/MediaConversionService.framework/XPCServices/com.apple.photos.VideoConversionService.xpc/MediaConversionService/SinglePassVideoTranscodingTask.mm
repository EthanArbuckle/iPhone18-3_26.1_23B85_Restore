@interface SinglePassVideoTranscodingTask
- (BOOL)hasProgress;
- (double)currentFractionCompleted;
- (void)cancelTranscode;
- (void)performExport;
@end

@implementation SinglePassVideoTranscodingTask

- (void)cancelTranscode
{
  singlePassExportItem = [(SinglePassVideoTranscodingTask *)self singlePassExportItem];

  if (!singlePassExportItem)
  {
    v6 = +[NSAssertionHandler currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"VideoConversionService.m" lineNumber:1265 description:@"Unexpected missing single pass export session with job in running state"];
  }

  singlePassExportItem2 = [(SinglePassVideoTranscodingTask *)self singlePassExportItem];
  progress = [singlePassExportItem2 progress];

  [(VideoTranscodingTask *)self logCancellation];
  [progress cancel];
}

- (double)currentFractionCompleted
{
  singlePassExportItem = [(SinglePassVideoTranscodingTask *)self singlePassExportItem];
  progress = [singlePassExportItem progress];
  [progress fractionCompleted];
  v5 = v4;

  return v5;
}

- (BOOL)hasProgress
{
  singlePassExportItem = [(SinglePassVideoTranscodingTask *)self singlePassExportItem];
  v3 = singlePassExportItem != 0;

  return v3;
}

- (void)performExport
{
  options = [(VideoConversionTask *)self options];
  v4 = [options objectForKeyedSubscript:@"PAMediaConversionServiceOptionTargetFileSizeKey"];
  unsignedLongLongValue = [v4 unsignedLongLongValue];

  sourceMainResourceURL = [(VideoConversionTask *)self sourceMainResourceURL];
  outputMainResourceURL = [(VideoConversionTask *)self outputMainResourceURL];
  v54 = 0;
  v8 = [PFVideoExport singlePassExportItemForAssetAtFileURL:sourceMainResourceURL destinationURL:outputMainResourceURL targetFileSize:unsignedLongLongValue error:&v54];
  v38 = v54;

  if (v8)
  {
    v9 = objc_opt_class();
    options2 = [(VideoConversionTask *)self options];
    v11 = [v9 metadataItemsByApplyingSignatureMetadataFromOptions:options2 toMetadataItems:&__NSArray0__struct];

    if ([v11 count])
    {
      [v8 setAdditionalMetadata:v11];
    }

    v12 = objc_opt_class();
    options3 = [(VideoConversionTask *)self options];
    [v8 inputAssetDuration];
    v15 = v14;
    identifier = [(VideoConversionTask *)self identifier];
    [v8 setMaximizePowerEfficiency:{objc_msgSend(v12, "shouldMaximizeVideoConversionPowerEfficiencyForOptions:inputAssetDuration:taskIdentifier:", options3, identifier, v15)}];

    identifier2 = [v8 identifier];
    progress = [v8 progress];
    cancellationHandler = [progress cancellationHandler];

    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_10001A19C;
    v50[3] = &unk_10003D548;
    v20 = identifier2;
    v51 = v20;
    selfCopy = self;
    v21 = cancellationHandler;
    v53 = v21;
    progress2 = [v8 progress];
    [progress2 setCancellationHandler:v50];

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
      identifier3 = [(VideoConversionTask *)self identifier];
      sourceMainResourceURL2 = [(VideoConversionTask *)self sourceMainResourceURL];
      path = [sourceMainResourceURL2 path];
      outputMainResourceURL2 = [(VideoConversionTask *)self outputMainResourceURL];
      path2 = [outputMainResourceURL2 path];
      v33 = *(v45 + 24);
      *buf = 138544386;
      v56 = v26;
      v57 = 2114;
      v58 = identifier3;
      v59 = 2112;
      v60 = path;
      v61 = 2112;
      v62 = path2;
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
    sourceMainResourceURL3 = [(VideoConversionTask *)self sourceMainResourceURL];
    v35 = [NSString stringWithFormat:@"Unable to create single pass export item for source %@", sourceMainResourceURL3];
    v66 = v35;
    v36 = [NSDictionary dictionaryWithObjects:&v66 forKeys:&v65 count:1];
    v37 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:3 userInfo:v36];
    [(VideoConversionTask *)self setError:v37];

    [(VideoTranscodingTask *)self callCompletionHandler];
  }
}

@end