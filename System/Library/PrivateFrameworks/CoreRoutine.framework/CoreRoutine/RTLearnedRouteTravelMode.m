@interface RTLearnedRouteTravelMode
+ (double)deriveConfidenceFromRouteMetric:(id)a3;
- (BOOL)isEqual:(id)a3;
- (RTLearnedRouteTravelMode)initWithCoder:(id)a3;
- (RTLearnedRouteTravelMode)initWithRouteTravelMode:(int64_t)a3 maxTravelTimeEstimateInSeconds:(float)a4 minTravelTimeEstimateInSeconds:(float)a5 meanTravelTimeEstimateInSeconds:(float)a6 maxTravelledDistanceEstimateInMeters:(float)a7 minTravelledDistanceEstimateInMeters:(float)a8 meanTravelledDistanceEstimateInMeters:(float)a9 routeLocations:(id)a10 learnedRouteLocations:(id)a11 learnedRouteMetrics:(id)a12;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTLearnedRouteTravelMode

+ (double)deriveConfidenceFromRouteMetric:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E695DF00];
  v5 = [MEMORY[0x1E695DF00] now];
  v6 = [v4 dateWithTimeInterval:v5 sinceDate:-1814400.0];

  v7 = -1.0;
  if (v3 && [v3 allTraversalCountBetweenThisODPair] >= 3 && objc_msgSend(v3, "routeTraversalCount") >= 3)
  {
    v8 = [v3 lastTravelledDate];
    if ([v8 compare:v6] == 1)
    {
      v9 = [v3 routeTraversalCount];
      v10 = [v3 allTraversalCountBetweenThisODPair];

      if (v9 <= v10)
      {
        v7 = round([v3 routeTraversalCount] / objc_msgSend(v3, "allTraversalCountBetweenThisODPair") * 10.0) / 10.0;
      }
    }

    else
    {
    }
  }

  return v7;
}

- (RTLearnedRouteTravelMode)initWithRouteTravelMode:(int64_t)a3 maxTravelTimeEstimateInSeconds:(float)a4 minTravelTimeEstimateInSeconds:(float)a5 meanTravelTimeEstimateInSeconds:(float)a6 maxTravelledDistanceEstimateInMeters:(float)a7 minTravelledDistanceEstimateInMeters:(float)a8 meanTravelledDistanceEstimateInMeters:(float)a9 routeLocations:(id)a10 learnedRouteLocations:(id)a11 learnedRouteMetrics:(id)a12
{
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v29.receiver = self;
  v29.super_class = RTLearnedRouteTravelMode;
  v26 = [(RTLearnedRouteTravelMode *)&v29 init];
  v27 = v26;
  if (v26)
  {
    v26->_routeTravelMode = a3;
    v26->_maxTravelTimeEstimateInSeconds = a4;
    v26->_minTravelTimeEstimateInSeconds = a5;
    v26->_meanTravelTimeEstimateInSeconds = a6;
    v26->_maxTravelledDistanceEstimateInMeters = a7;
    v26->_minTravelledDistanceEstimateInMeters = a8;
    v26->_meanTravelledDistanceEstimateInMeters = a9;
    objc_storeStrong(&v26->_routeLocations, a10);
    objc_storeStrong(&v27->_learnedRouteLocations, a11);
    objc_storeStrong(&v27->_learnedRouteMetrics, a12);
  }

  return v27;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:-[RTLearnedRouteTravelMode routeTravelMode](self forKey:{"routeTravelMode"), @"travelMode"}];
  [(RTLearnedRouteTravelMode *)self maxTravelTimeEstimateInSeconds];
  [v4 encodeFloat:@"maxTravelTime" forKey:?];
  [(RTLearnedRouteTravelMode *)self minTravelTimeEstimateInSeconds];
  [v4 encodeFloat:@"minTravelTime" forKey:?];
  [(RTLearnedRouteTravelMode *)self meanTravelTimeEstimateInSeconds];
  [v4 encodeFloat:@"meanTravelTime" forKey:?];
  [(RTLearnedRouteTravelMode *)self maxTravelledDistanceEstimateInMeters];
  [v4 encodeFloat:@"maxTravelDistance" forKey:?];
  [(RTLearnedRouteTravelMode *)self minTravelledDistanceEstimateInMeters];
  [v4 encodeFloat:@"minTravelDistance" forKey:?];
  [(RTLearnedRouteTravelMode *)self meanTravelledDistanceEstimateInMeters];
  [v4 encodeFloat:@"meanTravelDistance" forKey:?];
  v5 = [(RTLearnedRouteTravelMode *)self routeLocations];
  [v4 encodeObject:v5 forKey:@"routeLocations"];

  v6 = [(RTLearnedRouteTravelMode *)self learnedRouteLocations];
  [v4 encodeObject:v6 forKey:@"learnedRouteLocations"];

  v7 = [(RTLearnedRouteTravelMode *)self learnedRouteMetrics];
  [v4 encodeObject:v7 forKey:@"learnedRouteMetrics"];
}

