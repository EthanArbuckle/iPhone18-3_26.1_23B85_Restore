@interface ImageConversionService
+ (id)adjustmentInformationForComposition:(id)composition error:(id *)error;
+ (void)configureCompositionController:(id)controller sourceURLCollection:(id)collection;
+ (void)run;
- (BOOL)convertImageWithOptions:(id)options sourceURLCollection:(id)collection outputURLCollection:(id)lCollection outputData:(id *)data outputFileType:(id *)type outputImageInfo:(id *)info error:(id *)error;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)setupSourceAndDestinationForRequestTracker:(id)tracker imageConversionOptions:(id)options error:(id *)error;
- (BOOL)validatePhotosAdjustmentsCalculationRequestOptions:(id)options error:(id *)error;
- (BOOL)validateRequestIdentifier:(id)identifier replyHandler:(id)handler;
- (BOOL)validateRequestOptions:(id)options error:(id *)error;
- (ImageConversionService)init;
- (id)adjustmentInformationForCropAdjustmentInformation:(id)information sourceURLCollection:(id)collection error:(id *)error;
- (id)urlCollectionForBookmarkDictionaryKey:(id)key inOptions:(id)options removeExistingEmptyFiles:(BOOL)files error:(id *)error;
- (int64_t)incrementPendingRequestCountWithRequestIdentifier:(id)identifier;
- (void)conversionQueue:(id)queue processNextEntry:(id)entry;
- (void)conversionQueueDidFinishProcessingEntry:(id)entry;
- (void)convertImageWithOptions:(id)options reply:(id)reply;
- (void)decrementPendingRequestCountWithRequestIdentifier:(id)identifier;
- (void)enumerateEnvironmentVariablePairsInRequestOptions:(id)options block:(id)block;
- (void)performBeginRequestActionsForUnitTestSupportOptions:(id)options;
- (void)performEndRequestActionsForUnitTestSupportOptions:(id)options;
- (void)replyToCompletionHandler:(id)handler requestIdentifier:(id)identifier resultData:(id)data resultImageInformation:(id)information signpostID:(unint64_t)d error:(id)error;
- (void)requestStatusWithReply:(id)reply;
- (void)run;
@end

@implementation ImageConversionService

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = +[NSUUID UUID];
  _xpcConnection = [connectionCopy _xpcConnection];
  pid = xpc_connection_get_pid(_xpcConnection);

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v26 = v5;
    v27 = 1024;
    v28 = pid;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Connection %{public}@ [%d] accepted", buf, 0x12u);
  }

  v23 = @"PAMCS_CONNECTION_USER_INFO_CONNECTION_IDENTIFIER_KEY";
  v24 = v5;
  v21 = v5;
  v8 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  [connectionCopy setUserInfo:v8];

  v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ImageConversionService];
  v20 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = [NSSet setWithObjects:v20, v10, v11, v12, v13, v14, v15, v16, v17, objc_opt_class(), 0];
  [v9 setClasses:v18 forSelector:"convertImageWithOptions:reply:" argumentIndex:0 ofReply:0];
  [connectionCopy setExportedInterface:v9];
  [connectionCopy setExportedObject:self];
  [connectionCopy resume];

  return 1;
}

- (void)conversionQueueDidFinishProcessingEntry:(id)entry
{
  entryCopy = entry;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_pendingRequestCount)
  {
    CMPhotoReleaseHardwareResources();
    +[NUFactory reset];
    if (pc_session_create())
    {
      getpid();
      pc_session_set_procpid();
      if (!pc_session_begin())
      {
        *buf = 0;
        pc_session_get_value();
      }

      pc_session_destroy();
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = 0x7FF8000000000000;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Finished processing last queue entry, dirty memory = %.0f KB", buf, 0xCu);
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)conversionQueue:(id)queue processNextEntry:(id)entry
{
  queueCopy = queue;
  entryCopy = entry;
  initialRequestConversionOptions = [entryCopy initialRequestConversionOptions];
  selfCopy = self;
  [(ImageConversionService *)self performBeginRequestActionsForUnitTestSupportOptions:initialRequestConversionOptions];
  v9 = [queueCopy anyDestinationURLCollectionForQueueEntry:entryCopy];
  v41 = queueCopy;
  v38 = v9;
  v39 = initialRequestConversionOptions;
  if (!v9)
  {
    v14 = 0;
    v13 = 0;
    goto LABEL_5;
  }

  v10 = v9;
  identifier = [entryCopy identifier];
  v54 = 0;
  v12 = [PAMediaConversionServiceSharedUtilitiesServiceSide temporaryFilesDirectoryURLForConversionTaskIdentifier:identifier error:&v54];
  v13 = v54;

  if (v12)
  {
    v14 = [PAMediaConversionServiceSharedUtilitiesServiceSide temporaryDestinationURLCollectionForFinalDestinationURLCollection:v10 inParentDirectoryURL:v12];
    [entryCopy setTemporaryFilesParentDirectoryURL:v12];

LABEL_5:
    v15 = objc_autoreleasePoolPush();
    sourceURLCollection = [entryCopy sourceURLCollection];
    v52 = 0;
    v53 = 0;
    v50 = v13;
    v51 = 0;
    v17 = [(ImageConversionService *)selfCopy convertImageWithOptions:initialRequestConversionOptions sourceURLCollection:sourceURLCollection outputURLCollection:v14 outputData:&v53 outputFileType:&v52 outputImageInfo:&v51 error:&v50];
    v18 = v53;
    v19 = v52;
    v20 = v51;
    v21 = v50;

    objc_autoreleasePoolPop(v15);
    v22 = v20;
    v23 = v17;
    v13 = v21;
    queueCopy = v41;
    goto LABEL_9;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v57 = entryCopy;
    v58 = 2112;
    v59 = v13;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to create temporary files directory for request %{public}@: %@", buf, 0x16u);
  }

  v14 = 0;
  v18 = 0;
  v22 = 0;
  v19 = 0;
  v23 = 0;
LABEL_9:
  v44 = v13;
  v35 = v22;
  v40 = entryCopy;
  v36 = v19;
  v37 = v14;
  [queueCopy markCompletionAndRetrieveClientRequestsForQueueEntry:entryCopy resultURLCollection:v14 didConvertSuccessfully:v23 conversionOutputInformation:v13 conversionOutputData:? conversionOutputFileType:? conversionError:?];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v49 = 0u;
  v24 = [obj countByEnumeratingWithState:&v46 objects:v55 count:16];
  if (v24)
  {
    v25 = v24;
    v43 = *v47;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v47 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v46 + 1) + 8 * i);
        v28 = objc_autoreleasePoolPush();
        requestTracker = [v27 requestTracker];
        v30 = requestTracker;
        v31 = v23;
        if (v23)
        {
          outputInformation = [requestTracker outputInformation];
        }

        else
        {
          outputInformation = 0;
        }

        imageClientReplyHandler = [v27 imageClientReplyHandler];
        identifier2 = [v27 identifier];
        -[ImageConversionService replyToCompletionHandler:requestIdentifier:resultData:resultImageInformation:signpostID:error:](selfCopy, "replyToCompletionHandler:requestIdentifier:resultData:resultImageInformation:signpostID:error:", imageClientReplyHandler, identifier2, v18, outputInformation, [v27 signpostID], v44);

        objc_autoreleasePoolPop(v28);
        v23 = v31;
      }

      v25 = [obj countByEnumeratingWithState:&v46 objects:v55 count:16];
    }

    while (v25);
  }

  [(ImageConversionService *)selfCopy performEndRequestActionsForUnitTestSupportOptions:v39];
}

