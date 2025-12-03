@interface RTLearnedRouteTravelMode
+ (double)deriveConfidenceFromRouteMetric:(id)metric;
- (BOOL)isEqual:(id)equal;
- (RTLearnedRouteTravelMode)initWithCoder:(id)coder;
- (RTLearnedRouteTravelMode)initWithRouteTravelMode:(int64_t)mode maxTravelTimeEstimateInSeconds:(float)seconds minTravelTimeEstimateInSeconds:(float)inSeconds meanTravelTimeEstimateInSeconds:(float)estimateInSeconds maxTravelledDistanceEstimateInMeters:(float)meters minTravelledDistanceEstimateInMeters:(float)inMeters meanTravelledDistanceEstimateInMeters:(float)estimateInMeters routeLocations:(id)self0 learnedRouteLocations:(id)self1 learnedRouteMetrics:(id)self2;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTLearnedRouteTravelMode

+ (double)deriveConfidenceFromRouteMetric:(id)metric
{
  metricCopy = metric;
  v4 = MEMORY[0x1E695DF00];
  v5 = [MEMORY[0x1E695DF00] now];
  v6 = [v4 dateWithTimeInterval:v5 sinceDate:-1814400.0];

  v7 = -1.0;
  if (metricCopy && [metricCopy allTraversalCountBetweenThisODPair] >= 3 && objc_msgSend(metricCopy, "routeTraversalCount") >= 3)
  {
    lastTravelledDate = [metricCopy lastTravelledDate];
    if ([lastTravelledDate compare:v6] == 1)
    {
      routeTraversalCount = [metricCopy routeTraversalCount];
      allTraversalCountBetweenThisODPair = [metricCopy allTraversalCountBetweenThisODPair];

      if (routeTraversalCount <= allTraversalCountBetweenThisODPair)
      {
        v7 = round([metricCopy routeTraversalCount] / objc_msgSend(metricCopy, "allTraversalCountBetweenThisODPair") * 10.0) / 10.0;
      }
    }

    else
    {
    }
  }

  return v7;
}

- (RTLearnedRouteTravelMode)initWithRouteTravelMode:(int64_t)mode maxTravelTimeEstimateInSeconds:(float)seconds minTravelTimeEstimateInSeconds:(float)inSeconds meanTravelTimeEstimateInSeconds:(float)estimateInSeconds maxTravelledDistanceEstimateInMeters:(float)meters minTravelledDistanceEstimateInMeters:(float)inMeters meanTravelledDistanceEstimateInMeters:(float)estimateInMeters routeLocations:(id)self0 learnedRouteLocations:(id)self1 learnedRouteMetrics:(id)self2
{
  locationsCopy = locations;
  routeLocationsCopy = routeLocations;
  metricsCopy = metrics;
  v29.receiver = self;
  v29.super_class = RTLearnedRouteTravelMode;
  v26 = [(RTLearnedRouteTravelMode *)&v29 init];
  v27 = v26;
  if (v26)
  {
    v26->_routeTravelMode = mode;
    v26->_maxTravelTimeEstimateInSeconds = seconds;
    v26->_minTravelTimeEstimateInSeconds = inSeconds;
    v26->_meanTravelTimeEstimateInSeconds = estimateInSeconds;
    v26->_maxTravelledDistanceEstimateInMeters = meters;
    v26->_minTravelledDistanceEstimateInMeters = inMeters;
    v26->_meanTravelledDistanceEstimateInMeters = estimateInMeters;
    objc_storeStrong(&v26->_routeLocations, locations);
    objc_storeStrong(&v27->_learnedRouteLocations, routeLocations);
    objc_storeStrong(&v27->_learnedRouteMetrics, metrics);
  }

  return v27;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[RTLearnedRouteTravelMode routeTravelMode](self forKey:{"routeTravelMode"), @"travelMode"}];
  [(RTLearnedRouteTravelMode *)self maxTravelTimeEstimateInSeconds];
  [coderCopy encodeFloat:@"maxTravelTime" forKey:?];
  [(RTLearnedRouteTravelMode *)self minTravelTimeEstimateInSeconds];
  [coderCopy encodeFloat:@"minTravelTime" forKey:?];
  [(RTLearnedRouteTravelMode *)self meanTravelTimeEstimateInSeconds];
  [coderCopy encodeFloat:@"meanTravelTime" forKey:?];
  [(RTLearnedRouteTravelMode *)self maxTravelledDistanceEstimateInMeters];
  [coderCopy encodeFloat:@"maxTravelDistance" forKey:?];
  [(RTLearnedRouteTravelMode *)self minTravelledDistanceEstimateInMeters];
  [coderCopy encodeFloat:@"minTravelDistance" forKey:?];
  [(RTLearnedRouteTravelMode *)self meanTravelledDistanceEstimateInMeters];
  [coderCopy encodeFloat:@"meanTravelDistance" forKey:?];
  routeLocations = [(RTLearnedRouteTravelMode *)self routeLocations];
  [coderCopy encodeObject:routeLocations forKey:@"routeLocations"];

  learnedRouteLocations = [(RTLearnedRouteTravelMode *)self learnedRouteLocations];
  [coderCopy encodeObject:learnedRouteLocations forKey:@"learnedRouteLocations"];

  learnedRouteMetrics = [(RTLearnedRouteTravelMode *)self learnedRouteMetrics];
  [coderCopy encodeObject:learnedRouteMetrics forKey:@"learnedRouteMetrics"];
}

