@interface GEOComposedRoute(MNExtras)
+ (uint64_t)_pointsConverge:()MNExtras pointCount:otherPoints:pointCount:tolerance:outCoordinateA:outCoordinateB:;
+ (uint64_t)_pointsConverge:()MNExtras pointCount:otherPoints:pointCount:tolerance:outCoordinatesA:outCoordinatesB:;
+ (uint64_t)_pointsDiverge:()MNExtras pointCount:otherPoints:pointCount:tolerance:outCoordinateA:outCoordinateB:;
+ (uint64_t)_startIndexForPoints:()MNExtras withPoints:pointCount:toleranceSquared:;
+ (void)_addPointsToArray:()MNExtras forMapPoints:pointCount:isPolylineA:;
+ (void)_findDivergenceAndConvergence:()MNExtras pointCount:otherPoints:pointCount:divergenceTolerance:convergenceTolerance:outDivergenceCoordinateA:outDivergenceCoordinateB:outConvergenceCoordinateA:outConvergenceCoordinateB:;
+ (void)findDivergenceAndConvergence:()MNExtras pointCount:otherCoordinates:pointCount:distanceInMeters:outDivergenceCoordinateA:outDivergenceCoordinateB:outConvergenceCoordinateA:outConvergenceCoordinateB:;
+ (void)findDivergenceAndConvergence:()MNExtras pointCount:otherPoints:pointCount:divergenceTolerance:convergenceTolerance:outCoordinatesA:outCoordinatesB:;
- (_MNMapPointsArray)_mapPoints;
- (id)divergenceAndConvergenceWithRoute:()MNExtras;
- (id)divergenceAndConvergenceWithRoute:()MNExtras outOtherRoutePoints:;
- (id)userRequestedWaypoints;
- (uint64_t)isMultipointRoute;
- (uint64_t)isNavigableForWatch;
- (void)findDivergenceAndConvergenceWithRoute:()MNExtras distanceInMeters:outDivergenceCoordinate:outConvergenceCoordinate:;
@end

@implementation GEOComposedRoute(MNExtras)

- (id)userRequestedWaypoints
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [a1 waypoints];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__GEOComposedRoute_MNExtras__userRequestedWaypoints__block_invoke;
  v7[3] = &unk_1E842BEF0;
  v4 = v2;
  v8 = v4;
  [v3 enumerateObjectsUsingBlock:v7];

  v5 = [v4 copy];

  return v5;
}

- (uint64_t)isMultipointRoute
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [a1 legs];
  v3 = [v2 count];

  if (v3 >= 2)
  {
    v5 = [a1 waypoints];
    v6 = [a1 waypoints];
    v7 = [v5 subarrayWithRange:{1, objc_msgSend(v6, "count") - 2}];

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = v7;
    v4 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v9 = *v14;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v8);
          }

          if (([*(*(&v13 + 1) + 8 * i) isServerProvidedWaypoint] & 1) == 0)
          {
            v4 = 1;
            goto LABEL_13;
          }
        }

        v4 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    v4 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v4;
}

- (uint64_t)isNavigableForWatch
{
  if ([a1 transportType] == 1)
  {
    return 1;
  }

  v2 = [MEMORY[0x1E69A1CD8] sharedConfiguration];
  v3 = [v2 currentCountrySupportsNavigation];

  if ((v3 & 1) == 0 || ![a1 isNavigable])
  {
    return 0;
  }

  v4 = [a1 transportType];
  v5 = 0;
  if (v4 <= 3 && v4 != 1)
  {
    if (([a1 source] & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      return 1;
    }

    v6 = [a1 origin];
    if (v6)
    {
      v7 = [a1 origin];
      v5 = [v7 isCurrentLocation];
    }

    else
    {
      v5 = 1;
    }
  }

  return v5;
}

- (_MNMapPointsArray)_mapPoints
{
  v2 = [a1 pointCount];
  v3 = v2;
  v4 = [[_MNMapPointsArray alloc] initWithCapacity:v2];
  if (v2)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      [a1 pointAt:v6];
      GEOMapPointForCoordinate();
      v8 = v7;
      v10 = v9;
      v11 = [(_MNMapPointsArray *)v4 mapPoints]+ v5;
      v11->var0 = v8;
      v11->var1 = v10;
      ++v6;
      v5 += 16;
    }

    while (v3 != v6);
  }

  return v4;
}

