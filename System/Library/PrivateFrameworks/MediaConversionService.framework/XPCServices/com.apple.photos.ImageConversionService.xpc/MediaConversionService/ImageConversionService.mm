@interface ImageConversionService
+ (id)adjustmentInformationForComposition:(id)a3 error:(id *)a4;
+ (void)configureCompositionController:(id)a3 sourceURLCollection:(id)a4;
+ (void)run;
- (BOOL)convertImageWithOptions:(id)a3 sourceURLCollection:(id)a4 outputURLCollection:(id)a5 outputData:(id *)a6 outputFileType:(id *)a7 outputImageInfo:(id *)a8 error:(id *)a9;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)setupSourceAndDestinationForRequestTracker:(id)a3 imageConversionOptions:(id)a4 error:(id *)a5;
- (BOOL)validatePhotosAdjustmentsCalculationRequestOptions:(id)a3 error:(id *)a4;
- (BOOL)validateRequestIdentifier:(id)a3 replyHandler:(id)a4;
- (BOOL)validateRequestOptions:(id)a3 error:(id *)a4;
- (ImageConversionService)init;
- (id)adjustmentInformationForCropAdjustmentInformation:(id)a3 sourceURLCollection:(id)a4 error:(id *)a5;
- (id)urlCollectionForBookmarkDictionaryKey:(id)a3 inOptions:(id)a4 removeExistingEmptyFiles:(BOOL)a5 error:(id *)a6;
- (int64_t)incrementPendingRequestCountWithRequestIdentifier:(id)a3;
- (void)conversionQueue:(id)a3 processNextEntry:(id)a4;
- (void)conversionQueueDidFinishProcessingEntry:(id)a3;
- (void)convertImageWithOptions:(id)a3 reply:(id)a4;
- (void)decrementPendingRequestCountWithRequestIdentifier:(id)a3;
- (void)enumerateEnvironmentVariablePairsInRequestOptions:(id)a3 block:(id)a4;
- (void)performBeginRequestActionsForUnitTestSupportOptions:(id)a3;
- (void)performEndRequestActionsForUnitTestSupportOptions:(id)a3;
- (void)replyToCompletionHandler:(id)a3 requestIdentifier:(id)a4 resultData:(id)a5 resultImageInformation:(id)a6 signpostID:(unint64_t)a7 error:(id)a8;
- (void)requestStatusWithReply:(id)a3;
- (void)run;
@end

@implementation ImageConversionService

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = +[NSUUID UUID];
  v6 = [v4 _xpcConnection];
  pid = xpc_connection_get_pid(v6);

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
  [v4 setUserInfo:v8];

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
  [v4 setExportedInterface:v9];
  [v4 setExportedObject:self];
  [v4 resume];

  return 1;
}

- (void)conversionQueueDidFinishProcessingEntry:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (!v5->_pendingRequestCount)
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

  objc_sync_exit(v5);
}

- (void)conversionQueue:(id)a3 processNextEntry:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 initialRequestConversionOptions];
  v45 = self;
  [(ImageConversionService *)self performBeginRequestActionsForUnitTestSupportOptions:v8];
  v9 = [v6 anyDestinationURLCollectionForQueueEntry:v7];
  v41 = v6;
  v38 = v9;
  v39 = v8;
  if (!v9)
  {
    v14 = 0;
    v13 = 0;
    goto LABEL_5;
  }

  v10 = v9;
  v11 = [v7 identifier];
  v54 = 0;
  v12 = [PAMediaConversionServiceSharedUtilitiesServiceSide temporaryFilesDirectoryURLForConversionTaskIdentifier:v11 error:&v54];
  v13 = v54;

  if (v12)
  {
    v14 = [PAMediaConversionServiceSharedUtilitiesServiceSide temporaryDestinationURLCollectionForFinalDestinationURLCollection:v10 inParentDirectoryURL:v12];
    [v7 setTemporaryFilesParentDirectoryURL:v12];

LABEL_5:
    v15 = objc_autoreleasePoolPush();
    v16 = [v7 sourceURLCollection];
    v52 = 0;
    v53 = 0;
    v50 = v13;
    v51 = 0;
    v17 = [(ImageConversionService *)v45 convertImageWithOptions:v8 sourceURLCollection:v16 outputURLCollection:v14 outputData:&v53 outputFileType:&v52 outputImageInfo:&v51 error:&v50];
    v18 = v53;
    v19 = v52;
    v20 = v51;
    v21 = v50;

    objc_autoreleasePoolPop(v15);
    v22 = v20;
    v23 = v17;
    v13 = v21;
    v6 = v41;
    goto LABEL_9;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v57 = v7;
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
  v40 = v7;
  v36 = v19;
  v37 = v14;
  [v6 markCompletionAndRetrieveClientRequestsForQueueEntry:v7 resultURLCollection:v14 didConvertSuccessfully:v23 conversionOutputInformation:v13 conversionOutputData:? conversionOutputFileType:? conversionError:?];
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
        v29 = [v27 requestTracker];
        v30 = v29;
        v31 = v23;
        if (v23)
        {
          v32 = [v29 outputInformation];
        }

        else
        {
          v32 = 0;
        }

        v33 = [v27 imageClientReplyHandler];
        v34 = [v27 identifier];
        -[ImageConversionService replyToCompletionHandler:requestIdentifier:resultData:resultImageInformation:signpostID:error:](v45, "replyToCompletionHandler:requestIdentifier:resultData:resultImageInformation:signpostID:error:", v33, v34, v18, v32, [v27 signpostID], v44);

        objc_autoreleasePoolPop(v28);
        v23 = v31;
      }

      v25 = [obj countByEnumeratingWithState:&v46 objects:v55 count:16];
    }

    while (v25);
  }

  [(ImageConversionService *)v45 performEndRequestActionsForUnitTestSupportOptions:v39];
}

