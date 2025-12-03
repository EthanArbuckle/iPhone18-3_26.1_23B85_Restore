@interface MediaConversionRequestTracker
- (BOOL)_valueIsSimpleScalarType:(id)type;
- (BOOL)copyDuplicateRequestOutputFromOriginalRequestTracker:(id)tracker error:(id *)error;
- (BOOL)isDuplicateOfRequestWithRequestTracker:(id)tracker identicalDestinationURL:(BOOL *)l;
- (BOOL)shouldDump;
- (MediaConversionRequestTracker)initWithRequestOptions:(id)options requestNumber:(unint64_t)number;
- (NSDictionary)requestCompletionPerfCheckExtraInformation;
- (NSString)requestIdentifier;
- (NSString)requestOptionsSignatureString;
- (NSString)sourceURLFilenameOnlySummary;
- (id)graphDumpURLsForCurrentProcessIdentifier;
- (id)requestCompletionPerfCheckExtraInformationLogString;
- (id)sourceURLCollectionSignature;
- (int64_t)compare:(id)compare;
- (unint64_t)hashForObject:(id)object;
- (void)addCoreImageGraphDumpPath:(id)path;
- (void)cacheDestinationBookmarkCollectionSignature;
- (void)cacheSourceBookmarkCollectionSignatureAndFilename;
- (void)copyCoreImageGraphDumpsToURL:(id)l;
- (void)didCompleteRequest;
- (void)didDequeueAndStartProcessingRequest;
- (void)dumpResourceURLCollection:(id)collection toParentDirectory:(id)directory directoryName:(id)name updatingDebugInformation:(id)information;
- (void)markAsCompletedWithInitialRequestIdentifier:(id)identifier;
- (void)setupCoreImageGraphDumpCapture;
- (void)setupPerfCheck;
- (void)storeDebugDump;
- (void)storeDebugDumpInputInformationToURL:(id)l updatingDebugInformation:(id)information;
- (void)storeDebugDumpOutputInformationToURL:(id)l updatingDebugInformation:(id)information;
@end

@implementation MediaConversionRequestTracker

- (void)storeDebugDumpOutputInformationToURL:(id)l updatingDebugInformation:(id)information
{
  lCopy = l;
  informationCopy = information;
  v9 = +[NSFileManager defaultManager];
  outputData = [(MediaConversionRequestTracker *)self outputData];

  if (outputData)
  {
    outputTypeIdentifier = [(MediaConversionRequestTracker *)self outputTypeIdentifier];

    if (!outputTypeIdentifier)
    {
      v35 = +[NSAssertionHandler currentHandler];
      [v35 handleFailureInMethod:a2 object:self file:@"MediaConversionDebugUtilities.m" lineNumber:548 description:@"Unexpected nil result data UTI"];
    }

    outputTypeIdentifier2 = [(MediaConversionRequestTracker *)self outputTypeIdentifier];
    v13 = [UTType typeWithIdentifier:outputTypeIdentifier2];
    preferredFilenameExtension = [v13 preferredFilenameExtension];

    lastPathComponent2 = [@"outputData" stringByAppendingPathExtension:preferredFilenameExtension];
    v16 = [lCopy URLByAppendingPathComponent:lastPathComponent2];
    outputData2 = [(MediaConversionRequestTracker *)self outputData];
    v37 = 0;
    v18 = [outputData2 writeToURL:v16 options:1 error:&v37];
    v19 = v37;

    if (v18)
    {
      lastPathComponent = [v16 lastPathComponent];
      [informationCopy setObject:lastPathComponent forKeyedSubscript:@"outputFilename"];
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v39 = v19;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to write result data to debug dump: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    outputURL = [(MediaConversionRequestTracker *)self outputURL];

    if (!outputURL)
    {
      goto LABEL_14;
    }

    outputURL2 = [(MediaConversionRequestTracker *)self outputURL];
    pathExtension = [outputURL2 pathExtension];
    v24 = [@"output" stringByAppendingPathExtension:pathExtension];
    preferredFilenameExtension = [lCopy URLByAppendingPathComponent:v24];

    outputURL3 = [(MediaConversionRequestTracker *)self outputURL];
    v36 = 0;
    LODWORD(v24) = [v9 copyItemAtURL:outputURL3 toURL:preferredFilenameExtension error:&v36];
    v19 = v36;

    if (!v24)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v39 = v19;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to copy output file url to debug dump: %{public}@", buf, 0xCu);
      }

      goto LABEL_13;
    }

    lastPathComponent2 = [preferredFilenameExtension lastPathComponent];
    [informationCopy setObject:lastPathComponent2 forKeyedSubscript:@"outputFilename"];
  }

LABEL_13:
LABEL_14:
  outputInformation = [(MediaConversionRequestTracker *)self outputInformation];

  if (outputInformation)
  {
    outputInformation2 = [(MediaConversionRequestTracker *)self outputInformation];
    v28 = [outputInformation2 mutableCopy];

    v29 = [v28 objectForKeyedSubscript:@"PAMediaConversionServiceResultDataKey"];
    v30 = v29;
    if (v29)
    {
      v31 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<output data (%lu bytes) removed>", [v29 length]);
      [v28 setObject:v31 forKeyedSubscript:@"PAMediaConversionServiceResultDataKey"];
    }

    [informationCopy setObject:v28 forKeyedSubscript:@"outputInformation"];
  }

  error = [(MediaConversionRequestTracker *)self error];

  if (error)
  {
    error2 = [(MediaConversionRequestTracker *)self error];
    v34 = [error2 description];
    [informationCopy setObject:v34 forKeyedSubscript:@"error"];
  }
}

