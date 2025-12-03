@interface MNNavigationDetails
- (BOOL)isFollowingOriginalRoute;
- (MNNavigationDetails)initWithCoder:(id)coder;
- (NSArray)alternateRoutes;
- (NSArray)previewRoutes;
- (NSMapTable)routeIDLookup;
- (id)description;
- (id)initForServer:(BOOL)server;
- (id)routeInfoForID:(id)d;
- (id)routeInfoForRoute:(id)route;
- (id)routeLookupIDs;
- (unint64_t)segmentIndex;
- (void)_handleTrafficIncidentAlertUpdate:(id)update;
- (void)_updateRouteIDLookup;
- (void)copySerializableValuesFrom:(id)from;
- (void)encodeWithCoder:(id)coder;
- (void)markAnnouncementSpoken:(id)spoken;
- (void)setAlternateRoutes:(id)routes;
- (void)setCurrentRoute:(id)route withAlternateRoutes:(id)routes;
- (void)setLocation:(id)location;
- (void)setPreviewRoutes:(id)routes withSelectedRouteIndex:(unint64_t)index;
- (void)updateETATrafficForRoute:(id)route;
- (void)updateWithNavigationServiceCallbackParameters:(id)parameters;
@end

@implementation MNNavigationDetails

- (id)routeLookupIDs
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__15833;
  v9 = __Block_byref_object_dispose__15834;
  v10 = 0;
  routeLookupLock = self->_routeLookupLock;
  geo_isolate_sync();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __37__MNNavigationDetails_routeLookupIDs__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) routeLookup];
  v2 = [v5 allKeys];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSArray)alternateRoutes
{
  v37 = *MEMORY[0x1E69E9840];
  if ([(NSArray *)self->_alternateRoutes count])
  {
    v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_alternateRoutes, "count")}];
  }

  else
  {
    v3 = 0;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = self->_alternateRoutes;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v22 objects:v36 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = 0x1E696A000uLL;
    v9 = *v23;
    *&v6 = 136316162;
    v21 = v6;
    do
    {
      v10 = 0;
      do
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v22 + 1) + 8 * v10);
        route = [v11 route];

        if (!route)
        {
          v15 = v8;
          v16 = [*(v8 + 3776) stringWithFormat:@"No route in alternate route info."];
          v17 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = v21;
            v27 = "[MNNavigationDetails alternateRoutes]";
            v28 = 2080;
            v29 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNNavigationDetails.m";
            v30 = 1024;
            v31 = 466;
            v32 = 2080;
            v33 = "alternateRouteInfo.route != nil";
            v34 = 2112;
            v35 = v16;
            _os_log_impl(&dword_1D311E000, v17, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", buf, 0x30u);
          }

          v8 = v15;
        }

        route2 = [v11 route];

        if (route2)
        {
          route3 = [v11 route];
          [v3 addObject:route3];
        }

        ++v10;
      }

      while (v7 != v10);
      v18 = [(NSArray *)v4 countByEnumeratingWithState:&v22 objects:v36 count:16];
      v7 = v18;
    }

    while (v18);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)description
{
  v18 = MEMORY[0x1E696AEC0];
  v19.receiver = self;
  v19.super_class = MNNavigationDetails;
  v3 = [(MNNavigationDetails *)&v19 description];
  state = [(MNNavigationDetails *)self state];
  desiredNavigationType = [(MNNavigationDetails *)self desiredNavigationType];
  if ((desiredNavigationType - 1) > 3)
  {
    v5 = @"None";
  }

  else
  {
    v5 = *(&off_1E842FDC8 + desiredNavigationType - 1);
  }

  v16 = v5;
  v6 = [(MNNavigationDetails *)self navigationType]- 1;
  if (v6 > 3)
  {
    v7 = @"None";
  }

  else
  {
    v7 = *(&off_1E842FDC8 + v6);
  }

  location = [(MNNavigationDetails *)self location];
  guidancePromptsEnabled = [(MNNavigationDetails *)self guidancePromptsEnabled];
  isDetour = [(MNNavigationDetails *)self isDetour];
  navigationState = [(MNNavigationDetails *)self navigationState];
  if (navigationState >= 9)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", navigationState];
  }

  else
  {
    v12 = *(&off_1E842FDE8 + navigationState);
  }

  guidanceState = [(MNNavigationDetails *)self guidanceState];
  v14 = [v18 stringWithFormat:@"%@ [state=%lu, \n             desiredNavigationType:%@, \n             navigationType=%@, \n             location=%@, \n             guidancePromptsEnabled=%d, \n             isDetour=%d, \n             navigationState=%@, \n             guidanceState=%@, \n             reconnectionRouteIndex=%lu, \n             stepIndex=%lu, \n             segmentIndex=%lu]", v3, state, v16, v7, location, guidancePromptsEnabled, isDetour, v12, guidanceState, -[MNNavigationDetails reconnectionRouteIndex](self, "reconnectionRouteIndex"), -[MNNavigationDetails stepIndex](self, "stepIndex"), -[MNNavigationDetails segmentIndex](self, "segmentIndex")];

  return v14;
}

- (NSMapTable)routeIDLookup
{
  routeIDLookup = self->_routeIDLookup;
  if (!routeIDLookup)
  {
    v4 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:512 valueOptions:0];
    v5 = self->_routeIDLookup;
    self->_routeIDLookup = v4;

    routeIDLookup = self->_routeIDLookup;
  }

  return routeIDLookup;
}

- (void)_updateRouteIDLookup
{
  routeIDLookup = [(MNNavigationDetails *)self routeIDLookup];
  [routeIDLookup removeAllObjects];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__15833;
  v19 = __Block_byref_object_dispose__15834;
  v20 = 0;
  routeLookupLock = self->_routeLookupLock;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __43__MNNavigationDetails__updateRouteIDLookup__block_invoke;
  v12 = &unk_1E8430960;
  selfCopy = self;
  v14 = &v15;
  geo_isolate_sync();
  v5 = v16[5];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__MNNavigationDetails__updateRouteIDLookup__block_invoke_2;
  v7[3] = &unk_1E842FDA8;
  v6 = routeIDLookup;
  v8 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];

  _Block_object_dispose(&v15, 8);
}

