@interface MNDirectionsRequestDetails
- (BOOL)isEqual:(id)a3;
- (MNDirectionsRequestDetails)initWithCoder:(id)a3;
- (MNDirectionsRequestDetails)initWithTracePath:(id)a3;
- (MNDirectionsRequestDetails)initWithWaypoints:(id)a3 routeAttributes:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MNDirectionsRequestDetails

- (void)encodeWithCoder:(id)a3
{
  waypoints = self->_waypoints;
  v5 = a3;
  [v5 encodeObject:waypoints forKey:@"_waypoints"];
  [v5 encodeObject:self->_routeAttributes forKey:@"_routeAttributes"];
  [v5 encodeObject:self->_traits forKey:@"_traits"];
  [v5 encodeInteger:self->_maxRouteCount forKey:@"_maxRouteCount"];
  [v5 encodeObject:self->_currentUserLocation forKey:@"_currentUserLocation"];
  [v5 encodeObject:self->_currentMapRegion forKey:@"_currentMapRegion"];
  [v5 encodeObject:self->_directionsRequestFeedback forKey:@"_directionsRequestFeedback"];
  [v5 encodeObject:self->_commonOptions forKey:@"_commonOptions"];
  [v5 encodeBool:self->_isResumingMultipointRoute forKey:@"_isResumingMultipointRoute"];
  [v5 encodeObject:self->_resumeRouteHandle forKey:@"_resumeRouteHandle"];
  [v5 encodeObject:self->_tracePath forKey:@"_tracePath"];
  [v5 encodeObject:self->_auditToken forKey:@"_auditToken"];
}

- (MNDirectionsRequestDetails)initWithCoder:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = MNDirectionsRequestDetails;
  v5 = [(MNDirectionsRequestDetails *)&v30 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"_waypoints"];
    waypoints = v5->_waypoints;
    v5->_waypoints = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_routeAttributes"];
    routeAttributes = v5->_routeAttributes;
    v5->_routeAttributes = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_traits"];
    traits = v5->_traits;
    v5->_traits = v13;

    v5->_maxRouteCount = [v4 decodeIntegerForKey:@"_maxRouteCount"];
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_currentUserLocation"];
    currentUserLocation = v5->_currentUserLocation;
    v5->_currentUserLocation = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_currentMapRegion"];
    currentMapRegion = v5->_currentMapRegion;
    v5->_currentMapRegion = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_directionsRequestFeedback"];
    directionsRequestFeedback = v5->_directionsRequestFeedback;
    v5->_directionsRequestFeedback = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_commonOptions"];
    commonOptions = v5->_commonOptions;
    v5->_commonOptions = v21;

    v5->_isResumingMultipointRoute = [v4 decodeBoolForKey:@"_isResumingMultipointRoute"];
    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_resumeRouteHandle"];
    resumeRouteHandle = v5->_resumeRouteHandle;
    v5->_resumeRouteHandle = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_tracePath"];
    tracePath = v5->_tracePath;
    v5->_tracePath = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_auditToken"];
    auditToken = v5->_auditToken;
    v5->_auditToken = v27;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(MNDirectionsRequestDetails *)self waypoints];
  v4 = [v3 hash];

  v5 = [(MNDirectionsRequestDetails *)self routeAttributes];
  v6 = [v5 hash] + 53 * v4 + 2809;

  v7 = [(MNDirectionsRequestDetails *)self traits];
  v8 = [v7 hash] + 53 * v6;

  v9 = [(MNDirectionsRequestDetails *)self maxRouteCount]+ 53 * v8;
  v10 = [(MNDirectionsRequestDetails *)self currentUserLocation];
  v11 = [v10 hash] + 53 * v9;

  v12 = [(MNDirectionsRequestDetails *)self currentMapRegion];
  v13 = [v12 hash] + 53 * v11;

  v14 = [(MNDirectionsRequestDetails *)self directionsRequestFeedback];
  v15 = [v14 hash] + 53 * v13;

  v16 = [(MNDirectionsRequestDetails *)self commonOptions];
  v17 = [v16 hash] + 53 * v15;

  v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[MNDirectionsRequestDetails isResumingMultipointRoute](self, "isResumingMultipointRoute")}];
  v19 = [v18 hash] + 53 * v17;

  v20 = [(MNDirectionsRequestDetails *)self tracePath];
  v21 = [v20 hash] + 53 * v19;

  v22 = [(MNDirectionsRequestDetails *)self auditToken];
  v23 = [v22 hash] + 53 * v21;

  return v23;
}

