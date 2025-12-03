@interface MNRouteDivergenceFinder
- (BOOL)_pathsDivergeBetweenRoute:(id)route from:(PolylineCoordinate)from andRoute:(id)andRoute from:(PolylineCoordinate)a6 withinDistance:(double)distance;
- (BOOL)_pointMeetsConvergenceThreshold:(const _MNRouteConvergencePoint *)threshold withOtherPoint:(const _MNRouteConvergencePoint *)point outRouteCoordinateA:(PolylineCoordinate *)a outRouteCoordinateB:(PolylineCoordinate *)b outDistance:(double *)distance;
- (MNRouteDivergenceFinder)init;
- (PolylineCoordinate)_closestRouteCoordinateOnRoute:(id)route toLocationCoordinate:(id)coordinate inRange:(GEOPolylineCoordinateRange)range;
- (PolylineCoordinate)_firstRouteCoordinateWithinToleranceOnRoute:(id)route nearCoordinate:(id)coordinate range:(GEOPolylineCoordinateRange)range;
- (PolylineCoordinate)_routeCoordinateForLocationCoordinate:(id)coordinate route:(id)route startIndex:(unint64_t)index;
- (double)_distanceFromCoordinate:(id)coordinate toSegmentStart:(id)start segmentEnd:(id)end;
- (double)_offsetForCoordinate:(id)coordinate alongSegmentStart:(id)start segmentEnd:(id)end;
- (float)findAllOverlapRangesBetweenRoutes:(uint64_t)routes;
- (id)_routesArrayIdentifierStrings:(id)strings;
- (id)findAllDivergenceConvergenceBetweenRoute:(id)route andRoute:(id)andRoute;
- (id)findAllOverlapRangesBetweenRoutes:(id)routes;
- (id)findFirstConvergenceBetweenRoute:(id)route andRoute:(id)andRoute;
- (id)findFirstConvergenceBetweenRoute:(id)route fromRouteCoordinate:(PolylineCoordinate)coordinate andRoute:(id)andRoute fromRouteCoordinate:(PolylineCoordinate)routeCoordinate;
- (id)findFirstDivergenceBetweenRoute:(id)route andRoute:(id)andRoute;
- (id)findFirstDivergenceBetweenRoute:(id)route fromRouteCoordinate:(PolylineCoordinate)coordinate andRoute:(id)andRoute fromRouteCoordinate:(PolylineCoordinate)routeCoordinate;
- (id)findFirstUniqueRangeBetweenRoute:(id)route andRoute:(id)andRoute;
- (id)findOverlappingSectionsForRoutes:(id)routes;
- (uint64_t)findAllOverlapRangesBetweenRoutes:(uint64_t)routes;
- (uint64_t)findOverlappingSectionsForRoutes:;
- (uint64_t)findOverlappingSectionsForRoutes:(uint64_t)routes;
- (void)_findFirstConvergenceBetweenRoute:(id)route fromRouteCoordinate:(PolylineCoordinate)coordinate andRoute:(id)andRoute fromRouteCoordinate:(PolylineCoordinate)routeCoordinate outRouteCoordinate:(PolylineCoordinate *)outRouteCoordinate outRouteCoordinate:(PolylineCoordinate *)a8;
- (void)_findFirstConvergenceBetweenRoute:(id)route range:(GEOPolylineCoordinateRange)range andRoute:(id)andRoute range:(GEOPolylineCoordinateRange)a6 outRouteCoordinate:(PolylineCoordinate *)coordinate outRouteCoordinate:(PolylineCoordinate *)routeCoordinate;
- (void)_findFirstConvergenceBetweenRoute:(uint64_t *)route range:(uint64_t)range andRoute:(uint64_t *)andRoute range:(unint64_t)a4 outRouteCoordinate:(uint64_t)coordinate outRouteCoordinate:(char)routeCoordinate;
- (void)_findFirstDivergenceBetweenRoute:(id)route range:(GEOPolylineCoordinateRange)range andRoute:(id)andRoute range:(GEOPolylineCoordinateRange)a6 outRouteCoordinate:(PolylineCoordinate *)coordinate outRouteCoordinate:(PolylineCoordinate *)routeCoordinate;
- (void)_populateConvergencePoints:(void *)points route:(id)route range:(GEOPolylineCoordinateRange)range isRouteA:(BOOL)a;
- (void)findAllOverlapRangesBetweenRoutes:;
- (void)findAllOverlapRangesBetweenRoutes:(uint64_t)routes;
- (void)findOverlappingSectionsForRoutes:;
- (void)findOverlappingSectionsForRoutes:(void *)routes;
@end

@implementation MNRouteDivergenceFinder

- (MNRouteDivergenceFinder)init
{
  v3.receiver = self;
  v3.super_class = MNRouteDivergenceFinder;
  result = [(MNRouteDivergenceFinder *)&v3 init];
  if (result)
  {
    *&result->_toleranceMeters = xmmword_1D328D380;
    result->_distancePaddingWhenAlternating = 20.0;
  }

  return result;
}

- (id)_routesArrayIdentifierStrings:(id)strings
{
  v3 = [strings _geo_map:&__block_literal_global_10672];
  v4 = [v3 componentsJoinedByString:{@", "}];

  return v4;
}

id __57__MNRouteDivergenceFinder__routesArrayIdentifierStrings___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 uniqueRouteID];
  v3 = [v2 description];

  return v3;
}

- (double)_offsetForCoordinate:(id)coordinate alongSegmentStart:(id)start segmentEnd:(id)end
{
  if (vabdd_f64(start.var0, end.var0) > 0.0000005)
  {
    v5 = coordinate.var0 - start.var0;
    v6 = end.var0 - start.var0;
LABEL_5:
    v7 = v5 / v6;
    return fmax(fmin(v7, 1.0), 0.0);
  }

  v7 = 0.0;
  if (vabdd_f64(start.var1, end.var1) > 0.0000005)
  {
    v5 = coordinate.var1 - start.var1;
    v6 = end.var1 - start.var1;
    goto LABEL_5;
  }

  return fmax(fmin(v7, 1.0), 0.0);
}

- (PolylineCoordinate)_routeCoordinateForLocationCoordinate:(id)coordinate route:(id)route startIndex:(unint64_t)index
{
  var2 = coordinate.var2;
  var1 = coordinate.var1;
  var0 = coordinate.var0;
  routeCopy = route;
  [routeCopy pointAt:index];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [routeCopy pointAt:index + 1];
  [(MNRouteDivergenceFinder *)self _offsetForCoordinate:var0 alongSegmentStart:var1 segmentEnd:var2, v12, v14, v16, v17, v18, v19];
  v21 = fmax(fmin(v20, 1.0), 0.0);
  if (v21 >= 1.0)
  {
    LODWORD(index) = vcvtms_u32_f32(v21) + index;
    v21 = v21 - floorf(v21);
  }

  return (index | (LODWORD(v21) << 32));
}

- (PolylineCoordinate)_closestRouteCoordinateOnRoute:(id)route toLocationCoordinate:(id)coordinate inRange:(GEOPolylineCoordinateRange)range
{
  end = range.end;
  start = range.start;
  var2 = coordinate.var2;
  var1 = coordinate.var1;
  var0 = coordinate.var0;
  routeCopy = route;
  v12 = [MEMORY[0x1E69A23A0] iteratorWithRange:{start, end}];
  [v12 advance];
  index = 0;
  v14 = 3212836864;
  v15 = 1.79769313e308;
  while ([v12 isCurrentValid])
  {
    [routeCopy pointAtRouteCoordinate:{objc_msgSend(v12, "previous")}];
    [routeCopy pointAtRouteCoordinate:{objc_msgSend(v12, "current")}];
    v30 = var1;
    v31 = var2;
    v29 = var0;
    GEOClosestCoordinateOnLineSegmentFromCoordinate3D();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    GEOCalculateDistance();
    v23 = v22;
    if (v22 < v15)
    {
      v24 = -[MNRouteDivergenceFinder _routeCoordinateForLocationCoordinate:route:startIndex:](self, "_routeCoordinateForLocationCoordinate:route:startIndex:", routeCopy, [v12 previous], v17, v19, v21);
      index = v24.index;
      v14 = HIDWORD(*&v24);
      v15 = v23;
    }

    [v12 advance];
  }

  IsABeforeB = GEOPolylineCoordinateIsABeforeB();
  v26 = index | (v14 << 32);
  if (IsABeforeB)
  {
    v27 = start;
  }

  else
  {
    v27 = end;
  }

  if (!IsABeforeB)
  {
    end = start;
  }

  if (GEOPolylineCoordinateIsABeforeB())
  {
    end = v26;
  }

  if (!GEOPolylineCoordinateIsABeforeB())
  {
    end = v27;
  }

  return end;
}

- (double)_distanceFromCoordinate:(id)coordinate toSegmentStart:(id)start segmentEnd:(id)end
{
  GEOClosestCoordinateOnLineSegmentFromCoordinate3D();

  GEOCalculateDistance();
  return result;
}

- (PolylineCoordinate)_firstRouteCoordinateWithinToleranceOnRoute:(id)route nearCoordinate:(id)coordinate range:(GEOPolylineCoordinateRange)range
{
  end = range.end;
  var2 = coordinate.var2;
  var1 = coordinate.var1;
  var0 = coordinate.var0;
  start = range.start;
  v59 = *MEMORY[0x1E69E9840];
  routeCopy = route;
  v14 = MNGetMNRouteDivergenceLog();
  v15 = os_signpost_id_make_with_pointer(v14, self);

  v16 = MNGetMNRouteDivergenceLog();
  v17 = v16;
  spid = v15;
  v18 = v15 - 1;
  if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    uniqueRouteID = [routeCopy uniqueRouteID];
    uUIDString = [uniqueRouteID UUIDString];
    v21 = GEOPolylineCoordinateRangeAsString();
    *buf = 138413058;
    v52 = uUIDString;
    v53 = 2048;
    v54 = var0;
    v55 = 2048;
    v56 = var1;
    v57 = 2112;
    v58 = v21;
    _os_signpost_emit_with_name_impl(&dword_1D311E000, v17, OS_SIGNPOST_INTERVAL_BEGIN, spid, "_firstRouteCoordinate", "Route: %@ | %f, %f | [%@]", buf, 0x2Au);
  }

  v22 = [routeCopy _navigation_leafBoundingSectionContainingCoordinate:{var0, var1, var2}];
  v23 = v22;
  if (v22)
  {
    [v22 range];
    if (GEOPolylineCoordinateWithinRange())
    {
      [v23 range];
      v24 = MNGetMNRouteDivergenceLog();
      v25 = v24;
      if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
      {
        v26 = GEOPolylineCoordinateRangeAsString();
        *buf = 138412290;
        v52 = v26;
        _os_signpost_emit_with_name_impl(&dword_1D311E000, v25, OS_SIGNPOST_EVENT, spid, "_firstRouteCoordinate", "Optimizing search range start using bounding section. New search range is: [%@]", buf, 0xCu);
      }
    }

    v27 = [MEMORY[0x1E69A23A0] iteratorWithRange:{start, end}];
    [v27 advance];
    if ([v27 isCurrentValid])
    {
      [routeCopy pointAtRouteCoordinate:{objc_msgSend(v27, "previous")}];
      v6 = v28;
      v7 = v29;
      v5 = v30;
    }

    while ([v27 isCurrentValid])
    {
      [routeCopy pointAtRouteCoordinate:{objc_msgSend(v27, "current")}];
      v32 = v31;
      v34 = v33;
      v36 = v35;
      [(MNRouteDivergenceFinder *)self _distanceFromCoordinate:var0 toSegmentStart:var1 segmentEnd:var2, v6, v7, v5, *&v31, *&v33, *&v35];
      if (v37 < self->_toleranceMeters)
      {
        v40 = -[MNRouteDivergenceFinder _routeCoordinateForLocationCoordinate:route:startIndex:](self, "_routeCoordinateForLocationCoordinate:route:startIndex:", routeCopy, [v27 previous], var0, var1, var2);
        v43 = MNGetMNRouteDivergenceLog();
        v44 = v43;
        if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
        {
          v45 = GEOPolylineCoordinateAsShortString();
          GEOPolylineCoordinateRangeAsString();
          v46 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          *buf = 138412546;
          v52 = v45;
          v53 = 2112;
          v54 = v46;
          _os_signpost_emit_with_name_impl(&dword_1D311E000, v44, OS_SIGNPOST_INTERVAL_END, spid, "_firstRouteCoordinate", "Found result at: [%@], range: [%@]", buf, 0x16u);
        }

        goto LABEL_27;
      }

      [v27 advance];
      v6 = v32;
      v7 = v34;
      v5 = v36;
    }

    v41 = MNGetMNRouteDivergenceLog();
    v42 = v41;
    if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v42, OS_SIGNPOST_INTERVAL_END, spid, "_firstRouteCoordinate", "Searched entire range and found no valid point on route near coordinate", buf, 2u);
    }

    v40 = *MEMORY[0x1E69A1918];
LABEL_27:
  }

  else
  {
    v38 = MNGetMNRouteDivergenceLog();
    v39 = v38;
    if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v39, OS_SIGNPOST_INTERVAL_END, spid, "_firstRouteCoordinate", "Checked route bounds and found no valid point on route near coordinate", buf, 2u);
    }

    v40 = *MEMORY[0x1E69A1918];
  }

  v47 = *MEMORY[0x1E69E9840];
  return v40;
}

- (BOOL)_pointMeetsConvergenceThreshold:(const _MNRouteConvergencePoint *)threshold withOtherPoint:(const _MNRouteConvergencePoint *)point outRouteCoordinateA:(PolylineCoordinate *)a outRouteCoordinateB:(PolylineCoordinate *)b outDistance:(double *)distance
{
  if (threshold->var6)
  {
    pointCopy = threshold;
  }

  else
  {
    pointCopy = point;
  }

  if (threshold->var6)
  {
    thresholdCopy2 = point;
  }

  else
  {
    thresholdCopy2 = threshold;
  }

  [(MNRouteDivergenceFinder *)self _distanceFromCoordinate:pointCopy->var1.var0 toSegmentStart:pointCopy->var1.var1 segmentEnd:pointCopy->var1.var2, thresholdCopy2->var1.var0, thresholdCopy2->var1.var1, thresholdCopy2->var1.var2, *&thresholdCopy2->var2.var0, *&thresholdCopy2->var2.var1, *&thresholdCopy2->var2.var2];
  v14 = v13;
  [(MNRouteDivergenceFinder *)self _distanceFromCoordinate:thresholdCopy2->var1.var0 toSegmentStart:thresholdCopy2->var1.var1 segmentEnd:thresholdCopy2->var1.var2, pointCopy->var1.var0, pointCopy->var1.var1, pointCopy->var1.var2, *&pointCopy->var2.var0, *&pointCopy->var2.var1, *&pointCopy->var2.var2];
  v16 = v15;
  v17 = v14 <= self->_toleranceMeters || v15 <= self->_toleranceMeters;
  if (v17)
  {
    a->index = pointCopy->var3.index;
    [(MNRouteDivergenceFinder *)self _offsetForCoordinate:thresholdCopy2->var1.var0 alongSegmentStart:thresholdCopy2->var1.var1 segmentEnd:thresholdCopy2->var1.var2, pointCopy->var1.var0, pointCopy->var1.var1, pointCopy->var1.var2, *&pointCopy->var2.var0, *&pointCopy->var2.var1, *&pointCopy->var2.var2];
    v19 = v18;
    a->offset = v19;
    offset = pointCopy->var3.offset;
    v21 = pointCopy->var4.offset;
    if (offset > 0.0 || v21 > 0.0)
    {
      if (v21 <= 0.0)
      {
        v21 = 1.0;
      }

      a->offset = offset + ((v21 - offset) * v19);
    }

    v22 = *a;
    IsInvalid = GEOPolylineCoordinateIsInvalid();
    v24 = MEMORY[0x1E69A1918];
    if (IsInvalid)
    {
      v25 = *MEMORY[0x1E69A1918];
      v26 = *(MEMORY[0x1E69A1918] + 4);
    }

    else
    {
      v26 = v22.offset - floorf(v22.offset);
      v25 = vcvtms_u32_f32(v22.offset) + v22.index;
    }

    *a = (v25 | (LODWORD(v26) << 32));
    b->index = thresholdCopy2->var3.index;
    [(MNRouteDivergenceFinder *)self _offsetForCoordinate:pointCopy->var1.var0 alongSegmentStart:pointCopy->var1.var1 segmentEnd:pointCopy->var1.var2, thresholdCopy2->var1.var0, thresholdCopy2->var1.var1, thresholdCopy2->var1.var2, *&thresholdCopy2->var2.var0, *&thresholdCopy2->var2.var1, *&thresholdCopy2->var2.var2];
    v28 = v27;
    b->offset = v28;
    v29 = thresholdCopy2->var3.offset;
    v30 = thresholdCopy2->var4.offset;
    if (v29 > 0.0 || v30 > 0.0)
    {
      if (v30 <= 0.0)
      {
        v30 = 1.0;
      }

      b->offset = v29 + ((v30 - v29) * v28);
    }

    v31 = *b;
    if (GEOPolylineCoordinateIsInvalid())
    {
      v32 = *v24;
      v33 = *(v24 + 4);
    }

    else
    {
      v33 = v31.offset - floorf(v31.offset);
      v32 = vcvtms_u32_f32(v31.offset) + v31.index;
    }

    *b = (v32 | (LODWORD(v33) << 32));
    *distance = fmin(v14, v16);
  }

  return v17;
}

- (void)_populateConvergencePoints:(void *)points route:(id)route range:(GEOPolylineCoordinateRange)range isRouteA:(BOOL)a
{
  end = range.end;
  start = range.start;
  routeCopy = route;
  v38 = objc_alloc_init(MEMORY[0x1E69A23A8]);
  selfCopy = self;
  v11 = [routeCopy legIndexForRouteCoordinate:start];
  v37 = end;
  while (1)
  {
    legs = [routeCopy legs];
    v13 = [legs count];

    if (v11 >= v13)
    {
      break;
    }

    legs2 = [routeCopy legs];
    v15 = [legs2 objectAtIndexedSubscript:v11];

    startRouteCoordinate = [v15 startRouteCoordinate];
    endRouteCoordinate = [v15 endRouteCoordinate];
    if ((GEOPolylineCoordinateRangeIntersectsRange() & 1) == 0)
    {
      goto LABEL_13;
    }

    if (GEOPolylineCoordinateIsABeforeB())
    {
      v18 = startRouteCoordinate;
    }

    else
    {
      v18 = start;
    }

    if (GEOPolylineCoordinateRangeEncompassesRange())
    {
      [v38 addCoordinateRange:{v18, end}];
LABEL_13:

      break;
    }

    if (GEOPolylineCoordinateIsABeforeB())
    {
      end = v37;
    }

    else
    {
      end = endRouteCoordinate;
    }

    [v38 addCoordinateRange:{v18, end}];

    ++v11;
  }

  v19 = 0;
  if (selfCopy->_toleranceMeters <= 0.0)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = INFINITY;
  }

  while (v19 < [v38 count])
  {
    v21 = [v38 coordinateRangeAtIndex:v19];
    v23 = [MEMORY[0x1E69A23A0] iteratorWithRange:{v21, v22}];
    [v23 advance];
    while ([v23 isCurrentValid])
    {
      [routeCopy pointAtRouteCoordinate:{objc_msgSend(v23, "previous")}];
      v25 = v24;
      v27 = v26;
      v29 = v28;
      *&v63 = v24;
      *(&v63 + 1) = v26;
      v64 = v28;
      [routeCopy pointAtRouteCoordinate:{objc_msgSend(v23, "current")}];
      *&v61 = v30;
      *(&v61 + 1) = v31;
      v62 = v32;
      if (vabdd_f64(v25, v30) >= 0.00000000999999994 || vabdd_f64(v27, v31) >= 0.00000000999999994 || vabdd_f64(v29, v32) >= 0.00000000999999994)
      {
        v33 = v31 < v27;
        if (v31 < v27)
        {
          v34 = &v63;
        }

        else
        {
          v30 = v25;
          v34 = &v61;
        }

        v59 = *v34;
        v35 = fmin(v31, v27);
        if (!v33)
        {
          v32 = v29;
        }

        v60 = *(v34 + 2);
        *v50 = v30;
        *&v50[1] = v35 + v20;
        *&v50[2] = v32;
        v51 = v63;
        v52 = v64;
        v53 = v61;
        v54 = v62;
        previous = [v23 previous];
        current = [v23 current];
        v57 = 1;
        aCopy = a;
        std::deque<_MNRouteConvergencePoint>::emplace_back<_MNRouteConvergencePoint&>(points, v50);
        v40 = v59;
        v41 = v60;
        v42 = v63;
        v43 = v64;
        v44 = v61;
        v45 = v62;
        previous2 = [v23 previous];
        current2 = [v23 current];
        v48 = 0;
        aCopy2 = a;
        [v23 advance];
      }

      else
      {
        [v23 advance];
      }
    }

    ++v19;
  }
}

