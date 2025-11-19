@interface ACCFeatureAudioProductService
- (ACCFeatureAudioProductService)init;
- (void)dealloc;
- (void)processAudioProductCerts:(id)a3 forModel:(id)a4 firstConnectionAfterPair:(BOOL)a5 connection:(id)a6 endpoint:(id)a7 completionHandler:(id)a8;
@end

@implementation ACCFeatureAudioProductService

- (ACCFeatureAudioProductService)init
{
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ACCFeatureAudioProductService init];
    }

    v5 = &_os_log_default;
    v4 = &_os_log_default;
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ACCFeatureAudioProductService init", buf, 2u);
  }

  v14.receiver = self;
  v14.super_class = ACCFeatureAudioProductService;
  v6 = [(ACCFeatureAudioProductService *)&v14 init];
  if (v6)
  {
    v7 = dispatch_queue_create(kProcessingQueueName, 0);
    processingQueue = v6->_processingQueue;
    v6->_processingQueue = v7;

    v9 = dispatch_semaphore_create(0);
    setup_complete_semaphore = v6->_setup_complete_semaphore;
    v6->_setup_complete_semaphore = v9;
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v11 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ACCFeatureAudioProductService init];
    }

    v11 = &_os_log_default;
    v12 = &_os_log_default;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [(ACCFeatureAudioProductService *)v11 init];
  }

  return v6;
}

- (void)dealloc
{
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ACCFeatureAudioProductService init];
    }

    v5 = &_os_log_default;
    v4 = &_os_log_default;
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ACCFeatureAudioProductService dealloc", buf, 2u);
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v6 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ACCFeatureAudioProductService init];
    }

    v6 = &_os_log_default;
    v7 = &_os_log_default;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(ACCFeatureAudioProductService *)v6 dealloc];
  }

  v8.receiver = self;
  v8.super_class = ACCFeatureAudioProductService;
  [(ACCFeatureAudioProductService *)&v8 dealloc];
}