- (id)adjustmentInformationForCropAdjustmentInformation:(id)information sourceURLCollection:(id)collection error:(id *)error
{
  collectionCopy = collection;
  informationCopy = information;
  v9 = [informationCopy objectForKeyedSubscript:@"PAMediaConversionServiceAdjustmentCropKey"];
  v10 = [informationCopy objectForKeyedSubscript:@"PAMediaConversionServiceAdjustmentOrientationKey"];

  if (v9)
  {
    [v9 rectValue];
    if (!NSIsEmptyRect(v32))
    {
      if (v10)
      {
        integerValue = [v10 integerValue];
        v12 = +[PIPhotoEditHelper newComposition];
        v13 = [PIPhotoEditHelper newCompositionControllerWithComposition:v12];

        [objc_opt_class() configureCompositionController:v13 sourceURLCollection:collectionCopy];
        adjustmentConstants = [v13 adjustmentConstants];
        pICropAdjustmentKey = [adjustmentConstants PICropAdjustmentKey];
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_100019BEC;
        v25[3] = &unk_10003DA90;
        v26 = v9;
        [v13 modifyAdjustmentWithKey:pICropAdjustmentKey modificationBlock:v25];

        pIOrientationAdjustmentKey = [adjustmentConstants PIOrientationAdjustmentKey];
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_100019C4C;
        v24[3] = &unk_10003DAB0;
        v24[4] = integerValue;
        [v13 modifyAdjustmentWithKey:pIOrientationAdjustmentKey modificationBlock:v24];

        v17 = objc_opt_class();
        composition = [v13 composition];
        v23 = 0;
        v19 = [v17 adjustmentInformationForComposition:composition error:&v23];
        v20 = v23;

        if (error && !v19)
        {
          v27[0] = NSLocalizedDescriptionKey;
          v27[1] = NSUnderlyingErrorKey;
          v28[0] = @"Error creating adjustment from crop adjustment.";
          v28[1] = v20;
          v21 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2];
          *error = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:2 userInfo:v21];
        }

        goto LABEL_10;
      }
    }
  }

  if (error)
  {
    v29 = NSLocalizedDescriptionKey;
    v30 = @"Crop adjustment missing PAMediaConversionServiceAdjustmentCropKey and/or PAMediaConversionServiceAdjustmentOrientationKey";
    v13 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:2 userInfo:v13];
    *error = v19 = 0;
LABEL_10:

    goto LABEL_12;
  }

  v19 = 0;
LABEL_12:

  return v19;
}

- (id)urlCollectionForBookmarkDictionaryKey:(id)key inOptions:(id)options removeExistingEmptyFiles:(BOOL)files error:(id *)error
{
  filesCopy = files;
  keyCopy = key;
  optionsCopy = options;
  v11 = [optionsCopy objectForKeyedSubscript:keyCopy];
  if (v11)
  {
    if ([keyCopy isEqualToString:@"PAMediaConversionServiceSourceBookmarkCollectionKey"])
    {
      v12 = [[PAMediaConversionServiceResourceURLCollectionAccessProvider alloc] initWithOptions:optionsCopy];
    }

    else
    {
      v12 = 0;
    }

    v15 = [PAMediaConversionServiceResourceURLCollection collectionForBookmarkDataDictionaryRepresentation:v11 accessProvider:v12 error:error];
    if (!v15)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v25 = keyCopy;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to create URL collection for key %{public}@", buf, 0xCu);
      }

      v13 = 0;
      v14 = 0;
      goto LABEL_26;
    }

    v13 = v15;
    if ([v15 urlCount])
    {
      if (filesCopy)
      {
        v21 = 0;
        v16 = [v13 removeExistingEmptyFilesWithError:&v21];
        v17 = v21;
        v18 = v17;
        if ((v16 & 1) == 0)
        {
          v14 = 0;
          if (error && v17)
          {
            v26[0] = @"PAMediaConversionServiceErrorOffendingItemNameKey";
            v26[1] = NSUnderlyingErrorKey;
            v27[0] = keyCopy;
            v27[1] = v17;
            v19 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];
            *error = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:4 userInfo:v19];

            v14 = 0;
          }

          goto LABEL_25;
        }
      }

      else
      {
        v18 = 0;
      }

      v14 = v13;
LABEL_25:

      goto LABEL_26;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v25 = keyCopy;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Empty url collection for key %{public}@", buf, 0xCu);
    }

    if (!error)
    {
LABEL_22:
      v14 = 0;
      goto LABEL_27;
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v25 = keyCopy;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Nil %{public}@ URL collection bookmark dictionary in options", buf, 0xCu);
    }

    v13 = 0;
    if (!error)
    {
      goto LABEL_22;
    }
  }

  v22 = @"PAMediaConversionServiceErrorOffendingItemNameKey";
  v23 = keyCopy;
  v12 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:1 userInfo:v12];
  *error = v14 = 0;
LABEL_26:

LABEL_27:

  return v14;
}

