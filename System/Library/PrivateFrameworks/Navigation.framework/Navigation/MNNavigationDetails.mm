@interface MNNavigationDetails
- (BOOL)isFollowingOriginalRoute;
- (MNNavigationDetails)initWithCoder:(id)a3;
- (NSArray)alternateRoutes;
- (NSArray)previewRoutes;
- (NSMapTable)routeIDLookup;
- (id)description;
- (id)initForServer:(BOOL)a3;
- (id)routeInfoForID:(id)a3;
- (id)routeInfoForRoute:(id)a3;
- (id)routeLookupIDs;
- (unint64_t)segmentIndex;
- (void)_handleTrafficIncidentAlertUpdate:(id)a3;
- (void)_updateRouteIDLookup;
- (void)copySerializableValuesFrom:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)markAnnouncementSpoken:(id)a3;
- (void)setAlternateRoutes:(id)a3;
- (void)setCurrentRoute:(id)a3 withAlternateRoutes:(id)a4;
- (void)setLocation:(id)a3;
- (void)setPreviewRoutes:(id)a3 withSelectedRouteIndex:(unint64_t)a4;
- (void)updateETATrafficForRoute:(id)a3;
- (void)updateWithNavigationServiceCallbackParameters:(id)a3;
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
        v12 = [v11 route];

        if (!v12)
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

        v13 = [v11 route];

        if (v13)
        {
          v14 = [v11 route];
          [v3 addObject:v14];
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
  v17 = [(MNNavigationDetails *)self state];
  v4 = [(MNNavigationDetails *)self desiredNavigationType];
  if ((v4 - 1) > 3)
  {
    v5 = @"None";
  }

  else
  {
    v5 = *(&off_1E842FDC8 + v4 - 1);
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

  v8 = [(MNNavigationDetails *)self location];
  v9 = [(MNNavigationDetails *)self guidancePromptsEnabled];
  v10 = [(MNNavigationDetails *)self isDetour];
  v11 = [(MNNavigationDetails *)self navigationState];
  if (v11 >= 9)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v11];
  }

  else
  {
    v12 = *(&off_1E842FDE8 + v11);
  }

  v13 = [(MNNavigationDetails *)self guidanceState];
  v14 = [v18 stringWithFormat:@"%@ [state=%lu, \n             desiredNavigationType:%@, \n             navigationType=%@, \n             location=%@, \n             guidancePromptsEnabled=%d, \n             isDetour=%d, \n             navigationState=%@, \n             guidanceState=%@, \n             reconnectionRouteIndex=%lu, \n             stepIndex=%lu, \n             segmentIndex=%lu]", v3, v17, v16, v7, v8, v9, v10, v12, v13, -[MNNavigationDetails reconnectionRouteIndex](self, "reconnectionRouteIndex"), -[MNNavigationDetails stepIndex](self, "stepIndex"), -[MNNavigationDetails segmentIndex](self, "segmentIndex")];

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
  v3 = [(MNNavigationDetails *)self routeIDLookup];
  [v3 removeAllObjects];
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
  v13 = self;
  v14 = &v15;
  geo_isolate_sync();
  v5 = v16[5];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__MNNavigationDetails__updateRouteIDLookup__block_invoke_2;
  v7[3] = &unk_1E842FDA8;
  v6 = v3;
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

- (void)markAnnouncementSpoken:(id)a3
{
  v4 = a3;
  if (v4)
  {
    spokenAnnouncements = self->_spokenAnnouncements;
    v8 = v4;
    if (!spokenAnnouncements)
    {
      v6 = [MEMORY[0x1E695DF70] array];
      v7 = self->_spokenAnnouncements;
      self->_spokenAnnouncements = v6;

      spokenAnnouncements = self->_spokenAnnouncements;
    }

    [(NSMutableArray *)spokenAnnouncements addObject:v8];
    v4 = v8;
  }
}

