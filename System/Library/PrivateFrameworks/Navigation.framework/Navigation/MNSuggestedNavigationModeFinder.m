@interface MNSuggestedNavigationModeFinder
- (MNSuggestedNavigationModeFinder)initWithRoute:(id)a3 context:(unint64_t)a4 ignoreDeviceNavigability:(BOOL)a5;
- (unint64_t)suggestedNavigationModeForLocation:(id)a3;
@end

@implementation MNSuggestedNavigationModeFinder

- (unint64_t)suggestedNavigationModeForLocation:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = a3;
  route = self->_route;
  if (route)
  {
    v6 = [(GEOComposedRoute *)route origin];
    if (!v6)
    {
      v7 = MNGetMNSuggestedNavigationModeLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v9 = "Returning None because route has no origin.";
        v10 = v7;
        v11 = 2;
LABEL_8:
        _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_ERROR, v9, buf, v11);
      }

LABEL_9:
      v12 = 0;
LABEL_72:

      goto LABEL_73;
    }

    if ([(GEOComposedRoute *)self->_route transportType]== 1)
    {
      v7 = MNGetMNSuggestedNavigationModeLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v8 = "Returning Stepping because route's transport type is transit.";
LABEL_13:
        v12 = 2;
        _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 2u);
        goto LABEL_72;
      }

      goto LABEL_71;
    }

    if ([(GEOComposedRoute *)self->_route isWalkingOnlyTransitRoute])
    {
      v7 = MNGetMNSuggestedNavigationModeLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v8 = "Returning Stepping because route is a walking-only transit route.";
        goto LABEL_13;
      }

