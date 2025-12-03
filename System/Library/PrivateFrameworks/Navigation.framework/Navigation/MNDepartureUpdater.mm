@interface MNDepartureUpdater
- (BOOL)allowDepartureForLocation:(id)location;
- (MNDepartureUpdater)initWithRoute:(id)route arrivalLegIndex:(unint64_t)index;
- (id)_arrivalRegionsDepartureConditions;
- (id)_defaultDepartureConditions;
- (id)_descriptionForSubScores;
- (void)_initConditions;
@end

@implementation MNDepartureUpdater

- (id)_descriptionForSubScores
{
  allKeys = [(NSMutableDictionary *)self->_conditionScores allKeys];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__MNDepartureUpdater__descriptionForSubScores__block_invoke;
  v9[3] = &unk_1E8430588;
  v9[4] = self;
  v4 = [allKeys _geo_map:v9];

  v5 = MEMORY[0x1E696AEC0];
  v6 = [v4 componentsJoinedByString:@"\n\t"];
  v7 = [v5 stringWithFormat:@"\n\t%@", v6];

  return v7;
}

id __46__MNDepartureUpdater__descriptionForSubScores__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = a2;
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = MEMORY[0x1E696AEC0];
  [v4 doubleValue];
  v7 = [v5 stringWithFormat:@"%@: %0.2f", v3, v6];

  return v7;
}

- (id)_arrivalRegionsDepartureConditions
{
  v22 = *MEMORY[0x1E69E9840];
  arrivalParameters = [(GEOComposedRouteLeg *)self->_arrivalLeg arrivalParameters];
  arrivalMapRegions = [arrivalParameters arrivalMapRegions];

  if (!arrivalMapRegions)
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v15 = "[MNDepartureUpdater _arrivalRegionsDepartureConditions]";
      v16 = 2080;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Location/LocationTracking/MNDepartureUpdater.m";
      v18 = 1024;
      v19 = 481;
      v20 = 2080;
      v21 = "_arrivalLeg.arrivalParameters.arrivalMapRegions != nil";
      _os_log_impl(&dword_1D311E000, v12, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s)", buf, 0x26u);
    }
  }

  v5 = [__MNDepartureExitedArrivalRegionCondition alloc];
  arrivalParameters2 = [(GEOComposedRouteLeg *)self->_arrivalLeg arrivalParameters];
  arrivalMapRegions2 = [arrivalParameters2 arrivalMapRegions];
  v8 = [(__MNDepartureExitedArrivalRegionCondition *)v5 initWithUpdater:self arrivalRegions:arrivalMapRegions2];
  v13 = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_defaultDepartureConditions
{
  v28[1] = *MEMORY[0x1E69E9840];
  BOOL = GEOConfigGetBOOL();
  arrivalParameters = [(GEOComposedRouteLeg *)self->_arrivalLeg arrivalParameters];
  arrivalPoints = [arrivalParameters arrivalPoints];

  if (BOOL)
  {
    v6 = [__MNDepartureTimeSpentCondition alloc];
    GEOConfigGetDouble();
    v7 = [(__MNDepartureTimeSpentCondition *)v6 initWithUpdater:self timeThreshold:?];
    arrivalParameters3 = v7;
    if (arrivalPoints)
    {
      v26[0] = v7;
      v9 = [__MNDepartureMinimumArrivalDistanceCondition alloc];
      GEOConfigGetDouble();
      arrivalPoints3 = [(__MNDepartureMinimumArrivalDistanceCondition *)v9 initWithUpdater:self distanceThreshold:?];
      v26[1] = arrivalPoints3;
      v11 = [__MNDepartureMinimumDepartureDistanceCondition alloc];
      arrivalParameters2 = [(GEOComposedRouteLeg *)self->_arrivalLeg arrivalParameters];
      arrivalPoints2 = [arrivalParameters2 arrivalPoints];
      GEOConfigGetDouble();
      v14 = [(__MNDepartureMinimumDepartureDistanceCondition *)v11 initWithUpdater:self arrivalPoints:arrivalPoints2 distanceThreshold:?];
      v26[2] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:3];

LABEL_8:
      goto LABEL_9;
    }

    v25[0] = v7;
    v21 = [__MNDepartureMinimumArrivalDistanceCondition alloc];
    GEOConfigGetDouble();
    arrivalPoints3 = [(__MNDepartureMinimumArrivalDistanceCondition *)v21 initWithUpdater:self distanceThreshold:?];
    v25[1] = arrivalPoints3;
    v22 = [__MNDepartureMinimumDepartureDistanceCondition alloc];
    GEOConfigGetDouble();
    v17 = [(__MNDepartureMinimumDepartureDistanceCondition *)v22 initWithUpdater:self distanceThreshold:?];
    v25[2] = v17;
    v18 = MEMORY[0x1E695DEC8];
    v19 = v25;
    v20 = 3;
LABEL_7:
    v15 = [v18 arrayWithObjects:v19 count:v20];

    goto LABEL_8;
  }

  v16 = [__MNDepartureMinimumDepartureDistanceCondition alloc];
  if (arrivalPoints)
  {
    arrivalParameters3 = [(GEOComposedRouteLeg *)self->_arrivalLeg arrivalParameters];
    arrivalPoints3 = [(__MNDepartureMinimumDepartureDistanceCondition *)arrivalParameters3 arrivalPoints];
    GEOConfigGetDouble();
    v17 = [(__MNDepartureMinimumDepartureDistanceCondition *)v16 initWithUpdater:self arrivalPoints:arrivalPoints3 distanceThreshold:?];
    v28[0] = v17;
    v18 = MEMORY[0x1E695DEC8];
    v19 = v28;
    v20 = 1;
    goto LABEL_7;
  }

  GEOConfigGetDouble();
  arrivalParameters3 = [(__MNDepartureMinimumDepartureDistanceCondition *)v16 initWithUpdater:self distanceThreshold:?];
  v27 = arrivalParameters3;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