- (id)adjustmentInformationForCropAdjustmentInformation:(id)a3 sourceURLCollection:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [v8 objectForKeyedSubscript:@"PAMediaConversionServiceAdjustmentCropKey"];
  v10 = [v8 objectForKeyedSubscript:@"PAMediaConversionServiceAdjustmentOrientationKey"];

  if (v9)
  {
    [v9 rectValue];
    if (!NSIsEmptyRect(v32))
    {
      if (v10)
      {
        v11 = [v10 integerValue];
        v12 = +[PIPhotoEditHelper newComposition];
        v13 = [PIPhotoEditHelper newCompositionControllerWithComposition:v12];

        [objc_opt_class() configureCompositionController:v13 sourceURLCollection:v7];
        v14 = [v13 adjustmentConstants];
        v15 = [v14 PICropAdjustmentKey];
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_100019BEC;
        v25[3] = &unk_10003DA90;
        v26 = v9;
        [v13 modifyAdjustmentWithKey:v15 modificationBlock:v25];

        v16 = [v14 PIOrientationAdjustmentKey];
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_100019C4C;
        v24[3] = &unk_10003DAB0;
        v24[4] = v11;
        [v13 modifyAdjustmentWithKey:v16 modificationBlock:v24];

        v17 = objc_opt_class();
        v18 = [v13 composition];
        v23 = 0;
        v19 = [v17 adjustmentInformationForComposition:v18 error:&v23];
        v20 = v23;

        if (a5 && !v19)
        {
          v27[0] = NSLocalizedDescriptionKey;
          v27[1] = NSUnderlyingErrorKey;
          v28[0] = @"Error creating adjustment from crop adjustment.";
          v28[1] = v20;
          v21 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2];
          *a5 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:2 userInfo:v21];
        }

        goto LABEL_10;
      }
    }
  }

  if (a5)
  {
    v29 = NSLocalizedDescriptionKey;
    v30 = @"Crop adjustment missing PAMediaConversionServiceAdjustmentCropKey and/or PAMediaConversionServiceAdjustmentOrientationKey";
    v13 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:2 userInfo:v13];
    *a5 = v19 = 0;
LABEL_10:

    goto LABEL_12;
  }

  v19 = 0;
LABEL_12:

  return v19;
}

- (id)urlCollectionForBookmarkDictionaryKey:(id)a3 inOptions:(id)a4 removeExistingEmptyFiles:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v9 = a3;
  v10 = a4;
  v11 = [v10 objectForKeyedSubscript:v9];
  if (v11)
  {
    if ([v9 isEqualToString:@"PAMediaConversionServiceSourceBookmarkCollectionKey"])
    {
      v12 = [[PAMediaConversionServiceResourceURLCollectionAccessProvider alloc] initWithOptions:v10];
    }

    else
    {
      v12 = 0;
    }

    v15 = [PAMediaConversionServiceResourceURLCollection collectionForBookmarkDataDictionaryRepresentation:v11 accessProvider:v12 error:a6];
    if (!v15)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v25 = v9;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to create URL collection for key %{public}@", buf, 0xCu);
      }

      v13 = 0;
      v14 = 0;
      goto LABEL_26;
    }

    v13 = v15;
    if ([v15 urlCount])
    {
      if (v7)
      {
        v21 = 0;
        v16 = [v13 removeExistingEmptyFilesWithError:&v21];
        v17 = v21;
        v18 = v17;
        if ((v16 & 1) == 0)
        {
          v14 = 0;
          if (a6 && v17)
          {
            v26[0] = @"PAMediaConversionServiceErrorOffendingItemNameKey";
            v26[1] = NSUnderlyingErrorKey;
            v27[0] = v9;
            v27[1] = v17;
            v19 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];
            *a6 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:4 userInfo:v19];

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
      v25 = v9;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Empty url collection for key %{public}@", buf, 0xCu);
    }

    if (!a6)
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
      v25 = v9;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Nil %{public}@ URL collection bookmark dictionary in options", buf, 0xCu);
    }

    v13 = 0;
    if (!a6)
    {
      goto LABEL_22;
    }
  }

  v22 = @"PAMediaConversionServiceErrorOffendingItemNameKey";
  v23 = v9;
  v12 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:1 userInfo:v12];
  *a6 = v14 = 0;
LABEL_26:

LABEL_27:

  return v14;
}

