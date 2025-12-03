@interface GEOETAServiceRequester
+ (GEOETAServiceRequester)sharedRequester;
- (GEOETAServiceRequester)init;
- (id)_keyForRequest:(id)request;
- (id)_validateResponse:(id)response;
- (void)cancelRequest:(id)request;
- (void)startRequest:(id)request connectionProperties:(id)properties traits:(id)traits auditToken:(id)token willSendRequest:(id)sendRequest finished:(id)finished networkActivity:(id)activity error:(id)self0;
- (void)startSimpleETARequest:(id)request traits:(id)traits auditToken:(id)token finished:(id)finished networkActivity:(id)activity error:(id)error;
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

- (id)_validateResponse:(id)response
{
  responseCopy = response;
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

  v5 = responseCopy;
  status = [v5 status];
  v4 = 0;
  if (status > 19)
  {
    if (status != 20)
    {
      if (status == 60)
      {
        v7 = -28;
        goto LABEL_17;
      }

LABEL_15:
      v7 = -7;
      goto LABEL_17;
    }
  }

  else if (status)
  {
    if (status == 1)
    {
      v7 = -8;
      goto LABEL_17;
    }

    if (status == 5)
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

- (void)cancelRequest:(id)request
{
  v3.receiver = self;
  v3.super_class = GEOETAServiceRequester;
  [(GEOETAServiceRequester *)&v3 _cancelRequest:request];
}

- (id)_keyForRequest:(id)request
{
  requestCopy = request;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    xpcUuid = [requestCopy xpcUuid];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = GEOETAServiceRequester;
    xpcUuid = [(GEOETAServiceRequester *)&v8 _keyForRequest:requestCopy];
  }

  v6 = xpcUuid;

  return v6;
}

- (void)startRequest:(id)request connectionProperties:(id)properties traits:(id)traits auditToken:(id)token willSendRequest:(id)sendRequest finished:(id)finished networkActivity:(id)activity error:(id)self0
{
  requestCopy = request;
  traitsCopy = traits;
  sendRequestCopy = sendRequest;
  finishedCopy = finished;
  activityCopy = activity;
  errorCopy = error;
  tokenCopy = token;
  v20 = +[GEOExperimentConfiguration sharedConfiguration];
  _mapsAbClientMetadata = [v20 _mapsAbClientMetadata];
  clientDatasetMetadata = [_mapsAbClientMetadata clientDatasetMetadata];
  [requestCopy setAbClientMetadata:clientDatasetMetadata];

  v23 = +[GEOAdditionalEnabledMarkets additionalEnabledMarkets];
  [requestCopy setAdditionalEnabledMarkets:v23];

  if (![requestCopy serviceTagsCount])
  {
    v24 = +[GEOGeoServiceTag defaultTag];
    [requestCopy addServiceTag:v24];
  }

  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_100052EE4;
  v46[3] = &unk_100083E20;
  v37 = sendRequestCopy;
  v47 = v37;
  v25 = objc_retainBlock(v46);
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100052FD4;
  v44[3] = &unk_100083E48;
  v26 = finishedCopy;
  v45 = v26;
  v27 = objc_retainBlock(v44);
  v28 = GeoServicesConfig_ValidateSensitiveFieldsAtSend_ETA[1];
  if (GEOConfigGetBOOL() && GEOETATrafficUpdateRequestHasSensitiveFields())
  {
    [requestCopy clearSensitiveFields:0];
  }

  privacyMetadata = +[GEOPlatform sharedPlatform];
  if ([privacyMetadata isInternalInstall])
  {
    v30 = traitsCopy;
    hasPrivacyMetadata = [traitsCopy hasPrivacyMetadata];

    if (!hasPrivacyMetadata)
    {
      goto LABEL_11;
    }

    privacyMetadata = [v30 privacyMetadata];
    v32 = [privacyMetadata copy];
    [requestCopy setPrivacyMetadata:v32];
  }

  else
  {
    v30 = traitsCopy;
  }

LABEL_11:
  if (activityCopy)
  {
    activityCopy[2](activityCopy, 1);
  }

  v33 = objc_alloc_init(_GEOTrafficUpdateETARequestConfig);
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_10005317C;
  v40[3] = &unk_100083DD0;
  v41 = activityCopy;
  v42 = errorCopy;
  v43 = v27;
  v34 = v27;
  v35 = errorCopy;
  v36 = activityCopy;
  [(GEOETAServiceRequester *)self _startWithRequest:requestCopy traits:v30 auditToken:tokenCopy config:v33 throttleToken:0 options:0 willSendRequestHandler:v25 completionHandler:v40];
}

- (void)startSimpleETARequest:(id)request traits:(id)traits auditToken:(id)token finished:(id)finished networkActivity:(id)activity error:(id)error
{
  requestCopy = request;
  traitsCopy = traits;
  tokenCopy = token;
  finishedCopy = finished;
  activityCopy = activity;
  errorCopy = error;
  if (activityCopy)
  {
    activityCopy[2](activityCopy, 1);
  }

  v20 = GEOGreenTeaGetLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO) && [requestCopy hasGreenTeaWithValue:1])
  {
    GEOGreenTeaLog();
  }

  v21 = +[GEOExperimentConfiguration sharedConfiguration];
  _mapsAbClientMetadata = [v21 _mapsAbClientMetadata];
  clientDatasetMetadata = [_mapsAbClientMetadata clientDatasetMetadata];
  [requestCopy setAbClientMetadata:clientDatasetMetadata];

  if (![requestCopy serviceTagsCount])
  {
    v24 = +[GEOGeoServiceTag defaultTag];
    [requestCopy addServiceTag:v24];
  }

  v25 = GeoServicesConfig_ValidateSensitiveFieldsAtSend_ETA[1];
  if (GEOConfigGetBOOL())
  {
    GEOETARequestRemoveFieldsForSendingRequest();
  }

  privacyMetadata = +[GEOPlatform sharedPlatform];
  if (![privacyMetadata isInternalInstall])
  {
    goto LABEL_13;
  }

  hasPrivacyMetadata = [traitsCopy hasPrivacyMetadata];

  if (hasPrivacyMetadata)
  {
    privacyMetadata = [traitsCopy privacyMetadata];
    v28 = [privacyMetadata copy];
    [requestCopy setPrivacyMetadata:v28];

LABEL_13:
  }

  v29 = objc_alloc_init(_GEOSimpleETARequestConfig);
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100053618;
  v33[3] = &unk_100083DD0;
  v34 = activityCopy;
  v35 = finishedCopy;
  v36 = errorCopy;
  v30 = errorCopy;
  v31 = finishedCopy;
  v32 = activityCopy;
  [(GEOETAServiceRequester *)self _startWithRequest:requestCopy traits:traitsCopy auditToken:tokenCopy config:v29 throttleToken:0 options:0 completionHandler:v33];
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