- (BOOL)isFollowingOriginalRoute
{
  v3 = [(MNNavigationDetails *)self originalRoute];
  v4 = [v3 uniqueRouteID];
  v5 = [(MNNavigationDetails *)self currentRoute];
  v6 = [v5 uniqueRouteID];
  v7 = [v4 isEqual:v6];

  return v7;
}

- (id)routeInfoForRoute:(id)a3
{
  v4 = [(NSMapTable *)self->_routeIDLookup objectForKey:a3];
  v5 = [(MNNavigationDetails *)self routeInfoForID:v4];

  return v5;
}

- (id)routeInfoForID:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__15833;
  v13 = __Block_byref_object_dispose__15834;
  v14 = 0;
  routeLookupLock = self->_routeLookupLock;
  v8 = v4;
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

- (void)updateETATrafficForRoute:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 routeID];
  v6 = [(MNNavigationDetails *)self routeInfoForID:v5];

  if (v6)
  {
    v7 = [v4 etaRoute];
    v8 = [v4 etaResponse];
    [v6 updateWithETARoute:v7 etaResponse:v8];

    v9 = [v4 route];
    v10 = [v9 mutableData];
    v11 = [v6 route];
    [v11 setMutableData:v10];
  }

  else
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Expected an existing route but did not find it"];
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
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
      v22 = v9;
      _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", &v13, 0x30u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)setAlternateRoutes:(id)a3
{
  v100 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
  v81 = self;
  v82 = buf;
  geo_isolate_sync();
  v10 = [(MNActiveRouteInfo *)self->_currentRoute routeID];

  if (v10)
  {
    v11 = *(v84 + 5);
    v12 = [(MNActiveRouteInfo *)self->_currentRoute routeID];
    [v11 removeObject:v12];
  }

  else
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v96 = 136315650;
      *&v96[4] = "[MNNavigationDetails setAlternateRoutes:]";
      *&v96[12] = 2080;
      *&v96[14] = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNNavigationDetails.m";
      *&v96[22] = 1024;
      LODWORD(v97) = 617;
      _os_log_impl(&dword_1D311E000, v12, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: Hit an unreachable code path", v96, 0x1Cu);
    }
  }

  v13 = [MEMORY[0x1E695DFA8] set];
  v14 = [MEMORY[0x1E695DF70] array];
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = v4;
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
        v20 = [v19 routeID];
        v21 = v20 == 0;

        if (v21)
        {
          v26 = [v19 routeID];
          v27 = v26 == 0;

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
          v22 = [v19 routeID];
          [v13 addObject:v22];

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
          v70 = self;
          geo_isolate_sync();
          if (*(*&v96[8] + 40))
          {
            v24 = [v19 displayETAInfo];
            [*(*&v96[8] + 40) setDisplayETAInfo:v24];

            v25 = [v19 remainingDistanceInfo];
            [*(*&v96[8] + 40) setRemainingDistanceInfo:v25];
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
              v64 = self;
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

          [v14 addObject:*(*&v96[8] + 40)];
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
  v58 = self;
  v59 = buf;
  geo_isolate_sync();
  objc_storeStrong(&self->_alternateRoutes, v14);
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

- (void)setCurrentRoute:(id)a3 withAlternateRoutes:(id)a4
{
  v116 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v81 = a4;
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
  v84 = self;
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
        v17 = [v16 routeID];

        if (!v17)
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

        v18 = [v16 routeID];
        v19 = v6;
        v20 = [(MNActiveRouteInfo *)v6 routeID];
        v21 = [v18 isEqual:v20];

        if (v21)
        {
          v25 = v16;

          v6 = v19;
          if (!v25)
          {
            goto LABEL_28;
          }

          v26 = [(MNActiveRouteInfo *)v19 displayETAInfo];
          [v25 setDisplayETAInfo:v26];

          v27 = [(MNActiveRouteInfo *)v19 remainingDistanceInfo];
          [v25 setRemainingDistanceInfo:v27];

          v28 = v25;
          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          v29 = v81;
          v30 = [v29 countByEnumeratingWithState:&v85 objects:v104 count:16];
          v31 = v84;
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
                v36 = [(MNActiveRouteInfo *)v84->_currentRoute routeID];
                v37 = [v35 routeID];
                v38 = [v36 isEqual:v37];

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

          routeLookupLock = v84->_routeLookupLock;
          geo_isolate_sync();
LABEL_38:
          v6 = v28;
          goto LABEL_39;
        }

        ++v15;
        v6 = v19;
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
  v31 = v84;
  v40 = [(MNActiveRouteInfo *)v84->_currentRoute routeID];

  if (v40)
  {
    v41 = v84->_routeLookupLock;
    v95 = MEMORY[0x1E69E9820];
    v96 = 3221225472;
    v97 = __59__MNNavigationDetails_setCurrentRoute_withAlternateRoutes___block_invoke;
    v98 = &unk_1E8430ED8;
    v99 = v84;
    geo_isolate_sync();
  }

  if (v6 && ([(MNActiveRouteInfo *)v6 routeID], v42 = objc_claimAutoreleasedReturnValue(), v42, v42))
  {
    v43 = v84->_routeLookupLock;
    v89 = MEMORY[0x1E69E9820];
    v90 = 3221225472;
    v91 = __59__MNNavigationDetails_setCurrentRoute_withAlternateRoutes___block_invoke_2;
    v92 = &unk_1E8430D50;
    v93 = v84;
    v6 = v6;
    v94 = v6;
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
  if (v31->_currentRoute != v6)
  {
    spokenAnnouncements = v31->_spokenAnnouncements;
    v31->_spokenAnnouncements = 0;

    v47 = [(MNActiveRouteInfo *)v31->_currentRoute route];
    v48 = [v47 waypoints];
    v49 = [v48 count];
    v50 = [(MNActiveRouteInfo *)v6 route];
    v51 = [v50 waypoints];
    v52 = [v51 count];

    if (v49 == v52)
    {
      v53 = [*p_currentRoute route];
      v54 = [v53 waypoints];
      v55 = [v54 count];

      if (v55 >= 2)
      {
        v56 = 1;
        v82 = &v31->_currentRoute;
        v83 = v6;
        do
        {
          v57 = [*p_currentRoute route];
          v58 = [v57 waypoints];
          v59 = [v58 objectAtIndexedSubscript:v56];
          v60 = [v59 uniqueWaypointID];
          v61 = [(MNActiveRouteInfo *)v6 route];
          v62 = [v61 waypoints];
          v63 = [v62 objectAtIndexedSubscript:v56];
          v64 = [v63 uniqueWaypointID];
          v65 = [v60 isEqualToData:v64];

          v31 = v84;
          if ((v65 & 1) == 0)
          {
            v84->_isApproachingWaypoint = 0;
          }

          ++v56;
          p_currentRoute = v82;
          v66 = [*v82 route];
          v67 = [v66 waypoints];
          v68 = [v67 count];

          v6 = v83;
        }

        while (v56 < v68);
      }
    }
  }

  if (v6)
  {
    v69 = [(MNActiveRouteInfo *)v6 route];

    if (v69)
    {
      objc_storeStrong(p_currentRoute, v6);
      v70 = [(MNActiveRouteInfo *)v6 route];
      v71 = [v70 routeInitializerData];
      v72 = [v71 directionsResponse];
      directionsResponse = v31->_directionsResponse;
      v31->_directionsResponse = v72;
    }
  }

  [(MNNavigationDetails *)v31 _updateRouteIDLookup];
  [(MNNavigationDetails *)v31 setAlternateRoutes:v81];
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

- (void)setPreviewRoutes:(id)a3 withSelectedRouteIndex:(unint64_t)a4
{
  v57 = *MEMORY[0x1E69E9840];
  v32 = a3;
  v33 = a3;
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
  v35 = self;
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

        v15 = [*(*(&v41 + 1) + 8 * i) routeID];
        if (v15)
        {
          [v9 addObject:v15];
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
  v19 = v33;
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

        v24 = [*(*(&v37 + 1) + 8 * j) routeID];
        if (v24)
        {
          [v18 addObject:v24];
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
    objc_storeStrong(p_previewRoutes, v32);
  }

  v35->_selectedPreviewRouteIndex = a4;
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
  v3 = [(MNNavigationDetails *)self stepIndex];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = v3;
  v6 = [(MNActiveRouteInfo *)self->_currentRoute route];
  v7 = [v6 segmentIndexForStepIndex:v5];

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
        v12 = [v11 route];

        if (!v12)
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

        v13 = [v11 route];

        if (v13)
        {
          v14 = [v11 route];
          [v3 addObject:v14];
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

- (void)setLocation:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MNLocation *)v4 routeID];
  if (v5)
  {
    v6 = v5;
    v7 = [(MNLocation *)v4 routeMatch];

    if (v7)
    {
      v8 = [(MNLocation *)v4 routeID];
      v9 = [(MNNavigationDetails *)self routeInfoForID:v8];

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

      v13 = [v9 route];
      v14 = [(MNLocation *)v4 routeMatch];
      [v14 setRoute:v13];

      v15 = [(MNLocation *)v4 routeID];
      v16 = [(GEOComposedRoute *)self->_originalRoute uniqueRouteID];
      if ([v15 isEqual:v16])
      {
        v17 = [(MNLocation *)v4 state];

        if (v17 != 1)
        {
LABEL_13:

          goto LABEL_14;
        }

        v15 = [(MNLocation *)v4 routeMatch];
        self->_lastOriginalRouteCoordinate = [v15 routeCoordinate];
      }

      else
      {
      }

      goto LABEL_13;
    }
  }

LABEL_14:
  location = self->_location;
  self->_location = v4;

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_handleTrafficIncidentAlertUpdate:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 trafficIncidentAlert];
  v6 = v5;
  if (!v5 || ([v5 alertID], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      v13 = [v6 alertID];
      v28 = 134218240;
      v29 = v6;
      v30 = 2048;
      v31 = v13;
      _os_log_impl(&dword_1D311E000, v12, OS_LOG_TYPE_FAULT, "Received an alert callback with no valid alert (%p) or ID (%p).", &v28, 0x16u);
    }

    goto LABEL_11;
  }

  v8 = [v4 updateType];
  if ((v8 - 2) < 2)
  {
    trafficIncidentAlerts = self->_trafficIncidentAlerts;
    v16 = [v6 alertID];
    v17 = [(NSMutableDictionary *)trafficIncidentAlerts objectForKeyedSubscript:v16];

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
    v20 = [v6 alertID];
    [(NSMutableDictionary *)v19 removeObjectForKey:v20];

    if (![(NSMutableDictionary *)self->_trafficIncidentAlerts count])
    {
      v21 = self->_trafficIncidentAlerts;
      self->_trafficIncidentAlerts = 0;
    }
  }

  else if (v8 == 1)
  {
    v22 = self->_trafficIncidentAlerts;
    v23 = [v6 alertID];
    v24 = [(NSMutableDictionary *)v22 objectForKeyedSubscript:v23];

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
    v27 = [v6 alertID];
    [(NSMutableDictionary *)v26 setObject:v6 forKeyedSubscript:v27];
  }

  else if (!v8)
  {
    v9 = self->_trafficIncidentAlerts;
    if (!v9)
    {
      v10 = objc_opt_new();
      v11 = self->_trafficIncidentAlerts;
      self->_trafficIncidentAlerts = v10;

      v9 = self->_trafficIncidentAlerts;
    }

    v12 = [v6 alertID];
    [(NSMutableDictionary *)v9 setObject:v6 forKeyedSubscript:v12];
LABEL_11:
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)updateWithNavigationServiceCallbackParameters:(id)a3
{
  v25 = a3;
  v4 = [v25 type];
  if (v4 <= 10)
  {
    if (v4 > 7)
    {
      v5 = v25;
      if (v4 == 8)
      {
        v23 = [v25 navTrayGuidanceEvent];
        activeNavTrayGuidanceEvent = self->_activeNavTrayGuidanceEvent;
        self->_activeNavTrayGuidanceEvent = v23;
      }

      else
      {
        if (v4 != 9)
        {
          goto LABEL_23;
        }

        v7 = [v25 resumeRouteHandle];
        activeNavTrayGuidanceEvent = self->_resumeRouteHandle;
        self->_resumeRouteHandle = v7;
      }

      goto LABEL_22;
    }

    v5 = v25;
    if (v4 == 1)
    {
      v20 = [v25 voiceGuidanceLevel];
      v5 = v25;
      self->_voiceGuidanceLevel = v20;
      goto LABEL_23;
    }

    if (v4 != 7)
    {
      goto LABEL_23;
    }

    v6 = [v25 location];
    [(MNNavigationDetails *)self setLocation:v6];
    goto LABEL_17;
  }

  if (v4 <= 12)
  {
    if (v4 == 11)
    {
      v21 = v25;
      self->_targetLegIndex = [v21 targetLegIndex];
      v22 = [v21 targetLegIndex];

      [(MNArrivalInfo *)self->_arrivalInfo setLegIndex:v22];
    }

    else
    {
      [(MNNavigationDetails *)self _handleTrafficIncidentAlertUpdate:v25];
    }

    goto LABEL_22;
  }

  v5 = v25;
  if (v4 != 13)
  {
    if (v4 != 16)
    {
      goto LABEL_23;
    }

    v6 = v25;
    v9 = [v6 routeInfo];
    v10 = [v9 route];
    [(MNNavigationDetails *)self setCurrentRoute:v9 withAlternateRoutes:0];
    self->_desiredNavigationType = [v6 navigationType];
    self->_navigationType = [v6 navigationType];
    self->_simulationType = [v6 simulationType];
    self->_initialRouteSource = [v6 initialRouteSource];
    v11 = [v10 routeInitializerData];
    v12 = [v11 directionsRequest];
    directionsRequest = self->_directionsRequest;
    self->_directionsRequest = v12;

    v14 = [v10 routeInitializerData];
    v15 = [v14 directionsResponse];
    directionsResponse = self->_directionsResponse;
    self->_directionsResponse = v15;

    if (!self->_isServer)
    {
      objc_storeStrong(&self->_originalRoute, v10);
    }

    v17 = [v6 voiceLanguage];
    v18 = [v17 copy];
    currentVoiceLanguage = self->_currentVoiceLanguage;
    self->_currentVoiceLanguage = v18;

    self->_isResumingMultipointRoute = [v6 isResumingMultiStopRoute];
LABEL_17:

LABEL_22:
    v5 = v25;
    goto LABEL_23;
  }

  v24 = [v25 anchorPointIndex];
  v5 = v25;
  self->_upcomingAnchorPointIndex = v24;
LABEL_23:
}

- (void)copySerializableValuesFrom:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    self->_state = [v4 state];
    self->_navigationType = [v5 navigationType];
    self->_desiredNavigationType = [v5 desiredNavigationType];
    self->_desiredTransportType = [v5 desiredTransportType];
    self->_initialRouteSource = [v5 initialRouteSource];
    self->_guidancePromptsEnabled = [v5 guidancePromptsEnabled];
    self->_navigationState = [v5 navigationState];
    [v5 proceedToRouteDistance];
    self->_proceedToRouteDistance = v6;
    v7 = [v5 displayString];
    displayString = self->_displayString;
    self->_displayString = v7;

    self->_closestStepIndex = [v5 closestStepIndex];
    [v5 distanceUntilSign];
    self->_distanceUntilSign = v9;
    [v5 timeUntilSign];
    self->_timeUntilSign = v10;
    [v5 distanceUntilManeuver];
    self->_distanceUntilManeuver = v11;
    [v5 timeUntilManeuver];
    self->_timeUntilManeuver = v12;
    v13 = [v5 currentVoiceLanguage];
    currentVoiceLanguage = self->_currentVoiceLanguage;
    self->_currentVoiceLanguage = v13;

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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = MNGetMNNavigationDetailsLog();
  v6 = os_signpost_id_generate(v5);
  v7 = v5;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1D311E000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "NavigationDetailsEncoding", "", buf, 2u);
  }

  [v4 encodeInteger:-[MNNavigationDetails state](self forKey:{"state"), @"State"}];
  [v4 encodeInteger:self->_desiredNavigationType forKey:@"_desiredNavigationType"];
  [v4 encodeInteger:self->_navigationType forKey:@"_navigationType"];
  [v4 encodeInteger:self->_desiredTransportType forKey:@"_desiredTransportType"];
  [v4 encodeInteger:self->_initialRouteSource forKey:@"_initialRouteSource"];
  [v4 encodeBool:-[MNNavigationDetails guidancePromptsEnabled](self forKey:{"guidancePromptsEnabled"), @"GuidancePromptsEnabled"}];
  [v4 encodeInt32:-[MNNavigationDetails navigationState](self forKey:{"navigationState"), @"NavigationState"}];
  [(MNNavigationDetails *)self proceedToRouteDistance];
  [v4 encodeDouble:@"ProceedToRouteDistance" forKey:?];
  v9 = [(MNNavigationDetails *)self displayString];

  if (v9)
  {
    v10 = [(MNNavigationDetails *)self displayString];
    [v4 encodeObject:v10 forKey:@"DisplayString"];
  }

  [v4 encodeInteger:-[MNNavigationDetails closestStepIndex](self forKey:{"closestStepIndex"), @"ClosestStepIndex"}];
  [(MNNavigationDetails *)self distanceUntilSign];
  [v4 encodeDouble:@"DistanceUntilSign" forKey:?];
  [(MNNavigationDetails *)self timeUntilSign];
  [v4 encodeDouble:@"TimeUntilSign" forKey:?];
  [(MNNavigationDetails *)self distanceUntilManeuver];
  [v4 encodeDouble:@"DistanceUntilManeuver" forKey:?];
  [(MNNavigationDetails *)self timeUntilManeuver];
  [v4 encodeDouble:@"TimeUntilManeuver" forKey:?];
  v11 = [(MNNavigationDetails *)self currentVoiceLanguage];

  if (v11)
  {
    v12 = [(MNNavigationDetails *)self currentVoiceLanguage];
    [v4 encodeObject:v12 forKey:@"CurrentVoiceLanguage"];
  }

  [v4 encodeInteger:self->_voiceGuidanceLevel forKey:@"_voiceGuidanceLevel"];
  currentRoute = self->_currentRoute;
  if (currentRoute)
  {
    [v4 encodeObject:currentRoute forKey:@"CurrentRoute"];
  }

  [v4 encodeInteger:-[MNNavigationDetails routeIndex](self forKey:{"routeIndex"), @"RouteIndex"}];
  [v4 encodeObject:self->_alternateRoutes forKey:@"AlternateRoutes"];
  [v4 encodeObject:self->_previewRoutes forKey:@"PreviewRoutes"];
  [v4 encodeInteger:-[MNNavigationDetails selectedPreviewRouteIndex](self forKey:{"selectedPreviewRouteIndex"), @"SelectePreviewRouteIndex"}];
  [v4 encodeBytes:&self->_lastOriginalRouteCoordinate length:8 forKey:@"_lastOriginalRouteCoordinate"];
  [v4 encodeInteger:self->_targetLegIndex forKey:@"_targetLegIndex"];
  [v4 encodeInteger:self->_upcomingAnchorPointIndex forKey:@"_upcomingAnchorPointIndex"];
  if ([(MNNavigationDetails *)self displayedStepIndex]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = -1;
  }

  else
  {
    v14 = [(MNNavigationDetails *)self displayedStepIndex];
  }

  [v4 encodeInteger:v14 forKey:@"DisplayedStepIndex"];
  [v4 encodeObject:self->_activeLaneInfo forKey:@"_activeLaneInfo"];
  [v4 encodeObject:self->_activeNavTrayGuidanceEvent forKey:@"_activeNavTrayGuidanceEvent"];
  [v4 encodeObject:self->_arrivalInfo forKey:@"_arrivalInfo"];
  [v4 encodeObject:self->_backgroundWalkingRouteInfo forKey:@"_backgroundWalkingRouteInfo"];
  [v4 encodeObject:self->_vehicleParkingInfo forKey:@"_vehicleParkingInfo"];
  [v4 encodeObject:self->_resumeRouteHandle forKey:@"_resumeRouteHandle"];
  [v4 encodeObject:self->_tracePath forKey:@"_tracePath"];
  [v4 encodeObject:self->_traceBookmarks forKey:@"_traceBookmarks"];
  [v4 encodeDouble:@"_traceDuration" forKey:self->_traceDuration];
  [v4 encodeDouble:@"_tracePosition" forKey:self->_tracePosition];
  [v4 encodeBool:self->_traceIsPlaying forKey:@"_traceIsPlaying"];
  [v4 encodeInteger:self->_simulationType forKey:@"_simulationType"];
  [v4 encodeBool:self->_isResumingMultipointRoute forKey:@"_isResumingMultipointRoute"];
  [v4 encodeBool:self->_isApproachingWaypoint forKey:@"_isApproachingWaypoint"];
  v15 = v8;
  v16 = v15;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *v17 = 0;
    _os_signpost_emit_with_name_impl(&dword_1D311E000, v16, OS_SIGNPOST_INTERVAL_END, v6, "NavigationDetailsEncoding", "", v17, 2u);
  }
}

