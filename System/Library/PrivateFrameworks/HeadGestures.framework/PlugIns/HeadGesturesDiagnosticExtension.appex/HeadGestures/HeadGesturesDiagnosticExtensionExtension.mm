@interface HeadGesturesDiagnosticExtensionExtension
- (BOOL)createZipArchiveForURL:(id)l destinationURL:(id)rL;
- (id)attachmentList;
- (id)attachmentsForParameters:(id)parameters;
- (id)generateTimeStamp;
@end

@implementation HeadGesturesDiagnosticExtensionExtension

- (BOOL)createZipArchiveForURL:(id)l destinationURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  if (BOMCopierNew())
  {
    v7 = [[NSOutputStream alloc] initWithURL:rLCopy append:1];
    [v7 open];
    v22[0] = @"createPKZip";
    v22[1] = @"outputStream";
    v23[0] = &__kCFBooleanTrue;
    v23[1] = v7;
    v8 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
    v9 = _HGObjCLoggingFacility(kHGObjCLogCategoryDE);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      absoluteString = [lCopy absoluteString];
      uTF8String = [absoluteString UTF8String];
      absoluteString2 = [rLCopy absoluteString];
      v18 = 136315394;
      v19 = uTF8String;
      v20 = 2080;
      uTF8String2 = [absoluteString2 UTF8String];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "zipping %s to %s", &v18, 0x16u);
    }

    path = [lCopy path];
    [path fileSystemRepresentation];
    v14 = BOMCopierCopyWithOptions();
    v15 = v14 == 0;

    if (v14)
    {
      v16 = _HGObjCLoggingFacility(kHGObjCLogCategoryDE);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10000170C(v16);
      }
    }

    else
    {
      BOMCopierFree();
    }
  }

  else
  {
    v8 = _HGObjCLoggingFacility(kHGObjCLogCategoryDE);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100001750(v8);
    }

    v15 = 0;
  }

  return v15;
}

- (id)generateTimeStamp
{
  v2 = objc_alloc_init(NSDateFormatter);
  [v2 setDateFormat:@"yyyyMMdd-HHmmss"];
  v3 = objc_alloc_init(NSDate);
  v4 = [v2 stringFromDate:v3];

  return v4;
}

- (id)attachmentList
{
  v3 = objc_opt_new();
  v4 = +[NSFileManager defaultManager];
  generateTimeStamp = [(HeadGesturesDiagnosticExtensionExtension *)self generateTimeStamp];
  if (![v4 fileExistsAtPath:@"/var/tmp/HeadGestures/RawData"])
  {
    v51 = 0;
    goto LABEL_12;
  }

  v6 = generateTimeStamp;
  v7 = [NSString stringWithFormat:@"HeadGestures_RawDataArchive_%@.zip", generateTimeStamp];
  v8 = [@"/var/tmp/HeadGestures" stringByAppendingPathComponent:v7];
  v9 = [NSURL fileURLWithPath:@"/var/tmp/HeadGestures/RawData"];
  v10 = [NSURL fileURLWithPath:v8];
  v11 = [(HeadGesturesDiagnosticExtensionExtension *)self createZipArchiveForURL:v9 destinationURL:v10];

  if (v11)
  {
    v63 = 0;
    [v4 removeItemAtPath:@"/var/tmp/HeadGestures/RawData" error:&v63];
    v51 = v63;
    if (!v51)
    {
      v51 = 0;
      generateTimeStamp = v6;
      goto LABEL_11;
    }

    v12 = _HGObjCLoggingFacility(kHGObjCLogCategoryDE);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10000181C(v51, v7);
    }
  }

  else
  {
    v12 = _HGObjCLoggingFacility(kHGObjCLogCategoryDE);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100001794(v7);
    }

    v51 = 0;
  }

  generateTimeStamp = v6;

