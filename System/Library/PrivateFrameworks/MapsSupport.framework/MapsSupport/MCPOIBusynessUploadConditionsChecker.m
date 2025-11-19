@interface MCPOIBusynessUploadConditionsChecker
+ (BOOL)hasUserMoved:(id)a3;
+ (BOOL)isHorizontalAccuracySufficient:(id)a3;
+ (BOOL)isLocationFresh:(id)a3;
+ (BOOL)shouldUploadBasedOnTime;
+ (MCPOIBusynessUploadConditionsChecker)sharedConditionsCheckerInstance;
- (BOOL)shouldUploadBasedOnLocation:(id)a3;
- (BOOL)shouldUsePlaceInference:(id)a3 forLocation:(id)a4;
- (BOOL)shouldUseVisit:(id)a3 forLocation:(id)a4;
@end

@implementation MCPOIBusynessUploadConditionsChecker

+ (MCPOIBusynessUploadConditionsChecker)sharedConditionsCheckerInstance
{
  if (qword_100023318 != -1)
  {
    sub_10000FA0C();
  }

  v3 = qword_100023320;

  return v3;
}

+ (BOOL)shouldUploadBasedOnTime
{
  v15 = 0;
  v2 = [MCPOIBusynessData readLastFromDisk:&v15];
  if (!v2)
  {
    v8 = v15 == 0;
    goto LABEL_17;
  }

  Current = CFAbsoluteTimeGetCurrent();
  [v2 uploadedTimestamp];
  v5 = Current - v4;
  v6 = GEOGetPOIBusynessLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "MCPOIBusynessUploadConditionsChecker elapsedUploadTime : %f", buf, 0xCu);
  }

  GEOConfigGetDouble();
  if (v5 >= v7)
  {
    v9 = +[MCPOIBusynessState sharedState];
    v10 = [v9 numberOfRunsInLastHour];
    if (v10 <= GEOConfigGetUInteger())
    {
      v13 = [v9 numberOfRunsInLastDay];
      if (v13 <= GEOConfigGetUInteger())
      {
        v8 = 1;
        goto LABEL_16;
      }

      v11 = GEOGetPOIBusynessLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v12 = "MCPOIBusynessUploadConditionsChecker exceded daily rate limit";
        goto LABEL_13;
      }
    }

    else
    {
      v11 = GEOGetPOIBusynessLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v12 = "MCPOIBusynessUploadConditionsChecker exceded hourly rate limit";
LABEL_13:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, v12, buf, 2u);
      }
    }

    v8 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v8 = 0;
LABEL_17:

  return v8;
}