- (void)_findFirstConvergenceBetweenRoute:(id)route range:(GEOPolylineCoordinateRange)range andRoute:(id)andRoute range:(GEOPolylineCoordinateRange)a6 outRouteCoordinate:(PolylineCoordinate *)coordinate outRouteCoordinate:(PolylineCoordinate *)routeCoordinate
{
  end = a6.end;
  start = a6.start;
  v11 = range.end;
  v12 = range.start;
  v102 = *MEMORY[0x1E69E9840];
  routeCopy = route;
  andRouteCopy = andRoute;
  v93 = 0u;
  v94 = 0u;
  v92 = 0u;
  [(MNRouteDivergenceFinder *)self _populateConvergencePoints:&v92 route:routeCopy range:v12 isRouteA:v11, 1];
  [(MNRouteDivergenceFinder *)self _populateConvergencePoints:&v92 route:andRouteCopy range:start isRouteA:end, 0];
  v16 = v94 / 0x2A;
  if (v93 == *(&v92 + 1))
  {
    v22 = 0;
    v18 = 0;
    v20 = (*(&v92 + 1) + ((((((*(&v94 + 1) + v94) >> 1) * 0xC30C30C30C30C30DLL) >> 64) >> 1) & 0x3FFFFFFFFFFFFFF8));
  }

  else
  {
    v17 = v94 % 0x2A;
    v18 = *(*(&v92 + 1) + 8 * v16) + 96 * (v94 % 0x2A);
    v19 = (*(&v94 + 1) + v94) / 0x2AuLL;
    v20 = (*(&v92 + 1) + 8 * v19);
    v21 = (*(&v94 + 1) + v94) % 0x2AuLL;
    v22 = *v20 + 96 * v21;
    if (v22 != v18)
    {
      v23 = v21 + 42 * ((8 * v19 - 8 * v16) >> 3);
      if (v23 != v17)
      {
        v24 = 63 - __clz(v23 - v17);
        goto LABEL_7;
      }
    }
  }

  v24 = 0;
LABEL_7:
  std::__introsort<std::_ClassicAlgPolicy,[MNRouteDivergenceFinder _findFirstConvergenceBetweenRoute:range:andRoute:range:outRouteCoordinate:outRouteCoordinate:]::$_5 &,std::__deque_iterator<_MNRouteConvergencePoint,_MNRouteConvergencePoint*,_MNRouteConvergencePoint&,_MNRouteConvergencePoint**,long,42l>,false>((*(&v92 + 1) + 8 * (v94 / 0x2A)), v18, v20, v22, 2 * v24, 1);
  v26 = *MEMORY[0x1E69A1918];
  v25 = *(MEMORY[0x1E69A1918] + 4);
  v27 = *MEMORY[0x1E69A1918];
  v89 = 0u;
  v90 = 0u;
  v91 = 1065353216;
  std::__hash_table<-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate,-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::$_0,-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::$_1,std::allocator<-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate>>::__rehash_unique[abi:ne200100](&v89, 0xAuLL);
  v86 = 0u;
  v87 = 0u;
  v88 = 1065353216;
  std::__hash_table<-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate,-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::$_0,-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::$_1,std::allocator<-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate>>::__rehash_unique[abi:ne200100](&v86, 0xAuLL);
  v75 = andRouteCopy;
  v76 = routeCopy;
  v74 = end;
  if (v93 == *(&v92 + 1))
  {
    v30 = v25;
    goto LABEL_105;
  }

  v28 = v94 / 0x2A;
  v29 = *(*(&v92 + 1) + 8 * v28) - 4032 * v28 + 96 * v94;
  v77 = *(*(&v92 + 1) + 8 * ((*(&v94 + 1) + v94) / 0x2AuLL)) - 4032 * ((*(&v94 + 1) + v94) / 0x2AuLL) + 96 * (*(&v94 + 1) + v94);
  v30 = v25;
  if (v29 == v77)
  {
LABEL_105:
    v33 = v26;
    goto LABEL_106;
  }

  v31 = 1.79769313e308;
  v32 = (*(&v92 + 1) + 8 * v28);
  v33 = v26;
  do
  {
    v82 = *(v29 + 89);
    if (*(v29 + 89))
    {
      v34 = &v89;
    }

    else
    {
      v34 = &v86;
    }

    v35 = *(v29 + 76) + *(v29 + 72);
    if (v35 == 0.0)
    {
      v36 = 0;
    }

    else
    {
      v36 = LODWORD(v35);
    }

    v83 = v34;
    v37 = *(v34 + 8);
    if (*(v29 + 88) == 1)
    {
      v78 = v32;
      v80 = v27;
      if (!*&v37)
      {
        goto LABEL_36;
      }

      v38 = vcnt_s8(v37);
      v38.i16[0] = vaddlv_u8(v38);
      v39 = v38.u32[0];
      if (v38.u32[0] > 1uLL)
      {
        v40 = v36;
        if (v36 >= *&v37)
        {
          v40 = v36 % v37.i32[0];
        }
      }

      else
      {
        v40 = v36 & (*&v37 + 0xFFFFFFFFLL);
      }

      v44 = *(*v34 + 8 * v40);
      if (!v44 || (v45 = *v44) == 0)
      {
LABEL_36:
        operator new();
      }

      while (1)
      {
        v46 = v45[1];
        if (v46 == v36)
        {
          v47 = v45[11];
          v48 = *(v29 + 72);
          if (GEOPolylineCoordinateEqual())
          {
            v54 = &v89;
            if (v82)
            {
              v54 = &v86;
            }

            v55 = *(v54 + 2);
            v32 = v78;
            v27 = v80;
            if (!v55)
            {
              goto LABEL_68;
            }

            while (2)
            {
              *buf = 0xBF80000000000000;
              v84 = 0.0;
              v85 = 0xBF80000000000000;
              if ([(MNRouteDivergenceFinder *)self _pointMeetsConvergenceThreshold:v29 withOtherPoint:v55 + 2 outRouteCoordinateA:buf outRouteCoordinateB:&v85 outDistance:&v84, v74])
              {
                v56 = self->_toleranceMeters * 0.5;
                if (v84 >= v56 || v31 >= v56)
                {
                  if (v84 >= v31)
                  {
                    goto LABEL_67;
                  }

LABEL_66:
                  v33 = *buf;
                  v30 = *&buf[4];
                  v31 = v84;
                  v27 = v85;
                  goto LABEL_67;
                }

                if (*buf < v33 || *buf == v33 && *&buf[4] < *&v30)
                {
                  goto LABEL_66;
                }
              }

LABEL_67:
              v55 = *v55;
              if (!v55)
              {
                goto LABEL_68;
              }

              continue;
            }
          }
        }

        else
        {
          if (v39 > 1)
          {
            if (v46 >= *&v37)
            {
              v46 %= *&v37;
            }
          }

          else
          {
            v46 &= *&v37 - 1;
          }

          if (v46 != v40)
          {
            goto LABEL_36;
          }
        }

        v45 = *v45;
        if (!v45)
        {
          goto LABEL_36;
        }
      }
    }

    if (!*&v37)
    {
      goto LABEL_68;
    }

    v79 = v32;
    v81 = v27;
    v41 = vcnt_s8(v37);
    v41.i16[0] = vaddlv_u8(v41);
    v42 = v41.u32[0];
    if (v41.u32[0] > 1uLL)
    {
      if (v36 >= *&v37)
      {
        v43 = v36 % v37.i32[0];
      }

      else
      {
        v43 = v36;
      }
    }

    else
    {
      v43 = v36 & (*&v37 + 0xFFFFFFFFLL);
    }

    v49 = *(*v34 + 8 * v43);
    if (!v49 || (v50 = *v49) == 0)
    {
      v32 = v79;
      v27 = v81;
      goto LABEL_68;
    }

    while (1)
    {
      v51 = *(v50 + 1);
      if (v51 == v36)
      {
        break;
      }

      if (v42 > 1)
      {
        if (v51 >= *&v37)
        {
          v51 %= *&v37;
        }
      }

      else
      {
        v51 &= *&v37 - 1;
      }

      if (v51 != v43)
      {
LABEL_51:
        v32 = v79;
        v27 = v81;
        goto LABEL_68;
      }

LABEL_50:
      v50 = *v50;
      if (!v50)
      {
        goto LABEL_51;
      }
    }

    v52 = *(v50 + 11);
    v53 = *(v29 + 72);
    if ((GEOPolylineCoordinateEqual() & 1) == 0)
    {
      goto LABEL_50;
    }

    v59 = *(v83 + 8);
    v60 = *(v50 + 1);
    v61 = vcnt_s8(v59);
    v61.i16[0] = vaddlv_u8(v61);
    if (v61.u32[0] > 1uLL)
    {
      if (v60 >= *&v59)
      {
        v60 %= *&v59;
      }
    }

    else
    {
      v60 &= *&v59 - 1;
    }

    v62 = *v50;
    v63 = *(*v83 + 8 * v60);
    do
    {
      v64 = v63;
      v63 = *v63;
    }

    while (v63 != v50);
    v65 = &v90;
    if (!v82)
    {
      v65 = &v87;
    }

    v32 = v79;
    v27 = v81;
    if (v64 == v65)
    {
      goto LABEL_91;
    }

    v66 = *(v64 + 1);
    if (v61.u32[0] > 1uLL)
    {
      if (v66 >= *&v59)
      {
        v66 %= *&v59;
      }
    }

    else
    {
      v66 &= *&v59 - 1;
    }

    if (v66 == v60)
    {
LABEL_93:
      if (v62)
      {
        v67 = *(v62 + 1);
        goto LABEL_95;
      }
    }

    else
    {
LABEL_91:
      if (!v62)
      {
        goto LABEL_92;
      }

      v67 = *(v62 + 1);
      if (v61.u32[0] > 1uLL)
      {
        v68 = *(v62 + 1);
        if (v67 >= *&v59)
        {
          v68 = v67 % *&v59;
        }
      }

      else
      {
        v68 = v67 & (*&v59 - 1);
      }

      if (v68 != v60)
      {
LABEL_92:
        *(*v83 + 8 * v60) = 0;
        v62 = *v50;
        goto LABEL_93;
      }

LABEL_95:
      if (v61.u32[0] > 1uLL)
      {
        if (v67 >= *&v59)
        {
          v67 %= *&v59;
        }
      }

      else
      {
        v67 &= *&v59 - 1;
      }

      if (v67 != v60)
      {
        *(*v83 + 8 * v67) = v64;
        v62 = *v50;
      }
    }

    *v64 = v62;
    *v50 = 0;
    v69 = &v89;
    if (!v82)
    {
      v69 = &v86;
    }

    --*(v69 + 3);
    operator delete(v50);
LABEL_68:
    v29 += 96;
    if (v29 - *v32 == 4032)
    {
      v58 = v32[1];
      ++v32;
      v29 = v58;
    }
  }

  while (v29 != v77);
LABEL_106:
  v70 = MEMORY[0x1E69A1918];
  *coordinate = *MEMORY[0x1E69A1918];
  *routeCoordinate = *v70;
  v71 = (v33 | (v30 << 32));
  if ((GEOPolylineCoordinateIsInvalid() & 1) == 0)
  {
    if (!GEOPolylineCoordinateInRange() || (GEOPolylineCoordinateInRange() & 1) == 0)
    {
      v73 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        *&buf[4] = "[MNRouteDivergenceFinder _findFirstConvergenceBetweenRoute:range:andRoute:range:outRouteCoordinate:outRouteCoordinate:]";
        v96 = 2080;
        v97 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Misc/MNRouteDivergenceFinder.mm";
        v98 = 1024;
        v99 = 1071;
        v100 = 2080;
        v101 = "GEOPolylineCoordinateInRange(convergenceCoordinateA, rangeA) && GEOPolylineCoordinateInRange(convergenceCoordinateB, rangeB)";
        _os_log_impl(&dword_1D311E000, v73, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s)", buf, 0x26u);
      }
    }

    if (self->_minLengthMetersForConvergence <= 0.0 || ![(MNRouteDivergenceFinder *)self _pathsDivergeBetweenRoute:v76 from:v71 andRoute:v75 from:v27 withinDistance:?])
    {
      *coordinate = v71;
      *routeCoordinate = v27;
    }
  }

  std::__hash_table<[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate,[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::$_0,[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::$_1,std::allocator<[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate>>::~__hash_table(&v86);
  std::__hash_table<[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate,[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::$_0,[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::$_1,std::allocator<[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate>>::~__hash_table(&v89);
  std::deque<_MNRouteConvergencePoint>::~deque[abi:ne200100](&v92);

  v72 = *MEMORY[0x1E69E9840];
}

- (void)_findFirstConvergenceBetweenRoute:(uint64_t *)route range:(uint64_t)range andRoute:(uint64_t *)andRoute range:(unint64_t)a4 outRouteCoordinate:(uint64_t)coordinate outRouteCoordinate:(char)routeCoordinate
{
  v643 = *MEMORY[0x1E69E9840];
  if (a4 == range)
  {
    goto LABEL_2;
  }

  v9 = a4;
  rangeCopy = range;
  while (1)
  {
    v12 = 42 * (andRoute - route);
    v13 = *andRoute;
    v14 = *route;
    v15 = rangeCopy - *route;
    v16 = v12 - 0x5555555555555555 * ((v9 - *andRoute) >> 5) + 0x5555555555555555 * (v15 >> 5);
    v17 = v16 - 2;
    if (v16 <= 2)
    {
      if (v16 < 2)
      {
        goto LABEL_2;
      }

      if (v16 == 2)
      {
        if (v9 == v13)
        {
          v9 = *(andRoute - 1) + 4032;
        }

        v341 = *(v9 - 88);
        v342 = *(rangeCopy + 8);
        if (v341 < v342 || v341 <= v342 && *(v9 - 8) == 1 && (*(rangeCopy + 88) & 1) == 0)
        {
          v343 = (v9 - 96);
          goto LABEL_446;
        }

        goto LABEL_2;
      }

      goto LABEL_11;
    }

    if (v16 == 3)
    {
      break;
    }

    if (v16 == 4)
    {
      v346 = v15 / 96;
      if (v15 >= -95)
      {
        v347 = (v346 + 1) / 0x2AuLL;
        v348 = &route[v347];
        v349 = *v348 - 4032 * v347 + 96 * (v346 + 1);
        v350 = v346 + 2;
        andRouteCopy2 = andRoute;
        goto LABEL_456;
      }

      v348 = &route[-((40 - v346) / 0x2AuLL)];
      v349 = *v348 + 96 * (41 - ((40 - v346) % 0x2AuLL));
      andRouteCopy2 = andRoute;
      if (v15 < 0xFFFFFFFFFFFFFF41)
      {
        v593 = 39 - v346;
        v516 = &route[-(v593 / 0x2A)];
        v517 = (*v516 + 96 * (41 - (v593 % 0x2A)));
      }

      else
      {
        v350 = 1;
LABEL_456:
        v516 = &route[v350 / 0x2A];
        v517 = (*v516 - 4032 * (v350 / 0x2A) + 96 * v350);
      }

      if (v9 == v13)
      {
        v594 = *(andRouteCopy2 - 8);
        andRouteCopy2 -= 8;
        v9 = v594 + 4032;
      }

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[MNRouteDivergenceFinder _findFirstConvergenceBetweenRoute:range:andRoute:range:outRouteCoordinate:outRouteCoordinate:]::$_5 &,std::__deque_iterator<_MNRouteConvergencePoint,_MNRouteConvergencePoint*,_MNRouteConvergencePoint&,_MNRouteConvergencePoint**,long,42l>,0>(route, rangeCopy, v348, v349, v516, v517, andRouteCopy2, (v9 - 96));
      goto LABEL_2;
    }

    if (v16 == 5)
    {
      v352 = v15 / 96;
      if (v15 >= -95)
      {
        v353 = (v352 + 1) / 0x2AuLL;
        v354 = &route[v353];
        v355 = *v354 - 4032 * v353 + 96 * (v352 + 1);
        v356 = v352 + 2;
        goto LABEL_459;
      }

      v354 = &route[-((40 - v352) / 0x2AuLL)];
      v355 = *v354 + 96 * (41 - ((40 - v352) % 0x2AuLL));
      if (v15 < 0xFFFFFFFFFFFFFF41)
      {
        v518 = &route[-((39 - v352) / 0x2AuLL)];
        v519 = *v518 + 96 * (41 - ((39 - v352) % 0x2AuLL));
        andRouteCopy4 = andRoute;
        if (v15 >= 0xFFFFFFFFFFFFFEE1)
        {
          v520 = 1;
          goto LABEL_460;
        }

        v622 = 38 - v352;
        v522 = &route[-(v622 / 0x2A)];
        v523 = *v522 + 96 * (41 - (v622 % 0x2A));
      }

      else
      {
        v356 = 1;
LABEL_459:
        v518 = &route[v356 / 0x2A];
        v519 = *v518 - 4032 * (v356 / 0x2A) + 96 * v356;
        v520 = v352 + 3;
        andRouteCopy4 = andRoute;
LABEL_460:
        v522 = &route[v520 / 0x2A];
        v523 = *v522 - 4032 * (v520 / 0x2A) + 96 * v520;
      }

      if (v9 == v13)
      {
        v9 = *(andRouteCopy4 - 1) + 4032;
      }

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[MNRouteDivergenceFinder _findFirstConvergenceBetweenRoute:range:andRoute:range:outRouteCoordinate:outRouteCoordinate:]::$_5 &,std::__deque_iterator<_MNRouteConvergencePoint,_MNRouteConvergencePoint*,_MNRouteConvergencePoint&,_MNRouteConvergencePoint**,long,42l>,0>(route, rangeCopy, v354, v355, v518, v519, v522, v523);
      v524 = *(v9 - 88);
      v525 = *(v523 + 8);
      if (v524 < v525 || v524 <= v525 && *(v9 - 8) == 1 && (*(v523 + 88) & 1) == 0)
      {
        v526 = (v9 - 96);
        v640 = *(v523 + 32);
        v641 = *(v523 + 48);
        *v642 = *(v523 + 64);
        *&v642[16] = *(v523 + 80);
        v638 = *v523;
        v639 = *(v523 + 16);
        v527 = *(v9 - 80);
        *v523 = *(v9 - 96);
        *(v523 + 16) = v527;
        v529 = *(v9 - 48);
        v528 = *(v9 - 32);
        v530 = *(v9 - 64);
        *(v523 + 74) = *(v9 - 22);
        *(v523 + 48) = v529;
        *(v523 + 64) = v528;
        *(v523 + 32) = v530;
        v531 = v639;
        *v526 = v638;
        v526[1] = v531;
        v532 = v640;
        v533 = v641;
        v534 = *v642;
        *(v526 + 74) = *&v642[10];
        v526[3] = v533;
        v526[4] = v534;
        v526[2] = v532;
        v535 = *(v523 + 8);
        v536 = *(v519 + 8);
        if (v535 < v536 || v535 <= v536 && *(v523 + 88) == 1 && (*(v519 + 88) & 1) == 0)
        {
          v537 = *(v519 + 16);
          v638 = *v519;
          v639 = v537;
          v538 = *(v519 + 32);
          v539 = *(v519 + 48);
          v540 = *(v519 + 80);
          *v642 = *(v519 + 64);
          *&v642[16] = v540;
          v640 = v538;
          v641 = v539;
          v542 = *(v523 + 48);
          v541 = *(v523 + 64);
          v543 = *(v523 + 32);
          *(v519 + 74) = *(v523 + 74);
          *(v519 + 48) = v542;
          *(v519 + 64) = v541;
          *(v519 + 32) = v543;
          v544 = *(v523 + 16);
          *v519 = *v523;
          *(v519 + 16) = v544;
          *(v523 + 48) = v641;
          *(v523 + 32) = v640;
          *(v523 + 64) = *v642;
          *(v523 + 74) = *&v642[10];
          *v523 = v638;
          *(v523 + 16) = v639;
          v545 = *(v519 + 8);
          v546 = *(v355 + 8);
          if (v545 < v546 || v545 <= v546 && *(v519 + 88) == 1 && (*(v355 + 88) & 1) == 0)
          {
            v547 = *(v355 + 16);
            v638 = *v355;
            v639 = v547;
            v548 = *(v355 + 32);
            v549 = *(v355 + 48);
            v550 = *(v355 + 80);
            *v642 = *(v355 + 64);
            *&v642[16] = v550;
            v640 = v548;
            v641 = v549;
            v552 = *(v519 + 48);
            v551 = *(v519 + 64);
            v553 = *(v519 + 32);
            *(v355 + 74) = *(v519 + 74);
            *(v355 + 48) = v552;
            *(v355 + 64) = v551;
            *(v355 + 32) = v553;
            v554 = *(v519 + 16);
            *v355 = *v519;
            *(v355 + 16) = v554;
            v555 = v639;
            *v519 = v638;
            *(v519 + 16) = v555;
            v556 = v640;
            v557 = v641;
            v558 = *v642;
            *(v519 + 74) = *&v642[10];
            *(v519 + 48) = v557;
            *(v519 + 64) = v558;
            *(v519 + 32) = v556;
            v559 = *(v355 + 8);
            v560 = *(rangeCopy + 8);
            if (v559 < v560 || v559 <= v560 && *(v355 + 88) == 1 && (*(rangeCopy + 88) & 1) == 0)
            {
              v561 = *(rangeCopy + 16);
              v638 = *rangeCopy;
              v639 = v561;
              v562 = *(rangeCopy + 32);
              v563 = *(rangeCopy + 48);
              v564 = *(rangeCopy + 80);
              *v642 = *(rangeCopy + 64);
              *&v642[16] = v564;
              v640 = v562;
              v641 = v563;
              v566 = *(v355 + 48);
              v565 = *(v355 + 64);
              v567 = *(v355 + 32);
              *(rangeCopy + 74) = *(v355 + 74);
              *(rangeCopy + 48) = v566;
              *(rangeCopy + 64) = v565;
              *(rangeCopy + 32) = v567;
              v568 = *(v355 + 16);
              *rangeCopy = *v355;
              *(rangeCopy + 16) = v568;
              v569 = v639;
              *v355 = v638;
              *(v355 + 16) = v569;
              v570 = v640;
              v571 = v641;
              v572 = *v642;
              *(v355 + 74) = *&v642[10];
              *(v355 + 48) = v571;
              *(v355 + 64) = v572;
              *(v355 + 32) = v570;
            }
          }
        }
      }

      goto LABEL_2;
    }

LABEL_11:
    if (v16 <= 23)
    {
      if (routeCoordinate)
      {
        if (rangeCopy == v9)
        {
          goto LABEL_2;
        }

        v357 = rangeCopy + 96;
        while (2)
        {
          if (v357 - v14 == 4032)
          {
            v358 = route[1];
            ++route;
            v14 = v358;
            v357 = v358;
          }

          if (v357 == v9)
          {
            goto LABEL_2;
          }

          routeCopy = route;
          v360 = v357;
          if (v357 == v14)
          {
            routeCopy = route - 1;
            v360 = *(route - 1) + 4032;
          }

          v361 = *(v357 + 8);
          v362 = *(v360 - 88);
          if (v361 < v362)
          {
            LOBYTE(v363) = *(v357 + 88);
            goto LABEL_336;
          }

          if (v361 <= v362)
          {
            v363 = *(v357 + 88);
            if (v363 == 1 && (*(v360 - 8) & 1) == 0)
            {
LABEL_336:
              v364 = *v357;
              v365 = *(v357 + 32);
              v366 = *(v357 + 48);
              v367 = *(v357 + 64);
              *v642 = *(v357 + 80);
              v640 = v366;
              v641 = v367;
              v639 = v365;
              v638 = *(v357 + 16);
              v368 = *(v357 + 89);
              v369 = (v360 - 96);
              v370 = *(v360 - 22);
              v372 = *(v360 - 48);
              v371 = *(v360 - 32);
              *(v357 + 32) = *(v360 - 64);
              *(v357 + 48) = v372;
              *(v357 + 64) = v371;
              *(v357 + 74) = v370;
              v373 = *(v360 - 80);
              *v357 = *(v360 - 96);
              *(v357 + 16) = v373;
              if (v360 - 96 != rangeCopy)
              {
                do
                {
                  if (v369 == *routeCopy)
                  {
                    v375 = *--routeCopy;
                    v374 = (v375 + 4032);
                  }

                  else
                  {
                    v374 = v369;
                  }

                  v376 = *(v374 - 11);
                  if (v361 >= v376 && (v361 > v376 || (v363 & 1) == 0 || (*(v374 - 1) & 1) != 0))
                  {
                    break;
                  }

                  v377 = *(v374 - 5);
                  *v369 = *(v374 - 6);
                  *(v369 + 1) = v377;
                  v378 = *(v374 - 4);
                  v379 = *(v374 - 3);
                  v380 = *(v374 - 2);
                  *(v369 + 74) = *(v374 - 22);
                  *(v369 + 3) = v379;
                  *(v369 + 4) = v380;
                  *(v369 + 2) = v378;
                  v369 = v374 - 12;
                  v360 = v374;
                }

                while (v374 - 12 != rangeCopy);
              }

              *(v360 - 96) = v364;
              *(v360 - 88) = v361;
              *(v360 - 80) = v638;
              v381 = v639;
              v382 = v640;
              v383 = v641;
              *(v360 - 16) = *v642;
              *(v360 - 48) = v382;
              *(v360 - 32) = v383;
              *(v360 - 64) = v381;
              *(v360 - 8) = v363;
              *(v360 - 7) = v368;
              v14 = *route;
            }
          }

          v357 += 96;
          continue;
        }
      }

      if (rangeCopy == v9)
      {
        goto LABEL_2;
      }

      v573 = v15 / 96;
      if (v15 < -95)
      {
        v595 = 40 - v573;
        v576 = &route[-((40 - v573) / 0x2AuLL)];
        v577 = *v576;
        v578 = *v576 + 96 * (41 - (v595 % 0x2A));
      }

      else
      {
        v574 = v573 + 1;
        v575 = v573 + 1;
        v576 = &route[(v573 + 1) / 0x2AuLL];
        v577 = *v576;
        v578 = *v576 - 4032 * (v575 / 0x2A) + 96 * v574;
      }

      if (v578 == v9)
      {
        goto LABEL_2;
      }

      while (2)
      {
        v596 = (v578 - v577) / 96;
        if (v578 - v577 < 97)
        {
          v601 = 42 - v596;
          v599 = &v576[-((42 - v596) / 0x2AuLL)];
          v600 = *v599 + 96 * (41 - (v601 % 0x2A));
        }

        else
        {
          v597 = v596 - 1;
          v598 = v596 - 1;
          v599 = &v576[(v596 - 1) / 0x2AuLL];
          v600 = *v599 - 4032 * (v598 / 0x2A) + 96 * v597;
        }

        v602 = *(v578 + 8);
        v603 = *(v600 + 8);
        if (v602 >= v603)
        {
          if (v602 <= v603)
          {
            v604 = *(v578 + 88);
            if (v604 == 1 && (*(v600 + 88) & 1) == 0)
            {
              goto LABEL_505;
            }
          }
        }

        else
        {
          LOBYTE(v604) = *(v578 + 88);
LABEL_505:
          v605 = *v578;
          v606 = *(v578 + 32);
          v607 = *(v578 + 64);
          v640 = *(v578 + 48);
          v641 = v607;
          *v642 = *(v578 + 80);
          v639 = v606;
          v638 = *(v578 + 16);
          v608 = *(v578 + 89);
          v609 = v578;
          while (1)
          {
            v610 = v600;
            v611 = *(v600 + 16);
            *v609 = *v600;
            v609[1] = v611;
            v612 = *(v600 + 32);
            v613 = *(v600 + 48);
            v614 = *(v600 + 64);
            *(v609 + 74) = *(v600 + 74);
            v609[3] = v613;
            v609[4] = v614;
            v609[2] = v612;
            if (v600 == *v599)
            {
              v616 = *--v599;
              v615 = v616 + 4032;
            }

            else
            {
              v615 = v600;
            }

            v600 = v615 - 96;
            v617 = *(v615 - 88);
            v609 = v610;
            if (v602 >= v617)
            {
              if (v602 > v617)
              {
                break;
              }

              if ((v604 & 1) == 0)
              {
                break;
              }

              v609 = v610;
              if (*(v615 - 8) == 1)
              {
                break;
              }
            }
          }

          *v610 = v605;
          *(v610 + 8) = v602;
          v618 = *v642;
          v619 = v641;
          *(v610 + 48) = v640;
          *(v610 + 64) = v619;
          *(v610 + 80) = v618;
          v620 = v639;
          *(v610 + 16) = v638;
          *(v610 + 32) = v620;
          *(v610 + 88) = v604;
          *(v610 + 89) = v608;
          v577 = *v576;
        }

        v578 += 96;
        if (v578 - v577 == 4032)
        {
          v621 = v576[1];
          ++v576;
          v577 = v621;
          v578 = v621;
        }

        if (v578 == v9)
        {
          goto LABEL_2;
        }

        continue;
      }
    }

    if (!coordinate)
    {
      if (rangeCopy == v9)
      {
        goto LABEL_2;
      }

      v628 = v9;
      v384 = v17 >> 1;
      v385 = v17 >> 1;
      while (2)
      {
        v638.n128_u64[0] = route;
        v638.n128_u64[1] = rangeCopy;
        std::__deque_iterator<_MNRouteConvergencePoint,_MNRouteConvergencePoint*,_MNRouteConvergencePoint&,_MNRouteConvergencePoint**,long,42l>::operator+=[abi:ne200100](&v638, v385);
        v386 = v638.n128_u64[1];
        if (v638.n128_u64[1] == rangeCopy)
        {
          v387 = 0;
          goto LABEL_355;
        }

        v387 = 42 * ((v638.n128_u64[0] - route) >> 3) - 0x5555555555555555 * ((v638.n128_u64[1] - *v638.n128_u64[0]) >> 5) + 0x5555555555555555 * ((rangeCopy - *route) >> 5);
        if (v384 >= v387)
        {
LABEL_355:
          v388 = 2 * v387;
          v389 = (2 * v387) | 1;
          v638.n128_u64[0] = route;
          v638.n128_u64[1] = rangeCopy;
          std::__deque_iterator<_MNRouteConvergencePoint,_MNRouteConvergencePoint*,_MNRouteConvergencePoint&,_MNRouteConvergencePoint**,long,42l>::operator+=[abi:ne200100](&v638, v389);
          v390 = v638.n128_i64[1];
          if (v388 + 2 < v16)
          {
            v391 = v638.n128_u64[1] - *v638.n128_u64[0];
            v392 = v391 / 96;
            v393 = v391 < -95 ? *(v638.n128_u64[0] - 8 * ((40 - v392) / 0x2AuLL)) + 96 * (41 - ((40 - v392) % 0x2AuLL)) : *(v638.n128_u64[0] + 8 * ((v392 + 1) / 0x2AuLL)) - 4032 * ((v392 + 1) / 0x2AuLL) + 96 * (v392 + 1);
            v394 = *(v638.n128_u64[1] + 8);
            v395 = *(v393 + 8);
            if (v394 < v395 || v394 <= v395 && *(v638.n128_u64[1] + 88) == 1 && (*(v393 + 88) & 1) == 0)
            {
              v390 = v638.n128_u64[1] + 96;
              if (v638.n128_u64[1] + 96 - *v638.n128_u64[0] == 4032)
              {
                v390 = *(v638.n128_u64[0] + 8);
              }

              v389 = v388 + 2;
            }
          }

          v396 = *(v390 + 8);
          v397 = *(v386 + 8);
          if (v396 >= v397 && (v396 > v397 || *(v390 + 88) != 1 || *(v386 + 88) == 1))
          {
            v398 = *v386;
            v399 = *(v386 + 48);
            v639 = *(v386 + 32);
            v640 = v399;
            v641 = *(v386 + 64);
            *v642 = *(v386 + 80);
            v638 = *(v386 + 16);
            v626 = *(v386 + 88);
            v400 = *(v386 + 89);
            v401 = *v390;
            *(v386 + 16) = *(v390 + 16);
            v403 = *(v390 + 48);
            v402 = *(v390 + 64);
            v404 = *(v390 + 74);
            *(v386 + 32) = *(v390 + 32);
            *(v386 + 48) = v403;
            *(v386 + 74) = v404;
            *(v386 + 64) = v402;
            *v386 = v401;
            v623 = v400;
            if (v384 >= v389)
            {
              while (1)
              {
                v405 = v390;
                v406 = 2 * v389;
                v389 = (2 * v389) | 1;
                *&v633 = route;
                *(&v633 + 1) = rangeCopy;
                std::__deque_iterator<_MNRouteConvergencePoint,_MNRouteConvergencePoint*,_MNRouteConvergencePoint&,_MNRouteConvergencePoint**,long,42l>::operator+=[abi:ne200100](&v633, v389);
                v390 = *(&v633 + 1);
                if (v406 + 2 < v16)
                {
                  v407 = *(&v633 + 1) - *v633;
                  v408 = v407 / 96;
                  v409 = v407 < -95 ? *(v633 - 8 * ((40 - v408) / 0x2AuLL)) + 96 * (41 - ((40 - v408) % 0x2AuLL)) : *(v633 + 8 * ((v408 + 1) / 0x2AuLL)) - 4032 * ((v408 + 1) / 0x2AuLL) + 96 * (v408 + 1);
                  v410 = *(*(&v633 + 1) + 8);
                  v411 = *(v409 + 8);
                  if (v410 < v411 || v410 <= v411 && *(*(&v633 + 1) + 88) == 1 && (*(v409 + 88) & 1) == 0)
                  {
                    v390 = *(&v633 + 1) + 96;
                    if (*(&v633 + 1) + 96 - *v633 == 4032)
                    {
                      v390 = *(v633 + 8);
                    }

                    v389 = v406 + 2;
                  }
                }

                v412 = *(v390 + 8);
                if (v412 < v397 || v412 <= v397 && *(v390 + 88) == 1 && (v626 & 1) == 0)
                {
                  break;
                }

                v413 = *(v390 + 16);
                *v405 = *v390;
                v405[1] = v413;
                v414 = *(v390 + 32);
                v415 = *(v390 + 48);
                v416 = *(v390 + 64);
                *(v405 + 74) = *(v390 + 74);
                v405[3] = v415;
                v405[4] = v416;
                v405[2] = v414;
                if (v384 < v389)
                {
                  goto LABEL_389;
                }
              }

              v390 = v405;
            }

LABEL_389:
            *v390 = v398;
            *(v390 + 8) = v397;
            v417 = *v642;
            v418 = v641;
            *(v390 + 48) = v640;
            *(v390 + 64) = v418;
            *(v390 + 80) = v417;
            v419 = v639;
            *(v390 + 16) = v638;
            *(v390 + 32) = v419;
            *(v390 + 88) = v626;
            *(v390 + 89) = v623;
          }
        }

        if (!v385)
        {
          v420 = v628;
          v421 = v12 - 0x5555555555555555 * ((v628 - *andRoute) >> 5) + 0x5555555555555555 * ((rangeCopy - *route) >> 5);
          if (v421 < 2)
          {
            goto LABEL_2;
          }

          while (2)
          {
            v629 = v420;
            v422 = 0;
            v423 = *(rangeCopy + 16);
            v638 = *rangeCopy;
            v639 = v423;
            v424 = *(rangeCopy + 32);
            v425 = *(rangeCopy + 48);
            v426 = *(rangeCopy + 80);
            *v642 = *(rangeCopy + 64);
            *&v642[16] = v426;
            v640 = v424;
            v641 = v425;
            *&v633 = route;
            *(&v633 + 1) = rangeCopy;
            v427 = rangeCopy;
            do
            {
              v428 = v427;
              std::__deque_iterator<_MNRouteConvergencePoint,_MNRouteConvergencePoint*,_MNRouteConvergencePoint&,_MNRouteConvergencePoint**,long,42l>::operator+=[abi:ne200100](&v633, v422 + 1);
              v429 = 2 * v422;
              v422 = (2 * v422) | 1;
              v430 = v429 + 2;
              v427 = *(&v633 + 1);
              if (v430 < v421)
              {
                v431 = *(&v633 + 1) - *v633;
                v432 = v431 / 96;
                v433 = v431 < -95 ? *(v633 - 8 * ((40 - v432) / 0x2AuLL)) + 96 * (41 - ((40 - v432) % 0x2AuLL)) : *(v633 + 8 * ((v432 + 1) / 0x2AuLL)) - 4032 * ((v432 + 1) / 0x2AuLL) + 96 * (v432 + 1);
                v434 = *(*(&v633 + 1) + 8);
                v435 = *(v433 + 8);
                if (v434 < v435 || v434 <= v435 && *(*(&v633 + 1) + 88) == 1 && (*(v433 + 88) & 1) == 0)
                {
                  v427 = (*(&v633 + 1) + 96);
                  *(&v633 + 1) = v427;
                  if ((v427 - *v633) == 4032)
                  {
                    v427 = *(v633 + 8);
                    *&v633 = v633 + 8;
                    *(&v633 + 1) = v427;
                  }

                  v422 = v430;
                }
              }

              v436 = v427[1];
              *v428 = *v427;
              v428[1] = v436;
              v437 = v427[2];
              v438 = v427[3];
              v439 = v427[4];
              *(v428 + 74) = *(v427 + 74);
              v428[3] = v438;
              v428[4] = v439;
              v428[2] = v437;
            }

            while (v422 <= ((v421 - 2) >> 1));
            v440 = v633;
            v441 = v629;
            if (*andRoute == v629)
            {
              v441 = *(andRoute - 1) + 4032;
            }

            v442 = (v441 - 96);
            if (v427 == v442)
            {
              v427[2] = v640;
              v427[3] = v641;
              v427[4] = *v642;
              *(v427 + 74) = *&v642[10];
              *v427 = v638;
              v427[1] = v639;
            }

            else
            {
              v443 = v442[1];
              *v427 = *v442;
              v427[1] = v443;
              v444 = v442[2];
              v445 = v442[3];
              v446 = v442[4];
              *(v427 + 74) = *(v442 + 74);
              v427[3] = v445;
              v427[4] = v446;
              v427[2] = v444;
              v447 = &v427[6];
              if ((&v427[6] - *v440) == 4032)
              {
                v448 = v440[1];
                ++v440;
                v447 = v448;
              }

              v449 = v639;
              *v442 = v638;
              v442[1] = v449;
              v450 = v640;
              v451 = v641;
              v452 = *v642;
              *(v442 + 74) = *&v642[10];
              v442[3] = v451;
              v442[4] = v452;
              v442[2] = v450;
              if (v447 != rangeCopy)
              {
                v453 = 42 * (v440 - route) - 0x5555555555555555 * ((v447 - *v440) >> 5) + 0x5555555555555555 * ((rangeCopy - *route) >> 5);
                v454 = v453 < 2;
                v455 = v453 - 2;
                if (!v454)
                {
                  v624 = v455;
                  v456 = v455 >> 1;
                  *&v633 = route;
                  *(&v633 + 1) = rangeCopy;
                  std::__deque_iterator<_MNRouteConvergencePoint,_MNRouteConvergencePoint*,_MNRouteConvergencePoint&,_MNRouteConvergencePoint**,long,42l>::operator+=[abi:ne200100](&v633, v455 >> 1);
                  if (*v440 == v447)
                  {
                    v447 = *(v440 - 1) + 4032;
                  }

                  v457 = *(&v633 + 1);
                  v458 = *(*(&v633 + 1) + 8);
                  v459 = *(v447 - 88);
                  if (v458 < v459)
                  {
                    v627 = *(v447 - 8);
                    v460 = v624;
                    goto LABEL_417;
                  }

                  v460 = v624;
                  if (v458 <= v459 && *(*(&v633 + 1) + 88) == 1)
                  {
                    v627 = *(v447 - 8);
                    if ((v627 & 1) == 0)
                    {
LABEL_417:
                      v461 = (v447 - 96);
                      v462 = *(v447 - 96);
                      v633 = *(v447 - 80);
                      v463 = *(v447 - 64);
                      v464 = *(v447 - 48);
                      v465 = *(v447 - 32);
                      v637 = *(v447 - 16);
                      v635 = v464;
                      v636 = v465;
                      v634 = v463;
                      v625 = *(v447 - 7);
                      v466 = *(v457 + 74);
                      v468 = v457[2];
                      v467 = v457[3];
                      v461[4] = v457[4];
                      v469 = v457[1];
                      *v461 = *v457;
                      v461[1] = v469;
                      v461[2] = v468;
                      v461[3] = v467;
                      *(v461 + 74) = v466;
                      if (v460 >= 2)
                      {
                        v470 = v457;
                        while (1)
                        {
                          v471 = v456 - 1;
                          v456 = (v456 - 1) >> 1;
                          routeCopy2 = route;
                          v632 = rangeCopy;
                          std::__deque_iterator<_MNRouteConvergencePoint,_MNRouteConvergencePoint*,_MNRouteConvergencePoint&,_MNRouteConvergencePoint**,long,42l>::operator+=[abi:ne200100](&routeCopy2, v456);
                          v457 = v632;
                          v472 = *(v632 + 8);
                          if (v472 >= v459 && (v472 > v459 || *(v632 + 88) != 1 || (v627 & 1) != 0))
                          {
                            break;
                          }

                          v473 = *(v632 + 16);
                          *v470 = *v632;
                          v470[1] = v473;
                          v474 = v457[2];
                          v475 = v457[3];
                          v476 = v457[4];
                          *(v470 + 74) = *(v457 + 74);
                          v470[3] = v475;
                          v470[4] = v476;
                          v470[2] = v474;
                          v470 = v457;
                          if (v471 <= 1)
                          {
                            goto LABEL_431;
                          }
                        }

                        v457 = v470;
                      }

LABEL_431:
                      *v457 = v462;
                      *(v457 + 1) = v459;
                      v477 = v637;
                      v478 = v636;
                      v457[3] = v635;
                      v457[4] = v478;
                      *(v457 + 10) = v477;
                      v479 = v634;
                      v457[1] = v633;
                      v457[2] = v479;
                      *(v457 + 88) = v627;
                      *(v457 + 89) = v625;
                    }
                  }
                }
              }
            }

            v480 = v629;
            if (v629 == *andRoute)
            {
              v481 = *--andRoute;
              v480 = v481 + 4032;
            }

            v420 = v480 - 96;
            v454 = v421-- <= 2;
            if (v454)
            {
              goto LABEL_2;
            }

            continue;
          }
        }

        --v385;
        continue;
      }
    }

    v18 = v16 >> 1;
    if (v16 >= 0x81)
    {
      v638.n128_u64[0] = route;
      v638.n128_u64[1] = rangeCopy;
      std::__deque_iterator<_MNRouteConvergencePoint,_MNRouteConvergencePoint*,_MNRouteConvergencePoint&,_MNRouteConvergencePoint**,long,42l>::operator+=[abi:ne200100](&v638, v16 >> 1);
      v19 = v9 - *andRoute;
      v20 = v19 / 96;
      if (v19 < 97)
      {
        v21 = andRoute[-((42 - v20) / 0x2AuLL)] + 96 * (41 - ((42 - v20) % 0x2AuLL));
      }

      else
      {
        v21 = andRoute[(v20 - 1) / 0x2AuLL] - 4032 * ((v20 - 1) / 0x2AuLL) + 96 * (v20 - 1);
      }

      v26 = v638.n128_u64[1];
      v27 = *(v638.n128_u64[1] + 8);
      v28 = *(rangeCopy + 8);
      if (v27 < v28 || v27 <= v28 && *(v638.n128_u64[1] + 88) == 1 && *(rangeCopy + 88) != 1)
      {
        v29 = *(v21 + 8);
        if (v29 < v27 || v29 <= v27 && *(v21 + 88) == 1 && (*(v638.n128_u64[1] + 88) & 1) == 0)
        {
          v30 = *(rangeCopy + 16);
          v638 = *rangeCopy;
          v639 = v30;
          v31 = *(rangeCopy + 32);
          v32 = *(rangeCopy + 48);
          v33 = *(rangeCopy + 80);
          *v642 = *(rangeCopy + 64);
          *&v642[16] = v33;
          v640 = v31;
          v641 = v32;
          v35 = *(v21 + 48);
          v34 = *(v21 + 64);
          v36 = *(v21 + 32);
          *(rangeCopy + 74) = *(v21 + 74);
          *(rangeCopy + 48) = v35;
          *(rangeCopy + 64) = v34;
          *(rangeCopy + 32) = v36;
          v37 = *(v21 + 16);
          *rangeCopy = *v21;
          *(rangeCopy + 16) = v37;
          *(v21 + 48) = v641;
          *(v21 + 32) = v640;
          *(v21 + 64) = *v642;
          *(v21 + 74) = *&v642[10];
          *v21 = v638;
        }

        else
        {
          v80 = *(rangeCopy + 16);
          v638 = *rangeCopy;
          v639 = v80;
          v81 = *(rangeCopy + 32);
          v82 = *(rangeCopy + 48);
          v83 = *(rangeCopy + 80);
          *v642 = *(rangeCopy + 64);
          *&v642[16] = v83;
          v640 = v81;
          v641 = v82;
          v85 = *(v26 + 48);
          v84 = *(v26 + 64);
          v86 = *(v26 + 32);
          *(rangeCopy + 74) = *(v26 + 74);
          *(rangeCopy + 48) = v85;
          *(rangeCopy + 64) = v84;
          *(rangeCopy + 32) = v86;
          v87 = *(v26 + 16);
          *rangeCopy = *v26;
          *(rangeCopy + 16) = v87;
          *(v26 + 48) = v641;
          *(v26 + 32) = v640;
          *(v26 + 64) = *v642;
          *(v26 + 74) = *&v642[10];
          *v26 = v638;
          *(v26 + 16) = v639;
          v88 = *(v21 + 8);
          v89 = *(v26 + 8);
          if (v88 >= v89 && (v88 > v89 || *(v21 + 88) != 1 || (*(v26 + 88) & 1) != 0))
          {
            goto LABEL_44;
          }

          v640 = *(v26 + 32);
          v641 = *(v26 + 48);
          *v642 = *(v26 + 64);
          *&v642[16] = *(v26 + 80);
          v638 = *v26;
          v639 = *(v26 + 16);
          v90 = *(v21 + 16);
          *v26 = *v21;
          *(v26 + 16) = v90;
          v92 = *(v21 + 48);
          v91 = *(v21 + 64);
          v93 = *(v21 + 32);
          *(v26 + 74) = *(v21 + 74);
          *(v26 + 48) = v92;
          *(v26 + 64) = v91;
          *(v26 + 32) = v93;
          *(v21 + 64) = *v642;
          *(v21 + 74) = *&v642[10];
          *v21 = v638;
          *(v21 + 48) = v641;
          *(v21 + 32) = v640;
        }

        *(v21 + 16) = v639;
      }

      else
      {
        v46 = *(v21 + 8);
        if (v46 < v27 || v46 <= v27 && *(v21 + 88) == 1 && (*(v638.n128_u64[1] + 88) & 1) == 0)
        {
          v640 = *(v638.n128_u64[1] + 32);
          v641 = *(v638.n128_u64[1] + 48);
          *v642 = *(v638.n128_u64[1] + 64);
          *&v642[16] = *(v638.n128_u64[1] + 80);
          v638 = *v638.n128_u64[1];
          v639 = *(v26 + 16);
          v47 = *(v21 + 16);
          *v26 = *v21;
          *(v26 + 16) = v47;
          v49 = *(v21 + 48);
          v48 = *(v21 + 64);
          v50 = *(v21 + 32);
          *(v26 + 74) = *(v21 + 74);
          *(v26 + 48) = v49;
          *(v26 + 64) = v48;
          *(v26 + 32) = v50;
          *(v21 + 64) = *v642;
          *(v21 + 74) = *&v642[10];
          *v21 = v638;
          *(v21 + 48) = v641;
          *(v21 + 32) = v640;
          *(v21 + 16) = v639;
          v51 = *(v26 + 8);
          v52 = *(rangeCopy + 8);
          if (v51 < v52 || v51 <= v52 && *(v26 + 88) == 1 && (*(rangeCopy + 88) & 1) == 0)
          {
            v53 = *(rangeCopy + 16);
            v638 = *rangeCopy;
            v639 = v53;
            v54 = *(rangeCopy + 32);
            v55 = *(rangeCopy + 48);
            v56 = *(rangeCopy + 80);
            *v642 = *(rangeCopy + 64);
            *&v642[16] = v56;
            v640 = v54;
            v641 = v55;
            v58 = *(v26 + 48);
            v57 = *(v26 + 64);
            v59 = *(v26 + 32);
            *(rangeCopy + 74) = *(v26 + 74);
            *(rangeCopy + 48) = v58;
            *(rangeCopy + 64) = v57;
            *(rangeCopy + 32) = v59;
            v60 = *(v26 + 16);
            *rangeCopy = *v26;
            *(rangeCopy + 16) = v60;
            *(v26 + 48) = v641;
            *(v26 + 32) = v640;
            *(v26 + 64) = *v642;
            *(v26 + 74) = *&v642[10];
            *v26 = v638;
            *(v26 + 16) = v639;
          }
        }
      }

LABEL_44:
      v94 = rangeCopy - *route;
      v95 = v94 / 96;
      if (v94 < -95)
      {
        v96 = route[-((40 - v95) / 0x2AuLL)] + 96 * (41 - ((40 - v95) % 0x2AuLL));
      }

      else
      {
        v96 = route[(v95 + 1) / 0x2AuLL] - 4032 * ((v95 + 1) / 0x2AuLL) + 96 * (v95 + 1);
      }

      v638.n128_u64[0] = route;
      v638.n128_u64[1] = rangeCopy;
      std::__deque_iterator<_MNRouteConvergencePoint,_MNRouteConvergencePoint*,_MNRouteConvergencePoint&,_MNRouteConvergencePoint**,long,42l>::operator+=[abi:ne200100](&v638, v18 - 1);
      v97 = v638.n128_u64[1];
      v98 = v9 - *andRoute;
      v99 = v98 / 96;
      if (v98 < 193)
      {
        v100 = andRoute[-((43 - v99) / 0x2AuLL)] + 96 * (41 - ((43 - v99) % 0x2AuLL));
      }

      else
      {
        v100 = andRoute[(v99 - 2) / 0x2AuLL] - 4032 * ((v99 - 2) / 0x2AuLL) + 96 * (v99 - 2);
      }

      v101 = *(v638.n128_u64[1] + 8);
      v102 = *(v96 + 8);
      if (v101 < v102 || v101 <= v102 && *(v638.n128_u64[1] + 88) == 1 && *(v96 + 88) != 1)
      {
        v103 = *(v100 + 8);
        if (v103 < v101 || v103 <= v101 && *(v100 + 88) == 1 && (*(v638.n128_u64[1] + 88) & 1) == 0)
        {
          v640 = *(v96 + 32);
          v641 = *(v96 + 48);
          *v642 = *(v96 + 64);
          *&v642[16] = *(v96 + 80);
          v638 = *v96;
          v639 = *(v96 + 16);
          v104 = *(v100 + 16);
          *v96 = *v100;
          *(v96 + 16) = v104;
          v106 = *(v100 + 48);
          v105 = *(v100 + 64);
          v107 = *(v100 + 32);
          *(v96 + 74) = *(v100 + 74);
          *(v96 + 48) = v106;
          *(v96 + 64) = v105;
          *(v96 + 32) = v107;
        }

        else
        {
          v640 = *(v96 + 32);
          v641 = *(v96 + 48);
          *v642 = *(v96 + 64);
          *&v642[16] = *(v96 + 80);
          v638 = *v96;
          v639 = *(v96 + 16);
          v137 = *(v97 + 16);
          *v96 = *v97;
          *(v96 + 16) = v137;
          v139 = *(v97 + 48);
          v138 = *(v97 + 64);
          v140 = *(v97 + 32);
          *(v96 + 74) = *(v97 + 74);
          *(v96 + 48) = v139;
          *(v96 + 64) = v138;
          *(v96 + 32) = v140;
          *(v97 + 64) = *v642;
          *(v97 + 74) = *&v642[10];
          *v97 = v638;
          *(v97 + 48) = v641;
          *(v97 + 32) = v640;
          *(v97 + 16) = v639;
          v141 = *(v100 + 8);
          v142 = *(v97 + 8);
          if (v141 >= v142 && (v141 > v142 || *(v100 + 88) != 1 || (*(v97 + 88) & 1) != 0))
          {
            goto LABEL_71;
          }

          v640 = *(v97 + 32);
          v641 = *(v97 + 48);
          *v642 = *(v97 + 64);
          *&v642[16] = *(v97 + 80);
          v638 = *v97;
          v639 = *(v97 + 16);
          v143 = *(v100 + 16);
          *v97 = *v100;
          *(v97 + 16) = v143;
          v145 = *(v100 + 48);
          v144 = *(v100 + 64);
          v146 = *(v100 + 32);
          *(v97 + 74) = *(v100 + 74);
          *(v97 + 48) = v145;
          *(v97 + 64) = v144;
          *(v97 + 32) = v146;
        }

        *(v100 + 64) = *v642;
        *(v100 + 74) = *&v642[10];
        *v100 = v638;
        *(v100 + 48) = v641;
        *(v100 + 32) = v640;
        *(v100 + 16) = v639;
      }

      else
      {
        v108 = *(v100 + 8);
        if (v108 < v101 || v108 <= v101 && *(v100 + 88) == 1 && (*(v638.n128_u64[1] + 88) & 1) == 0)
        {
          v640 = *(v638.n128_u64[1] + 32);
          v641 = *(v638.n128_u64[1] + 48);
          *v642 = *(v638.n128_u64[1] + 64);
          *&v642[16] = *(v638.n128_u64[1] + 80);
          v638 = *v638.n128_u64[1];
          v639 = *(v97 + 16);
          v109 = *(v100 + 16);
          *v97 = *v100;
          *(v97 + 16) = v109;
          v111 = *(v100 + 48);
          v110 = *(v100 + 64);
          v112 = *(v100 + 32);
          *(v97 + 74) = *(v100 + 74);
          *(v97 + 48) = v111;
          *(v97 + 64) = v110;
          *(v97 + 32) = v112;
          *(v100 + 64) = *v642;
          *(v100 + 74) = *&v642[10];
          *v100 = v638;
          *(v100 + 48) = v641;
          *(v100 + 32) = v640;
          *(v100 + 16) = v639;
          v113 = *(v97 + 8);
          v114 = *(v96 + 8);
          if (v113 < v114 || v113 <= v114 && *(v97 + 88) == 1 && (*(v96 + 88) & 1) == 0)
          {
            v640 = *(v96 + 32);
            v641 = *(v96 + 48);
            *v642 = *(v96 + 64);
            *&v642[16] = *(v96 + 80);
            v638 = *v96;
            v639 = *(v96 + 16);
            v115 = *(v97 + 16);
            *v96 = *v97;
            *(v96 + 16) = v115;
            v117 = *(v97 + 48);
            v116 = *(v97 + 64);
            v118 = *(v97 + 32);
            *(v96 + 74) = *(v97 + 74);
            *(v96 + 48) = v117;
            *(v96 + 64) = v116;
            *(v96 + 32) = v118;
            *(v97 + 64) = *v642;
            *(v97 + 74) = *&v642[10];
            *v97 = v638;
            *(v97 + 48) = v641;
            *(v97 + 32) = v640;
            *(v97 + 16) = v639;
          }
        }
      }

LABEL_71:
      v147 = rangeCopy - *route;
      v148 = v147 / 96;
      if (v147 < -191)
      {
        v149 = route[-((39 - v148) / 0x2AuLL)] + 96 * (41 - ((39 - v148) % 0x2AuLL));
      }

      else
      {
        v149 = route[(v148 + 2) / 0x2AuLL] - 4032 * ((v148 + 2) / 0x2AuLL) + 96 * (v148 + 2);
      }

      v638.n128_u64[0] = route;
      v638.n128_u64[1] = rangeCopy;
      std::__deque_iterator<_MNRouteConvergencePoint,_MNRouteConvergencePoint*,_MNRouteConvergencePoint&,_MNRouteConvergencePoint**,long,42l>::operator+=[abi:ne200100](&v638, v18 + 1);
      v150 = v638.n128_u64[1];
      v151 = v9 - *andRoute;
      v152 = v151 / 96;
      if (v151 < 289)
      {
        v153 = andRoute[-((44 - v152) / 0x2AuLL)] + 96 * (41 - ((44 - v152) % 0x2AuLL));
      }

      else
      {
        v153 = andRoute[(v152 - 3) / 0x2AuLL] - 4032 * ((v152 - 3) / 0x2AuLL) + 96 * (v152 - 3);
      }

      v154 = *(v638.n128_u64[1] + 8);
      v155 = *(v149 + 8);
      if (v154 < v155 || v154 <= v155 && *(v638.n128_u64[1] + 88) == 1 && *(v149 + 88) != 1)
      {
        v156 = *(v153 + 8);
        if (v156 < v154 || v156 <= v154 && *(v153 + 88) == 1 && (*(v638.n128_u64[1] + 88) & 1) == 0)
        {
          v640 = *(v149 + 32);
          v641 = *(v149 + 48);
          *v642 = *(v149 + 64);
          *&v642[16] = *(v149 + 80);
          v638 = *v149;
          v639 = *(v149 + 16);
          v157 = *(v153 + 16);
          *v149 = *v153;
          *(v149 + 16) = v157;
          v159 = *(v153 + 48);
          v158 = *(v153 + 64);
          v160 = *(v153 + 32);
          *(v149 + 74) = *(v153 + 74);
          *(v149 + 48) = v159;
          *(v149 + 64) = v158;
          *(v149 + 32) = v160;
        }

        else
        {
          v640 = *(v149 + 32);
          v641 = *(v149 + 48);
          *v642 = *(v149 + 64);
          *&v642[16] = *(v149 + 80);
          v638 = *v149;
          v639 = *(v149 + 16);
          v172 = *(v150 + 16);
          *v149 = *v150;
          *(v149 + 16) = v172;
          v174 = *(v150 + 48);
          v173 = *(v150 + 64);
          v175 = *(v150 + 32);
          *(v149 + 74) = *(v150 + 74);
          *(v149 + 48) = v174;
          *(v149 + 64) = v173;
          *(v149 + 32) = v175;
          *(v150 + 64) = *v642;
          *(v150 + 74) = *&v642[10];
          *v150 = v638;
          *(v150 + 48) = v641;
          *(v150 + 32) = v640;
          *(v150 + 16) = v639;
          v176 = *(v153 + 8);
          v177 = *(v150 + 8);
          if (v176 >= v177 && (v176 > v177 || *(v153 + 88) != 1 || (*(v150 + 88) & 1) != 0))
          {
            goto LABEL_92;
          }

          v640 = *(v150 + 32);
          v641 = *(v150 + 48);
          *v642 = *(v150 + 64);
          *&v642[16] = *(v150 + 80);
          v638 = *v150;
          v639 = *(v150 + 16);
          v178 = *(v153 + 16);
          *v150 = *v153;
          *(v150 + 16) = v178;
          v180 = *(v153 + 48);
          v179 = *(v153 + 64);
          v181 = *(v153 + 32);
          *(v150 + 74) = *(v153 + 74);
          *(v150 + 48) = v180;
          *(v150 + 64) = v179;
          *(v150 + 32) = v181;
        }

        *(v153 + 64) = *v642;
        *(v153 + 74) = *&v642[10];
        *v153 = v638;
        *(v153 + 48) = v641;
        *(v153 + 32) = v640;
        *(v153 + 16) = v639;
        goto LABEL_92;
      }

      v161 = *(v153 + 8);
      if (v161 < v154 || v161 <= v154 && *(v153 + 88) == 1 && (*(v638.n128_u64[1] + 88) & 1) == 0)
      {
        v640 = *(v638.n128_u64[1] + 32);
        v641 = *(v638.n128_u64[1] + 48);
        *v642 = *(v638.n128_u64[1] + 64);
        *&v642[16] = *(v638.n128_u64[1] + 80);
        v638 = *v638.n128_u64[1];
        v639 = *(v150 + 16);
        v162 = *(v153 + 16);
        *v150 = *v153;
        *(v150 + 16) = v162;
        v164 = *(v153 + 48);
        v163 = *(v153 + 64);
        v165 = *(v153 + 32);
        *(v150 + 74) = *(v153 + 74);
        *(v150 + 48) = v164;
        *(v150 + 64) = v163;
        *(v150 + 32) = v165;
        *(v153 + 64) = *v642;
        *(v153 + 74) = *&v642[10];
        *v153 = v638;
        *(v153 + 48) = v641;
        *(v153 + 32) = v640;
        *(v153 + 16) = v639;
        v166 = *(v150 + 8);
        v167 = *(v149 + 8);
        if (v166 < v167 || v166 <= v167 && *(v150 + 88) == 1 && (*(v149 + 88) & 1) == 0)
        {
          v640 = *(v149 + 32);
          v641 = *(v149 + 48);
          *v642 = *(v149 + 64);
          *&v642[16] = *(v149 + 80);
          v638 = *v149;
          v639 = *(v149 + 16);
          v168 = *(v150 + 16);
          *v149 = *v150;
          *(v149 + 16) = v168;
          v170 = *(v150 + 48);
          v169 = *(v150 + 64);
          v171 = *(v150 + 32);
          *(v149 + 74) = *(v150 + 74);
          *(v149 + 48) = v170;
          *(v149 + 64) = v169;
          *(v149 + 32) = v171;
          *(v150 + 64) = *v642;
          *(v150 + 74) = *&v642[10];
          *v150 = v638;
          *(v150 + 48) = v641;
          *(v150 + 32) = v640;
          *(v150 + 16) = v639;
        }
      }

LABEL_92:
      v638.n128_u64[0] = route;
      v638.n128_u64[1] = rangeCopy;
      std::__deque_iterator<_MNRouteConvergencePoint,_MNRouteConvergencePoint*,_MNRouteConvergencePoint&,_MNRouteConvergencePoint**,long,42l>::operator+=[abi:ne200100](&v638, v18 - 1);
      v182 = v638.n128_u64[1];
      v638.n128_u64[0] = route;
      v638.n128_u64[1] = rangeCopy;
      std::__deque_iterator<_MNRouteConvergencePoint,_MNRouteConvergencePoint*,_MNRouteConvergencePoint&,_MNRouteConvergencePoint**,long,42l>::operator+=[abi:ne200100](&v638, v18);
      v183 = v638.n128_u64[1];
      v638.n128_u64[0] = route;
      v638.n128_u64[1] = rangeCopy;
      std::__deque_iterator<_MNRouteConvergencePoint,_MNRouteConvergencePoint*,_MNRouteConvergencePoint&,_MNRouteConvergencePoint**,long,42l>::operator+=[abi:ne200100](&v638, v18 + 1);
      v184 = v638.n128_u64[1];
      v185 = *(v183 + 8);
      v186 = *(v182 + 8);
      if (v185 >= v186 && (v185 > v186 || *(v183 + 88) != 1 || *(v182 + 88) == 1))
      {
        v192 = *(v638.n128_u64[1] + 8);
        if (v192 < v185 || v192 <= v185 && *(v638.n128_u64[1] + 88) == 1 && (*(v183 + 88) & 1) == 0)
        {
          v640 = *(v183 + 32);
          v641 = *(v183 + 48);
          *v642 = *(v183 + 64);
          *&v642[16] = *(v183 + 80);
          v638 = *v183;
          v639 = *(v183 + 16);
          v193 = *(v184 + 16);
          *v183 = *v184;
          *(v183 + 16) = v193;
          v195 = *(v184 + 48);
          v194 = *(v184 + 64);
          v196 = *(v184 + 32);
          *(v183 + 74) = *(v184 + 74);
          *(v183 + 48) = v195;
          *(v183 + 64) = v194;
          *(v183 + 32) = v196;
          *(v184 + 64) = *v642;
          *(v184 + 74) = *&v642[10];
          *v184 = v638;
          *(v184 + 48) = v641;
          *(v184 + 32) = v640;
          *(v184 + 16) = v639;
          v197 = *(v183 + 8);
          v198 = *(v182 + 8);
          if (v197 < v198 || v197 <= v198 && *(v183 + 88) == 1 && (*(v182 + 88) & 1) == 0)
          {
            v640 = *(v182 + 32);
            v641 = *(v182 + 48);
            *v642 = *(v182 + 64);
            *&v642[16] = *(v182 + 80);
            v638 = *v182;
            v639 = *(v182 + 16);
            v199 = *(v183 + 16);
            *v182 = *v183;
            *(v182 + 16) = v199;
            v201 = *(v183 + 48);
            v200 = *(v183 + 64);
            v202 = *(v183 + 32);
            *(v182 + 74) = *(v183 + 74);
            *(v182 + 48) = v201;
            *(v182 + 64) = v200;
            *(v182 + 32) = v202;
            *(v183 + 64) = *v642;
            *(v183 + 74) = *&v642[10];
            *v183 = v638;
            *(v183 + 48) = v641;
            *(v183 + 32) = v640;
            *(v183 + 16) = v639;
          }
        }

        goto LABEL_107;
      }

      v187 = *(v638.n128_u64[1] + 8);
      if (v187 < v185 || v187 <= v185 && *(v638.n128_u64[1] + 88) == 1 && (*(v183 + 88) & 1) == 0)
      {
        v640 = *(v182 + 32);
        v641 = *(v182 + 48);
        *v642 = *(v182 + 64);
        *&v642[16] = *(v182 + 80);
        v638 = *v182;
        v639 = *(v182 + 16);
        v188 = *(v184 + 16);
        *v182 = *v184;
        *(v182 + 16) = v188;
        v190 = *(v184 + 48);
        v189 = *(v184 + 64);
        v191 = *(v184 + 32);
        *(v182 + 74) = *(v184 + 74);
        *(v182 + 48) = v190;
        *(v182 + 64) = v189;
        *(v182 + 32) = v191;
      }

      else
      {
        v640 = *(v182 + 32);
        v641 = *(v182 + 48);
        *v642 = *(v182 + 64);
        *&v642[16] = *(v182 + 80);
        v638 = *v182;
        v639 = *(v182 + 16);
        v203 = *(v183 + 16);
        *v182 = *v183;
        *(v182 + 16) = v203;
        v205 = *(v183 + 48);
        v204 = *(v183 + 64);
        v206 = *(v183 + 32);
        *(v182 + 74) = *(v183 + 74);
        *(v182 + 48) = v205;
        *(v182 + 64) = v204;
        *(v182 + 32) = v206;
        *(v183 + 64) = *v642;
        *(v183 + 74) = *&v642[10];
        *v183 = v638;
        *(v183 + 48) = v641;
        *(v183 + 32) = v640;
        *(v183 + 16) = v639;
        v207 = *(v184 + 8);
        v208 = *(v183 + 8);
        if (v207 >= v208 && (v207 > v208 || *(v184 + 88) != 1 || (*(v183 + 88) & 1) != 0))
        {
          goto LABEL_107;
        }

        v640 = *(v183 + 32);
        v641 = *(v183 + 48);
        *v642 = *(v183 + 64);
        *&v642[16] = *(v183 + 80);
        v638 = *v183;
        v639 = *(v183 + 16);
        v209 = *(v184 + 16);
        *v183 = *v184;
        *(v183 + 16) = v209;
        v211 = *(v184 + 48);
        v210 = *(v184 + 64);
        v212 = *(v184 + 32);
        *(v183 + 74) = *(v184 + 74);
        *(v183 + 48) = v211;
        *(v183 + 64) = v210;
        *(v183 + 32) = v212;
      }

      *(v184 + 64) = *v642;
      *(v184 + 74) = *&v642[10];
      *v184 = v638;
      *(v184 + 48) = v641;
      *(v184 + 32) = v640;
      *(v184 + 16) = v639;
LABEL_107:
      v638.n128_u64[0] = route;
      v638.n128_u64[1] = rangeCopy;
      std::__deque_iterator<_MNRouteConvergencePoint,_MNRouteConvergencePoint*,_MNRouteConvergencePoint&,_MNRouteConvergencePoint**,long,42l>::operator+=[abi:ne200100](&v638, v18);
      v213 = v638.n128_u64[1];
      v214 = *(rangeCopy + 16);
      v638 = *rangeCopy;
      v639 = v214;
      v215 = *(rangeCopy + 32);
      v216 = *(rangeCopy + 48);
      v217 = *(rangeCopy + 80);
      *v642 = *(rangeCopy + 64);
      *&v642[16] = v217;
      v640 = v215;
      v641 = v216;
      v219 = v213[3];
      v218 = v213[4];
      v220 = v213[2];
      *(rangeCopy + 74) = *(v213 + 74);
      *(rangeCopy + 48) = v219;
      *(rangeCopy + 64) = v218;
      *(rangeCopy + 32) = v220;
      v221 = v213[1];
      *rangeCopy = *v213;
      *(rangeCopy + 16) = v221;
      v213[3] = v641;
      v213[2] = v640;
      v213[4] = *v642;
      *(v213 + 74) = *&v642[10];
      *v213 = v638;
      v213[1] = v639;
      andRouteCopy6 = andRoute;
      goto LABEL_108;
    }

    v638.n128_u64[0] = route;
    v638.n128_u64[1] = rangeCopy;
    std::__deque_iterator<_MNRouteConvergencePoint,_MNRouteConvergencePoint*,_MNRouteConvergencePoint&,_MNRouteConvergencePoint**,long,42l>::operator+=[abi:ne200100](&v638, v16 >> 1);
    andRouteCopy6 = andRoute;
    v23 = v9 - *andRoute;
    v24 = v23 / 96;
    if (v23 < 97)
    {
      v25 = andRoute[-((42 - v24) / 0x2AuLL)] + 96 * (41 - ((42 - v24) % 0x2AuLL));
    }

    else
    {
      v25 = andRoute[(v24 - 1) / 0x2AuLL] - 4032 * ((v24 - 1) / 0x2AuLL) + 96 * (v24 - 1);
    }

    v38 = v638.n128_u64[1];
    v39 = *(rangeCopy + 8);
    v40 = *(v638.n128_u64[1] + 8);
    if (v39 < v40 || v39 <= v40 && *(rangeCopy + 88) == 1 && *(v638.n128_u64[1] + 88) != 1)
    {
      v41 = *(v25 + 8);
      if (v41 < v39 || v41 <= v39 && *(v25 + 88) == 1 && (*(rangeCopy + 88) & 1) == 0)
      {
        v640 = *(v638.n128_u64[1] + 32);
        v641 = *(v638.n128_u64[1] + 48);
        *v642 = *(v638.n128_u64[1] + 64);
        *&v642[16] = *(v638.n128_u64[1] + 80);
        v638 = *v638.n128_u64[1];
        v639 = *(v38 + 16);
        v42 = *(v25 + 16);
        *v38 = *v25;
        *(v38 + 16) = v42;
        v44 = *(v25 + 48);
        v43 = *(v25 + 64);
        v45 = *(v25 + 32);
        *(v38 + 74) = *(v25 + 74);
        *(v38 + 48) = v44;
        *(v38 + 64) = v43;
        *(v38 + 32) = v45;
        *(v25 + 64) = *v642;
        *(v25 + 74) = *&v642[10];
        *v25 = v638;
        *(v25 + 48) = v641;
        *(v25 + 32) = v640;
LABEL_64:
        *(v25 + 16) = v639;
        goto LABEL_108;
      }

      v640 = *(v638.n128_u64[1] + 32);
      v641 = *(v638.n128_u64[1] + 48);
      *v642 = *(v638.n128_u64[1] + 64);
      *&v642[16] = *(v638.n128_u64[1] + 80);
      v638 = *v638.n128_u64[1];
      v639 = *(v38 + 16);
      v119 = *(rangeCopy + 16);
      *v38 = *rangeCopy;
      *(v38 + 16) = v119;
      v121 = *(rangeCopy + 48);
      v120 = *(rangeCopy + 64);
      v122 = *(rangeCopy + 32);
      *(v38 + 74) = *(rangeCopy + 74);
      *(v38 + 48) = v121;
      *(v38 + 64) = v120;
      *(v38 + 32) = v122;
      v123 = v639;
      *rangeCopy = v638;
      *(rangeCopy + 16) = v123;
      v124 = v640;
      v125 = v641;
      v126 = *v642;
      *(rangeCopy + 74) = *&v642[10];
      *(rangeCopy + 48) = v125;
      *(rangeCopy + 64) = v126;
      *(rangeCopy + 32) = v124;
      v127 = *(v25 + 8);
      v128 = *(rangeCopy + 8);
      if (v127 < v128 || v127 <= v128 && *(v25 + 88) == 1 && (*(rangeCopy + 88) & 1) == 0)
      {
        v129 = *(rangeCopy + 16);
        v638 = *rangeCopy;
        v639 = v129;
        v130 = *(rangeCopy + 32);
        v131 = *(rangeCopy + 48);
        v132 = *(rangeCopy + 80);
        *v642 = *(rangeCopy + 64);
        *&v642[16] = v132;
        v640 = v130;
        v641 = v131;
        v134 = *(v25 + 48);
        v133 = *(v25 + 64);
        v135 = *(v25 + 32);
        *(rangeCopy + 74) = *(v25 + 74);
        *(rangeCopy + 48) = v134;
        *(rangeCopy + 64) = v133;
        *(rangeCopy + 32) = v135;
        v136 = *(v25 + 16);
        *rangeCopy = *v25;
        *(rangeCopy + 16) = v136;
        *(v25 + 48) = v641;
        *(v25 + 32) = v640;
        *(v25 + 64) = *v642;
        *(v25 + 74) = *&v642[10];
        *v25 = v638;
        goto LABEL_64;
      }
    }

    else
    {
      v61 = *(v25 + 8);
      if (v61 < v39 || v61 <= v39 && *(v25 + 88) == 1 && (*(rangeCopy + 88) & 1) == 0)
      {
        v62 = *(rangeCopy + 16);
        v638 = *rangeCopy;
        v639 = v62;
        v63 = *(rangeCopy + 32);
        v64 = *(rangeCopy + 48);
        v65 = *(rangeCopy + 80);
        *v642 = *(rangeCopy + 64);
        *&v642[16] = v65;
        v640 = v63;
        v641 = v64;
        v67 = *(v25 + 48);
        v66 = *(v25 + 64);
        v68 = *(v25 + 32);
        *(rangeCopy + 74) = *(v25 + 74);
        *(rangeCopy + 48) = v67;
        *(rangeCopy + 64) = v66;
        *(rangeCopy + 32) = v68;
        v69 = *(v25 + 16);
        *rangeCopy = *v25;
        *(rangeCopy + 16) = v69;
        *(v25 + 48) = v641;
        *(v25 + 32) = v640;
        *(v25 + 64) = *v642;
        *(v25 + 74) = *&v642[10];
        *v25 = v638;
        *(v25 + 16) = v639;
        v70 = *(rangeCopy + 8);
        v71 = *(v38 + 8);
        if (v70 < v71 || v70 <= v71 && *(rangeCopy + 88) == 1 && (*(v38 + 88) & 1) == 0)
        {
          v640 = *(v38 + 32);
          v641 = *(v38 + 48);
          *v642 = *(v38 + 64);
          *&v642[16] = *(v38 + 80);
          v638 = *v38;
          v639 = *(v38 + 16);
          v72 = *(rangeCopy + 16);
          *v38 = *rangeCopy;
          *(v38 + 16) = v72;
          v74 = *(rangeCopy + 48);
          v73 = *(rangeCopy + 64);
          v75 = *(rangeCopy + 32);
          *(v38 + 74) = *(rangeCopy + 74);
          *(v38 + 48) = v74;
          *(v38 + 64) = v73;
          *(v38 + 32) = v75;
          v76 = v639;
          *rangeCopy = v638;
          *(rangeCopy + 16) = v76;
          v77 = v640;
          v78 = v641;
          v79 = *v642;
          *(rangeCopy + 74) = *&v642[10];
          *(rangeCopy + 48) = v78;
          *(rangeCopy + 64) = v79;
          *(rangeCopy + 32) = v77;
        }
      }
    }

LABEL_108:
    --coordinate;
    if (routeCoordinate)
    {
      v222 = *(rangeCopy + 8);
    }

    else
    {
      v223 = rangeCopy - *route;
      v224 = v223 / 96;
      if (v223 < 97)
      {
        v225 = route[-((42 - v224) / 0x2AuLL)] + 96 * (41 - ((42 - v224) % 0x2AuLL));
      }

      else
      {
        v225 = route[(v224 - 1) / 0x2AuLL] - 4032 * ((v224 - 1) / 0x2AuLL) + 96 * (v224 - 1);
      }

      v226 = *(v225 + 8);
      v222 = *(rangeCopy + 8);
      if (v226 >= v222 && (v226 > v222 || *(v225 + 88) != 1 || *(rangeCopy + 88) == 1))
      {
        v287 = *rangeCopy;
        v288 = *(rangeCopy + 32);
        v289 = *(rangeCopy + 48);
        v290 = *(rangeCopy + 64);
        v637 = *(rangeCopy + 80);
        v636 = v290;
        v291 = *(rangeCopy + 16);
        v634 = v288;
        v635 = v289;
        v633 = v291;
        v292 = *andRouteCopy6;
        v293 = v9 - *andRouteCopy6;
        v294 = v293 / 96;
        if (v293 < 97)
        {
          v295 = andRouteCopy6[-((42 - v294) / 0x2AuLL)] + 96 * (41 - ((42 - v294) % 0x2AuLL));
        }

        else
        {
          v295 = andRouteCopy6[(v294 - 1) / 0x2AuLL] - 4032 * ((v294 - 1) / 0x2AuLL) + 96 * (v294 - 1);
        }

        v299 = *(rangeCopy + 88);
        v300 = *(rangeCopy + 89);
        v301 = *(v295 + 8);
        if (v222 >= v301)
        {
          v302 = (v222 > v301) & v299;
          if (v222 <= v301 && (*(rangeCopy + 88) & 1) != 0)
          {
            v302 = 1;
            if ((*(v295 + 88) & 1) == 0)
            {
              goto LABEL_219;
            }
          }

          v303 = *route;
          v297 = rangeCopy;
          do
          {
            v297 += 96;
            if (v297 - v303 == 4032)
            {
              v306 = route[1];
              ++route;
              v303 = v306;
              v297 = v306;
            }

            if (route >= andRouteCopy6 && (route != andRouteCopy6 || v297 >= v9))
            {
              break;
            }

            v307 = *(v297 + 8);
            if (v222 < v307)
            {
              break;
            }
          }

          while (((v222 <= v307) & v302) != 1 || (*(v297 + 88) & 1) != 0);
        }

        else
        {
          v302 = *(rangeCopy + 88);
LABEL_219:
          v303 = *route;
          v297 = rangeCopy;
          do
          {
            v297 += 96;
            if (v297 - v303 == 4032)
            {
              v304 = route[1];
              ++route;
              v303 = v304;
              v297 = v304;
            }

            v305 = *(v297 + 8);
          }

          while (v222 >= v305 && (((v222 <= v305) & v302) != 1 || (*(v297 + 88) & 1) != 0));
        }

        if (route < andRouteCopy6 || route == andRouteCopy6 && v297 < v9)
        {
          v308 = andRouteCopy6;
          v309 = v9;
          while (1)
          {
            do
            {
              if (v309 == v292)
              {
                v311 = *--v308;
                v292 = v311;
                v310 = v311 + 504;
              }

              else
              {
                v310 = v309;
              }

              v309 = v310 - 12;
              v312 = *(v310 - 11);
            }

            while (v222 < v312);
            if (v222 > v312 || (*(rangeCopy + 88) & 1) == 0)
            {
              break;
            }

            if (*(v310 - 8) == 1)
            {
              v313 = 1;
              goto LABEL_305;
            }
          }

          v313 = *(rangeCopy + 88);
        }

        else
        {
          v313 = *(rangeCopy + 88);
          v308 = andRouteCopy6;
          v309 = v9;
        }

LABEL_305:
        while (route < v308 || route == v308 && v297 < v309)
        {
          v314 = *(v297 + 16);
          v638 = *v297;
          v639 = v314;
          v315 = *(v297 + 32);
          v316 = *(v297 + 48);
          v317 = *(v297 + 80);
          *v642 = *(v297 + 64);
          *&v642[16] = v317;
          v640 = v315;
          v641 = v316;
          v319 = *(v309 + 3);
          v318 = *(v309 + 4);
          v320 = *(v309 + 2);
          *(v297 + 74) = *(v309 + 74);
          *(v297 + 48) = v319;
          *(v297 + 64) = v318;
          *(v297 + 32) = v320;
          v321 = *(v309 + 1);
          *v297 = *v309;
          *(v297 + 16) = v321;
          v322 = v639;
          *v309 = v638;
          *(v309 + 1) = v322;
          v323 = v640;
          v324 = v641;
          v325 = *v642;
          *(v309 + 74) = *&v642[10];
          *(v309 + 3) = v324;
          *(v309 + 4) = v325;
          *(v309 + 2) = v323;
          v303 = *route;
          do
          {
            v297 += 96;
            if (v297 - v303 == 4032)
            {
              v326 = route[1];
              ++route;
              v303 = v326;
              v297 = v326;
            }

            v327 = *(v297 + 8);
          }

          while (v222 >= v327 && (((v222 <= v327) & v313) != 1 || (*(v297 + 88) & 1) != 0));
          v328 = *v308;
          do
          {
            if (v309 == v328)
            {
              v330 = *--v308;
              v328 = v330;
              v329 = v330 + 504;
            }

            else
            {
              v329 = v309;
            }

            v309 = v329 - 12;
            v331 = *(v329 - 11);
          }

          while (v222 < v331 || ((v222 <= v331) & v313) == 1 && (*(v329 - 1) & 1) == 0);
        }

        v332 = v297 - v303;
        v333 = ((v297 - v303) * 0x2AAAAAAAAAAAAAABLL) >> 64;
        v334 = (v333 >> 4) + (v333 >> 63);
        if (v332 < 97)
        {
          v335 = route[-((42 - v334) / 0x2AuLL)] + 96 * (41 - ((42 - v334) % 0x2AuLL));
        }

        else
        {
          v335 = route[(v334 - 1) / 0x2AuLL] - 4032 * ((v334 - 1) / 0x2AuLL) + 96 * (v334 - 1);
        }

        if (v335 != rangeCopy)
        {
          v336 = *(v335 + 16);
          *rangeCopy = *v335;
          *(rangeCopy + 16) = v336;
          v337 = *(v335 + 32);
          v338 = *(v335 + 48);
          v339 = *(v335 + 64);
          *(rangeCopy + 74) = *(v335 + 74);
          *(rangeCopy + 48) = v338;
          *(rangeCopy + 64) = v339;
          *(rangeCopy + 32) = v337;
        }

        routeCoordinate = 0;
        *v335 = v287;
        *(v335 + 8) = v222;
        v340 = v633;
        *(v335 + 32) = v634;
        *(v335 + 48) = v635;
        *(v335 + 64) = v636;
        *(v335 + 80) = v637;
        *(v335 + 16) = v340;
        *(v335 + 88) = v299;
        *(v335 + 89) = v300;
        goto LABEL_314;
      }
    }

    v227 = *rangeCopy;
    v228 = *(rangeCopy + 32);
    v229 = *(rangeCopy + 48);
    v230 = *(rangeCopy + 64);
    v637 = *(rangeCopy + 80);
    v636 = v230;
    v231 = *(rangeCopy + 16);
    v634 = v228;
    v635 = v229;
    v633 = v231;
    v232 = *(rangeCopy + 88);
    v233 = *(rangeCopy + 89);
    v234 = *route;
    routeCopy3 = route;
    v236 = rangeCopy;
    do
    {
      v236 += 96;
      if (v236 - v234 == 4032)
      {
        v237 = routeCopy3[1];
        ++routeCopy3;
        v234 = v237;
        v236 = v237;
      }

      v238 = *(v236 + 8);
    }

    while (v238 < v222 || v238 <= v222 && *(v236 + 88) == 1 && (*(rangeCopy + 88) & 1) == 0);
    v239 = (v236 - v234) / 96;
    if ((v236 - v234) < 97)
    {
      v240 = routeCopy3[-((42 - v239) / 0x2AuLL)] + 96 * (41 - ((42 - v239) % 0x2AuLL));
    }

    else
    {
      v240 = routeCopy3[(v239 - 1) / 0x2AuLL] - 4032 * ((v239 - 1) / 0x2AuLL) + 96 * (v239 - 1);
    }

    v241 = andRouteCopy6;
    v242 = v9;
    if (v240 == rangeCopy)
    {
      do
      {
        if (routeCopy3 >= v241 && (routeCopy3 != v241 || v236 >= v242))
        {
          break;
        }

        if (v242 == *v241)
        {
          v248 = *--v241;
          v247 = (v248 + 4032);
        }

        else
        {
          v247 = v242;
        }

        v242 = v247 - 12;
        v249 = *(v247 - 11);
        if (v249 < v222)
        {
          break;
        }
      }

      while (v249 > v222 || *(v247 - 8) != 1 || (*(rangeCopy + 88) & 1) != 0);
    }

    else
    {
      v243 = *andRouteCopy6;
      v241 = andRouteCopy6;
      v242 = v9;
      do
      {
        if (v242 == v243)
        {
          v245 = *--v241;
          v243 = v245;
          v244 = v245 + 504;
        }

        else
        {
          v244 = v242;
        }

        v242 = v244 - 12;
        v246 = *(v244 - 11);
      }

      while (v246 >= v222 && (v246 > v222 || *(v244 - 8) != 1 || (*(rangeCopy + 88) & 1) != 0));
    }

    v250 = routeCopy3 >= v241 && (routeCopy3 != v241 || v236 >= v242);
    while (routeCopy3 < v241 || routeCopy3 == v241 && v236 < v242)
    {
      v252 = *(v236 + 16);
      v638 = *v236;
      v639 = v252;
      v253 = *(v236 + 32);
      v254 = *(v236 + 48);
      v255 = *(v236 + 80);
      *v642 = *(v236 + 64);
      *&v642[16] = v255;
      v640 = v253;
      v641 = v254;
      v257 = *(v242 + 3);
      v256 = *(v242 + 4);
      v258 = *(v242 + 2);
      *(v236 + 74) = *(v242 + 74);
      *(v236 + 48) = v257;
      *(v236 + 64) = v256;
      *(v236 + 32) = v258;
      v259 = *(v242 + 1);
      *v236 = *v242;
      *(v236 + 16) = v259;
      v260 = v639;
      *v242 = v638;
      *(v242 + 1) = v260;
      v261 = v640;
      v262 = v641;
      v263 = *v642;
      *(v242 + 74) = *&v642[10];
      *(v242 + 3) = v262;
      *(v242 + 4) = v263;
      *(v242 + 2) = v261;
      v234 = *routeCopy3;
      do
      {
        v236 += 96;
        if (v236 - v234 == 4032)
        {
          v264 = routeCopy3[1];
          ++routeCopy3;
          v234 = v264;
          v236 = v264;
        }

        v265 = *(v236 + 8);
      }

      while (v265 < v222 || v265 <= v222 && *(v236 + 88) == 1 && (v232 & 1) == 0);
      v266 = *v241;
      do
      {
        if (v242 == v266)
        {
          v268 = *--v241;
          v266 = v268;
          v267 = v268 + 504;
        }

        else
        {
          v267 = v242;
        }

        v242 = v267 - 12;
        v269 = *(v267 - 11);
      }

      while (v269 >= v222 && (v269 > v222 || *(v267 - 8) != 1 || (v232 & 1) != 0));
    }

    v270 = v236 - v234;
    v271 = v270 / 96;
    if (v270 < 97)
    {
      v275 = 42 - v271;
      v273 = &routeCopy3[-(v275 / 0x2A)];
      v274 = *v273 + 96 * (41 - (v275 % 0x2A));
    }

    else
    {
      v272 = v271 - 1;
      v273 = &routeCopy3[v272 / 0x2A];
      v274 = *v273 - 4032 * (v272 / 0x2A) + 96 * v272;
    }

    if (v274 != rangeCopy)
    {
      v276 = *(v274 + 16);
      *rangeCopy = *v274;
      *(rangeCopy + 16) = v276;
      v277 = *(v274 + 32);
      v278 = *(v274 + 48);
      v279 = *(v274 + 64);
      *(rangeCopy + 74) = *(v274 + 74);
      *(rangeCopy + 48) = v278;
      *(rangeCopy + 64) = v279;
      *(rangeCopy + 32) = v277;
    }

    *v274 = v227;
    *(v274 + 8) = v222;
    v280 = v633;
    *(v274 + 32) = v634;
    *(v274 + 48) = v635;
    *(v274 + 64) = v636;
    *(v274 + 80) = v637;
    *(v274 + 16) = v280;
    *(v274 + 88) = v232;
    *(v274 + 89) = v233;
    if (!v250)
    {
      goto LABEL_191;
    }

    v281 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[MNRouteDivergenceFinder _findFirstConvergenceBetweenRoute:range:andRoute:range:outRouteCoordinate:outRouteCoordinate:]::$_5 &,std::__deque_iterator<_MNRouteConvergencePoint,_MNRouteConvergencePoint*,_MNRouteConvergencePoint&,_MNRouteConvergencePoint**,long,42l>>(route, rangeCopy, v273, v274);
    v282 = v274 - *v273;
    v283 = v282 / 96;
    if (v282 < -95)
    {
      v296 = 40 - v283;
      v285 = &v273[-(v296 / 0x2A)];
      v286 = *v285 + 96 * (41 - (v296 % 0x2A));
    }

    else
    {
      v284 = v283 + 1;
      v285 = &v273[v284 / 0x2A];
      v286 = *v285 - 4032 * (v284 / 0x2A) + 96 * v284;
    }

    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[MNRouteDivergenceFinder _findFirstConvergenceBetweenRoute:range:andRoute:range:outRouteCoordinate:outRouteCoordinate:]::$_5 &,std::__deque_iterator<_MNRouteConvergencePoint,_MNRouteConvergencePoint*,_MNRouteConvergencePoint&,_MNRouteConvergencePoint**,long,42l>>(v285, v286, andRoute, v9))
    {
      v297 = rangeCopy;
      v9 = v274;
      andRoute = v273;
      if (v281)
      {
        goto LABEL_2;
      }

      goto LABEL_314;
    }

    if (v281)
    {
      v297 = v274 + 96;
      if (v274 + 96 - *v273 != 4032)
      {
        goto LABEL_195;
      }
    }

    else
    {
LABEL_191:
      std::__introsort<std::_ClassicAlgPolicy,[MNRouteDivergenceFinder _findFirstConvergenceBetweenRoute:range:andRoute:range:outRouteCoordinate:outRouteCoordinate:]::$_5 &,std::__deque_iterator<_MNRouteConvergencePoint,_MNRouteConvergencePoint*,_MNRouteConvergencePoint&,_MNRouteConvergencePoint**,long,42l>,false>(route, rangeCopy, v273, v274, coordinate, routeCoordinate & 1);
      v297 = v274 + 96;
      if (v274 + 96 - *v273 != 4032)
      {
        routeCoordinate = 0;
        goto LABEL_195;
      }

      routeCoordinate = 0;
    }

    v298 = v273[1];
    ++v273;
    v297 = v298;
LABEL_195:
    route = v273;
LABEL_314:
    rangeCopy = v297;
    if (v9 == v297)
    {
      goto LABEL_2;
    }
  }

  v344 = v15 / 96;
  if (v15 < -95)
  {
    v345 = route[-((40 - v344) / 0x2AuLL)] + 96 * (41 - ((40 - v344) % 0x2AuLL));
  }

  else
  {
    v345 = route[(v344 + 1) / 0x2AuLL] - 4032 * ((v344 + 1) / 0x2AuLL) + 96 * (v344 + 1);
  }

  if (v9 == v13)
  {
    v9 = *(andRoute - 1) + 4032;
  }

  v343 = (v9 - 96);
  v482 = *(v345 + 8);
  v483 = *(rangeCopy + 8);
  if (v482 < v483 || v482 <= v483 && *(v345 + 88) == 1 && *(rangeCopy + 88) != 1)
  {
    v484 = *(v9 - 88);
    if (v484 < v482 || v484 <= v482 && *(v9 - 8) == 1 && (*(v345 + 88) & 1) == 0)
    {
LABEL_446:
      v485 = *(rangeCopy + 16);
      v638 = *rangeCopy;
      v639 = v485;
      v486 = *(rangeCopy + 32);
      v487 = *(rangeCopy + 48);
      v488 = *(rangeCopy + 80);
      *v642 = *(rangeCopy + 64);
      *&v642[16] = v488;
      v640 = v486;
      v641 = v487;
      v490 = v343[3];
      v489 = v343[4];
      v491 = v343[2];
      *(rangeCopy + 74) = *(v343 + 74);
      *(rangeCopy + 48) = v490;
      *(rangeCopy + 64) = v489;
      *(rangeCopy + 32) = v491;
      v492 = v343[1];
      *rangeCopy = *v343;
      *(rangeCopy + 16) = v492;
    }

    else
    {
      v579 = *(rangeCopy + 16);
      v638 = *rangeCopy;
      v639 = v579;
      v580 = *(rangeCopy + 32);
      v581 = *(rangeCopy + 48);
      v582 = *(rangeCopy + 80);
      *v642 = *(rangeCopy + 64);
      *&v642[16] = v582;
      v640 = v580;
      v641 = v581;
      v584 = *(v345 + 48);
      v583 = *(v345 + 64);
      v585 = *(v345 + 32);
      *(rangeCopy + 74) = *(v345 + 74);
      *(rangeCopy + 48) = v584;
      *(rangeCopy + 64) = v583;
      *(rangeCopy + 32) = v585;
      v586 = *(v345 + 16);
      *rangeCopy = *v345;
      *(rangeCopy + 16) = v586;
      *(v345 + 48) = v641;
      *(v345 + 32) = v640;
      *(v345 + 64) = *v642;
      *(v345 + 74) = *&v642[10];
      *v345 = v638;
      *(v345 + 16) = v639;
      v587 = *(v9 - 88);
      v588 = *(v345 + 8);
      if (v587 >= v588 && (v587 > v588 || *(v9 - 8) != 1 || (*(v345 + 88) & 1) != 0))
      {
        goto LABEL_2;
      }

      v640 = *(v345 + 32);
      v641 = *(v345 + 48);
      *v642 = *(v345 + 64);
      *&v642[16] = *(v345 + 80);
      v638 = *v345;
      v639 = *(v345 + 16);
      v589 = *(v9 - 80);
      *v345 = *v343;
      *(v345 + 16) = v589;
      v591 = *(v9 - 48);
      v590 = *(v9 - 32);
      v592 = *(v9 - 64);
      *(v345 + 74) = *(v9 - 22);
      *(v345 + 48) = v591;
      *(v345 + 64) = v590;
      *(v345 + 32) = v592;
    }

    v493 = v639;
    *v343 = v638;
    v343[1] = v493;
    v494 = v640;
    v495 = v641;
    v496 = *v642;
    *(v343 + 74) = *&v642[10];
    v343[3] = v495;
    v343[4] = v496;
    v343[2] = v494;
    goto LABEL_2;
  }

  v497 = *(v9 - 88);
  if (v497 < v482 || v497 <= v482 && *(v9 - 8) == 1 && (*(v345 + 88) & 1) == 0)
  {
    v640 = *(v345 + 32);
    v641 = *(v345 + 48);
    *v642 = *(v345 + 64);
    *&v642[16] = *(v345 + 80);
    v638 = *v345;
    v639 = *(v345 + 16);
    v498 = *(v9 - 80);
    *v345 = *v343;
    *(v345 + 16) = v498;
    v500 = *(v9 - 48);
    v499 = *(v9 - 32);
    v501 = *(v9 - 64);
    *(v345 + 74) = *(v9 - 22);
    *(v345 + 48) = v500;
    *(v345 + 64) = v499;
    *(v345 + 32) = v501;
    v502 = v639;
    *v343 = v638;
    *(v9 - 80) = v502;
    v503 = v640;
    v504 = v641;
    v505 = *v642;
    *(v9 - 22) = *&v642[10];
    *(v9 - 48) = v504;
    *(v9 - 32) = v505;
    *(v9 - 64) = v503;
    v506 = *(v345 + 8);
    v507 = *(rangeCopy + 8);
    if (v506 < v507 || v506 <= v507 && *(v345 + 88) == 1 && (*(rangeCopy + 88) & 1) == 0)
    {
      v508 = *(rangeCopy + 16);
      v638 = *rangeCopy;
      v639 = v508;
      v509 = *(rangeCopy + 32);
      v510 = *(rangeCopy + 48);
      v511 = *(rangeCopy + 80);
      *v642 = *(rangeCopy + 64);
      *&v642[16] = v511;
      v640 = v509;
      v641 = v510;
      v513 = *(v345 + 48);
      v512 = *(v345 + 64);
      v514 = *(v345 + 32);
      *(rangeCopy + 74) = *(v345 + 74);
      *(rangeCopy + 48) = v513;
      *(rangeCopy + 64) = v512;
      *(rangeCopy + 32) = v514;
      v515 = *(v345 + 16);
      *rangeCopy = *v345;
      *(rangeCopy + 16) = v515;
      *(v345 + 48) = v641;
      *(v345 + 32) = v640;
      *(v345 + 64) = *v642;
      *(v345 + 74) = *&v642[10];
      *v345 = v638;
      *(v345 + 16) = v639;
    }
  }

LABEL_2:
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_findFirstConvergenceBetweenRoute:(id)route fromRouteCoordinate:(PolylineCoordinate)coordinate andRoute:(id)andRoute fromRouteCoordinate:(PolylineCoordinate)routeCoordinate outRouteCoordinate:(PolylineCoordinate *)outRouteCoordinate outRouteCoordinate:(PolylineCoordinate *)a8
{
  v85 = *MEMORY[0x1E69E9840];
  routeCopy = route;
  andRouteCopy = andRoute;
  v13 = MNGetMNRouteDivergenceLog();
  selfCopy = self;
  v14 = os_signpost_id_make_with_pointer(v13, self);

  v15 = MNGetMNRouteDivergenceLog();
  v16 = v15;
  v62 = v14 - 1;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    v79[0] = routeCopy;
    v79[1] = andRouteCopy;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:2];
    v18 = [(MNRouteDivergenceFinder *)selfCopy _routesArrayIdentifierStrings:v17];
    v19 = GEOPolylineCoordinateAsShortString();
    v20 = GEOPolylineCoordinateAsShortString();
    *buf = 138412802;
    *&buf[4] = v18;
    v81 = 2112;
    v82 = v19;
    v83 = 2112;
    v84 = v20;
    _os_signpost_emit_with_name_impl(&dword_1D311E000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "_findFirstConvergenceBetweenRoute", "%@ [%@] [%@]", buf, 0x20u);
  }

  v21 = MEMORY[0x1E69A1918];
  *outRouteCoordinate = *MEMORY[0x1E69A1918];
  *a8 = *v21;
  if ([routeCopy pointCount] && objc_msgSend(andRouteCopy, "pointCount"))
  {
    [routeCopy _navigation_allLeafBoundingSections];
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v22 = v74 = 0u;
    v61 = v22;
    v23 = [v22 countByEnumeratingWithState:&v73 objects:v78 count:16];
    if (v23)
    {
      v24 = *v74;
      spid = v14;
      outRouteCoordinateCopy = outRouteCoordinate;
      v57 = a8;
      v55 = *v74;
      do
      {
        v25 = 0;
        v58 = v23;
        do
        {
          if (*v74 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = *(*(&v73 + 1) + 8 * v25);
          [v26 range];
          if (v27 >= coordinate.index)
          {
            *&v29 = v28;
            if (v27 != coordinate.index || v28 >= coordinate.offset)
            {
              [routeCopy pointAt:{objc_msgSend(v26, "range", v29)}];
              GEOMapPointsPerMeterAtLatitude();
              v60 = v25;
              v32 = [andRouteCopy _navigation_leafBoundingSectionsIntersectingSection:v26 paddingMapPoints:selfCopy->_toleranceMeters * v31];
              v71 = 0u;
              v72 = 0u;
              v69 = 0u;
              v70 = 0u;
              v33 = v32;
              v34 = [v33 countByEnumeratingWithState:&v69 objects:v77 count:16];
              if (v34)
              {
                v35 = *v70;
                while (2)
                {
                  for (i = 0; i != v34; ++i)
                  {
                    if (*v70 != v35)
                    {
                      objc_enumerationMutation(v33);
                    }

                    v37 = *(*(&v69 + 1) + 8 * i);
                    [v37 range];
                    if (v38 >= routeCoordinate.index)
                    {
                      *&v40 = v39;
                      if (v38 != routeCoordinate.index || v39 >= routeCoordinate.offset)
                      {
                        range = [v26 range];
                        v44 = v43;
                        coordinateCopy = coordinate;
                        if (!GEOPolylineCoordinateIsABeforeB())
                        {
                          coordinateCopy = range;
                        }

                        range2 = [v37 range];
                        v48 = v47;
                        v49 = GEOPolylineCoordinateIsABeforeB() ? routeCoordinate : range2;
                        *buf = 0xBF80000000000000;
                        v68 = 0xBF80000000000000;
                        [(MNRouteDivergenceFinder *)selfCopy _findFirstConvergenceBetweenRoute:routeCopy range:coordinateCopy andRoute:v44 range:andRouteCopy outRouteCoordinate:v49 outRouteCoordinate:v48, buf, &v68];
                        if (GEOPolylineCoordinateIsValid())
                        {
                          if (GEOPolylineCoordinateIsValid())
                          {
                            *outRouteCoordinateCopy = *buf;
                            *v57 = v68;
                            v52 = MNGetMNRouteDivergenceLog();
                            v53 = v52;
                            if (v62 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v52))
                            {
                              *v67 = 0;
                              _os_signpost_emit_with_name_impl(&dword_1D311E000, v53, OS_SIGNPOST_INTERVAL_END, spid, "_findFirstConvergenceBetweenRoute", "Convergence found", v67, 2u);
                            }

                            v22 = v61;
                            v51 = v61;
                            goto LABEL_45;
                          }
                        }
                      }
                    }
                  }

                  v34 = [v33 countByEnumeratingWithState:&v69 objects:v77 count:16];
                  if (v34)
                  {
                    continue;
                  }

                  break;
                }
              }

              v14 = spid;
              v22 = v61;

              v23 = v58;
              v24 = v55;
              v25 = v60;
            }
          }

          ++v25;
        }

        while (v25 != v23);
        v23 = [v22 countByEnumeratingWithState:&v73 objects:v78 count:16];
      }

      while (v23);
    }

    v50 = MNGetMNRouteDivergenceLog();
    v51 = v50;
    if (v62 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v50))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v51, OS_SIGNPOST_INTERVAL_END, v14, "_findFirstConvergenceBetweenRoute", "Convergence not found", buf, 2u);
    }

LABEL_45:
  }

  v54 = *MEMORY[0x1E69E9840];
}

- (BOOL)_pathsDivergeBetweenRoute:(id)route from:(PolylineCoordinate)from andRoute:(id)andRoute from:(PolylineCoordinate)a6 withinDistance:(double)distance
{
  routeCopy = route;
  andRouteCopy = andRoute;
  v16 = 0xBF80000000000000;
  v17 = 0xBF80000000000000;
  -[MNRouteDivergenceFinder _findFirstDivergenceBetweenRoute:range:andRoute:range:outRouteCoordinate:outRouteCoordinate:](self, "_findFirstDivergenceBetweenRoute:range:andRoute:range:outRouteCoordinate:outRouteCoordinate:", routeCopy, from, [routeCopy routeCoordinateForDistance:from afterRouteCoordinate:distance], andRouteCopy, a6, objc_msgSend(andRouteCopy, "routeCoordinateForDistance:afterRouteCoordinate:", a6, distance), &v17, &v16);
  if (GEOPolylineCoordinateIsValid())
  {
    IsValid = 1;
  }

  else
  {
    IsValid = GEOPolylineCoordinateIsValid();
  }

  return IsValid;
}

- (void)_findFirstDivergenceBetweenRoute:(id)route range:(GEOPolylineCoordinateRange)range andRoute:(id)andRoute range:(GEOPolylineCoordinateRange)a6 outRouteCoordinate:(PolylineCoordinate *)coordinate outRouteCoordinate:(PolylineCoordinate *)routeCoordinate
{
  end = a6.end;
  start = a6.start;
  v79 = range.start;
  v10 = range.end;
  v90 = *MEMORY[0x1E69E9840];
  routeCopy = route;
  andRouteCopy = andRoute;
  v12 = MNGetMNRouteDivergenceLog();
  selfCopy = self;
  v13 = os_signpost_id_make_with_pointer(v12, self);

  v14 = MNGetMNRouteDivergenceLog();
  v15 = v14;
  spid = v13;
  v76 = v13 - 1;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    v83[0] = routeCopy;
    v83[1] = andRouteCopy;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:2];
    v17 = [(MNRouteDivergenceFinder *)selfCopy _routesArrayIdentifierStrings:v16];
    v18 = GEOPolylineCoordinateRangeAsString();
    v19 = GEOPolylineCoordinateRangeAsString();
    *buf = 138412802;
    v85 = v17;
    v86 = 2112;
    v87 = v18;
    v88 = 2112;
    v89 = v19;
    _os_signpost_emit_with_name_impl(&dword_1D311E000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "_findFirstDivergenceBetweenRoute", "%@ [%@] [%@]", buf, 0x20u);
  }

  v20 = MEMORY[0x1E69A1918];
  *coordinate = *MEMORY[0x1E69A1918];
  *routeCoordinate = *v20;
  [routeCopy pointAtRouteCoordinate:v79];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  [andRouteCopy pointAtRouteCoordinate:start];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  GEOCalculateDistance();
  if (v33 <= selfCopy->_toleranceMeters)
  {
    goto LABEL_13;
  }

  v34 = [(MNRouteDivergenceFinder *)selfCopy _firstRouteCoordinateWithinToleranceOnRoute:routeCopy nearCoordinate:v79 range:v10, v28, v30, v32];
  v35 = [(MNRouteDivergenceFinder *)selfCopy _firstRouteCoordinateWithinToleranceOnRoute:andRouteCopy nearCoordinate:start range:end, v22, v24, v26];
  if (GEOPolylineCoordinateIsInvalid() && (GEOPolylineCoordinateIsInvalid() & 1) != 0)
  {
    *coordinate = v79;
    *routeCoordinate = start;
    goto LABEL_67;
  }

  if ((GEOPolylineCoordinateIsInvalid() & 1) == 0)
  {
    IsInvalid = GEOPolylineCoordinateIsInvalid();
    v38 = v79;
    if (IsInvalid)
    {
      v38 = v34;
    }

    v79 = v38;
LABEL_13:
    v36 = 1;
    goto LABEL_14;
  }

  v36 = 0;
  start = v35;
LABEL_14:
  v39 = [MEMORY[0x1E69A23A0] iteratorWithRange:{v79, v10}];
  v40 = [MEMORY[0x1E69A23A0] iteratorWithRange:{start, end}];
  v77 = 0;
  v41 = 0;
  v42 = 0.0;
  while ([v39 isCurrentValid] && objc_msgSend(v40, "isCurrentValid"))
  {
    if (v36)
    {
      v43 = routeCopy;
    }

    else
    {
      v43 = andRouteCopy;
    }

    if (v36)
    {
      v44 = andRouteCopy;
    }

    else
    {
      v44 = routeCopy;
    }

    if (v36)
    {
      v45 = v39;
    }

    else
    {
      v45 = v40;
    }

    if (v36)
    {
      v46 = v40;
    }

    else
    {
      v46 = v39;
    }

    v47 = v43;
    v48 = v44;
    v49 = v45;
    v50 = v46;
    [v50 previous];
    if (GEOPolylineCoordinateIsValid())
    {
      previous = [v50 previous];
    }

    else
    {
      previous = [v50 current];
    }

    v52 = previous;
    current = [v50 current];
    [v48 pointAtRouteCoordinate:v52];
    [v48 pointAtRouteCoordinate:current];
    v55 = v54;
    v57 = v56;
    v59 = v58;
    [v47 pointAtRouteCoordinate:{objc_msgSend(v49, "current")}];
    [(MNRouteDivergenceFinder *)selfCopy _distanceFromCoordinate:v55 toSegmentStart:v57 segmentEnd:v59];
    if (v60 >= selfCopy->_toleranceMeters)
    {
      if (v42 <= 0.0)
      {
        if (v41)
        {
          v61 = 0;
          v77 = 1;
          v41 = 1;
        }

        else
        {
          v36 ^= 1u;
          v41 = 1;
          v61 = 1;
        }

        goto LABEL_42;
      }

      [v50 advance];
    }

    else
    {
      if (v60 <= 0.01)
      {
        goto LABEL_40;
      }

      if (v42 <= 0.0)
      {
        v41 = 0;
        v36 ^= 1u;
        v61 = 1;
        v42 = v60;
        goto LABEL_42;
      }

      if (v60 <= v42)
      {
LABEL_40:
        [v49 advance];
        v41 = 0;
        goto LABEL_41;
      }

      [v50 advance];
      v41 = 0;
    }

    v36 ^= 1u;
LABEL_41:
    v61 = 1;
    v42 = 0.0;
LABEL_42:

    if ((v61 & 1) == 0)
    {
      break;
    }
  }

  if (v77)
  {
    [v39 previous];
    if ((GEOPolylineCoordinateIsInvalid() & 1) == 0)
    {
      [v40 previous];
      if (GEOPolylineCoordinateIsValid())
      {
        previous2 = [v40 previous];
      }

      else
      {
        previous2 = [v40 current];
      }

      [andRouteCopy pointAtRouteCoordinate:previous2];
      v79 = -[MNRouteDivergenceFinder _closestRouteCoordinateOnRoute:toLocationCoordinate:inRange:](selfCopy, "_closestRouteCoordinateOnRoute:toLocationCoordinate:inRange:", routeCopy, [v39 previous], objc_msgSend(v39, "current"), v66, v67, v68);
    }

    *coordinate = v79;
    [v40 previous];
    if ((GEOPolylineCoordinateIsInvalid() & 1) == 0)
    {
      [v39 previous];
      if (GEOPolylineCoordinateIsValid())
      {
        previous3 = [v39 previous];
      }

      else
      {
        previous3 = [v39 current];
      }

      [routeCopy pointAtRouteCoordinate:previous3];
      start = -[MNRouteDivergenceFinder _closestRouteCoordinateOnRoute:toLocationCoordinate:inRange:](selfCopy, "_closestRouteCoordinateOnRoute:toLocationCoordinate:inRange:", andRouteCopy, [v40 previous], objc_msgSend(v40, "current"), v70, v71, v72);
    }

    *routeCoordinate = start;
    v73 = MNGetMNRouteDivergenceLog();
    v64 = v73;
    if (v76 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v73))
    {
      *buf = 0;
      v65 = "Divergence found";
LABEL_65:
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v64, OS_SIGNPOST_INTERVAL_END, spid, "_findFirstDivergenceBetweenRoute", v65, buf, 2u);
    }
  }

  else
  {
    v63 = MNGetMNRouteDivergenceLog();
    v64 = v63;
    if (v76 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v63))
    {
      *buf = 0;
      v65 = "No divergence found";
      goto LABEL_65;
    }
  }