void __43__MNNavigationDetails__updateRouteIDLookup__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) routeLookup];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __43__MNNavigationDetails__updateRouteIDLookup__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (v5 && a3)
  {
    v6 = *(a1 + 32);
    v7 = [a3 route];
    [v6 setObject:v5 forKey:v7];
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315650;
      v10 = "[MNNavigationDetails _updateRouteIDLookup]_block_invoke_2";
      v11 = 2080;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNNavigationDetails.m";
      v13 = 1024;
      v14 = 742;
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: Hit an unreachable code path", &v9, 0x1Cu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)markAnnouncementSpoken:(id)spoken
{
  spokenCopy = spoken;
  if (spokenCopy)
  {
    spokenAnnouncements = self->_spokenAnnouncements;
    v8 = spokenCopy;
    if (!spokenAnnouncements)
    {
      array = [MEMORY[0x1E695DF70] array];
      v7 = self->_spokenAnnouncements;
      self->_spokenAnnouncements = array;

      spokenAnnouncements = self->_spokenAnnouncements;
    }

    [(NSMutableArray *)spokenAnnouncements addObject:v8];
    spokenCopy = v8;
  }
}

- (BOOL)isFollowingOriginalRoute
{
  originalRoute = [(MNNavigationDetails *)self originalRoute];
  uniqueRouteID = [originalRoute uniqueRouteID];
  currentRoute = [(MNNavigationDetails *)self currentRoute];
  uniqueRouteID2 = [currentRoute uniqueRouteID];
  v7 = [uniqueRouteID isEqual:uniqueRouteID2];

  return v7;
}

- (id)routeInfoForRoute:(id)route
{
  v4 = [(NSMapTable *)self->_routeIDLookup objectForKey:route];
  v5 = [(MNNavigationDetails *)self routeInfoForID:v4];

  return v5;
}

- (id)routeInfoForID:(id)d
{
  dCopy = d;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__15833;
  v13 = __Block_byref_object_dispose__15834;
  v14 = 0;
  routeLookupLock = self->_routeLookupLock;
  v8 = dCopy;
  geo_isolate_sync();
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

void __38__MNNavigationDetails_routeInfoForID___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) routeLookup];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)updateETATrafficForRoute:(id)route
{
  v23 = *MEMORY[0x1E69E9840];
  routeCopy = route;
  routeID = [routeCopy routeID];
  v6 = [(MNNavigationDetails *)self routeInfoForID:routeID];

  if (v6)
  {
    etaRoute = [routeCopy etaRoute];
    etaResponse = [routeCopy etaResponse];
    [v6 updateWithETARoute:etaRoute etaResponse:etaResponse];

    route = [routeCopy route];
    mutableData = [route mutableData];
    route2 = [v6 route];
    [route2 setMutableData:mutableData];
  }

  else
  {
    route = [MEMORY[0x1E696AEC0] stringWithFormat:@"Expected an existing route but did not find it"];
    mutableData = GEOFindOrCreateLog();
    if (os_log_type_enabled(mutableData, OS_LOG_TYPE_ERROR))
    {
      v13 = 136316162;
      v14 = "[MNNavigationDetails updateETATrafficForRoute:]";
      v15 = 2080;
      v16 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNNavigationDetails.m";
      v17 = 1024;
      v18 = 683;
      v19 = 2080;
      v20 = "existingRoute != nil";
      v21 = 2112;
      v22 = route;
      _os_log_impl(&dword_1D311E000, mutableData, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", &v13, 0x30u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)setAlternateRoutes:(id)routes
{
  v100 = *MEMORY[0x1E69E9840];
  routesCopy = routes;
  v5 = MNGetMNNavigationDetailsLog();
  v6 = os_signpost_id_generate(v5);
  v7 = v5;
  v8 = v7;
  spid = v6;
  v47 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1D311E000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "SetAlternateRoute", "", buf, 2u);
  }

  v46 = v8;

  *buf = 0;
  v84 = buf;
  v85 = 0x3032000000;
  v86 = __Block_byref_object_copy__15833;
  v87 = __Block_byref_object_dispose__15834;
  v88 = 0;
  routeLookupLock = self->_routeLookupLock;
  v77 = MEMORY[0x1E69E9820];
  v78 = 3221225472;
  v79 = __42__MNNavigationDetails_setAlternateRoutes___block_invoke;
  v80 = &unk_1E8430960;
  selfCopy = self;
  v82 = buf;
  geo_isolate_sync();
  routeID = [(MNActiveRouteInfo *)self->_currentRoute routeID];

  if (routeID)
  {
    v11 = *(v84 + 5);
    routeID2 = [(MNActiveRouteInfo *)self->_currentRoute routeID];
    [v11 removeObject:routeID2];
  }

  else
  {
    routeID2 = GEOFindOrCreateLog();
    if (os_log_type_enabled(routeID2, OS_LOG_TYPE_ERROR))
    {
      *v96 = 136315650;
      *&v96[4] = "[MNNavigationDetails setAlternateRoutes:]";
      *&v96[12] = 2080;
      *&v96[14] = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNNavigationDetails.m";
      *&v96[22] = 1024;
      LODWORD(v97) = 617;
      _os_log_impl(&dword_1D311E000, routeID2, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: Hit an unreachable code path", v96, 0x1Cu);
    }
  }

  v13 = [MEMORY[0x1E695DFA8] set];
  array = [MEMORY[0x1E695DF70] array];
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = routesCopy;
  v15 = [obj countByEnumeratingWithState:&v73 objects:v99 count:16];
  if (v15)
  {
    v17 = *v74;
    *&v16 = 136316162;
    v44 = v16;
    do
    {
      v18 = 0;
      do
      {
        if (*v74 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v73 + 1) + 8 * v18);
        routeID3 = [v19 routeID];
        v21 = routeID3 == 0;

        if (v21)
        {
          routeID4 = [v19 routeID];
          v27 = routeID4 == 0;

          if (v27)
          {
            v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Alternate route ID is nil"];
            v32 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              *v96 = v44;
              *&v96[4] = "[MNNavigationDetails setAlternateRoutes:]";
              *&v96[12] = 2080;
              *&v96[14] = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNNavigationDetails.m";
              *&v96[22] = 1024;
              LODWORD(v97) = 624;
              WORD2(v97) = 2080;
              *(&v97 + 6) = "alternateRoute.routeID";
              HIWORD(v97) = 2112;
              v98 = v31;
              _os_log_impl(&dword_1D311E000, v32, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", v96, 0x30u);
            }
          }

          v28 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *v96 = 0;
            _os_log_impl(&dword_1D311E000, v28, OS_LOG_TYPE_ERROR, "Alternate route ID is nil. This probably means a route failed to load from disk.", v96, 2u);
          }
        }

        else
        {
          routeID5 = [v19 routeID];
          [v13 addObject:routeID5];

          *v96 = 0;
          *&v96[8] = v96;
          *&v96[16] = 0x3032000000;
          *&v97 = __Block_byref_object_copy__15833;
          *(&v97 + 1) = __Block_byref_object_dispose__15834;
          v98 = 0;
          v23 = self->_routeLookupLock;
          v66 = MEMORY[0x1E69E9820];
          v67 = 3221225472;
          v68 = __42__MNNavigationDetails_setAlternateRoutes___block_invoke_176;
          v69 = &unk_1E842FD80;
          v71 = v19;
          v72 = v96;
          selfCopy2 = self;
          geo_isolate_sync();
          if (*(*&v96[8] + 40))
          {
            displayETAInfo = [v19 displayETAInfo];
            [*(*&v96[8] + 40) setDisplayETAInfo:displayETAInfo];

            remainingDistanceInfo = [v19 remainingDistanceInfo];
            [*(*&v96[8] + 40) setRemainingDistanceInfo:remainingDistanceInfo];
          }

          else
          {
            objc_storeStrong((*&v96[8] + 40), v19);
            if (v19)
            {
              v29 = self->_routeLookupLock;
              v60 = MEMORY[0x1E69E9820];
              v61 = 3221225472;
              v62 = __42__MNNavigationDetails_setAlternateRoutes___block_invoke_2;
              v63 = &unk_1E8430D50;
              selfCopy3 = self;
              v65 = v19;
              geo_isolate_sync();
            }

            else
            {
              v30 = GEOFindOrCreateLog();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                *v90 = 136315650;
                v91 = "[MNNavigationDetails setAlternateRoutes:]";
                v92 = 2080;
                v93 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNNavigationDetails.m";
                v94 = 1024;
                v95 = 645;
                _os_log_impl(&dword_1D311E000, v30, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: Hit an unreachable code path", v90, 0x1Cu);
              }
            }
          }

          [array addObject:*(*&v96[8] + 40)];
          _Block_object_dispose(v96, 8);
        }

        ++v18;
      }

      while (v15 != v18);
      v33 = [obj countByEnumeratingWithState:&v73 objects:v99 count:16];
      v15 = v33;
    }

    while (v33);
  }

  [*(v84 + 5) minusSet:v13];
  v34 = self->_routeLookupLock;
  v54 = MEMORY[0x1E69E9820];
  v55 = 3221225472;
  v56 = __42__MNNavigationDetails_setAlternateRoutes___block_invoke_177;
  v57 = &unk_1E8430960;
  selfCopy4 = self;
  v59 = buf;
  geo_isolate_sync();
  objc_storeStrong(&self->_alternateRoutes, array);
  v53 = 0u;
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  v35 = self->_alternateRoutes;
  v36 = [(NSArray *)v35 countByEnumeratingWithState:&v50 objects:v89 count:16];
  if (v36)
  {
    v37 = *v51;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v51 != v37)
        {
          objc_enumerationMutation(v35);
        }

        v39 = self->_routeLookupLock;
        v49 = *(*(&v50 + 1) + 8 * i);
        geo_isolate_sync();
      }

      v36 = [(NSArray *)v35 countByEnumeratingWithState:&v50 objects:v89 count:16];
    }

    while (v36);
  }

  v40 = self->_routeLookupLock;
  geo_isolate_sync();
  [(MNNavigationDetails *)self _updateRouteIDLookup];
  v41 = v46;
  v42 = v41;
  if (v47 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
  {
    *v96 = 0;
    _os_signpost_emit_with_name_impl(&dword_1D311E000, v42, OS_SIGNPOST_INTERVAL_END, spid, "SetAlternateRoute", "", v96, 2u);
  }

  _Block_object_dispose(buf, 8);
  v43 = *MEMORY[0x1E69E9840];
}

