@interface MNNavigationSessionLogger
- (MNNavigationSessionLogger)init;
- (id)_stringForLocationType:(unint64_t)type;
- (void)_updateCameraStyleAttributesForLocation:(id)location;
- (void)navigationSession:(id)session didArriveAtWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index;
- (void)navigationSession:(id)session didEnterPreArrivalStateForWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index;
- (void)navigationSession:(id)session didFailRerouteWithError:(id)error;
- (void)navigationSession:(id)session didInsertWaypoint:(id)waypoint;
- (void)navigationSession:(id)session didRemoveWaypoint:(id)waypoint;
- (void)navigationSession:(id)session didReroute:(id)reroute withLocation:(id)location withAlternateRoutes:(id)routes rerouteReason:(unint64_t)reason;
- (void)navigationSession:(id)session didRerouteWithWaypoints:(id)waypoints;
- (void)navigationSession:(id)session didResumeNavigatingFromWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index reason:(unint64_t)reason;
- (void)navigationSession:(id)session didSendNavigationServiceCallback:(id)callback;
- (void)navigationSession:(id)session didStartWithRoute:(id)route navigationType:(int64_t)type isResumingMultipointRoute:(BOOL)multipointRoute isReconnecting:(BOOL)reconnecting;
- (void)navigationSession:(id)session didSuppressReroute:(id)reroute;
- (void)navigationSession:(id)session didUpdateAlternateRoutes:(id)routes;
- (void)navigationSession:(id)session didUpdateDestination:(id)destination;
- (void)navigationSession:(id)session didUpdateDisplayETA:(id)a remainingDistance:(id)distance batteryChargeInfo:(id)info;
- (void)navigationSession:(id)session didUpdateETAResponseForRoute:(id)route;
- (void)navigationSession:(id)session didUpdateMatchedLocation:(id)location;
- (void)navigationSession:(id)session didUpdateTargetLegIndex:(unint64_t)index;
- (void)navigationSession:(id)session matchedToStepIndex:(unint64_t)index segmentIndex:(unint64_t)segmentIndex;
- (void)navigationSession:(id)session updateSignsWithARInfo:(id)info;
- (void)navigationSession:(id)session updateSignsWithInfo:(id)info;
- (void)navigationSessionDidArrive:(id)arrive;
- (void)navigationSessionDidCancelReroute:(id)reroute;
- (void)navigationSessionDidEnterPreArrivalState:(id)state;
- (void)navigationSessionWillReroute:(id)reroute;
@end

@implementation MNNavigationSessionLogger

