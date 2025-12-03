@interface MNDirectionsRequestDetails
- (BOOL)isEqual:(id)equal;
- (MNDirectionsRequestDetails)initWithCoder:(id)coder;
- (MNDirectionsRequestDetails)initWithTracePath:(id)path;
- (MNDirectionsRequestDetails)initWithWaypoints:(id)waypoints routeAttributes:(id)attributes;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MNDirectionsRequestDetails

- (void)encodeWithCoder:(id)coder
{
  waypoints = self->_waypoints;
  coderCopy = coder;
  [coderCopy encodeObject:waypoints forKey:@"_waypoints"];
  [coderCopy encodeObject:self->_routeAttributes forKey:@"_routeAttributes"];
  [coderCopy encodeObject:self->_traits forKey:@"_traits"];
  [coderCopy encodeInteger:self->_maxRouteCount forKey:@"_maxRouteCount"];
  [coderCopy encodeObject:self->_currentUserLocation forKey:@"_currentUserLocation"];
  [coderCopy encodeObject:self->_currentMapRegion forKey:@"_currentMapRegion"];
  [coderCopy encodeObject:self->_directionsRequestFeedback forKey:@"_directionsRequestFeedback"];
  [coderCopy encodeObject:self->_commonOptions forKey:@"_commonOptions"];
  [coderCopy encodeBool:self->_isResumingMultipointRoute forKey:@"_isResumingMultipointRoute"];
  [coderCopy encodeObject:self->_resumeRouteHandle forKey:@"_resumeRouteHandle"];
  [coderCopy encodeObject:self->_tracePath forKey:@"_tracePath"];
  [coderCopy encodeObject:self->_auditToken forKey:@"_auditToken"];
}

- (MNDirectionsRequestDetails)initWithCoder:(id)coder
{
  coderCopy = coder;
  v30.receiver = self;
  v30.super_class = MNDirectionsRequestDetails;
  v5 = [(MNDirectionsRequestDetails *)&v30 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_waypoints"];
    waypoints = v5->_waypoints;
    v5->_waypoints = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_routeAttributes"];
    routeAttributes = v5->_routeAttributes;
    v5->_routeAttributes = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_traits"];
    traits = v5->_traits;
    v5->_traits = v13;

    v5->_maxRouteCount = [coderCopy decodeIntegerForKey:@"_maxRouteCount"];
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_currentUserLocation"];
    currentUserLocation = v5->_currentUserLocation;
    v5->_currentUserLocation = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_currentMapRegion"];
    currentMapRegion = v5->_currentMapRegion;
    v5->_currentMapRegion = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_directionsRequestFeedback"];
    directionsRequestFeedback = v5->_directionsRequestFeedback;
    v5->_directionsRequestFeedback = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_commonOptions"];
    commonOptions = v5->_commonOptions;
    v5->_commonOptions = v21;

    v5->_isResumingMultipointRoute = [coderCopy decodeBoolForKey:@"_isResumingMultipointRoute"];
    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_resumeRouteHandle"];
    resumeRouteHandle = v5->_resumeRouteHandle;
    v5->_resumeRouteHandle = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_tracePath"];
    tracePath = v5->_tracePath;
    v5->_tracePath = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_auditToken"];
    auditToken = v5->_auditToken;
    v5->_auditToken = v27;
  }

  return v5;
}