- (id)divergenceAndConvergenceWithRoute:()MNExtras outOtherRoutePoints:
{
  v6 = a3;
  v7 = [a1 pointCount];
  v8 = [v6 pointCount];
  v9 = 0;
  if (v7 >= 2 && v8 >= 2)
  {
    v10 = [a1 _mapPoints];
    v11 = [v6 _mapPoints];
    [a1 pointAt:0];
    GEOMapPointsPerMeterAtLatitude();
    v14 = 0;
    [MEMORY[0x1E69A1C68] findDivergenceAndConvergence:objc_msgSend(v10 pointCount:"mapPoints") otherPoints:objc_msgSend(v10 pointCount:"count") divergenceTolerance:objc_msgSend(v11 convergenceTolerance:"mapPoints") outCoordinatesA:objc_msgSend(v11 outCoordinatesB:{"count"), &v14, a4, v12 * 10.0, v12}];
    v9 = v14;
  }

  return v9;
}

- (id)divergenceAndConvergenceWithRoute:()MNExtras
{
  v3 = [a1 divergenceAndConvergenceWithRoute:a3 outOtherRoutePoints:0];

  return v3;
}

- (void)findDivergenceAndConvergenceWithRoute:()MNExtras distanceInMeters:outDivergenceCoordinate:outConvergenceCoordinate:
{
  v15 = a4;
  v10 = [a1 pointCount];
  v11 = [v15 pointCount];
  if (v10 >= 2 && v11 >= 2)
  {
    v12 = [a1 _mapPoints];
    v13 = [v15 _mapPoints];
    [a1 pointAt:0];
    GEOMapPointsPerMeterAtLatitude();
    [MEMORY[0x1E69A1C68] _findDivergenceAndConvergence:objc_msgSend(v12 pointCount:"mapPoints") otherPoints:objc_msgSend(v12 pointCount:"count") divergenceTolerance:objc_msgSend(v13 convergenceTolerance:"mapPoints") outDivergenceCoordinateA:objc_msgSend(v13 outDivergenceCoordinateB:"count") outConvergenceCoordinateA:a5 outConvergenceCoordinateB:{0, v14 * a2, v14 * a2, a6, 0}];
  }
}

+ (void)_addPointsToArray:()MNExtras forMapPoints:pointCount:isPolylineA:
{
  v24 = a3;
  v9 = a5 - 1;
  if (a5 != 1)
  {
    v10 = 0;
    v11 = (a4 + 16);
    do
    {
      v12 = *(v11 - 2);
      v13 = *(v11 - 1);
      v14 = *v11;
      v15 = v11[1];
      v16 = *v11 - v12;
      if (v16 * v16 + (v15 - v13) * (v15 - v13) >= 0.000001)
      {
        v17 = objc_alloc_init(_MNMapPointWithIndex);
        v18 = v17;
        v19 = fmin(v14, v12);
        if (v14 >= v12)
        {
          v20 = v13;
        }

        else
        {
          v20 = v15;
        }

        [(_MNMapPointWithIndex *)v17 setPoint:v19, v20];
        [(_MNMapPointWithIndex *)v18 setIndex:v10];
        [(_MNMapPointWithIndex *)v18 setIsStartOfSegment:1];
        [(_MNMapPointWithIndex *)v18 setIsPolylineA:a6];
        [(_MNMapPointWithIndex *)v18 setIsFlipped:v14 < v12];
        [(_MNMapPointWithIndex *)v18 setSegment:v12, v13, v16, v15 - v13];
        [v24 addObject:v18];
        v21 = objc_alloc_init(_MNMapPointWithIndex);

        v22 = fmax(v14, v12);
        if (v14 >= v12)
        {
          v23 = v15;
        }

        else
        {
          v23 = v13;
        }

        [(_MNMapPointWithIndex *)v21 setPoint:v22, v23];
        [(_MNMapPointWithIndex *)v21 setIndex:v10];
        [(_MNMapPointWithIndex *)v21 setIsStartOfSegment:0];
        [(_MNMapPointWithIndex *)v21 setIsPolylineA:a6];
        [(_MNMapPointWithIndex *)v21 setIsFlipped:v14 < v12];
        [(_MNMapPointWithIndex *)v21 setSegment:v12, v13, v16, v15 - v13];
        [v24 addObject:v21];
      }

      ++v10;
      v11 += 2;
    }

    while (v9 != v10);
  }
}