- (BOOL)convertImageWithOptions:(id)options sourceURLCollection:(id)collection outputURLCollection:(id)lCollection outputData:(id *)data outputFileType:(id *)type outputImageInfo:(id *)info error:(id *)error
{
  optionsCopy = options;
  collectionCopy = collection;
  lCollectionCopy = lCollection;
  infoCopy = info;
  if (!info)
  {
    v119 = +[NSAssertionHandler currentHandler];
    [v119 handleFailureInMethod:a2 object:self file:@"ImageConversionService.m" lineNumber:342 description:{@"Invalid parameter not satisfying: %@", @"outputImageInfo"}];
  }

  if (!lCollectionCopy)
  {
    v16 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceOptionWantsResultAsDataKey"];
    bOOLValue = [v16 BOOLValue];

    if ((bOOLValue & 1) == 0)
    {
      v18 = +[NSAssertionHandler currentHandler];
      [v18 handleFailureInMethod:a2 object:self file:@"ImageConversionService.m" lineNumber:344 description:{@"Neither destination URL collection nor NSData output option, should have been rejected at request enqueue time"}];
    }
  }

  v19 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceOptionIsPassthroughConversionKey"];
  bOOLValue2 = [v19 BOOLValue];

  v21 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceOptionIsPhotosAdjustmentsCalculationKey"];
  bOOLValue3 = [v21 BOOLValue];

  v23 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceOptionAlchemistConversionKey"];
  bOOLValue4 = [v23 BOOLValue];

  identifier = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceOptionOutputFileTypeKey"];
  if (!identifier)
  {
    identifier = [lCollectionCopy typeIdentifierForResourceURLWithRole:@"PAMediaConversionResourceRoleMainResource"];
    if (!identifier)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to determine output file type from destination URL, defaulting to JPEG.", buf, 2u);
      }

      identifier = [UTTypeJPEG identifier];
    }
  }

  v26 = identifier;
  v134 = collectionCopy;
  v141 = CGSizeZero;
  v27 = +[NSMutableDictionary dictionary];
  v135 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceOptionMetadataPolicyKey"];
  if (v135)
  {
    v28 = 1;
  }

  else
  {
    v28 = bOOLValue3;
  }

  if ((v28 & 1) == 0)
  {
    v120 = +[NSAssertionHandler currentHandler];
    [v120 handleFailureInMethod:a2 object:self file:@"ImageConversionService.m" lineNumber:370 description:@"Missing metadata policy"];
  }

  v129 = a2;
  selfCopy = self;
  v29 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceOptionRequiresBlastDoorAccessKey"];
  if ([v29 BOOLValue])
  {
    v30 = +[NSUserDefaults standardUserDefaults];
    v31 = [v30 BOOLForKey:@"PADisablePhotosBlastDoorProcessing"];
  }

  else
  {
    v31 = 1;
  }

  if ((bOOLValue2 & v31) != 1)
  {
    v32 = v134;
    if (bOOLValue3)
    {
      v40 = [v134 resourceURLForRole:@"PAMediaConversionResourceRoleMainResource"];
      v41 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceInputFileTypeKey"];
      v42 = [PFUniformTypeUtilities typeWithIdentifier:v41];

      v43 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceOptionOrientationKey"];
      unsignedIntValue = [v43 unsignedIntValue];

      v140 = 0;
      v45 = [(ImageConversionService *)selfCopy performPhotosPortraitAdjustmentsCalculationForURL:v40 contentType:v42 orientation:unsignedIntValue error:&v140];
      v36 = v140;
      if (v45)
      {
        [v27 setObject:v45 forKeyedSubscript:@"PAMediaConversionServiceCalculatedAdjustmentInformationKey"];

        destinationData2 = 0;
        v38 = 1;
        errorCopy7 = error;
        v32 = v134;
LABEL_72:
        v75 = v27;
        *infoCopy = v27;
        goto LABEL_73;
      }

      errorCopy7 = error;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v145 = v40;
        v146 = 2112;
        v147 = v36;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to calculate photos adjustments information for %@: %@", buf, 0x16u);
      }

      destinationData2 = 0;
      v38 = 0;
      v32 = v134;
      goto LABEL_73;
    }

    if (bOOLValue4)
    {
      v47 = [v134 resourceURLForRole:@"PAMediaConversionResourceRoleMainResource"];
      v48 = [lCollectionCopy resourceURLForRole:@"PAMediaConversionResourceRoleMainResource"];
      v49 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceOptionColorSpaceKey"];

      if (v49)
      {
        v49 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceOptionColorSpaceKey"];
        integerValue = [v49 integerValue];

        LODWORD(v49) = integerValue == 0;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v145 = v47;
        v146 = 2112;
        v147 = v48;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Running alchemist pipeline for %@, %@", buf, 0x16u);
      }

      if (+[_TtC39com_apple_photos_ImageConversionService16AlchemistWrapper canUseAlchemistService])
      {
        if (v49)
        {
          v51 = CGColorSpaceCreateWithName(kCGColorSpaceSRGB);
        }

        else
        {
          v51 = 0;
        }

        v139 = 0;
        v69 = [_TtC39com_apple_photos_ImageConversionService16AlchemistWrapper generateAlchemistResultWithSourceURL:v47 outputURL:v48 outputColorSpace:v51 error:&v139];
        v70 = v139;
        errorCopy7 = error;
        if (v51)
        {
          CGColorSpaceRelease(v51);
        }

        v71 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO);
        if (v69)
        {
          v32 = v134;
          if (v71)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Alchemist successful", buf, 2u);
          }

          destinationData2 = 0;
          blastDoorError = 0;
          v38 = 1;
          goto LABEL_69;
        }

        v32 = v134;
        if (v71)
        {
          *buf = 138412290;
          v145 = v70;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Alchemist unsuccessful %@", buf, 0xCu);
        }
      }

      else
      {
        errorCopy7 = error;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Platform does not support Alchemist", buf, 2u);
        }
      }

      destinationData2 = 0;
      v36 = 0;
      v38 = 0;
      goto LABEL_73;
    }

    v52 = [PAMediaConversionServiceImageConversionJob alloc];
    v53 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceJobIdentifierKey"];
    v54 = [(PAMediaConversionServiceImageConversionJob *)v52 initWithRequestIdentifier:v53 sourceResourceURLCollection:v134 outputFileType:v26];

    v55 = v54;
    [(PAMediaConversionServiceImageConversionJob *)v54 setDestinationResourceURLCollection:lCollectionCopy];
    [(PAMediaConversionServiceImageConversionJob *)v54 setMetadataPolicy:v135];
    v56 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceOptionOrientationKey"];

    if (v56)
    {
      v57 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceOptionOrientationKey"];
      integerValue2 = [v57 integerValue];
    }

    else
    {
      v60 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceOptionRotationAngleDegreesKey"];

      if (!v60)
      {
        [(PAMediaConversionServiceImageConversionJob *)v55 setOrientation:0];
        goto LABEL_53;
      }

      v57 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceOptionRotationAngleDegreesKey"];
      [v57 integerValue];
      integerValue2 = IPAOrientationFromClockwiseRotation();
    }

    [(PAMediaConversionServiceImageConversionJob *)v55 setOrientation:integerValue2];

