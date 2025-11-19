@interface MNNavigationSessionState
- (BOOL)areRoutesSame:(id)a3;
- (BOOL)isOnLastLeg;
- (GEOComposedRouteLeg)nextLeg;
- (GEOComposedRouteLeg)targetLeg;
- (GEOComposedWaypoint)currentWaypoint;
- (GEOComposedWaypoint)destination;
- (MNNavigationSessionState)init;
- (MNNavigationSessionState)initWithLocation:(id)a3 currentRouteInfo:(id)a4 alternateRouteInfos:(id)a5 targetLegIndex:(unint64_t)a6;
- (NSArray)userIncidentReports;
- (id)_locationStateAsString:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)addUserIncidentReport:(id)a3;
@end

@implementation MNNavigationSessionState

- (MNNavigationSessionState)init
{
  v7.receiver = self;
  v7.super_class = MNNavigationSessionState;
  v2 = [(MNNavigationSessionState *)&v7 init];
  if (v2)
  {
    v3 = geo_isolater_create();
    userIncidentReportsIsolater = v2->_userIncidentReportsIsolater;
    v2->_userIncidentReportsIsolater = v3;

    v5 = v2;
  }

  return v2;
}

- (BOOL)isOnLastLeg
{
  targetLegIndex = self->_targetLegIndex;
  if (targetLegIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v4 = [(MNActiveRouteInfo *)self->_currentRouteInfo route];
  v5 = [v4 legs];
  v3 = targetLegIndex >= [v5 count] - 1;

  return v3;
}

- (GEOComposedRouteLeg)targetLeg
{
  currentRouteInfo = self->_currentRouteInfo;
  if (!currentRouteInfo)
  {
    goto LABEL_7;
  }

  targetLegIndex = self->_targetLegIndex;
  v5 = [(MNActiveRouteInfo *)currentRouteInfo route];
  v6 = [v5 legs];
  v7 = [v6 count];

  if (targetLegIndex < v7)
  {
    v8 = [(MNActiveRouteInfo *)self->_currentRouteInfo route];
    v9 = [v8 legs];
    v10 = [v9 objectAtIndexedSubscript:self->_targetLegIndex];
  }

  else
  {
LABEL_7:
    v10 = 0;
  }

  return v10;
}

- (NSArray)userIncidentReports
{
  v5 = self->_userIncidentReportsIsolater;
  _geo_isolate_lock_data();
  v3 = [(NSMutableArray *)self->_userIncidentReports copy];
  _geo_isolate_unlock();

  return v3;
}

- (GEOComposedWaypoint)destination
{
  v2 = [(MNActiveRouteInfo *)self->_currentRouteInfo route];
  v3 = [v2 destination];

  return v3;
}

- (GEOComposedWaypoint)currentWaypoint
{
  currentRouteInfo = self->_currentRouteInfo;
  if (currentRouteInfo)
  {
    if (self->_targetLegIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      targetLegIndex = 0;
    }

    else
    {
      targetLegIndex = self->_targetLegIndex;
    }

    v5 = [(MNActiveRouteInfo *)currentRouteInfo route];
    v6 = [v5 legs];
    v7 = [v6 count];

    v8 = [(MNActiveRouteInfo *)self->_currentRouteInfo route];
    v9 = v8;
    if (targetLegIndex >= v7)
    {
      v12 = [v8 destination];
    }

    else
    {
      v10 = [v8 legs];
      v11 = [v10 objectAtIndexedSubscript:targetLegIndex];
      v12 = [v11 destination];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_locationStateAsString:(unint64_t)a3
{
  v3 = @"On route";
  if (a3 == 2)
  {
    v3 = @"Off route, on road";
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"Off route, off road";
  }
}

- (id)description
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:4];
  navigationState = self->_navigationState;
  v5 = 0x1E696A000uLL;
  if (navigationState >= 9)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_navigationState];
  }

  else
  {
    v6 = off_1E842F080[navigationState];
  }

  [v3 addObject:v6];

  v7 = MEMORY[0x1E696AEC0];
  [(MNLocation *)self->_location coordinate];
  v9 = v8;
  [(MNLocation *)self->_location coordinate];
  v11 = v10;
  v12 = [(MNNavigationSessionState *)self _locationStateAsString:[(MNLocation *)self->_location state]];
  v13 = [v7 stringWithFormat:@"Location: %f, %f | (%@)", v9, v11, v12];
  [v3 addObject:v13];

  v14 = MEMORY[0x1E696AEC0];
  v15 = [(MNActiveRouteInfo *)self->_currentRouteInfo route];
  v16 = [v15 name];
  v17 = [(MNActiveRouteInfo *)self->_currentRouteInfo routeID];
  v18 = [v14 stringWithFormat:@"Current route: %@ (%@)", v16, v17];
  v43 = v3;
  [v3 addObject:v18];

  v44 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_alternateRouteInfos, "count")}];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v42 = self;
  v19 = self->_alternateRouteInfos;
  v20 = [(NSArray *)v19 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v46;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v46 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v45 + 1) + 8 * i);
        v25 = v5;
        v26 = *(v5 + 3776);
        v27 = [v24 route];
        v28 = [v27 name];
        v29 = [v24 routeID];
        v30 = [v26 stringWithFormat:@"%@ (%@)", v28, v29];
        [v44 addObject:v30];

        v5 = v25;
      }

      v21 = [(NSArray *)v19 countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v21);
  }

  v31 = *(v5 + 3776);
  v32 = [v44 componentsJoinedByString:@" | "];
  v33 = [v31 stringWithFormat:@"Alternate routes: %@", v32];
  [v43 addObject:v33];

  v34 = [*(v5 + 3776) stringWithFormat:@"Target leg index: %d", v42->_targetLegIndex];
  [v43 addObject:v34];

  arrivalState = v42->_arrivalState;
  if (arrivalState > 6)
  {
    v36 = @"MNArrivalState_Unknown";
  }

  else
  {
    v36 = off_1E842F0C8[arrivalState];
  }

  v37 = [*(v5 + 3776) stringWithFormat:@"Arrival state: %@", v36];
  [v43 addObject:v37];

  v38 = [*(v5 + 3776) stringWithFormat:@"Displaying nav tray: %d", v42->_isDisplayingNavigationTray];
  [v43 addObject:v38];

  v39 = [v43 componentsJoinedByString:@"\n"];

  v40 = *MEMORY[0x1E69E9840];

  return v39;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[MNNavigationSessionState allocWithZone:?]];
  objc_storeStrong(&v4->_auditToken, self->_auditToken);
  objc_storeStrong(&v4->_requestingAppIdentifier, self->_requestingAppIdentifier);
  objc_storeStrong(&v4->_traits, self->_traits);
  v4->_initialRouteSource = self->_initialRouteSource;
  v4->_navigationState = self->_navigationState;
  objc_storeStrong(&v4->_location, self->_location);
  objc_storeStrong(&v4->_currentRouteInfo, self->_currentRouteInfo);
  v4->_lastRerouteReason = self->_lastRerouteReason;
  v5 = [(NSArray *)self->_alternateRouteInfos copy];
  alternateRouteInfos = v4->_alternateRouteInfos;
  v4->_alternateRouteInfos = v5;

  v4->_targetLegIndex = self->_targetLegIndex;
  v4->_upcomingAnchorPointIndex = self->_upcomingAnchorPointIndex;
  v4->_hasBeenOnRouteOnce = self->_hasBeenOnRouteOnce;
  v4->_arrivalState = self->_arrivalState;
  v4->_isDisplayingNavigationTray = self->_isDisplayingNavigationTray;
  userIncidentReportsIsolater = self->_userIncidentReportsIsolater;
  v10 = v4;
  geo_isolate_sync_data();
  v8 = v10;

  return v8;
}