- (void)dumpResourceURLCollection:(id)collection toParentDirectory:(id)directory directoryName:(id)name updatingDebugInformation:(id)information
{
  collectionCopy = collection;
  nameCopy = name;
  informationCopy = information;
  v18 = 0;
  v12 = [collectionCopy urlForDebugDumpWithDirectoryName:nameCopy inExistingParentDirectory:directory error:&v18];
  v13 = v18;
  if (v12)
  {
    path = [v12 path];
    v15 = [@"resourceDumpPath-" stringByAppendingString:nameCopy];
    [informationCopy setObject:path forKeyedSubscript:v15];

    logMessageSummary = [collectionCopy logMessageSummary];
    v17 = [@"resourceURLCollectionSummary-" stringByAppendingString:nameCopy];
    [informationCopy setObject:logMessageSummary forKeyedSubscript:v17];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v20 = nameCopy;
    v21 = 2114;
    v22 = v13;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to dump resources %{public}@ to debug dump: %{public}@", buf, 0x16u);
  }
}

- (void)storeDebugDumpInputInformationToURL:(id)l updatingDebugInformation:(id)information
{
  lCopy = l;
  informationCopy = information;
  requestOptions = [(MediaConversionRequestTracker *)self requestOptions];
  v9 = [requestOptions description];
  [informationCopy setObject:v9 forKeyedSubscript:@"requestOptionsDescription"];

  requestOptions2 = [(MediaConversionRequestTracker *)self requestOptions];
  v23 = 0;
  v11 = [NSKeyedArchiver archivedDataWithRootObject:requestOptions2 requiringSecureCoding:0 error:&v23];
  v12 = v23;

  if (v11)
  {
    v13 = [lCopy URLByAppendingPathComponent:@"request-options.keyedarchive"];
    v22 = v12;
    v14 = [v11 writeToURL:v13 options:1 error:&v22];
    v15 = v22;

    if ((v14 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v25 = v15;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to write request options: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v25 = v12;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to serialize request options: %{public}@", buf, 0xCu);
    }

    v15 = v12;
  }

  sourceURLCollection = [(MediaConversionRequestTracker *)self sourceURLCollection];
  urlCount = [sourceURLCollection urlCount];

  if (urlCount)
  {
    sourceURLCollection2 = [(MediaConversionRequestTracker *)self sourceURLCollection];
    [(MediaConversionRequestTracker *)self dumpResourceURLCollection:sourceURLCollection2 toParentDirectory:lCopy directoryName:@"sourceResourceURLCollection" updatingDebugInformation:informationCopy];
  }

  destinationURLCollection = [(MediaConversionRequestTracker *)self destinationURLCollection];
  urlCount2 = [destinationURLCollection urlCount];

  if (urlCount2)
  {
    destinationURLCollection2 = [(MediaConversionRequestTracker *)self destinationURLCollection];
    [(MediaConversionRequestTracker *)self dumpResourceURLCollection:destinationURLCollection2 toParentDirectory:lCopy directoryName:@"destinationResourceURLCollection" updatingDebugInformation:informationCopy];
  }
}

- (void)addCoreImageGraphDumpPath:(id)path
{
  pathCopy = path;
  coreImageGraphDumpPaths = self->_coreImageGraphDumpPaths;
  v8 = pathCopy;
  if (!coreImageGraphDumpPaths)
  {
    v6 = +[NSMutableArray array];
    v7 = self->_coreImageGraphDumpPaths;
    self->_coreImageGraphDumpPaths = v6;

    pathCopy = v8;
    coreImageGraphDumpPaths = self->_coreImageGraphDumpPaths;
  }

  [(NSMutableArray *)coreImageGraphDumpPaths addObject:pathCopy];
}

- (id)graphDumpURLsForCurrentProcessIdentifier
{
  v36 = +[NSFileManager defaultManager];
  v2 = [NSString stringWithFormat:@"^%d_.+_program_graph.*\\.pdf$", getpid()];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v53[0] = @"/tmp";
  v3 = NSTemporaryDirectory();
  v53[1] = v3;
  v4 = [NSArray arrayWithObjects:v53 count:2];

  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (!v5)
  {
    v7 = 0;
    goto LABEL_33;
  }

  v6 = v5;
  v7 = 0;
  v35 = *v45;
  while (2)
  {
    v8 = 0;
    v31 = v6;
    do
    {
      if (*v45 != v35)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v44 + 1) + 8 * v8);
      v10 = [NSURL fileURLWithPath:v9];
      uRLByResolvingSymlinksInPath = [v10 URLByResolvingSymlinksInPath];

      v43 = 0;
      v12 = [v36 contentsOfDirectoryAtURL:uRLByResolvingSymlinksInPath includingPropertiesForKeys:0 options:7 error:&v43];
      v13 = v43;
      v14 = v13;
      if (v12)
      {
        v38 = uRLByResolvingSymlinksInPath;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v15 = v12;
        v16 = [v15 countByEnumeratingWithState:&v39 objects:v48 count:16];
        if (v16)
        {
          v17 = v16;
          v37 = v12;
          v33 = v8;
          v34 = v14;
          v18 = 0;
          v19 = *v40;
          do
          {
            for (i = 0; i != v17; i = i + 1)
            {
              if (*v40 != v19)
              {
                objc_enumerationMutation(v15);
              }

              v21 = *(*(&v39 + 1) + 8 * i);
              lastPathComponent = [v21 lastPathComponent];
              if ([lastPathComponent rangeOfString:v2 options:1024] != 0x7FFFFFFFFFFFFFFFLL)
              {
                if (!v7)
                {
                  v7 = +[NSMutableSet set];
                }

                [v7 addObject:v21];
                v18 = 1;
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v39 objects:v48 count:16];
          }

          while (v17);

          if (v18)
          {

            goto LABEL_33;
          }

          v6 = v31;
          v8 = v33;
          v14 = v34;
          v12 = v37;
          uRLByResolvingSymlinksInPath = v38;
        }

        else
        {

          uRLByResolvingSymlinksInPath = v38;
        }
      }

      else
      {
        domain = [v13 domain];
        if ([domain isEqualToString:NSCocoaErrorDomain])
        {
          code = [v14 code];
          v25 = v14;
          v26 = uRLByResolvingSymlinksInPath;
          v27 = v8;
          v28 = code;

          v29 = v28 == 257;
          v8 = v27;
          uRLByResolvingSymlinksInPath = v26;
          v14 = v25;
          v12 = 0;
          if (v29)
          {
            goto LABEL_28;
          }
        }

        else
        {
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v50 = v9;
          v51 = 2114;
          v52 = v14;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to enumerate contents of temp directory %{public}@: %{public}@", buf, 0x16u);
        }
      }

LABEL_28:

      v8 = v8 + 1;
    }

    while (v8 != v6);
    v6 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
    if (v6)
    {
      continue;
    }

    break;
  }

LABEL_33:

  return v7;
}