- (BOOL)convertImageWithOptions:(id)a3 sourceURLCollection:(id)a4 outputURLCollection:(id)a5 outputData:(id *)a6 outputFileType:(id *)a7 outputImageInfo:(id *)a8 error:(id *)a9
{
  v14 = a3;
  v15 = a4;
  v136 = a5;
  v133 = a8;
  if (!a8)
  {
    v119 = +[NSAssertionHandler currentHandler];
    [v119 handleFailureInMethod:a2 object:self file:@"ImageConversionService.m" lineNumber:342 description:{@"Invalid parameter not satisfying: %@", @"outputImageInfo"}];
  }

  if (!v136)
  {
    v16 = [v14 objectForKeyedSubscript:@"PAMediaConversionServiceOptionWantsResultAsDataKey"];
    v17 = [v16 BOOLValue];

    if ((v17 & 1) == 0)
    {
      v18 = +[NSAssertionHandler currentHandler];
      [v18 handleFailureInMethod:a2 object:self file:@"ImageConversionService.m" lineNumber:344 description:{@"Neither destination URL collection nor NSData output option, should have been rejected at request enqueue time"}];
    }
  }

  v19 = [v14 objectForKeyedSubscript:@"PAMediaConversionServiceOptionIsPassthroughConversionKey"];
  v20 = [v19 BOOLValue];

  v21 = [v14 objectForKeyedSubscript:@"PAMediaConversionServiceOptionIsPhotosAdjustmentsCalculationKey"];
  v22 = [v21 BOOLValue];

  v23 = [v14 objectForKeyedSubscript:@"PAMediaConversionServiceOptionAlchemistConversionKey"];
  v24 = [v23 BOOLValue];

  v25 = [v14 objectForKeyedSubscript:@"PAMediaConversionServiceOptionOutputFileTypeKey"];
  if (!v25)
  {
    v25 = [v136 typeIdentifierForResourceURLWithRole:@"PAMediaConversionResourceRoleMainResource"];
    if (!v25)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to determine output file type from destination URL, defaulting to JPEG.", buf, 2u);
      }

      v25 = [UTTypeJPEG identifier];
    }
  }

  v26 = v25;
  v134 = v15;
  v141 = CGSizeZero;
  v27 = +[NSMutableDictionary dictionary];
  v135 = [v14 objectForKeyedSubscript:@"PAMediaConversionServiceOptionMetadataPolicyKey"];
  if (v135)
  {
    v28 = 1;
  }

  else
  {
    v28 = v22;
  }

  if ((v28 & 1) == 0)
  {
    v120 = +[NSAssertionHandler currentHandler];
    [v120 handleFailureInMethod:a2 object:self file:@"ImageConversionService.m" lineNumber:370 description:@"Missing metadata policy"];
  }

  v129 = a2;
  v130 = self;
  v29 = [v14 objectForKeyedSubscript:@"PAMediaConversionServiceOptionRequiresBlastDoorAccessKey"];
  if ([v29 BOOLValue])
  {
    v30 = +[NSUserDefaults standardUserDefaults];
    v31 = [v30 BOOLForKey:@"PADisablePhotosBlastDoorProcessing"];
  }

  else
  {
    v31 = 1;
  }

  if ((v20 & v31) != 1)
  {
    v32 = v134;
    if (v22)
    {
      v40 = [v134 resourceURLForRole:@"PAMediaConversionResourceRoleMainResource"];
      v41 = [v14 objectForKeyedSubscript:@"PAMediaConversionServiceInputFileTypeKey"];
      v42 = [PFUniformTypeUtilities typeWithIdentifier:v41];

      v43 = [v14 objectForKeyedSubscript:@"PAMediaConversionServiceOptionOrientationKey"];
      v44 = [v43 unsignedIntValue];

      v140 = 0;
      v45 = [(ImageConversionService *)v130 performPhotosPortraitAdjustmentsCalculationForURL:v40 contentType:v42 orientation:v44 error:&v140];
      v36 = v140;
      if (v45)
      {
        [v27 setObject:v45 forKeyedSubscript:@"PAMediaConversionServiceCalculatedAdjustmentInformationKey"];

        v35 = 0;
        v38 = 1;
        v46 = a9;
        v32 = v134;
LABEL_72:
        v75 = v27;
        *v133 = v27;
        goto LABEL_73;
      }

      v46 = a9;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v145 = v40;
        v146 = 2112;
        v147 = v36;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to calculate photos adjustments information for %@: %@", buf, 0x16u);
      }

      v35 = 0;
      v38 = 0;
      v32 = v134;
      goto LABEL_73;
    }

    if (v24)
    {
      v47 = [v134 resourceURLForRole:@"PAMediaConversionResourceRoleMainResource"];
      v48 = [v136 resourceURLForRole:@"PAMediaConversionResourceRoleMainResource"];
      v49 = [v14 objectForKeyedSubscript:@"PAMediaConversionServiceOptionColorSpaceKey"];

      if (v49)
      {
        v49 = [v14 objectForKeyedSubscript:@"PAMediaConversionServiceOptionColorSpaceKey"];
        v50 = [v49 integerValue];

        LODWORD(v49) = v50 == 0;
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
        v46 = a9;
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

          v35 = 0;
          v39 = 0;
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
        v46 = a9;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Platform does not support Alchemist", buf, 2u);
        }
      }

      v35 = 0;
      v36 = 0;
      v38 = 0;
      goto LABEL_73;
    }

    v52 = [PAMediaConversionServiceImageConversionJob alloc];
    v53 = [v14 objectForKeyedSubscript:@"PAMediaConversionServiceJobIdentifierKey"];
    v54 = [(PAMediaConversionServiceImageConversionJob *)v52 initWithRequestIdentifier:v53 sourceResourceURLCollection:v134 outputFileType:v26];

    v55 = v54;
    [(PAMediaConversionServiceImageConversionJob *)v54 setDestinationResourceURLCollection:v136];
    [(PAMediaConversionServiceImageConversionJob *)v54 setMetadataPolicy:v135];
    v56 = [v14 objectForKeyedSubscript:@"PAMediaConversionServiceOptionOrientationKey"];

    if (v56)
    {
      v57 = [v14 objectForKeyedSubscript:@"PAMediaConversionServiceOptionOrientationKey"];
      v58 = [v57 integerValue];
    }

    else
    {
      v60 = [v14 objectForKeyedSubscript:@"PAMediaConversionServiceOptionRotationAngleDegreesKey"];

      if (!v60)
      {
        [(PAMediaConversionServiceImageConversionJob *)v55 setOrientation:0];
        goto LABEL_53;
      }

      v57 = [v14 objectForKeyedSubscript:@"PAMediaConversionServiceOptionRotationAngleDegreesKey"];
      [v57 integerValue];
      v58 = IPAOrientationFromClockwiseRotation();
    }

    [(PAMediaConversionServiceImageConversionJob *)v55 setOrientation:v58];

