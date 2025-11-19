@interface MNTransitLocationTracker
- (MNTransitLocationTracker)initWithNavigationSession:(id)a3;
- (double)_timeToDisplayStaleGPSLocation;
- (id)_clRegionWithCenter:(id)a3 identifier:(id)a4 signalStrength:(int)a5;
- (id)_correctedLocationForLocation:(id)a3;
- (id)_locationForInaccurateLocation:(id)a3;
- (id)_matchedLocationForLocation:(id)a3;
- (id)_roadMatchForOffRouteLocation:(id)a3 routeMatch:(id)a4;
- (id)_stepForRegionAlert:(id)a3;
- (void)_initRegionAlertsForRoute:(id)a3;
- (void)_startMonitoringTransitAlerts;
- (void)_stopMonitoringAllRegions;
- (void)_stopMonitoringForRegionWithIdentifier:(id)a3;
- (void)_triggerAlertForRegionId:(id)a3;
- (void)locationManager:(id)a3 didEnterRegion:(id)a4;
- (void)locationManager:(id)a3 didExitRegion:(id)a4;
- (void)locationManager:(id)a3 monitoringDidFailForRegionIdentifier:(id)a4 withError:(id)a5;
- (void)reroute:(id)a3 reason:(unint64_t)a4;
- (void)startTrackingWithInitialLocation:(id)a3 targetLegIndex:(unint64_t)a4;
- (void)stopTracking;
@end

@implementation MNTransitLocationTracker

- (void)locationManager:(id)a3 monitoringDidFailForRegionIdentifier:(id)a4 withError:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = [(NSMutableDictionary *)self->_monitoredRegions valueForKey:v7];
    v12 = 138412802;
    v13 = v10;
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_ERROR, "Failed to track region %@ with region identifier=%@ error=%@", &v12, 0x20u);
  }

  [(MNTransitLocationTracker *)self _stopMonitoringForRegionWithIdentifier:v7];
  v11 = *MEMORY[0x1E69E9840];
}

