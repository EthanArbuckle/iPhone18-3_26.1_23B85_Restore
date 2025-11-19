@interface RTLearnedRoute
- (BOOL)isEqual:(id)a3;
- (RTLearnedRoute)initWithCoder:(id)a3;
- (RTLearnedRoute)initWithLearnedRouteId:(id)a3 routeStartLocation:(id)a4 routeEndLocation:(id)a5 travelTimeEntireRouteSec:(float)a6 travelDistanceEntireRouteMeter:(float)a7 travelModeRoutes:(id)a8 routeStartLocationWithReferenceFrame:(id)a9 routeEndLocationWithReferenceFrame:(id)a10;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTLearnedRoute

- (RTLearnedRoute)initWithLearnedRouteId:(id)a3 routeStartLocation:(id)a4 routeEndLocation:(id)a5 travelTimeEntireRouteSec:(float)a6 travelDistanceEntireRouteMeter:(float)a7 travelModeRoutes:(id)a8 routeStartLocationWithReferenceFrame:(id)a9 routeEndLocationWithReferenceFrame:(id)a10
{
  v27 = a3;
  v26 = a4;
  v25 = a5;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v28.receiver = self;
  v28.super_class = RTLearnedRoute;
  v22 = [(RTLearnedRoute *)&v28 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_learnedRouteIdentifier, a3);
    objc_storeStrong(&v23->_learnedRouteStartLocation, a4);
    objc_storeStrong(&v23->_learnedRouteEndLocation, a5);
    v23->_travelTimeEstimateForEntireRouteInSeconds = a6;
    v23->_travelledDistanceEstimateForEntireRouteInMeters = a7;
    objc_storeStrong(&v23->_travelModeRoutes, a8);
    objc_storeStrong(&v23->_learnedRouteStartLocationWithReferenceFrame, a9);
    objc_storeStrong(&v23->_learnedRouteEndLocationWithReferenceFrame, a10);
  }

  return v23;
}

- (void)encodeWithCoder:(id)a3
{
  learnedRouteIdentifier = self->_learnedRouteIdentifier;
  v7 = a3;
  [v7 encodeObject:learnedRouteIdentifier forKey:@"routeId"];
  [v7 encodeObject:self->_learnedRouteStartLocation forKey:@"routeStartLocation"];
  [v7 encodeObject:self->_learnedRouteEndLocation forKey:@"routeEndLocation"];
  [v7 encodeObject:self->_travelModeRoutes forKey:@"travelModeRoutes"];
  *&v5 = self->_travelTimeEstimateForEntireRouteInSeconds;
  [v7 encodeFloat:@"travelTimeEntireRouteSec" forKey:v5];
  *&v6 = self->_travelledDistanceEstimateForEntireRouteInMeters;
  [v7 encodeFloat:@"travelDistanceEntireRouteMeter" forKey:v6];
  [v7 encodeObject:self->_learnedRouteStartLocationWithReferenceFrame forKey:@"routeStartLocationWithReferenceFrame"];
  [v7 encodeObject:self->_learnedRouteEndLocationWithReferenceFrame forKey:@"routeEndLocationWithReferenceFrame"];
}

- (RTLearnedRoute)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeFloatForKey:@"travelDistanceEntireRouteMeter"];
  v6 = v5;
  [v4 decodeFloatForKey:@"travelTimeEntireRouteSec"];
  v8 = v7;
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"routeId"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"routeStartLocation"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"routeEndLocation"];
  v12 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  v15 = [v4 decodeObjectOfClasses:v14 forKey:@"travelModeRoutes"];

  v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"routeStartLocationWithReferenceFrame"];
  v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"routeEndLocationWithReferenceFrame"];

  LODWORD(v18) = v8;
  LODWORD(v19) = v6;
  v20 = [(RTLearnedRoute *)self initWithLearnedRouteId:v9 routeStartLocation:v10 routeEndLocation:v11 travelTimeEntireRouteSec:v15 travelDistanceEntireRouteMeter:v16 travelModeRoutes:v17 routeStartLocationWithReferenceFrame:v18 routeEndLocationWithReferenceFrame:v19];

  return v20;
}