LABEL_53:
    v61 = [v14 objectForKeyedSubscript:@"PAMediaConversionServiceOptionColorSpaceKey"];

    if (v61)
    {
      [v14 objectForKeyedSubscript:@"PAMediaConversionServiceOptionColorSpaceKey"];
      v63 = v62 = v55;
      v61 = [v63 integerValue];

      v55 = v62;
      if (v61 >= 3)
      {
        if (a9)
        {
          v142 = NSLocalizedDescriptionKey;
          v143 = @"Illegal ColorSpace option";
          v67 = [NSDictionary dictionaryWithObjects:&v143 forKeys:&v142 count:1];
          *a9 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:2 userInfo:v67];

          v55 = v62;
        }

        v68 = 0;
        v35 = 0;
        goto LABEL_79;
      }
    }

    [(PAMediaConversionServiceImageConversionJob *)v55 setColorspaceMode:v61];
    v64 = [v14 objectForKeyedSubscript:@"PAMediaConversionServiceOptionScaleFactorKey"];
    v65 = [v14 objectForKeyedSubscript:@"PAMediaConversionServiceOptionMaximumPixelCountKey"];
    v66 = [v14 objectForKeyedSubscript:@"PAMediaConversionServiceOptionMaximumLongSideLengthKey"];
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
        [v127 handleFailureInMethod:v129 object:v130 file:@"ImageConversionService.m" lineNumber:462 description:@"Missing scale parameters"];
        LODWORD(v92) = 0;
        goto LABEL_90;
      }

      -[PAMediaConversionServiceImageConversionJob setRequestedMaximumLongSideLength:](v55, "setRequestedMaximumLongSideLength:", [v66 integerValue]);
    }

    v88 = [v14 objectForKeyedSubscript:@"PAMediaConversionServiceOptionApplyOrientationTransformKey"];
    -[PAMediaConversionServiceImageConversionJob setApplySourceOrientationTransform:](v55, "setApplySourceOrientationTransform:", [v88 BOOLValue]);

    v89 = [v14 objectForKeyedSubscript:@"PAMediaConversionServiceOptionFormatConversionOnlyKey"];
    -[PAMediaConversionServiceImageConversionJob setFormatConversionOnly:](v55, "setFormatConversionOnly:", [v89 BOOLValue]);

    v90 = [v14 objectForKeyedSubscript:@"PAMediaConversionServiceOptionCropAdjustmentInformationKey"];
    v127 = v90;
    if (v90)
    {
      v91 = [(ImageConversionService *)v130 adjustmentInformationForCropAdjustmentInformation:v90 sourceURLCollection:v134 error:a9];
      [(PAMediaConversionServiceImageConversionJob *)v55 setAdjustmentInformation:v91];

      v92 = [(PAMediaConversionServiceImageConversionJob *)v55 adjustmentInformation];

      if (!v92)
      {
LABEL_90:
        v39 = 0;
        v93 = 0;
        v35 = 0;
LABEL_118:

        if (!v92)
        {
          v38 = 0;
          v32 = v134;
          v36 = v39;
          goto LABEL_80;
        }

        v36 = v39;
        if (!v93)
        {
          v38 = 0;
          v46 = a9;
          v32 = v134;
          goto LABEL_73;
        }

        if (!v35)
        {
          v38 = 1;
          goto LABEL_27;
        }

        v32 = v134;
LABEL_22:
        if (!v136)
        {
          if (a6)
          {
            v59 = v35;
            *a6 = v35;
          }

          else
          {
            v121 = +[NSAssertionHandler currentHandler];
            [v121 handleFailureInMethod:v129 object:v130 file:@"ImageConversionService.m" lineNumber:522 description:{@"Invalid request output configuration, missing both destination URL collection and data pointer"}];
          }

          v38 = 1;
          v39 = v36;
          goto LABEL_69;
        }

        v37 = [v136 resourceURLForRole:@"PAMediaConversionResourceRoleMainResource"];
        v137 = v36;
        v38 = [v35 writeToURL:v37 options:0 error:&v137];
        v39 = v137;

        if ((v38 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v145 = v39;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Error writing result image data to URL passed in destination URL collection: %{public}@", buf, 0xCu);
        }

LABEL_27:
        v32 = v134;
LABEL_69:
        v72 = [NSNumber numberWithDouble:v141.width];
        [v27 setObject:v72 forKeyedSubscript:@"PAMediaConversionServicePixelWidthKey"];

        v73 = [NSNumber numberWithDouble:v141.height];
        [v27 setObject:v73 forKeyedSubscript:@"PAMediaConversionServicePixelHeightKey"];

        if (a7)
        {
          v74 = v26;
          *a7 = v26;
        }

        v46 = a9;
        v36 = v39;
        goto LABEL_72;
      }
    }

    else
    {
      v94 = [v14 objectForKeyedSubscript:@"PAMediaConversionServiceOptionAdjustmentInformationKey"];
      [(PAMediaConversionServiceImageConversionJob *)v55 setAdjustmentInformation:v94];
    }

    v95 = [v14 objectForKeyedSubscript:@"PAMediaConversionServiceOptionEnableOutputCorruptionDetectionHeuristicsKey"];
    -[PAMediaConversionServiceImageConversionJob setShouldCheckForOutputCorruption:](v55, "setShouldCheckForOutputCorruption:", [v95 BOOLValue]);

    v96 = [v14 objectForKeyedSubscript:@"PAMediaConversionServiceOptionUseEmbeddedImageAsSourceKey"];
    -[PAMediaConversionServiceImageConversionJob setShouldUseEmbeddedImageAsSource:](v55, "setShouldUseEmbeddedImageAsSource:", [v96 BOOLValue]);

    [PAMediaConversionServiceSharedUtilitiesServiceSide executeConversionJob:v55];
    if (![(PAMediaConversionServiceImageConversionJob *)v55 status])
    {
      v122 = +[NSAssertionHandler currentHandler];
      [v122 handleFailureInMethod:v129 object:v130 file:@"ImageConversionService.m" lineNumber:484 description:@"Unexpected unknown image conversion job state after execution"];
    }

    v85 = [(PAMediaConversionServiceImageConversionJob *)v55 status]== 1;
    v93 = v85;
    if (!v85)
    {
      v98 = [(PAMediaConversionServiceImageConversionJob *)v55 error];
      if (v98)
      {
        v39 = v98;
        v93 = 0;
        v35 = 0;
LABEL_117:
        LODWORD(v92) = 1;
        goto LABEL_118;
      }

      v126 = v65;
      v117 = [(PAMediaConversionServiceImageConversionJob *)v55 sourceResourceURLCollection];
      v104 = v55;
      v118 = [v117 isBlastDoorAccessRequired];

      if (v118)
      {
        v101 = [(PAMediaConversionServiceImageConversionJob *)v104 sourceResourceURLCollection];
        v39 = [v101 blastDoorError];
        v35 = 0;
        v55 = v104;
        v65 = v126;
        goto LABEL_116;
      }

      v39 = 0;
      v93 = 0;
      v35 = 0;
      LODWORD(v92) = 1;
LABEL_111:
      v55 = v104;
      v65 = v126;
      goto LABEL_118;
    }

    v97 = [(PAMediaConversionServiceImageConversionJob *)v55 destinationData];

    if (v97)
    {
      v35 = [(PAMediaConversionServiceImageConversionJob *)v55 destinationData];
    }

    else
    {
      v35 = 0;
    }

    [(PAMediaConversionServiceImageConversionJob *)v55 outputImageSize];
    v141.width = v99;
    v141.height = v100;
    v101 = [(PAMediaConversionServiceImageConversionJob *)v55 sourceResourceURLCollection];
    if ([v101 isBlastDoorAccessRequired])
    {
      v126 = v65;
      [(PAMediaConversionServiceImageConversionJob *)v55 sourceResourceURLCollection];
      v103 = v102 = v101;
      [v103 blastDoorMainSourceProperties];
      v105 = v104 = v55;

      if (!v105)
      {
        goto LABEL_109;
      }

      v106 = [(PAMediaConversionServiceImageConversionJob *)v104 sourceResourceURLCollection];
      v107 = [v106 blastDoorMainSourceProperties];
      [v27 setObject:v107 forKeyedSubscript:@"PAMediaConversionServiceBlastDoorSourcePropertiesKey"];

      v108 = [(PAMediaConversionServiceImageConversionJob *)v104 sourceResourceURLCollection];
      v109 = [v108 blastDoorVideoComplementProperties];
      [v27 setObject:v109 forKeyedSubscript:@"PAMediaConversionServiceBlastDoorVideoComplementSourcePropertiesKey"];

      v110 = [(PAMediaConversionServiceImageConversionJob *)v104 sourceResourceURLCollection];
      v111 = [v110 blastDoorSourceURL];

      if (!v111)
      {
LABEL_109:
        v39 = 0;
        LODWORD(v92) = 1;
        v93 = 1;
        goto LABEL_111;
      }

      v124 = v64;
      v125 = v35;
      v112 = +[NSFileManager defaultManager];
      v113 = v104;
      v114 = [(PAMediaConversionServiceImageConversionJob *)v104 sourceResourceURLCollection];
      v115 = [v114 blastDoorSourceURL];
      v138 = 0;
      v116 = [v112 removeItemAtURL:v115 error:&v138];
      v123 = v138;

      if (v116)
      {
        v39 = 0;
        v55 = v104;
        v64 = v124;
        v35 = v125;
        v65 = v126;
      }

      else
      {
        v65 = v126;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v101 = v123;
          v145 = v123;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[BlastDoor] Failed to remove temporary blast door source file: %{public}@", buf, 0xCu);
          v39 = 0;
          v55 = v113;
          v64 = v124;
          v35 = v125;
          goto LABEL_116;
        }

        v39 = 0;
        v55 = v113;
        v64 = v124;
        v35 = v125;
      }

      v101 = v123;
    }

    else
    {
      v39 = 0;
    }