- (void)locationManager:(id)a3 didExitRegion:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v14 = 136315138;
    v15 = "[MNTransitLocationTracker locationManager:didExitRegion:]";
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEBUG, "%s", &v14, 0xCu);
  }

  v7 = [v5 identifier];
  v8 = [@"Maps_Transit" copy];
  v9 = [v7 hasPrefix:v8];

  if (v9)
  {
    v10 = [(NSMutableDictionary *)self->_transitRegions valueForKey:v7];
    if (!v10)
    {
      v11 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v14 = 138412290;
        v15 = v5;
        _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_ERROR, "No transit trigger region found for region: %@", &v14, 0xCu);
      }

      v12 = +[MNLocationManager shared];
      [v12 stopMonitoringFor:v5];
    }

    if (![v10 transition] || objc_msgSend(v10, "transition") == 2)
    {
      [(MNTransitLocationTracker *)self _triggerAlertForRegionId:v7];
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)locationManager:(id)a3 didEnterRegion:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v14 = 136315138;
    v15 = "[MNTransitLocationTracker locationManager:didEnterRegion:]";
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEBUG, "%s", &v14, 0xCu);
  }

  v7 = [v5 identifier];
  v8 = [@"Maps_Transit" copy];
  v9 = [v7 hasPrefix:v8];

  if (v9)
  {
    v10 = [(NSMutableDictionary *)self->_transitRegions valueForKey:v7];
    if (!v10)
    {
      v11 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v14 = 138412290;
        v15 = v5;
        _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_ERROR, "No transit trigger region found for region: %@", &v14, 0xCu);
      }

      v12 = +[MNLocationManager shared];
      [v12 stopMonitoringFor:v5];
    }

    if (![v10 transition] || objc_msgSend(v10, "transition") == 1)
    {
      [(MNTransitLocationTracker *)self _triggerAlertForRegionId:v7];
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_triggerAlertForRegionId:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_transitAlerts valueForKey:v4];
  v6 = [(MNTransitLocationTracker *)self _stepForRegionAlert:v5];
  v7 = [(NSMutableDictionary *)self->_transitRegions valueForKey:v4];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [(NSMutableDictionary *)self->_transitAlerts allKeysForObject:v5];
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v9)
  {
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [(MNTransitLocationTracker *)self _stopMonitoringForRegionWithIdentifier:*(*(&v20 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v9);
  }

  if (v6)
  {
    objc_initWeak(location, self);
    v12 = [v7 hasDelaySeconds];
    if (v12)
    {
      v12 = [v7 delaySeconds];
    }

    v13 = dispatch_time(0, (v12 * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__MNTransitLocationTracker__triggerAlertForRegionId___block_invoke;
    block[3] = &unk_1E8430DF8;
    objc_copyWeak(&v19, location);
    v17 = v5;
    v18 = v6;
    dispatch_after(v13, MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v19);
    objc_destroyWeak(location);
  }

  else
  {
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v5;
      _os_log_impl(&dword_1D311E000, v14, OS_LOG_TYPE_ERROR, "No transit step found for transit alert: %@", location, 0xCu);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __53__MNTransitLocationTracker__triggerAlertForRegionId___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 48));
  v4 = [MNTransitAlert alloc];
  v5 = [*(a1 + 32) banner];
  v6 = *(a1 + 40);
  v7 = objc_loadWeakRetained((a1 + 48));
  v8 = [v7 navigationSession];
  v9 = [v8 routeManager];
  v10 = [v9 currentRouteInfo];
  v11 = [(MNTransitAlert *)v4 initWithTransitBanner:v5 transitStep:v6 activeRoute:v10];
  [v2 locationTracker:v3 didReceiveTransitAlert:v11];
}

- (id)_stepForRegionAlert:(id)a3
{
  v4 = a3;
  v5 = [(MNLocationTracker *)self navigationSession];
  v6 = [v5 routeManager];
  v7 = [v6 currentRoute];
  v8 = [v7 steps];
  v9 = [v8 firstObject];

  if (v9)
  {
    do
    {
      if ([v9 transportType] == 1)
      {
        v10 = v9;
        v11 = [v10 regionAlerts];
        v12 = [v11 containsObject:v4];

        if (v12)
        {
          break;
        }
      }

      v10 = [v9 getNextStep];

      v9 = v10;
    }

    while (v10);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_stopMonitoringForRegionWithIdentifier:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315138;
    v10 = "[MNTransitLocationTracker _stopMonitoringForRegionWithIdentifier:]";
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEBUG, "%s", &v9, 0xCu);
  }

  v6 = +[MNLocationManager shared];
  v7 = [(NSMutableDictionary *)self->_monitoredRegions valueForKey:v4];
  [v6 stopMonitoringFor:v7];

  [(NSMutableDictionary *)self->_monitoredRegions removeObjectForKey:v4];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_stopMonitoringAllRegions
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(NSMutableDictionary *)self->_monitoredRegions allKeys];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(MNTransitLocationTracker *)self _stopMonitoringForRegionWithIdentifier:*(*(&v10 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  monitoredRegions = self->_monitoredRegions;
  self->_monitoredRegions = 0;

  v9 = *MEMORY[0x1E69E9840];
}

- (id)_clRegionWithCenter:(id)a3 identifier:(id)a4 signalStrength:(int)a5
{
  v6 = a3;
  v7 = MEMORY[0x1E695FBB0];
  v8 = a4;
  v9 = [v7 alloc];
  [v6 lat];
  v11 = v10;
  [v6 lng];
  v13 = CLLocationCoordinate2DMake(v11, v12);
  GEOConfigGetDouble();
  v15 = [v9 initWithCenter:v8 radius:v13.latitude identifier:{v13.longitude, v14}];

  v16 = MEMORY[0x1E69A1E80];
  [v6 lat];
  v18 = v17;
  [v6 lng];
  if ([v16 isLocationShiftRequiredForCoordinate:{v18, v19}])
  {
    [v15 setGeoReferenceFrame:2];
  }

  return v15;
}

- (void)_startMonitoringTransitAlerts
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v28 = "[MNTransitLocationTracker _startMonitoringTransitAlerts]";
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  if (self->_monitoredRegions)
  {
    [(MNTransitLocationTracker *)self _stopMonitoringAllRegions];
  }

  v4 = objc_opt_new();
  monitoredRegions = self->_monitoredRegions;
  self->_monitoredRegions = v4;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [(NSMutableDictionary *)self->_transitRegions allKeys];
  v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v21 = *v23;
    v8 = 1;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_transitRegions valueForKey:v10];
        v12 = [v11 location];
        v13 = -[MNTransitLocationTracker _clRegionWithCenter:identifier:signalStrength:](self, "_clRegionWithCenter:identifier:signalStrength:", v12, v10, [v11 signalStrength]);

        v14 = +[MNLocationManager shared];
        [v14 startMonitoringFor:v13];

        [(NSMutableDictionary *)self->_monitoredRegions setValue:v13 forKey:v10];
        v15 = +[MNLocationManager shared];
        [v15 startMonitoringFor:v13];

        [(NSMutableDictionary *)self->_monitoredRegions setValue:v13 forKey:v10];
        if ([v11 signalStrength] == 2 || v8 == 2)
        {
          v8 = 2;
        }

        else if (![v11 signalStrength])
        {
          v8 = 0;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 1;
  }

  v18 = [(MNLocationTracker *)self delegate];
  [v18 locationTracker:self didReceiveRouteSignalStrength:v8];

  v19 = *MEMORY[0x1E69E9840];
}