+ (uint64_t)_startIndexForPoints:()MNExtras withPoints:pointCount:toleranceSquared:
{
  v7 = a6 + 1;
  a1.f64[1] = a2;
  v8 = -1;
  do
  {
    if (1 - a7 + v8 == -1)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    v9 = v7[-1];
    v10 = vsubq_f64(*v7, v9);
    v11 = vmulq_f64(v10, v10);
    v12 = 0.0;
    if (vaddvq_f64(v11) > 1.0e-15)
    {
      v13 = vaddq_f64(vdupq_laneq_s64(v11, 1), v11);
      v14 = vmulq_f64(vsubq_f64(a1, v9), v10);
      v12 = fmin(fmax(vdivq_f64(vaddq_f64(vdupq_laneq_s64(v14, 1), v14), v13).f64[0], 0.0), 1.0);
    }

    v15 = vsubq_f64(a1, vmlaq_n_f64(v9, v10, v12));
    ++v8;
    ++v7;
  }

  while (vaddvq_f64(vmulq_f64(v15, v15)) >= a3);
  if (fabs(v12) < 0.000001)
  {
    return v8;
  }

  else
  {
    return v8 + 1;
  }
}

+ (void)_findDivergenceAndConvergence:()MNExtras pointCount:otherPoints:pointCount:divergenceTolerance:convergenceTolerance:outDivergenceCoordinateA:outDivergenceCoordinateB:outConvergenceCoordinateA:outConvergenceCoordinateB:
{
  v19 = result;
  v20 = MEMORY[0x1E69A1918];
  if (a9)
  {
    *a9 = *MEMORY[0x1E69A1918];
  }

  if (a10)
  {
    *a10 = *v20;
  }

  if (a11)
  {
    *a11 = *v20;
  }

  if (a12)
  {
    *a12 = *v20;
  }

  if (a6 >= 2 && a8 >= 2)
  {
    v27 = 0xBF80000000000000;
    v28 = 0xBF80000000000000;
    result = [result _pointsDiverge:a5 pointCount:a6 otherPoints:a7 pointCount:a8 tolerance:&v28 outCoordinateA:&v27 outCoordinateB:?];
    if (result)
    {
      if (a9)
      {
        *a9 = v28;
      }

      v21 = v27;
      if (a10)
      {
        *a10 = v27;
      }

      v22 = v28 + 1;
      v23 = a6 - v22;
      if (a6 > v22)
      {
        v24 = v21 + 1;
        if (a8 > v24)
        {
          v25 = 0xBF80000000000000;
          v26 = 0xBF80000000000000;
          result = [v19 _pointsConverge:a5 + 16 * v22 pointCount:v23 otherPoints:a7 + 16 * v24 pointCount:a8 - v24 tolerance:&v26 outCoordinateA:&v25 outCoordinateB:a3];
          if (result)
          {
            LODWORD(v26) = v26 + v22;
            LODWORD(v25) = v25 + v24;
            if (a11)
            {
              *a11 = v26;
            }

            if (a12)
            {
              *a12 = v25;
            }
          }
        }
      }
    }
  }

  return result;
}