void __42__MNNavigationDetails_setAlternateRoutes___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E695DFA8];
  v7 = [*(a1 + 32) routeLookup];
  v3 = [v7 allKeys];
  v4 = [v2 setWithArray:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __42__MNNavigationDetails_setAlternateRoutes___block_invoke_176(uint64_t a1)
{
  v6 = [*(a1 + 32) routeLookup];
  v2 = [*(a1 + 40) routeID];
  v3 = [v6 objectForKeyedSubscript:v2];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __42__MNNavigationDetails_setAlternateRoutes___block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) routeLookup];
  v2 = *(a1 + 40);
  v3 = [v2 routeID];
  [v4 setObject:v2 forKey:v3];
}

void __42__MNNavigationDetails_setAlternateRoutes___block_invoke_177(uint64_t a1)
{
  v3 = [*(a1 + 32) routeLookup];
  v2 = [*(*(*(a1 + 40) + 8) + 40) allObjects];
  [v3 removeObjectsForKeys:v2];
}

void __42__MNNavigationDetails_setAlternateRoutes___block_invoke_2_178(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) routeLookup];
  v3 = [*(a1 + 40) routeID];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = *(a1 + 40);

  if (v4 != v5)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected alternate route in lookup"];
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 136316162;
      v10 = "[MNNavigationDetails setAlternateRoutes:]_block_invoke_2";
      v11 = 2080;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNNavigationDetails.m";
      v13 = 1024;
      v14 = 661;
      v15 = 2080;
      v16 = "self.routeLookup[alternateRoute.routeID] == alternateRoute";
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", &v9, 0x30u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __42__MNNavigationDetails_setAlternateRoutes___block_invoke_183(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) routeLookup];
  v3 = [v2 count];
  v4 = [*(*(a1 + 32) + 88) count] + 1;

  if (v3 != v4)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected number of routes in lookup"];
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136316162;
      v9 = "[MNNavigationDetails setAlternateRoutes:]_block_invoke";
      v10 = 2080;
      v11 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNNavigationDetails.m";
      v12 = 1024;
      v13 = 666;
      v14 = 2080;
      v15 = "self.routeLookup.count == (_alternateRoutes.count + 1)";
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", &v8, 0x30u);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)setCurrentRoute:(id)route withAlternateRoutes:(id)routes
{
  v116 = *MEMORY[0x1E69E9840];
  routeCopy = route;
  routesCopy = routes;
  v7 = MNGetMNNavigationDetailsLog();
  v8 = os_signpost_id_generate(v7);
  v9 = v7;
  v10 = v9;
  v80 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1D311E000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "SetCurrentRoute", "", buf, 2u);
  }

  spid = v8;
  v79 = v10;

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  selfCopy = self;
  v11 = self->_alternateRoutes;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v100 objects:v115 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v101;
    while (2)
    {
      v15 = 0;
      do
      {
        if (*v101 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v100 + 1) + 8 * v15);
        routeID = [v16 routeID];

        if (!routeID)
        {
          v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Alternate route ID is nil"];
          v23 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            v106 = "[MNNavigationDetails setCurrentRoute:withAlternateRoutes:]";
            v107 = 2080;
            v108 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNNavigationDetails.m";
            v109 = 1024;
            v110 = 532;
            v111 = 2080;
            v112 = "alternateRoute.routeID";
            v113 = 2112;
            v114 = v22;
            _os_log_impl(&dword_1D311E000, v23, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", buf, 0x30u);
          }
        }

        routeID2 = [v16 routeID];
        v19 = routeCopy;
        routeID3 = [(MNActiveRouteInfo *)routeCopy routeID];
        v21 = [routeID2 isEqual:routeID3];

        if (v21)
        {
          v25 = v16;

          routeCopy = v19;
          if (!v25)
          {
            goto LABEL_28;
          }

          displayETAInfo = [(MNActiveRouteInfo *)v19 displayETAInfo];
          [v25 setDisplayETAInfo:displayETAInfo];

          remainingDistanceInfo = [(MNActiveRouteInfo *)v19 remainingDistanceInfo];
          [v25 setRemainingDistanceInfo:remainingDistanceInfo];

          v28 = v25;
          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          v29 = routesCopy;
          v30 = [v29 countByEnumeratingWithState:&v85 objects:v104 count:16];
          v31 = selfCopy;
          v78 = v28;
          if (v30)
          {
            v32 = v30;
            v33 = *v86;
            while (2)
            {
              for (i = 0; i != v32; ++i)
              {
                if (*v86 != v33)
                {
                  objc_enumerationMutation(v29);
                }

                v35 = *(*(&v85 + 1) + 8 * i);
                routeID4 = [(MNActiveRouteInfo *)selfCopy->_currentRoute routeID];
                routeID5 = [v35 routeID];
                v38 = [routeID4 isEqual:routeID5];

                if (v38)
                {

                  goto LABEL_38;
                }
              }

              v32 = [v29 countByEnumeratingWithState:&v85 objects:v104 count:16];
              if (v32)
              {
                continue;
              }

              break;
            }
          }

          routeLookupLock = selfCopy->_routeLookupLock;
          geo_isolate_sync();
LABEL_38:
          routeCopy = v28;
          goto LABEL_39;
        }

        ++v15;
        routeCopy = v19;
      }

      while (v13 != v15);
      v24 = [(NSArray *)v11 countByEnumeratingWithState:&v100 objects:v115 count:16];
      v13 = v24;
      if (v24)
      {
        continue;
      }

      break;
    }
  }