- (double)_timeToDisplayStaleGPSLocation
{
  v2 = +[MNLocationManager shared];
  [v2 timeScale];
  v4 = 15.0 / v3;

  return v4;
}

- (id)_roadMatchForOffRouteLocation:(id)a3 routeMatch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(GEORoadMatcher *)self->_roadMatcher matchLocation:v6 forTransportType:0];
  if (!v8)
  {
    goto LABEL_9;
  }

  if (![v7 isGoodMatch])
  {
    goto LABEL_4;
  }

  [v7 distanceFromRoute];
  v10 = v9;
  [v8 distanceFromRoad];
  v12 = v11;
  [v6 horizontalAccuracy];
  if (v10 > v13 + v12)
  {
    goto LABEL_4;
  }

  if (![v6 hasAccurateCourse])
  {
    goto LABEL_9;
  }

  [v6 speedAccuracy];
  if (v15 < 0.0)
  {
    goto LABEL_9;
  }

  [v6 speed];
  if (v16 <= 3.0)
  {
    goto LABEL_9;
  }

  [v6 course];
  [v7 matchedCourse];
  GEOAngleDifferenceDegrees();
  v18 = fabs(v17);
  [v6 course];
  [v8 courseOnRoad];
  GEOAngleDifferenceDegrees();
  v20 = fabs(v19);
  [v6 courseAccuracy];
  if (v18 > v20 + v21)
  {
LABEL_4:
    v14 = v8;
  }

  else
  {
LABEL_9:
    v14 = 0;
  }

  return v14;
}