- (RTLearnedRouteTravelMode)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeInt64ForKey:@"travelMode"];
  [v4 decodeFloatForKey:@"maxTravelTime"];
  v7 = v6;
  [v4 decodeFloatForKey:@"minTravelTime"];
  v9 = v8;
  [v4 decodeFloatForKey:@"meanTravelTime"];
  v11 = v10;
  [v4 decodeFloatForKey:@"maxTravelDistance"];
  v13 = v12;
  [v4 decodeFloatForKey:@"minTravelDistance"];
  v15 = v14;
  [v4 decodeFloatForKey:@"meanTravelDistance"];
  v17 = v16;
  v18 = MEMORY[0x1E695DFD8];
  v19 = objc_opt_class();
  v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
  v21 = [v4 decodeObjectOfClasses:v20 forKey:@"routeLocations"];

  v22 = MEMORY[0x1E695DFD8];
  v23 = objc_opt_class();
  v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
  v25 = [v4 decodeObjectOfClasses:v24 forKey:@"learnedRouteLocations"];

  v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"learnedRouteMetrics"];

  LODWORD(v27) = v7;
  LODWORD(v28) = v9;
  LODWORD(v29) = v11;
  LODWORD(v30) = v13;
  LODWORD(v31) = v15;
  LODWORD(v32) = v17;
  v33 = [(RTLearnedRouteTravelMode *)self initWithRouteTravelMode:v5 maxTravelTimeEstimateInSeconds:v21 minTravelTimeEstimateInSeconds:v25 meanTravelTimeEstimateInSeconds:v26 maxTravelledDistanceEstimateInMeters:v27 minTravelledDistanceEstimateInMeters:v28 meanTravelledDistanceEstimateInMeters:v29 routeLocations:v30 learnedRouteLocations:v31 learnedRouteMetrics:v32];

  return v33;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  v7 = v6;
  if (!(self | v6))
  {
    v8 = 1;
    goto LABEL_49;
  }

  v8 = 0;
  if (self && v6)
  {
    v9 = [v6 isMemberOfClass:objc_opt_class()];
    v10 = [(RTLearnedRouteTravelMode *)self routeTravelMode];
    v60 = [v7 routeTravelMode];
    [(RTLearnedRouteTravelMode *)self maxTravelTimeEstimateInSeconds];
    v59 = v11;
    [v7 maxTravelTimeEstimateInSeconds];
    v58 = v12;
    [(RTLearnedRouteTravelMode *)self minTravelTimeEstimateInSeconds];
    v57 = v13;
    [v7 minTravelTimeEstimateInSeconds];
    v56 = v14;
    [(RTLearnedRouteTravelMode *)self meanTravelTimeEstimateInSeconds];
    v16 = v15;
    [v7 meanTravelTimeEstimateInSeconds];
    v18 = v17;
    [(RTLearnedRouteTravelMode *)self meanTravelledDistanceEstimateInMeters];
    v20 = v19;
    [v7 meanTravelledDistanceEstimateInMeters];
    v22 = v21;
    [(RTLearnedRouteTravelMode *)self minTravelledDistanceEstimateInMeters];
    v24 = v23;
    [v7 minTravelledDistanceEstimateInMeters];
    v26 = v25;
    [(RTLearnedRouteTravelMode *)self meanTravelledDistanceEstimateInMeters];
    v28 = v27;
    [v7 meanTravelledDistanceEstimateInMeters];
    v30 = v29;
    v31 = [(RTLearnedRouteTravelMode *)self routeLocations];
    if (!v31)
    {
      v4 = [v7 routeLocations];
      if (!v4)
      {
        v55 = 1;
LABEL_15:

        goto LABEL_16;
      }
    }

    v32 = [(RTLearnedRouteTravelMode *)self routeLocations];
    if (v32)
    {
      v33 = v32;
      v34 = [v7 routeLocations];
      if (v34)
      {
        v35 = v34;
        v36 = [(RTLearnedRouteTravelMode *)self routeLocations];
        v3 = [v7 routeLocations];
        v55 = [v36 isEqualToArray:v3];

        if (!v31)
        {
          goto LABEL_15;
        }

LABEL_16:

        v37 = [(RTLearnedRouteTravelMode *)self learnedRouteLocations];
        if (!v37)
        {
          v3 = [v7 learnedRouteLocations];
          if (!v3)
          {
            v46 = 1;
LABEL_26:

            goto LABEL_27;
          }
        }

        v38 = [(RTLearnedRouteTravelMode *)self learnedRouteLocations];
        if (v38)
        {
          v39 = v38;
          v40 = [v7 learnedRouteLocations];
          if (v40)
          {
            v41 = v40;
            [(RTLearnedRouteTravelMode *)self learnedRouteLocations];
            v42 = v54 = v3;
            [v7 learnedRouteLocations];
            v43 = v10;
            v45 = v44 = v9;
            v46 = [v42 isEqualToArray:v45];

            v9 = v44;
            v10 = v43;

            v3 = v54;
            if (!v37)
            {
              goto LABEL_26;
            }

LABEL_27:

            v47 = [(RTLearnedRouteTravelMode *)self learnedRouteMetrics];
            if (v47)
            {
              v48 = [v7 learnedRouteMetrics];
              if (v48)
              {
                v49 = [(RTLearnedRouteTravelMode *)self learnedRouteMetrics];
                v50 = [v7 learnedRouteMetrics];
                v51 = v49 == v50;
              }

              else
              {
                v51 = 0;
              }
            }

            else
            {
              v51 = 0;
            }

            if (v10 == v60)
            {
              v52 = v9;
            }

            else
            {
              v52 = 0;
            }

            if (v59 != v58)
            {
              v52 = 0;
            }

            if (v57 != v56)
            {
              v52 = 0;
            }

            if (v16 != v18)
            {
              v52 = 0;
            }

            if (v20 != v22)
            {
              v52 = 0;
            }

            if (v24 != v26)
            {
              v52 = 0;
            }

            if (v28 != v30)
            {
              v52 = 0;
            }

            v8 = v52 & v46 & v55 & v51;
            goto LABEL_49;
          }
        }

        v46 = 0;
        if (!v37)
        {
          goto LABEL_26;
        }

        goto LABEL_27;
      }
    }

    v55 = 0;
    if (!v31)
    {
      goto LABEL_15;
    }

    goto LABEL_16;
  }