LABEL_53:
    integerValue3 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceOptionColorSpaceKey"];

    if (integerValue3)
    {
      [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceOptionColorSpaceKey"];
      v63 = v62 = v55;
      integerValue3 = [v63 integerValue];

      v55 = v62;
      if (integerValue3 >= 3)
      {
        if (error)
        {
          v142 = NSLocalizedDescriptionKey;
          v143 = @"Illegal ColorSpace option";
          v67 = [NSDictionary dictionaryWithObjects:&v143 forKeys:&v142 count:1];
          *error = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:2 userInfo:v67];

          v55 = v62;
        }

        v68 = 0;
        destinationData2 = 0;
        goto LABEL_79;
      }
    }

    [(PAMediaConversionServiceImageConversionJob *)v55 setColorspaceMode:integerValue3];
    v64 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceOptionScaleFactorKey"];
    v65 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceOptionMaximumPixelCountKey"];
    v66 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceOptionMaximumLongSideLengthKey"];
    v128 = v66;
    if (v64)
    {
      [v64 doubleValue];
      [(PAMediaConversionServiceImageConversionJob *)v55 setScaleFactor:?];
    }

    else if (v65)
    {
      -[PAMediaConversionServiceImageConversionJob setRequestedMaximumPixelCount:](v55, "setRequestedMaximumPixelCount:", [v65 integerValue]);
    }

    else
    {
      if (!v66)
      {
        v127 = +[NSAssertionHandler currentHandler];
        [v127 handleFailureInMethod:v129 object:selfCopy file:@"ImageConversionService.m" lineNumber:462 description:@"Missing scale parameters"];
        LODWORD(adjustmentInformation) = 0;
        goto LABEL_90;
      }

      -[PAMediaConversionServiceImageConversionJob setRequestedMaximumLongSideLength:](v55, "setRequestedMaximumLongSideLength:", [v66 integerValue]);
    }

    v88 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceOptionApplyOrientationTransformKey"];
    -[PAMediaConversionServiceImageConversionJob setApplySourceOrientationTransform:](v55, "setApplySourceOrientationTransform:", [v88 BOOLValue]);

    v89 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceOptionFormatConversionOnlyKey"];
    -[PAMediaConversionServiceImageConversionJob setFormatConversionOnly:](v55, "setFormatConversionOnly:", [v89 BOOLValue]);

    v90 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceOptionCropAdjustmentInformationKey"];
    v127 = v90;
    if (v90)
    {
      v91 = [(ImageConversionService *)selfCopy adjustmentInformationForCropAdjustmentInformation:v90 sourceURLCollection:v134 error:error];
      [(PAMediaConversionServiceImageConversionJob *)v55 setAdjustmentInformation:v91];

      adjustmentInformation = [(PAMediaConversionServiceImageConversionJob *)v55 adjustmentInformation];

      if (!adjustmentInformation)
      {
LABEL_90:
        blastDoorError = 0;
        v93 = 0;
        destinationData2 = 0;
LABEL_118:

        if (!adjustmentInformation)
        {
          v38 = 0;
          v32 = v134;
          v36 = blastDoorError;
          goto LABEL_80;
        }

        v36 = blastDoorError;
        if (!v93)
        {
          v38 = 0;
          errorCopy7 = error;
          v32 = v134;
          goto LABEL_73;
        }

        if (!destinationData2)
        {
          v38 = 1;
          goto LABEL_27;
        }

        v32 = v134;
LABEL_22:
        if (!lCollectionCopy)
        {
          if (data)
          {
            v59 = destinationData2;
            *data = destinationData2;
          }

          else
          {
            v121 = +[NSAssertionHandler currentHandler];
            [v121 handleFailureInMethod:v129 object:selfCopy file:@"ImageConversionService.m" lineNumber:522 description:{@"Invalid request output configuration, missing both destination URL collection and data pointer"}];
          }

          v38 = 1;
          blastDoorError = v36;
          goto LABEL_69;
        }

        v37 = [lCollectionCopy resourceURLForRole:@"PAMediaConversionResourceRoleMainResource"];
        v137 = v36;
        v38 = [destinationData2 writeToURL:v37 options:0 error:&v137];
        blastDoorError = v137;

        if ((v38 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v145 = blastDoorError;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Error writing result image data to URL passed in destination URL collection: %{public}@", buf, 0xCu);
        }

LABEL_27:
        v32 = v134;
LABEL_69:
        v72 = [NSNumber numberWithDouble:v141.width];
        [v27 setObject:v72 forKeyedSubscript:@"PAMediaConversionServicePixelWidthKey"];

        v73 = [NSNumber numberWithDouble:v141.height];
        [v27 setObject:v73 forKeyedSubscript:@"PAMediaConversionServicePixelHeightKey"];

        if (type)
        {
          v74 = v26;
          *type = v26;
        }

        errorCopy7 = error;
        v36 = blastDoorError;
        goto LABEL_72;
      }
    }

    else
    {
      v94 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceOptionAdjustmentInformationKey"];
      [(PAMediaConversionServiceImageConversionJob *)v55 setAdjustmentInformation:v94];
    }

    v95 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceOptionEnableOutputCorruptionDetectionHeuristicsKey"];
    -[PAMediaConversionServiceImageConversionJob setShouldCheckForOutputCorruption:](v55, "setShouldCheckForOutputCorruption:", [v95 BOOLValue]);

    v96 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceOptionUseEmbeddedImageAsSourceKey"];
    -[PAMediaConversionServiceImageConversionJob setShouldUseEmbeddedImageAsSource:](v55, "setShouldUseEmbeddedImageAsSource:", [v96 BOOLValue]);

    [PAMediaConversionServiceSharedUtilitiesServiceSide executeConversionJob:v55];
    if (![(PAMediaConversionServiceImageConversionJob *)v55 status])
    {
      v122 = +[NSAssertionHandler currentHandler];
      [v122 handleFailureInMethod:v129 object:selfCopy file:@"ImageConversionService.m" lineNumber:484 description:@"Unexpected unknown image conversion job state after execution"];
    }

    v85 = [(PAMediaConversionServiceImageConversionJob *)v55 status]== 1;
    v93 = v85;
    if (!v85)
    {
      error = [(PAMediaConversionServiceImageConversionJob *)v55 error];
      if (error)
      {
        blastDoorError = error;
        v93 = 0;
        destinationData2 = 0;
LABEL_117:
        LODWORD(adjustmentInformation) = 1;
        goto LABEL_118;
      }

      v126 = v65;
      sourceResourceURLCollection = [(PAMediaConversionServiceImageConversionJob *)v55 sourceResourceURLCollection];
      v104 = v55;
      isBlastDoorAccessRequired = [sourceResourceURLCollection isBlastDoorAccessRequired];

      if (isBlastDoorAccessRequired)
      {
        sourceResourceURLCollection2 = [(PAMediaConversionServiceImageConversionJob *)v104 sourceResourceURLCollection];
        blastDoorError = [sourceResourceURLCollection2 blastDoorError];
        destinationData2 = 0;
        v55 = v104;
        v65 = v126;
        goto LABEL_116;
      }

      blastDoorError = 0;
      v93 = 0;
      destinationData2 = 0;
      LODWORD(adjustmentInformation) = 1;
LABEL_111:
      v55 = v104;
      v65 = v126;
      goto LABEL_118;
    }

    destinationData = [(PAMediaConversionServiceImageConversionJob *)v55 destinationData];

    if (destinationData)
    {
      destinationData2 = [(PAMediaConversionServiceImageConversionJob *)v55 destinationData];
    }

    else
    {
      destinationData2 = 0;
    }

    [(PAMediaConversionServiceImageConversionJob *)v55 outputImageSize];
    v141.width = v99;
    v141.height = v100;
    sourceResourceURLCollection2 = [(PAMediaConversionServiceImageConversionJob *)v55 sourceResourceURLCollection];
    if ([sourceResourceURLCollection2 isBlastDoorAccessRequired])
    {
      v126 = v65;
      [(PAMediaConversionServiceImageConversionJob *)v55 sourceResourceURLCollection];
      v103 = v102 = sourceResourceURLCollection2;
      [v103 blastDoorMainSourceProperties];
      v105 = v104 = v55;

      if (!v105)
      {
        goto LABEL_109;
      }

      sourceResourceURLCollection3 = [(PAMediaConversionServiceImageConversionJob *)v104 sourceResourceURLCollection];
      blastDoorMainSourceProperties = [sourceResourceURLCollection3 blastDoorMainSourceProperties];
      [v27 setObject:blastDoorMainSourceProperties forKeyedSubscript:@"PAMediaConversionServiceBlastDoorSourcePropertiesKey"];

      sourceResourceURLCollection4 = [(PAMediaConversionServiceImageConversionJob *)v104 sourceResourceURLCollection];
      blastDoorVideoComplementProperties = [sourceResourceURLCollection4 blastDoorVideoComplementProperties];
      [v27 setObject:blastDoorVideoComplementProperties forKeyedSubscript:@"PAMediaConversionServiceBlastDoorVideoComplementSourcePropertiesKey"];

      sourceResourceURLCollection5 = [(PAMediaConversionServiceImageConversionJob *)v104 sourceResourceURLCollection];
      blastDoorSourceURL = [sourceResourceURLCollection5 blastDoorSourceURL];

      if (!blastDoorSourceURL)
      {
LABEL_109:
        blastDoorError = 0;
        LODWORD(adjustmentInformation) = 1;
        v93 = 1;
        goto LABEL_111;
      }

      v124 = v64;
      v125 = destinationData2;
      v112 = +[NSFileManager defaultManager];
      v113 = v104;
      sourceResourceURLCollection6 = [(PAMediaConversionServiceImageConversionJob *)v104 sourceResourceURLCollection];
      blastDoorSourceURL2 = [sourceResourceURLCollection6 blastDoorSourceURL];
      v138 = 0;
      v116 = [v112 removeItemAtURL:blastDoorSourceURL2 error:&v138];
      v123 = v138;

      if (v116)
      {
        blastDoorError = 0;
        v55 = v104;
        v64 = v124;
        destinationData2 = v125;
        v65 = v126;
      }

      else
      {
        v65 = v126;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          sourceResourceURLCollection2 = v123;
          v145 = v123;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[BlastDoor] Failed to remove temporary blast door source file: %{public}@", buf, 0xCu);
          blastDoorError = 0;
          v55 = v113;
          v64 = v124;
          destinationData2 = v125;
          goto LABEL_116;
        }

        blastDoorError = 0;
        v55 = v113;
        v64 = v124;
        destinationData2 = v125;
      }

      sourceResourceURLCollection2 = v123;
    }

    else
    {
      blastDoorError = 0;
    }