- (void)_updateCameraStyleAttributesForLocation:(id)location
{
  v77 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  v5 = GEOFindOrCreateLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (!v6)
  {
    goto LABEL_104;
  }

  routeMatch = [locationCopy routeMatch];
  route = [routeMatch route];

  v49 = locationCopy;
  routeMatch2 = [locationCopy routeMatch];
  [routeMatch2 routeCoordinate];

  v10 = [MEMORY[0x1E696AC70] hashTableWithOptions:512];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  cameraInfos = [route cameraInfos];
  v12 = [cameraInfos countByEnumeratingWithState:&v65 objects:v76 count:16];
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
          objc_enumerationMutation(cameraInfos);
        }

        v16 = *(*(&v65 + 1) + 8 * i);
        [v16 routeCoordinateRange];
        if (GEOPolylineCoordinateInRange())
        {
          [v10 addObject:v16];
        }
      }

      v13 = [cameraInfos countByEnumeratingWithState:&v65 objects:v76 count:16];
    }

    while (v13);
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  mutableData = [route mutableData];
  updateableCameraInfos = [mutableData updateableCameraInfos];

  v19 = [updateableCameraInfos countByEnumeratingWithState:&v61 objects:v75 count:16];
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
          objc_enumerationMutation(updateableCameraInfos);
        }

        v23 = *(*(&v61 + 1) + 8 * j);
        [v23 routeCoordinateRange];
        if (GEOPolylineCoordinateInRange())
        {
          [v10 addObject:v23];
        }
      }

      v20 = [updateableCameraInfos countByEnumeratingWithState:&v61 objects:v75 count:16];
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
          type = [v29 type];
          if (type <= 65639)
          {
            if (type > 65635)
            {
              switch(type)
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
              switch(type)
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

          else if (type <= 65643)
          {
            switch(type)
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

          else if (type > 0x20000)
          {
            if (type == 131073)
            {
              v32 = @"Exit Number";
              goto LABEL_57;
            }

            if (type == 131074)
            {
              v32 = @"Significant Road Name";
              goto LABEL_57;
            }
          }

          else
          {
            if (type == 65644)
            {
              v32 = @"Traffic Camera";
              goto LABEL_57;
            }

            if (type == 65647)
            {
              v32 = @"Covered";
LABEL_57:
              *buf = 138412290;
              v70 = v32;
              _os_log_impl(&dword_1D311E000, v30, OS_LOG_TYPE_DEFAULT, "Removing camera style attribute: { %@ }", buf, 0xCu);

              goto LABEL_58;
            }
          }

          v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<unexpected visual info type: %lu>", type];
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
      styleAttributes = [v39 styleAttributes];
      attributes = [styleAttributes attributes];
      firstObject = [attributes firstObject];
      value = [firstObject value];

      v44 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        type2 = [v39 type];
        if (type2 <= 65639)
        {
          if (type2 > 65635)
          {
            switch(type2)
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
            switch(type2)
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

        else if (type2 <= 65643)
        {
          switch(type2)
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

        else if (type2 > 0x20000)
        {
          if (type2 == 131073)
          {
            v46 = @"Exit Number";
            goto LABEL_97;
          }

          if (type2 == 131074)
          {
            v46 = @"Significant Road Name";
            goto LABEL_97;
          }
        }

        else
        {
          if (type2 == 65644)
          {
            v46 = @"Traffic Camera";
            goto LABEL_97;
          }

          if (type2 == 65647)
          {
            v46 = @"Covered";
LABEL_97:
            *buf = 138412546;
            v70 = v46;
            v71 = 1024;
            v72 = value;
            _os_log_impl(&dword_1D311E000, v44, OS_LOG_TYPE_DEFAULT, "Activating camera style attribute: { %@: %u }", buf, 0x12u);

            goto LABEL_98;
          }
        }

        v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<unexpected visual info type: %lu>", type2];
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

  locationCopy = v49;
LABEL_104:

  v48 = *MEMORY[0x1E69E9840];
}

- (id)_stringForLocationType:(unint64_t)type
{
  if (type > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E8430770[type];
  }
}

- (void)navigationSession:(id)session didSendNavigationServiceCallback:(id)callback
{
  v15 = *MEMORY[0x1E69E9840];
  callbackCopy = callback;
  type = [callbackCopy type];
  if (type == 12)
  {
    v10 = callbackCopy;
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      trafficIncidentAlert = [v10 trafficIncidentAlert];
      v13 = 138412290;
      v14 = trafficIncidentAlert;
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEFAULT, "Received Dodgeball alert: %@", &v13, 0xCu);
    }

    goto LABEL_10;
  }

  if (type == 2)
  {
    v6 = callbackCopy;
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      reason = [v6 reason];
      if ((reason - 1) > 9)
      {
        v9 = @"Unknown";
      }

      else
      {
        v9 = off_1E8430720[reason - 1];
      }

      v13 = 138412290;
      v14 = v9;
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEFAULT, "Navigation session stopped with reason: %@", &v13, 0xCu);
    }

LABEL_10:
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)navigationSession:(id)session updateSignsWithARInfo:(id)info
{
  v16 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v7 = GEOFindOrCreateLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    lastARInfos = self->_lastARInfos;
    p_lastARInfos = &self->_lastARInfos;
    if (![MNComparison isValue:lastARInfos equalTo:infoCopy])
    {
      objc_storeStrong(p_lastARInfos, info);
      v11 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [infoCopy componentsJoinedByString:@"\n\t"];
        v14 = 138412290;
        v15 = v12;
        _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_DEFAULT, "Updated AR events:\n\t%@", &v14, 0xCu);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)navigationSession:(id)session updateSignsWithInfo:(id)info
{
  v18 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v6 = GEOFindOrCreateLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    lastGuidanceSignID = self->_lastGuidanceSignID;
    primarySign = [infoCopy primarySign];
    uniqueID = [primarySign uniqueID];
    LOBYTE(lastGuidanceSignID) = [(NSUUID *)lastGuidanceSignID isEqual:uniqueID];

    if ((lastGuidanceSignID & 1) == 0)
    {
      primarySign2 = [infoCopy primarySign];
      uniqueID2 = [primarySign2 uniqueID];
      v13 = self->_lastGuidanceSignID;
      self->_lastGuidanceSignID = uniqueID2;

      v14 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = infoCopy;
        _os_log_impl(&dword_1D311E000, v14, OS_LOG_TYPE_DEFAULT, "Updated sign: %@", &v16, 0xCu);
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)navigationSession:(id)session didRemoveWaypoint:(id)waypoint
{
  v10 = *MEMORY[0x1E69E9840];
  waypointCopy = waypoint;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    humanDescriptionWithAddressAndLatLng = [waypointCopy humanDescriptionWithAddressAndLatLng];
    v8 = 138477827;
    v9 = humanDescriptionWithAddressAndLatLng;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "Removed waypoint: %{private}@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)navigationSession:(id)session didInsertWaypoint:(id)waypoint
{
  v10 = *MEMORY[0x1E69E9840];
  waypointCopy = waypoint;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    humanDescriptionWithAddressAndLatLng = [waypointCopy humanDescriptionWithAddressAndLatLng];
    v8 = 138477827;
    v9 = humanDescriptionWithAddressAndLatLng;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "Inserted waypoint: %{private}@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)navigationSession:(id)session didRerouteWithWaypoints:(id)waypoints
{
  v11 = *MEMORY[0x1E69E9840];
  waypointsCopy = waypoints;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [waypointsCopy _geo_compactMap:&__block_literal_global_19386];
    v7 = [v6 componentsJoinedByString:@" | "];
    v9 = 138477827;
    v10 = v7;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "Modified waypoints: %{private}@", &v9, 0xCu);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)navigationSession:(id)session didUpdateDestination:(id)destination
{
  v10 = *MEMORY[0x1E69E9840];
  destinationCopy = destination;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    humanDescriptionWithAddressAndLatLng = [destinationCopy humanDescriptionWithAddressAndLatLng];
    v8 = 138477827;
    v9 = humanDescriptionWithAddressAndLatLng;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "Updated destination: %{private}@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)navigationSession:(id)session didUpdateAlternateRoutes:(id)routes
{
  v31 = *MEMORY[0x1E69E9840];
  routesCopy = routes;
  v5 = GEOFindOrCreateLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    if ([routesCopy count])
    {
      v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(routesCopy, "count")}];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v22 = routesCopy;
      obj = routesCopy;
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
            route = [v12 route];
            name = [route name];
            route2 = [v12 route];
            uniqueRouteID = [route2 uniqueRouteID];
            v18 = [v13 stringWithFormat:@"%@ (%@)", name, uniqueRouteID];

            [v7 addObject:v18];
          }

          v9 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
        }

        while (v9);
      }

      routesCopy = v22;
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

- (void)navigationSession:(id)session didFailRerouteWithError:(id)error
{
  v9 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = errorCopy;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_ERROR, "Reroute error: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)navigationSession:(id)session didReroute:(id)reroute withLocation:(id)location withAlternateRoutes:(id)routes rerouteReason:(unint64_t)reason
{
  v26 = *MEMORY[0x1E69E9840];
  rerouteCopy = reroute;
  v10 = GEOFindOrCreateLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    route = [rerouteCopy route];
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      if (reason - 1 > 0xF)
      {
        v14 = @"Unknown";
      }

      else
      {
        v14 = off_1E84306A0[reason - 1];
      }

      name = [route name];
      routeID = [rerouteCopy routeID];
      v20 = 138412803;
      v21 = v14;
      v22 = 2113;
      v23 = name;
      v24 = 2112;
      v25 = routeID;
    }
  }

  previousSuppressedRerouteError = self->_previousSuppressedRerouteError;
  self->_previousSuppressedRerouteError = 0;

  displayETALookup = self->_displayETALookup;
  self->_displayETALookup = 0;

  v19 = *MEMORY[0x1E69E9840];
}

- (void)navigationSessionDidCancelReroute:(id)reroute
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "Cancelled reroute", v4, 2u);
  }
}

