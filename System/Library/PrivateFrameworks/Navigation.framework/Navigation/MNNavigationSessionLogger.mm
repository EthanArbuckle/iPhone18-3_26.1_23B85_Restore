@interface MNNavigationSessionLogger
- (MNNavigationSessionLogger)init;
- (id)_stringForLocationType:(unint64_t)a3;
- (void)_updateCameraStyleAttributesForLocation:(id)a3;
- (void)navigationSession:(id)a3 didArriveAtWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5;
- (void)navigationSession:(id)a3 didEnterPreArrivalStateForWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5;
- (void)navigationSession:(id)a3 didFailRerouteWithError:(id)a4;
- (void)navigationSession:(id)a3 didInsertWaypoint:(id)a4;
- (void)navigationSession:(id)a3 didRemoveWaypoint:(id)a4;
- (void)navigationSession:(id)a3 didReroute:(id)a4 withLocation:(id)a5 withAlternateRoutes:(id)a6 rerouteReason:(unint64_t)a7;
- (void)navigationSession:(id)a3 didRerouteWithWaypoints:(id)a4;
- (void)navigationSession:(id)a3 didResumeNavigatingFromWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5 reason:(unint64_t)a6;
- (void)navigationSession:(id)a3 didSendNavigationServiceCallback:(id)a4;
- (void)navigationSession:(id)a3 didStartWithRoute:(id)a4 navigationType:(int64_t)a5 isResumingMultipointRoute:(BOOL)a6 isReconnecting:(BOOL)a7;
- (void)navigationSession:(id)a3 didSuppressReroute:(id)a4;
- (void)navigationSession:(id)a3 didUpdateAlternateRoutes:(id)a4;
- (void)navigationSession:(id)a3 didUpdateDestination:(id)a4;
- (void)navigationSession:(id)a3 didUpdateDisplayETA:(id)a4 remainingDistance:(id)a5 batteryChargeInfo:(id)a6;
- (void)navigationSession:(id)a3 didUpdateETAResponseForRoute:(id)a4;
- (void)navigationSession:(id)a3 didUpdateMatchedLocation:(id)a4;
- (void)navigationSession:(id)a3 didUpdateTargetLegIndex:(unint64_t)a4;
- (void)navigationSession:(id)a3 matchedToStepIndex:(unint64_t)a4 segmentIndex:(unint64_t)a5;
- (void)navigationSession:(id)a3 updateSignsWithARInfo:(id)a4;
- (void)navigationSession:(id)a3 updateSignsWithInfo:(id)a4;
- (void)navigationSessionDidArrive:(id)a3;
- (void)navigationSessionDidCancelReroute:(id)a3;
- (void)navigationSessionDidEnterPreArrivalState:(id)a3;
- (void)navigationSessionWillReroute:(id)a3;
@end

@implementation MNNavigationSessionLogger