- (void)copyCoreImageGraphDumpsToURL:(id)l
{
  lCopy = l;
  v5 = +[NSFileManager defaultManager];
  graphDumpURLsForCurrentProcessIdentifier = [(MediaConversionRequestTracker *)self graphDumpURLsForCurrentProcessIdentifier];
  v7 = [NSMutableSet setWithSet:graphDumpURLsForCurrentProcessIdentifier];

  selfCopy = self;
  [v7 minusSet:self->_coreImageGraphDumpURLsAtStart];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v24;
    *&v9 = 138543874;
    v19 = v9;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        lastPathComponent = [v13 lastPathComponent];
        v15 = [lCopy URLByAppendingPathComponent:lastPathComponent];
        v22 = 0;
        v16 = [v5 copyItemAtURL:v13 toURL:v15 error:&v22];
        v17 = v22;
        if (v16)
        {
          path = [v15 path];
          [(MediaConversionRequestTracker *)selfCopy addCoreImageGraphDumpPath:path];
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = v19;
          v28 = v13;
          v29 = 2114;
          v30 = v15;
          v31 = 2114;
          v32 = v17;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to copy core image graph dump file %{public}@ to %{public}@: %{public}@", buf, 0x20u);
        }
      }

      v10 = [obj countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v10);
  }
}