- (void)navigationSession:(id)session didSuppressReroute:(id)reroute
{
  v18 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  rerouteCopy = reroute;
  if (rerouteCopy)
  {
    previousSuppressedRerouteError = self->_previousSuppressedRerouteError;
    p_previousSuppressedRerouteError = &self->_previousSuppressedRerouteError;
    v8 = previousSuppressedRerouteError;
    if (!previousSuppressedRerouteError || (v11 = -[NSError code](v8, "code"), v11 != [rerouteCopy code]))
    {
      v12 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        userInfo = [rerouteCopy userInfo];
        v14 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696A278]];
        v16 = 138412290;
        v17 = v14;
        _os_log_impl(&dword_1D311E000, v12, OS_LOG_TYPE_DEFAULT, "%@", &v16, 0xCu);
      }

      objc_storeStrong(p_previousSuppressedRerouteError, reroute);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)navigationSessionWillReroute:(id)reroute
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "Will reroute", v4, 2u);
  }
}

- (void)navigationSession:(id)session didUpdateETAResponseForRoute:(id)route
{
  routeCopy = route;
  routeManager = [session routeManager];
  currentRouteInfo = [routeManager currentRouteInfo];

  routeID = [currentRouteInfo routeID];
  routeID2 = [routeCopy routeID];

  LODWORD(routeCopy) = [routeID isEqual:routeID2];
  if (routeCopy)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_DEFAULT, "Received ETA update from server", v11, 2u);
    }
  }
}