+ (void)findDivergenceAndConvergence:()MNExtras pointCount:otherCoordinates:pointCount:distanceInMeters:outDivergenceCoordinateA:outDivergenceCoordinateB:outConvergenceCoordinateA:outConvergenceCoordinateB:
{
  if (a5 >= 2)
  {
    v11 = a7;
    if (a7 >= 2)
    {
      v16 = a5;
      v36 = [[_MNMapPointsArray alloc] initWithCapacity:a5];
      v18 = [[_MNMapPointsArray alloc] initWithCapacity:v11];
      v19 = 0;
      do
      {
        v20 = a4[v19];
        v21 = a4[v19 + 1];
        GEOMapPointForCoordinate();
        v23 = v22;
        v25 = v24;
        v26 = [(_MNMapPointsArray *)v36 mapPoints]+ v19 * 8;
        v26->var0 = v23;
        v26->var1 = v25;
        v19 += 2;
        --v16;
      }

      while (v16);
      do
      {
        v27 = *(a6 + v16);
        v28 = *(a6 + v16 + 8);
        GEOMapPointForCoordinate();
        v30 = v29;
        v32 = v31;
        v33 = [(_MNMapPointsArray *)v18 mapPoints]+ v16;
        v33->var0 = v30;
        v33->var1 = v32;
        v16 += 16;
        --v11;
      }

      while (v11);
      v34 = *a4;
      GEOMapPointsPerMeterAtLatitude();
      [MEMORY[0x1E69A1C68] _findDivergenceAndConvergence:-[_MNMapPointsArray mapPoints](v36 pointCount:"mapPoints") otherPoints:-[_MNMapPointsArray count](v36 pointCount:"count") divergenceTolerance:-[_MNMapPointsArray mapPoints](v18 convergenceTolerance:"mapPoints") outDivergenceCoordinateA:-[_MNMapPointsArray count](v18 outDivergenceCoordinateB:"count") outConvergenceCoordinateA:a8 outConvergenceCoordinateB:{a9, v35 * a1, v35 * a1, a10, a11}];
    }
  }
}