- (BOOL)isEqual:(id)a3
{
  v7 = a3;
  if (self == v7)
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

  v10 = v7;
  v11 = [(MNDirectionsRequestDetails *)self waypoints];
  if (!v11)
  {
    v3 = [(MNDirectionsRequestDetails *)v10 waypoints];
    if (!v3)
    {
      v12 = 0;
      goto LABEL_11;
    }
  }

  v4 = [(MNDirectionsRequestDetails *)self waypoints];
  v5 = [(MNDirectionsRequestDetails *)v10 waypoints];
  if ([v4 isEqualToArray:v5])
  {
    v12 = 1;
LABEL_11:
    v75 = [(MNDirectionsRequestDetails *)self routeAttributes];
    if (v75 || ([(MNDirectionsRequestDetails *)v10 routeAttributes], (v71 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v13 = [(MNDirectionsRequestDetails *)self routeAttributes];
      v14 = [(MNDirectionsRequestDetails *)v10 routeAttributes];
      if (([v13 isEqual:v14] & 1) == 0)
      {

        v15 = v75;
        if (!v75)
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

      v69 = v14;
      v70 = v13;
      v74 = v3;
      v72 = 1;
      v73 = v12;
    }

    else
    {
      v72 = 0;
      v73 = v12;
      v74 = v3;
      v71 = 0;
    }

    v16 = [(MNDirectionsRequestDetails *)self traits];
    v17 = [(MNDirectionsRequestDetails *)v10 traits];
    v18 = v16;
    v19 = v17;
    if (v18 | v19 && (v20 = [v18 isEqual:v19], v19, v18, !v20) || (v21 = -[MNDirectionsRequestDetails maxRouteCount](self, "maxRouteCount"), v21 != -[MNDirectionsRequestDetails maxRouteCount](v10, "maxRouteCount")))
    {

      v9 = 0;
      if ((v72 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    v68 = [(MNDirectionsRequestDetails *)self currentUserLocation];
    if (v68 || ([(MNDirectionsRequestDetails *)v10 currentUserLocation], (v61 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v22 = [(MNDirectionsRequestDetails *)self currentUserLocation];
      v66 = [(MNDirectionsRequestDetails *)v10 currentUserLocation];
      v67 = v22;
      if (![v22 isEqual:?])
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

    v65 = [(MNDirectionsRequestDetails *)self currentMapRegion];
    if (v65 || ([(MNDirectionsRequestDetails *)v10 currentMapRegion], (v56 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v24 = [(MNDirectionsRequestDetails *)self currentMapRegion];
      v62 = [(MNDirectionsRequestDetails *)v10 currentMapRegion];
      v63 = v24;
      if (![v24 isEqual:v62])
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

    v60 = [(MNDirectionsRequestDetails *)self directionsRequestFeedback];
    if (v60 || ([(MNDirectionsRequestDetails *)v10 directionsRequestFeedback], (v53 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v25 = [(MNDirectionsRequestDetails *)self directionsRequestFeedback];
      v57 = [(MNDirectionsRequestDetails *)v10 directionsRequestFeedback];
      v58 = v25;
      if (![v25 isEqual:?])
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

    v55 = [(MNDirectionsRequestDetails *)self commonOptions];
    if (v55 || ([(MNDirectionsRequestDetails *)v10 commonOptions], (v50 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v26 = [(MNDirectionsRequestDetails *)self commonOptions];
      v27 = [(MNDirectionsRequestDetails *)v10 commonOptions];
      if (([v26 isEqual:v27] & 1) == 0)
      {

        v28 = v55;
        if (!v55)
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

      v51 = v27;
      v49 = v26;
      v52 = 1;
    }

    else
    {
      v50 = 0;
      v52 = 0;
    }

    v29 = [(MNDirectionsRequestDetails *)self isResumingMultipointRoute];
    if (v29 != [(MNDirectionsRequestDetails *)v10 isResumingMultipointRoute])
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
      v31 = [(MNDirectionsRequestDetails *)self tracePath];
      v46 = [(MNDirectionsRequestDetails *)v10 tracePath];
      v47 = v31;
      if (![v31 isEqual:?])
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
          v37 = v55;
          if (!v55)
          {

            v37 = 0;
          }

          if (v54)
          {
            goto LABEL_86;
          }

LABEL_87:
          v38 = v60;
          if (!v60)
          {

            v38 = 0;
          }

          if (!v59)
          {
LABEL_91:
            v39 = v65;
            if (!v65)
            {

              v39 = 0;
            }

            if (!v64)
            {
LABEL_95:
              v40 = v68;
              if (!v68)
              {

                v40 = 0;
              }

              if (!v72)
              {
LABEL_29:
                v3 = v74;
                if (!v75)
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

    v44 = [(MNDirectionsRequestDetails *)self auditToken];
    if (v44 || ([(MNDirectionsRequestDetails *)v10 auditToken], (v41 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v33 = [(MNDirectionsRequestDetails *)self auditToken:v41];
      v34 = [(MNDirectionsRequestDetails *)v10 auditToken];
      v9 = [v33 isEqual:v34];

      if (v44)
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
  if (!v11)
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

- (MNDirectionsRequestDetails)initWithTracePath:(id)a3
{
  v5 = a3;
  v6 = [(MNDirectionsRequestDetails *)self init];
  v7 = v6;
  if (v6)
  {
    v6->_maxRouteCount = 3;
    objc_storeStrong(&v6->_tracePath, a3);
    v7->_isResumingMultipointRoute = 0;
  }

  return v7;
}

- (MNDirectionsRequestDetails)initWithWaypoints:(id)a3 routeAttributes:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(MNDirectionsRequestDetails *)self init];
  v10 = v9;
  if (v9)
  {
    v9->_maxRouteCount = 3;
    objc_storeStrong(&v9->_waypoints, a3);
    objc_storeStrong(&v10->_routeAttributes, a4);
    v10->_isResumingMultipointRoute = 0;
  }

  return v10;
}

@end