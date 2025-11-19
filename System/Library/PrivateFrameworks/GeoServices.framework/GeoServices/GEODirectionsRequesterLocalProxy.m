@interface GEODirectionsRequesterLocalProxy
- (GEODirectionsRequesterLocalProxy)init;
- (id)_keyForRequest:(id)a3;
- (id)_validateResponse:(id)a3;
- (void)startRequest:(id)a3 traits:(id)a4 auditToken:(id)a5 useBackgroundURL:(BOOL)a6 requestPriority:(id)a7 callbackQueue:(id)a8 finished:(id)a9 networkActivity:(id)a10 error:(id)a11;
@end

@implementation GEODirectionsRequesterLocalProxy

- (id)_validateResponse:(id)a3
{
  v3 = a3;
  v4 = [[GEODirectionsError alloc] initWithResponse:v3];
  if (v4)
  {
    v5 = +[GEODirectionsError key];
    v15 = v5;
    v16 = v4;
    v6 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 status];
  if (v7 > 4)
  {
    switch(v7)
    {
      case 60:
        v8 = -28;
        goto LABEL_17;
      case 30:
        if ([v3 placeSearchResponsesCount] == 2)
        {
          v9 = [v3 placeSearchResponseAtIndex:0];
          v10 = [v9 status];

          if (v10)
          {
            v8 = -401;
            goto LABEL_17;
          }

          v13 = [v3 placeSearchResponseAtIndex:1];
          v14 = [v13 status];

          if (v14)
          {
            v8 = -402;
            goto LABEL_17;
          }
        }

        break;
      case 5:
        v8 = -10;
LABEL_17:
        v11 = [NSError GEOErrorWithCode:v8 userInfo:v6];
        goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (v7)
  {
    if (v7 == 1)
    {
      v8 = -8;
      goto LABEL_17;
    }

LABEL_16:
    v8 = -7;
    goto LABEL_17;
  }

  v11 = 0;
LABEL_18:

  return v11;
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
    v8.super_class = GEODirectionsRequesterLocalProxy;
    v5 = [(GEODirectionsRequesterLocalProxy *)&v8 _keyForRequest:v4];
  }

  v6 = v5;

  return v6;
}

- (void)startRequest:(id)a3 traits:(id)a4 auditToken:(id)a5 useBackgroundURL:(BOOL)a6 requestPriority:(id)a7 callbackQueue:(id)a8 finished:(id)a9 networkActivity:(id)a10 error:(id)a11
{
  v13 = a6;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a7;
  v50 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  if (v21)
  {
    v21[2](v21, 1);
  }

  v23 = GEOGreenTeaGetLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO) && [v16 hasGreenTeaWithValue:1])
  {
    GEOGreenTeaLog();
  }

  v24 = off_100080880;
  if (!v13)
  {
    v24 = off_100080888;
  }

  v25 = *v24;
  v51 = v19;
  v26 = [objc_alloc(objc_opt_class()) initWithRequest:v16 requestPriority:v19];
  v27 = +[GEOExperimentConfiguration sharedConfiguration];
  v28 = [v27 _mapsAbClientMetadata];
  v29 = [v28 clientDatasetMetadata];
  [v16 setAbClientMetadata:v29];

  v30 = [v18 bundleId];
  LODWORD(v27) = [v30 isEqualToString:MapsAppBundleId];

  if (v27)
  {
    v31 = [GEOLocalTime alloc];
    v32 = +[NSDate date];
    v33 = [v31 initWithDate:v32];
    v34 = [v16 clientCapabilities];
    [v34 setRequestTime:v33];
  }

  if (![v16 serviceTagsCount])
  {
    v35 = +[GEOGeoServiceTag defaultTag];
    [v16 addServiceTag:v35];
  }

  v36 = GeoServicesConfig_ValidateSensitiveFieldsAtSend_Directions[1];
  if (GEOConfigGetBOOL() && GEODirectionsRequestHasSensitiveFields())
  {
    [v16 clearSensitiveFields:0];
  }

  v37 = +[GEOPlatform sharedPlatform];
  if ([v37 isInternalInstall])
  {
    v38 = [v17 hasPrivacyMetadata];

    if (!v38)
    {
      goto LABEL_19;
    }

    v37 = [v17 privacyMetadata];
    v39 = [v37 copy];
    [v16 setPrivacyMetadata:v39];
  }

LABEL_19:
  v40 = [v16 familiarWaypointRoute];
  v41 = [v40 familarRouteUuid];

  v42 = [v16 familiarWaypointRoute];
  [v42 setFamilarRouteUuid:0];

  v43 = 0;
  if ([v16 hasPredictedDepartureTimeDelta])
  {
    [v16 predictedDepartureTimeDelta];
    v43 = [NSNumber numberWithDouble:?];
    [v16 setHasPredictedDepartureTimeDelta:0];
  }

  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_100046D5C;
  v52[3] = &unk_100083578;
  v55 = v21;
  v56 = v20;
  v53 = v41;
  v54 = v43;
  v57 = v22;
  v44 = v22;
  v45 = v43;
  v46 = v41;
  v47 = v20;
  v48 = v21;
  [(GEODirectionsRequesterLocalProxy *)self _startWithRequest:v16 traits:v17 auditToken:v18 config:v26 throttleToken:0 options:0 completionHandler:v52];
}

- (GEODirectionsRequesterLocalProxy)init
{
  v4.receiver = self;
  v4.super_class = GEODirectionsRequesterLocalProxy;
  v2 = [(GEODirectionsRequesterLocalProxy *)&v4 init];
  if (v2)
  {
    [(GEODirectionsRequesterLocalProxy *)v2 setOfflineOperationClass:objc_opt_class()];
  }

  return v2;
}

@end