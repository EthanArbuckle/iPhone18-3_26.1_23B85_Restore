@interface RTLearnedRoute
- (BOOL)isEqual:(id)equal;
- (RTLearnedRoute)initWithCoder:(id)coder;
- (RTLearnedRoute)initWithLearnedRouteId:(id)id routeStartLocation:(id)location routeEndLocation:(id)endLocation travelTimeEntireRouteSec:(float)sec travelDistanceEntireRouteMeter:(float)meter travelModeRoutes:(id)routes routeStartLocationWithReferenceFrame:(id)frame routeEndLocationWithReferenceFrame:(id)self0;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTLearnedRoute

- (RTLearnedRoute)initWithLearnedRouteId:(id)id routeStartLocation:(id)location routeEndLocation:(id)endLocation travelTimeEntireRouteSec:(float)sec travelDistanceEntireRouteMeter:(float)meter travelModeRoutes:(id)routes routeStartLocationWithReferenceFrame:(id)frame routeEndLocationWithReferenceFrame:(id)self0
{
  idCopy = id;
  locationCopy = location;
  endLocationCopy = endLocation;
  routesCopy = routes;
  frameCopy = frame;
  referenceFrameCopy = referenceFrame;
  v28.receiver = self;
  v28.super_class = RTLearnedRoute;
  v22 = [(RTLearnedRoute *)&v28 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_learnedRouteIdentifier, id);
    objc_storeStrong(&v23->_learnedRouteStartLocation, location);
    objc_storeStrong(&v23->_learnedRouteEndLocation, endLocation);
    v23->_travelTimeEstimateForEntireRouteInSeconds = sec;
    v23->_travelledDistanceEstimateForEntireRouteInMeters = meter;
    objc_storeStrong(&v23->_travelModeRoutes, routes);
    objc_storeStrong(&v23->_learnedRouteStartLocationWithReferenceFrame, frame);
    objc_storeStrong(&v23->_learnedRouteEndLocationWithReferenceFrame, referenceFrame);
  }

  return v23;
}

- (void)encodeWithCoder:(id)coder
{
  learnedRouteIdentifier = self->_learnedRouteIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:learnedRouteIdentifier forKey:@"routeId"];
  [coderCopy encodeObject:self->_learnedRouteStartLocation forKey:@"routeStartLocation"];
  [coderCopy encodeObject:self->_learnedRouteEndLocation forKey:@"routeEndLocation"];
  [coderCopy encodeObject:self->_travelModeRoutes forKey:@"travelModeRoutes"];
  *&v5 = self->_travelTimeEstimateForEntireRouteInSeconds;
  [coderCopy encodeFloat:@"travelTimeEntireRouteSec" forKey:v5];
  *&v6 = self->_travelledDistanceEstimateForEntireRouteInMeters;
  [coderCopy encodeFloat:@"travelDistanceEntireRouteMeter" forKey:v6];
  [coderCopy encodeObject:self->_learnedRouteStartLocationWithReferenceFrame forKey:@"routeStartLocationWithReferenceFrame"];
  [coderCopy encodeObject:self->_learnedRouteEndLocationWithReferenceFrame forKey:@"routeEndLocationWithReferenceFrame"];
}