- (void)storeDebugDump
{
  if ([(MediaConversionRequestTracker *)self shouldDump])
  {
    unsetenv("CI_PRINT_TREE");
    requestIdentifier = [(MediaConversionRequestTracker *)self requestIdentifier];
    v4 = NSTemporaryDirectory();
    v5 = [v4 stringByAppendingPathComponent:@"MediaConversionServiceDebugging"];
    v6 = [NSURL fileURLWithPath:v5 isDirectory:1];

    v7 = [v6 URLByAppendingPathComponent:requestIdentifier];
    v8 = +[NSFileManager defaultManager];
    v28 = 0;
    v9 = [v8 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:&v28];
    v10 = v28;
    if (v9)
    {
      [(MediaConversionRequestTracker *)self setDebugDumpDirectoryURL:v7];
      v11 = +[NSMutableDictionary dictionary];
      [(MediaConversionRequestTracker *)self storeDebugDumpInputInformationToURL:v7 updatingDebugInformation:v11];
      [(MediaConversionRequestTracker *)self storeDebugDumpOutputInformationToURL:v7 updatingDebugInformation:v11];
      [(MediaConversionRequestTracker *)self copyCoreImageGraphDumpsToURL:v7];
      endTime = [(MediaConversionRequestTracker *)self endTime];
      enqueueTime = [(MediaConversionRequestTracker *)self enqueueTime];
      [endTime timeIntervalSinceDate:enqueueTime];
      v14 = [NSNumber numberWithDouble:?];
      [v11 setObject:v14 forKeyedSubscript:@"requestDurationSeconds"];

      endTime2 = [(MediaConversionRequestTracker *)self endTime];
      dequeueAndStartProcessingTime = [(MediaConversionRequestTracker *)self dequeueAndStartProcessingTime];
      [endTime2 timeIntervalSinceDate:dequeueAndStartProcessingTime];
      v17 = [NSNumber numberWithDouble:?];
      [v11 setObject:v17 forKeyedSubscript:@"processingDurationSeconds"];

      [v11 setObject:self->_serviceInformation forKeyedSubscript:@"serviceInformation"];
      v18 = [NSNumber numberWithInt:getpid()];
      [v11 setObject:v18 forKeyedSubscript:@"processIdentifier"];

      v19 = [NSString stringWithUTF8String:getprogname()];
      [v11 setObject:v19 forKeyedSubscript:@"processName"];

      requestCompletionPerfCheckExtraInformation = [(MediaConversionRequestTracker *)self requestCompletionPerfCheckExtraInformation];
      [v11 setObject:requestCompletionPerfCheckExtraInformation forKeyedSubscript:@"perfCheckInformation"];

      requestOptionsSignatureString = [(MediaConversionRequestTracker *)self requestOptionsSignatureString];
      [v11 setObject:requestOptionsSignatureString forKeyedSubscript:@"requestOptionsSignature"];

      v22 = [v7 URLByAppendingPathComponent:@"debug-info.plist"];
      v27 = 0;
      v23 = [NSPropertyListSerialization dataWithPropertyList:v11 format:100 options:0 error:&v27];
      v24 = v27;

      if (v23)
      {
        v26 = v24;
        v25 = [v23 writeToURL:v22 options:1 error:&v26];
        v10 = v26;

        if ((v25 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v30 = v10;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to write debug dump info property list: %{public}@", buf, 0xCu);
        }
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v30 = v24;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to serialize debug dump info property list: %{public}@", buf, 0xCu);
        }

        v10 = v24;
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v30 = requestIdentifier;
      v31 = 2112;
      v32 = v10;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to create dump directory for media conversion request %@: %@", buf, 0x16u);
    }
  }
}

- (id)requestCompletionPerfCheckExtraInformationLogString
{
  requestCompletionPerfCheckExtraInformation = [(MediaConversionRequestTracker *)self requestCompletionPerfCheckExtraInformation];
  v3 = requestCompletionPerfCheckExtraInformation;
  if (requestCompletionPerfCheckExtraInformation)
  {
    v4 = [requestCompletionPerfCheckExtraInformation objectForKeyedSubscript:@"processMemoryPeakKiloBytesInitial"];
    [v4 doubleValue];
    v6 = v5;
    v7 = [v3 objectForKeyedSubscript:@"processMemoryPeakKiloBytesAfterRequest"];
    [v7 doubleValue];
    v9 = v8;
    v10 = [v3 objectForKeyedSubscript:@"cpuTimeMilliSeconds"];
    [v10 doubleValue];
    v12 = v11;
    v13 = [v3 objectForKeyedSubscript:@"cpuMillionInstructions"];
    [v13 doubleValue];
    v15 = [NSString stringWithFormat:@", dirty memory peak before/after request: %.0f/%.0f KB, CPU time %.0fms, instructions %.1fM", v6, v9, v12, v14];
  }

  else
  {
    v15 = @" (error getting perf check info)";
  }

  return v15;
}

- (NSDictionary)requestCompletionPerfCheckExtraInformation
{
  p_cachedPerfCheckInformation = &self->_cachedPerfCheckInformation;
  cachedPerfCheckInformation = self->_cachedPerfCheckInformation;
  if (cachedPerfCheckInformation)
  {
    v4 = cachedPerfCheckInformation;
  }

  else
  {
    if (self->_pc_session)
    {
      v6 = pc_session_end();
      if (v6)
      {
        v7 = v6;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          *&buf[4] = strerror(v7);
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to end performance check session: %s", buf, 0xCu);
        }

        v4 = 0;
      }

      else
      {
        *buf = 0;
        pc_session = self->_pc_session;
        pc_session_get_value();
        v9 = self->_pc_session;
        pc_session_get_value();
        v10 = self->_pc_session;
        pc_session_get_value();
        v18[0] = @"processMemoryPeakKiloBytesInitial";
        v11 = [NSNumber numberWithDouble:self->_initialProcessMemoryPeak];
        v19[0] = v11;
        v18[1] = @"processMemoryPeakKiloBytesAfterRequest";
        v12 = [NSNumber numberWithDouble:0.0];
        v19[1] = v12;
        v18[2] = @"cpuTimeMilliSeconds";
        v13 = [NSNumber numberWithDouble:0.0 / 1000000.0];
        v19[2] = v13;
        v18[3] = @"cpuMillionInstructions";
        v14 = [NSNumber numberWithDouble:0.0 / 1000000.0];
        v19[3] = v14;
        v4 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:4];
      }

      v15 = self->_pc_session;
      pc_session_destroy();
      self->_pc_session = 0;
    }

    else
    {
      v4 = 0;
    }

    objc_storeStrong(p_cachedPerfCheckInformation, v4);
  }

  return v4;
}

