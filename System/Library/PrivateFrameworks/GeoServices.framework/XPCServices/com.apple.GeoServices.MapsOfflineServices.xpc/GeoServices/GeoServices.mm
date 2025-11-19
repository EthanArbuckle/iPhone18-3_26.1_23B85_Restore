id sub_100000DC8(void *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a1;
  v7 = a2;
  v8 = a4;
  v9 = GEODecodeModernXPCMessage();
  v10 = 0;
  v11 = v10;
  if (!v9 || v10)
  {
    v12 = GEOGetGEODaemonLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Unable to decode request: %@", buf, 0xCu);
    }

    v14 = 0;
  }

  else
  {
    [v9 setService:@"offlineserver"];
    [v9 setMethod:v6];
    [v9 setPeer:v8];
    v12 = xpc_dictionary_get_value(v7, "progress_observer_endpoint");
    if (v12)
    {
      v13 = [NSProgress _geo_mirroredProgressFromReportingXPCEndpoint:v12 totalUnitCount:1];
      [v9 setProgress:v13];
    }

    v14 = v9;
  }

  return v14;
}

void start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = sub_100002538([GEOOfflineServiceDaemon alloc]);
  v2 = qword_10000C888;
  qword_10000C888 = v1;

  [qword_10000C888 start];
  dispatch_main();
}

id sub_100001200(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a3;
  [v7 setResponse:a2];
  [*(a1 + 32) setResponseMetadata:v9];

  [*(a1 + 32) setError:v8];
  v10 = *(a1 + 32);

  return [v10 send];
}

void sub_1000013D8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = sub_1000014D8();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to fetch available regions: %{public}@", &v9, 0xCu);
    }
  }

  v8 = [v5 _geo_map:&stru_1000082D8];
  (*(*(a1 + 32) + 16))();
}

id sub_1000014D8()
{
  if (qword_10000C8A0 != -1)
  {
    dispatch_once(&qword_10000C8A0, &stru_100008380);
  }

  v1 = qword_10000C898;

  return v1;
}

void sub_100001534(id a1)
{
  qword_10000C898 = os_log_create("com.apple.GeoServices", "OfflineDaemon");

  _objc_release_x1();
}

void sub_10000164C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = sub_1000014D8();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 40);
      v9[0] = 67109378;
      v9[1] = v8;
      v10 = 2114;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to fetch available keys for layer: %u: %{public}@", v9, 0x12u);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100001DBC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v10 = [v6 domain];
    v11 = GEOErrorDomain();
    v12 = OS_LOG_TYPE_ERROR;
    if ([v10 isEqual:v11])
    {
      if ([v7 code] == -8)
      {
        v12 = OS_LOG_TYPE_DEBUG;
      }

      else
      {
        v12 = OS_LOG_TYPE_ERROR;
      }
    }

    v13 = sub_1000014D8();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = *(a1 + 32);
      v17 = 138478083;
      v18 = v14;
      v19 = 2114;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v13, v12, "Failed to fetch key %{private}@: %{public}@", &v17, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = [v5 fileURL];
    if (v8)
    {
      v9 = *(*(a1 + 40) + 16);
    }

    else
    {
      v15 = sub_1000014D8();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 32);
        v17 = 138477827;
        v18 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Expected filesystem-backed data for key %{private}@", &v17, 0xCu);
      }

      v9 = *(*(a1 + 40) + 16);
    }

    v9();
  }
}

void sub_100002204(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!a2 || v5)
  {
    v11 = [v5 domain];
    v12 = GEOErrorDomain();
    v13 = OS_LOG_TYPE_ERROR;
    if ([v11 isEqual:v12])
    {
      if ([v6 code] == -8)
      {
        v13 = OS_LOG_TYPE_DEBUG;
      }

      else
      {
        v13 = OS_LOG_TYPE_ERROR;
      }
    }

    v14 = sub_1000014D8();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = *(a1 + 32);
      *buf = 138478083;
      v18 = v15;
      v19 = 2114;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, v14, v13, "Failed to fetch key %{private}@: %{public}@", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v16 = 0;
    v7 = [a2 readDataWithOptions:1 error:&v16];
    v8 = v16;
    if (![v7 length] || v8)
    {
      v9 = sub_1000014D8();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = *(a1 + 32);
        *buf = 138478083;
        v18 = v10;
        v19 = 2114;
        v20 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to read data for key %{private}@: %{public}@", buf, 0x16u);
      }
    }

    (*(*(a1 + 40) + 16))();
  }
}

id *sub_100002538(id *a1)
{
  v1 = a1;
  if (!a1)
  {
    goto LABEL_21;
  }

  objc_opt_self();
  if (qword_10000C890)
  {
    goto LABEL_3;
  }

  v8 = [NSBundle bundleForClass:objc_opt_class()];
  if (!v8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: gsFramework != ((void*)0)", buf, 2u);
    }

    goto LABEL_21;
  }

  v9 = v8;
  v10 = [v8 bundleURL];
  v11 = [v10 URLByAppendingPathComponent:@"MapsOfflineService.bundle"];

  v12 = [NSBundle bundleWithURL:v11];
  v13 = v12;
  if (!v12)
  {
    v15 = sub_1000014D8();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Unable to find MapsOfflineService.bundle", buf, 2u);
    }

    goto LABEL_20;
  }

  v22 = 0;
  v14 = [v12 loadAndReturnError:&v22];
  v15 = v22;
  if ((v14 & 1) == 0)
  {
    v18 = sub_1000014D8();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v15;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Unable to load MapsOfflineService.bundle: %@", buf, 0xCu);
    }

    goto LABEL_20;
  }

  v16 = [v13 principalClass];
  if (!v16)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      v20 = "Assertion failed: serviceClass != ((void*)0)";
LABEL_34:
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, v20, buf, 2u);
    }

LABEL_20:

LABEL_21:
    v7 = 0;
    goto LABEL_22;
  }

  v17 = v16;
  if (([v16 conformsToProtocol:&OBJC_PROTOCOL___MapsOfflineServiceV1] & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      v20 = "Assertion failed: [serviceClass conformsToProtocol:@protocol(MapsOfflineServiceV1)]";
      goto LABEL_34;
    }

    goto LABEL_20;
  }

  qword_10000C890 = v17;

LABEL_3:
  v2 = objc_alloc_init(_GEOOfflineDataWrapper);
  v3 = [[qword_10000C890 alloc] initWithDataProvider:v2];
  if (v3)
  {
    v21.receiver = v1;
    v21.super_class = GEOOfflineServiceDaemon;
    v4 = objc_msgSendSuper2(&v21, "initWithPort:createXPCListenerBlock:", "com.apple.GeoServices.MapsOfflineServices", &stru_100008340);
    v1 = v4;
    if (v4)
    {
      objc_storeStrong(v4 + 1, v3);
      [v1 installSignalHandlers];
      v5 = [[GEOOfflineServiceServer alloc] initWithDaemon:v1];
      v6 = v5;
      if (v5)
      {
        objc_storeStrong(&v5->_offlineService, v1[1]);
      }

      [v1 addServer:v6];
      v1 = v1;

      v7 = v1;
      goto LABEL_8;
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Unable to initialize MapsOfflineService, it probably threw an exception during startup.", buf, 2u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: offlineService != nil", buf, 2u);
    }
  }

  v7 = 0;
LABEL_8:

LABEL_22:
  return v7;
}

OS_xpc_object *__cdecl sub_100002954(id a1, OS_dispatch_queue *a2, const char *a3)
{
  listener = xpc_connection_create_listener();

  return listener;
}