+ (void)findDivergenceAndConvergence:()MNExtras pointCount:otherPoints:pointCount:divergenceTolerance:convergenceTolerance:outCoordinatesA:outCoordinatesB:
{
  v57 = *MEMORY[0x1E69E9840];
  if (a9)
  {
    *a9 = 0;
  }

  if (a10)
  {
    *a10 = 0;
  }

  if (a6 >= 2 && a8 >= 2)
  {
    v44 = [MEMORY[0x1E695DF70] array];
    v43 = [MEMORY[0x1E695DF70] array];
    v46 = 0;
    v47 = 0;
    v12 = [a1 _pointsConverge:a5 pointCount:a6 otherPoints:a7 pointCount:a8 tolerance:&v47 outCoordinatesA:&v46 outCoordinatesB:a3];
    v13 = v47;
    v14 = v46;
    v15 = [v13 count];
    if (v15 != [v14 count])
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Mismatched number of convergence points"];
      v35 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        *&buf[4] = "+[GEOComposedRoute(MNExtras) findDivergenceAndConvergence:pointCount:otherPoints:pointCount:divergenceTolerance:convergenceTolerance:outCoordinatesA:outCoordinatesB:]";
        v49 = 2080;
        v50 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Extras/GEOComposedRoute+MNExtras.mm";
        v51 = 1024;
        v52 = 663;
        v53 = 2080;
        v54 = "convergenceCoordinatesA.count == convergenceCoordinatesB.count";
        v55 = 2112;
        v56 = v34;
        _os_log_impl(&dword_1D311E000, v35, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", buf, 0x30u);
      }
    }

    if (v12)
    {
      v16 = 0;
      v17 = MEMORY[0x1E69A1918];
      LODWORD(v18) = *MEMORY[0x1E69A1918];
      v19 = *(MEMORY[0x1E69A1918] + 4);
      LODWORD(v20) = *MEMORY[0x1E69A1918];
      v21 = v19;
      while (1)
      {
        if (v16 >= [v13 count])
        {
LABEL_26:
          if (a9)
          {
            v31 = v44;
            *a9 = v44;
          }

          if (a10)
          {
            v32 = v43;
            *a10 = v43;
          }

          break;
        }

        v22 = [v13 objectAtIndexedSubscript:v16];
        v23 = [v14 objectAtIndexedSubscript:v16];
        if (v20 != *v17 || (v24 = *&v20, vabds_f32(v21, v17[1]) >= 0.00000011921))
        {
          v25 = [v22 routeCoordinate];
          if (v20 > v25 || v20 == v25 && v21 >= *(&v25 + 1))
          {
            goto LABEL_24;
          }

          v24 = *v17;
        }

        if (v18 == LODWORD(v24) && vabds_f32(v19, v17[1]) < 0.00000011921 || (v26 = [v23 routeCoordinate], v18 <= v26) && (v18 != v26 || v19 < *(&v26 + 1)))
        {
          [v44 addObject:v22];
          [v43 addObject:v23];
          v27 = [v22 routeCoordinate];
          v28 = [v23 routeCoordinate];
          *buf = *v17;
          v45 = *buf;
          if (([a1 _pointsDiverge:a5 + 16 * v27 pointCount:a6 - v27 otherPoints:a7 + 16 * v28 pointCount:a8 - v28 tolerance:buf outCoordinateA:&v45 outCoordinateB:a2] & 1) == 0)
          {

            goto LABEL_26;
          }

          *buf += v27;
          LODWORD(v45) = v45 + v28;
          v29 = [MNRouteCoordinateWithType divergenceCoordinate:*buf];
          v30 = [MNRouteCoordinateWithType divergenceCoordinate:v45];
          [v44 addObject:v29];
          [v43 addObject:v30];
          v20 = [v29 routeCoordinate];
          v18 = [v30 routeCoordinate];

          v21 = *(&v20 + 1);
          v19 = *(&v18 + 1);
        }

LABEL_24:

        ++v16;
      }
    }
  }

  v33 = *MEMORY[0x1E69E9840];
}