- (void)didCompleteRequest
{
  v3 = +[NSDate date];
  [(MediaConversionRequestTracker *)self setEndTime:v3];

  v4 = &_os_log_default;
  signpostId = self->_signpostId;
  if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(&_os_log_default))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, &_os_log_default, OS_SIGNPOST_INTERVAL_END, signpostId, "com.apple.photos.mediaconversion.service.processing", &unk_1000329FA, buf, 2u);
  }

  requestIdentifier = [(MediaConversionRequestTracker *)self requestIdentifier];
  requestCompletionPerfCheckExtraInformationLogString = [(MediaConversionRequestTracker *)self requestCompletionPerfCheckExtraInformationLogString];
  [(MediaConversionRequestTracker *)self storeDebugDump];
  debugDumpDirectoryURL = [(MediaConversionRequestTracker *)self debugDumpDirectoryURL];

  if (debugDumpDirectoryURL)
  {
    debugDumpDirectoryURL2 = [(MediaConversionRequestTracker *)self debugDumpDirectoryURL];
    path = [debugDumpDirectoryURL2 path];
    v11 = [NSString stringWithFormat:@", debug dump saved to %@ because %@ user default is set", path, @"MediaConversionServiceKeepTemporaryFiles"];
  }

  else
  {
    v11 = &stru_10003EDE8;
  }

  if (self->_originalRequestIdentifier)
  {
    v12 = [NSString stringWithFormat:@" (duplicate of %@)", self->_originalRequestIdentifier];
    logMessageSummary = @"(omitted)";
  }

  else
  {
    sourceURLCollection = [(MediaConversionRequestTracker *)self sourceURLCollection];
    logMessageSummary = [sourceURLCollection logMessageSummary];

    v12 = &stru_10003EDE8;
  }

  endTime = [(MediaConversionRequestTracker *)self endTime];
  enqueueTime = [(MediaConversionRequestTracker *)self enqueueTime];
  [endTime timeIntervalSinceDate:enqueueTime];
  v18 = v17;

  dequeueAndStartProcessingTime = [(MediaConversionRequestTracker *)self dequeueAndStartProcessingTime];
  enqueueTime2 = [(MediaConversionRequestTracker *)self enqueueTime];
  [dequeueAndStartProcessingTime timeIntervalSinceDate:enqueueTime2];
  v22 = v21;

  endTime2 = [(MediaConversionRequestTracker *)self endTime];
  dequeueAndStartProcessingTime2 = [(MediaConversionRequestTracker *)self dequeueAndStartProcessingTime];
  [endTime2 timeIntervalSinceDate:dequeueAndStartProcessingTime2];
  v26 = v25;

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    error = [(MediaConversionRequestTracker *)self error];
    *buf = 138545411;
    v29 = requestIdentifier;
    v30 = 2114;
    v31 = v12;
    v32 = 2113;
    v33 = logMessageSummary;
    v34 = 2048;
    v35 = v18;
    v36 = 2048;
    v37 = v22;
    v38 = 2048;
    v39 = v26;
    v40 = 2114;
    v41 = error;
    v42 = 2114;
    v43 = requestCompletionPerfCheckExtraInformationLogString;
    v44 = 2114;
    v45 = v11;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Completed media conversion for job %{public}@%{public}@, source URL Collection %{private}@, request duration %.3fs (%.3fs enqueued/waiting, %.3fs processing), error = %{public}@%{public}@%{public}@", buf, 0x5Cu);
  }
}

- (void)markAsCompletedWithInitialRequestIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(MediaConversionRequestTracker *)self didCompleteRequest];
  outputInformation = [(MediaConversionRequestTracker *)self outputInformation];
  v6 = [outputInformation mutableCopy];

  if (v6)
  {
    if (!self->_enqueueTime)
    {
      v16 = +[NSAssertionHandler currentHandler];
      [v16 handleFailureInMethod:a2 object:self file:@"MediaConversionDebugUtilities.m" lineNumber:306 description:@"Unexpected missing enqueue time"];
    }

    if (!self->_dequeueAndStartProcessingTime)
    {
      v17 = +[NSAssertionHandler currentHandler];
      [v17 handleFailureInMethod:a2 object:self file:@"MediaConversionDebugUtilities.m" lineNumber:307 description:@"Unexpected missing dequeue time"];
    }

    if (!self->_endTime)
    {
      v18 = +[NSAssertionHandler currentHandler];
      [v18 handleFailureInMethod:a2 object:self file:@"MediaConversionDebugUtilities.m" lineNumber:308 description:@"Unexpected missing end time"];
    }

    [v6 setObject:self->_enqueueTime forKeyedSubscript:@"PAMediaConversionServiceConversionStartDateKey"];
    [v6 setObject:self->_dequeueAndStartProcessingTime forKeyedSubscript:@"PAMediaConversionServiceConversionDequeueAndStartProcessingDateKey"];
    [v6 setObject:self->_endTime forKeyedSubscript:@"PAMediaConversionServiceConversionEndDateKey"];
    [(NSDate *)self->_endTime timeIntervalSinceDate:self->_enqueueTime];
    v7 = [NSNumber numberWithDouble:?];
    [v6 setObject:v7 forKeyedSubscript:@"PAMediaConversionServiceConversionTotalDurationTimeIntervalServiceSideKey"];

    if (identifierCopy && ([(MediaConversionRequestTracker *)self requestIdentifier], v8 = objc_claimAutoreleasedReturnValue(), v9 = [(NSMutableArray *)identifierCopy isEqualToString:v8], v8, (v9 & 1) == 0))
    {
      v12 = @"PAMediaConversionServiceDeduplicatedAgainstOriginalRequestIdentifierKey";
      v13 = v6;
      coreImageGraphDumpPaths = identifierCopy;
    }

    else
    {
      requestCompletionPerfCheckExtraInformation = [(MediaConversionRequestTracker *)self requestCompletionPerfCheckExtraInformation];
      [v6 setObject:requestCompletionPerfCheckExtraInformation forKeyedSubscript:@"PAMediaConversionServiceConversionPerfCheckDataKey"];

      coreImageGraphDumpPaths = self->_coreImageGraphDumpPaths;
      v12 = @"PAMediaConversionServiceUnitTestSupportCoreImageGraphDumpPathsKey";
      v13 = v6;
    }

    [v13 setObject:coreImageGraphDumpPaths forKeyedSubscript:v12];
    [(MediaConversionRequestTracker *)self setOutputInformation:v6];
  }

  else
  {
    error = [(MediaConversionRequestTracker *)self error];

    if (!error)
    {
      v15 = +[NSAssertionHandler currentHandler];
      [v15 handleFailureInMethod:a2 object:self file:@"MediaConversionDebugUtilities.m" lineNumber:303 description:@"Unexpected nil result information and error"];
    }
  }
}