- (id)_locationForInaccurateLocation:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MNGetPuckTrackingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 uuid];
    *buf = 138412290;
    *&buf[4] = v6;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_INFO, "[MN] [%@] - Processing - in _locationForInaccurateLocation:", buf, 0xCu);
  }

  v7 = v4;
  v8 = [(MNLocation *)self->_lastMatchedLocation routeMatch];
  v9 = [(MNLocationTracker *)self navigationSession];
  v10 = [v9 routeManager];
  v11 = [v10 currentRoute];

  v12 = v7;
  if ([v8 isGoodMatch])
  {
    v13 = [v8 route];

    v12 = v7;
    if (v13 == v11)
    {
      v14 = objc_alloc(MEMORY[0x1E69A2548]);
      v15 = [(MNLocationTracker *)self navigationSession];
      v16 = [v15 auditToken];
      v17 = [v14 initWithRoute:v11 auditToken:v16];

      v18 = [objc_alloc(MEMORY[0x1E69A1E70]) initWithCLLocation:v7];
      v19 = [v17 matchToRouteWithLocation:v18];
      v20 = v19;
      v12 = v7;
      if (v19)
      {
        [v19 distanceFromRoute];
        v22 = v21;
        [(MNLocation *)v7 horizontalAccuracy];
        v12 = v7;
        if (v22 < v23)
        {
          v24 = [v11 segmentForPointIndex:{objc_msgSend(v20, "routeCoordinate")}];
          v12 = v7;
          if ([v24 type] == 6)
          {
            v42 = 0u;
            memset(v43, 0, 28);
            v40 = 0u;
            v41 = 0u;
            v38 = 0u;
            v39 = 0u;
            v37 = 0u;
            memset(buf, 0, sizeof(buf));
            if (v7)
            {
              [(MNLocation *)v7 clientLocation];
            }

            [v20 locationCoordinate];
            v26 = v25;
            [v20 locationCoordinate];
            *&buf[4] = v26;
            *&buf[12] = v27;
            v28 = [MNLocation alloc];
            v34[6] = v41;
            v34[7] = v42;
            v35[0] = v43[0];
            *(v35 + 12) = *(v43 + 12);
            v34[2] = v37;
            v34[3] = v38;
            v34[4] = v39;
            v34[5] = v40;
            v34[0] = *buf;
            v34[1] = *&buf[16];
            v12 = [(MNLocation *)v28 initWithClientLocation:v34];

            v29 = *MEMORY[0x1E69A19F8];
            v30 = *(MEMORY[0x1E69A19F8] + 8);
            if (GEOConfigGetBOOL())
            {
              v31 = [(MNLocation *)v7 uuid];
              [(MNLocation *)v12 setUuid:v31];
            }
          }
        }
      }
    }
  }

  v32 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)_correctedLocationForLocation:(id)a3
{
  v4 = a3;
  v5 = [(MNLocation *)self->_lastMatchedLocation routeMatch];
  v6 = [(GEOTransitRouteMatcher *)self->_transitRouteMatcher matchToRouteWithLocation:v4 previousRouteMatch:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;

  [v4 coordinate];
  v57 = v10;
  [v4 coordinate];
  v12 = v11;
  v13 = -1.0;
  if ([v4 hasCourse])
  {
    [v4 course];
    v13 = v14;
  }

  v15 = 0;
  if ([v4 hasSpeed])
  {
    [v4 speed];
    v15 = v16;
  }

  [v4 horizontalAccuracy];
  v56 = v17;
  v18 = -1.0;
  v19 = -1.0;
  if ([v4 hasCourseAccuracy])
  {
    [v4 courseAccuracy];
    v19 = v20;
  }

  if ([v4 hasSpeedAccuracy])
  {
    [v4 speedAccuracy];
    v18 = v21;
  }

  [v4 timestamp];
  v54 = v22;
  if (self->_debugSnapToTransitLines)
  {
    v23 = [v9 transitTripStep];
    v24 = v23;
    v55 = 0;
    v52 = v19;
    v53 = v15;
    if (!v23)
    {
      v33 = 0;
      goto LABEL_21;
    }

    if ([v23 maneuver] != 4 && objc_msgSend(v24, "maneuver") != 5)
    {
      goto LABEL_25;
    }

    if ([v24 isRail] && objc_msgSend(v9, "isGoodMatch"))
    {
      [v9 locationCoordinate3D];
      v26 = v25;
      v28 = v27;
      v30 = v29;
      [v9 matchedCourse];
      v32 = v30;
LABEL_30:
      v33 = 0;
      if (fabs(v28) <= 180.0 && v26 >= -90.0)
      {
        v34 = v13;
        v35 = v12;
        v36 = v57;
        if (v26 <= 90.0)
        {
          v33 = 1;
          v34 = v31;
          v55 = v32;
          v35 = v28;
          v36 = v26;
        }

        goto LABEL_34;
      }

LABEL_21:
      v34 = v13;
      v35 = v12;
      v36 = v57;
LABEL_34:

      v19 = v52;
      v15 = v53;
      goto LABEL_35;
    }

    if (![v24 isBus])
    {
LABEL_25:
      v31 = -1.0;
      v28 = -180.0;
      v32 = 0x7FEFFFFFFFFFFFFFLL;
      v26 = -180.0;
      goto LABEL_30;
    }

    v37 = [(MNTransitLocationTracker *)self _roadMatchForOffRouteLocation:v4 routeMatch:v9];
    v38 = v37;
    if (v37)
    {
      [v37 coordinateOnRoad];
      v26 = v39;
      v28 = v40;
      v42 = v41;
      [v38 courseOnRoad];
    }

    else
    {
      if (![v9 isGoodMatch])
      {
        v47 = -1.0;
        v28 = -180.0;
        v42 = 0x7FEFFFFFFFFFFFFFLL;
        v26 = -180.0;
        goto LABEL_29;
      }

      [v9 locationCoordinate3D];
      v26 = v44;
      v28 = v45;
      v42 = v46;
      [v9 matchedCourse];
    }

    v47 = v43;
LABEL_29:

    v32 = v42;
    v31 = v47;
    goto LABEL_30;
  }

  v33 = 0;
  v55 = 0;
  v34 = v13;
  v35 = v12;
  v36 = v57;
LABEL_35:
  if ([v9 transitID] && objc_msgSend(v4, "hasTransitID"))
  {
    [v9 modifiedHorizontalAccuracy];
    v56 = v48;
  }

  v58 = 0;
  v59 = v36;
  v60 = v35;
  v61 = v56;
  v62 = v55;
  v63 = 0;
  v64 = v15;
  v65 = v18;
  v66 = v34;
  v67 = v19;
  v68 = v54;
  v69 = 0;
  v70 = 0;
  v71 = v57;
  v72 = v12;
  v73 = v13;
  v74 = 0u;
  v75 = 0u;
  v49 = [objc_alloc(MEMORY[0x1E6985C40]) initWithClientLocation:&v58];
  if (v9 && [v9 isGoodMatch])
  {
    v50 = [[MNLocation alloc] initWithRouteMatch:v9 rawLocation:v49 locationFixType:0];
  }

  else
  {
    v50 = [[MNLocation alloc] initWithRawLocation:v49];
    [(MNLocation *)v50 setRouteMatch:v9];
  }

  [(MNLocation *)v50 setIsDirectional:v33];
  objc_storeStrong(&self->_lastMatchedLocation, v50);

  return v50;
}

- (id)_matchedLocationForLocation:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MNGetPuckTrackingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 uuid];
    v35 = 138412290;
    v36 = v6;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_INFO, "[MN] [%@] - Processing - in MNTransitLocationTracker::_matchedLocationForLocation:", &v35, 0xCu);
  }

  lastLocationTimestamp = self->_lastLocationTimestamp;
  if (lastLocationTimestamp)
  {
    v8 = [v4 timestamp];
    v9 = [(NSDate *)lastLocationTimestamp compare:v8];

    if (v9 == 1)
    {
      v10 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v35) = 0;
        _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_DEBUG, "Dropping location because it has an older timestamp.", &v35, 2u);
      }

      goto LABEL_11;
    }
  }

  v11 = [v4 timestamp];
  v12 = self->_lastLocationTimestamp;
  self->_lastLocationTimestamp = v11;

  if ([(MNTransitLocationTracker *)self _isInaccurateLocation:v4])
  {
    if (self->_lastAccurateLocationDate)
    {
      v13 = [v4 timestamp];
      [v13 timeIntervalSinceDate:self->_lastAccurateLocationDate];
      v15 = v14;

      if (v15 < 60.0)
      {
LABEL_11:
        v16 = 0;
        goto LABEL_27;
      }
    }

    v27 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v35) = 0;
      _os_log_impl(&dword_1D311E000, v27, OS_LOG_TYPE_DEBUG, "Using an inaccurate location.", &v35, 2u);
    }

    v21 = [(MNTransitLocationTracker *)self _locationForInaccurateLocation:v4];

    v28 = [v21 timestamp];
    v29 = v28;
    if (v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = [MEMORY[0x1E695DF00] date];
    }

    v17 = v30;

    [(MNTransitLocationTracker *)self _timeToDisplayStaleGPSLocation];
    v20 = [v17 dateByAddingTimeInterval:?];
    [v21 setExpirationDate:v20];
  }

  else
  {
    v17 = [objc_alloc(MEMORY[0x1E69A1E70]) initWithCLLocation:v4];
    v18 = MNGetPuckTrackingLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [v4 uuid];
      v35 = 138412290;
      v36 = v19;
      _os_log_impl(&dword_1D311E000, v18, OS_LOG_TYPE_INFO, "[MN] [%@] - Processing - calling _correctedLocationForLocation:", &v35, 0xCu);
    }

    v20 = [v4 uuid];
    v21 = [(MNTransitLocationTracker *)self _correctedLocationForLocation:v17];

    v22 = MNGetPuckTrackingLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = [v21 uuid];
      v35 = 138412546;
      v36 = v20;
      v37 = 2112;
      v38 = v23;
      _os_log_impl(&dword_1D311E000, v22, OS_LOG_TYPE_INFO, "[MN] [%@] - Processing - MUTATED to corrected location => %@", &v35, 0x16u);
    }

    objc_storeStrong(&self->_lastAccurateLocationDate, self->_lastLocationTimestamp);
    v24 = [v21 timestamp];
    v25 = v24;
    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = [MEMORY[0x1E695DF00] date];
    }

    v31 = v26;

    [(MNTransitLocationTracker *)self _timeToDisplayStaleGPSLocation];
    v32 = [v31 dateByAddingTimeInterval:?];
    [v21 setExpirationDate:v32];
  }

  v4 = v21;
  v16 = v4;