- (RTLearnedRoute)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeFloatForKey:@"travelDistanceEntireRouteMeter"];
  v6 = v5;
  [coderCopy decodeFloatForKey:@"travelTimeEntireRouteSec"];
  v8 = v7;
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"routeId"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"routeStartLocation"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"routeEndLocation"];
  v12 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"travelModeRoutes"];

  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"routeStartLocationWithReferenceFrame"];
  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"routeEndLocationWithReferenceFrame"];

  LODWORD(v18) = v8;
  LODWORD(v19) = v6;
  v20 = [(RTLearnedRoute *)self initWithLearnedRouteId:v9 routeStartLocation:v10 routeEndLocation:v11 travelTimeEntireRouteSec:v15 travelDistanceEntireRouteMeter:v16 travelModeRoutes:v17 routeStartLocationWithReferenceFrame:v18 routeEndLocationWithReferenceFrame:v19];

  return v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v10 = equalCopy;
  if (!(self | equalCopy))
  {
    v11 = 1;
    goto LABEL_76;
  }

  v11 = 0;
  if (self && equalCopy)
  {
    v49 = [equalCopy isMemberOfClass:objc_opt_class()];
    learnedRouteIdentifier = self->_learnedRouteIdentifier;
    if (learnedRouteIdentifier)
    {
      goto LABEL_6;
    }

    learnedRouteIdentifier = [v10 learnedRouteIdentifier];
    if (!learnedRouteIdentifier)
    {
      v48 = 1;
      goto LABEL_15;
    }

    if (self->_learnedRouteIdentifier)
    {
LABEL_6:
      learnedRouteIdentifier2 = [v10 learnedRouteIdentifier];
      if (learnedRouteIdentifier2)
      {
        learnedRouteStartLocation = learnedRouteIdentifier2;
        v14 = self->_learnedRouteIdentifier;
        learnedRouteIdentifier3 = [v10 learnedRouteIdentifier];
        v48 = [(NSUUID *)v14 isEqual:learnedRouteIdentifier3];

        if (learnedRouteIdentifier)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v48 = 0;
        if (learnedRouteIdentifier)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      v48 = 0;
    }

LABEL_15:

LABEL_16:
    learnedRouteStartLocation = self->_learnedRouteStartLocation;
    if (learnedRouteStartLocation)
    {
      goto LABEL_17;
    }

    learnedRouteStartLocation = [v10 learnedRouteStartLocation];
    if (learnedRouteStartLocation)
    {
      if (self->_learnedRouteStartLocation)
      {
LABEL_17:
        learnedRouteStartLocation2 = [v10 learnedRouteStartLocation];
        if (learnedRouteStartLocation2)
        {
          learnedRouteIdentifier3 = learnedRouteStartLocation2;
          v17 = self->_learnedRouteStartLocation;
          learnedRouteStartLocation3 = [v10 learnedRouteStartLocation];
          v47 = [(CLLocation *)v17 isEqual:learnedRouteStartLocation3];

          if (!learnedRouteStartLocation)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v47 = 0;
          if (!learnedRouteStartLocation)
          {
            goto LABEL_26;
          }
        }

LABEL_27:
        learnedRouteEndLocation = self->_learnedRouteEndLocation;
        if (learnedRouteEndLocation)
        {
          goto LABEL_28;
        }

        learnedRouteIdentifier3 = [v10 learnedRouteEndLocation];
        if (!learnedRouteIdentifier3)
        {
          v21 = 1;
          goto LABEL_37;
        }

        if (self->_learnedRouteEndLocation)
        {
LABEL_28:
          learnedRouteEndLocation = [v10 learnedRouteEndLocation];
          if (learnedRouteEndLocation)
          {
            learnedRouteStartLocation3 = learnedRouteEndLocation;
            v20 = self->_learnedRouteEndLocation;
            learnedRouteEndLocation2 = [v10 learnedRouteEndLocation];
            v21 = [(CLLocation *)v20 isEqual:learnedRouteEndLocation2];

            if (learnedRouteEndLocation)
            {
              goto LABEL_38;
            }
          }

          else
          {
            v21 = 0;
            if (learnedRouteEndLocation)
            {
              goto LABEL_38;
            }
          }
        }

        else
        {
          v21 = 0;
        }

LABEL_37:

LABEL_38:
        travelModeRoutes = self->_travelModeRoutes;
        if (travelModeRoutes)
        {
          goto LABEL_39;
        }

        learnedRouteStartLocation3 = [v10 travelModeRoutes];
        if (learnedRouteStartLocation3)
        {
          if (self->_travelModeRoutes)
          {
LABEL_39:
            travelModeRoutes = [v10 travelModeRoutes];
            if (travelModeRoutes)
            {
              learnedRouteEndLocation2 = travelModeRoutes;
              v24 = self->_travelModeRoutes;
              travelModeRoutes2 = [v10 travelModeRoutes];
              v26 = [(NSArray *)v24 isEqual:travelModeRoutes2];

              if (!travelModeRoutes)
              {
                goto LABEL_48;
              }
            }

            else
            {
              v26 = 0;
              if (!travelModeRoutes)
              {
                goto LABEL_48;
              }
            }

LABEL_49:
            travelTimeEstimateForEntireRouteInSeconds = self->_travelTimeEstimateForEntireRouteInSeconds;
            [v10 travelTimeEstimateForEntireRouteInSeconds];
            v29 = v28;
            travelledDistanceEstimateForEntireRouteInMeters = self->_travelledDistanceEstimateForEntireRouteInMeters;
            [v10 travelledDistanceEstimateForEntireRouteInMeters];
            v32 = v31;
            learnedRouteStartLocationWithReferenceFrame = self->_learnedRouteStartLocationWithReferenceFrame;
            if (learnedRouteStartLocationWithReferenceFrame)
            {
              goto LABEL_50;
            }

            learnedRouteEndLocation2 = [v10 learnedRouteStartLocationWithReferenceFrame];
            if (!learnedRouteEndLocation2)
            {
              v38 = 1;
              goto LABEL_59;
            }

            if (self->_learnedRouteStartLocationWithReferenceFrame)
            {
LABEL_50:
              learnedRouteStartLocationWithReferenceFrame = [v10 learnedRouteStartLocationWithReferenceFrame];
              if (learnedRouteStartLocationWithReferenceFrame)
              {
                v35 = learnedRouteStartLocationWithReferenceFrame;
                v36 = self->_learnedRouteStartLocationWithReferenceFrame;
                learnedRouteStartLocationWithReferenceFrame2 = [v10 learnedRouteStartLocationWithReferenceFrame];
                v38 = [(RTLearnedRouteLocation *)v36 isEqual:learnedRouteStartLocationWithReferenceFrame2];

                if (learnedRouteStartLocationWithReferenceFrame)
                {
                  goto LABEL_60;
                }
              }

              else
              {
                v38 = 0;
                if (learnedRouteStartLocationWithReferenceFrame)
                {
                  goto LABEL_60;
                }
              }
            }

            else
            {
              v38 = 0;
            }

LABEL_59:

LABEL_60:
            learnedRouteEndLocationWithReferenceFrame = self->_learnedRouteEndLocationWithReferenceFrame;
            if (learnedRouteEndLocationWithReferenceFrame)
            {
              goto LABEL_61;
            }

            learnedRouteEndLocation2 = [v10 learnedRouteEndLocationWithReferenceFrame];
            if (learnedRouteEndLocation2)
            {
              if (self->_learnedRouteEndLocationWithReferenceFrame)
              {
LABEL_61:
                learnedRouteEndLocationWithReferenceFrame = [v10 learnedRouteEndLocationWithReferenceFrame];
                if (learnedRouteEndLocationWithReferenceFrame)
                {
                  v41 = learnedRouteEndLocationWithReferenceFrame;
                  v42 = self->_learnedRouteEndLocationWithReferenceFrame;
                  learnedRouteEndLocationWithReferenceFrame2 = [v10 learnedRouteEndLocationWithReferenceFrame];
                  v44 = [(RTLearnedRouteLocation *)v42 isEqual:learnedRouteEndLocationWithReferenceFrame2];

                  if (!learnedRouteEndLocationWithReferenceFrame)
                  {
                    goto LABEL_70;
                  }
                }

                else
                {
                  v44 = 0;
                  if (!learnedRouteEndLocationWithReferenceFrame)
                  {
                    goto LABEL_70;
                  }
                }

LABEL_71:
                v45 = v49 & v48 & v47 & v21 & v26;
                if (travelTimeEstimateForEntireRouteInSeconds != v29)
                {
                  v45 = 0;
                }

                if (travelledDistanceEstimateForEntireRouteInMeters != v32)
                {
                  v45 = 0;
                }

                v11 = v45 & v38 & v44;
                goto LABEL_76;
              }

              v44 = 0;
            }

            else
            {
              v44 = 1;
            }

LABEL_70:

            goto LABEL_71;
          }

          v26 = 0;
        }

        else
        {
          v26 = 1;
        }

LABEL_48:

        goto LABEL_49;
      }

      v47 = 0;
    }

    else
    {
      v47 = 1;
    }

LABEL_26:

    goto LABEL_27;
  }

LABEL_76:

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  learnedRouteIdentifier = [(RTLearnedRoute *)self learnedRouteIdentifier];
  learnedRouteStartLocation = [(RTLearnedRoute *)self learnedRouteStartLocation];
  learnedRouteEndLocation = [(RTLearnedRoute *)self learnedRouteEndLocation];
  [(RTLearnedRoute *)self travelTimeEstimateForEntireRouteInSeconds];
  v8 = v7;
  [(RTLearnedRoute *)self travelledDistanceEstimateForEntireRouteInMeters];
  v10 = v9;
  travelModeRoutes = [(RTLearnedRoute *)self travelModeRoutes];
  if (travelModeRoutes)
  {
    v12 = [(NSArray *)self->_travelModeRoutes count];
  }

  else
  {
    v12 = 0;
  }

  learnedRouteStartLocationWithReferenceFrame = [(RTLearnedRoute *)self learnedRouteStartLocationWithReferenceFrame];
  learnedRouteEndLocationWithReferenceFrame = [(RTLearnedRoute *)self learnedRouteEndLocationWithReferenceFrame];
  v15 = [v3 stringWithFormat:@"routeId, %@, startLocation, %@, endLocation, %@, totalRouteTimeSec, %0.6f, totalRouteDistanceMeters, %0.6f, numberOfTravelModeRoutes, %lu, startLocationWithRefFrame, %@, endLocationWithRefFrame, %@", learnedRouteIdentifier, learnedRouteStartLocation, learnedRouteEndLocation, v8, v10, v12, learnedRouteStartLocationWithReferenceFrame, learnedRouteEndLocationWithReferenceFrame];

  return v15;
}

@end