- (void)_updateCameraStyleAttributesForLocation:(id)a3
{
  v77 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = GEOFindOrCreateLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (!v6)
  {
    goto LABEL_104;
  }

  v7 = [v4 routeMatch];
  v8 = [v7 route];

  v49 = v4;
  v9 = [v4 routeMatch];
  [v9 routeCoordinate];

  v10 = [MEMORY[0x1E696AC70] hashTableWithOptions:512];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v11 = [v8 cameraInfos];
  v12 = [v11 countByEnumeratingWithState:&v65 objects:v76 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v66;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v66 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v65 + 1) + 8 * i);
        [v16 routeCoordinateRange];
        if (GEOPolylineCoordinateInRange())
        {
          [v10 addObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v65 objects:v76 count:16];
    }

    while (v13);
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v17 = [v8 mutableData];
  v18 = [v17 updateableCameraInfos];

  v19 = [v18 countByEnumeratingWithState:&v61 objects:v75 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v62;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v62 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v61 + 1) + 8 * j);
        [v23 routeCoordinateRange];
        if (GEOPolylineCoordinateInRange())
        {
          [v10 addObject:v23];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v61 objects:v75 count:16];
    }

    while (v20);
  }

  location = &self->_activeCameraInfos;
  v24 = [(NSHashTable *)self->_activeCameraInfos copy];
  v50 = v10;
  [v24 minusHashTable:v10];
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v24;
  v25 = [obj countByEnumeratingWithState:&v57 objects:v74 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v58;
    do
    {
      for (k = 0; k != v26; ++k)
      {
        if (*v58 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v57 + 1) + 8 * k);
        v30 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = [v29 type];
          if (v31 <= 65639)
          {
            if (v31 > 65635)
            {
              switch(v31)
              {
                case 65636:
                  v32 = @"Windshield Mode";
                  goto LABEL_57;
                case 65638:
                  v32 = @"Bridge";
                  goto LABEL_57;
                case 65639:
                  v32 = @"Tunnel";
                  goto LABEL_57;
              }
            }

            else
            {
              switch(v31)
              {
                case 0:
                  v32 = @"None";
                  goto LABEL_57;
                case 191:
                  v32 = @"Travel Direction Arrow";
                  goto LABEL_57;
                case 65630:
                  v32 = @"Traffic State";
                  goto LABEL_57;
              }
            }
          }

          else if (v31 <= 65643)
          {
            switch(v31)
            {
              case 65640:
                v32 = @"Urban Canyon";
                goto LABEL_57;
              case 65641:
                v32 = @"Complex Overpass";
                goto LABEL_57;
              case 65642:
                v32 = @"Complex Intersection";
                goto LABEL_57;
            }
          }

          else if (v31 > 0x20000)
          {
            if (v31 == 131073)
            {
              v32 = @"Exit Number";
              goto LABEL_57;
            }

            if (v31 == 131074)
            {
              v32 = @"Significant Road Name";
              goto LABEL_57;
            }
          }

          else
          {
            if (v31 == 65644)
            {
              v32 = @"Traffic Camera";
              goto LABEL_57;
            }

            if (v31 == 65647)
            {
              v32 = @"Covered";
LABEL_57:
              *buf = 138412290;
              v70 = v32;
              _os_log_impl(&dword_1D311E000, v30, OS_LOG_TYPE_DEFAULT, "Removing camera style attribute: { %@ }", buf, 0xCu);

              goto LABEL_58;
            }
          }

          v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<unexpected visual info type: %lu>", v31];
          goto LABEL_57;
        }

LABEL_58:
      }

      v26 = [obj countByEnumeratingWithState:&v57 objects:v74 count:16];
    }

    while (v26);
  }

  v33 = [v50 copy];
  [v33 minusHashTable:*location];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v34 = v33;
  v35 = [v34 countByEnumeratingWithState:&v53 objects:v73 count:16];
  if (!v35)
  {
    goto LABEL_100;
  }

  v36 = v35;
  v37 = *v54;
  do
  {
    for (m = 0; m != v36; ++m)
    {
      if (*v54 != v37)
      {
        objc_enumerationMutation(v34);
      }

      v39 = *(*(&v53 + 1) + 8 * m);
      v40 = [v39 styleAttributes];
      v41 = [v40 attributes];
      v42 = [v41 firstObject];
      v43 = [v42 value];

      v44 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v45 = [v39 type];
        if (v45 <= 65639)
        {
          if (v45 > 65635)
          {
            switch(v45)
            {
              case 65636:
                v46 = @"Windshield Mode";
                goto LABEL_97;
              case 65638:
                v46 = @"Bridge";
                goto LABEL_97;
              case 65639:
                v46 = @"Tunnel";
                goto LABEL_97;
            }
          }

          else
          {
            switch(v45)
            {
              case 0:
                v46 = @"None";
                goto LABEL_97;
              case 191:
                v46 = @"Travel Direction Arrow";
                goto LABEL_97;
              case 65630:
                v46 = @"Traffic State";
                goto LABEL_97;
            }
          }
        }

        else if (v45 <= 65643)
        {
          switch(v45)
          {
            case 65640:
              v46 = @"Urban Canyon";
              goto LABEL_97;
            case 65641:
              v46 = @"Complex Overpass";
              goto LABEL_97;
            case 65642:
              v46 = @"Complex Intersection";
              goto LABEL_97;
          }
        }

        else if (v45 > 0x20000)
        {
          if (v45 == 131073)
          {
            v46 = @"Exit Number";
            goto LABEL_97;
          }

          if (v45 == 131074)
          {
            v46 = @"Significant Road Name";
            goto LABEL_97;
          }
        }

        else
        {
          if (v45 == 65644)
          {
            v46 = @"Traffic Camera";
            goto LABEL_97;
          }

          if (v45 == 65647)
          {
            v46 = @"Covered";
LABEL_97:
            *buf = 138412546;
            v70 = v46;
            v71 = 1024;
            v72 = v43;
            _os_log_impl(&dword_1D311E000, v44, OS_LOG_TYPE_DEFAULT, "Activating camera style attribute: { %@: %u }", buf, 0x12u);

            goto LABEL_98;
          }
        }

        v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<unexpected visual info type: %lu>", v45];
        goto LABEL_97;
      }

LABEL_98:
    }

    v36 = [v34 countByEnumeratingWithState:&v53 objects:v73 count:16];
  }

  while (v36);