- (void)didDequeueAndStartProcessingRequest
{
  v3 = +[NSDate date];
  dequeueAndStartProcessingTime = self->_dequeueAndStartProcessingTime;
  self->_dequeueAndStartProcessingTime = v3;

  v5 = &_os_log_default;
  signpostId = self->_signpostId;
  if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(&_os_log_default))
  {
    LOWORD(v10) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, &_os_log_default, OS_SIGNPOST_INTERVAL_END, signpostId, "com.apple.photos.mediaconversion.service.enqueue", &unk_1000329FA, &v10, 2u);
  }

  v7 = &_os_log_default;
  v8 = self->_signpostId;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(&_os_log_default))
  {
    v9 = [(NSDictionary *)self->_requestOptions objectForKeyedSubscript:@"PAMediaConversionServiceJobIdentifierKey"];
    v10 = 138543362;
    v11 = v9;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, &_os_log_default, OS_SIGNPOST_INTERVAL_BEGIN, v8, "com.apple.photos.mediaconversion.service.processing", "Media conversion request %{public}@", &v10, 0xCu);
  }
}

- (BOOL)_valueIsSimpleScalarType:(id)type
{
  typeCopy = type;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (unint64_t)hashForObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectCopy;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    allKeys = [v5 allKeys];
    v7 = [allKeys sortedArrayUsingComparator:&stru_10003D6C8];

    v8 = [v7 countByEnumeratingWithState:&v27 objects:v34 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v28;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = [v5 objectForKeyedSubscript:*(*(&v27 + 1) + 8 * i)];
          v10 ^= [(MediaConversionRequestTracker *)self hashForObject:v13];
        }

        v9 = [v7 countByEnumeratingWithState:&v27 objects:v34 count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (![(MediaConversionRequestTracker *)self _valueIsSimpleScalarType:objectCopy])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = 0;
          v18 = [NSKeyedArchiver archivedDataWithRootObject:objectCopy requiringSecureCoding:1 error:&v22];
          v5 = v22;
          if (v18)
          {
            v10 = [v18 hash];
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v32 = v5;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to archive metadata policy: %@", buf, 0xCu);
            }

            v10 = 0;
          }

          goto LABEL_25;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v20 = objc_opt_class();
          v21 = NSStringFromClass(v20);
          *buf = 138412290;
          v32 = v21;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unexpected options dictionary value class: %@", buf, 0xCu);
        }
      }

      v10 = [objectCopy hash];
      goto LABEL_26;
    }

    v5 = objectCopy;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v14 = [v5 countByEnumeratingWithState:&v23 objects:v33 count:16];
    if (v14)
    {
      v15 = v14;
      v10 = 0;
      v16 = *v24;
      do
      {
        for (j = 0; j != v15; j = j + 1)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v5);
          }

          v10 ^= [(MediaConversionRequestTracker *)self hashForObject:*(*(&v23 + 1) + 8 * j)];
        }

        v15 = [v5 countByEnumeratingWithState:&v23 objects:v33 count:16];
      }

      while (v15);
    }

    else
    {
      v10 = 0;
    }
  }

LABEL_25:

LABEL_26:
  return v10;
}