LABEL_116:

    goto LABEL_117;
  }

  v32 = v134;
  v33 = [v134 resourceURLForRole:@"PAMediaConversionResourceRoleMainResource"];
  v34 = [PAMediaConversionServiceImagingUtilities imageDataForPassthroughConversionForSourceURL:v33 metadataPolicy:v135 outResultImageSize:&v141];

  v35 = 0;
  if (v34)
  {
    v36 = 0;
    v35 = v34;
    goto LABEL_22;
  }

  v38 = 0;
  v36 = 0;
  v46 = a9;
LABEL_73:
  if (v46 && (v38 & 1) == 0)
  {
    +[NSMutableDictionary dictionary];
    v76 = v14;
    v78 = v77 = v35;
    [v32 logMessageSummary];
    v79 = v26;
    v81 = v80 = v46;
    [(PAMediaConversionServiceImageConversionJob *)v78 setObject:v81 forKeyedSubscript:@"PAMediaConversionServiceErrorSourceResourceSummaryKey"];

    v82 = [v36 description];
    [(PAMediaConversionServiceImageConversionJob *)v78 setObject:v82 forKeyedSubscript:@"PAMediaConversionServiceErrorUnderlyingErrorDescriptionKey"];

    v68 = v36;
    v83 = [v36 domain];
    v84 = [v83 isEqualToString:@"BlastDoor.Explosion"];

    v85 = v84 == 0;
    v55 = v78;
    v35 = v77;
    v14 = v76;
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

- (void)enumerateEnvironmentVariablePairsInRequestOptions:(id)a3 block:(id)a4
{
  v5 = a4;
  obj = [a3 objectForKeyedSubscript:@"PAMediaConversionServiceOptionUnitTestSupportExtraEnvironmentVariablesKey"];
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

            v5[2](v5, v12, v13);
          }
        }

        v7 = [obj countByEnumeratingWithState:&v18 objects:v28 count:16];
      }

      while (v7);
    }
  }
}

