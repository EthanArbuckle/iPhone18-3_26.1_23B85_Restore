@interface GEOComposedRoute(MNRouteDivergenceFinder)
- (MNRouteDivergenceFinderBoundingSection)_navigation_boundingSectionForRange:()MNRouteDivergenceFinder leafIndex:;
- (id)_navigation_allLeafBoundingSections;
- (id)_navigation_leafBoundingSectionContainingCoordinate:()MNRouteDivergenceFinder;
- (id)_navigation_leafBoundingSectionForRouteCoordinate:()MNRouteDivergenceFinder;
- (id)_navigation_leafBoundingSectionsIntersectingSection:()MNRouteDivergenceFinder;
- (id)_navigation_leafBoundingSectionsIntersectingSection:()MNRouteDivergenceFinder paddingMapPoints:;
- (id)_navigation_rootBoundingSection;
@end

@implementation GEOComposedRoute(MNRouteDivergenceFinder)

- (id)_navigation_allLeafBoundingSections
{
  _navigation_rootBoundingSection = [self _navigation_rootBoundingSection];
  if (_navigation_rootBoundingSection)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __80__GEOComposedRoute_MNRouteDivergenceFinder___navigation_allLeafBoundingSections__block_invoke;
    v7[3] = &unk_1E842F040;
    v3 = array;
    v8 = v3;
    [_navigation_rootBoundingSection traverseWithHandler:v7];
    if ([v3 count])
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_navigation_leafBoundingSectionsIntersectingSection:()MNRouteDivergenceFinder paddingMapPoints:
{
  v6 = a4;
  _navigation_rootBoundingSection = [self _navigation_rootBoundingSection];
  v8 = [_navigation_rootBoundingSection leafSectionsIntersectingSection:v6 paddingMapPoints:a2];

  return v8;
}

- (id)_navigation_leafBoundingSectionsIntersectingSection:()MNRouteDivergenceFinder
{
  v4 = a3;
  _navigation_rootBoundingSection = [self _navigation_rootBoundingSection];
  v6 = [_navigation_rootBoundingSection leafSectionsIntersectingSection:v4 paddingMapPoints:0.0];

  return v6;
}

- (id)_navigation_leafBoundingSectionContainingCoordinate:()MNRouteDivergenceFinder
{
  _navigation_rootBoundingSection = [self _navigation_rootBoundingSection];
  v8 = _navigation_rootBoundingSection;
  if (_navigation_rootBoundingSection)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__10786;
    v16 = __Block_byref_object_dispose__10787;
    v17 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __97__GEOComposedRoute_MNRouteDivergenceFinder___navigation_leafBoundingSectionContainingCoordinate___block_invoke;
    v11[3] = &unk_1E842F018;
    v11[4] = &v12;
    *&v11[5] = a2;
    *&v11[6] = a3;
    *&v11[7] = a4;
    [_navigation_rootBoundingSection traverseWithHandler:v11];
    v9 = v13[5];
    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_navigation_leafBoundingSectionForRouteCoordinate:()MNRouteDivergenceFinder
{
  _navigation_rootBoundingSection = [self _navigation_rootBoundingSection];
  [_navigation_rootBoundingSection range];
  if (GEOPolylineCoordinateInRange())
  {
    if (_navigation_rootBoundingSection)
    {
      while (([_navigation_rootBoundingSection isLeaf] & 1) == 0)
      {
        left = [_navigation_rootBoundingSection left];
        if (left && ([_navigation_rootBoundingSection left], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "range"), v4 = GEOPolylineCoordinateInRange(), v3, left, v4))
        {
          left2 = [_navigation_rootBoundingSection left];
        }

        else
        {
          right = [_navigation_rootBoundingSection right];
          if (!right || ([_navigation_rootBoundingSection right], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "range"), v8 = GEOPolylineCoordinateInRange(), v7, right, !v8))
          {

            _navigation_rootBoundingSection = 0;
            break;
          }

          left2 = [_navigation_rootBoundingSection right];
        }

        v9 = left2;

        _navigation_rootBoundingSection = v9;
        if (!v9)
        {
          break;
        }
      }
    }

    _navigation_rootBoundingSection = _navigation_rootBoundingSection;
    v10 = _navigation_rootBoundingSection;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (MNRouteDivergenceFinderBoundingSection)_navigation_boundingSectionForRange:()MNRouteDivergenceFinder leafIndex:
{
  v38 = *MEMORY[0x1E69E9840];
  if (GEOPolylineCoordinateRangeIsInvalid())
  {
    v9 = 0;
  }

  else
  {
    [self distanceBetweenRouteCoordinate:a3 andRouteCoordinate:a4];
    v11 = v10;
    v9 = objc_alloc_init(MNRouteDivergenceFinderBoundingSection);
    [(MNRouteDivergenceFinderBoundingSection *)v9 setRange:a3, a4];
    [(MNRouteDivergenceFinderBoundingSection *)v9 setLength:v11];
    [self distance];
    v13 = v12 * 0.001;
    v14 = 1609.0;
    if (v13 >= 1609.0)
    {
      [self distance];
      v14 = v15 * 0.001;
    }

    v16 = v11 <= v14 || a3 + 1 >= a4;
    if (v16 || ([self routeCoordinateForDistance:a3 afterRouteCoordinate:v11 * 0.5], v17 = GEOPolylineCoordinateNearestIndex(), (GEOPolylineCoordinateEqual() & 1) != 0) || (GEOPolylineCoordinateEqual() & 1) != 0)
    {
      a3 = a3;
      if (a3 <= a4)
      {
        v18 = a4 + 1;
        v19 = -180.0;
        v20 = 180.0;
        v21 = 180.0;
        v22 = -180.0;
        do
        {
          [self pointAt:a3];
          v20 = fmin(v20, v23);
          v21 = fmin(v21, v24);
          v19 = fmax(v19, v23);
          v22 = fmax(v22, v24);
          ++a3;
        }

        while (v18 != a3);
      }

      GEOMapRectForCoordinateRegion();
      [(MNRouteDivergenceFinderBoundingSection *)v9 setBoundingRect:?];
      ++*a5;
      [(MNRouteDivergenceFinderBoundingSection *)v9 setLeafIndex:?];
    }

    else
    {
      v27 = [self _navigation_boundingSectionForRange:a3 leafIndex:{v17, a5}];
      v28 = [self _navigation_boundingSectionForRange:v17 leafIndex:{a4, a5}];
      v29 = v28;
      if (!v27 || !v28)
      {
        v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error creating child bounding sections"];
        v33 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = 136315394;
          v35 = "left != nil && right != nil";
          v36 = 2112;
          v37 = v32;
          _os_log_impl(&dword_1D311E000, v33, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", &v34, 0x16u);
        }
      }

      [(MNRouteDivergenceFinderBoundingSection *)v9 setLeft:v27];
      [(MNRouteDivergenceFinderBoundingSection *)v9 setRight:v29];
      left = [(MNRouteDivergenceFinderBoundingSection *)v9 left];
      [left boundingRect];
      right = [(MNRouteDivergenceFinderBoundingSection *)v9 right];
      [right boundingRect];
      GEOMapRectUnion();
      [(MNRouteDivergenceFinderBoundingSection *)v9 setBoundingRect:?];

      [(MNRouteDivergenceFinderBoundingSection *)v9 setLeafIndex:0x7FFFFFFFFFFFFFFFLL];
    }
  }

  v25 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_navigation_rootBoundingSection
{
  v4 = objc_getAssociatedObject(self, a2);
  if (!v4)
  {
    v6 = 0;
    v4 = [self _navigation_boundingSectionForRange:0 leafIndex:{objc_msgSend(self, "endRouteCoordinate"), &v6}];
    objc_setAssociatedObject(self, a2, v4, 1);
  }

  return v4;
}

@end