LABEL_71:
      v12 = 2;
      goto LABEL_72;
    }

    context = self->_context;
    if (context != 1)
    {
      if (!context)
      {
        if (([v6 isCurrentLocation] & 1) == 0)
        {
          v7 = MNGetMNSuggestedNavigationModeLog();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEFAULT, "Returning SteppingNoTracking because route's origin is not the current location for FastestRoute context.", buf, 2u);
          }

          v12 = 3;
          goto LABEL_72;
        }

        v14 = [(GEOComposedRoute *)self->_route transportType];
        if (v14 <= 3 && v14 != 1)
        {
          if (([(GEOComposedRoute *)self->_route isNavigable]& 1) == 0)
          {
            v7 = MNGetMNSuggestedNavigationModeLog();
            if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v8 = "Returning Stepping because route is not navigable for FastestRoute context.";
              goto LABEL_13;
            }

            goto LABEL_71;
          }

          v15 = [(GEOCountryConfiguration *)self->_countryConfiguration currentCountrySupportsNavigation];
          v7 = MNGetMNSuggestedNavigationModeLog();
          v16 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
          if ((v15 & 1) == 0)
          {
            if (v16)
            {
              *buf = 0;
              v8 = "Returning Stepping because the current device or country does not support navigation for FastestRoute context.";
              goto LABEL_13;
            }

            goto LABEL_71;
          }

          if (v16)
          {
            *buf = 0;
            v17 = "Returning TurnByTurn because route's origin is the current location for FastestRoute context.";
            v18 = v7;
            v19 = 2;
LABEL_59:
            _os_log_impl(&dword_1D311E000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
            goto LABEL_60;
          }

          goto LABEL_60;
        }

        v7 = MNGetMNSuggestedNavigationModeLog();
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_71;
        }

        v35 = [(GEOComposedRoute *)self->_route transportType];
        if (v35 >= 7)
        {
          v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v35];
        }

        else
        {
          v36 = *(&off_1E8430C98 + v35);
        }

        *buf = 138412290;
        *v45 = v36;
        v41 = "Returning Stepping because transport type %@ does not support turn by turn for FastestRoute context.";
        goto LABEL_70;
      }

      v7 = MNGetMNSuggestedNavigationModeLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v34 = self->_context;
        *buf = 67109120;
        *v45 = v34;
        v9 = "Returning None because unknown context (%d) was specified.";
        v10 = v7;
        v11 = 8;
        goto LABEL_8;
      }

      goto LABEL_9;
    }

    if (!v4)
    {
      v7 = MNGetMNSuggestedNavigationModeLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v8 = "Returning Stepping because location is nil for CuratedOrCustomRoute context.";
        goto LABEL_13;
      }

      goto LABEL_71;
    }

    [v4 coordinate];
    v21 = v20;
    v23 = v22;
    [v6 coordinate];
    GEOCalculateDistance();
    v25 = v24;
    GEOConfigGetDouble();
    v27 = v26;
    if (v25 > v26)
    {
      if (!GEOConfigGetBOOL())
      {
LABEL_29:
        v7 = MNGetMNSuggestedNavigationModeLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          *v45 = v25;
          *&v45[4] = 1024;
          *&v45[6] = v27;
          _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEFAULT, "Returning NavigateToRoute because location exceeds distance threshold (%dm / %dm) to route origin for CuratedOrCustomRoute context.", buf, 0xEu);
        }

        v12 = 4;
        goto LABEL_72;
      }

      v28 = [objc_alloc(MEMORY[0x1E69A2548]) initWithRoute:self->_route auditToken:0];
      v29 = [objc_alloc(MEMORY[0x1E69A1E70]) initWithGEOCoordinate:{v21, v23}];
      v30 = [v28 matchToRouteWithLocation:v29];
      GEOConfigGetDouble();
      if (!v30 || (v32 = v31, [v30 distanceFromRoute], v33 > v32))
      {

        goto LABEL_29;
      }

      v37 = MNGetMNSuggestedNavigationModeLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        [v30 distanceFromRoute];
        *buf = 67109888;
        *v45 = v25;
        *&v45[4] = 1024;
        *&v45[6] = v27;
        v46 = 1024;
        v47 = v38;
        v48 = 1024;
        v49 = v32;
        _os_log_impl(&dword_1D311E000, v37, OS_LOG_TYPE_DEFAULT, "Location exceeds distance threshold (%dm / %dm) from route origin, but still within threshold of custom route (%dm / %dm) to allow mid-route start.", buf, 0x1Au);
      }
    }

    v39 = [(GEOComposedRoute *)self->_route transportType];
    if (v39 <= 3 && v39 != 1)
    {
      if (self->_ignoreDeviceNavigability)
      {
        goto LABEL_52;
      }

      if (![(GEOCountryConfiguration *)self->_countryConfiguration currentCountrySupportsNavigation])
      {
        v7 = MNGetMNSuggestedNavigationModeLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v8 = "Returning Stepping because the current device or country does not support navigation for CuratedOrCustomRoute context.";
          goto LABEL_13;
        }

        goto LABEL_71;
      }

      if (self->_ignoreDeviceNavigability)
      {
LABEL_52:
        if (([(GEOCountryConfiguration *)self->_countryConfiguration currentCountrySupportsNavigationIgnoringDevice]& 1) == 0)
        {
          v7 = MNGetMNSuggestedNavigationModeLog();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v8 = "Returning Stepping because the current country does not support navigation for CuratedOrCustomRoute context.";
            goto LABEL_13;
          }

          goto LABEL_71;
        }
      }

      v7 = MNGetMNSuggestedNavigationModeLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *v45 = v25;
        *&v45[4] = 1024;
        *&v45[6] = v27;
        v17 = "Returning TurnByTurn because location is within distance threshold (%dm / %dm) to route origin for CuratedOrCustomRoute context.";
        v18 = v7;
        v19 = 14;
        goto LABEL_59;
      }

LABEL_60:
      v12 = 1;
      goto LABEL_72;
    }

    v7 = MNGetMNSuggestedNavigationModeLog();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_71;
    }

    v40 = [(GEOComposedRoute *)self->_route transportType];
    if (v40 >= 7)
    {
      v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v40];
    }

    else
    {
      v36 = *(&off_1E8430C98 + v40);
    }

    *buf = 138412290;
    *v45 = v36;
    v41 = "Returning Stepping because transport type %@ does not support turn by turn for CuratedOrCustomRoute context";
LABEL_70:
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEFAULT, v41, buf, 0xCu);

    goto LABEL_71;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_1D311E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: _route != ((void*)0)", buf, 2u);
  }

  v12 = 0;
LABEL_73:

  v42 = *MEMORY[0x1E69E9840];
  return v12;
}

- (MNSuggestedNavigationModeFinder)initWithRoute:(id)a3 context:(unint64_t)a4 ignoreDeviceNavigability:(BOOL)a5
{
  v9 = a3;
  v15.receiver = self;
  v15.super_class = MNSuggestedNavigationModeFinder;
  v10 = [(MNSuggestedNavigationModeFinder *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_route, a3);
    v11->_context = a4;
    v12 = [MEMORY[0x1E69A1CD8] sharedConfiguration];
    countryConfiguration = v11->_countryConfiguration;
    v11->_countryConfiguration = v12;

    v11->_ignoreDeviceNavigability = a5;
  }

  return v11;
}

@end