- (void)performEndRequestActionsForUnitTestSupportOptions:(id)a3
{
  v4 = a3;
  [(ImageConversionService *)self enumerateEnvironmentVariablePairsInRequestOptions:v4 block:&stru_10003DA68];
  v5 = [v4 objectForKeyedSubscript:@"PAMediaConversionServiceOptionUnitTestSupportServiceShouldExitAfterRequestKey"];

  LODWORD(v4) = [v5 BOOLValue];
  if (v4)
  {

    _xpc_transaction_exit_clean();
  }
}

- (void)performBeginRequestActionsForUnitTestSupportOptions:(id)a3
{
  v6 = a3;
  v4 = [v6 objectForKeyedSubscript:@"PAMediaConversionServiceOptionUnitTestSupportServiceShouldExitDuringRequestKey"];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v8 = @"PAMediaConversionServiceOptionUnitTestSupportServiceShouldExitDuringRequestKey";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Terminating process because %@ request option is set", buf, 0xCu);
    }

    exit(1);
  }

  [(ImageConversionService *)self enumerateEnvironmentVariablePairsInRequestOptions:v6 block:&stru_10003DA48];
}

- (void)decrementPendingRequestCountWithRequestIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = v5->_pendingRequestCount - 1;
  v5->_pendingRequestCount = v6;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v7 = 138543618;
    v8 = v4;
    v9 = 2048;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Sent reply for image conversion request %{public}@, pending request count now %ld", &v7, 0x16u);
  }

  objc_sync_exit(v5);
}

- (void)replyToCompletionHandler:(id)a3 requestIdentifier:(id)a4 resultData:(id)a5 resultImageInformation:(id)a6 signpostID:(unint64_t)a7 error:(id)a8
{
  v14 = *(a3 + 2);
  v15 = a4;
  v14(a3, a5, a6, a8);
  v16 = &_os_log_default;
  if (a7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(&_os_log_default))
  {
    *v17 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, &_os_log_default, OS_SIGNPOST_INTERVAL_END, a7, "com.apple.photos.mediaconversion.service", "", v17, 2u);
  }

  [(ImageConversionService *)self decrementPendingRequestCountWithRequestIdentifier:v15];
}

- (int64_t)incrementPendingRequestCountWithRequestIdentifier:(id)a3
{
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  pendingRequestCount = v6->_pendingRequestCount;
  if (pendingRequestCount < 0)
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:v6 file:@"ImageConversionService.m" lineNumber:262 description:@"Pending request count underflow"];

    pendingRequestCount = v6->_pendingRequestCount;
  }

  v8 = pendingRequestCount + 1;
  v6->_pendingRequestCount = pendingRequestCount + 1;
  objc_sync_exit(v6);

  return v8;
}

- (BOOL)validatePhotosAdjustmentsCalculationRequestOptions:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"PAMediaConversionServiceInputFileTypeKey"];
  v7 = [PFUniformTypeUtilities typeWithIdentifier:v6];
  if (v7)
  {
    v8 = [v5 objectForKeyedSubscript:@"PAMediaConversionServiceOptionOrientationKey"];
    v9 = [v8 unsignedIntValue] - 1;
    v10 = v9 < 8;
    if (a4 && v9 >= 8)
    {
      v13 = @"PAMediaConversionServiceErrorOffendingItemNameKey";
      v14 = @"PAMediaConversionServiceOptionOrientationKey";
      v11 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      *a4 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:1 userInfo:v11];

      v10 = 0;
    }
  }

  else
  {
    if (!a4)
    {
      v10 = 0;
      goto LABEL_8;
    }

    v15 = @"PAMediaConversionServiceErrorOffendingItemNameKey";
    v16 = @"PAMediaConversionServiceInputFileTypeKey";
    v8 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:1 userInfo:v8];
    *a4 = v10 = 0;
  }

LABEL_8:
  return v10;
}