LABEL_116:

    goto LABEL_117;
  }

  v32 = v134;
  v33 = [v134 resourceURLForRole:@"PAMediaConversionResourceRoleMainResource"];
  v34 = [PAMediaConversionServiceImagingUtilities imageDataForPassthroughConversionForSourceURL:v33 metadataPolicy:v135 outResultImageSize:&v141];

  destinationData2 = 0;
  if (v34)
  {
    v36 = 0;
    destinationData2 = v34;
    goto LABEL_22;
  }

  v38 = 0;
  v36 = 0;
  errorCopy7 = error;
LABEL_73:
  if (errorCopy7 && (v38 & 1) == 0)
  {
    +[NSMutableDictionary dictionary];
    v76 = optionsCopy;
    v78 = v77 = destinationData2;
    [v32 logMessageSummary];
    v79 = v26;
    v81 = v80 = errorCopy7;
    [(PAMediaConversionServiceImageConversionJob *)v78 setObject:v81 forKeyedSubscript:@"PAMediaConversionServiceErrorSourceResourceSummaryKey"];

    v82 = [v36 description];
    [(PAMediaConversionServiceImageConversionJob *)v78 setObject:v82 forKeyedSubscript:@"PAMediaConversionServiceErrorUnderlyingErrorDescriptionKey"];

    v68 = v36;
    domain = [v36 domain];
    v84 = [domain isEqualToString:@"BlastDoor.Explosion"];

    v85 = v84 == 0;
    v55 = v78;
    destinationData2 = v77;
    optionsCopy = v76;
    if (v85)
    {
      v86 = 2;
    }

    else
    {
      v86 = 12;
    }

    *v80 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:v86 userInfo:v55];
    v26 = v79;
LABEL_79:

    v38 = 0;
    v36 = v68;
  }

LABEL_80:

  return v38;
}