LABEL_28:
  v31 = selfCopy;
  routeID6 = [(MNActiveRouteInfo *)selfCopy->_currentRoute routeID];

  if (routeID6)
  {
    v41 = selfCopy->_routeLookupLock;
    v95 = MEMORY[0x1E69E9820];
    v96 = 3221225472;
    v97 = __59__MNNavigationDetails_setCurrentRoute_withAlternateRoutes___block_invoke;
    v98 = &unk_1E8430ED8;
    v99 = selfCopy;
    geo_isolate_sync();
  }

  if (routeCopy && ([(MNActiveRouteInfo *)routeCopy routeID], v42 = objc_claimAutoreleasedReturnValue(), v42, v42))
  {
    v43 = selfCopy->_routeLookupLock;
    v89 = MEMORY[0x1E69E9820];
    v90 = 3221225472;
    v91 = __59__MNNavigationDetails_setCurrentRoute_withAlternateRoutes___block_invoke_2;
    v92 = &unk_1E8430D50;
    v93 = selfCopy;
    routeCopy = routeCopy;
    v94 = routeCopy;
    geo_isolate_sync();
  }

  else
  {
    v44 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v44, OS_LOG_TYPE_ERROR, "New route is nil or new route ID is nil! Try re-installing navd.", buf, 2u);
    }
  }

  v78 = 0;
LABEL_39:
  p_currentRoute = &v31->_currentRoute;
  if (v31->_currentRoute != routeCopy)
  {
    spokenAnnouncements = v31->_spokenAnnouncements;
    v31->_spokenAnnouncements = 0;

    route = [(MNActiveRouteInfo *)v31->_currentRoute route];
    waypoints = [route waypoints];
    v49 = [waypoints count];
    route2 = [(MNActiveRouteInfo *)routeCopy route];
    waypoints2 = [route2 waypoints];
    v52 = [waypoints2 count];

    if (v49 == v52)
    {
      route3 = [*p_currentRoute route];
      waypoints3 = [route3 waypoints];
      v55 = [waypoints3 count];

      if (v55 >= 2)
      {
        v56 = 1;
        v82 = &v31->_currentRoute;
        v83 = routeCopy;
        do
        {
          route4 = [*p_currentRoute route];
          waypoints4 = [route4 waypoints];
          v59 = [waypoints4 objectAtIndexedSubscript:v56];
          uniqueWaypointID = [v59 uniqueWaypointID];
          route5 = [(MNActiveRouteInfo *)routeCopy route];
          waypoints5 = [route5 waypoints];
          v63 = [waypoints5 objectAtIndexedSubscript:v56];
          uniqueWaypointID2 = [v63 uniqueWaypointID];
          v65 = [uniqueWaypointID isEqualToData:uniqueWaypointID2];

          v31 = selfCopy;
          if ((v65 & 1) == 0)
          {
            selfCopy->_isApproachingWaypoint = 0;
          }

          ++v56;
          p_currentRoute = v82;
          route6 = [*v82 route];
          waypoints6 = [route6 waypoints];
          v68 = [waypoints6 count];

          routeCopy = v83;
        }

        while (v56 < v68);
      }
    }
  }

  if (routeCopy)
  {
    route7 = [(MNActiveRouteInfo *)routeCopy route];

    if (route7)
    {
      objc_storeStrong(p_currentRoute, routeCopy);
      route8 = [(MNActiveRouteInfo *)routeCopy route];
      routeInitializerData = [route8 routeInitializerData];
      directionsResponse = [routeInitializerData directionsResponse];
      directionsResponse = v31->_directionsResponse;
      v31->_directionsResponse = directionsResponse;
    }
  }

  [(MNNavigationDetails *)v31 _updateRouteIDLookup];
  [(MNNavigationDetails *)v31 setAlternateRoutes:routesCopy];
  v74 = v79;
  v75 = v74;
  if (v80 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v74))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1D311E000, v75, OS_SIGNPOST_INTERVAL_END, spid, "SetCurrentRoute", "", buf, 2u);
  }

  v76 = *MEMORY[0x1E69E9840];
}

void __59__MNNavigationDetails_setCurrentRoute_withAlternateRoutes___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) routeLookup];
  v2 = [*(*(a1 + 32) + 72) routeID];
  [v3 removeObjectForKey:v2];
}

void __59__MNNavigationDetails_setCurrentRoute_withAlternateRoutes___block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) routeLookup];
  v2 = *(a1 + 40);
  v3 = [v2 routeID];
  [v4 setObject:v2 forKey:v3];
}

void __59__MNNavigationDetails_setCurrentRoute_withAlternateRoutes___block_invoke_175(uint64_t a1)
{
  v3 = [*(a1 + 32) routeLookup];
  v2 = [*(*(a1 + 32) + 72) routeID];
  [v3 removeObjectForKey:v2];
}

