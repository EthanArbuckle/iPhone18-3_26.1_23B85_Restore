@interface MNNavigationSessionState
- (BOOL)areRoutesSame:(id)same;
- (BOOL)isOnLastLeg;
- (GEOComposedRouteLeg)nextLeg;
- (GEOComposedRouteLeg)targetLeg;
- (GEOComposedWaypoint)currentWaypoint;
- (GEOComposedWaypoint)destination;
- (MNNavigationSessionState)init;
- (MNNavigationSessionState)initWithLocation:(id)location currentRouteInfo:(id)info alternateRouteInfos:(id)infos targetLegIndex:(unint64_t)index;
- (NSArray)userIncidentReports;
- (id)_locationStateAsString:(unint64_t)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)addUserIncidentReport:(id)report;
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

  route = [(MNActiveRouteInfo *)self->_currentRouteInfo route];
  legs = [route legs];
  v3 = targetLegIndex >= [legs count] - 1;

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
  route = [(MNActiveRouteInfo *)currentRouteInfo route];
  legs = [route legs];
  v7 = [legs count];

  if (targetLegIndex < v7)
  {
    route2 = [(MNActiveRouteInfo *)self->_currentRouteInfo route];
    legs2 = [route2 legs];
    v10 = [legs2 objectAtIndexedSubscript:self->_targetLegIndex];
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
  route = [(MNActiveRouteInfo *)self->_currentRouteInfo route];
  destination = [route destination];

  return destination;
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

    route = [(MNActiveRouteInfo *)currentRouteInfo route];
    legs = [route legs];
    v7 = [legs count];

    route2 = [(MNActiveRouteInfo *)self->_currentRouteInfo route];
    v9 = route2;
    if (targetLegIndex >= v7)
    {
      destination = [route2 destination];
    }

    else
    {
      legs2 = [route2 legs];
      v11 = [legs2 objectAtIndexedSubscript:targetLegIndex];
      destination = [v11 destination];
    }
  }

  else
  {
    destination = 0;
  }

  return destination;
}

- (id)_locationStateAsString:(unint64_t)string
{
  v3 = @"On route";
  if (string == 2)
  {
    v3 = @"Off route, on road";
  }

  if (string)
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
  route = [(MNActiveRouteInfo *)self->_currentRouteInfo route];
  name = [route name];
  routeID = [(MNActiveRouteInfo *)self->_currentRouteInfo routeID];
  v18 = [v14 stringWithFormat:@"Current route: %@ (%@)", name, routeID];
  v43 = v3;
  [v3 addObject:v18];

  v44 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_alternateRouteInfos, "count")}];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  selfCopy = self;
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
        route2 = [v24 route];
        name2 = [route2 name];
        routeID2 = [v24 routeID];
        v30 = [v26 stringWithFormat:@"%@ (%@)", name2, routeID2];
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

  v34 = [*(v5 + 3776) stringWithFormat:@"Target leg index: %d", selfCopy->_targetLegIndex];
  [v43 addObject:v34];

  arrivalState = selfCopy->_arrivalState;
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

  v38 = [*(v5 + 3776) stringWithFormat:@"Displaying nav tray: %d", selfCopy->_isDisplayingNavigationTray];
  [v43 addObject:v38];

  v39 = [v43 componentsJoinedByString:@"\n"];

  v40 = *MEMORY[0x1E69E9840];

  return v39;
}

- (id)copyWithZone:(_NSZone *)zone
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

- (void)addUserIncidentReport:(id)report
{
  reportCopy = report;
  v8 = self->_userIncidentReportsIsolater;
  _geo_isolate_lock_data();
  userIncidentReports = self->_userIncidentReports;
  if (!userIncidentReports)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_userIncidentReports;
    self->_userIncidentReports = array;

    userIncidentReports = self->_userIncidentReports;
  }

  [(NSMutableArray *)userIncidentReports addObject:reportCopy];
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
    route = [(MNActiveRouteInfo *)self->_currentRouteInfo route];
    legs = [route legs];
    v5 = [legs objectAtIndexedSubscript:self->_targetLegIndex + 1];
  }

  return v5;
}

- (MNNavigationSessionState)initWithLocation:(id)location currentRouteInfo:(id)info alternateRouteInfos:(id)infos targetLegIndex:(unint64_t)index
{
  locationCopy = location;
  infoCopy = info;
  infosCopy = infos;
  v14 = [(MNNavigationSessionState *)self init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_location, location);
    objc_storeStrong(&v15->_currentRouteInfo, info);
    v15->_targetLegIndex = index;
    v15->_upcomingAnchorPointIndex = 0x7FFFFFFFFFFFFFFFLL;
    objc_storeStrong(&v15->_alternateRouteInfos, infos);
    v16 = v15;
  }

  return v15;
}

- (BOOL)areRoutesSame:(id)same
{
  sameCopy = same;
  routeID = [(MNActiveRouteInfo *)self->_currentRouteInfo routeID];
  currentRouteInfo = [sameCopy currentRouteInfo];
  routeID2 = [currentRouteInfo routeID];
  v8 = routeID;
  v9 = routeID2;
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
  alternateRouteInfos = [sameCopy alternateRouteInfos];
  v14 = [alternateRouteInfos count];

  if (v12 != v14)
  {
    goto LABEL_7;
  }

  v15 = MEMORY[0x1E695DFD8];
  v16 = [(NSArray *)self->_alternateRouteInfos _geo_map:&__block_literal_global_11122];
  v17 = [v15 setWithArray:v16];

  v18 = MEMORY[0x1E695DFD8];
  alternateRouteInfos2 = [sameCopy alternateRouteInfos];
  v20 = [alternateRouteInfos2 _geo_map:&__block_literal_global_11122];
  v21 = [v18 setWithArray:v20];

  v22 = [v17 isEqualToSet:v21];
LABEL_6:

  return v22;
}

@end