- (void)enumerateEnvironmentVariablePairsInRequestOptions:(id)options block:(id)block
{
  blockCopy = block;
  obj = [options objectForKeyedSubscript:@"PAMediaConversionServiceOptionUnitTestSupportExtraEnvironmentVariablesKey"];
  if (obj)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [obj countByEnumeratingWithState:&v18 objects:v28 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          v11 = [v10 componentsSeparatedByString:@"="];
          if ([v11 count] != 2)
          {
            v14 = +[NSAssertionHandler currentHandler];
            [v14 handleFailureInMethod:a2 object:self file:@"ImageConversionService.m" lineNumber:322 description:{@"Unexpected env var item count: %@", v10}];
          }

          v12 = [v11 objectAtIndexedSubscript:0];
          v13 = [v11 objectAtIndexedSubscript:1];
          if ([v12 rangeOfString:@"^CI_.+$" options:1024] == 0x7FFFFFFFFFFFFFFFLL)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v23 = v12;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Ignoring unsupported env var key %@", buf, 0xCu);
            }
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412802;
              v23 = v12;
              v24 = 2112;
              v25 = v13;
              v26 = 2112;
              v27 = @"PAMediaConversionServiceOptionUnitTestSupportExtraEnvironmentVariablesKey";
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Setting environment variable '%@' to '%@' because %@ request option is set", buf, 0x20u);
            }

            blockCopy[2](blockCopy, v12, v13);
          }
        }

        v7 = [obj countByEnumeratingWithState:&v18 objects:v28 count:16];
      }

      while (v7);
    }
  }
}

- (void)performEndRequestActionsForUnitTestSupportOptions:(id)options
{
  optionsCopy = options;
  [(ImageConversionService *)self enumerateEnvironmentVariablePairsInRequestOptions:optionsCopy block:&stru_10003DA68];
  v5 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceOptionUnitTestSupportServiceShouldExitAfterRequestKey"];

  LODWORD(optionsCopy) = [v5 BOOLValue];
  if (optionsCopy)
  {

    _xpc_transaction_exit_clean();
  }
}

- (void)performBeginRequestActionsForUnitTestSupportOptions:(id)options
{
  optionsCopy = options;
  v4 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceOptionUnitTestSupportServiceShouldExitDuringRequestKey"];
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v8 = @"PAMediaConversionServiceOptionUnitTestSupportServiceShouldExitDuringRequestKey";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Terminating process because %@ request option is set", buf, 0xCu);
    }

    exit(1);
  }

  [(ImageConversionService *)self enumerateEnvironmentVariablePairsInRequestOptions:optionsCopy block:&stru_10003DA48];
}

- (void)decrementPendingRequestCountWithRequestIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = selfCopy->_pendingRequestCount - 1;
  selfCopy->_pendingRequestCount = v6;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v7 = 138543618;
    v8 = identifierCopy;
    v9 = 2048;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Sent reply for image conversion request %{public}@, pending request count now %ld", &v7, 0x16u);
  }

  objc_sync_exit(selfCopy);
}

- (void)replyToCompletionHandler:(id)handler requestIdentifier:(id)identifier resultData:(id)data resultImageInformation:(id)information signpostID:(unint64_t)d error:(id)error
{
  v14 = *(handler + 2);
  identifierCopy = identifier;
  v14(handler, data, information, error);
  v16 = &_os_log_default;
  if (d - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(&_os_log_default))
  {
    *v17 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, &_os_log_default, OS_SIGNPOST_INTERVAL_END, d, "com.apple.photos.mediaconversion.service", "", v17, 2u);
  }

  [(ImageConversionService *)self decrementPendingRequestCountWithRequestIdentifier:identifierCopy];
}

- (int64_t)incrementPendingRequestCountWithRequestIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  pendingRequestCount = selfCopy->_pendingRequestCount;
  if (pendingRequestCount < 0)
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:selfCopy file:@"ImageConversionService.m" lineNumber:262 description:@"Pending request count underflow"];

    pendingRequestCount = selfCopy->_pendingRequestCount;
  }

  v8 = pendingRequestCount + 1;
  selfCopy->_pendingRequestCount = pendingRequestCount + 1;
  objc_sync_exit(selfCopy);

  return v8;
}

- (BOOL)validatePhotosAdjustmentsCalculationRequestOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v6 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceInputFileTypeKey"];
  v7 = [PFUniformTypeUtilities typeWithIdentifier:v6];
  if (v7)
  {
    v8 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceOptionOrientationKey"];
    v9 = [v8 unsignedIntValue] - 1;
    v10 = v9 < 8;
    if (error && v9 >= 8)
    {
      v13 = @"PAMediaConversionServiceErrorOffendingItemNameKey";
      v14 = @"PAMediaConversionServiceOptionOrientationKey";
      v11 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      *error = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:1 userInfo:v11];

      v10 = 0;
    }
  }

  else
  {
    if (!error)
    {
      v10 = 0;
      goto LABEL_8;
    }

    v15 = @"PAMediaConversionServiceErrorOffendingItemNameKey";
    v16 = @"PAMediaConversionServiceInputFileTypeKey";
    v8 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:1 userInfo:v8];
    *error = v10 = 0;
  }

LABEL_8:
  return v10;
}

- (BOOL)validateRequestOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v7 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceOptionIsPhotosAdjustmentsCalculationKey"];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue)
  {
    v9 = [(ImageConversionService *)self validatePhotosAdjustmentsCalculationRequestOptions:optionsCopy error:error];
    goto LABEL_17;
  }

  v10 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceOptionApplyOrientationTransformKey"];
  bOOLValue2 = [v10 BOOLValue];

  v12 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceOptionEnableOutputCorruptionDetectionHeuristicsKey"];
  bOOLValue3 = [v12 BOOLValue];

  if (!bOOLValue3 || !bOOLValue2)
  {
    v16 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceOptionMetadataPolicyKey"];
    if (v16)
    {
      allKeys = [optionsCopy allKeys];
      v18 = [NSMutableSet setWithArray:allKeys];

      v27[0] = @"PAMediaConversionServiceOptionScaleFactorKey";
      v27[1] = @"PAMediaConversionServiceOptionMaximumPixelCountKey";
      v27[2] = @"PAMediaConversionServiceOptionMaximumLongSideLengthKey";
      v19 = [NSArray arrayWithObjects:v27 count:3];
      v20 = [NSSet setWithArray:v19];

      [v18 intersectSet:v20];
      v21 = [v18 count];
      v9 = v21 == 1;
      if (error && v21 != 1)
      {
        v25 = NSDebugDescriptionErrorKey;
        v22 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Expected exactly one scaling request option but received %lu: %@", [v18 count], v18);
        v26 = v22;
        v23 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
        *error = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:6 userInfo:v23];
      }
    }

    else
    {
      if (!error)
      {
        v9 = 0;
        goto LABEL_16;
      }

      v28 = @"PAMediaConversionServiceErrorOffendingItemNameKey";
      v29 = @"PAMediaConversionServiceOptionMetadataPolicyKey";
      v18 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:1 userInfo:v18];
      *error = v9 = 0;
    }