- (void)navigationSession:(id)session didUpdateDisplayETA:(id)a remainingDistance:(id)distance batteryChargeInfo:(id)info
{
  v28 = *MEMORY[0x1E69E9840];
  aCopy = a;
  distanceCopy = distance;
  infoCopy = info;
  v12 = GEOFindOrCreateLog();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);

  if (v13)
  {
    if (!self->_displayETALookup)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      displayETALookup = self->_displayETALookup;
      self->_displayETALookup = dictionary;
    }

    routeID = [aCopy routeID];
    if (routeID)
    {
      v17 = [(NSMutableDictionary *)self->_displayETALookup objectForKeyedSubscript:routeID];
    }

    else
    {
      v17 = 0;
    }

    if (([v17 isEqual:aCopy] & 1) == 0)
    {
      v18 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v20 = 138413058;
        v21 = aCopy;
        v22 = 2112;
        v23 = distanceCopy;
        v24 = 2112;
        v25 = infoCopy;
        v26 = 2112;
        v27 = routeID;
        _os_log_impl(&dword_1D311E000, v18, OS_LOG_TYPE_INFO, "Updated display ETA %@ | %@ | %@ | %@", &v20, 0x2Au);
      }

      if (routeID)
      {
        [(NSMutableDictionary *)self->_displayETALookup setObject:aCopy forKeyedSubscript:routeID];
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)navigationSessionDidArrive:(id)arrive
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "Arrived", v4, 2u);
  }
}

- (void)navigationSessionDidEnterPreArrivalState:(id)state
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "Entered pre-arrival state", v4, 2u);
  }
}