- (BOOL)copyDuplicateRequestOutputFromOriginalRequestTracker:(id)tracker error:(id *)error
{
  trackerCopy = tracker;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 1;
  destinationURLCollection = [(MediaConversionRequestTracker *)self destinationURLCollection];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_1000204B8;
  v26 = sub_1000204C8;
  v27 = 0;
  v8 = +[NSFileManager defaultManager];
  destinationURLCollection2 = [trackerCopy destinationURLCollection];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000204D0;
  v15[3] = &unk_10003D688;
  v10 = destinationURLCollection;
  v16 = v10;
  v11 = trackerCopy;
  v17 = v11;
  selfCopy = self;
  v20 = &v28;
  v21 = &v22;
  v12 = v8;
  v19 = v12;
  [destinationURLCollection2 enumerateResourceURLs:v15];

  v13 = *(v29 + 24);
  if (error && (v29[3] & 1) == 0)
  {
    *error = v23[5];
    v13 = *(v29 + 24);
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v13 & 1;
}

- (BOOL)isDuplicateOfRequestWithRequestTracker:(id)tracker identicalDestinationURL:(BOOL *)l
{
  trackerCopy = tracker;
  if (trackerCopy)
  {
    if (l)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = +[NSAssertionHandler currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"MediaConversionDebugUtilities.m" lineNumber:196 description:{@"Invalid parameter not satisfying: %@", @"otherRequestTracker"}];

    if (l)
    {
      goto LABEL_3;
    }
  }

  v20 = +[NSAssertionHandler currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"MediaConversionDebugUtilities.m" lineNumber:197 description:{@"Invalid parameter not satisfying: %@", @"identicalDestinationURL"}];

LABEL_3:
  requestOptionsSignatureString = [(MediaConversionRequestTracker *)self requestOptionsSignatureString];
  v9 = [requestOptionsSignatureString componentsSeparatedByString:@"-"];

  if ([v9 count] != 3)
  {
    v21 = +[NSAssertionHandler currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"MediaConversionDebugUtilities.m" lineNumber:200 description:{@"Unexpected self signature component count %lu", objc_msgSend(v9, "count")}];
  }

  requestOptionsSignatureString2 = [trackerCopy requestOptionsSignatureString];
  v11 = [requestOptionsSignatureString2 componentsSeparatedByString:@"-"];

  if ([v11 count] != 3)
  {
    v22 = +[NSAssertionHandler currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"MediaConversionDebugUtilities.m" lineNumber:203 description:{@"Unexpected other signature component count %lu", objc_msgSend(v9, "count")}];
  }

  v12 = [v9 objectAtIndexedSubscript:0];
  v13 = [v11 objectAtIndexedSubscript:0];
  v14 = [v12 isEqualToString:v13];
  if (v14)
  {
    v15 = [v9 objectAtIndexedSubscript:1];
    v16 = [v11 objectAtIndexedSubscript:1];
    v17 = [v15 isEqualToString:v16];

    if (!v17)
    {
      LOBYTE(v14) = 0;
      goto LABEL_12;
    }

    v12 = [v9 objectAtIndexedSubscript:2];
    v13 = [v11 objectAtIndexedSubscript:2];
    *l = [v12 isEqualToString:v13];
  }

LABEL_12:
  return v14;
}

- (NSString)requestOptionsSignatureString
{
  cachedRequestOptionsSignature = self->_cachedRequestOptionsSignature;
  if (!cachedRequestOptionsSignature)
  {
    v12[0] = @"PAMediaConversionServiceJobIdentifierKey";
    v12[1] = @"PAMediaConversionServiceSourceBookmarkCollectionKey";
    v12[2] = @"PAMediaConversionServiceDestinationBookmarkCollectionKey";
    v12[3] = @"PAMediaConversionServiceOptionRequestReasonKey";
    v12[4] = @"PAMediaConversionServiceOptionJobPriorityKey";
    v4 = [NSArray arrayWithObjects:v12 count:5];
    v5 = [(NSDictionary *)self->_requestOptions mutableCopy];
    [v5 removeObjectsForKeys:v4];
    sourceURLCollectionSignature = [(MediaConversionRequestTracker *)self sourceURLCollectionSignature];
    v7 = [(MediaConversionRequestTracker *)self hashForObject:v5];
    destinationURLsSignature = [(MediaConversionRequestTracker *)self destinationURLsSignature];
    v9 = [NSString stringWithFormat:@"%@-%lx-%@", sourceURLCollectionSignature, v7, destinationURLsSignature];
    v10 = self->_cachedRequestOptionsSignature;
    self->_cachedRequestOptionsSignature = v9;

    cachedRequestOptionsSignature = self->_cachedRequestOptionsSignature;
  }

  return cachedRequestOptionsSignature;
}

- (void)cacheDestinationBookmarkCollectionSignature
{
  v3 = [(NSDictionary *)self->_requestOptions objectForKeyedSubscript:@"PAMediaConversionServiceDestinationBookmarkCollectionKey"];
  if (v3)
  {
    v10 = 0;
    v11 = 0;
    v4 = [(NSDictionary *)self->_requestOptions objectForKeyedSubscript:@"PAMediaConversionServiceDestinationBookmarkCollectionKey"];
    [PAMediaConversionServiceResourceURLCollection getSignatureString:&v11 filenameSummary:&v10 forDictionaryRepresentation:v4];
    v5 = v11;
    v6 = v10;

    cachedDestinationURLCollectionSignature = self->_cachedDestinationURLCollectionSignature;
    self->_cachedDestinationURLCollectionSignature = v5;
    v8 = v5;
  }

  else
  {
    v9 = self->_cachedDestinationURLCollectionSignature;
    self->_cachedDestinationURLCollectionSignature = @"nsdata";
  }
}

- (id)sourceURLCollectionSignature
{
  cachedSourceURLCollectionSignature = self->_cachedSourceURLCollectionSignature;
  if (!cachedSourceURLCollectionSignature)
  {
    [(MediaConversionRequestTracker *)self cacheSourceBookmarkCollectionSignatureAndFilename];
    cachedSourceURLCollectionSignature = self->_cachedSourceURLCollectionSignature;
  }

  return cachedSourceURLCollectionSignature;
}

- (NSString)sourceURLFilenameOnlySummary
{
  cachedSourceURLFilenameOnlySummary = self->_cachedSourceURLFilenameOnlySummary;
  if (!cachedSourceURLFilenameOnlySummary)
  {
    [(MediaConversionRequestTracker *)self cacheSourceBookmarkCollectionSignatureAndFilename];
    cachedSourceURLFilenameOnlySummary = self->_cachedSourceURLFilenameOnlySummary;
  }

  return cachedSourceURLFilenameOnlySummary;
}

- (void)cacheSourceBookmarkCollectionSignatureAndFilename
{
  if (!self->_sourceURLCollection)
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"MediaConversionDebugUtilities.m" lineNumber:136 description:@"Source URL collection has not been set yet"];
  }

  v12 = 0;
  v3 = [(NSDictionary *)self->_requestOptions objectForKeyedSubscript:@"PAMediaConversionServiceSourceBookmarkCollectionKey", 0];
  [PAMediaConversionServiceResourceURLCollection getSignatureString:&v12 filenameSummary:&v11 forDictionaryRepresentation:v3];
  v4 = v12;
  v5 = v11;

  cachedSourceURLCollectionSignature = self->_cachedSourceURLCollectionSignature;
  self->_cachedSourceURLCollectionSignature = v4;
  v7 = v4;

  cachedSourceURLFilenameOnlySummary = self->_cachedSourceURLFilenameOnlySummary;
  self->_cachedSourceURLFilenameOnlySummary = v5;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  effectivePriority = [(MediaConversionRequestTracker *)self effectivePriority];
  effectivePriority2 = [compareCopy effectivePriority];
  if (effectivePriority <= effectivePriority2)
  {
    if (effectivePriority < effectivePriority2)
    {
      v7 = 1;
    }

    else
    {
      enqueueTime = [(MediaConversionRequestTracker *)self enqueueTime];
      enqueueTime2 = [compareCopy enqueueTime];
      v10 = [enqueueTime compare:enqueueTime2];

      if (effectivePriority <= 0)
      {
        v7 = v10;
      }

      else
      {
        v7 = -v10;
      }
    }
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (BOOL)shouldDump
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"MediaConversionServiceKeepTemporaryFiles"];

  return v3;
}