LABEL_67:
  v74 = *MEMORY[0x1E69E9840];
}

- (id)findOverlappingSectionsForRoutes:(id)routes
{
  v177 = *MEMORY[0x1E69E9840];
  routesCopy = routes;
  if ([routesCopy count])
  {
    v3 = MNGetMNRouteDivergenceLog();
    v4 = os_signpost_id_make_with_pointer(v3, self);

    v5 = MNGetMNRouteDivergenceLog();
    v6 = v5;
    spid = v4;
    v142 = v4 - 1;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      v7 = [(MNRouteDivergenceFinder *)self _routesArrayIdentifierStrings:routesCopy];
      *buf = 138412290;
      *&buf[4] = v7;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v6, OS_SIGNPOST_INTERVAL_BEGIN, spid, "findOverlappingSectionsForRoutes", "%@", buf, 0xCu);
    }

    v8 = [routesCopy count];
    memset(v170, 0, sizeof(v170));
    *buf = v170;
    buf[8] = 0;
    if (v8)
    {
      if (v8 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::vector<CLMapsRouteHint>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0;
    toleranceMeters = self->_toleranceMeters;
    v168 = 0;
    v169 = toleranceMeters;
    v166 = &v167;
    v167 = 0;
    while (v9 < [routesCopy count])
    {
      v147 = [routesCopy objectAtIndexedSubscript:v9];
      v150 = (v170[0] + 24 * v9);
      v152 = v9;
      v154 = v9;
      while (v152 + 1 < [routesCopy count])
      {
        ++v152;
        v11 = [routesCopy objectAtIndexedSubscript:?];
        v145 = v170[0];
        v153 = [(MNRouteDivergenceFinder *)self findAllDivergenceConvergenceBetweenRoute:v147 andRoute:v11];
        if ([v153 count] != 2)
        {
          v54 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            *&buf[4] = "[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]";
            *&buf[12] = 2080;
            *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/Navigation/Misc/MNRouteDivergenceFinder.mm";
            v172 = 1024;
            LODWORD(v173) = 620;
            WORD2(v173) = 2080;
            *(&v173 + 6) = "divergenceConvergenceResult.count == 2";
            _os_log_impl(&dword_1D311E000, v54, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s)", buf, 0x26u);
          }
        }

        if ([v153 count] != 2)
        {

          break;
        }

        v165 = 0u;
        v163 = 0u;
        v164 = 0u;
        v162 = 0u;
        v12 = [v153 objectAtIndexedSubscript:0];
        obj = [v12 results];

        v13 = [obj countByEnumeratingWithState:&v162 objects:v176 count:16];
        v151 = v11;
        if (v13)
        {
          v14 = *v163;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v163 != v14)
              {
                objc_enumerationMutation(obj);
              }

              v16 = *(*(&v162 + 1) + 8 * i);
              v17 = [v153 objectAtIndexedSubscript:0];
              results = [v17 results];
              firstObject = [results firstObject];
              v20 = v16 == firstObject;

              *buf = [v16 routeCoordinate];
              v21 = std::map<geo::PolylineCoordinate,std::vector<[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionEndpoint>>::operator[](v150, buf);
              v22 = [v16 resultType] == 2;
              v23 = v21[1];
              v24 = v21[2];
              if (v23 >= v24)
              {
                v26 = *v21;
                v27 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *v21) >> 3);
                v28 = v27 + 1;
                if (v27 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  std::vector<CLMapsRouteHint>::__throw_length_error[abi:ne200100]();
                }

                v29 = 0xAAAAAAAAAAAAAAABLL * ((v24 - v26) >> 3);
                if (2 * v29 > v28)
                {
                  v28 = 2 * v29;
                }

                if (v29 >= 0x555555555555555)
                {
                  v30 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v30 = v28;
                }

                if (v30)
                {
                  if (v30 <= 0xAAAAAAAAAAAAAAALL)
                  {
                    operator new();
                  }

                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v31 = 8 * ((v23 - *v21) >> 3);
                v9 = v154;
                *v31 = v154;
                *(v31 + 8) = v152;
                *(v31 + 16) = v22;
                *(v31 + 17) = v20;
                v25 = 24 * v27 + 24;
                v32 = (v31 - (v23 - v26));
                memcpy(v32, v26, v23 - v26);
                *v21 = v32;
                v21[1] = v25;
                v21[2] = 0;
                if (v26)
                {
                  operator delete(v26);
                }

                v11 = v151;
              }

              else
              {
                v9 = v154;
                *v23 = v154;
                *(v23 + 8) = v152;
                *(v23 + 16) = v22;
                v25 = v23 + 24;
                *(v23 + 17) = v20;
              }

              v21[1] = v25;
            }

            v13 = [obj countByEnumeratingWithState:&v162 objects:v176 count:16];
          }

          while (v13);
        }

        v160 = 0u;
        v161 = 0u;
        v158 = 0u;
        v159 = 0u;
        v33 = [v153 objectAtIndexedSubscript:1];
        obja = [v33 results];

        v34 = [obja countByEnumeratingWithState:&v158 objects:v175 count:16];
        if (v34)
        {
          v35 = *v159;
          do
          {
            for (j = 0; j != v34; ++j)
            {
              if (*v159 != v35)
              {
                objc_enumerationMutation(obja);
              }

              v37 = *(*(&v158 + 1) + 8 * j);
              v38 = [v153 objectAtIndexedSubscript:1];
              results2 = [v38 results];
              firstObject2 = [results2 firstObject];
              v41 = v37 == firstObject2;

              *buf = [v37 routeCoordinate];
              v42 = std::map<geo::PolylineCoordinate,std::vector<[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionEndpoint>>::operator[](v145 + 24 * v152, buf);
              v43 = [v37 resultType] == 2;
              v44 = v42[1];
              v45 = v42[2];
              if (v44 >= v45)
              {
                v47 = *v42;
                v48 = 0xAAAAAAAAAAAAAAABLL * ((v44 - *v42) >> 3);
                v49 = v48 + 1;
                if (v48 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  std::vector<CLMapsRouteHint>::__throw_length_error[abi:ne200100]();
                }

                v50 = 0xAAAAAAAAAAAAAAABLL * ((v45 - v47) >> 3);
                if (2 * v50 > v49)
                {
                  v49 = 2 * v50;
                }

                if (v50 >= 0x555555555555555)
                {
                  v51 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v51 = v49;
                }

                if (v51)
                {
                  if (v51 <= 0xAAAAAAAAAAAAAAALL)
                  {
                    operator new();
                  }

                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v52 = 8 * ((v44 - *v42) >> 3);
                *v52 = v152;
                *(v52 + 8) = v154;
                *(v52 + 16) = v43;
                *(v52 + 17) = v41;
                v46 = 24 * v48 + 24;
                v53 = (24 * v48 - (v44 - v47));
                memcpy(v53, v47, v44 - v47);
                *v42 = v53;
                v42[1] = v46;
                v42[2] = 0;
                if (v47)
                {
                  operator delete(v47);
                }

                v9 = v154;
              }

              else
              {
                v9 = v154;
                *v44 = v152;
                *(v44 + 8) = v154;
                *(v44 + 16) = v43;
                v46 = v44 + 24;
                *(v44 + 17) = v41;
              }

              v42[1] = v46;
              v11 = v151;
            }

            v34 = [obja countByEnumeratingWithState:&v158 objects:v175 count:16];
          }

          while (v34);
        }
      }

      *buf = v9;
      v156 = 0;
      v157 = 0;
      v155 = &v156;
      std::__tree<unsigned long>::__emplace_hint_unique_key_args<unsigned long,unsigned long const&>(&v155, &v156, v9);
      v55 = *v150;
      if (*v150 == v150 + 1)
      {
        goto LABEL_195;
      }

      while (2)
      {
        v56 = v55[5];
        v57 = v55[6];
LABEL_63:
        if (v56 != v57)
        {
          v58 = *(v56 + 8);
          v59 = v156;
          if (*(v56 + 16))
          {
            while (v59)
            {
              while (1)
              {
                v60 = v59;
                v61 = v59[4];
                if (v58 < v61)
                {
                  break;
                }

                if (v61 >= v58)
                {
                  goto LABEL_85;
                }

                v59 = v60[1];
                if (!v59)
                {
                  goto LABEL_84;
                }
              }

              v59 = *v60;
            }

LABEL_84:
            operator new();
          }

          if (!v156)
          {
            goto LABEL_80;
          }

          v62 = &v156;
          v63 = v156;
          do
          {
            v64 = v63;
            v65 = v62;
            v66 = v63[4];
            if (v66 >= v58)
            {
              v62 = v63;
            }

            v63 = v63[v66 < v58];
          }

          while (v63);
          if (v62 == &v156)
          {
            goto LABEL_80;
          }

          if (v66 < v58)
          {
            v64 = v65;
          }

          if (v58 < v64[4])
          {
LABEL_80:
            if ((*(v56 + 17) & 1) == 0)
            {
              v67 = GEOFindOrCreateLog();
              if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315906;
                *&buf[4] = "[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]";
                *&buf[12] = 2080;
                *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/Navigation/Misc/MNRouteDivergenceFinder.mm";
                v172 = 1024;
                LODWORD(v173) = 652;
                WORD2(v173) = 2080;
                *(&v173 + 6) = "erasedElements == 1 || routeSectionEndpoint.isFirstEndpoint";
                _os_log_impl(&dword_1D311E000, v67, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s)", buf, 0x26u);
              }
            }

            goto LABEL_85;
          }

          v68 = v62[1];
          v69 = v68;
          v70 = v62;
          if (v68)
          {
            do
            {
              v71 = v69;
              v69 = *v69;
            }

            while (v69);
          }

          else
          {
            do
            {
              v71 = v70[2];
              v95 = *v71 == v70;
              v70 = v71;
            }

            while (!v95);
          }

          if (v155 == v62)
          {
            v155 = v71;
          }

          --v157;
          v72 = *v62;
          v73 = v62;
          if (*v62)
          {
            if (v68)
            {
              do
              {
                v73 = v68;
                v68 = *v68;
              }

              while (v68);
              goto LABEL_96;
            }

            v73 = v62;
LABEL_99:
            v75 = 0;
            v74 = v73[2];
            v72[2] = v74;
          }

          else
          {
LABEL_96:
            v72 = v73[1];
            if (v72)
            {
              goto LABEL_99;
            }

            v74 = v73[2];
            v75 = 1;
          }

          v76 = *v74;
          if (*v74 == v73)
          {
            *v74 = v72;
            if (v73 == v59)
            {
              v76 = 0;
              v59 = v72;
            }

            else
            {
              v76 = v74[1];
            }
          }

          else
          {
            v74[1] = v72;
          }

          v77 = *(v73 + 24);
          if (v73 != v62)
          {
            v78 = v62[2];
            v73[2] = v78;
            v78[*v78 != v62] = v73;
            v79 = *v62;
            *v73 = *v62;
            v79[2] = v73;
            v80 = v62[1];
            v73[1] = v80;
            if (v80)
            {
              v80[2] = v73;
            }

            *(v73 + 24) = *(v62 + 24);
            if (v59 == v62)
            {
              v59 = v73;
            }
          }

          if (!v59 || !v77)
          {
            goto LABEL_163;
          }

          if (!v75)
          {
            *(v72 + 24) = 1;
            goto LABEL_163;
          }

          while (1)
          {
            v81 = v76[2];
            v82 = *v81;
            v83 = *(v76 + 24);
            if (*v81 == v76)
            {
              if ((v76[3] & 1) == 0)
              {
                *(v76 + 24) = 1;
                *(v81 + 24) = 0;
                v90 = *(v82 + 8);
                *v81 = v90;
                if (v90)
                {
                  *(v90 + 16) = v81;
                }

                v91 = v81[2];
                *(v82 + 16) = v91;
                v91[*v91 != v81] = v82;
                *(v82 + 8) = v81;
                v81[2] = v82;
                v92 = v76[1];
                if (v59 == v92)
                {
                  v59 = v76;
                }

                v76 = *v92;
              }

              v93 = *v76;
              if (*v76 && *(v93 + 24) != 1)
              {
                goto LABEL_158;
              }

              v94 = v76[1];
              if (v94 && *(v94 + 24) != 1)
              {
                if (v93 && (v93[3] & 1) == 0)
                {
LABEL_158:
                  v94 = v76;
                  goto LABEL_159;
                }

                *(v94 + 24) = 1;
                *(v76 + 24) = 0;
                v102 = *v94;
                v76[1] = *v94;
                if (v102)
                {
                  *(v102 + 16) = v76;
                }

                v103 = v76[2];
                v94[2] = v103;
                v103[*v103 != v76] = v94;
                *v94 = v76;
                v76[2] = v94;
                v93 = v76;
LABEL_159:
                v98 = v94[2];
                *(v94 + 24) = *(v98 + 24);
                *(v98 + 24) = 1;
                *(v93 + 24) = 1;
                v99 = *v98;
                v104 = *(*v98 + 8);
                *v98 = v104;
                if (v104)
                {
                  *(v104 + 16) = v98;
                }

                v105 = *(v98 + 16);
                v99[2] = v105;
                v105[*v105 != v98] = v99;
                v99[1] = v98;
LABEL_162:
                *(v98 + 16) = v99;
LABEL_163:
                operator delete(v62);
LABEL_85:
                v56 += 24;
                goto LABEL_63;
              }

              *(v76 + 24) = 0;
              v89 = v76[2];
              v95 = *(v89 + 24) != 1 || v89 == v59;
              if (v95)
              {
LABEL_143:
                *(v89 + 24) = 1;
                goto LABEL_163;
              }
            }

            else
            {
              if ((v76[3] & 1) == 0)
              {
                *(v76 + 24) = 1;
                *(v81 + 24) = 0;
                v84 = v81[1];
                v85 = *v84;
                v81[1] = *v84;
                if (v85)
                {
                  *(v85 + 16) = v81;
                }

                v86 = v81[2];
                v84[2] = v86;
                v86[*v86 != v81] = v84;
                *v84 = v81;
                v81[2] = v84;
                if (v59 == *v76)
                {
                  v59 = v76;
                }

                v76 = *(*v76 + 8);
              }

              v87 = *v76;
              if (*v76 && *(v87 + 24) != 1)
              {
                v88 = v76[1];
                if (v88 && (v88[3] & 1) == 0)
                {
LABEL_149:
                  v87 = v76;
                }

                else
                {
                  *(v87 + 24) = 1;
                  *(v76 + 24) = 0;
                  v96 = v87[1];
                  *v76 = v96;
                  if (v96)
                  {
                    *(v96 + 16) = v76;
                  }

                  v97 = v76[2];
                  v87[2] = v97;
                  v97[*v97 != v76] = v87;
                  v87[1] = v76;
                  v76[2] = v87;
                  v88 = v76;
                }

                v98 = v87[2];
                *(v87 + 24) = *(v98 + 24);
                *(v98 + 24) = 1;
                *(v88 + 24) = 1;
                v99 = *(v98 + 8);
                v100 = *v99;
                *(v98 + 8) = *v99;
                if (v100)
                {
                  *(v100 + 16) = v98;
                }

                v101 = *(v98 + 16);
                v99[2] = v101;
                v101[*v101 != v98] = v99;
                *v99 = v98;
                goto LABEL_162;
              }

              v88 = v76[1];
              if (v88 && *(v88 + 24) != 1)
              {
                goto LABEL_149;
              }

              *(v76 + 24) = 0;
              v89 = v76[2];
              if (v89 == v59 || (v89[3] & 1) == 0)
              {
                goto LABEL_143;
              }
            }

            v76 = *(v89[2] + 8 * (*v89[2] == v89));
          }
        }

        v106 = v55[4];
        v107 = *MEMORY[0x1E69A1918];
        [v147 pointAtRouteCoordinate:v106];
        v109 = v108;
        v111 = v110;
        v113 = v112;
        std::set<unsigned long>::set[abi:ne200100](buf, &v155);
        *&v173 = v109;
        *(&v173 + 1) = v111;
        v174 = v113;
        v114 = v167;
        if (!v167)
        {
          goto LABEL_173;
        }

        v115 = &v167;
        while (1)
        {
          while (1)
          {
            v116 = v114;
            if (![MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionKeyCompare::operator()(&v169, buf, v114 + 4))
            {
              break;
            }

            v114 = *v116;
            v115 = v116;
            if (!*v116)
            {
              goto LABEL_173;
            }
          }

          if (![MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionKeyCompare::operator()(&v169, (v116 + 4), buf))
          {
            break;
          }

          v115 = (v116 + 1);
          v114 = v116[1];
          if (!v114)
          {
            goto LABEL_173;
          }
        }

        v117 = *v115;
        if (!*v115)
        {
LABEL_173:
          operator new();
        }

        v118 = v117[11];
        v119 = v117[12];
        if (v118 >= v119)
        {
          v121 = v117[10];
          v122 = 0xAAAAAAAAAAAAAAABLL * ((v118 - v121) >> 3) + 1;
          if (v122 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<CLMapsRouteHint>::__throw_length_error[abi:ne200100]();
          }

          v123 = 0xAAAAAAAAAAAAAAABLL * ((v119 - v121) >> 3);
          if (2 * v123 > v122)
          {
            v122 = 2 * v123;
          }

          if (v123 >= 0x555555555555555)
          {
            v124 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v124 = v122;
          }

          if (v124)
          {
            if (v124 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v125 = (8 * ((v118 - v121) >> 3));
          *v125 = v106;
          v125[1] = v107;
          v125[2] = v9;
          v120 = v125 + 3;
          v126 = v125 - (v118 - v121);
          memcpy(v126, v121, v118 - v121);
          v117[10] = v126;
          v117[11] = v120;
          v117[12] = 0;
          if (v121)
          {
            operator delete(v121);
          }
        }

        else
        {
          *v118 = v106;
          *(v118 + 1) = v107;
          v120 = v118 + 24;
          *(v118 + 2) = v9;
        }

        v117[11] = v120;
        v127 = v55[1];
        if (v127)
        {
          do
          {
            v128 = v127;
            v127 = *v127;
          }

          while (v127);
        }

        else
        {
          do
          {
            v128 = v55[2];
            v95 = *v128 == v55;
            v55 = v128;
          }

          while (!v95);
        }

        if (v128 != v150 + 1)
        {
          *(v120 - 2) = v128[4];
          std::__tree<unsigned long>::destroy(*&buf[8]);
          v55 = v128;
          continue;
        }

        break;
      }

      *(v120 - 2) = [v147 endRouteCoordinate];
      std::__tree<unsigned long>::destroy(*&buf[8]);
LABEL_195:
      std::__tree<unsigned long>::destroy(v156);

      ++v9;
    }

    v129 = [MEMORY[0x1E695DF70] arrayWithCapacity:v168];
    v130 = v166;
    if (v166 != &v167)
    {
      do
      {
        v131 = [MEMORY[0x1E695DF70] arrayWithCapacity:0xAAAAAAAAAAAAAAABLL * ((v130[11] - v130[10]) >> 3)];
        v132 = v130[10];
        v133 = v130[11];
        while (v132 != v133)
        {
          v134 = objc_alloc_init(MNRouteDivergenceOverlappingSectionComponent);
          [(MNRouteDivergenceOverlappingSectionComponent *)v134 setRouteIndex:v132[2]];
          [(MNRouteDivergenceOverlappingSectionComponent *)v134 setRange:*v132, v132[1]];
          [v131 addObject:v134];

          v132 += 3;
        }

        v135 = objc_alloc_init(MNRouteDivergenceOverlappingSection);
        [(MNRouteDivergenceOverlappingSection *)v135 setComponents:v131];
        [v129 addObject:v135];

        v136 = v130[1];
        if (v136)
        {
          do
          {
            v137 = v136;
            v136 = *v136;
          }

          while (v136);
        }

        else
        {
          do
          {
            v137 = v130[2];
            v95 = *v137 == v130;
            v130 = v137;
          }

          while (!v95);
        }

        v130 = v137;
      }

      while (v137 != &v167);
    }

    v138 = MNGetMNRouteDivergenceLog();
    v139 = v138;
    if (v142 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v138))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v139, OS_SIGNPOST_INTERVAL_END, spid, "findOverlappingSectionsForRoutes", "", buf, 2u);
    }

    std::__tree<std::__value_type<[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionKey,std::vector<[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSection>>,std::__map_value_compare<[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionKey,std::__value_type<[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionKey,std::vector<[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSection>>,[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionKeyCompare,false>,std::allocator<std::__value_type<[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionKey,std::vector<[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSection>>>>::destroy(v167);
    *buf = v170;
    std::vector<std::map<geo::PolylineCoordinate,std::vector<-[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionEndpoint>>>::__destroy_vector::operator()[abi:ne200100](buf);
  }

  else
  {
    v129 = 0;
  }

  v140 = *MEMORY[0x1E69E9840];

  return v129;
}

- (void)findOverlappingSectionsForRoutes:
{
  v1 = *self;
  v2 = **self;
  if (v2)
  {
    v4 = v1[1];
    v5 = **self;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 24;
        std::__tree<std::__value_type<geo::PolylineCoordinate,std::vector<[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionEndpoint>>,std::__map_value_compare<geo::PolylineCoordinate,std::__value_type<geo::PolylineCoordinate,std::vector<[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionEndpoint>>,std::less<geo::PolylineCoordinate>,true>,std::allocator<std::__value_type<geo::PolylineCoordinate,std::vector<[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionEndpoint>>>>::destroy(*(v4 - 2));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **self;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

- (uint64_t)findOverlappingSectionsForRoutes:(uint64_t)routes
{
  v2 = *routes;
  *routes = 0;
  if (v2)
  {
    if (*(routes + 16) == 1)
    {
      std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<-[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionKey,std::vector<-[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSection>>,void *>>>::destroy[abi:ne200100]<std::pair<-[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionKey const,std::vector<-[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSection>>,void,0>(v2 + 4);
    }

    operator delete(v2);
  }

  return routes;
}

- (uint64_t)findOverlappingSectionsForRoutes:
{
  v3 = *(a2 + 16);
  v4 = *(a3 + 2);
  if (v3 != v4)
  {
    return v3 < v4;
  }

  v8 = (a2 + 8);
  v9 = *a2;
  if (*a2 == a2 + 8)
  {
LABEL_16:
    v18 = *(a2 + 24);
    v19 = *(a2 + 32);
    v20 = *(a3 + 3);
    v21 = *(a3 + 4);
    GEOCalculateDistance();
    if (v22 >= *self)
    {
      v23 = *(a2 + 24);
      v24 = a3[3];
      if (vabdd_f64(v23, v24) < 0.0001)
      {
        v23 = *(a2 + 32);
        v24 = a3[4];
      }

      return v23 < v24;
    }

    return 0;
  }

  v10 = *a3;
  v11 = *a3;
  v12 = *a2;
  while (v12[4] == *(v11 + 4))
  {
    v13 = v12[1];
    v14 = v12;
    if (v13)
    {
      do
      {
        v12 = v13;
        v13 = *v13;
      }

      while (v13);
    }

    else
    {
      do
      {
        v12 = v14[2];
        v15 = *v12 == v14;
        v14 = v12;
      }

      while (!v15);
    }

    v16 = *(v11 + 1);
    if (v16)
    {
      do
      {
        v17 = v16;
        v16 = *v16;
      }

      while (v16);
    }

    else
    {
      do
      {
        v17 = *(v11 + 2);
        v15 = *v17 == v11;
        v11 = v17;
      }

      while (!v15);
    }

    v11 = v17;
    if (v12 == v8)
    {
      goto LABEL_16;
    }
  }

  if (v10 == a3 + 1)
  {
    return 0;
  }

  while (v9 != v8)
  {
    v26 = v9[4];
    v27 = *(v10 + 4);
    if (v26 < v27)
    {
      break;
    }

    if (v27 < v26)
    {
      return 0;
    }

    v28 = v9[1];
    v29 = v9;
    if (v28)
    {
      do
      {
        v9 = v28;
        v28 = *v28;
      }

      while (v28);
    }

    else
    {
      do
      {
        v9 = v29[2];
        v15 = *v9 == v29;
        v29 = v9;
      }

      while (!v15);
    }

    v30 = *(v10 + 1);
    if (v30)
    {
      do
      {
        v31 = v30;
        v30 = *v30;
      }

      while (v30);
    }

    else
    {
      do
      {
        v31 = *(v10 + 2);
        v15 = *v31 == v10;
        v10 = v31;
      }

      while (!v15);
    }

    result = 0;
    v10 = v31;
    if (v31 == a3 + 1)
    {
      return result;
    }
  }

  return 1;
}

- (void)findOverlappingSectionsForRoutes:(void *)routes
{
  if (routes)
  {
    std::__tree<std::__value_type<geo::PolylineCoordinate,std::vector<[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionEndpoint>>,std::__map_value_compare<geo::PolylineCoordinate,std::__value_type<geo::PolylineCoordinate,std::vector<[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionEndpoint>>,std::less<geo::PolylineCoordinate>,true>,std::allocator<std::__value_type<geo::PolylineCoordinate,std::vector<[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionEndpoint>>>>::destroy(*routes);
    std::__tree<std::__value_type<geo::PolylineCoordinate,std::vector<[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionEndpoint>>,std::__map_value_compare<geo::PolylineCoordinate,std::__value_type<geo::PolylineCoordinate,std::vector<[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionEndpoint>>,std::less<geo::PolylineCoordinate>,true>,std::allocator<std::__value_type<geo::PolylineCoordinate,std::vector<[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionEndpoint>>>>::destroy(routes[1]);
    v2 = routes[5];
    if (v2)
    {
      routes[6] = v2;
      operator delete(v2);
    }

    operator delete(routes);
  }
}

- (id)findAllOverlapRangesBetweenRoutes:(id)routes
{
  v117 = *MEMORY[0x1E69E9840];
  routesCopy = routes;
  if ([routesCopy count])
  {
    v3 = MNGetMNRouteDivergenceLog();
    v4 = os_signpost_id_make_with_pointer(v3, self);

    v5 = MNGetMNRouteDivergenceLog();
    v6 = v5;
    spid = v4;
    v92 = v4 - 1;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      v7 = [(MNRouteDivergenceFinder *)self _routesArrayIdentifierStrings:routesCopy];
      buf[0].i32[0] = 138412290;
      *(buf + 4) = v7;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "findAllOverlapRangesBetweenRoutes", "%@", buf, 0xCu);
    }

    v93 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(routesCopy, "count")}];
    v8 = [routesCopy count];
    memset(v113, 0, sizeof(v113));
    buf[0] = v113;
    buf[1].i8[0] = 0;
    if (v8)
    {
      if (v8 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::vector<CLMapsRouteHint>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0;
    *&v9 = 136315906;
    v90 = v9;
    while (v10 < [routesCopy count])
    {
      v96 = [routesCopy objectAtIndexedSubscript:v10];
      v11 = (v113[0] + 24 * v10);
      v101 = v10;
      v12 = v10 + 1;
      v94 = v10 + 1;
      while (v12 < [routesCopy count])
      {
        v14 = [routesCopy objectAtIndexedSubscript:v12];
        v97 = v113[0];
        v99 = [(MNRouteDivergenceFinder *)self findAllDivergenceConvergenceBetweenRoute:v96 andRoute:v14];
        if ([v99 count] != 2)
        {
          v51 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            buf[0].i32[0] = v90;
            *(buf + 4) = "[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]";
            buf[1].i16[2] = 2080;
            *(&buf[1] + 6) = "/Library/Caches/com.apple.xbs/Sources/Navigation/Misc/MNRouteDivergenceFinder.mm";
            buf[2].i16[3] = 1024;
            buf[3].i32[0] = 429;
            buf[3].i16[2] = 2080;
            *(&buf[3] + 6) = "divergenceConvergenceResult.count == 2";
            _os_log_impl(&dword_1D311E000, v51, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s)", buf, 0x26u);
          }
        }

        if ([v99 count] != 2)
        {

          break;
        }

        v111 = 0u;
        v112 = 0u;
        v109 = 0u;
        v110 = 0u;
        v15 = [v99 objectAtIndexedSubscript:0];
        results = [v15 results];

        v102 = v12;
        v17 = [results countByEnumeratingWithState:&v109 objects:v116 count:16];
        v103 = v14;
        if (v17)
        {
          v18 = *v110;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v110 != v18)
              {
                objc_enumerationMutation(results);
              }

              v20 = *(*(&v109 + 1) + 8 * i);
              routeCoordinate = [v20 routeCoordinate];
              v22 = [v20 resultType] == 2;
              v23 = v11[1];
              v24 = v11[2];
              if (v23 >= v24)
              {
                v26 = *v11;
                v27 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *v11) >> 3);
                v28 = v27 + 1;
                if (v27 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  std::vector<CLMapsRouteHint>::__throw_length_error[abi:ne200100]();
                }

                v29 = 0xAAAAAAAAAAAAAAABLL * ((v24 - v26) >> 3);
                if (2 * v29 > v28)
                {
                  v28 = 2 * v29;
                }

                if (v29 >= 0x555555555555555)
                {
                  v30 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v30 = v28;
                }

                if (v30)
                {
                  if (v30 <= 0xAAAAAAAAAAAAAAALL)
                  {
                    operator new();
                  }

                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v31 = 8 * ((v23 - *v11) >> 3);
                *v31 = routeCoordinate;
                *(v31 + 8) = v102;
                *(v31 + 16) = v22;
                v25 = 24 * v27 + 24;
                v32 = (24 * v27 - (v23 - v26));
                memcpy(v32, v26, v23 - v26);
                *v11 = v32;
                v11[1] = v25;
                v11[2] = 0;
                if (v26)
                {
                  operator delete(v26);
                }
              }

              else
              {
                *v23 = routeCoordinate;
                *(v23 + 8) = v102;
                v25 = v23 + 24;
                *(v23 + 16) = v22;
              }

              v14 = v103;
              v11[1] = v25;
            }

            v17 = [results countByEnumeratingWithState:&v109 objects:v116 count:16];
          }

          while (v17);
        }

        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        v33 = [v99 objectAtIndexedSubscript:1];
        obj = [v33 results];

        v34 = [obj countByEnumeratingWithState:&v105 objects:v115 count:16];
        if (v34)
        {
          v35 = v97 + 24 * v102;
          v36 = *v106;
          do
          {
            for (j = 0; j != v34; ++j)
            {
              if (*v106 != v36)
              {
                objc_enumerationMutation(obj);
              }

              v38 = *(*(&v105 + 1) + 8 * j);
              routeCoordinate2 = [v38 routeCoordinate];
              v40 = [v38 resultType] == 2;
              v41 = *(v35 + 8);
              v42 = *(v35 + 16);
              if (v41 >= v42)
              {
                v44 = *v35;
                v45 = 0xAAAAAAAAAAAAAAABLL * ((v41 - *v35) >> 3);
                v46 = v45 + 1;
                if (v45 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  std::vector<CLMapsRouteHint>::__throw_length_error[abi:ne200100]();
                }

                v47 = 0xAAAAAAAAAAAAAAABLL * ((v42 - v44) >> 3);
                if (2 * v47 > v46)
                {
                  v46 = 2 * v47;
                }

                if (v47 >= 0x555555555555555)
                {
                  v48 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v48 = v46;
                }

                if (v48)
                {
                  if (v48 <= 0xAAAAAAAAAAAAAAALL)
                  {
                    operator new();
                  }

                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v49 = 8 * ((v41 - *v35) >> 3);
                *v49 = routeCoordinate2;
                *(v49 + 8) = v101;
                *(v49 + 16) = v40;
                v43 = 24 * v45 + 24;
                v50 = (24 * v45 - (v41 - v44));
                memcpy(v50, v44, v41 - v44);
                *v35 = v50;
                *(v35 + 8) = v43;
                *(v35 + 16) = 0;
                if (v44)
                {
                  operator delete(v44);
                }
              }

              else
              {
                *v41 = routeCoordinate2;
                *(v41 + 8) = v101;
                v43 = v41 + 24;
                *(v41 + 16) = v40;
              }

              v14 = v103;
              *(v35 + 8) = v43;
            }

            v34 = [obj countByEnumeratingWithState:&v105 objects:v115 count:16];
          }

          while (v34);
        }

        v12 = v102 + 1;
      }

      v52 = v11[1];
      v53 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v52 - *v11) >> 3));
      if (v52 == *v11)
      {
        v54 = 0;
      }

      else
      {
        v54 = v53;
      }

      *&v55 = std::__introsort<std::_ClassicAlgPolicy,[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::$_4 &,[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate *,false>(*v11, v52, v54, 1, v13);
      v56 = [routesCopy count];
      memset(buf, 0, 32);
      buf[4].i32[0] = 1065353216;
      std::__hash_table<-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate,-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::$_0,-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::$_1,std::allocator<-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate>>::__rehash_unique[abi:ne200100](buf, v56 - 1);
      v104 = objc_alloc_init(MEMORY[0x1E69A23A8]);
      v57 = objc_alloc_init(MEMORY[0x1E69A23A8]);
      v58 = *MEMORY[0x1E69A1920];
      v59 = *v11;
      v60 = v11[1];
      v61 = *MEMORY[0x1E69A1920];
LABEL_63:
      if (v59 != v60)
      {
        if (*(v59 + 16) == 1)
        {
          if (!*&buf[3])
          {
            v58 = *v59;
            if (GEOPolylineCoordinateRangeIsValid())
            {
              [v104 addCoordinateRange:{v61, v58}];
            }
          }

          v62 = *(v59 + 8);
          if (buf[1])
          {
            v63 = vcnt_s8(buf[1]);
            v63.i16[0] = vaddlv_u8(v63);
            if (v63.u32[0] > 1uLL)
            {
              v64 = *(v59 + 8);
              if (v62 >= *&buf[1])
              {
                v64 = v62 % *&buf[1];
              }
            }

            else
            {
              v64 = (*&buf[1] - 1) & v62;
            }

            v73 = *(*buf + 8 * v64);
            if (v73)
            {
              for (k = *v73; k; k = *k)
              {
                v75 = k[1];
                if (v75 == v62)
                {
                  if (k[3] == v62)
                  {
                    goto LABEL_134;
                  }
                }

                else
                {
                  if (v63.u32[0] > 1uLL)
                  {
                    if (v75 >= *&buf[1])
                    {
                      v75 %= *&buf[1];
                    }
                  }

                  else
                  {
                    v75 &= *&buf[1] - 1;
                  }

                  if (v75 != v64)
                  {
                    break;
                  }
                }
              }
            }
          }

          operator new();
        }

        v65 = buf[1];
        if (!*&buf[1])
        {
          goto LABEL_131;
        }

        v66 = *(v59 + 8);
        v67 = vcnt_s8(buf[1]);
        v67.i16[0] = vaddlv_u8(v67);
        if (v67.u32[0] > 1uLL)
        {
          v68 = *(v59 + 8);
          if (v66 >= *&buf[1])
          {
            v68 = v66 % *&buf[1];
          }
        }

        else
        {
          v68 = (*&buf[1] - 1) & v66;
        }

        v69 = *(*buf + 8 * v68);
        if (!v69)
        {
          goto LABEL_131;
        }

        v70 = *v69;
        if (!*v69)
        {
          goto LABEL_131;
        }

        v71 = *&buf[1] - 1;
        while (1)
        {
          v72 = v70[1];
          if (v72 == v66)
          {
            if (*&v70[3] == v66)
            {
              if (v67.u32[0] > 1uLL)
              {
                if (v66 >= *&buf[1])
                {
                  v66 %= *&buf[1];
                }
              }

              else
              {
                v66 &= v71;
              }

              v76 = *v70;
              v77 = *(*buf + 8 * v66);
              do
              {
                v78 = v77;
                v77 = *v77;
              }

              while (v77 != v70);
              if (v78 == &buf[2])
              {
                goto LABEL_120;
              }

              v79 = v78[1];
              if (v67.u32[0] > 1uLL)
              {
                if (*&v79 >= *&buf[1])
                {
                  *&v79 %= *&buf[1];
                }
              }

              else
              {
                *&v79 &= v71;
              }

              if (*&v79 == v66)
              {
LABEL_122:
                if (v76)
                {
                  v80 = v76[1];
                  goto LABEL_124;
                }
              }

              else
              {
LABEL_120:
                if (!v76)
                {
                  goto LABEL_121;
                }

                v80 = v76[1];
                if (v67.u32[0] > 1uLL)
                {
                  v81 = v76[1];
                  if (v80 >= *&buf[1])
                  {
                    v81 = (v80 % *&buf[1]);
                  }
                }

                else
                {
                  v81 = (v80 & v71);
                }

                if (*&v81 != v66)
                {
LABEL_121:
                  *(*buf + 8 * v66) = 0;
                  v76 = *v70;
                  goto LABEL_122;
                }

LABEL_124:
                if (v67.u32[0] > 1uLL)
                {
                  if (v80 >= *&v65)
                  {
                    v80 %= *&v65;
                  }
                }

                else
                {
                  v80 &= v71;
                }

                if (v80 != v66)
                {
                  *(*buf + 8 * v80) = v78;
                  v76 = *v70;
                }
              }

              *v78 = v76;
              --*&buf[3];
              operator delete(v70);
LABEL_131:
              if (!*&buf[3])
              {
                v61 = *v59;
                if (GEOPolylineCoordinateRangeIsValid())
                {
                  [v57 addCoordinateRange:{v58, v61}];
                }
              }

LABEL_134:
              v59 += 24;
              goto LABEL_63;
            }
          }

          else
          {
            if (v67.u32[0] > 1uLL)
            {
              if (v72 >= *&buf[1])
              {
                v72 %= *&buf[1];
              }
            }

            else
            {
              v72 &= v71;
            }

            if (v72 != v68)
            {
              goto LABEL_131;
            }
          }

          v70 = *v70;
          if (!v70)
          {
            goto LABEL_131;
          }
        }
      }

      if (buf[3])
      {
        endRouteCoordinate = [v96 endRouteCoordinate];
        if (GEOPolylineCoordinateRangeIsValid())
        {
          v83 = v57;
          v61 = v58;
          goto LABEL_140;
        }
      }

      else
      {
        endRouteCoordinate = [v96 endRouteCoordinate];
        if (GEOPolylineCoordinateRangeIsValid())
        {
          v83 = v104;
LABEL_140:
          [v83 addCoordinateRange:{v61, endRouteCoordinate}];
        }
      }

      v84 = objc_alloc_init(MNRouteOverlapResult);
      uniqueRouteID = [v96 uniqueRouteID];
      [(MNRouteOverlapResult *)v84 setRouteID:uniqueRouteID];

      -[MNRouteOverlapResult setRouteRange:](v84, "setRouteRange:", 0, [v96 endRouteCoordinate]);
      [(MNRouteOverlapResult *)v84 setUniqueRanges:v104];
      [(MNRouteOverlapResult *)v84 setOverlapRanges:v57];
      [v93 addObject:v84];

      std::__hash_table<[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate,[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::$_0,[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::$_1,std::allocator<[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate>>::~__hash_table(buf);
      v10 = v94;
    }

    v86 = MNGetMNRouteDivergenceLog();
    v87 = v86;
    if (v92 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v86))
    {
      buf[0].i16[0] = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v87, OS_SIGNPOST_INTERVAL_END, spid, "findAllOverlapRangesBetweenRoutes", "", buf, 2u);
    }

    buf[0] = v113;
    std::vector<std::vector<-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate>>::__destroy_vector::operator()[abi:ne200100](buf);
  }

  else
  {
    v93 = 0;
  }

  v88 = *MEMORY[0x1E69E9840];

  return v93;
}

- (void)findAllOverlapRangesBetweenRoutes:
{
  v1 = *self;
  v2 = **self;
  if (v2)
  {
    v4 = v1[1];
    v5 = **self;
    if (v4 != v2)
    {
      v6 = v1[1];
      do
      {
        v8 = *(v6 - 3);
        v6 -= 24;
        v7 = v8;
        if (v8)
        {
          *(v4 - 2) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **self;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

- (float)findAllOverlapRangesBetweenRoutes:(uint64_t)routes
{
LABEL_1:
  v9 = &a2[-2].n128_u32[2];
  v10 = a2 - 3;
  v11 = &a2[-5].n128_i8[8];
  selfCopy = self;
  while (1)
  {
    self = selfCopy;
    v13 = a2 - selfCopy;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - selfCopy) >> 3);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return a5.n128_f32[0];
      }

      if (v14 == 2)
      {
        if (*v9 >= *selfCopy)
        {
          if (*v9 != *selfCopy)
          {
            return a5.n128_f32[0];
          }

          a5.n128_u32[0] = a2[-2].n128_u32[3];
          if (a5.n128_f32[0] >= *(selfCopy + 4))
          {
            return a5.n128_f32[0];
          }
        }

LABEL_210:
        v216 = *(selfCopy + 16);
        v189 = *selfCopy;
        v100 = *v9;
        *(selfCopy + 16) = a2[-1].n128_u8[8];
        *selfCopy = v100;
        a5 = v189;
        a2[-1].n128_u8[8] = v216;
LABEL_211:
        *v9 = a5;
        return a5.n128_f32[0];
      }

      goto LABEL_9;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {

      a5.n128_f32[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::$_4 &,-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate *,0>(selfCopy, (selfCopy + 24), (selfCopy + 48), (a2 - 24), a5);
      return a5.n128_f32[0];
    }

    if (v14 == 5)
    {
      a5.n128_f32[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::$_4 &,-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate *,0>(selfCopy, (selfCopy + 24), (selfCopy + 48), (selfCopy + 72), a5);
      v101 = *(selfCopy + 72);
      if (*v9 < v101 || *v9 == v101 && (a5.n128_u32[0] = a2[-2].n128_u32[3], a5.n128_f32[0] < *(selfCopy + 76)))
      {
        a5 = *(selfCopy + 72);
        v102 = *(selfCopy + 88);
        v103 = a2[-1].n128_u8[8];
        *(selfCopy + 72) = *v9;
        *(selfCopy + 88) = v103;
        a2[-1].n128_u8[8] = v102;
        *v9 = a5;
        v104 = *(selfCopy + 72);
        v105 = *(selfCopy + 48);
        if (v104 < v105 || v104 == v105 && (a5.n128_u32[0] = *(selfCopy + 76), a5.n128_f32[0] < *(selfCopy + 52)))
        {
          v106 = *(selfCopy + 64);
          a5 = *(selfCopy + 48);
          *(selfCopy + 48) = *(selfCopy + 72);
          *(selfCopy + 64) = *(selfCopy + 88);
          *(selfCopy + 72) = a5;
          *(selfCopy + 88) = v106;
          v107 = *(selfCopy + 48);
          v108 = *(selfCopy + 24);
          if (v107 < v108 || v107 == v108 && (a5.n128_u32[0] = *(selfCopy + 52), a5.n128_f32[0] < *(selfCopy + 28)))
          {
            v109 = *(selfCopy + 40);
            a5 = *(selfCopy + 24);
            *(selfCopy + 24) = *(selfCopy + 48);
            *(selfCopy + 40) = *(selfCopy + 64);
            *(selfCopy + 48) = a5;
            *(selfCopy + 64) = v109;
            v110 = *(selfCopy + 24);
            if (v110 < *selfCopy || v110 == *selfCopy && (a5.n128_u32[0] = *(selfCopy + 28), a5.n128_f32[0] < *(selfCopy + 4)))
            {
              v217 = *(selfCopy + 16);
              v190 = *selfCopy;
              *selfCopy = *(selfCopy + 24);
              *(selfCopy + 16) = *(selfCopy + 40);
              a5.n128_u32[0] = v190.n128_u32[0];
              *(selfCopy + 24) = v190;
              *(selfCopy + 40) = v217;
            }
          }
        }
      }

      return a5.n128_f32[0];
    }

LABEL_9:
    if (v13 <= 575)
    {
      v111 = (selfCopy + 24);
      v113 = selfCopy == a2 || v111 == a2;
      if (a4)
      {
        if (v113)
        {
          return a5.n128_f32[0];
        }

        v114 = 0;
        v115 = selfCopy;
        while (2)
        {
          v116 = v115;
          v115 = v111;
          v117 = *(v116 + 24);
          if (v117 < *v116)
          {
            a5.n128_u32[0] = *(v116 + 28);
            goto LABEL_228;
          }

          if (v117 == *v116)
          {
            a5.n128_u32[0] = *(v116 + 28);
            if (a5.n128_f32[0] < *(v116 + 4))
            {
LABEL_228:
              v191 = *(v116 + 32);
              *(v115 + 16) = *(v116 + 16);
              *v115 = *v116;
              v118 = selfCopy;
              if (v116 != selfCopy)
              {
                v119 = v114;
                while (1)
                {
                  v120 = selfCopy + v119;
                  v121 = *(selfCopy + v119 - 24);
                  if (v117 >= v121)
                  {
                    if (v117 != v121)
                    {
                      v118 = selfCopy + v119;
                      goto LABEL_240;
                    }

                    if (a5.n128_f32[0] >= *(selfCopy + v119 - 20))
                    {
                      break;
                    }
                  }

                  v116 -= 24;
                  *v120 = *(selfCopy + v119 - 24);
                  *(v120 + 16) = *(selfCopy + v119 - 8);
                  v119 -= 24;
                  if (!v119)
                  {
                    v118 = selfCopy;
                    goto LABEL_240;
                  }
                }

                v118 = v116;
              }

LABEL_240:
              *v118 = v117;
              *(v118 + 4) = a5.n128_u32[0];
              *(v118 + 8) = v191;
              *(v118 + 16) = BYTE8(v191);
            }
          }

          v111 = (v115 + 24);
          v114 += 24;
          if ((v115 + 24) == a2)
          {
            return a5.n128_f32[0];
          }

          continue;
        }
      }

      if (v113)
      {
        return a5.n128_f32[0];
      }

      while (2)
      {
        selfCopy2 = self;
        self = v111;
        v161 = *(selfCopy2 + 24);
        if (v161 >= *selfCopy2)
        {
          if (v161 == *selfCopy2)
          {
            a5.n128_u32[0] = *(selfCopy2 + 28);
            if (a5.n128_f32[0] < *(selfCopy2 + 4))
            {
              goto LABEL_309;
            }
          }
        }

        else
        {
          a5.n128_u32[0] = *(selfCopy2 + 28);
LABEL_309:
          v195 = *(selfCopy2 + 32);
          do
          {
            do
            {
              v162 = selfCopy2;
              *(selfCopy2 + 24) = *selfCopy2;
              *(selfCopy2 + 40) = *(selfCopy2 + 16);
              v163 = *(selfCopy2 - 24);
              selfCopy2 -= 24;
              v164 = v161 == v163;
            }

            while (v161 < v163);
          }

          while (v164 && a5.n128_f32[0] < *(v162 - 20));
          *v162 = v161;
          *(v162 + 4) = a5.n128_u32[0];
          *(v162 + 8) = v195;
          *(v162 + 16) = BYTE8(v195);
        }

        v111 = (self + 24);
        if ((self + 24) == a2)
        {
          return a5.n128_f32[0];
        }

        continue;
      }
    }

    if (!routes)
    {
      if (selfCopy == a2)
      {
        return a5.n128_f32[0];
      }

      v122 = (v14 - 2) >> 1;
      v123 = v122;
      while (2)
      {
        v124 = v123;
        if (v122 >= v123)
        {
          v125 = (2 * v123) | 1;
          v126 = selfCopy + 24 * v125;
          if (2 * v124 + 2 < v14)
          {
            v127 = *(v126 + 24);
            if (*v126 < v127 || *v126 == v127 && *(v126 + 4) < *(v126 + 28))
            {
              v126 += 24;
              v125 = 2 * v124 + 2;
            }
          }

          v128 = selfCopy + 24 * v124;
          v129 = *v128;
          if (*v126 >= *v128)
          {
            if (*v126 != v129)
            {
              v130 = *(v128 + 4);
              goto LABEL_255;
            }

            v130 = *(v128 + 4);
            if (*(v126 + 4) >= v130)
            {
LABEL_255:
              v192 = *(v128 + 8);
              v131 = *v126;
              *(v128 + 16) = *(v126 + 16);
              *v128 = v131;
              if (v122 >= v125)
              {
                while (1)
                {
                  v133 = 2 * v125;
                  v125 = (2 * v125) | 1;
                  v132 = selfCopy + 24 * v125;
                  v134 = v133 + 2;
                  if (v134 < v14)
                  {
                    v135 = *(v132 + 24);
                    if (*v132 < v135 || *v132 == v135 && *(v132 + 4) < *(v132 + 28))
                    {
                      v132 += 24;
                      v125 = v134;
                    }
                  }

                  if (*v132 < v129 || *v132 == v129 && *(v132 + 4) < v130)
                  {
                    break;
                  }

                  v136 = *v132;
                  *(v126 + 16) = *(v132 + 16);
                  *v126 = v136;
                  v126 = v132;
                  if (v122 < v125)
                  {
                    goto LABEL_257;
                  }
                }
              }

              v132 = v126;
LABEL_257:
              *v132 = v129;
              *(v132 + 4) = v130;
              *(v132 + 8) = v192;
              *(v132 + 16) = BYTE8(v192);
            }
          }
        }

        v123 = v124 - 1;
        if (v124)
        {
          continue;
        }

        break;
      }

      v137 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
      while (2)
      {
        v138 = 0;
        v218 = *(selfCopy + 16);
        v193 = *selfCopy;
        v139 = selfCopy;
        do
        {
          v140 = v139;
          v141 = v139 + 24 * v138;
          v139 = v141 + 24;
          v142 = 2 * v138;
          v138 = (2 * v138) | 1;
          v143 = v142 + 2;
          if (v143 < v137)
          {
            v144 = *(v141 + 48);
            v145 = *(v141 + 24);
            if (v145 < v144 || v145 == v144 && *(v141 + 28) < *(v141 + 52))
            {
              v139 = v141 + 48;
              v138 = v143;
            }
          }

          v146 = *v139;
          v140[1].n128_u8[0] = *(v139 + 16);
          *v140 = v146;
        }

        while (v138 <= ((v137 - 2) >> 1));
        a2 = (a2 - 24);
        if (v139 == a2)
        {
          a5.n128_u32[0] = v193.n128_u32[0];
          *(v139 + 16) = v218;
          *v139 = v193;
        }

        else
        {
          a5 = *a2;
          *(v139 + 16) = a2[1].n128_u8[0];
          *v139 = a5;
          a5.n128_u32[0] = v193.n128_u32[0];
          a2[1].n128_u8[0] = v218;
          *a2 = v193;
          v147 = v139 - selfCopy + 24;
          if (v147 >= 25)
          {
            v148 = -2 - 0x5555555555555555 * (v147 >> 3);
            v149 = v148 >> 1;
            v150 = selfCopy + 24 * (v148 >> 1);
            v151 = *v139;
            if (*v150 < *v139)
            {
              a5.n128_u32[0] = *(v139 + 4);
              goto LABEL_281;
            }

            if (*v150 == v151)
            {
              a5.n128_u32[0] = *(v139 + 4);
              if (*(v150 + 4) < a5.n128_f32[0])
              {
LABEL_281:
                v168 = *(v139 + 8);
                v152 = *v150;
                *(v139 + 16) = *(v150 + 16);
                *v139 = v152;
                if (v148 >= 2)
                {
                  while (1)
                  {
                    v154 = v149 - 1;
                    v149 = (v149 - 1) >> 1;
                    v153 = selfCopy + 24 * v149;
                    if (*v153 >= v151 && (*v153 != v151 || *(v153 + 4) >= a5.n128_f32[0]))
                    {
                      break;
                    }

                    v155 = *v153;
                    *(v150 + 16) = *(v153 + 16);
                    *v150 = v155;
                    v150 = selfCopy + 24 * v149;
                    if (v154 <= 1)
                    {
                      goto LABEL_287;
                    }
                  }
                }

                v153 = v150;
LABEL_287:
                *v153 = v151;
                *(v153 + 4) = a5.n128_u32[0];
                *(v153 + 8) = v168;
                *(v153 + 16) = BYTE8(v168);
              }
            }
          }
        }

        if (v137-- <= 2)
        {
          return a5.n128_f32[0];
        }

        continue;
      }
    }

    v15 = v14 >> 1;
    v16 = (selfCopy + 24 * (v14 >> 1));
    if (v13 >= 0xC01)
    {
      v17 = v16->n128_u32[0];
      if (v16->n128_u32[0] < *selfCopy || v17 == *selfCopy && v16->n128_f32[1] < *(selfCopy + 4))
      {
        if (*v9 < v17 || *v9 == v17 && a2[-2].n128_f32[3] < v16->n128_f32[1])
        {
          v196 = *(selfCopy + 16);
          v169 = *selfCopy;
          v18 = *v9;
          *(selfCopy + 16) = a2[-1].n128_u8[8];
          *selfCopy = v18;
        }

        else
        {
          v202 = *(selfCopy + 16);
          v175 = *selfCopy;
          v25 = *v16;
          *(selfCopy + 16) = v16[1].n128_u8[0];
          *selfCopy = v25;
          v16[1].n128_u8[0] = v202;
          *v16 = v175;
          if (*v9 >= v16->n128_u32[0] && (*v9 != v16->n128_u32[0] || a2[-2].n128_f32[3] >= v16->n128_f32[1]))
          {
            goto LABEL_33;
          }

          v196 = v16[1].n128_u64[0];
          v169 = *v16;
          v26 = *v9;
          v16[1].n128_u8[0] = a2[-1].n128_u8[8];
          *v16 = v26;
        }

        a2[-1].n128_u8[8] = v196;
        *v9 = v169;
        goto LABEL_33;
      }

      if (*v9 < v17 || *v9 == v17 && a2[-2].n128_f32[3] < v16->n128_f32[1])
      {
        v198 = v16[1].n128_u64[0];
        v171 = *v16;
        v21 = *v9;
        v16[1].n128_u8[0] = a2[-1].n128_u8[8];
        *v16 = v21;
        a2[-1].n128_u8[8] = v198;
        *v9 = v171;
        if (v16->n128_u32[0] < *selfCopy || v16->n128_u32[0] == *selfCopy && v16->n128_f32[1] < *(selfCopy + 4))
        {
          v199 = *(selfCopy + 16);
          v172 = *selfCopy;
          v22 = *v16;
          *(selfCopy + 16) = v16[1].n128_u8[0];
          *selfCopy = v22;
          v16[1].n128_u8[0] = v199;
          *v16 = v172;
        }
      }

LABEL_33:
      v27 = (selfCopy + 24);
      v28 = *(selfCopy + 24);
      v29 = selfCopy + 24 * v15;
      v32 = *(v29 - 24);
      v30 = (v29 - 24);
      v31 = v32;
      v33 = v32 == v28;
      if (v32 < v28 || v33 && v30->n128_f32[1] < *(selfCopy + 28))
      {
        if (v10->n128_u32[0] < v31 || v10->n128_u32[0] == v31 && a2[-3].n128_f32[1] < v30->n128_f32[1])
        {
          v34 = *v27;
          v35 = *(selfCopy + 40);
          v36 = a2[-2].n128_u8[0];
          *v27 = *v10;
          *(selfCopy + 40) = v36;
          a2[-2].n128_u8[0] = v35;
        }

        else
        {
          v43 = *v27;
          v44 = *(selfCopy + 40);
          v45 = v30[1].n128_i8[0];
          *v27 = *v30;
          *(selfCopy + 40) = v45;
          v30[1].n128_u8[0] = v44;
          *v30 = v43;
          if (v10->n128_u32[0] >= v30->n128_u32[0] && (v10->n128_u32[0] != v30->n128_u32[0] || a2[-3].n128_f32[1] >= v30->n128_f32[1]))
          {
            goto LABEL_52;
          }

          v205 = v30[1].n128_i64[0];
          v178 = *v30;
          v46 = *v10;
          v30[1].n128_u8[0] = a2[-2].n128_u8[0];
          *v30 = v46;
          v34 = v178;
          a2[-2].n128_u8[0] = v205;
        }

        *v10 = v34;
        goto LABEL_52;
      }

      if (v10->n128_u32[0] < v31 || v10->n128_u32[0] == v31 && a2[-3].n128_f32[1] < v30->n128_f32[1])
      {
        v203 = v30[1].n128_i64[0];
        v176 = *v30;
        v37 = *v10;
        v30[1].n128_u8[0] = a2[-2].n128_u8[0];
        *v30 = v37;
        a2[-2].n128_u8[0] = v203;
        *v10 = v176;
        if (v30->n128_u32[0] < v27->n128_u32[0] || v30->n128_u32[0] == v27->n128_u32[0] && v30->n128_f32[1] < *(selfCopy + 28))
        {
          v38 = *v27;
          v39 = *(selfCopy + 40);
          v40 = v30[1].n128_i8[0];
          *v27 = *v30;
          *(selfCopy + 40) = v40;
          v30[1].n128_u8[0] = v39;
          *v30 = v38;
        }
      }

LABEL_52:
      v47 = (selfCopy + 48);
      v48 = *(selfCopy + 48);
      v49 = selfCopy + 24 * v15;
      v52 = *(v49 + 24);
      v50 = (v49 + 24);
      v51 = v52;
      v53 = v52 == v48;
      if (v52 < v48 || v53 && v50->n128_f32[1] < *(selfCopy + 52))
      {
        if (*v11 < v51 || *v11 == v51 && a2[-5].n128_f32[3] < v50->n128_f32[1])
        {
          v54 = *v47;
          v55 = *(selfCopy + 64);
          v56 = a2[-4].n128_u8[8];
          *v47 = *v11;
          *(selfCopy + 64) = v56;
          a2[-4].n128_u8[8] = v55;
        }

        else
        {
          v61 = *v47;
          v62 = *(selfCopy + 64);
          v63 = v50[1].n128_i8[0];
          *v47 = *v50;
          *(selfCopy + 64) = v63;
          v50[1].n128_u8[0] = v62;
          *v50 = v61;
          if (*v11 >= v50->n128_u32[0] && (*v11 != v50->n128_u32[0] || a2[-5].n128_f32[3] >= v50->n128_f32[1]))
          {
            goto LABEL_66;
          }

          v207 = v50[1].n128_i64[0];
          v180 = *v50;
          v64 = *v11;
          v50[1].n128_u8[0] = a2[-4].n128_u8[8];
          *v50 = v64;
          v54 = v180;
          a2[-4].n128_u8[8] = v207;
        }

        *v11 = v54;
        goto LABEL_66;
      }

      if (*v11 < v51 || *v11 == v51 && a2[-5].n128_f32[3] < v50->n128_f32[1])
      {
        v206 = v50[1].n128_i64[0];
        v179 = *v50;
        v57 = *v11;
        v50[1].n128_u8[0] = a2[-4].n128_u8[8];
        *v50 = v57;
        a2[-4].n128_u8[8] = v206;
        *v11 = v179;
        if (v50->n128_u32[0] < v47->n128_u32[0] || v50->n128_u32[0] == v47->n128_u32[0] && v50->n128_f32[1] < *(selfCopy + 52))
        {
          v58 = *v47;
          v59 = *(selfCopy + 64);
          v60 = v50[1].n128_i8[0];
          *v47 = *v50;
          *(selfCopy + 64) = v60;
          v50[1].n128_u8[0] = v59;
          *v50 = v58;
        }
      }

LABEL_66:
      v65 = v16->n128_u32[0];
      if (v16->n128_u32[0] >= v30->n128_u32[0] && (v65 != v30->n128_u32[0] || v16->n128_f32[1] >= v30->n128_f32[1]))
      {
        if (v50->n128_u32[0] < v65 || v50->n128_u32[0] == v65 && v50->n128_f32[1] < v16->n128_f32[1])
        {
          v209 = v16[1].n128_u64[0];
          v182 = *v16;
          *v16 = *v50;
          v16[1].n128_u8[0] = v50[1].n128_u8[0];
          v50[1].n128_u8[0] = v209;
          *v50 = v182;
          if (v16->n128_u32[0] < v30->n128_u32[0] || v16->n128_u32[0] == v30->n128_u32[0] && v16->n128_f32[1] < v30->n128_f32[1])
          {
            v210 = v30[1].n128_i64[0];
            v183 = *v30;
            *v30 = *v16;
            v30[1].n128_u8[0] = v16[1].n128_u8[0];
            v16[1].n128_u8[0] = v210;
            *v16 = v183;
          }
        }

        goto LABEL_79;
      }

      if (v50->n128_u32[0] < v65 || v50->n128_u32[0] == v65 && v50->n128_f32[1] < v16->n128_f32[1])
      {
        v208 = v30[1].n128_u64[0];
        v181 = *v30;
        *v30 = *v50;
        v30[1].n128_u8[0] = v50[1].n128_u8[0];
      }

      else
      {
        v211 = v30[1].n128_i64[0];
        v184 = *v30;
        *v30 = *v16;
        v30[1].n128_u8[0] = v16[1].n128_u8[0];
        v16[1].n128_u8[0] = v211;
        *v16 = v184;
        if (v50->n128_u32[0] >= v16->n128_u32[0] && (v50->n128_u32[0] != v16->n128_u32[0] || v50->n128_f32[1] >= v16->n128_f32[1]))
        {
          goto LABEL_79;
        }

        v208 = v16[1].n128_u64[0];
        v181 = *v16;
        *v16 = *v50;
        v16[1].n128_u8[0] = v50[1].n128_u8[0];
      }

      v50[1].n128_u8[0] = v208;
      *v50 = v181;
LABEL_79:
      v212 = *(selfCopy + 16);
      v185 = *selfCopy;
      v66 = *v16;
      *(selfCopy + 16) = v16[1].n128_u8[0];
      *selfCopy = v66;
      a5 = v185;
      v16[1].n128_u8[0] = v212;
      *v16 = v185;
      goto LABEL_80;
    }

    v19 = *selfCopy;
    if (*selfCopy >= v16->n128_u32[0] && (v19 != v16->n128_u32[0] || *(selfCopy + 4) >= v16->n128_f32[1]))
    {
      if (*v9 < v19 || *v9 == v19 && a2[-2].n128_f32[3] < *(selfCopy + 4))
      {
        v200 = *(selfCopy + 16);
        v173 = *selfCopy;
        v23 = *v9;
        *(selfCopy + 16) = a2[-1].n128_u8[8];
        *selfCopy = v23;
        a5 = v173;
        a2[-1].n128_u8[8] = v200;
        *v9 = v173;
        if (*selfCopy < v16->n128_u32[0] || *selfCopy == v16->n128_u32[0] && *(selfCopy + 4) < v16->n128_f32[1])
        {
          v201 = v16[1].n128_u64[0];
          v174 = *v16;
          v24 = *selfCopy;
          v16[1].n128_u8[0] = *(selfCopy + 16);
          *v16 = v24;
          a5 = v174;
          *(selfCopy + 16) = v201;
          *selfCopy = v174;
        }
      }

      goto LABEL_80;
    }

    if (*v9 < v19 || *v9 == v19 && a2[-2].n128_f32[3] < *(selfCopy + 4))
    {
      v197 = v16[1].n128_u64[0];
      v170 = *v16;
      v20 = *v9;
      v16[1].n128_u8[0] = a2[-1].n128_u8[8];
      *v16 = v20;
    }

    else
    {
      v204 = v16[1].n128_u64[0];
      v177 = *v16;
      v41 = *selfCopy;
      v16[1].n128_u8[0] = *(selfCopy + 16);
      *v16 = v41;
      a5 = v177;
      *(selfCopy + 16) = v204;
      *selfCopy = v177;
      if (*v9 >= *selfCopy && (*v9 != *selfCopy || a2[-2].n128_f32[3] >= *(selfCopy + 4)))
      {
        goto LABEL_80;
      }

      v197 = *(selfCopy + 16);
      v170 = *selfCopy;
      v42 = *v9;
      *(selfCopy + 16) = a2[-1].n128_u8[8];
      *selfCopy = v42;
    }

    a5 = v170;
    a2[-1].n128_u8[8] = v197;
    *v9 = v170;
LABEL_80:
    --routes;
    if (a4)
    {
      v67 = *selfCopy;
LABEL_86:
      a5.n128_u32[0] = *(selfCopy + 4);
      v166 = *(selfCopy + 8);
        ;
      }

      if (i - 24 == selfCopy)
      {
        j = a2;
        if (i < a2)
        {
          v73 = *v9;
          j = (a2 - 24);
          if (*v9 >= v67)
          {
            j = (a2 - 24);
            do
            {
              if (v73 == v67)
              {
                if (i >= j || j->n128_f32[1] < a5.n128_f32[0])
                {
                  break;
                }
              }

              else if (i >= j)
              {
                break;
              }

              v74 = j[-2].n128_u32[2];
              j = (j - 24);
              v73 = v74;
            }

            while (v74 >= v67);
          }
        }
      }

      else
      {
        v70 = *v9;
        for (j = (a2 - 24); v70 >= v67 && (v70 != v67 || j->n128_f32[1] >= a5.n128_f32[0]); j = (j - 24))
        {
          v72 = j[-2].n128_u32[2];
          v70 = v72;
        }
      }

      selfCopy = i;
      if (i < j)
      {
        selfCopy = i;
        v75 = j;
        do
        {
          v213 = *(selfCopy + 16);
          v186 = *selfCopy;
          v76 = *v75;
          *(selfCopy + 16) = *(v75 + 16);
          *selfCopy = v76;
          *(v75 + 16) = v213;
          *v75 = v186;
          do
          {
            do
            {
              v77 = *(selfCopy + 24);
              selfCopy += 24;
              v78 = v77 == v67;
            }

            while (v77 < v67);
          }

          while (v78 && *(selfCopy + 4) < a5.n128_f32[0]);
          do
          {
            v80 = *(v75 - 24);
            v75 -= 24;
            v79 = v80;
          }

          while (v80 >= v67 && (v79 != v67 || *(v75 + 4) >= a5.n128_f32[0]));
        }

        while (selfCopy < v75);
      }

      if (selfCopy - 24 != self)
      {
        v81 = *(selfCopy - 24);
        *(self + 16) = *(selfCopy - 8);
        *self = v81;
      }

      *(selfCopy - 24) = v67;
      *(selfCopy - 20) = a5.n128_u32[0];
      *(selfCopy - 8) = BYTE8(v166);
      *(selfCopy - 16) = v166;
      if (i < j)
      {
        goto LABEL_122;
      }

      v82 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::$_4 &,-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate *>(self, selfCopy - 24, a5);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::$_4 &,-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate *>(selfCopy, a2, v83))
      {
        a2 = (selfCopy - 24);
        if (v82)
        {
          return a5.n128_f32[0];
        }

        goto LABEL_1;
      }

      if (!v82)
      {
LABEL_122:
        std::__introsort<std::_ClassicAlgPolicy,[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::$_4 &,[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate *,false>(self, selfCopy - 24, routes, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v68 = *(selfCopy - 24);
      v67 = *selfCopy;
      if (v68 < *selfCopy)
      {
        goto LABEL_86;
      }

      if (v68 == v67)
      {
        a5.n128_u32[0] = *(selfCopy + 4);
        v67 = *(selfCopy - 24);
        if (*(selfCopy - 20) < a5.n128_f32[0])
        {
          goto LABEL_86;
        }
      }

      else
      {
        a5.n128_u32[0] = *(selfCopy + 4);
        v68 = *selfCopy;
      }

      v167 = *(selfCopy + 8);
      v84 = *v9;
      if (v68 < *v9 || v68 == v84 && a5.n128_f32[0] < a2[-2].n128_f32[3])
      {
        do
        {
          v86 = *(selfCopy + 24);
          selfCopy += 24;
          v85 = v86;
        }

        while (v68 >= v86 && (v68 != v85 || a5.n128_f32[0] >= *(selfCopy + 4)));
      }

      else
      {
          ;
        }
      }

      k = a2;
      if (selfCopy < a2)
      {
        for (k = (a2 - 24); v68 < v84 || v68 == v84 && a5.n128_f32[0] < k->n128_f32[1]; k = (k - 24))
        {
          v88 = k[-2].n128_u32[2];
          v84 = v88;
        }
      }

      while (selfCopy < k)
      {
        v214 = *(selfCopy + 16);
        v187 = *selfCopy;
        v89 = *k;
        *(selfCopy + 16) = k[1].n128_u8[0];
        *selfCopy = v89;
        k[1].n128_u8[0] = v214;
        *k = v187;
        do
        {
          v91 = *(selfCopy + 24);
          selfCopy += 24;
          v90 = v91;
        }

        while (v68 >= v91 && (v68 != v90 || a5.n128_f32[0] >= *(selfCopy + 4)));
        do
        {
          do
          {
            v92 = k[-2].n128_u32[2];
            k = (k - 24);
            v93 = v68 == v92;
          }

          while (v68 < v92);
        }

        while (v93 && a5.n128_f32[0] < k->n128_f32[1]);
      }

      if (selfCopy - 24 != self)
      {
        v94 = *(selfCopy - 24);
        *(self + 16) = *(selfCopy - 8);
        *self = v94;
      }

      a4 = 0;
      *(selfCopy - 24) = v68;
      *(selfCopy - 20) = a5.n128_u32[0];
      *(selfCopy - 8) = BYTE8(v167);
      *(selfCopy - 16) = v167;
    }
  }

  v95 = (selfCopy + 24);
  v96 = *(selfCopy + 24);
  if (v96 < *selfCopy || v96 == *selfCopy && (a5.n128_u32[0] = *(selfCopy + 28), a5.n128_f32[0] < *(selfCopy + 4)))
  {
    if (*v9 < v96 || *v9 == v96 && a2[-2].n128_f32[3] < *(selfCopy + 28))
    {
      goto LABEL_210;
    }

    v215 = *(selfCopy + 16);
    v188 = *selfCopy;
    *selfCopy = *v95;
    *(selfCopy + 16) = *(selfCopy + 40);
    a5.n128_u32[0] = v188.n128_u32[0];
    *v95 = v188;
    *(selfCopy + 40) = v215;
    v97 = *(selfCopy + 24);
    if (*v9 < v97 || *v9 == v97 && (a5.n128_u32[0] = a2[-2].n128_u32[3], a5.n128_f32[0] < *(selfCopy + 28)))
    {
      a5 = *v95;
      v98 = *(selfCopy + 40);
      v99 = a2[-1].n128_u8[8];
      *v95 = *v9;
      *(selfCopy + 40) = v99;
      a2[-1].n128_u8[8] = v98;
      goto LABEL_211;
    }
  }

  else if (*v9 < v96 || *v9 == v96 && (a5.n128_u32[0] = a2[-2].n128_u32[3], a5.n128_f32[0] < *(selfCopy + 28)))
  {
    a5 = *v95;
    v157 = *(selfCopy + 40);
    v158 = a2[-1].n128_u8[8];
    *v95 = *v9;
    *(selfCopy + 40) = v158;
    a2[-1].n128_u8[8] = v157;
    *v9 = a5;
    v159 = *(selfCopy + 24);
    if (v159 < *selfCopy || v159 == *selfCopy && (a5.n128_u32[0] = *(selfCopy + 28), a5.n128_f32[0] < *(selfCopy + 4)))
    {
      v219 = *(selfCopy + 16);
      v194 = *selfCopy;
      *selfCopy = *v95;
      *(selfCopy + 16) = *(selfCopy + 40);
      a5.n128_u32[0] = v194.n128_u32[0];
      *v95 = v194;
      *(selfCopy + 40) = v219;
    }
  }

  return a5.n128_f32[0];
}

- (void)findAllOverlapRangesBetweenRoutes:(uint64_t)routes
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(routes + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(routes + 24) / *(routes + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *routes;
      *routes = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(routes + 8) = 0;
    }
  }
}

- (uint64_t)findAllOverlapRangesBetweenRoutes:(uint64_t)routes
{
  v2 = *(routes + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *routes;
  *routes = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return routes;
}

- (id)findAllDivergenceConvergenceBetweenRoute:(id)route andRoute:(id)andRoute
{
  v67[2] = *MEMORY[0x1E69E9840];
  routeCopy = route;
  andRouteCopy = andRoute;
  v8 = 0;
  v60 = andRouteCopy;
  if (routeCopy && andRouteCopy)
  {
    v9 = MNGetMNRouteDivergenceLog();
    v10 = os_signpost_id_make_with_pointer(v9, self);

    v11 = MNGetMNRouteDivergenceLog();
    v12 = v11;
    v57 = v10 - 1;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      v67[0] = routeCopy;
      v67[1] = v60;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:2];
      v14 = [(MNRouteDivergenceFinder *)self _routesArrayIdentifierStrings:v13];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v14;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "findAllDivergenceConvergenceBetweenRoute", "%@", &buf, 0xCu);
    }

    *(&buf + 1) = 0;
    v66 = 0;
    *&buf = &buf + 8;
    v59 = [(MNRouteDivergenceFinder *)self findFirstConvergenceBetweenRoute:routeCopy fromRouteCoordinate:0 andRoute:v60 fromRouteCoordinate:0];
    if ([v59 count] == 2)
    {
      v15 = [v59 objectAtIndexedSubscript:0];
      [v15 routeCoordinate];
      IsValid = GEOPolylineCoordinateIsValid();

      if (IsValid)
      {
        v17 = [v59 objectAtIndexedSubscript:0];
        routeCoordinate = [v17 routeCoordinate];
        v18 = [v59 objectAtIndexedSubscript:0];
        [v59 objectAtIndexedSubscript:1];
        v62 = *v61 = v18;
        std::__tree<std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>,std::__map_value_compare<geo::PolylineCoordinate,std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>,std::less<geo::PolylineCoordinate>,true>,std::allocator<std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>>>::__emplace_unique_key_args<geo::PolylineCoordinate,geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>(&buf, routeCoordinate, *(&routeCoordinate + 1));
      }
    }

    v58 = [(MNRouteDivergenceFinder *)self findFirstDivergenceBetweenRoute:routeCopy fromRouteCoordinate:0 andRoute:v60 fromRouteCoordinate:0];
    if ([v58 count] == 2)
    {
      v19 = [v58 objectAtIndexedSubscript:0];
      [v19 routeCoordinate];
      v20 = GEOPolylineCoordinateIsValid();

      if (v20)
      {
        v21 = [v58 objectAtIndexedSubscript:0];
        routeCoordinate = [v21 routeCoordinate];
        v22 = [v58 objectAtIndexedSubscript:0];
        [v58 objectAtIndexedSubscript:1];
        v62 = *v61 = v22;
        std::__tree<std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>,std::__map_value_compare<geo::PolylineCoordinate,std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>,std::less<geo::PolylineCoordinate>,true>,std::allocator<std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>>>::__emplace_unique_key_args<geo::PolylineCoordinate,geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>(&buf, routeCoordinate, *(&routeCoordinate + 1));
      }
    }

    if (v66)
    {
      v23 = *(&buf + 1);
      if (*(&buf + 1))
      {
        do
        {
          v24 = v23;
          v23 = *(v23 + 8);
        }

        while (v23);
      }

      else
      {
        v27 = &buf + 2;
        do
        {
          v24 = *(v27 + 2);
          v28 = *v24 == v27;
          v27 = v24;
        }

        while (v28);
      }

      while (1)
      {
        v40 = *(v24 + 5);
        v41 = *(v24 + 6);
        v42 = [routeCopy routeCoordinateForDistance:objc_msgSend(v40 afterRouteCoordinate:{"routeCoordinate"), self->_distancePaddingWhenAlternating}];
        v43 = [v60 routeCoordinateForDistance:objc_msgSend(v41 afterRouteCoordinate:{"routeCoordinate"), self->_distancePaddingWhenAlternating}];
        endRouteCoordinate = [routeCopy endRouteCoordinate];
        if (v42 > endRouteCoordinate || v42 == endRouteCoordinate && *(&v42 + 1) >= *(&endRouteCoordinate + 1))
        {
          break;
        }

        endRouteCoordinate2 = [v60 endRouteCoordinate];
        if (v43 > endRouteCoordinate2 || v43 == endRouteCoordinate2 && *(&v43 + 1) >= *(&endRouteCoordinate2 + 1))
        {
          break;
        }

        resultType = [v40 resultType];
        if (resultType == 1)
        {
          [(MNRouteDivergenceFinder *)self findFirstConvergenceBetweenRoute:routeCopy fromRouteCoordinate:v42 andRoute:v60 fromRouteCoordinate:v43];
        }

        else
        {
          [(MNRouteDivergenceFinder *)self findFirstDivergenceBetweenRoute:routeCopy fromRouteCoordinate:v42 andRoute:v60 fromRouteCoordinate:v43];
        }
        v31 = ;
        if ([v31 count] != 2)
        {
          goto LABEL_43;
        }

        v32 = [v31 objectAtIndexedSubscript:0];
        [v32 routeCoordinate];
        if (GEOPolylineCoordinateIsInvalid())
        {
          goto LABEL_42;
        }

        v33 = [v31 objectAtIndexedSubscript:1];
        [v33 routeCoordinate];
        IsInvalid = GEOPolylineCoordinateIsInvalid();

        if (IsInvalid)
        {
          goto LABEL_43;
        }

        if (resultType == 1)
        {
          v35 = 2;
        }

        else
        {
          v35 = 1;
        }

        v32 = [v31 objectAtIndexedSubscript:0];
        if ([v32 resultType] != v35)
        {
LABEL_42:

LABEL_43:
          break;
        }

        v36 = [v31 objectAtIndexedSubscript:1];
        v37 = [v36 resultType] == v35;

        if (!v37)
        {
          goto LABEL_43;
        }

        v38 = [v31 objectAtIndexedSubscript:0];
        routeCoordinate = [v38 routeCoordinate];
        v39 = [v31 objectAtIndexedSubscript:0];
        [v31 objectAtIndexedSubscript:1];
        v62 = *v61 = v39;
        v24 = std::__tree<std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>,std::__map_value_compare<geo::PolylineCoordinate,std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>,std::less<geo::PolylineCoordinate>,true>,std::allocator<std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>>>::__emplace_unique_key_args<geo::PolylineCoordinate,geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>(&buf, routeCoordinate, *(&routeCoordinate + 1));
      }

      v26 = [MEMORY[0x1E695DF70] arrayWithCapacity:v66];
      v45 = [MEMORY[0x1E695DF70] arrayWithCapacity:v66];
      v46 = buf;
      if (buf != (&buf + 8))
      {
        do
        {
          [v26 addObject:v46[5]];
          [v45 addObject:v46[6]];
          v47 = v46[1];
          if (v47)
          {
            do
            {
              v48 = v47;
              v47 = *v47;
            }

            while (v47);
          }

          else
          {
            do
            {
              v48 = v46[2];
              v28 = *v48 == v46;
              v46 = v48;
            }

            while (!v28);
          }

          v46 = v48;
        }

        while (v48 != (&buf + 8));
      }

      v49 = objc_alloc_init(MNRouteDivergenceResults);
      uniqueRouteID = [routeCopy uniqueRouteID];
      [(MNRouteDivergenceResults *)v49 setRouteID:uniqueRouteID];

      [(MNRouteDivergenceResults *)v49 setResults:v26];
      v51 = objc_alloc_init(MNRouteDivergenceResults);
      uniqueRouteID2 = [v60 uniqueRouteID];
      [(MNRouteDivergenceResults *)v51 setRouteID:uniqueRouteID2];

      [(MNRouteDivergenceResults *)v51 setResults:v45];
      v53 = MNGetMNRouteDivergenceLog();
      v54 = v53;
      if (v57 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v53))
      {
        *v61 = 0;
        _os_signpost_emit_with_name_impl(&dword_1D311E000, v54, OS_SIGNPOST_INTERVAL_END, v10, "findAllDivergenceConvergenceBetweenRoute", "", v61, 2u);
      }

      v64[0] = v49;
      v64[1] = v51;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:2];
    }

    else
    {
      v25 = MNGetMNRouteDivergenceLog();
      v26 = v25;
      if (v57 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
      {
        *v61 = 0;
        _os_signpost_emit_with_name_impl(&dword_1D311E000, v26, OS_SIGNPOST_INTERVAL_END, v10, "findAllDivergenceConvergenceBetweenRoute", "orderedResults empty", v61, 2u);
      }

      v8 = 0;
    }

    std::__tree<std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>,std::__map_value_compare<geo::PolylineCoordinate,std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>,std::less<geo::PolylineCoordinate>,true>,std::allocator<std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>>>::destroy(*(&buf + 1));
  }

  v55 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)findFirstUniqueRangeBetweenRoute:(id)route andRoute:(id)andRoute
{
  v30[2] = *MEMORY[0x1E69E9840];
  routeCopy = route;
  andRouteCopy = andRoute;
  v8 = andRouteCopy;
  v9 = 0;
  if (routeCopy && andRouteCopy)
  {
    v10 = objc_alloc_init(MNRouteOverlapResult);
    uniqueRouteID = [routeCopy uniqueRouteID];
    [(MNRouteOverlapResult *)v10 setRouteID:uniqueRouteID];

    -[MNRouteOverlapResult setRouteRange:](v10, "setRouteRange:", 0, [routeCopy endRouteCoordinate]);
    v12 = objc_alloc_init(MNRouteOverlapResult);
    uniqueRouteID2 = [v8 uniqueRouteID];
    [(MNRouteOverlapResult *)v12 setRouteID:uniqueRouteID2];

    -[MNRouteOverlapResult setRouteRange:](v12, "setRouteRange:", 0, [v8 endRouteCoordinate]);
    v30[0] = v10;
    v30[1] = v12;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
    v14 = [(MNRouteDivergenceFinder *)self findFirstDivergenceBetweenRoute:routeCopy andRoute:v8];
    v15 = [v14 objectAtIndexedSubscript:0];
    routeCoordinate = [v15 routeCoordinate];

    v17 = [v14 objectAtIndexedSubscript:1];
    routeCoordinate2 = [v17 routeCoordinate];

    if ((GEOPolylineCoordinateIsInvalid() & 1) == 0 && (GEOPolylineCoordinateIsInvalid() & 1) == 0)
    {
      v28 = -[MNRouteDivergenceFinder findFirstConvergenceBetweenRoute:fromRouteCoordinate:andRoute:fromRouteCoordinate:](self, "findFirstConvergenceBetweenRoute:fromRouteCoordinate:andRoute:fromRouteCoordinate:", routeCopy, [routeCopy routeCoordinateForDistance:routeCoordinate afterRouteCoordinate:self->_distancePaddingWhenAlternating], v8, objc_msgSend(v8, "routeCoordinateForDistance:afterRouteCoordinate:", routeCoordinate2, self->_distancePaddingWhenAlternating));
      v19 = [v28 objectAtIndexedSubscript:0];
      routeCoordinate3 = [v19 routeCoordinate];

      v21 = [v28 objectAtIndexedSubscript:1];
      routeCoordinate4 = [v21 routeCoordinate];

      if ((GEOPolylineCoordinateIsInvalid() & 1) != 0 || GEOPolylineCoordinateIsInvalid())
      {
        routeCoordinate3 = [routeCopy endRouteCoordinate];
        routeCoordinate4 = [v8 endRouteCoordinate];
      }

      v22 = objc_alloc_init(MEMORY[0x1E69A23A8]);
      [(MNRouteOverlapResult *)v10 setUniqueRanges:v22];

      uniqueRanges = [(MNRouteOverlapResult *)v10 uniqueRanges];
      [uniqueRanges addCoordinateRange:{routeCoordinate, routeCoordinate3}];

      v24 = objc_alloc_init(MEMORY[0x1E69A23A8]);
      [(MNRouteOverlapResult *)v12 setUniqueRanges:v24];

      uniqueRanges2 = [(MNRouteOverlapResult *)v12 uniqueRanges];
      [uniqueRanges2 addCoordinateRange:{routeCoordinate2, routeCoordinate4}];
    }
  }

  v26 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)findFirstConvergenceBetweenRoute:(id)route fromRouteCoordinate:(PolylineCoordinate)coordinate andRoute:(id)andRoute fromRouteCoordinate:(PolylineCoordinate)routeCoordinate
{
  v24[2] = *MEMORY[0x1E69E9840];
  routeCopy = route;
  andRouteCopy = andRoute;
  v12 = andRouteCopy;
  v13 = 0;
  if (routeCopy && andRouteCopy)
  {
    v22 = 0xBF80000000000000;
    v23 = 0xBF80000000000000;
    [(MNRouteDivergenceFinder *)self _findFirstConvergenceBetweenRoute:routeCopy fromRouteCoordinate:coordinate andRoute:andRouteCopy fromRouteCoordinate:routeCoordinate outRouteCoordinate:&v23 outRouteCoordinate:&v22];
    v14 = objc_alloc_init(MNRouteDivergenceResult);
    uniqueRouteID = [routeCopy uniqueRouteID];
    [(MNRouteDivergenceResult *)v14 setRouteID:uniqueRouteID];

    [(MNRouteDivergenceResult *)v14 setRouteCoordinate:v23];
    [routeCopy pointAtRouteCoordinate:v23];
    [(MNRouteDivergenceResult *)v14 setLocationCoordinate:?];
    if (GEOPolylineCoordinateIsValid())
    {
      v16 = 2;
    }

    else
    {
      v16 = 0;
    }

    [(MNRouteDivergenceResult *)v14 setResultType:v16];
    v17 = objc_alloc_init(MNRouteDivergenceResult);
    uniqueRouteID2 = [v12 uniqueRouteID];
    [(MNRouteDivergenceResult *)v17 setRouteID:uniqueRouteID2];

    [(MNRouteDivergenceResult *)v17 setRouteCoordinate:v22];
    [v12 pointAtRouteCoordinate:v22];
    [(MNRouteDivergenceResult *)v17 setLocationCoordinate:?];
    if (GEOPolylineCoordinateIsValid())
    {
      v19 = 2;
    }

    else
    {
      v19 = 0;
    }

    [(MNRouteDivergenceResult *)v17 setResultType:v19];
    v24[0] = v14;
    v24[1] = v17;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  }

  v20 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)findFirstDivergenceBetweenRoute:(id)route fromRouteCoordinate:(PolylineCoordinate)coordinate andRoute:(id)andRoute fromRouteCoordinate:(PolylineCoordinate)routeCoordinate
{
  v22[2] = *MEMORY[0x1E69E9840];
  routeCopy = route;
  andRouteCopy = andRoute;
  v12 = andRouteCopy;
  v13 = 0;
  if (routeCopy && andRouteCopy)
  {
    v20 = 0xBF80000000000000;
    v21 = 0xBF80000000000000;
    -[MNRouteDivergenceFinder _findFirstDivergenceBetweenRoute:range:andRoute:range:outRouteCoordinate:outRouteCoordinate:](self, "_findFirstDivergenceBetweenRoute:range:andRoute:range:outRouteCoordinate:outRouteCoordinate:", routeCopy, coordinate, [routeCopy endRouteCoordinate], andRouteCopy, routeCoordinate, objc_msgSend(andRouteCopy, "endRouteCoordinate"), &v21, &v20);
    v14 = objc_alloc_init(MNRouteDivergenceResult);
    uniqueRouteID = [routeCopy uniqueRouteID];
    [(MNRouteDivergenceResult *)v14 setRouteID:uniqueRouteID];

    [(MNRouteDivergenceResult *)v14 setRouteCoordinate:v21];
    [routeCopy pointAtRouteCoordinate:v21];
    [(MNRouteDivergenceResult *)v14 setLocationCoordinate:?];
    [(MNRouteDivergenceResult *)v14 setResultType:GEOPolylineCoordinateIsValid()];
    v16 = objc_alloc_init(MNRouteDivergenceResult);
    uniqueRouteID2 = [v12 uniqueRouteID];
    [(MNRouteDivergenceResult *)v16 setRouteID:uniqueRouteID2];

    [(MNRouteDivergenceResult *)v16 setRouteCoordinate:v20];
    [v12 pointAtRouteCoordinate:v20];
    [(MNRouteDivergenceResult *)v16 setLocationCoordinate:?];
    [(MNRouteDivergenceResult *)v16 setResultType:GEOPolylineCoordinateIsValid()];
    v22[0] = v14;
    v22[1] = v16;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  }

  v18 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)findFirstConvergenceBetweenRoute:(id)route andRoute:(id)andRoute
{
  v4 = [(MNRouteDivergenceFinder *)self findFirstConvergenceBetweenRoute:route fromRouteCoordinate:0 andRoute:andRoute fromRouteCoordinate:0];

  return v4;
}

- (id)findFirstDivergenceBetweenRoute:(id)route andRoute:(id)andRoute
{
  v4 = [(MNRouteDivergenceFinder *)self findFirstDivergenceBetweenRoute:route fromRouteCoordinate:0 andRoute:andRoute fromRouteCoordinate:0];

  return v4;
}

@end