- (void)navigationSession:(id)session didUpdateTargetLegIndex:(unint64_t)index
{
  indexCopy = index;
  v8 = *MEMORY[0x1E69E9840];
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = indexCopy;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "Updated target leg index: %d", v7, 8u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)navigationSession:(id)session didResumeNavigatingFromWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index reason:(unint64_t)reason
{
  indexCopy = index;
  v14 = *MEMORY[0x1E69E9840];
  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (reason - 1 > 5)
    {
      v9 = @"Unknown";
    }

    else
    {
      v9 = off_1E8430638[reason - 1];
    }

    v11[0] = 67109378;
    v11[1] = indexCopy;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEFAULT, "Resumed navigating from leg: %d reason: %@", v11, 0x12u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)navigationSession:(id)session didArriveAtWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index
{
  indexCopy = index;
  v9 = *MEMORY[0x1E69E9840];
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = indexCopy;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "Arrived at end of leg: %d", v8, 8u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)navigationSession:(id)session didEnterPreArrivalStateForWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index
{
  indexCopy = index;
  v9 = *MEMORY[0x1E69E9840];
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = indexCopy;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "Entered pre-arrival state for leg: %d", v8, 8u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)navigationSession:(id)session matchedToStepIndex:(unint64_t)index segmentIndex:(unint64_t)segmentIndex
{
  segmentIndexCopy = segmentIndex;
  v23 = *MEMORY[0x1E69E9840];
  currentRouteInfo = [(MNNavigationSessionState *)self->_navigationSessionState currentRouteInfo];
  route = [currentRouteInfo route];

  steps = [route steps];
  if ([steps count] <= index)
  {
    v11 = 0;
  }

  else
  {
    steps2 = [route steps];
    v11 = [steps2 objectAtIndexedSubscript:index];
  }

  maneuverAndInstructionDescription = [v11 maneuverAndInstructionDescription];
  v13 = maneuverAndInstructionDescription;
  v14 = &stru_1F4EB6B70;
  if (maneuverAndInstructionDescription)
  {
    v14 = maneuverAndInstructionDescription;
  }

  v15 = v14;

  v16 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v18[0] = 67109634;
    v18[1] = index;
    v19 = 2112;
    v20 = v15;
    v21 = 1024;
    v22 = segmentIndexCopy;
    _os_log_impl(&dword_1D311E000, v16, OS_LOG_TYPE_DEFAULT, "Changed step index: %d %@| segment index: %d", v18, 0x18u);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)navigationSession:(id)session didUpdateMatchedLocation:(id)location
{
  v39 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  v6 = MNGetPuckTrackingLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    uuid = [locationCopy uuid];
    *buf = 138412290;
    v38 = uuid;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_INFO, "[MN] [%@] - Processing - in MNNavigationSessionLogger::navigationSession:didUpdateMatchedLocation:", buf, 0xCu);
  }

  if ([locationCopy state] == 1)
  {
    previousSuppressedRerouteError = self->_previousSuppressedRerouteError;
    self->_previousSuppressedRerouteError = 0;
  }

  v9 = GEOFindOrCreateLog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);

  if (v10)
  {
    array = [MEMORY[0x1E695DF70] array];
    v12 = MEMORY[0x1E696AEC0];
    [locationCopy coordinate];
    v14 = v13;
    [locationCopy coordinate];
    v16 = [v12 stringWithFormat:@"(%.6f, %.6f)", v14, v15];
    [array addObject:v16];

    if ([locationCopy state] == 1)
    {
      v17 = MEMORY[0x1E696AEC0];
      routeMatch = [locationCopy routeMatch];
      routeCoordinate = [routeMatch routeCoordinate];
      routeMatch2 = [locationCopy routeMatch];
      v21 = [v17 stringWithFormat:@"[%u, %0.2f]", routeCoordinate, COERCE_FLOAT(objc_msgSend(routeMatch2, "routeCoordinate") >> 32)];
      [array addObject:v21];
    }

    v22 = MEMORY[0x1E696AEC0];
    [locationCopy course];
    v24 = [v22 stringWithFormat:@"%0.1f°", v23];
    [array addObject:v24];

    roadName = [locationCopy roadName];
    v26 = [roadName length];

    if (v26)
    {
      roadName2 = [locationCopy roadName];
      [array addObject:roadName2];
    }

    if ([locationCopy state])
    {
      if ([locationCopy speedLimit])
      {
        v28 = MEMORY[0x1E696AEC0];
        speedLimit = [locationCopy speedLimit];
        speedLimitIsMPH = [locationCopy speedLimitIsMPH];
        v31 = @"km/h";
        if (speedLimitIsMPH)
        {
          v31 = @"mph";
        }

        v32 = [v28 stringWithFormat:@"%d %@", speedLimit, v31];
      }

      else
      {
        v32 = @"No speed limit";
      }

      [array addObject:v32];
    }

    v33 = -[MNNavigationSessionLogger _stringForLocationType:](self, "_stringForLocationType:", [locationCopy state]);
    [array addObject:v33];

    v34 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = [array componentsJoinedByString:@" | "];
      *buf = 138477827;
      v38 = v35;
      _os_log_impl(&dword_1D311E000, v34, OS_LOG_TYPE_INFO, "Location update: %{private}@", buf, 0xCu);
    }
  }

  [(MNNavigationSessionLogger *)self _updateCameraStyleAttributesForLocation:locationCopy];

  v36 = *MEMORY[0x1E69E9840];
}