- (RTLearnedRouteTravelMode)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeInt64ForKey:@"travelMode"];
  [coderCopy decodeFloatForKey:@"maxTravelTime"];
  v7 = v6;
  [coderCopy decodeFloatForKey:@"minTravelTime"];
  v9 = v8;
  [coderCopy decodeFloatForKey:@"meanTravelTime"];
  v11 = v10;
  [coderCopy decodeFloatForKey:@"maxTravelDistance"];
  v13 = v12;
  [coderCopy decodeFloatForKey:@"minTravelDistance"];
  v15 = v14;
  [coderCopy decodeFloatForKey:@"meanTravelDistance"];
  v17 = v16;
  v18 = MEMORY[0x1E695DFD8];
  v19 = objc_opt_class();
  v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
  v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"routeLocations"];

  v22 = MEMORY[0x1E695DFD8];
  v23 = objc_opt_class();
  v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
  v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"learnedRouteLocations"];

  v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"learnedRouteMetrics"];

  LODWORD(v27) = v7;
  LODWORD(v28) = v9;
  LODWORD(v29) = v11;
  LODWORD(v30) = v13;
  LODWORD(v31) = v15;
  LODWORD(v32) = v17;
  v33 = [(RTLearnedRouteTravelMode *)self initWithRouteTravelMode:v5 maxTravelTimeEstimateInSeconds:v21 minTravelTimeEstimateInSeconds:v25 meanTravelTimeEstimateInSeconds:v26 maxTravelledDistanceEstimateInMeters:v27 minTravelledDistanceEstimateInMeters:v28 meanTravelledDistanceEstimateInMeters:v29 routeLocations:v30 learnedRouteLocations:v31 learnedRouteMetrics:v32];

  return v33;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7 = equalCopy;
  if (!(self | equalCopy))
  {
    v8 = 1;
    goto LABEL_49;
  }

  v8 = 0;
  if (self && equalCopy)
  {
    v9 = [equalCopy isMemberOfClass:objc_opt_class()];
    routeTravelMode = [(RTLearnedRouteTravelMode *)self routeTravelMode];
    routeTravelMode2 = [v7 routeTravelMode];
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
    routeLocations = [(RTLearnedRouteTravelMode *)self routeLocations];
    if (!routeLocations)
    {
      routeLocations2 = [v7 routeLocations];
      if (!routeLocations2)
      {
        v55 = 1;
LABEL_15:

        goto LABEL_16;
      }
    }

    routeLocations3 = [(RTLearnedRouteTravelMode *)self routeLocations];
    if (routeLocations3)
    {
      v33 = routeLocations3;
      routeLocations4 = [v7 routeLocations];
      if (routeLocations4)
      {
        v35 = routeLocations4;
        routeLocations5 = [(RTLearnedRouteTravelMode *)self routeLocations];
        routeLocations6 = [v7 routeLocations];
        v55 = [routeLocations5 isEqualToArray:routeLocations6];

        if (!routeLocations)
        {
          goto LABEL_15;
        }

LABEL_16:

        learnedRouteLocations = [(RTLearnedRouteTravelMode *)self learnedRouteLocations];
        if (!learnedRouteLocations)
        {
          routeLocations6 = [v7 learnedRouteLocations];
          if (!routeLocations6)
          {
            v46 = 1;
LABEL_26:

            goto LABEL_27;
          }
        }

        learnedRouteLocations2 = [(RTLearnedRouteTravelMode *)self learnedRouteLocations];
        if (learnedRouteLocations2)
        {
          v39 = learnedRouteLocations2;
          learnedRouteLocations3 = [v7 learnedRouteLocations];
          if (learnedRouteLocations3)
          {
            v41 = learnedRouteLocations3;
            [(RTLearnedRouteTravelMode *)self learnedRouteLocations];
            v42 = v54 = routeLocations6;
            [v7 learnedRouteLocations];
            v43 = routeTravelMode;
            v45 = v44 = v9;
            v46 = [v42 isEqualToArray:v45];

            v9 = v44;
            routeTravelMode = v43;

            routeLocations6 = v54;
            if (!learnedRouteLocations)
            {
              goto LABEL_26;
            }

LABEL_27:

            learnedRouteMetrics = [(RTLearnedRouteTravelMode *)self learnedRouteMetrics];
            if (learnedRouteMetrics)
            {
              learnedRouteMetrics2 = [v7 learnedRouteMetrics];
              if (learnedRouteMetrics2)
              {
                learnedRouteMetrics3 = [(RTLearnedRouteTravelMode *)self learnedRouteMetrics];
                learnedRouteMetrics4 = [v7 learnedRouteMetrics];
                v51 = learnedRouteMetrics3 == learnedRouteMetrics4;
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

            if (routeTravelMode == routeTravelMode2)
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
        if (!learnedRouteLocations)
        {
          goto LABEL_26;
        }

        goto LABEL_27;
      }
    }

    v55 = 0;
    if (!routeLocations)
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
  routeTravelMode = [(RTLearnedRouteTravelMode *)self routeTravelMode];
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
  routeLocations = [(RTLearnedRouteTravelMode *)self routeLocations];
  if (routeLocations)
  {
    routeLocations2 = [(RTLearnedRouteTravelMode *)self routeLocations];
    v20 = [routeLocations2 count];
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
  learnedRouteLocations = [(RTLearnedRouteTravelMode *)self learnedRouteLocations];
  if (learnedRouteLocations)
  {
    learnedRouteLocations2 = [(RTLearnedRouteTravelMode *)self learnedRouteLocations];
    v28 = [learnedRouteLocations2 count];
  }

  else
  {
    v28 = 0;
  }

  learnedRouteMetrics = [(RTLearnedRouteTravelMode *)self learnedRouteMetrics];
  v30 = [learnedRouteMetrics description];
  v31 = [v5 stringWithFormat:@"travelMode, %ld, maxTravelTime, %0.3f, minTravelTime, %0.3f, meanTravelTime, %0.3f, maxTravelDistance, %0.3f, minTravelDistance, %0.3f, meanTravelDistance, %0.3f, routeLocationCount, %lu, learnedRouteLocationCount, %lu, learnedRouteMetrics, %@", routeTravelMode, *&v21, *&v22, *&v23, *&v24, *&v25, *&v26, v20, v28, v30];

  if (learnedRouteLocations)
  {
  }

  if (routeLocations)
  {
  }

  return v31;
}

@end