LABEL_11:
LABEL_12:
  v49 = generateTimeStamp;
  v50 = v4;
  if ([v4 fileExistsAtPath:@"/var/mobile/tmp/HeadGestures/RawData"])
  {
    v13 = [NSString stringWithFormat:@"HeadGestures_RawDataArchive_mobile_%@.zip", generateTimeStamp, generateTimeStamp];
    v14 = [@"/var/mobile/tmp/HeadGestures/" stringByAppendingPathComponent:v13];
    v15 = [NSURL fileURLWithPath:@"/var/mobile/tmp/HeadGestures/RawData"];
    v16 = [NSURL fileURLWithPath:v14];
    v17 = [(HeadGesturesDiagnosticExtensionExtension *)self createZipArchiveForURL:v15 destinationURL:v16];

    if (v17)
    {
      v18 = v51;
      v62 = v51;
      [v50 removeItemAtPath:@"/var/mobile/tmp/HeadGestures/RawData" error:&v62];
      v19 = v62;
    }

    else
    {
      v18 = _HGObjCLoggingFacility(kHGObjCLogCategoryDE);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_100001794(v13);
      }

      v19 = v51;
    }

    if (v19)
    {
      v20 = _HGObjCLoggingFacility(kHGObjCLogCategoryDE);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1000018CC(v19, v13);
      }
    }

    v51 = v19;
  }

  v21 = [NSRegularExpression regularExpressionWithPattern:@"HeadGestures_RawDataArchive*" options:1 error:0];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v69[0] = @"/var/tmp/HeadGestures";
  v69[1] = @"/var/mobile/tmp/HeadGestures/";
  v22 = [NSArray arrayWithObjects:v69 count:2];
  v23 = [v22 countByEnumeratingWithState:&v58 objects:v70 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v59;
    do
    {
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v59 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [NSURL fileURLWithPath:*(*(&v58 + 1) + 8 * i)];
        v28 = [(HeadGesturesDiagnosticExtensionExtension *)self filesInDir:v27 matchingPattern:v21 excludingPattern:0];

        [v3 addObjectsFromArray:v28];
      }

      v24 = [v22 countByEnumeratingWithState:&v58 objects:v70 count:16];
    }

    while (v24);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v29 = v3;
  v30 = [v29 countByEnumeratingWithState:&v54 objects:v68 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v55;
    v33 = &BOMCopierCopyWithOptions_ptr;
    v34 = &__kCFBooleanTrue;
    v35 = &kHGObjCLogCategoryDE;
    v52 = *v55;
    do
    {
      v36 = 0;
      v53 = v31;
      do
      {
        if (*v55 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v37 = *(*(&v54 + 1) + 8 * v36);
        v38 = v33[37];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v39 = v37;
          [v39 setDeleteOnAttach:v34];
          v40 = _HGObjCLoggingFacility(*v35);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            [v39 displayName];
            v42 = v41 = v29;
            [v39 filesize];
            v43 = v35;
            v44 = v21;
            v45 = v33;
            v47 = v46 = v34;
            *buf = 138412546;
            v65 = v42;
            v66 = 2112;
            v67 = v47;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "attachment %@ file size %@", buf, 0x16u);

            v34 = v46;
            v33 = v45;
            v21 = v44;
            v35 = v43;

            v29 = v41;
            v32 = v52;
            v31 = v53;
          }
        }

        v36 = v36 + 1;
      }

      while (v31 != v36);
      v31 = [v29 countByEnumeratingWithState:&v54 objects:v68 count:16];
    }

    while (v31);
  }

  return v29;
}

- (id)attachmentsForParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = _HGObjCLoggingFacility(kHGObjCLogCategoryDE);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = parametersCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received attachment request: %@", &v9, 0xCu);
  }

  v6 = [parametersCopy objectForKeyedSubscript:@"DEExtensionAttachmentsParamConsentProvidedKey"];
  if ([v6 BOOLValue])
  {
    attachmentList = [(HeadGesturesDiagnosticExtensionExtension *)self attachmentList];
  }

  else
  {
    attachmentList = &__NSArray0__struct;
  }

  return attachmentList;
}

@end