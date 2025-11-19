@interface GEOETAServiceRequester
+ (GEOETAServiceRequester)sharedRequester;
- (GEOETAServiceRequester)init;
- (id)_keyForRequest:(id)a3;
- (id)_validateResponse:(id)a3;
- (void)cancelRequest:(id)a3;
- (void)startRequest:(id)a3 connectionProperties:(id)a4 traits:(id)a5 auditToken:(id)a6 willSendRequest:(id)a7 finished:(id)a8 networkActivity:(id)a9 error:(id)a10;
- (void)startSimpleETARequest:(id)a3 traits:(id)a4 auditToken:(id)a5 finished:(id)a6 networkActivity:(id)a7 error:(id)a8;
@end

@implementation GEOETAServiceRequester

+ (GEOETAServiceRequester)sharedRequester
{
  if (qword_1000961D8 != -1)
  {
    dispatch_once(&qword_1000961D8, &stru_100083DA8);
  }

  v3 = qword_1000961D0;

  return v3;
}

- (id)_validateResponse:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 0;
    goto LABEL_22;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = [NSString stringWithFormat:@"Response is of unexpected type %@", objc_opt_class()];
    v8 = GEOURLLogFacility();
    [v8 UTF8String];
    v9 = GEOFindOrCreateLog();

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v4 = [NSError GEOErrorWithCode:-13 reason:v5];
    goto LABEL_21;
  }

  v5 = v3;
  v6 = [v5 status];
  v4 = 0;
  if (v6 > 19)
  {
    if (v6 != 20)
    {
      if (v6 == 60)
      {
        v7 = -28;
        goto LABEL_17;
      }

LABEL_15:
      v7 = -7;
      goto LABEL_17;
    }
  }

  else if (v6)
  {
    if (v6 == 1)
    {
      v7 = -8;
      goto LABEL_17;
    }

    if (v6 == 5)
    {
      v7 = -10;
LABEL_17:
      v10 = [[GEOETATrafficUpdateErrorInfo alloc] initWithResponse:v5];
      if (v10)
      {
        v11 = +[GEOETATrafficUpdateErrorInfo key];
        v14 = v11;
        v15 = v10;
        v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      }

      else
      {
        v12 = 0;
      }

      v4 = [NSError GEOErrorWithCode:v7 userInfo:v12];

      goto LABEL_21;
    }

    goto LABEL_15;
  }

LABEL_21:

LABEL_22:

  return v4;
}

- (void)cancelRequest:(id)a3
{
  v3.receiver = self;
  v3.super_class = GEOETAServiceRequester;
  [(GEOETAServiceRequester *)&v3 _cancelRequest:a3];
}

- (id)_keyForRequest:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 xpcUuid];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = GEOETAServiceRequester;
    v5 = [(GEOETAServiceRequester *)&v8 _keyForRequest:v4];
  }

  v6 = v5;

  return v6;
}

- (void)startRequest:(id)a3 connectionProperties:(id)a4 traits:(id)a5 auditToken:(id)a6 willSendRequest:(id)a7 finished:(id)a8 networkActivity:(id)a9 error:(id)a10
{
  v14 = a3;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v19 = a10;
  v38 = a6;
  v20 = +[GEOExperimentConfiguration sharedConfiguration];
  v21 = [v20 _mapsAbClientMetadata];
  v22 = [v21 clientDatasetMetadata];
  [v14 setAbClientMetadata:v22];

  v23 = +[GEOAdditionalEnabledMarkets additionalEnabledMarkets];
  [v14 setAdditionalEnabledMarkets:v23];

  if (![v14 serviceTagsCount])
  {
    v24 = +[GEOGeoServiceTag defaultTag];
    [v14 addServiceTag:v24];
  }

  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_100052EE4;
  v46[3] = &unk_100083E20;
  v37 = v16;
  v47 = v37;
  v25 = objc_retainBlock(v46);
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100052FD4;
  v44[3] = &unk_100083E48;
  v26 = v17;
  v45 = v26;
  v27 = objc_retainBlock(v44);
  v28 = GeoServicesConfig_ValidateSensitiveFieldsAtSend_ETA[1];
  if (GEOConfigGetBOOL() && GEOETATrafficUpdateRequestHasSensitiveFields())
  {
    [v14 clearSensitiveFields:0];
  }

  v29 = +[GEOPlatform sharedPlatform];
  if ([v29 isInternalInstall])
  {
    v30 = v15;
    v31 = [v15 hasPrivacyMetadata];

    if (!v31)
    {
      goto LABEL_11;
    }

    v29 = [v30 privacyMetadata];
    v32 = [v29 copy];
    [v14 setPrivacyMetadata:v32];
  }

  else
  {
    v30 = v15;
  }

LABEL_11:
  if (v18)
  {
    v18[2](v18, 1);
  }

  v33 = objc_alloc_init(_GEOTrafficUpdateETARequestConfig);
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_10005317C;
  v40[3] = &unk_100083DD0;
  v41 = v18;
  v42 = v19;
  v43 = v27;
  v34 = v27;
  v35 = v19;
  v36 = v18;
  [(GEOETAServiceRequester *)self _startWithRequest:v14 traits:v30 auditToken:v38 config:v33 throttleToken:0 options:0 willSendRequestHandler:v25 completionHandler:v40];
}

- (void)startSimpleETARequest:(id)a3 traits:(id)a4 auditToken:(id)a5 finished:(id)a6 networkActivity:(id)a7 error:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (v18)
  {
    v18[2](v18, 1);
  }

  v20 = GEOGreenTeaGetLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO) && [v14 hasGreenTeaWithValue:1])
  {
    GEOGreenTeaLog();
  }

  v21 = +[GEOExperimentConfiguration sharedConfiguration];
  v22 = [v21 _mapsAbClientMetadata];
  v23 = [v22 clientDatasetMetadata];
  [v14 setAbClientMetadata:v23];

  if (![v14 serviceTagsCount])
  {
    v24 = +[GEOGeoServiceTag defaultTag];
    [v14 addServiceTag:v24];
  }

  v25 = GeoServicesConfig_ValidateSensitiveFieldsAtSend_ETA[1];
  if (GEOConfigGetBOOL())
  {
    GEOETARequestRemoveFieldsForSendingRequest();
  }

  v26 = +[GEOPlatform sharedPlatform];
  if (![v26 isInternalInstall])
  {
    goto LABEL_13;
  }

  v27 = [v15 hasPrivacyMetadata];

  if (v27)
  {
    v26 = [v15 privacyMetadata];
    v28 = [v26 copy];
    [v14 setPrivacyMetadata:v28];

LABEL_13:
  }

  v29 = objc_alloc_init(_GEOSimpleETARequestConfig);
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100053618;
  v33[3] = &unk_100083DD0;
  v34 = v18;
  v35 = v17;
  v36 = v19;
  v30 = v19;
  v31 = v17;
  v32 = v18;
  [(GEOETAServiceRequester *)self _startWithRequest:v14 traits:v15 auditToken:v16 config:v29 throttleToken:0 options:0 completionHandler:v33];
}

- (GEOETAServiceRequester)init
{
  v6.receiver = self;
  v6.super_class = GEOETAServiceRequester;
  v2 = [(GEOETAServiceRequester *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

@end