- (MNNavigationDetails)initWithCoder:(id)a3
{
  v4 = a3;
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
    v9->_state = [v4 decodeIntegerForKey:@"State"];
    v9->_desiredNavigationType = [v4 decodeIntegerForKey:@"_desiredNavigationType"];
    v9->_navigationType = [v4 decodeIntegerForKey:@"_navigationType"];
    v9->_desiredTransportType = [v4 decodeIntegerForKey:@"_desiredTransportType"];
    v9->_initialRouteSource = [v4 decodeIntegerForKey:@"_initialRouteSource"];
    v9->_guidancePromptsEnabled = [v4 decodeBoolForKey:@"GuidancePromptsEnabled"];
    v9->_navigationState = [v4 decodeInt32ForKey:@"NavigationState"];
    [v4 decodeDoubleForKey:@"ProceedToRouteDistance"];
    v9->_proceedToRouteDistance = v10;
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DisplayString"];
    displayString = v9->_displayString;
    v9->_displayString = v11;

    v9->_closestStepIndex = [v4 decodeIntegerForKey:@"ClosestStepIndex"];
    [v4 decodeDoubleForKey:@"DistanceUntilSign"];
    v9->_distanceUntilSign = v13;
    [v4 decodeDoubleForKey:@"TimeUntilSign"];
    v9->_timeUntilSign = v14;
    [v4 decodeDoubleForKey:@"DistanceUntilManeuver"];
    v9->_distanceUntilManeuver = v15;
    [v4 decodeDoubleForKey:@"TimeUntilManeuver"];
    v9->_timeUntilManeuver = v16;
    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CurrentVoiceLanguage"];
    currentVoiceLanguage = v9->_currentVoiceLanguage;
    v9->_currentVoiceLanguage = v17;

    v9->_voiceGuidanceLevel = [v4 decodeIntegerForKey:@"_voiceGuidanceLevel"];
    v9->_routeIndex = [v4 decodeIntegerForKey:@"RouteIndex"];
    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CurrentRoute"];
    currentRoute = v9->_currentRoute;
    v9->_currentRoute = v19;

    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"AlternateRoutes"];
    alternateRoutes = v9->_alternateRoutes;
    v9->_alternateRoutes = v24;

    v26 = MEMORY[0x1E695DFD8];
    v27 = objc_opt_class();
    v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
    v29 = [v4 decodeObjectOfClasses:v28 forKey:@"AlternateRoutes"];
    previewRoutes = v9->_previewRoutes;
    v9->_previewRoutes = v29;

    v9->_selectedPreviewRouteIndex = [v4 decodeIntegerForKey:@"SelectePreviewRouteIndex"];
    *buf = 0;
    v31 = [v4 decodeBytesForKey:@"_lastOriginalRouteCoordinate" returnedLength:buf];
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

    v9->_targetLegIndex = [v4 decodeIntegerForKey:@"_targetLegIndex"];
    v9->_upcomingAnchorPointIndex = [v4 decodeIntegerForKey:@"_upcomingAnchorPointIndex"];
    v33 = [v4 decodeIntegerForKey:@"DisplayedStepIndex"];
    v34 = 0x7FFFFFFFFFFFFFFFLL;
    if (v33 >= 0)
    {
      v34 = v33;
    }

    v9->_displayedStepIndex = v34;
    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_activeLaneInfo"];
    activeLaneInfo = v9->_activeLaneInfo;
    v9->_activeLaneInfo = v35;

    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_activeNavTrayGuidanceEvent"];
    activeNavTrayGuidanceEvent = v9->_activeNavTrayGuidanceEvent;
    v9->_activeNavTrayGuidanceEvent = v37;

    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_arrivalInfo"];
    arrivalInfo = v9->_arrivalInfo;
    v9->_arrivalInfo = v39;

    v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backgroundWalkingRouteInfo"];
    backgroundWalkingRouteInfo = v9->_backgroundWalkingRouteInfo;
    v9->_backgroundWalkingRouteInfo = v41;

    v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_vehicleParkingInfo"];
    vehicleParkingInfo = v9->_vehicleParkingInfo;
    v9->_vehicleParkingInfo = v43;

    v45 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_resumeRouteHandle"];
    resumeRouteHandle = v9->_resumeRouteHandle;
    v9->_resumeRouteHandle = v45;

    v47 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_tracePath"];
    tracePath = v9->_tracePath;
    v9->_tracePath = v47;

    v49 = MEMORY[0x1E695DFD8];
    v50 = objc_opt_class();
    v51 = [v49 setWithObjects:{v50, objc_opt_class(), 0}];
    v52 = [v4 decodeObjectOfClasses:v51 forKey:@"_traceBookmarks"];
    traceBookmarks = v9->_traceBookmarks;
    v9->_traceBookmarks = v52;

    [v4 decodeDoubleForKey:@"_traceDuration"];
    v9->_traceDuration = v54;
    [v4 decodeDoubleForKey:@"_tracePosition"];
    v9->_tracePosition = v55;
    v9->_traceIsPlaying = [v4 decodeBoolForKey:@"_traceIsPlaying"];
    v9->_simulationType = [v4 decodeIntegerForKey:@"_simulationType"];
    v9->_isResumingMultipointRoute = [v4 decodeBoolForKey:@"_isResumingMultipointRoute"];
    v9->_isApproachingWaypoint = [v4 decodeBoolForKey:@"_isApproachingWaypoint"];
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

- (id)initForServer:(BOOL)a3
{
  v13.receiver = self;
  v13.super_class = MNNavigationDetails;
  v4 = [(MNNavigationDetails *)&v13 init];
  v5 = v4;
  if (v4)
  {
    v4->_isServer = a3;
    v4->_navigationType = 0;
    v4->_desiredNavigationType = 0;
    v4->_state = 0;
    v4->_desiredTransportType = 4;
    v6 = [MEMORY[0x1E695DF90] dictionary];
    routeLookup = v5->_routeLookup;
    v5->_routeLookup = v6;

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