- (BOOL)shouldUploadBasedOnLocation:(id)a3
{
  v3 = a3;
  if (+[MCPOIBusynessUploadConditionsChecker isLocationFresh:](MCPOIBusynessUploadConditionsChecker, "isLocationFresh:", v3) && +[MCPOIBusynessUploadConditionsChecker hasUserMoved:](MCPOIBusynessUploadConditionsChecker, "hasUserMoved:", v3) && +[MCPOIBusynessUploadConditionsChecker isHorizontalAccuracySufficient:](MCPOIBusynessUploadConditionsChecker, "isHorizontalAccuracySufficient:", v3) && (+[MCPOIBusynessLocationOfInterestManager sharedLocationOfInterestManagerInstance](MCPOIBusynessLocationOfInterestManager, "sharedLocationOfInterestManagerInstance"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isUserAtSuppressedLocationsOfInterest:v3], v4, (v5 & 1) == 0))
  {
    v6 = GEOGetPOIBusynessLog();
    v7 = 1;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "MCPOIBusynessUploadConditionsChecker : shouldUploadBasedOnLocation returning YES", buf, 2u);
    }
  }

  else
  {
    v6 = GEOGetPOIBusynessLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "MCPOIBusynessUploadConditionsChecker : shouldUploadBasedOnLocation returning NO", v9, 2u);
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)shouldUseVisit:(id)a3 forLocation:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v9 = [v5 _placeInference];

    if (v9 && ([v5 horizontalAccuracy], v11 = v10, GEOConfigGetDouble(), v11 < v12))
    {
      v13 = +[MCPOIBusynessLocationOfInterestManager sharedLocationOfInterestManagerInstance];
      v14 = [v13 suppressedLocationsOfInterestUUIDs];

      v15 = [v5 _placeInference];
      v16 = [v15 _loiIdentifier];
      v17 = [v14 containsObject:v16];

      if (v17)
      {
        v8 = 0;
      }

      else
      {
        [v5 coordinate];
        [v5 coordinate];
        [v7 coordinate];
        [v7 coordinate];
        GEOCalculateDistanceHighPrecision();
        v19 = v18;
        GEOConfigGetDouble();
        v8 = v19 < v20;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)shouldUsePlaceInference:(id)a3 forLocation:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    goto LABEL_10;
  }

  v7 = [v5 referenceLocation];

  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = [v5 referenceLocation];
  [v8 horizontalAccuracy];
  v10 = v9;
  GEOConfigGetDouble();
  v12 = v11;

  if (v10 < v12)
  {
    v13 = +[MCPOIBusynessLocationOfInterestManager sharedLocationOfInterestManagerInstance];
    v14 = [v13 suppressedLocationsOfInterestUUIDs];

    v15 = [v5 _loiIdentifier];
    v16 = [v14 containsObject:v15];

    if (v16)
    {
      goto LABEL_12;
    }

    v17 = [v5 referenceLocation];
    [v17 horizontalAccuracy];
    v19 = v18;
    [v6 horizontalAccuracy];
    v21 = v19 + v20;

    GEOConfigGetDouble();
    if (v21 <= v22)
    {
      GEOConfigGetDouble();
      v21 = v23;
    }

    v24 = [v5 referenceLocation];
    [v24 coordinate];
    v25 = [v5 referenceLocation];
    [v25 coordinate];
    [v6 coordinate];
    [v6 coordinate];
    GEOCalculateDistanceHighPrecision();
    v27 = v26;

    if (v27 > v21 || (GEOConfigGetDouble(), v27 >= v28))
    {
LABEL_12:
      v29 = 0;
    }

    else
    {
      v29 = 1;
    }
  }

  else
  {
LABEL_10:
    v29 = 0;
  }

  return v29;
}

+ (BOOL)isLocationFresh:(id)a3
{
  v3 = a3;
  GEOConfigGetDouble();
  v5 = v4;
  v6 = +[NSDate now];
  [v6 timeIntervalSinceReferenceDate];
  v8 = v7;

  v9 = [v3 timestamp];

  [v9 timeIntervalSinceReferenceDate];
  v11 = v10;

  v12 = vabdd_f64(v11, v8);
  v13 = GEOGetPOIBusynessLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v15 = 134217984;
    v16 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "MCPOIBusynessUploadConditionsChecker : elapsedLocationFreshnessTime : %f", &v15, 0xCu);
  }

  return v12 < v5;
}

+ (BOOL)hasUserMoved:(id)a3
{
  v3 = a3;
  v12 = 0;
  v4 = [MCPOIBusynessData readLastFromDisk:&v12];
  v5 = v4;
  if (v4)
  {
    [v4 leechedGEOCoordinate2D];
    [v3 coordinate];
    [v3 coordinate];
    GEOCalculateDistanceHighPrecision();
    v7 = v6;
    v8 = GEOGetPOIBusynessLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 134283521;
      v14 = fabs(v7);
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "MCPOIBusynessUploadConditionsChecker hasUserMoved : distanceInMeters : %{private}f", buf, 0xCu);
    }

    GEOConfigGetDouble();
    v10 = v7 > v9;
  }

  else
  {
    v10 = v12 == 0;
  }

  return v10;
}

+ (BOOL)isHorizontalAccuracySufficient:(id)a3
{
  v3 = a3;
  v4 = GEOGetPOIBusynessLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    [v3 horizontalAccuracy];
    v11 = 134283521;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "MCPOIBusynessUploadConditionsChecker horizontalAccuracy : %{private}f", &v11, 0xCu);
  }

  [v3 horizontalAccuracy];
  v7 = v6;
  GEOConfigGetDouble();
  v9 = v7 < v8;

  return v9;
}

@end