- (BOOL)validateRequestOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"PAMediaConversionServiceOptionIsPhotosAdjustmentsCalculationKey"];
  v8 = [v7 BOOLValue];

  if (v8)
  {
    v9 = [(ImageConversionService *)self validatePhotosAdjustmentsCalculationRequestOptions:v6 error:a4];
    goto LABEL_17;
  }

  v10 = [v6 objectForKeyedSubscript:@"PAMediaConversionServiceOptionApplyOrientationTransformKey"];
  v11 = [v10 BOOLValue];

  v12 = [v6 objectForKeyedSubscript:@"PAMediaConversionServiceOptionEnableOutputCorruptionDetectionHeuristicsKey"];
  v13 = [v12 BOOLValue];

  if (!v13 || !v11)
  {
    v16 = [v6 objectForKeyedSubscript:@"PAMediaConversionServiceOptionMetadataPolicyKey"];
    if (v16)
    {
      v17 = [v6 allKeys];
      v18 = [NSMutableSet setWithArray:v17];

      v27[0] = @"PAMediaConversionServiceOptionScaleFactorKey";
      v27[1] = @"PAMediaConversionServiceOptionMaximumPixelCountKey";
      v27[2] = @"PAMediaConversionServiceOptionMaximumLongSideLengthKey";
      v19 = [NSArray arrayWithObjects:v27 count:3];
      v20 = [NSSet setWithArray:v19];

      [v18 intersectSet:v20];
      v21 = [v18 count];
      v9 = v21 == 1;
      if (a4 && v21 != 1)
      {
        v25 = NSDebugDescriptionErrorKey;
        v22 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Expected exactly one scaling request option but received %lu: %@", [v18 count], v18);
        v26 = v22;
        v23 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
        *a4 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:6 userInfo:v23];
      }
    }

    else
    {
      if (!a4)
      {
        v9 = 0;
        goto LABEL_16;
      }

      v28 = @"PAMediaConversionServiceErrorOffendingItemNameKey";
      v29 = @"PAMediaConversionServiceOptionMetadataPolicyKey";
      v18 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:1 userInfo:v18];
      *a4 = v9 = 0;
    }

LABEL_16:
    goto LABEL_17;
  }

  if (a4)
  {
    v30 = NSDebugDescriptionErrorKey;
    v14 = [NSString stringWithFormat:@"Invalid combination of %@ and %@ request options", @"PAMediaConversionServiceOptionApplyOrientationTransformKey", @"PAMediaConversionServiceOptionEnableOutputCorruptionDetectionHeuristicsKey"];
    v31 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    *a4 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:6 userInfo:v15];
  }

  v9 = 0;
LABEL_17:

  return v9;
}

- (BOOL)setupSourceAndDestinationForRequestTracker:(id)a3 imageConversionOptions:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(ImageConversionService *)self urlCollectionForBookmarkDictionaryKey:@"PAMediaConversionServiceSourceBookmarkCollectionKey" inOptions:v9 removeExistingEmptyFiles:0 error:a5];
  if (!v10)
  {
    goto LABEL_11;
  }

  [v8 setSourceURLCollection:v10];
  v11 = [v9 objectForKeyedSubscript:@"PAMediaConversionServiceDestinationBookmarkCollectionKey"];

  if (!v11)
  {
    v14 = [v9 objectForKeyedSubscript:@"PAMediaConversionServiceOptionWantsResultAsDataKey"];
    v15 = [v14 BOOLValue];

    if (v15)
    {
      goto LABEL_6;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Neither destination URL collection nor wants-data option specified", v18, 2u);
      if (!a5)
      {
        goto LABEL_11;
      }
    }

    else if (!a5)
    {
      goto LABEL_11;
    }

    [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:4 userInfo:0];
    *a5 = v16 = 0;
    goto LABEL_12;
  }

  v12 = [(ImageConversionService *)self urlCollectionForBookmarkDictionaryKey:@"PAMediaConversionServiceDestinationBookmarkCollectionKey" inOptions:v9 removeExistingEmptyFiles:1 error:a5];
  if (!v12)
  {
LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }

  v13 = v12;
  [v8 setDestinationURLCollection:v12];

LABEL_6:
  v16 = 1;
LABEL_12:

  return v16;
}

- (void)requestStatusWithReply:(id)a3
{
  v7 = @"PAMediaConversionServiceProcessIdentifierKey";
  v4 = a3;
  v5 = [NSNumber numberWithInt:getpid()];
  v8 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  (*(a3 + 2))(v4, v6, 0);
}