- (void)setPreviewRoutes:(id)routes withSelectedRouteIndex:(unint64_t)index
{
  v57 = *MEMORY[0x1E69E9840];
  routesCopy = routes;
  routesCopy2 = routes;
  v5 = MNGetMNNavigationDetailsLog();
  v6 = os_signpost_id_generate(v5);
  v7 = v5;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1D311E000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "SetPreviewRoutes", "", buf, 2u);
  }

  spid = v6;
  v34 = v8;

  self->_navigationType = 1;
  v9 = [MEMORY[0x1E695DFA8] set];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  selfCopy = self;
  p_previewRoutes = &self->_previewRoutes;
  v10 = self->_previewRoutes;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v41 objects:v56 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v42;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v42 != v13)
        {
          objc_enumerationMutation(v10);
        }

        routeID = [*(*(&v41 + 1) + 8 * i) routeID];
        if (routeID)
        {
          [v9 addObject:routeID];
        }

        else
        {
          v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Route ID of existing preview route is missing."];
          v17 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            v47 = "[MNNavigationDetails setPreviewRoutes:withSelectedRouteIndex:]";
            v48 = 2080;
            v49 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNNavigationDetails.m";
            v50 = 1024;
            v51 = 501;
            v52 = 2080;
            v53 = "routeID";
            v54 = 2112;
            v55 = v16;
            _os_log_impl(&dword_1D311E000, v17, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", buf, 0x30u);
          }
        }
      }

      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v41 objects:v56 count:16];
    }

    while (v12);
  }

  v18 = [MEMORY[0x1E695DFA8] set];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v19 = routesCopy2;
  v20 = [v19 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v38;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v38 != v22)
        {
          objc_enumerationMutation(v19);
        }

        routeID2 = [*(*(&v37 + 1) + 8 * j) routeID];
        if (routeID2)
        {
          [v18 addObject:routeID2];
        }

        else
        {
          v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Route ID of new preview route is missing."];
          v26 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            v47 = "[MNNavigationDetails setPreviewRoutes:withSelectedRouteIndex:]";
            v48 = 2080;
            v49 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNNavigationDetails.m";
            v50 = 1024;
            v51 = 511;
            v52 = 2080;
            v53 = "routeID";
            v54 = 2112;
            v55 = v25;
            _os_log_impl(&dword_1D311E000, v26, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", buf, 0x30u);
          }
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v21);
  }

  if (([v9 isEqualToSet:v18] & 1) == 0)
  {
    objc_storeStrong(p_previewRoutes, routesCopy);
  }

  selfCopy->_selectedPreviewRouteIndex = index;
  v27 = v34;
  v28 = v27;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1D311E000, v28, OS_SIGNPOST_INTERVAL_END, spid, "SetPreviewRoutes", "", buf, 2u);
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (unint64_t)segmentIndex
{
  stepIndex = [(MNNavigationDetails *)self stepIndex];
  if (stepIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = stepIndex;
  route = [(MNActiveRouteInfo *)self->_currentRoute route];
  v7 = [route segmentIndexForStepIndex:v5];

  return v7;
}

- (NSArray)previewRoutes
{
  v37 = *MEMORY[0x1E69E9840];
  if ([(NSArray *)self->_previewRoutes count])
  {
    v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_previewRoutes, "count")}];
  }

  else
  {
    v3 = 0;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = self->_previewRoutes;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v22 objects:v36 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = 0x1E696A000uLL;
    v9 = *v23;
    *&v6 = 136316162;
    v21 = v6;
    do
    {
      v10 = 0;
      do
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v22 + 1) + 8 * v10);
        route = [v11 route];

        if (!route)
        {
          v15 = v8;
          v16 = [*(v8 + 3776) stringWithFormat:@"No route in preview route info."];
          v17 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = v21;
            v27 = "[MNNavigationDetails previewRoutes]";
            v28 = 2080;
            v29 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNNavigationDetails.m";
            v30 = 1024;
            v31 = 454;
            v32 = 2080;
            v33 = "previewRouteInfo.route != nil";
            v34 = 2112;
            v35 = v16;
            _os_log_impl(&dword_1D311E000, v17, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", buf, 0x30u);
          }

          v8 = v15;
        }

        route2 = [v11 route];

        if (route2)
        {
          route3 = [v11 route];
          [v3 addObject:route3];
        }

        ++v10;
      }

      while (v7 != v10);
      v18 = [(NSArray *)v4 countByEnumeratingWithState:&v22 objects:v36 count:16];
      v7 = v18;
    }

    while (v18);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)setLocation:(id)location
{
  v30 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  routeID = [(MNLocation *)locationCopy routeID];
  if (routeID)
  {
    v6 = routeID;
    routeMatch = [(MNLocation *)locationCopy routeMatch];

    if (routeMatch)
    {
      routeID2 = [(MNLocation *)locationCopy routeID];
      v9 = [(MNNavigationDetails *)self routeInfoForID:routeID2];

      if (!v9 || ([v9 route], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error finding route for matched location"];
        v12 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v20 = 136316162;
          v21 = "[MNNavigationDetails setLocation:]";
          v22 = 2080;
          v23 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNNavigationDetails.m";
          v24 = 1024;
          v25 = 419;
          v26 = 2080;
          v27 = "routeInfo != nil && routeInfo.route != nil";
          v28 = 2112;
          v29 = v11;
          _os_log_impl(&dword_1D311E000, v12, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", &v20, 0x30u);
        }
      }

      route = [v9 route];
      routeMatch2 = [(MNLocation *)locationCopy routeMatch];
      [routeMatch2 setRoute:route];

      routeID3 = [(MNLocation *)locationCopy routeID];
      uniqueRouteID = [(GEOComposedRoute *)self->_originalRoute uniqueRouteID];
      if ([routeID3 isEqual:uniqueRouteID])
      {
        state = [(MNLocation *)locationCopy state];

        if (state != 1)
        {
LABEL_13:

          goto LABEL_14;
        }

        routeID3 = [(MNLocation *)locationCopy routeMatch];
        self->_lastOriginalRouteCoordinate = [routeID3 routeCoordinate];
      }

      else
      {
      }

      goto LABEL_13;
    }
  }

LABEL_14:
  location = self->_location;
  self->_location = locationCopy;

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_handleTrafficIncidentAlertUpdate:(id)update
{
  v32 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  trafficIncidentAlert = [updateCopy trafficIncidentAlert];
  v6 = trafficIncidentAlert;
  if (!trafficIncidentAlert || ([trafficIncidentAlert alertID], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    alertID6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(alertID6, OS_LOG_TYPE_FAULT))
    {
      alertID = [v6 alertID];
      v28 = 134218240;
      v29 = v6;
      v30 = 2048;
      v31 = alertID;
      _os_log_impl(&dword_1D311E000, alertID6, OS_LOG_TYPE_FAULT, "Received an alert callback with no valid alert (%p) or ID (%p).", &v28, 0x16u);
    }

    goto LABEL_11;
  }

  updateType = [updateCopy updateType];
  if ((updateType - 2) < 2)
  {
    trafficIncidentAlerts = self->_trafficIncidentAlerts;
    alertID2 = [v6 alertID];
    v17 = [(NSMutableDictionary *)trafficIncidentAlerts objectForKeyedSubscript:alertID2];

    if (!v17)
    {
      v18 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v28) = 0;
        _os_log_impl(&dword_1D311E000, v18, OS_LOG_TYPE_FAULT, "Attempting to remove a traffic incident alert that does not exist or was already removed.", &v28, 2u);
      }
    }

    v19 = self->_trafficIncidentAlerts;
    alertID3 = [v6 alertID];
    [(NSMutableDictionary *)v19 removeObjectForKey:alertID3];

    if (![(NSMutableDictionary *)self->_trafficIncidentAlerts count])
    {
      v21 = self->_trafficIncidentAlerts;
      self->_trafficIncidentAlerts = 0;
    }
  }

  else if (updateType == 1)
  {
    v22 = self->_trafficIncidentAlerts;
    alertID4 = [v6 alertID];
    v24 = [(NSMutableDictionary *)v22 objectForKeyedSubscript:alertID4];

    if (!v24)
    {
      v25 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v28) = 0;
        _os_log_impl(&dword_1D311E000, v25, OS_LOG_TYPE_FAULT, "Attempting to update a traffic incident alert that does not exist. Creating a new alert.", &v28, 2u);
      }
    }

    v26 = self->_trafficIncidentAlerts;
    alertID5 = [v6 alertID];
    [(NSMutableDictionary *)v26 setObject:v6 forKeyedSubscript:alertID5];
  }

  else if (!updateType)
  {
    v9 = self->_trafficIncidentAlerts;
    if (!v9)
    {
      v10 = objc_opt_new();
      v11 = self->_trafficIncidentAlerts;
      self->_trafficIncidentAlerts = v10;

      v9 = self->_trafficIncidentAlerts;
    }

    alertID6 = [v6 alertID];
    [(NSMutableDictionary *)v9 setObject:v6 forKeyedSubscript:alertID6];
LABEL_11:
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)updateWithNavigationServiceCallbackParameters:(id)parameters
{
  parametersCopy = parameters;
  type = [parametersCopy type];
  if (type <= 10)
  {
    if (type > 7)
    {
      v5 = parametersCopy;
      if (type == 8)
      {
        navTrayGuidanceEvent = [parametersCopy navTrayGuidanceEvent];
        activeNavTrayGuidanceEvent = self->_activeNavTrayGuidanceEvent;
        self->_activeNavTrayGuidanceEvent = navTrayGuidanceEvent;
      }

      else
      {
        if (type != 9)
        {
          goto LABEL_23;
        }

        resumeRouteHandle = [parametersCopy resumeRouteHandle];
        activeNavTrayGuidanceEvent = self->_resumeRouteHandle;
        self->_resumeRouteHandle = resumeRouteHandle;
      }

      goto LABEL_22;
    }

    v5 = parametersCopy;
    if (type == 1)
    {
      voiceGuidanceLevel = [parametersCopy voiceGuidanceLevel];
      v5 = parametersCopy;
      self->_voiceGuidanceLevel = voiceGuidanceLevel;
      goto LABEL_23;
    }

    if (type != 7)
    {
      goto LABEL_23;
    }

    location = [parametersCopy location];
    [(MNNavigationDetails *)self setLocation:location];
    goto LABEL_17;
  }

  if (type <= 12)
  {
    if (type == 11)
    {
      v21 = parametersCopy;
      self->_targetLegIndex = [v21 targetLegIndex];
      targetLegIndex = [v21 targetLegIndex];

      [(MNArrivalInfo *)self->_arrivalInfo setLegIndex:targetLegIndex];
    }

    else
    {
      [(MNNavigationDetails *)self _handleTrafficIncidentAlertUpdate:parametersCopy];
    }

    goto LABEL_22;
  }

  v5 = parametersCopy;
  if (type != 13)
  {
    if (type != 16)
    {
      goto LABEL_23;
    }

    location = parametersCopy;
    routeInfo = [location routeInfo];
    route = [routeInfo route];
    [(MNNavigationDetails *)self setCurrentRoute:routeInfo withAlternateRoutes:0];
    self->_desiredNavigationType = [location navigationType];
    self->_navigationType = [location navigationType];
    self->_simulationType = [location simulationType];
    self->_initialRouteSource = [location initialRouteSource];
    routeInitializerData = [route routeInitializerData];
    directionsRequest = [routeInitializerData directionsRequest];
    directionsRequest = self->_directionsRequest;
    self->_directionsRequest = directionsRequest;

    routeInitializerData2 = [route routeInitializerData];
    directionsResponse = [routeInitializerData2 directionsResponse];
    directionsResponse = self->_directionsResponse;
    self->_directionsResponse = directionsResponse;

    if (!self->_isServer)
    {
      objc_storeStrong(&self->_originalRoute, route);
    }

    voiceLanguage = [location voiceLanguage];
    v18 = [voiceLanguage copy];
    currentVoiceLanguage = self->_currentVoiceLanguage;
    self->_currentVoiceLanguage = v18;

    self->_isResumingMultipointRoute = [location isResumingMultiStopRoute];
LABEL_17:

LABEL_22:
    v5 = parametersCopy;
    goto LABEL_23;
  }

  anchorPointIndex = [parametersCopy anchorPointIndex];
  v5 = parametersCopy;
  self->_upcomingAnchorPointIndex = anchorPointIndex;
LABEL_23:
}