LABEL_27:

  v33 = *MEMORY[0x1E69E9840];

  return v16;
}

- (void)_initRegionAlertsForRoute:(id)a3
{
  v69 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  transitRegions = self->_transitRegions;
  self->_transitRegions = v5;

  v7 = objc_opt_new();
  transitAlerts = self->_transitAlerts;
  self->_transitAlerts = v7;

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v42 = v4;
  v9 = [v4 steps];
  v10 = [v9 countByEnumeratingWithState:&v60 objects:v68 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v61;
    v43 = *v61;
    v44 = v9;
    do
    {
      v13 = 0;
      v45 = v11;
      do
      {
        if (*v61 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v60 + 1) + 8 * v13);
        if ([v14 transportType] == 1)
        {
          v15 = v14;
          v16 = [v15 regionAlerts];
          if (v16)
          {
            v17 = v16;
            v18 = [v15 regionAlerts];
            v19 = [v18 count];

            if (v19)
            {
              v46 = v15;
              v47 = v13;
              v58 = 0u;
              v59 = 0u;
              v56 = 0u;
              v57 = 0u;
              v20 = [v15 regionAlerts];
              v21 = [v20 countByEnumeratingWithState:&v56 objects:v67 count:16];
              if (v21)
              {
                v22 = v21;
                v23 = *v57;
                v48 = *v57;
                v49 = v20;
                do
                {
                  v24 = 0;
                  v50 = v22;
                  do
                  {
                    if (*v57 != v23)
                    {
                      objc_enumerationMutation(v20);
                    }

                    v51 = v24;
                    v25 = *(*(&v56 + 1) + 8 * v24);
                    v26 = [v25 triggerRegions];
                    if (v26 && (v27 = v26, [v25 triggerRegions], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "count"), v28, v27, v29))
                    {
                      v54 = 0u;
                      v55 = 0u;
                      v52 = 0u;
                      v53 = 0u;
                      v30 = [v25 triggerRegions];
                      v31 = [v30 countByEnumeratingWithState:&v52 objects:v66 count:16];
                      if (v31)
                      {
                        v32 = v31;
                        v33 = *v53;
                        do
                        {
                          for (i = 0; i != v32; ++i)
                          {
                            if (*v53 != v33)
                            {
                              objc_enumerationMutation(v30);
                            }

                            v35 = *(*(&v52 + 1) + 8 * i);
                            v36 = MEMORY[0x1E696AEC0];
                            v37 = objc_opt_new();
                            v38 = [v37 UUIDString];
                            v39 = [v36 stringWithFormat:@"%@_%@", @"Maps_Transit", v38];

                            [(NSMutableDictionary *)self->_transitAlerts setValue:v25 forKey:v39];
                            [(NSMutableDictionary *)self->_transitRegions setValue:v35 forKey:v39];
                          }

                          v32 = [v30 countByEnumeratingWithState:&v52 objects:v66 count:16];
                        }

                        while (v32);
                        v23 = v48;
                        v20 = v49;
                        v22 = v50;
                      }
                    }

                    else
                    {
                      v30 = GEOFindOrCreateLog();
                      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412290;
                        v65 = v25;
                        _os_log_impl(&dword_1D311E000, v30, OS_LOG_TYPE_ERROR, "Found a transit alert with no corresponding region: %@", buf, 0xCu);
                      }
                    }

                    v24 = v51 + 1;
                  }

                  while (v51 + 1 != v22);
                  v22 = [v20 countByEnumeratingWithState:&v56 objects:v67 count:16];
                }

                while (v22);
              }

              v12 = v43;
              v9 = v44;
              v11 = v45;
              v15 = v46;
              v13 = v47;
            }
          }
        }

        ++v13;
      }

      while (v13 != v11);
      v11 = [v9 countByEnumeratingWithState:&v60 objects:v68 count:16];
    }

    while (v11);
  }

  if (![(NSMutableDictionary *)self->_transitAlerts count])
  {
    v40 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v40, OS_LOG_TYPE_INFO, "No region alerts found for route.", buf, 2u);
    }
  }

  v41 = *MEMORY[0x1E69E9840];
}