- (void)processAudioProductCerts:(id)a3 forModel:(id)a4 firstConnectionAfterPair:(BOOL)a5 connection:(id)a6 endpoint:(id)a7 completionHandler:(id)a8
{
  v11 = a5;
  v13 = a3;
  v85 = a4;
  v14 = a6;
  v15 = a7;
  v16 = a8;
  if (gLogObjects)
  {
    v17 = gNumLogObjects < 1;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ACCFeatureAudioProductService init];
    }

    v19 = &_os_log_default;
    v18 = &_os_log_default;
  }

  else
  {
    v19 = *gLogObjects;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    v106 = v14;
    v107 = 2112;
    v108 = v15;
    v109 = 2112;
    v110 = v85;
    v111 = 2048;
    v112 = [v13 count];
    v113 = 1024;
    v114 = v11;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "ACCFeatureAudioProductService: processAudioProductCerts, %@-%@, %@, %lu certs, firstConnectionAfterPair %d", buf, 0x30u);
  }

  v20 = +[NSXPCConnection currentConnection];
  if (![v20 hasEntitlement:@"com.apple.coreaccessories.ACCFeatureAudioProductService.access"])
  {
    v96 = NSLocalizedDescriptionKey;
    v86 = [NSString stringWithFormat:@"Not entitled for %@", @"com.apple.coreaccessories.ACCFeatureAudioProductService.access"];
    v97 = v86;
    v22 = [NSDictionary dictionaryWithObjects:&v97 forKeys:&v96 count:1];
    v23 = [NSError errorWithDomain:NSCocoaErrorDomain code:0 userInfo:v22];
LABEL_128:

    goto LABEL_129;
  }

  v86 = objc_alloc_init(NSMutableArray);
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v21 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ACCFeatureAudioProductService init];
    }

    v21 = &_os_log_default;
    v24 = &_os_log_default;
  }

  v83 = v20;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    [ACCFeatureAudioProductService processAudioProductCerts:v13 forModel:v21 firstConnectionAfterPair:? connection:? endpoint:? completionHandler:?];
  }

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v25 = v13;
  v26 = [v25 countByEnumeratingWithState:&v92 objects:v104 count:16];
  v84 = v16;
  v82 = v15;
  if (v26)
  {
    v27 = v26;
    v79 = v11;
    v80 = v14;
    v81 = v13;
    v28 = *v93;
    while (2)
    {
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v93 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v92 + 1) + 8 * i);
        v31 = [v30 objectForKey:@"AudioProduct_Serial"];
        v32 = [v30 objectForKey:@"AudioProduct_Data"];
        v33 = gLogObjects;
        v34 = gNumLogObjects;
        if (gLogObjects)
        {
          v35 = gNumLogObjects < 1;
        }

        else
        {
          v35 = 1;
        }

        if (v35)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            v106 = v33;
            v107 = 1024;
            LODWORD(v108) = v34;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v36 = &_os_log_default;
          v37 = &_os_log_default;
        }

        else
        {
          v37 = *gLogObjects;
        }

        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          v106 = v31;
          v107 = 2112;
          v108 = v32;
          v109 = 2112;
          v110 = v30;
          _os_log_debug_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "ACCFeatureAudioProductService: processAudioProductCerts, certSerial %@, certData %@, entry %@", buf, 0x20u);
        }

        if (!v31)
        {
          v102 = NSLocalizedDescriptionKey;
          v43 = [NSString stringWithFormat:@"No serial# found in an entry"];
          v103 = v43;
          v44 = [NSDictionary dictionaryWithObjects:&v103 forKeys:&v102 count:1];
          v23 = [NSError errorWithDomain:NSCocoaErrorDomain code:0 userInfo:v44];

          goto LABEL_49;
        }

        v38 = [[AMSDeviceOfferRegistrationItem alloc] initWithSerialNumber:v31 model:v85 validationData:v32];
        [v86 addObject:v38];
        v39 = gLogObjects;
        v40 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 1)
        {
          v41 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            v106 = v39;
            v107 = 1024;
            LODWORD(v108) = v40;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v42 = &_os_log_default;
          v41 = &_os_log_default;
        }

        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v106 = v38;
          v107 = 2112;
          v108 = v86;
          _os_log_debug_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEBUG, "ACCFeatureAudioProductService: processAudioProductCerts, add item %@ to items %@", buf, 0x16u);
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v92 objects:v104 count:16];
      if (v27)
      {
        continue;
      }

      break;
    }

    v23 = 0;