+ (uint64_t)_pointsConverge:()MNExtras pointCount:otherPoints:pointCount:tolerance:outCoordinatesA:outCoordinatesB:
{
  v9 = 0;
  v104 = *MEMORY[0x1E69E9840];
  if (a5 >= 2 && a7 >= 2)
  {
    v85 = [MEMORY[0x1E695DF70] array];
    [a1 _addPointsToArray:v85 forMapPoints:a6 pointCount:a7 isPolylineA:0];
    [a1 _addPointsToArray:v85 forMapPoints:a4 pointCount:a5 isPolylineA:1];
    [v85 sortUsingComparator:&__block_literal_global_8798];
    if (a8)
    {
      *(&v90 + 1) = [MEMORY[0x1E695DF70] array];
    }

    else
    {
      *(&v90 + 1) = 0;
    }

    if (a9)
    {
      *&v90 = [MEMORY[0x1E695DF70] array];
    }

    else
    {
      *&v90 = 0;
    }

    v83 = [MEMORY[0x1E695DF90] dictionary];
    v84 = [MEMORY[0x1E695DF90] dictionary];
    v87 = 0;
    v9 = 0;
    v16 = a2 * a2;
    while (v87 < [v85 count])
    {
      v17 = [v85 objectAtIndexedSubscript:?];
      if ([v17 isPolylineA])
      {
        v18 = v83;
      }

      else
      {
        v18 = v84;
      }

      v88 = v18;
      if ([v17 isPolylineA])
      {
        v19 = v84;
      }

      else
      {
        v19 = v83;
      }

      v86 = v19;
      v89 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v17, "index")}];
      if ([v17 isStartOfSegment])
      {
        v20 = [v88 objectForKeyedSubscript:v89];
        v21 = v20 == 0;

        if (!v21)
        {
          v74 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v97 = "+[GEOComposedRoute(MNExtras) _pointsConverge:pointCount:otherPoints:pointCount:tolerance:outCoordinatesA:outCoordinatesB:]";
            v98 = 2080;
            v99 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Extras/GEOComposedRoute+MNExtras.mm";
            v100 = 1024;
            v101 = 569;
            v102 = 2080;
            v103 = "currentPolylineSegments[key] == nil";
            _os_log_impl(&dword_1D311E000, v74, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s)", buf, 0x26u);
          }
        }

        [v88 setObject:v17 forKey:v89];
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        v22 = [v86 allValues];
        v23 = [v22 countByEnumeratingWithState:&v91 objects:v95 count:16];
        if (v23)
        {
          v24 = *v92;
          while (2)
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v92 != v24)
              {
                objc_enumerationMutation(v22);
              }

              v26 = *(*(&v91 + 1) + 8 * i);
              if ([v17 isPolylineA])
              {
                v27 = v17;
              }

              else
              {
                v27 = v26;
              }

              v28 = v27;
              if ([v17 isPolylineA])
              {
                v29 = v26;
              }

              else
              {
                v29 = v17;
              }

              v30 = v29;
              [v28 segment];
              v32 = v31;
              v34 = v33;
              v36 = v35;
              v38 = v37;
              [v30 segment];
              v42 = v32 - v41;
              v44 = v34 - v43;
              v45 = v39 * v39 + v40 * v40;
              v46 = (v39 * (v32 - v41) + v40 * (v34 - v43)) / v45;
              v47 = fmax(v46, 0.0);
              v48 = fmin(v47, 1.0);
              v49 = v43 - v34;
              v50 = v41 - v32;
              v51 = (v50 + v48 * v39) * (v50 + v48 * v39) + (v49 + v48 * v40) * (v49 + v48 * v40);
              v52 = v36 * v50 + v38 * v49;
              v53 = v36 * v36 + v38 * v38;
              v54 = v52 / v53;
              v55 = fmax(v52 / v53, 0.0);
              v56 = fmin(v55, 1.0);
              v57 = (v42 + v56 * v36) * (v42 + v56 * v36) + (v44 + v56 * v38) * (v44 + v56 * v38);
              if (v51 <= v16 || v57 <= v16)
              {
                v59 = fabs(v54) < 0.000001;
                if (v55 > 1.0 || v54 >= 0.0 && !v59 || fabs(v48 + -1.0) >= 0.000001)
                {
                  if (fabs(v56 + -1.0) >= 0.000001 || (v60 = fabs(v46) < 0.000001, v47 > 1.0) || v46 >= 0.0 && !v60)
                  {
                    if ((v39 * v36 + v40 * v38) / sqrt(v53 * v45) >= 0.99)
                    {
                      if (v90 == 0)
                      {

                        v9 = 1;
                        goto LABEL_58;
                      }

                      v61 = [v28 index];
                      v62 = v61;
                      v63 = v56;
                      if (v63 >= 1.0)
                      {
                        v62 = vcvtms_u32_f32(v63) + v61;
                        v63 = v63 - floorf(v63);
                      }

                      v64 = [v30 index];
                      v65 = v48;
                      v66 = vcvtms_u32_f32(v65) + v64;
                      v67 = v65 - floorf(v65);
                      if (v65 >= 1.0)
                      {
                        v68 = v67;
                      }

                      else
                      {
                        v68 = v48;
                      }

                      if (v65 >= 1.0)
                      {
                        v69 = v66;
                      }

                      else
                      {
                        v69 = v64;
                      }

                      v70 = [MNRouteCoordinateWithType convergenceCoordinate:v62 | (LODWORD(v63) << 32)];
                      [*(&v90 + 1) addObject:v70];

                      v71 = [MNRouteCoordinateWithType convergenceCoordinate:v69 | (LODWORD(v68) << 32)];
                      [v90 addObject:v71];

                      v9 = 1;
                    }
                  }
                }
              }
            }

            v23 = [v22 countByEnumeratingWithState:&v91 objects:v95 count:16];
            if (v23)
            {
              continue;
            }

            break;
          }
        }