- (unint64_t)hash
{
  waypoints = [(MNDirectionsRequestDetails *)self waypoints];
  v4 = [waypoints hash];

  routeAttributes = [(MNDirectionsRequestDetails *)self routeAttributes];
  v6 = [routeAttributes hash] + 53 * v4 + 2809;

  traits = [(MNDirectionsRequestDetails *)self traits];
  v8 = [traits hash] + 53 * v6;

  v9 = [(MNDirectionsRequestDetails *)self maxRouteCount]+ 53 * v8;
  currentUserLocation = [(MNDirectionsRequestDetails *)self currentUserLocation];
  v11 = [currentUserLocation hash] + 53 * v9;

  currentMapRegion = [(MNDirectionsRequestDetails *)self currentMapRegion];
  v13 = [currentMapRegion hash] + 53 * v11;

  directionsRequestFeedback = [(MNDirectionsRequestDetails *)self directionsRequestFeedback];
  v15 = [directionsRequestFeedback hash] + 53 * v13;

  commonOptions = [(MNDirectionsRequestDetails *)self commonOptions];
  v17 = [commonOptions hash] + 53 * v15;

  v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[MNDirectionsRequestDetails isResumingMultipointRoute](self, "isResumingMultipointRoute")}];
  v19 = [v18 hash] + 53 * v17;

  tracePath = [(MNDirectionsRequestDetails *)self tracePath];
  v21 = [tracePath hash] + 53 * v19;

  auditToken = [(MNDirectionsRequestDetails *)self auditToken];
  v23 = [auditToken hash] + 53 * v21;

  return v23;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
    goto LABEL_36;
  }

  v8 = objc_opt_class();
  if (v8 != objc_opt_class())
  {
    v9 = 0;
    goto LABEL_36;
  }

  v10 = equalCopy;
  waypoints = [(MNDirectionsRequestDetails *)self waypoints];
  if (!waypoints)
  {
    waypoints2 = [(MNDirectionsRequestDetails *)v10 waypoints];
    if (!waypoints2)
    {
      v12 = 0;
      goto LABEL_11;
    }
  }

  waypoints3 = [(MNDirectionsRequestDetails *)self waypoints];
  waypoints4 = [(MNDirectionsRequestDetails *)v10 waypoints];
  if ([waypoints3 isEqualToArray:waypoints4])
  {
    v12 = 1;
LABEL_11:
    routeAttributes = [(MNDirectionsRequestDetails *)self routeAttributes];
    if (routeAttributes || ([(MNDirectionsRequestDetails *)v10 routeAttributes], (v71 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      routeAttributes2 = [(MNDirectionsRequestDetails *)self routeAttributes];
      routeAttributes3 = [(MNDirectionsRequestDetails *)v10 routeAttributes];
      if (([routeAttributes2 isEqual:routeAttributes3] & 1) == 0)
      {

        v15 = routeAttributes;
        if (!routeAttributes)
        {
          v15 = v71;
        }

        v9 = 0;
        if ((v12 & 1) == 0)
        {
          goto LABEL_33;
        }

LABEL_32:

        goto LABEL_33;
      }

      v69 = routeAttributes3;
      v70 = routeAttributes2;
      v74 = waypoints2;
      v72 = 1;
      v73 = v12;
    }

    else
    {
      v72 = 0;
      v73 = v12;
      v74 = waypoints2;
      v71 = 0;
    }

    traits = [(MNDirectionsRequestDetails *)self traits];
    traits2 = [(MNDirectionsRequestDetails *)v10 traits];
    v18 = traits;
    v19 = traits2;
    if (v18 | v19 && (v20 = [v18 isEqual:v19], v19, v18, !v20) || (v21 = -[MNDirectionsRequestDetails maxRouteCount](self, "maxRouteCount"), v21 != -[MNDirectionsRequestDetails maxRouteCount](v10, "maxRouteCount")))
    {

      v9 = 0;
      if ((v72 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    currentUserLocation = [(MNDirectionsRequestDetails *)self currentUserLocation];
    if (currentUserLocation || ([(MNDirectionsRequestDetails *)v10 currentUserLocation], (v61 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      currentUserLocation2 = [(MNDirectionsRequestDetails *)self currentUserLocation];
      currentUserLocation3 = [(MNDirectionsRequestDetails *)v10 currentUserLocation];
      v67 = currentUserLocation2;
      if (![currentUserLocation2 isEqual:?])
      {
        v9 = 0;
        goto LABEL_94;
      }

      v64 = 1;
    }

    else
    {
      v61 = 0;
      v64 = 0;
    }

    currentMapRegion = [(MNDirectionsRequestDetails *)self currentMapRegion];
    if (currentMapRegion || ([(MNDirectionsRequestDetails *)v10 currentMapRegion], (v56 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      currentMapRegion2 = [(MNDirectionsRequestDetails *)self currentMapRegion];
      currentMapRegion3 = [(MNDirectionsRequestDetails *)v10 currentMapRegion];
      v63 = currentMapRegion2;
      if (![currentMapRegion2 isEqual:currentMapRegion3])
      {
        v9 = 0;
        goto LABEL_90;
      }

      v59 = 1;
    }

    else
    {
      v56 = 0;
      v59 = 0;
    }

    directionsRequestFeedback = [(MNDirectionsRequestDetails *)self directionsRequestFeedback];
    if (directionsRequestFeedback || ([(MNDirectionsRequestDetails *)v10 directionsRequestFeedback], (v53 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      directionsRequestFeedback2 = [(MNDirectionsRequestDetails *)self directionsRequestFeedback];
      directionsRequestFeedback3 = [(MNDirectionsRequestDetails *)v10 directionsRequestFeedback];
      v58 = directionsRequestFeedback2;
      if (![directionsRequestFeedback2 isEqual:?])
      {
        v9 = 0;
LABEL_86:

        goto LABEL_87;
      }

      v54 = 1;
    }

    else
    {
      v53 = 0;
      v54 = 0;
    }

    commonOptions = [(MNDirectionsRequestDetails *)self commonOptions];
    if (commonOptions || ([(MNDirectionsRequestDetails *)v10 commonOptions], (v50 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      commonOptions2 = [(MNDirectionsRequestDetails *)self commonOptions];
      commonOptions3 = [(MNDirectionsRequestDetails *)v10 commonOptions];
      if (([commonOptions2 isEqual:commonOptions3] & 1) == 0)
      {

        v28 = commonOptions;
        if (!commonOptions)
        {
          v28 = v50;
        }

        v9 = 0;
        if (v54)
        {
          goto LABEL_86;
        }

        goto LABEL_87;
      }

      v51 = commonOptions3;
      v49 = commonOptions2;
      v52 = 1;
    }

    else
    {
      v50 = 0;
      v52 = 0;
    }

    isResumingMultipointRoute = [(MNDirectionsRequestDetails *)self isResumingMultipointRoute];
    if (isResumingMultipointRoute != [(MNDirectionsRequestDetails *)v10 isResumingMultipointRoute])
    {
      v9 = 0;
      v30 = v51;
      if ((v52 & 1) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_82;
    }

    [(MNDirectionsRequestDetails *)self tracePath];
    v48 = v30 = v51;
    if (v48 || ([(MNDirectionsRequestDetails *)v10 tracePath], (v43 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      tracePath = [(MNDirectionsRequestDetails *)self tracePath];
      tracePath2 = [(MNDirectionsRequestDetails *)v10 tracePath];
      v47 = tracePath;
      if (![tracePath isEqual:?])
      {
        v9 = 0;
        v30 = v51;
        v32 = v52;
LABEL_78:

LABEL_79:
        v36 = v48;
        if (!v48)
        {

          v36 = 0;
        }

        if (!v32)
        {
LABEL_83:
          v37 = commonOptions;
          if (!commonOptions)
          {

            v37 = 0;
          }

          if (v54)
          {
            goto LABEL_86;
          }

LABEL_87:
          v38 = directionsRequestFeedback;
          if (!directionsRequestFeedback)
          {

            v38 = 0;
          }

          if (!v59)
          {
LABEL_91:
            v39 = currentMapRegion;
            if (!currentMapRegion)
            {

              v39 = 0;
            }

            if (!v64)
            {
LABEL_95:
              v40 = currentUserLocation;
              if (!currentUserLocation)
              {

                v40 = 0;
              }

              if (!v72)
              {
LABEL_29:
                waypoints2 = v74;
                if (!routeAttributes)
                {
                }

                if (!v73)
                {
                  goto LABEL_33;
                }

                goto LABEL_32;
              }

LABEL_28:

              goto LABEL_29;
            }

LABEL_94:

            goto LABEL_95;
          }

LABEL_90:

          goto LABEL_91;
        }

LABEL_82:

        goto LABEL_83;
      }

      v45 = 1;
      v30 = v51;
    }

    else
    {
      v43 = 0;
      v45 = 0;
    }

    auditToken = [(MNDirectionsRequestDetails *)self auditToken];
    if (auditToken || ([(MNDirectionsRequestDetails *)v10 auditToken], (v41 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v33 = [(MNDirectionsRequestDetails *)self auditToken:v41];
      auditToken2 = [(MNDirectionsRequestDetails *)v10 auditToken];
      v9 = [v33 isEqual:auditToken2];

      if (auditToken)
      {

        v30 = v51;
        if ((v45 & 1) == 0)
        {
          v32 = v52;
          goto LABEL_79;
        }

        v32 = v52;
        goto LABEL_78;
      }

      v30 = v51;
      v35 = v42;
    }

    else
    {
      v35 = 0;
      v9 = 1;
    }

    v32 = v52;
    if ((v45 & 1) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_78;
  }

  v9 = 0;
LABEL_33:
  if (!waypoints)
  {
  }

LABEL_36:
  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = [(NSArray *)self->_waypoints valueForKey:@"waypoint"];
  maxRouteCount = self->_maxRouteCount;
  v6 = [v3 stringWithFormat:@"\twaypoints: %@ |\n\tmaxRouteCount: %d |\n\trouteAttributes: %@", v4, maxRouteCount, self->_routeAttributes];

  return v6;
}

- (MNDirectionsRequestDetails)initWithTracePath:(id)path
{
  pathCopy = path;
  v6 = [(MNDirectionsRequestDetails *)self init];
  v7 = v6;
  if (v6)
  {
    v6->_maxRouteCount = 3;
    objc_storeStrong(&v6->_tracePath, path);
    v7->_isResumingMultipointRoute = 0;
  }

  return v7;
}

- (MNDirectionsRequestDetails)initWithWaypoints:(id)waypoints routeAttributes:(id)attributes
{
  waypointsCopy = waypoints;
  attributesCopy = attributes;
  v9 = [(MNDirectionsRequestDetails *)self init];
  v10 = v9;
  if (v9)
  {
    v9->_maxRouteCount = 3;
    objc_storeStrong(&v9->_waypoints, waypoints);
    objc_storeStrong(&v10->_routeAttributes, attributes);
    v10->_isResumingMultipointRoute = 0;
  }

  return v10;
}

@end