- (void)copySerializableValuesFrom:(id)from
{
  v31 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy)
  {
    self->_state = [fromCopy state];
    self->_navigationType = [v5 navigationType];
    self->_desiredNavigationType = [v5 desiredNavigationType];
    self->_desiredTransportType = [v5 desiredTransportType];
    self->_initialRouteSource = [v5 initialRouteSource];
    self->_guidancePromptsEnabled = [v5 guidancePromptsEnabled];
    self->_navigationState = [v5 navigationState];
    [v5 proceedToRouteDistance];
    self->_proceedToRouteDistance = v6;
    displayString = [v5 displayString];
    displayString = self->_displayString;
    self->_displayString = displayString;

    self->_closestStepIndex = [v5 closestStepIndex];
    [v5 distanceUntilSign];
    self->_distanceUntilSign = v9;
    [v5 timeUntilSign];
    self->_timeUntilSign = v10;
    [v5 distanceUntilManeuver];
    self->_distanceUntilManeuver = v11;
    [v5 timeUntilManeuver];
    self->_timeUntilManeuver = v12;
    currentVoiceLanguage = [v5 currentVoiceLanguage];
    currentVoiceLanguage = self->_currentVoiceLanguage;
    self->_currentVoiceLanguage = currentVoiceLanguage;

    self->_voiceGuidanceLevel = *(v5 + 38);
    self->_routeIndex = [v5 routeIndex];
    self->_selectedPreviewRouteIndex = [v5 selectedPreviewRouteIndex];
    objc_storeStrong(&self->_previewRoutes, *(v5 + 10));
    self->_lastOriginalRouteCoordinate = *(v5 + 27);
    self->_targetLegIndex = *(v5 + 12);
    self->_upcomingAnchorPointIndex = *(v5 + 28);
    self->_displayedStepIndex = *(v5 + 29);
    self->_isResumingMultipointRoute = *(v5 + 153);
    self->_isApproachingWaypoint = *(v5 + 154);
    objc_storeStrong(&self->_activeLaneInfo, *(v5 + 39));
    objc_storeStrong(&self->_activeNavTrayGuidanceEvent, *(v5 + 40));
    objc_storeStrong(&self->_arrivalInfo, *(v5 + 41));
    objc_storeStrong(&self->_backgroundWalkingRouteInfo, *(v5 + 42));
    objc_storeStrong(&self->_vehicleParkingInfo, *(v5 + 43));
    objc_storeStrong(&self->_resumeRouteHandle, *(v5 + 13));
    v15 = *(v5 + 9);
    if (v15)
    {
      [(MNNavigationDetails *)self setCurrentRoute:v15 withAlternateRoutes:*(v5 + 11)];
    }

    else
    {
      currentRoute = self->_currentRoute;
      self->_currentRoute = 0;

      alternateRoutes = self->_alternateRoutes;
      self->_alternateRoutes = 0;

      [(NSMapTable *)self->_routeIDLookup removeAllObjects];
    }

    objc_storeStrong(&self->_tracePath, *(v5 + 44));
    objc_storeStrong(&self->_traceBookmarks, *(v5 + 47));
    self->_traceDuration = *(v5 + 45);
    self->_tracePosition = *(v5 + 46);
    self->_traceIsPlaying = *(v5 + 157);
    self->_simulationType = *(v5 + 48);
  }

  else
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Attempting to copy nil navigation details"];
    v20 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = 136316162;
      v22 = "[MNNavigationDetails copySerializableValuesFrom:]";
      v23 = 2080;
      v24 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNNavigationDetails.m";
      v25 = 1024;
      v26 = 240;
      v27 = 2080;
      v28 = "other";
      v29 = 2112;
      v30 = v19;
      _os_log_impl(&dword_1D311E000, v20, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", &v21, 0x30u);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MNGetMNNavigationDetailsLog();
  v6 = os_signpost_id_generate(v5);
  v7 = v5;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1D311E000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "NavigationDetailsEncoding", "", buf, 2u);
  }

  [coderCopy encodeInteger:-[MNNavigationDetails state](self forKey:{"state"), @"State"}];
  [coderCopy encodeInteger:self->_desiredNavigationType forKey:@"_desiredNavigationType"];
  [coderCopy encodeInteger:self->_navigationType forKey:@"_navigationType"];
  [coderCopy encodeInteger:self->_desiredTransportType forKey:@"_desiredTransportType"];
  [coderCopy encodeInteger:self->_initialRouteSource forKey:@"_initialRouteSource"];
  [coderCopy encodeBool:-[MNNavigationDetails guidancePromptsEnabled](self forKey:{"guidancePromptsEnabled"), @"GuidancePromptsEnabled"}];
  [coderCopy encodeInt32:-[MNNavigationDetails navigationState](self forKey:{"navigationState"), @"NavigationState"}];
  [(MNNavigationDetails *)self proceedToRouteDistance];
  [coderCopy encodeDouble:@"ProceedToRouteDistance" forKey:?];
  displayString = [(MNNavigationDetails *)self displayString];

  if (displayString)
  {
    displayString2 = [(MNNavigationDetails *)self displayString];
    [coderCopy encodeObject:displayString2 forKey:@"DisplayString"];
  }

  [coderCopy encodeInteger:-[MNNavigationDetails closestStepIndex](self forKey:{"closestStepIndex"), @"ClosestStepIndex"}];
  [(MNNavigationDetails *)self distanceUntilSign];
  [coderCopy encodeDouble:@"DistanceUntilSign" forKey:?];
  [(MNNavigationDetails *)self timeUntilSign];
  [coderCopy encodeDouble:@"TimeUntilSign" forKey:?];
  [(MNNavigationDetails *)self distanceUntilManeuver];
  [coderCopy encodeDouble:@"DistanceUntilManeuver" forKey:?];
  [(MNNavigationDetails *)self timeUntilManeuver];
  [coderCopy encodeDouble:@"TimeUntilManeuver" forKey:?];
  currentVoiceLanguage = [(MNNavigationDetails *)self currentVoiceLanguage];

  if (currentVoiceLanguage)
  {
    currentVoiceLanguage2 = [(MNNavigationDetails *)self currentVoiceLanguage];
    [coderCopy encodeObject:currentVoiceLanguage2 forKey:@"CurrentVoiceLanguage"];
  }

  [coderCopy encodeInteger:self->_voiceGuidanceLevel forKey:@"_voiceGuidanceLevel"];
  currentRoute = self->_currentRoute;
  if (currentRoute)
  {
    [coderCopy encodeObject:currentRoute forKey:@"CurrentRoute"];
  }

  [coderCopy encodeInteger:-[MNNavigationDetails routeIndex](self forKey:{"routeIndex"), @"RouteIndex"}];
  [coderCopy encodeObject:self->_alternateRoutes forKey:@"AlternateRoutes"];
  [coderCopy encodeObject:self->_previewRoutes forKey:@"PreviewRoutes"];
  [coderCopy encodeInteger:-[MNNavigationDetails selectedPreviewRouteIndex](self forKey:{"selectedPreviewRouteIndex"), @"SelectePreviewRouteIndex"}];
  [coderCopy encodeBytes:&self->_lastOriginalRouteCoordinate length:8 forKey:@"_lastOriginalRouteCoordinate"];
  [coderCopy encodeInteger:self->_targetLegIndex forKey:@"_targetLegIndex"];
  [coderCopy encodeInteger:self->_upcomingAnchorPointIndex forKey:@"_upcomingAnchorPointIndex"];
  if ([(MNNavigationDetails *)self displayedStepIndex]== 0x7FFFFFFFFFFFFFFFLL)
  {
    displayedStepIndex = -1;
  }

  else
  {
    displayedStepIndex = [(MNNavigationDetails *)self displayedStepIndex];
  }

  [coderCopy encodeInteger:displayedStepIndex forKey:@"DisplayedStepIndex"];
  [coderCopy encodeObject:self->_activeLaneInfo forKey:@"_activeLaneInfo"];
  [coderCopy encodeObject:self->_activeNavTrayGuidanceEvent forKey:@"_activeNavTrayGuidanceEvent"];
  [coderCopy encodeObject:self->_arrivalInfo forKey:@"_arrivalInfo"];
  [coderCopy encodeObject:self->_backgroundWalkingRouteInfo forKey:@"_backgroundWalkingRouteInfo"];
  [coderCopy encodeObject:self->_vehicleParkingInfo forKey:@"_vehicleParkingInfo"];
  [coderCopy encodeObject:self->_resumeRouteHandle forKey:@"_resumeRouteHandle"];
  [coderCopy encodeObject:self->_tracePath forKey:@"_tracePath"];
  [coderCopy encodeObject:self->_traceBookmarks forKey:@"_traceBookmarks"];
  [coderCopy encodeDouble:@"_traceDuration" forKey:self->_traceDuration];
  [coderCopy encodeDouble:@"_tracePosition" forKey:self->_tracePosition];
  [coderCopy encodeBool:self->_traceIsPlaying forKey:@"_traceIsPlaying"];
  [coderCopy encodeInteger:self->_simulationType forKey:@"_simulationType"];
  [coderCopy encodeBool:self->_isResumingMultipointRoute forKey:@"_isResumingMultipointRoute"];
  [coderCopy encodeBool:self->_isApproachingWaypoint forKey:@"_isApproachingWaypoint"];
  v15 = v8;
  v16 = v15;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *v17 = 0;
    _os_signpost_emit_with_name_impl(&dword_1D311E000, v16, OS_SIGNPOST_INTERVAL_END, v6, "NavigationDetailsEncoding", "", v17, 2u);
  }
}