LABEL_100:

  if ([v50 count])
  {
    v47 = v50;
  }

  else
  {
    v47 = 0;
  }

  objc_storeStrong(location, v47);

  v4 = v49;
LABEL_104:

  v48 = *MEMORY[0x1E69E9840];
}

- (id)_stringForLocationType:(unint64_t)a3
{
  if (a3 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E8430770[a3];
  }
}

- (void)navigationSession:(id)a3 didSendNavigationServiceCallback:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a4;
  v5 = [v4 type];
  if (v5 == 12)
  {
    v10 = v4;
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v10 trafficIncidentAlert];
      v13 = 138412290;
      v14 = v11;
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEFAULT, "Received Dodgeball alert: %@", &v13, 0xCu);
    }

    goto LABEL_10;
  }

  if (v5 == 2)
  {
    v6 = v4;
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 reason];
      if ((v8 - 1) > 9)
      {
        v9 = @"Unknown";
      }

      else
      {
        v9 = off_1E8430720[v8 - 1];
      }

      v13 = 138412290;
      v14 = v9;
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEFAULT, "Navigation session stopped with reason: %@", &v13, 0xCu);
    }

LABEL_10:
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)navigationSession:(id)a3 updateSignsWithARInfo:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = GEOFindOrCreateLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    lastARInfos = self->_lastARInfos;
    p_lastARInfos = &self->_lastARInfos;
    if (![MNComparison isValue:lastARInfos equalTo:v6])
    {
      objc_storeStrong(p_lastARInfos, a4);
      v11 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v6 componentsJoinedByString:@"\n\t"];
        v14 = 138412290;
        v15 = v12;
        _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_DEFAULT, "Updated AR events:\n\t%@", &v14, 0xCu);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)navigationSession:(id)a3 updateSignsWithInfo:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = GEOFindOrCreateLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    lastGuidanceSignID = self->_lastGuidanceSignID;
    v9 = [v5 primarySign];
    v10 = [v9 uniqueID];
    LOBYTE(lastGuidanceSignID) = [(NSUUID *)lastGuidanceSignID isEqual:v10];

    if ((lastGuidanceSignID & 1) == 0)
    {
      v11 = [v5 primarySign];
      v12 = [v11 uniqueID];
      v13 = self->_lastGuidanceSignID;
      self->_lastGuidanceSignID = v12;

      v14 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = v5;
        _os_log_impl(&dword_1D311E000, v14, OS_LOG_TYPE_DEFAULT, "Updated sign: %@", &v16, 0xCu);
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)navigationSession:(id)a3 didRemoveWaypoint:(id)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a4;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 humanDescriptionWithAddressAndLatLng];
    v8 = 138477827;
    v9 = v6;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "Removed waypoint: %{private}@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)navigationSession:(id)a3 didInsertWaypoint:(id)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a4;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 humanDescriptionWithAddressAndLatLng];
    v8 = 138477827;
    v9 = v6;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "Inserted waypoint: %{private}@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)navigationSession:(id)a3 didRerouteWithWaypoints:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a4;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 _geo_compactMap:&__block_literal_global_19386];
    v7 = [v6 componentsJoinedByString:@" | "];
    v9 = 138477827;
    v10 = v7;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "Modified waypoints: %{private}@", &v9, 0xCu);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)navigationSession:(id)a3 didUpdateDestination:(id)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a4;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 humanDescriptionWithAddressAndLatLng];
    v8 = 138477827;
    v9 = v6;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "Updated destination: %{private}@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)navigationSession:(id)a3 didUpdateAlternateRoutes:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a4;
  v5 = GEOFindOrCreateLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    if ([v4 count])
    {
      v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v22 = v4;
      obj = v4;
      v8 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v25;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v25 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v24 + 1) + 8 * i);
            v13 = MEMORY[0x1E696AEC0];
            v14 = [v12 route];
            v15 = [v14 name];
            v16 = [v12 route];
            v17 = [v16 uniqueRouteID];
            v18 = [v13 stringWithFormat:@"%@ (%@)", v15, v17];

            [v7 addObject:v18];
          }

          v9 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
        }

        while (v9);
      }

      v4 = v22;
    }

    else
    {
      v7 = 0;
    }

    v19 = [v7 componentsJoinedByString:{@", "}];
    v20 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v19;
      _os_log_impl(&dword_1D311E000, v20, OS_LOG_TYPE_DEFAULT, "Updated alternate routes: %@", buf, 0xCu);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)navigationSession:(id)a3 didFailRerouteWithError:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a4;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_ERROR, "Reroute error: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)navigationSession:(id)a3 didReroute:(id)a4 withLocation:(id)a5 withAlternateRoutes:(id)a6 rerouteReason:(unint64_t)a7
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = GEOFindOrCreateLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = [v9 route];
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      if (a7 - 1 > 0xF)
      {
        v14 = @"Unknown";
      }

      else
      {
        v14 = off_1E84306A0[a7 - 1];
      }

      v15 = [v12 name];
      v16 = [v9 routeID];
      v20 = 138412803;
      v21 = v14;
      v22 = 2113;
      v23 = v15;
      v24 = 2112;
      v25 = v16;
    }
  }

  previousSuppressedRerouteError = self->_previousSuppressedRerouteError;
  self->_previousSuppressedRerouteError = 0;

  displayETALookup = self->_displayETALookup;
  self->_displayETALookup = 0;

  v19 = *MEMORY[0x1E69E9840];
}