- (void)reroute:(id)a3 reason:(unint64_t)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a4 != 15)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315906;
      v11 = "[MNTransitLocationTracker reroute:reason:]";
      v12 = 2080;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Location/LocationTracking/MNTransitLocationTracker.m";
      v14 = 1024;
      v15 = 121;
      v16 = 2080;
      v17 = "rerouteReason == MNRerouteReason_UserSwitchedRideIndex";
      _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s)", &v10, 0x26u);
    }
  }

  v7 = [v6 route];
  [(MNTransitLocationTracker *)self _initRegionAlertsForRoute:v7];

  [(MNTransitLocationTracker *)self _startMonitoringTransitAlerts];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)stopTracking
{
  [(MNTransitLocationTracker *)self _stopMonitoringAllRegions];
  v3 = +[MNLocationManager shared];
  [v3 unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = MNTransitLocationTracker;
  [(MNSteppingLocationTracker *)&v4 stopTracking];
}

- (void)startTrackingWithInitialLocation:(id)a3 targetLegIndex:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = MNTransitLocationTracker;
  [(MNSteppingLocationTracker *)&v7 startTrackingWithInitialLocation:a3 targetLegIndex:a4];
  v5 = +[MNLocationManager shared];
  [v5 registerObserver:self];

  [(MNTransitLocationTracker *)self _startMonitoringTransitAlerts];
  if (GEOConfigGetBOOL())
  {
    v6 = [(MNLocationTracker *)self delegate];
    [v6 locationTracker:self didReceiveRouteSignalStrength:2];
  }
}