- (void)addUserIncidentReport:(id)a3
{
  v4 = a3;
  v8 = self->_userIncidentReportsIsolater;
  _geo_isolate_lock_data();
  userIncidentReports = self->_userIncidentReports;
  if (!userIncidentReports)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_userIncidentReports;
    self->_userIncidentReports = v6;

    userIncidentReports = self->_userIncidentReports;
  }

  [(NSMutableArray *)userIncidentReports addObject:v4];
  _geo_isolate_unlock();
}

- (GEOComposedRouteLeg)nextLeg
{
  if ([(MNNavigationSessionState *)self isOnLastLeg])
  {
    v5 = 0;
  }

  else
  {
    v3 = [(MNActiveRouteInfo *)self->_currentRouteInfo route];
    v4 = [v3 legs];
    v5 = [v4 objectAtIndexedSubscript:self->_targetLegIndex + 1];
  }

  return v5;
}

- (MNNavigationSessionState)initWithLocation:(id)a3 currentRouteInfo:(id)a4 alternateRouteInfos:(id)a5 targetLegIndex:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = [(MNNavigationSessionState *)self init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_location, a3);
    objc_storeStrong(&v15->_currentRouteInfo, a4);
    v15->_targetLegIndex = a6;
    v15->_upcomingAnchorPointIndex = 0x7FFFFFFFFFFFFFFFLL;
    objc_storeStrong(&v15->_alternateRouteInfos, a5);
    v16 = v15;
  }

  return v15;
}

- (BOOL)areRoutesSame:(id)a3
{
  v4 = a3;
  v5 = [(MNActiveRouteInfo *)self->_currentRouteInfo routeID];
  v6 = [v4 currentRouteInfo];
  v7 = [v6 routeID];
  v8 = v5;
  v9 = v7;
  if (v8 | v9)
  {
    v10 = v9;
    v11 = [v8 isEqual:v9];

    if ((v11 & 1) == 0)
    {
LABEL_7:
      v22 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v12 = [(NSArray *)self->_alternateRouteInfos count];
  v13 = [v4 alternateRouteInfos];
  v14 = [v13 count];

  if (v12 != v14)
  {
    goto LABEL_7;
  }

  v15 = MEMORY[0x1E695DFD8];
  v16 = [(NSArray *)self->_alternateRouteInfos _geo_map:&__block_literal_global_11122];
  v17 = [v15 setWithArray:v16];

  v18 = MEMORY[0x1E695DFD8];
  v19 = [v4 alternateRouteInfos];
  v20 = [v19 _geo_map:&__block_literal_global_11122];
  v21 = [v18 setWithArray:v20];

  v22 = [v17 isEqualToSet:v21];
LABEL_6:

  return v22;
}

@end