- (BOOL)isEqual:(id)a3
{
  v9 = a3;
  v10 = v9;
  if (!(self | v9))
  {
    v11 = 1;
    goto LABEL_76;
  }

  v11 = 0;
  if (self && v9)
  {
    v49 = [v9 isMemberOfClass:objc_opt_class()];
    learnedRouteIdentifier = self->_learnedRouteIdentifier;
    if (learnedRouteIdentifier)
    {
      goto LABEL_6;
    }

    v3 = [v10 learnedRouteIdentifier];
    if (!v3)
    {
      v48 = 1;
      goto LABEL_15;
    }

    if (self->_learnedRouteIdentifier)
    {
LABEL_6:
      v13 = [v10 learnedRouteIdentifier];
      if (v13)
      {
        v4 = v13;
        v14 = self->_learnedRouteIdentifier;
        v5 = [v10 learnedRouteIdentifier];
        v48 = [(NSUUID *)v14 isEqual:v5];

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

    v4 = [v10 learnedRouteStartLocation];
    if (v4)
    {
      if (self->_learnedRouteStartLocation)
      {
LABEL_17:
        v16 = [v10 learnedRouteStartLocation];
        if (v16)
        {
          v5 = v16;
          v17 = self->_learnedRouteStartLocation;
          v6 = [v10 learnedRouteStartLocation];
          v47 = [(CLLocation *)v17 isEqual:v6];

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

        v5 = [v10 learnedRouteEndLocation];
        if (!v5)
        {
          v21 = 1;
          goto LABEL_37;
        }

        if (self->_learnedRouteEndLocation)
        {
LABEL_28:
          v19 = [v10 learnedRouteEndLocation];
          if (v19)
          {
            v6 = v19;
            v20 = self->_learnedRouteEndLocation;
            v7 = [v10 learnedRouteEndLocation];
            v21 = [(CLLocation *)v20 isEqual:v7];

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

        v6 = [v10 travelModeRoutes];
        if (v6)
        {
          if (self->_travelModeRoutes)
          {
LABEL_39:
            v23 = [v10 travelModeRoutes];
            if (v23)
            {
              v7 = v23;
              v24 = self->_travelModeRoutes;
              v25 = [v10 travelModeRoutes];
              v26 = [(NSArray *)v24 isEqual:v25];

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

            v7 = [v10 learnedRouteStartLocationWithReferenceFrame];
            if (!v7)
            {
              v38 = 1;
              goto LABEL_59;
            }

            if (self->_learnedRouteStartLocationWithReferenceFrame)
            {
LABEL_50:
              v34 = [v10 learnedRouteStartLocationWithReferenceFrame];
              if (v34)
              {
                v35 = v34;
                v36 = self->_learnedRouteStartLocationWithReferenceFrame;
                v37 = [v10 learnedRouteStartLocationWithReferenceFrame];
                v38 = [(RTLearnedRouteLocation *)v36 isEqual:v37];

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

            v7 = [v10 learnedRouteEndLocationWithReferenceFrame];
            if (v7)
            {
              if (self->_learnedRouteEndLocationWithReferenceFrame)
              {
LABEL_61:
                v40 = [v10 learnedRouteEndLocationWithReferenceFrame];
                if (v40)
                {
                  v41 = v40;
                  v42 = self->_learnedRouteEndLocationWithReferenceFrame;
                  v43 = [v10 learnedRouteEndLocationWithReferenceFrame];
                  v44 = [(RTLearnedRouteLocation *)v42 isEqual:v43];

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
  v4 = [(RTLearnedRoute *)self learnedRouteIdentifier];
  v5 = [(RTLearnedRoute *)self learnedRouteStartLocation];
  v6 = [(RTLearnedRoute *)self learnedRouteEndLocation];
  [(RTLearnedRoute *)self travelTimeEstimateForEntireRouteInSeconds];
  v8 = v7;
  [(RTLearnedRoute *)self travelledDistanceEstimateForEntireRouteInMeters];
  v10 = v9;
  v11 = [(RTLearnedRoute *)self travelModeRoutes];
  if (v11)
  {
    v12 = [(NSArray *)self->_travelModeRoutes count];
  }

  else
  {
    v12 = 0;
  }

  v13 = [(RTLearnedRoute *)self learnedRouteStartLocationWithReferenceFrame];
  v14 = [(RTLearnedRoute *)self learnedRouteEndLocationWithReferenceFrame];
  v15 = [v3 stringWithFormat:@"routeId, %@, startLocation, %@, endLocation, %@, totalRouteTimeSec, %0.6f, totalRouteDistanceMeters, %0.6f, numberOfTravelModeRoutes, %lu, startLocationWithRefFrame, %@, endLocationWithRefFrame, %@", v4, v5, v6, v8, v10, v12, v13, v14];

  return v15;
}

@end