- (MNNavigationDetails)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MNGetMNNavigationDetailsLog();
  v6 = os_signpost_id_generate(v5);
  v7 = v5;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1D311E000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "NavigationDetailsDecoding", "", buf, 2u);
  }

  v60.receiver = self;
  v60.super_class = MNNavigationDetails;
  v9 = [(MNNavigationDetails *)&v60 init];
  if (v9)
  {
    v9->_state = [coderCopy decodeIntegerForKey:@"State"];
    v9->_desiredNavigationType = [coderCopy decodeIntegerForKey:@"_desiredNavigationType"];
    v9->_navigationType = [coderCopy decodeIntegerForKey:@"_navigationType"];
    v9->_desiredTransportType = [coderCopy decodeIntegerForKey:@"_desiredTransportType"];
    v9->_initialRouteSource = [coderCopy decodeIntegerForKey:@"_initialRouteSource"];
    v9->_guidancePromptsEnabled = [coderCopy decodeBoolForKey:@"GuidancePromptsEnabled"];
    v9->_navigationState = [coderCopy decodeInt32ForKey:@"NavigationState"];
    [coderCopy decodeDoubleForKey:@"ProceedToRouteDistance"];
    v9->_proceedToRouteDistance = v10;
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DisplayString"];
    displayString = v9->_displayString;
    v9->_displayString = v11;

    v9->_closestStepIndex = [coderCopy decodeIntegerForKey:@"ClosestStepIndex"];
    [coderCopy decodeDoubleForKey:@"DistanceUntilSign"];
    v9->_distanceUntilSign = v13;
    [coderCopy decodeDoubleForKey:@"TimeUntilSign"];
    v9->_timeUntilSign = v14;
    [coderCopy decodeDoubleForKey:@"DistanceUntilManeuver"];
    v9->_distanceUntilManeuver = v15;
    [coderCopy decodeDoubleForKey:@"TimeUntilManeuver"];
    v9->_timeUntilManeuver = v16;
    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CurrentVoiceLanguage"];
    currentVoiceLanguage = v9->_currentVoiceLanguage;
    v9->_currentVoiceLanguage = v17;

    v9->_voiceGuidanceLevel = [coderCopy decodeIntegerForKey:@"_voiceGuidanceLevel"];
    v9->_routeIndex = [coderCopy decodeIntegerForKey:@"RouteIndex"];
    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CurrentRoute"];
    currentRoute = v9->_currentRoute;
    v9->_currentRoute = v19;

    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"AlternateRoutes"];
    alternateRoutes = v9->_alternateRoutes;
    v9->_alternateRoutes = v24;

    v26 = MEMORY[0x1E695DFD8];
    v27 = objc_opt_class();
    v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
    v29 = [coderCopy decodeObjectOfClasses:v28 forKey:@"AlternateRoutes"];
    previewRoutes = v9->_previewRoutes;
    v9->_previewRoutes = v29;

    v9->_selectedPreviewRouteIndex = [coderCopy decodeIntegerForKey:@"SelectePreviewRouteIndex"];
    *buf = 0;
    v31 = [coderCopy decodeBytesForKey:@"_lastOriginalRouteCoordinate" returnedLength:buf];
    if (*buf && v31)
    {
      if (*buf >= 8uLL)
      {
        v32 = 8;
      }

      else
      {
        v32 = *buf;
      }

      memcpy(&v9->_lastOriginalRouteCoordinate, v31, v32);
    }

    v9->_targetLegIndex = [coderCopy decodeIntegerForKey:@"_targetLegIndex"];
    v9->_upcomingAnchorPointIndex = [coderCopy decodeIntegerForKey:@"_upcomingAnchorPointIndex"];
    v33 = [coderCopy decodeIntegerForKey:@"DisplayedStepIndex"];
    v34 = 0x7FFFFFFFFFFFFFFFLL;
    if (v33 >= 0)
    {
      v34 = v33;
    }

    v9->_displayedStepIndex = v34;
    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_activeLaneInfo"];
    activeLaneInfo = v9->_activeLaneInfo;
    v9->_activeLaneInfo = v35;

    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_activeNavTrayGuidanceEvent"];
    activeNavTrayGuidanceEvent = v9->_activeNavTrayGuidanceEvent;
    v9->_activeNavTrayGuidanceEvent = v37;

    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_arrivalInfo"];
    arrivalInfo = v9->_arrivalInfo;
    v9->_arrivalInfo = v39;

    v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backgroundWalkingRouteInfo"];
    backgroundWalkingRouteInfo = v9->_backgroundWalkingRouteInfo;
    v9->_backgroundWalkingRouteInfo = v41;

    v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_vehicleParkingInfo"];
    vehicleParkingInfo = v9->_vehicleParkingInfo;
    v9->_vehicleParkingInfo = v43;

    v45 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_resumeRouteHandle"];
    resumeRouteHandle = v9->_resumeRouteHandle;
    v9->_resumeRouteHandle = v45;

    v47 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_tracePath"];
    tracePath = v9->_tracePath;
    v9->_tracePath = v47;

    v49 = MEMORY[0x1E695DFD8];
    v50 = objc_opt_class();
    v51 = [v49 setWithObjects:{v50, objc_opt_class(), 0}];
    v52 = [coderCopy decodeObjectOfClasses:v51 forKey:@"_traceBookmarks"];
    traceBookmarks = v9->_traceBookmarks;
    v9->_traceBookmarks = v52;

    [coderCopy decodeDoubleForKey:@"_traceDuration"];
    v9->_traceDuration = v54;
    [coderCopy decodeDoubleForKey:@"_tracePosition"];
    v9->_tracePosition = v55;
    v9->_traceIsPlaying = [coderCopy decodeBoolForKey:@"_traceIsPlaying"];
    v9->_simulationType = [coderCopy decodeIntegerForKey:@"_simulationType"];
    v9->_isResumingMultipointRoute = [coderCopy decodeBoolForKey:@"_isResumingMultipointRoute"];
    v9->_isApproachingWaypoint = [coderCopy decodeBoolForKey:@"_isApproachingWaypoint"];
  }

  v56 = v8;
  v57 = v56;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v56))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1D311E000, v57, OS_SIGNPOST_INTERVAL_END, v6, "NavigationDetailsDecoding", "", buf, 2u);
  }

  return v9;
}

- (id)initForServer:(BOOL)server
{
  v13.receiver = self;
  v13.super_class = MNNavigationDetails;
  v4 = [(MNNavigationDetails *)&v13 init];
  v5 = v4;
  if (v4)
  {
    v4->_isServer = server;
    v4->_navigationType = 0;
    v4->_desiredNavigationType = 0;
    v4->_state = 0;
    v4->_desiredTransportType = 4;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    routeLookup = v5->_routeLookup;
    v5->_routeLookup = dictionary;

    v8 = geo_isolater_create();
    routeLookupLock = v5->_routeLookupLock;
    v5->_routeLookupLock = v8;

    v5->_lastOriginalRouteCoordinate = *MEMORY[0x1E69A1918];
    v5->_targetLegIndex = 0x7FFFFFFFFFFFFFFFLL;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    *&v5->_upcomingAnchorPointIndex = vnegq_f64(v10);
    v5->_simulationType = 0;
    v11 = v5;
  }

  return v5;
}

@end