LABEL_49:
    v14 = v80;
    v13 = v81;
    v15 = v82;
    v16 = v84;
    v11 = v79;
  }

  else
  {
    v23 = 0;
  }

  if (!v23 && v11)
  {
    v45 = [v86 count];
    if (gLogObjects)
    {
      v46 = gNumLogObjects <= 0;
    }

    else
    {
      v46 = 1;
    }

    v47 = !v46;
    if (!v45)
    {
      if (v47)
      {
        v49 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [ACCFeatureAudioProductService init];
        }

        v49 = &_os_log_default;
        v61 = &_os_log_default;
      }

      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "ACCFeatureAudioProductService: processAudioProductCerts, No registration items to remove from cache", buf, 2u);
      }

      goto LABEL_95;
    }

    if (v47)
    {
      v48 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ACCFeatureAudioProductService init];
      }

      v48 = &_os_log_default;
      v50 = &_os_log_default;
    }

    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "ACCFeatureAudioProductService: processAudioProductCerts, remove registration items from cache", buf, 2u);
    }

    v51 = v15;
    v52 = v14;

    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v53 = v86;
    v54 = [v53 countByEnumeratingWithState:&v88 objects:v101 count:16];
    if (v54)
    {
      v55 = v54;
      v56 = 0;
      v57 = *v89;
      do
      {
        for (j = 0; j != v55; j = j + 1)
        {
          if (*v89 != v57)
          {
            objc_enumerationMutation(v53);
          }

          [AMSDevice removeDeviceOfferRegistrationItem:*(*(&v88 + 1) + 8 * j)];
        }

        v56 += v55;
        v55 = [v53 countByEnumeratingWithState:&v88 objects:v101 count:16];
      }

      while (v55);
    }

    else
    {
      v56 = 0;
    }

    if (gLogObjects && gNumLogObjects >= 1)
    {
      v59 = *gLogObjects;
      v14 = v52;
      v16 = v84;
    }

    else
    {
      v14 = v52;
      v16 = v84;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ACCFeatureAudioProductService init];
      }

      v59 = &_os_log_default;
      v60 = &_os_log_default;
    }

    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v106) = v56;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "ACCFeatureAudioProductService: processAudioProductCerts, removed %d registration items from cache", buf, 8u);
    }

    v15 = v51;
  }

  v20 = v83;
  if (!v23)
  {
LABEL_95:
    if ([v86 count])
    {
      v62 = +[ACAccountStore ams_sharedAccountStore];
      v22 = [v62 ams_activeiTunesAccount];

      v63 = +[AMSDeviceOfferRegistrationTask createBagForSubProfile];
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v64 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [ACCFeatureAudioProductService init];
        }

        v64 = &_os_log_default;
        v65 = &_os_log_default;
      }

      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v106 = v22;
        v107 = 2112;
        v108 = v63;
        _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "ACCFeatureAudioProductService: processAudioProductCerts, account %@, bag %@", buf, 0x16u);
      }

      v66 = [[AMSDeviceOfferRegistrationGroup alloc] initWithRegistrationItems:v86];
      [v66 setValidationOptions:5];
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v67 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [ACCFeatureAudioProductService init];
        }

        v67 = &_os_log_default;
        v68 = &_os_log_default;
      }

      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v106 = v66;
        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "ACCFeatureAudioProductService: processAudioProductCerts, add to task, group %@", buf, 0xCu);
      }

      v69 = [[AMSDeviceOfferRegistrationTask alloc] initWithAccount:v22 bag:v63];
      v100 = v66;
      v70 = [NSArray arrayWithObjects:&v100 count:1];
      [v69 setRegistrationGroups:v70];

      v71 = [v69 perform];
      v87 = 0;
      v72 = [v71 resultWithTimeout:&v87 error:30.0];
      v23 = v87;
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v73 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [ACCFeatureAudioProductService init];
        }

        v73 = &_os_log_default;
        v74 = &_os_log_default;
      }

      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v106 = v23;
        _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "ACCFeatureAudioProductService: processAudioProductCerts, Completed running device offer registration task. error = %@", buf, 0xCu);
      }

      v16 = v84;
      if (v84)
      {
        if (v23)
        {
          v75 = [v23 domain];
          v76 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v75, [v23 code], 0);

          v16 = v84;
        }

        else
        {
          v76 = 0;
        }

        v16[2](v16, v76);
      }

      v15 = v82;
    }

    else
    {
      v98 = NSLocalizedDescriptionKey;
      v22 = [NSString stringWithFormat:@"No certificates found in list"];
      v99 = v22;
      v63 = [NSDictionary dictionaryWithObjects:&v99 forKeys:&v98 count:1];
      v23 = [NSError errorWithDomain:NSCocoaErrorDomain code:0 userInfo:v63];
    }

    v20 = v83;
    goto LABEL_128;
  }

LABEL_129:

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v77 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ACCFeatureAudioProductService init];
    }

    v77 = &_os_log_default;
    v78 = &_os_log_default;
  }

  if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v106 = v23;
    _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "ACCFeatureAudioProductService: processAudioProductCerts, finished, error %@", buf, 0xCu);
  }

  if (v16 && v23)
  {
    v16[2](v16, v23);
  }
}

- (void)processAudioProductCerts:(uint64_t)a1 forModel:(NSObject *)a2 firstConnectionAfterPair:connection:endpoint:completionHandler:.cold.3(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "ACCFeatureAudioProductService: processAudioProductCerts, certs %@", &v2, 0xCu);
}

@end