- (void)navigationSessionDidCancelReroute:(id)a3
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "Cancelled reroute", v4, 2u);
  }
}

- (void)navigationSession:(id)a3 didSuppressReroute:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    previousSuppressedRerouteError = self->_previousSuppressedRerouteError;
    p_previousSuppressedRerouteError = &self->_previousSuppressedRerouteError;
    v8 = previousSuppressedRerouteError;
    if (!previousSuppressedRerouteError || (v11 = -[NSError code](v8, "code"), v11 != [v7 code]))
    {
      v12 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v7 userInfo];
        v14 = [v13 objectForKeyedSubscript:*MEMORY[0x1E696A278]];
        v16 = 138412290;
        v17 = v14;
        _os_log_impl(&dword_1D311E000, v12, OS_LOG_TYPE_DEFAULT, "%@", &v16, 0xCu);
      }

      objc_storeStrong(p_previousSuppressedRerouteError, a4);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)navigationSessionWillReroute:(id)a3
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "Will reroute", v4, 2u);
  }
}

- (void)navigationSession:(id)a3 didUpdateETAResponseForRoute:(id)a4
{
  v5 = a4;
  v6 = [a3 routeManager];
  v7 = [v6 currentRouteInfo];

  v8 = [v7 routeID];
  v9 = [v5 routeID];

  LODWORD(v5) = [v8 isEqual:v9];
  if (v5)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_DEFAULT, "Received ETA update from server", v11, 2u);
    }
  }
}

- (void)navigationSession:(id)a3 didUpdateDisplayETA:(id)a4 remainingDistance:(id)a5 batteryChargeInfo:(id)a6
{
  v28 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = GEOFindOrCreateLog();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);

  if (v13)
  {
    if (!self->_displayETALookup)
    {
      v14 = [MEMORY[0x1E695DF90] dictionary];
      displayETALookup = self->_displayETALookup;
      self->_displayETALookup = v14;
    }

    v16 = [v9 routeID];
    if (v16)
    {
      v17 = [(NSMutableDictionary *)self->_displayETALookup objectForKeyedSubscript:v16];
    }

    else
    {
      v17 = 0;
    }

    if (([v17 isEqual:v9] & 1) == 0)
    {
      v18 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v20 = 138413058;
        v21 = v9;
        v22 = 2112;
        v23 = v10;
        v24 = 2112;
        v25 = v11;
        v26 = 2112;
        v27 = v16;
        _os_log_impl(&dword_1D311E000, v18, OS_LOG_TYPE_INFO, "Updated display ETA %@ | %@ | %@ | %@", &v20, 0x2Au);
      }

      if (v16)
      {
        [(NSMutableDictionary *)self->_displayETALookup setObject:v9 forKeyedSubscript:v16];
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)navigationSessionDidArrive:(id)a3
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "Arrived", v4, 2u);
  }
}