LABEL_58:
      }

      else
      {
        v72 = [v88 objectForKeyedSubscript:v89];
        v73 = v72 == 0;

        if (v73)
        {
          v75 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v97 = "+[GEOComposedRoute(MNExtras) _pointsConverge:pointCount:otherPoints:pointCount:tolerance:outCoordinatesA:outCoordinatesB:]";
            v98 = 2080;
            v99 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Extras/GEOComposedRoute+MNExtras.mm";
            v100 = 1024;
            v101 = 608;
            v102 = 2080;
            v103 = "currentPolylineSegments[key] != nil";
            _os_log_impl(&dword_1D311E000, v75, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s)", buf, 0x26u);
          }
        }

        [v88 removeObjectForKey:v89];
      }

      ++v87;
    }

    if (v9)
    {
      if (a8)
      {
        [*(&v90 + 1) sortUsingComparator:&__block_literal_global_106_8803];
        v76 = *(&v90 + 1);
        *a8 = *(&v90 + 1);
      }

      if (v81)
      {
        [v90 sortUsingComparator:&__block_literal_global_106_8803];
        v77 = v90;
        *v81 = v90;
      }
    }
  }

  v78 = *MEMORY[0x1E69E9840];
  return v9 & 1;
}

+ (uint64_t)_pointsConverge:()MNExtras pointCount:otherPoints:pointCount:tolerance:outCoordinateA:outCoordinateB:
{
  v16 = 0;
  v17 = 0;
  v10 = [a1 _pointsConverge:a3 pointCount:a4 otherPoints:a5 pointCount:a6 tolerance:&v17 outCoordinatesA:&v16 outCoordinatesB:?];
  v11 = v17;
  v12 = v16;
  if (!a7)
  {
LABEL_4:
    if (!a8)
    {
      goto LABEL_10;
    }

    goto LABEL_5;
  }

  if ([v11 count])
  {
    v13 = [v11 firstObject];
    *a7 = [v13 routeCoordinate];

    goto LABEL_4;
  }

  *a7 = *MEMORY[0x1E69A1918];
  if (!a8)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ([v12 count])
  {
    v14 = [v12 firstObject];
    *a8 = [v14 routeCoordinate];
  }

  else
  {
    *a8 = *MEMORY[0x1E69A1918];
  }

LABEL_10:

  return v10;
}

