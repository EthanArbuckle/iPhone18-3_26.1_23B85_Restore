@interface GEOComposedRoute
@end

@implementation GEOComposedRoute

void __52__GEOComposedRoute_MNExtras__userRequestedWaypoints__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isServerProvidedWaypoint] & 1) == 0)
  {
    [*(a1 + 32) addObject:v3];
  }
}

uint64_t __122__GEOComposedRoute_MNExtras___pointsConverge_pointCount_otherPoints_pointCount_tolerance_outCoordinatesA_outCoordinatesB___block_invoke_103(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 routeCoordinate];
  [v5 routeCoordinate];
  v6 = GEOPolylineCoordinateCompare();

  return v6;
}

uint64_t __122__GEOComposedRoute_MNExtras___pointsConverge_pointCount_otherPoints_pointCount_tolerance_outCoordinatesA_outCoordinatesB___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 point];
  v7 = v6;
  [v5 point];
  if (v7 < v8)
  {
    goto LABEL_2;
  }

  if (v7 > v8)
  {
LABEL_4:
    v9 = 1;
    goto LABEL_10;
  }

  if (![v4 isStartOfSegment] || (objc_msgSend(v5, "isStartOfSegment") & 1) != 0)
  {
    if (([v4 isStartOfSegment] & 1) != 0 || (objc_msgSend(v5, "isStartOfSegment") & 1) == 0)
    {
      v9 = 0;
      goto LABEL_10;
    }

    goto LABEL_4;
  }

LABEL_2:
  v9 = -1;
LABEL_10:

  return v9;
}

void __80__GEOComposedRoute_MNRouteDivergenceFinder___navigation_allLeafBoundingSections__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isLeaf])
  {
    [*(a1 + 32) addObject:v3];
  }
}

void __97__GEOComposedRoute_MNRouteDivergenceFinder___navigation_leafBoundingSectionContainingCoordinate___block_invoke(uint64_t a1, void *a2, BOOL *a3)
{
  v6 = a2;
  v7 = v6;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v10 = v6;
    v8 = [v6 isLeaf];
    v7 = v10;
    if (v8)
    {
      v9 = [v10 containsCoordinate:{*(a1 + 40), *(a1 + 48), *(a1 + 56)}];
      v7 = v10;
      if (v9)
      {
        objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
        v7 = v10;
      }
    }
  }

  *a3 = *(*(*(a1 + 32) + 8) + 40) == 0;
}

@end