- (void)navigationSessionDidEnterPreArrivalState:(id)a3
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "Entered pre-arrival state", v4, 2u);
  }
}

- (void)navigationSession:(id)a3 didUpdateTargetLegIndex:(unint64_t)a4
{
  v4 = a4;
  v8 = *MEMORY[0x1E69E9840];
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v4;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "Updated target leg index: %d", v7, 8u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)navigationSession:(id)a3 didResumeNavigatingFromWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5 reason:(unint64_t)a6
{
  v7 = a5;
  v14 = *MEMORY[0x1E69E9840];
  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (a6 - 1 > 5)
    {
      v9 = @"Unknown";
    }

    else
    {
      v9 = off_1E8430638[a6 - 1];
    }

    v11[0] = 67109378;
    v11[1] = v7;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEFAULT, "Resumed navigating from leg: %d reason: %@", v11, 0x12u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)navigationSession:(id)a3 didArriveAtWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5
{
  v5 = a5;
  v9 = *MEMORY[0x1E69E9840];
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = v5;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "Arrived at end of leg: %d", v8, 8u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)navigationSession:(id)a3 didEnterPreArrivalStateForWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5
{
  v5 = a5;
  v9 = *MEMORY[0x1E69E9840];
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = v5;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "Entered pre-arrival state for leg: %d", v8, 8u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)navigationSession:(id)a3 matchedToStepIndex:(unint64_t)a4 segmentIndex:(unint64_t)a5
{
  v5 = a5;
  v23 = *MEMORY[0x1E69E9840];
  v7 = [(MNNavigationSessionState *)self->_navigationSessionState currentRouteInfo];
  v8 = [v7 route];

  v9 = [v8 steps];
  if ([v9 count] <= a4)
  {
    v11 = 0;
  }

  else
  {
    v10 = [v8 steps];
    v11 = [v10 objectAtIndexedSubscript:a4];
  }

  v12 = [v11 maneuverAndInstructionDescription];
  v13 = v12;
  v14 = &stru_1F4EB6B70;
  if (v12)
  {
    v14 = v12;
  }

  v15 = v14;

  v16 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v18[0] = 67109634;
    v18[1] = a4;
    v19 = 2112;
    v20 = v15;
    v21 = 1024;
    v22 = v5;
    _os_log_impl(&dword_1D311E000, v16, OS_LOG_TYPE_DEFAULT, "Changed step index: %d %@| segment index: %d", v18, 0x18u);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)navigationSession:(id)a3 didUpdateMatchedLocation:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = MNGetPuckTrackingLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v5 uuid];
    *buf = 138412290;
    v38 = v7;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_INFO, "[MN] [%@] - Processing - in MNNavigationSessionLogger::navigationSession:didUpdateMatchedLocation:", buf, 0xCu);
  }

  if ([v5 state] == 1)
  {
    previousSuppressedRerouteError = self->_previousSuppressedRerouteError;
    self->_previousSuppressedRerouteError = 0;
  }

  v9 = GEOFindOrCreateLog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);

  if (v10)
  {
    v11 = [MEMORY[0x1E695DF70] array];
    v12 = MEMORY[0x1E696AEC0];
    [v5 coordinate];
    v14 = v13;
    [v5 coordinate];
    v16 = [v12 stringWithFormat:@"(%.6f, %.6f)", v14, v15];
    [v11 addObject:v16];

    if ([v5 state] == 1)
    {
      v17 = MEMORY[0x1E696AEC0];
      v18 = [v5 routeMatch];
      v19 = [v18 routeCoordinate];
      v20 = [v5 routeMatch];
      v21 = [v17 stringWithFormat:@"[%u, %0.2f]", v19, COERCE_FLOAT(objc_msgSend(v20, "routeCoordinate") >> 32)];
      [v11 addObject:v21];
    }

    v22 = MEMORY[0x1E696AEC0];
    [v5 course];
    v24 = [v22 stringWithFormat:@"%0.1f°", v23];
    [v11 addObject:v24];

    v25 = [v5 roadName];
    v26 = [v25 length];

    if (v26)
    {
      v27 = [v5 roadName];
      [v11 addObject:v27];
    }

    if ([v5 state])
    {
      if ([v5 speedLimit])
      {
        v28 = MEMORY[0x1E696AEC0];
        v29 = [v5 speedLimit];
        v30 = [v5 speedLimitIsMPH];
        v31 = @"km/h";
        if (v30)
        {
          v31 = @"mph";
        }

        v32 = [v28 stringWithFormat:@"%d %@", v29, v31];
      }

      else
      {
        v32 = @"No speed limit";
      }

      [v11 addObject:v32];
    }

    v33 = -[MNNavigationSessionLogger _stringForLocationType:](self, "_stringForLocationType:", [v5 state]);
    [v11 addObject:v33];

    v34 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = [v11 componentsJoinedByString:@" | "];
      *buf = 138477827;
      v38 = v35;
      _os_log_impl(&dword_1D311E000, v34, OS_LOG_TYPE_INFO, "Location update: %{private}@", buf, 0xCu);
    }
  }

  [(MNNavigationSessionLogger *)self _updateCameraStyleAttributesForLocation:v5];

  v36 = *MEMORY[0x1E69E9840];
}