+ (uint64_t)_pointsDiverge:()MNExtras pointCount:otherPoints:pointCount:tolerance:outCoordinateA:outCoordinateB:
{
  result = 0;
  if (a5 < 2 || a7 < 2)
  {
    return result;
  }

  v17 = a2 * a2;
  v18 = [a1 _startIndexForPoints:*a6 withPoints:a6[1] pointCount:a2 * a2 toleranceSquared:?];
  v19 = [a1 _startIndexForPoints:a6 withPoints:a7 pointCount:*a4 toleranceSquared:{a4[1], v17}];
  if (v18 == 0x7FFFFFFFFFFFFFFFLL && v19 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a8)
    {
      *a8 = 0;
    }

    if (a9)
    {
      goto LABEL_14;
    }

    return 1;
  }

  v21 = v19;
  if (v18 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v19 && v19 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_22;
    }

    if (v18)
    {
      v21 = 0;
      v22 = 0;
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (!v19 || v19 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_21:
    v18 = 0;
    v21 = 1;
    goto LABEL_22;
  }

  v18 = 0;
LABEL_22:
  v22 = 1;
LABEL_23:
  result = 0;
  if (v18 >= a5 || v21 >= a7)
  {
    return result;
  }

  v23 = 0;
  v24 = 0.0;
  while (1)
  {
    if (v22)
    {
      v25 = a4;
    }

    else
    {
      v25 = a6;
    }

    if (v22)
    {
      v26 = a6;
    }

    else
    {
      v26 = a4;
    }

    if (v22)
    {
      v27 = v21;
    }

    else
    {
      v27 = v18;
    }

    if (v22)
    {
      v28 = v18;
    }

    else
    {
      v28 = v21;
    }

    v29 = v27 - 1;
    if (!v27)
    {
      v29 = 0;
    }

    v30 = *&v26[2 * v29];
    v31 = vsubq_f64(*&v26[2 * v27], v30);
    v32 = vmulq_f64(v31, v31);
    v33 = *&v25[2 * v28];
    v34 = 0.0;
    if (vaddvq_f64(v32) > 1.0e-15)
    {
      v35 = vmulq_f64(vsubq_f64(v33, v30), v31);
      v34 = fmin(fmax(vdivq_f64(vaddq_f64(vdupq_laneq_s64(v35, 1), v35), vaddq_f64(vdupq_laneq_s64(v32, 1), v32)).f64[0], 0.0), 1.0);
    }

    v36 = vsubq_f64(v33, vmlaq_n_f64(v30, v31, v34));
    v37 = vaddvq_f64(vmulq_f64(v36, v36));
    if (v37 >= v17)
    {
      break;
    }

    if (v37 <= 0.01)
    {
      goto LABEL_50;
    }

    if (v24 > 0.0)
    {
      if (v37 <= v24)
      {
LABEL_50:
        v24 = 0.0;
        if (v22)
        {
          v18 = v28 + 1;
        }

        else
        {
          v21 = v28 + 1;
        }

        v23 = 0;
        v22 = (v22 & 1) != 0;
        goto LABEL_59;
      }

      v23 = 0;
LABEL_54:
      if (v22)
      {
        v21 = v27 + 1;
      }

      else
      {
        v18 = v27 + 1;
      }

      v22 ^= 1u;
      v24 = 0.0;
      goto LABEL_59;
    }

    v23 = 0;
    v22 ^= 1u;
    v24 = v37;
LABEL_59:
    result = 0;
    if (v18 >= a5 || v21 >= a7)
    {
      return result;
    }
  }

  if (v24 > 0.0)
  {
    goto LABEL_54;
  }

  if ((v23 & 1) == 0)
  {
    v22 ^= 1u;
    v23 = 1;
    goto LABEL_59;
  }

  if (a8)
  {
    if (v18)
    {
      v38 = v21 - 1;
      if (!v21)
      {
        v38 = 0;
      }

      v39 = gm::Matrix<double,2,1>::nearestPointOffsetAlongLineSegment<int,void>(&a6[2 * v38], *&a4[2 * v18 - 2], *&a4[2 * v18]);
      v40 = v18 - 1;
      v41 = v39;
      if (v41 >= 1.0)
      {
        v40 += vcvtms_u32_f32(v41);
        v41 = v41 - floorf(v41);
      }

      *a8 = v40;
      *(a8 + 4) = v41;
    }

    else
    {
      *a8 = 0;
    }
  }

  if (a9)
  {
    if (v21)
    {
      v42 = v18 - 1;
      if (!v18)
      {
        v42 = 0;
      }

      v43 = gm::Matrix<double,2,1>::nearestPointOffsetAlongLineSegment<int,void>(&a4[2 * v42], *&a6[2 * v21 - 2], *&a6[2 * v21]);
      v44 = v21 - 1;
      v45 = v43;
      if (v45 >= 1.0)
      {
        v44 += vcvtms_u32_f32(v45);
        v45 = v45 - floorf(v45);
      }

      *a9 = v44;
      *(a9 + 4) = v45;
      return 1;
    }

LABEL_14:
    *a9 = 0;
  }

  return 1;
}

@end