LABEL_9:

  v23 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)_initConditions
{
  v20 = *MEMORY[0x1E69E9840];
  arrivalParameters = [(GEOComposedRouteLeg *)self->_arrivalLeg arrivalParameters];

  if (arrivalParameters)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    arrivalParameters2 = [(GEOComposedRouteLeg *)self->_arrivalLeg arrivalParameters];
    conditions = [arrivalParameters2 arrivalMapRegions];

    v6 = [conditions countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(conditions);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          if ([v10 arrivalRegionAction] == 5 || objc_msgSend(v10, "arrivalRegionAction") == 2)
          {

            _arrivalRegionsDepartureConditions = [(MNDepartureUpdater *)self _arrivalRegionsDepartureConditions];
            conditions = self->_conditions;
            self->_conditions = _arrivalRegionsDepartureConditions;
            goto LABEL_13;
          }
        }

        v7 = [conditions countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  if (!self->_conditions)
  {
    _defaultDepartureConditions = [(MNDepartureUpdater *)self _defaultDepartureConditions];
    v13 = self->_conditions;
    self->_conditions = _defaultDepartureConditions;
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)allowDepartureForLocation:(id)location
{
  v54 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  if (!self->_conditionScores)
  {
    v29 = 0;
    goto LABEL_34;
  }

  UInteger = GEOConfigGetUInteger();
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v5 = self->_conditions;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v42 objects:v53 count:16];
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = v6;
  v8 = *v43;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v43 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v42 + 1) + 8 * i);
      [v10 scoreForLocation:locationCopy];
      v12 = v11;
      conditionScores = self->_conditionScores;
      name = [v10 name];
      v15 = [(NSMutableDictionary *)conditionScores objectForKey:name];
      [v15 doubleValue];
      v17 = v16;

      if (v17 == -1.0)
      {
        v18 = self->_conditionScores;
        name2 = [v10 name];
        [(NSMutableDictionary *)v18 removeObjectForKey:name2];
      }

      else
      {
        if (v12 <= v17)
        {
          continue;
        }

        v20 = self->_conditionScores;
        name2 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
        name3 = [v10 name];
        [(NSMutableDictionary *)v20 setObject:name2 forKey:name3];
      }
    }

    v7 = [(NSArray *)v5 countByEnumeratingWithState:&v42 objects:v53 count:16];
  }

  while (v7);
LABEL_14:

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  allValues = [(NSMutableDictionary *)self->_conditionScores allValues];
  v23 = [allValues countByEnumeratingWithState:&v38 objects:v52 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v39;
    v26 = 0.0;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v39 != v25)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v38 + 1) + 8 * j) doubleValue];
        v26 = v28 + v26;
      }

      v24 = [allValues countByEnumeratingWithState:&v38 objects:v52 count:16];
    }

    while (v24);
  }

  else
  {
    v26 = 0.0;
  }

  if ([(NSMutableDictionary *)self->_conditionScores count])
  {
    v30 = v26 / [(NSMutableDictionary *)self->_conditionScores count];
    v31 = MNGetMNDepartureUpdaterLog();
    routeMatch = v31;
    if (v30 <= UInteger * 0.01)
    {
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        _descriptionForSubScores = [(MNDepartureUpdater *)self _descriptionForSubScores];
        *buf = 134218498;
        v47 = v30;
        v48 = 2048;
        v49 = UInteger * 0.01;
        v50 = 2112;
        v51 = _descriptionForSubScores;
        _os_log_impl(&dword_1D311E000, routeMatch, OS_LOG_TYPE_INFO, "Not allowing departure yet because score (%0.2f) is below the minimum score (%g). Sub scores:%@", buf, 0x20u);
      }

      v29 = 0;
    }

    else
    {
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v47 = v30;
        v48 = 2048;
        v49 = UInteger * 0.01;
        _os_log_impl(&dword_1D311E000, routeMatch, OS_LOG_TYPE_DEFAULT, "Allow departure because score (%0.2f) is above the minimum score (%g).", buf, 0x16u);
      }

      v29 = 1;
    }
  }

  else
  {
    routeMatch = [locationCopy routeMatch];
    legIndex = [routeMatch legIndex];
    v29 = legIndex > [(MNDepartureUpdater *)self arrivalWaypointLegIndex];
  }

LABEL_34:
  v35 = *MEMORY[0x1E69E9840];
  return v29;
}

- (MNDepartureUpdater)initWithRoute:(id)route arrivalLegIndex:(unint64_t)index
{
  routeCopy = route;
  v17.receiver = self;
  v17.super_class = MNDepartureUpdater;
  v8 = [(MNDepartureUpdater *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_route, route);
    legs = [routeCopy legs];
    v11 = [legs objectAtIndexedSubscript:index];
    arrivalLeg = v9->_arrivalLeg;
    v9->_arrivalLeg = v11;

    [(MNDepartureUpdater *)v9 _initConditions];
    v13 = objc_opt_new();
    conditionScores = v9->_conditionScores;
    v9->_conditionScores = v13;

    v15 = v9;
  }

  return v9;
}

@end