- (MNTransitLocationTracker)initWithNavigationSession:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v42.receiver = self;
  v42.super_class = MNTransitLocationTracker;
  v5 = [(MNSteppingLocationTracker *)&v42 initWithNavigationSession:v4];
  if (v5)
  {
    v6 = [v4 routeManager];
    v7 = [v6 currentRoute];

    v8 = [v4 motionContext];
    v9 = objc_alloc(MEMORY[0x1E69A2678]);
    v10 = [v4 auditToken];
    v35 = v8;
    v11 = [v9 initWithRoute:v7 motionContext:v8 auditToken:v10];
    transitRouteMatcher = v5->_transitRouteMatcher;
    v5->_transitRouteMatcher = v11;

    v13 = [MEMORY[0x1E695DF00] date];
    startDate = v5->_startDate;
    v5->_startDate = v13;

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = v7;
    v15 = [v7 steps];
    v16 = [v15 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v39;
      v19 = &OBJC_IVAR____MNJunctionViewPreloadEvent__needsPreload;
      v37 = v4;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v39 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v21 = *(*(&v38 + 1) + 8 * i);
          if ([v21 transportType] == 1)
          {
            v22 = v21;
            v23 = v22;
            v24 = v19[392];
            if (!*(&v5->super.super.super.isa + v24) && [v22 routeSegmentType] == 6)
            {
              v25 = v23;
              if ([v25 isBus])
              {
                v26 = v5;
                v27 = objc_alloc(MEMORY[0x1E69A24F8]);
                v28 = [v4 auditToken];
                v29 = v27;
                v5 = v26;
                v19 = &OBJC_IVAR____MNJunctionViewPreloadEvent__needsPreload;
                v30 = [v29 initWithAuditToken:v28];
                v31 = *(&v5->super.super.super.isa + v24);
                *(&v5->super.super.super.isa + v24) = v30;

                v4 = v37;
              }
            }
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v17);
    }

    [(MNTransitLocationTracker *)v5 _initRegionAlertsForRoute:v36];
    v32 = v5;
  }

  v33 = *MEMORY[0x1E69E9840];
  return v5;
}

@end