- (NSString)requestIdentifier
{
  requestOptions = [(MediaConversionRequestTracker *)self requestOptions];
  v3 = [requestOptions objectForKeyedSubscript:@"PAMediaConversionServiceJobIdentifierKey"];

  return v3;
}

- (void)setupCoreImageGraphDumpCapture
{
  if ([(MediaConversionRequestTracker *)self shouldDump])
  {
    setenv("CI_PRINT_TREE", "4 pdf", 1);
    graphDumpURLsForCurrentProcessIdentifier = [(MediaConversionRequestTracker *)self graphDumpURLsForCurrentProcessIdentifier];
    coreImageGraphDumpURLsAtStart = self->_coreImageGraphDumpURLsAtStart;
    self->_coreImageGraphDumpURLsAtStart = graphDumpURLsForCurrentProcessIdentifier;

    _objc_release_x1();
  }
}

- (void)setupPerfCheck
{
  v3 = pc_session_create();
  self->_pc_session = v3;
  if (v3)
  {
    getpid();
    pc_session_set_procpid();
    pc_session = self->_pc_session;
    v5 = pc_session_begin();
    if (v5)
    {
      v6 = v5;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = strerror(v6);
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to begin performance check session: %s", buf, 0xCu);
      }

      v7 = self->_pc_session;
      pc_session_destroy();
      self->_pc_session = 0;
    }

    else
    {
      *buf = 0;
      v8 = self->_pc_session;
      pc_session_get_value();
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *&buf[4] = strerror(0);
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to create performance check session: %s", buf, 0xCu);
  }
}

- (MediaConversionRequestTracker)initWithRequestOptions:(id)options requestNumber:(unint64_t)number
{
  optionsCopy = options;
  v9 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceJobIdentifierKey"];

  if (!v9)
  {
    v24 = +[NSAssertionHandler currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"MediaConversionDebugUtilities.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"requestOptions[PAMediaConversionServiceJobIdentifierKey]"}];
  }

  v25.receiver = self;
  v25.super_class = MediaConversionRequestTracker;
  v10 = [(MediaConversionRequestTracker *)&v25 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_requestOptions, options);
    v11->_requestNumber = number;
    v12 = +[NSDate date];
    enqueueTime = v11->_enqueueTime;
    v11->_enqueueTime = v12;

    v14 = os_transaction_create();
    transaction = v11->_transaction;
    v11->_transaction = v14;

    v16 = +[NSXPCConnection currentConnection];
    _xpcConnection = [v16 _xpcConnection];
    v11->_clientProcessIdentifier = xpc_connection_get_pid(_xpcConnection);

    v18 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceOptionJobPriorityKey"];
    v11->_effectivePriority = [v18 integerValue];

    v11->_signpostId = os_signpost_id_make_with_pointer(&_os_log_default, v11);
    v19 = &_os_log_default;
    signpostId = v11->_signpostId;
    if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(&_os_log_default))
    {
      v21 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceJobIdentifierKey"];
      v22 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceOptionRequestReasonKey"];
      *buf = 138543618;
      v27 = v21;
      v28 = 2112;
      v29 = v22;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, &_os_log_default, OS_SIGNPOST_INTERVAL_BEGIN, signpostId, "com.apple.photos.mediaconversion.service.enqueue", "Media conversion request %{public}@, reason: %@", buf, 0x16u);
    }

    [(MediaConversionRequestTracker *)v11 setupPerfCheck];
    [(MediaConversionRequestTracker *)v11 setupCoreImageGraphDumpCapture];
    [(MediaConversionRequestTracker *)v11 cacheDestinationBookmarkCollectionSignature];
  }

  return v11;
}

@end