- (void)navigationSession:(id)session didStartWithRoute:(id)route navigationType:(int64_t)type isResumingMultipointRoute:(BOOL)multipointRoute isReconnecting:(BOOL)reconnecting
{
  v38 = *MEMORY[0x1E69E9840];
  routeCopy = route;
  v10 = GEOFindOrCreateLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    route = [routeCopy route];
    destination = [route destination];
    v14 = GEOFindOrCreateLog();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (reconnecting)
    {
      if (v15)
      {
        humanDescriptionWithAddressAndLatLng = [destination humanDescriptionWithAddressAndLatLng];
        routeID = [routeCopy routeID];
        transportType = [route transportType];
        if (transportType >= 7)
        {
          routeID2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", transportType];
        }

        else
        {
          routeID2 = off_1E8430668[transportType];
        }

        capitalizedString = [(__CFString *)routeID2 capitalizedString];
        v21 = capitalizedString;
        if ((type - 1) > 3)
        {
          v23 = @"None";
        }

        else
        {
          v23 = off_1E84305D0[type - 1];
        }

        *buf = 138478595;
        v29 = humanDescriptionWithAddressAndLatLng;
        v30 = 2112;
        v31 = routeID;
        v32 = 2112;
        v33 = capitalizedString;
        v34 = 2112;
        v35 = v23;
        _os_log_impl(&dword_1D311E000, v14, OS_LOG_TYPE_DEFAULT, "Restarted navigation session to [%{private}@] (%@) | %@ %@", buf, 0x2Au);
LABEL_19:
      }
    }

    else if (v15)
    {
      humanDescriptionWithAddressAndLatLng = [destination humanDescriptionWithAddressAndLatLng];
      routeID = [route name];
      routeID2 = [routeCopy routeID];
      transportType2 = [route transportType];
      if (transportType2 >= 7)
      {
        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", transportType2];
      }

      else
      {
        v21 = off_1E8430668[transportType2];
      }

      capitalizedString2 = [(__CFString *)v21 capitalizedString];
      v25 = capitalizedString2;
      if ((type - 1) > 3)
      {
        v26 = @"None";
      }

      else
      {
        v26 = off_1E84305D0[type - 1];
      }

      *buf = 138478851;
      v29 = humanDescriptionWithAddressAndLatLng;
      v30 = 2113;
      v31 = routeID;
      v32 = 2112;
      v33 = routeID2;
      v34 = 2112;
      v35 = capitalizedString2;
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