LABEL_49:

  return v8;
}

- (id)description
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = [(RTLearnedRouteTravelMode *)self routeTravelMode];
  [(RTLearnedRouteTravelMode *)self maxTravelTimeEstimateInSeconds];
  v8 = v7;
  [(RTLearnedRouteTravelMode *)self minTravelTimeEstimateInSeconds];
  v10 = v9;
  [(RTLearnedRouteTravelMode *)self meanTravelTimeEstimateInSeconds];
  v12 = v11;
  [(RTLearnedRouteTravelMode *)self maxTravelledDistanceEstimateInMeters];
  v14 = v13;
  [(RTLearnedRouteTravelMode *)self minTravelledDistanceEstimateInMeters];
  v16 = v15;
  [(RTLearnedRouteTravelMode *)self meanTravelledDistanceEstimateInMeters];
  v18 = v17;
  v19 = [(RTLearnedRouteTravelMode *)self routeLocations];
  if (v19)
  {
    v2 = [(RTLearnedRouteTravelMode *)self routeLocations];
    v20 = [v2 count];
  }

  else
  {
    v20 = 0;
  }

  v21 = v8;
  v22 = v10;
  v23 = v12;
  v24 = v14;
  v25 = v16;
  v26 = v18;
  v27 = [(RTLearnedRouteTravelMode *)self learnedRouteLocations];
  if (v27)
  {
    v3 = [(RTLearnedRouteTravelMode *)self learnedRouteLocations];
    v28 = [v3 count];
  }

  else
  {
    v28 = 0;
  }

  v29 = [(RTLearnedRouteTravelMode *)self learnedRouteMetrics];
  v30 = [v29 description];
  v31 = [v5 stringWithFormat:@"travelMode, %ld, maxTravelTime, %0.3f, minTravelTime, %0.3f, meanTravelTime, %0.3f, maxTravelDistance, %0.3f, minTravelDistance, %0.3f, meanTravelDistance, %0.3f, routeLocationCount, %lu, learnedRouteLocationCount, %lu, learnedRouteMetrics, %@", v6, *&v21, *&v22, *&v23, *&v24, *&v25, *&v26, v20, v28, v30];

  if (v27)
  {
  }

  if (v19)
  {
  }

  return v31;
}

@end