- (void)convertImageWithOptions:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"PAMediaConversionServiceJobIdentifierKey"];
  if ([(ImageConversionService *)self validateRequestIdentifier:v8 replyHandler:v7])
  {
    v9 = objc_opt_new();
    [v9 setSignpostID:{os_signpost_id_make_with_pointer(&_os_log_default, v8)}];
    v10 = [v9 signpostID];
    if ((v10 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v11 = v10;
      if (os_signpost_enabled(&_os_log_default))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, &_os_log_default, OS_SIGNPOST_INTERVAL_BEGIN, v11, "com.apple.photos.mediaconversion.service", "", buf, 2u);
      }
    }

    v34 = [(ImageConversionService *)self incrementPendingRequestCountWithRequestIdentifier:v8];
    v37 = [v6 objectForKeyedSubscript:@"PAMediaConversionServiceOptionRequestReasonKey"];
    v38 = +[NSXPCConnection currentConnection];
    v36 = [v38 userInfo];
    v39 = [v36 objectForKeyedSubscript:@"PAMCS_CONNECTION_USER_INFO_CONNECTION_IDENTIFIER_KEY"];
    context = objc_autoreleasePoolPush();
    v12 = [(MediaConversionQueue *)self->_requestQueue nextRequestNumber];
    v13 = [[MediaConversionRequestTracker alloc] initWithRequestOptions:v6 requestNumber:v12];
    v14 = [(MediaConversionQueue *)self->_requestQueue queueEntryWithConversionOptions:v6];
    [v14 setTaskTypeSupportsDeduplication:1];
    v42 = 0;
    v15 = [(ImageConversionService *)self validateRequestOptions:v6 error:&v42];
    v16 = v42;
    v17 = v16;
    if (v15)
    {
      v41 = v16;
      v18 = [(ImageConversionService *)self setupSourceAndDestinationForRequestTracker:v13 imageConversionOptions:v6 error:&v41];
      v33 = v41;

      if ((v18 & 1) == 0)
      {
        v25 = v37;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v28 = [(MediaConversionRequestTracker *)v13 clientProcessIdentifier];
          *buf = 138543618;
          v44 = v14;
          v45 = 1024;
          LODWORD(v46) = v28;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Rejecting conversion request (image) %{public}@ from [%d] because source or destination URLs are invalid", buf, 0x12u);
        }

        v17 = v33;
        [(MediaConversionRequestTracker *)v13 setError:v33];
        [(MediaConversionRequestTracker *)v13 markAsCompletedWithInitialRequestIdentifier:0];
        v21 = [(MediaConversionRequestTracker *)v13 requestIdentifier];
        -[ImageConversionService replyToCompletionHandler:requestIdentifier:resultData:resultImageInformation:signpostID:error:](self, "replyToCompletionHandler:requestIdentifier:resultData:resultImageInformation:signpostID:error:", v7, v21, 0, 0, [v9 signpostID], v33);
        goto LABEL_23;
      }

      v19 = [(MediaConversionRequestTracker *)v13 sourceURLCollection];
      [v14 setSourceURLCollection:v19];

      [v9 setImageClientReplyHandler:v7];
      [v9 setRequestTracker:v13];
      [v9 setConnection:v38];
      [v9 setConnectionIdentifier:v39];
      requestQueue = self->_requestQueue;
      v40 = 0;
      [(MediaConversionQueue *)requestQueue enqueueEntry:v14 clientRequest:v9 isDuplicateOfOriginalQueueEntry:&v40];
      v21 = v40;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        if (v21)
        {
          v22 = v21;
        }

        else
        {
          v22 = v14;
        }

        v32 = v22;
        v23 = [(MediaConversionRequestTracker *)v13 effectivePriority];
        if (v23 > 4)
        {
          v24 = 0;
        }

        else
        {
          v24 = off_10003DAF8[v23];
        }

        v31 = v24;
        v29 = [(MediaConversionRequestTracker *)v13 requestOptionsSignatureString];
        v30 = [(MediaConversionRequestTracker *)v13 sourceURLFilenameOnlySummary];
        v26 = [v32 identifier];
        *buf = 134220291;
        v44 = v12;
        v45 = 2114;
        v46 = v8;
        v47 = 2112;
        v48 = v31;
        v49 = 2114;
        v25 = v37;
        v50 = v37;
        v51 = 2114;
        v52 = v29;
        v53 = 2113;
        v54 = v30;
        v55 = 2114;
        v56 = v26;
        v27 = v26;
        v57 = 1024;
        v58 = v21 != 0;
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

      v21 = [(MediaConversionRequestTracker *)v13 requestIdentifier];
      -[ImageConversionService replyToCompletionHandler:requestIdentifier:resultData:resultImageInformation:signpostID:error:](self, "replyToCompletionHandler:requestIdentifier:resultData:resultImageInformation:signpostID:error:", v7, v21, 0, 0, [v9 signpostID], v17);
    }

    v25 = v37;
LABEL_23:

    objc_autoreleasePoolPop(context);
  }
}

- (BOOL)validateRequestIdentifier:(id)a3 replyHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = v7;
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

    (*(v8 + 2))(v8, 0, 0, v12);
  }

  return v10 != 0x7FFFFFFFFFFFFFFFLL;
}

- (void)run
{
  v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.photos.ImageConversionService"];
  [(ImageConversionService *)self setListener:v3];

  v4 = [(ImageConversionService *)self listener];
  [v4 setDelegate:self];

  v5 = [(ImageConversionService *)self listener];
  [v5 resume];

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

+ (id)adjustmentInformationForComposition:(id)a3 error:(id *)a4
{
  v4 = [PICompositionSerializer adjustmentInformationForComposition:a3 error:a4];
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

+ (void)configureCompositionController:(id)a3 sourceURLCollection:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 resourceURLForRole:@"PAMediaConversionResourceRoleMainResource"];
  v16 = @"PAMediaConversionResourceRoleVideoComplement";
  v8 = 1;
  v9 = [NSArray arrayWithObjects:&v16 count:1];
  v10 = [v5 containsAnyRole:v9];

  v11 = [v5 typeIdentifierForResourceURLWithRole:@"PAMediaConversionResourceRoleMainResource"];
  v12 = [PIPhotoEditHelper imageSourceWithURL:v7 type:v11 useEmbeddedPreview:0];

  if (v10)
  {
    v13 = [v5 resourceURLForRole:@"PAMediaConversionResourceRoleVideoComplement"];
    v14 = [PIPhotoEditHelper videoSourceWithURL:v13];
    v15 = [PIPhotoEditHelper livePhotoSourceWithPhotoSource:v12 videoSource:v14];

    v8 = 3;
    v12 = v15;
  }

  [v6 setSource:v12 mediaType:v8];
}

+ (void)run
{
  v2 = objc_alloc_init(a1);
  [v2 run];
}

@end