LABEL_16:
    goto LABEL_17;
  }

  if (error)
  {
    v30 = NSDebugDescriptionErrorKey;
    v14 = [NSString stringWithFormat:@"Invalid combination of %@ and %@ request options", @"PAMediaConversionServiceOptionApplyOrientationTransformKey", @"PAMediaConversionServiceOptionEnableOutputCorruptionDetectionHeuristicsKey"];
    v31 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    *error = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:6 userInfo:v15];
  }

  v9 = 0;
LABEL_17:

  return v9;
}

- (BOOL)setupSourceAndDestinationForRequestTracker:(id)tracker imageConversionOptions:(id)options error:(id *)error
{
  trackerCopy = tracker;
  optionsCopy = options;
  v10 = [(ImageConversionService *)self urlCollectionForBookmarkDictionaryKey:@"PAMediaConversionServiceSourceBookmarkCollectionKey" inOptions:optionsCopy removeExistingEmptyFiles:0 error:error];
  if (!v10)
  {
    goto LABEL_11;
  }

  [trackerCopy setSourceURLCollection:v10];
  v11 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceDestinationBookmarkCollectionKey"];

  if (!v11)
  {
    v14 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceOptionWantsResultAsDataKey"];
    bOOLValue = [v14 BOOLValue];

    if (bOOLValue)
    {
      goto LABEL_6;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Neither destination URL collection nor wants-data option specified", v18, 2u);
      if (!error)
      {
        goto LABEL_11;
      }
    }

    else if (!error)
    {
      goto LABEL_11;
    }

    [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:4 userInfo:0];
    *error = v16 = 0;
    goto LABEL_12;
  }

  v12 = [(ImageConversionService *)self urlCollectionForBookmarkDictionaryKey:@"PAMediaConversionServiceDestinationBookmarkCollectionKey" inOptions:optionsCopy removeExistingEmptyFiles:1 error:error];
  if (!v12)
  {
LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }

  v13 = v12;
  [trackerCopy setDestinationURLCollection:v12];

LABEL_6:
  v16 = 1;
LABEL_12:

  return v16;
}

- (void)requestStatusWithReply:(id)reply
{
  v7 = @"PAMediaConversionServiceProcessIdentifierKey";
  replyCopy = reply;
  v5 = [NSNumber numberWithInt:getpid()];
  v8 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  (*(reply + 2))(replyCopy, v6, 0);
}

- (void)convertImageWithOptions:(id)options reply:(id)reply
{
  optionsCopy = options;
  replyCopy = reply;
  v8 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceJobIdentifierKey"];
  if ([(ImageConversionService *)self validateRequestIdentifier:v8 replyHandler:replyCopy])
  {
    v9 = objc_opt_new();
    [v9 setSignpostID:{os_signpost_id_make_with_pointer(&_os_log_default, v8)}];
    signpostID = [v9 signpostID];
    if ((signpostID - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v11 = signpostID;
      if (os_signpost_enabled(&_os_log_default))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, &_os_log_default, OS_SIGNPOST_INTERVAL_BEGIN, v11, "com.apple.photos.mediaconversion.service", "", buf, 2u);
      }
    }

    v34 = [(ImageConversionService *)self incrementPendingRequestCountWithRequestIdentifier:v8];
    v37 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceOptionRequestReasonKey"];
    v38 = +[NSXPCConnection currentConnection];
    userInfo = [v38 userInfo];
    v39 = [userInfo objectForKeyedSubscript:@"PAMCS_CONNECTION_USER_INFO_CONNECTION_IDENTIFIER_KEY"];
    context = objc_autoreleasePoolPush();
    nextRequestNumber = [(MediaConversionQueue *)self->_requestQueue nextRequestNumber];
    v13 = [[MediaConversionRequestTracker alloc] initWithRequestOptions:optionsCopy requestNumber:nextRequestNumber];
    v14 = [(MediaConversionQueue *)self->_requestQueue queueEntryWithConversionOptions:optionsCopy];
    [v14 setTaskTypeSupportsDeduplication:1];
    v42 = 0;
    v15 = [(ImageConversionService *)self validateRequestOptions:optionsCopy error:&v42];
    v16 = v42;
    v17 = v16;
    if (v15)
    {
      v41 = v16;
      v18 = [(ImageConversionService *)self setupSourceAndDestinationForRequestTracker:v13 imageConversionOptions:optionsCopy error:&v41];
      v33 = v41;

      if ((v18 & 1) == 0)
      {
        v25 = v37;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          clientProcessIdentifier = [(MediaConversionRequestTracker *)v13 clientProcessIdentifier];
          *buf = 138543618;
          v44 = v14;
          v45 = 1024;
          LODWORD(v46) = clientProcessIdentifier;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Rejecting conversion request (image) %{public}@ from [%d] because source or destination URLs are invalid", buf, 0x12u);
        }

        v17 = v33;
        [(MediaConversionRequestTracker *)v13 setError:v33];
        [(MediaConversionRequestTracker *)v13 markAsCompletedWithInitialRequestIdentifier:0];
        requestIdentifier = [(MediaConversionRequestTracker *)v13 requestIdentifier];
        -[ImageConversionService replyToCompletionHandler:requestIdentifier:resultData:resultImageInformation:signpostID:error:](self, "replyToCompletionHandler:requestIdentifier:resultData:resultImageInformation:signpostID:error:", replyCopy, requestIdentifier, 0, 0, [v9 signpostID], v33);
        goto LABEL_23;
      }

      sourceURLCollection = [(MediaConversionRequestTracker *)v13 sourceURLCollection];
      [v14 setSourceURLCollection:sourceURLCollection];

      [v9 setImageClientReplyHandler:replyCopy];
      [v9 setRequestTracker:v13];
      [v9 setConnection:v38];
      [v9 setConnectionIdentifier:v39];
      requestQueue = self->_requestQueue;
      v40 = 0;
      [(MediaConversionQueue *)requestQueue enqueueEntry:v14 clientRequest:v9 isDuplicateOfOriginalQueueEntry:&v40];
      requestIdentifier = v40;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        if (requestIdentifier)
        {
          v22 = requestIdentifier;
        }

        else
        {
          v22 = v14;
        }

        v32 = v22;
        effectivePriority = [(MediaConversionRequestTracker *)v13 effectivePriority];
        if (effectivePriority > 4)
        {
          v24 = 0;
        }

        else
        {
          v24 = off_10003DAF8[effectivePriority];
        }

        v31 = v24;
        requestOptionsSignatureString = [(MediaConversionRequestTracker *)v13 requestOptionsSignatureString];
        sourceURLFilenameOnlySummary = [(MediaConversionRequestTracker *)v13 sourceURLFilenameOnlySummary];
        identifier = [v32 identifier];
        *buf = 134220291;
        v44 = nextRequestNumber;
        v45 = 2114;
        v46 = v8;
        v47 = 2112;
        v48 = v31;
        v49 = 2114;
        v25 = v37;
        v50 = v37;
        v51 = 2114;
        v52 = requestOptionsSignatureString;
        v53 = 2113;
        v54 = sourceURLFilenameOnlySummary;
        v55 = 2114;
        v56 = identifier;
        v27 = identifier;
        v57 = 1024;
        v58 = requestIdentifier != 0;
        v59 = 2114;
        v60 = v39;
        v61 = 2048;
        v62 = v34;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Received conversion request #%lu %{public}@ (%@, %{public}@) with signature %{public}@ for %{private}@, attached to conversion task %{public}@, isDuplicate = %d, connection %{public}@, pending request count now %ld", buf, 0x62u);

        v17 = v33;
        goto LABEL_23;
      }

      v17 = v33;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v44 = v14;
        v45 = 2114;
        v46 = v17;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Invalid request options for %{public}@: %{public}@", buf, 0x16u);
      }

      requestIdentifier = [(MediaConversionRequestTracker *)v13 requestIdentifier];
      -[ImageConversionService replyToCompletionHandler:requestIdentifier:resultData:resultImageInformation:signpostID:error:](self, "replyToCompletionHandler:requestIdentifier:resultData:resultImageInformation:signpostID:error:", replyCopy, requestIdentifier, 0, 0, [v9 signpostID], v17);
    }

    v25 = v37;