- (void)navigationSession:(id)a3 didStartWithRoute:(id)a4 navigationType:(int64_t)a5 isResumingMultipointRoute:(BOOL)a6 isReconnecting:(BOOL)a7
{
  v38 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = GEOFindOrCreateLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = [v9 route];
    v13 = [v12 destination];
    v14 = GEOFindOrCreateLog();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (a7)
    {
      if (v15)
      {
        v16 = [v13 humanDescriptionWithAddressAndLatLng];
        v17 = [v9 routeID];
        v18 = [v12 transportType];
        if (v18 >= 7)
        {
          v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v18];
        }

        else
        {
          v19 = off_1E8430668[v18];
        }

        v22 = [(__CFString *)v19 capitalizedString];
        v21 = v22;
        if ((a5 - 1) > 3)
        {
          v23 = @"None";
        }

        else
        {
          v23 = off_1E84305D0[a5 - 1];
        }

        *buf = 138478595;
        v29 = v16;
        v30 = 2112;
        v31 = v17;
        v32 = 2112;
        v33 = v22;
        v34 = 2112;
        v35 = v23;
        _os_log_impl(&dword_1D311E000, v14, OS_LOG_TYPE_DEFAULT, "Restarted navigation session to [%{private}@] (%@) | %@ %@", buf, 0x2Au);
LABEL_19:
      }
    }

    else if (v15)
    {
      v16 = [v13 humanDescriptionWithAddressAndLatLng];
      v17 = [v12 name];
      v19 = [v9 routeID];
      v20 = [v12 transportType];
      if (v20 >= 7)
      {
        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v20];
      }

      else
      {
        v21 = off_1E8430668[v20];
      }

      v24 = [(__CFString *)v21 capitalizedString];
      v25 = v24;
      if ((a5 - 1) > 3)
      {
        v26 = @"None";
      }

      else
      {
        v26 = off_1E84305D0[a5 - 1];
      }

      *buf = 138478851;
      v29 = v16;
      v30 = 2113;
      v31 = v17;
      v32 = 2112;
      v33 = v19;
      v34 = 2112;
      v35 = v24;
      v36 = 2112;
      v37 = v26;
      _os_log_impl(&dword_1D311E000, v14, OS_LOG_TYPE_DEFAULT, "Started navigation session to [%{private}@] via %{private}@ (%@) | %@ %@", buf, 0x34u);

      goto LABEL_19;
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (MNNavigationSessionLogger)init
{
  v6.receiver = self;
  v6.super_class = MNNavigationSessionLogger;
  v2 = [(MNNavigationSessionLogger *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

@end