LABEL_23:

    objc_autoreleasePoolPop(context);
  }
}

- (BOOL)validateRequestIdentifier:(id)identifier replyHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  if (identifierCopy)
  {
    v9 = identifierCopy;
  }

  else
  {
    v14 = +[NSAssertionHandler currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"ImageConversionService.m" lineNumber:80 description:{@"Invalid parameter not satisfying: %@", @"requestIdentifier"}];

    v9 = 0;
  }

  v10 = [v9 rangeOfString:@"[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$" options:1033];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = NSDebugDescriptionErrorKey;
    v16 = @"Invalid request identifier format";
    v11 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v12 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:6 userInfo:v11];

    (*(handlerCopy + 2))(handlerCopy, 0, 0, v12);
  }

  return v10 != 0x7FFFFFFFFFFFFFFFLL;
}

- (void)run
{
  v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.photos.ImageConversionService"];
  [(ImageConversionService *)self setListener:v3];

  listener = [(ImageConversionService *)self listener];
  [listener setDelegate:self];

  listener2 = [(ImageConversionService *)self listener];
  [listener2 resume];

  dispatch_main();
}

- (ImageConversionService)init
{
  v9.receiver = self;
  v9.super_class = ImageConversionService;
  v2 = [(ImageConversionService *)&v9 init];
  if (v2)
  {
    v3 = os_signpost_id_make_with_pointer(&_os_log_default, v2);
    v4 = &_os_log_default;
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(&_os_log_default))
    {
      *v8 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, &_os_log_default, OS_SIGNPOST_EVENT, v3, "com.apple.photos.mediaconversion.service.init", "", v8, 2u);
    }

    v5 = [[MediaConversionQueue alloc] initWithDelegate:v2];
    requestQueue = v2->_requestQueue;
    v2->_requestQueue = v5;
  }

  return v2;
}

+ (id)adjustmentInformationForComposition:(id)composition error:(id *)error
{
  v4 = [PICompositionSerializer adjustmentInformationForComposition:composition error:error];
  v5 = [v4 mutableCopy];

  v6 = PIAssetAdjustmentsDataBlobKey;
  v7 = [v5 objectForKeyedSubscript:PIAssetAdjustmentsDataBlobKey];
  [v5 setObject:v7 forKeyedSubscript:@"PAMediaConversionServiceAdjustmentDataKey"];

  v8 = PIAssetAdjustmentsFormatIdentifierKey;
  v9 = [v5 objectForKeyedSubscript:PIAssetAdjustmentsFormatIdentifierKey];
  [v5 setObject:v9 forKeyedSubscript:@"PAMediaConversionServiceAdjustmentFormatIdentifierKey"];

  v10 = PIAssetAdjustmentsFormatVersionKey;
  v11 = [v5 objectForKeyedSubscript:PIAssetAdjustmentsFormatVersionKey];
  [v5 setObject:v11 forKeyedSubscript:@"PAMediaConversionServiceAdjustmentFormatVersionKey"];

  v14[0] = v6;
  v14[1] = v8;
  v14[2] = v10;
  v12 = [NSArray arrayWithObjects:v14 count:3];
  [v5 removeObjectsForKeys:v12];

  return v5;
}

+ (void)configureCompositionController:(id)controller sourceURLCollection:(id)collection
{
  collectionCopy = collection;
  controllerCopy = controller;
  v7 = [collectionCopy resourceURLForRole:@"PAMediaConversionResourceRoleMainResource"];
  v16 = @"PAMediaConversionResourceRoleVideoComplement";
  v8 = 1;
  v9 = [NSArray arrayWithObjects:&v16 count:1];
  v10 = [collectionCopy containsAnyRole:v9];

  v11 = [collectionCopy typeIdentifierForResourceURLWithRole:@"PAMediaConversionResourceRoleMainResource"];
  v12 = [PIPhotoEditHelper imageSourceWithURL:v7 type:v11 useEmbeddedPreview:0];

  if (v10)
  {
    v13 = [collectionCopy resourceURLForRole:@"PAMediaConversionResourceRoleVideoComplement"];
    v14 = [PIPhotoEditHelper videoSourceWithURL:v13];
    v15 = [PIPhotoEditHelper livePhotoSourceWithPhotoSource:v12 videoSource:v14];

    v8 = 3;
    v12 = v15;
  }

  [controllerCopy setSource:v12 mediaType:v8];
}

+ (void)run
{
  v2 = objc_alloc_init(self);
  [v2 run];
}

@end