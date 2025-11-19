@interface MapsSuggestionsDestinationLink
- (BOOL)addBreadCrumbIfWithin:(id)a3;
- (BOOL)hasLinkOptions;
- (BOOL)isEqual:(id)a3;
- (MapsSuggestionsDestination)from;
- (MapsSuggestionsDestination)to;
- (NSString)description;
- (double)confidenceOfHavingBeenOnDestinationLink;
- (double)containsLocation:(id)a3;
- (double)containsTime:(id)a3;
- (id)initFromDestination:(id)a3 toDestination:(id)a4;
- (id)objectForJSON;
- (void)addETA:(id)a3;
- (void)addLinkOption:(id)a3;
- (void)addRoute:(id)a3;
@end

@implementation MapsSuggestionsDestinationLink

- (id)initFromDestination:(id)a3 toDestination:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = MapsSuggestionsDestinationLink;
  v8 = [(MapsSuggestionsDestinationLink *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_from, v6);
    objc_storeWeak(&v9->_to, v7);
    v10 = [[NSMutableArray alloc] initWithCapacity:1];
    destinationLinkOptions = v9->_destinationLinkOptions;
    v9->_destinationLinkOptions = v10;

    v12 = [[NSMutableArray alloc] initWithCapacity:0];
    breadcrumbs = v9->_breadcrumbs;
    v9->_breadcrumbs = v12;
  }

  return v9;
}

- (void)addLinkOption:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self->_destinationLinkOptions;
    objc_sync_enter(v5);
    [(NSMutableArray *)self->_destinationLinkOptions addObject:v4];
    objc_sync_exit(v5);
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v7 = 136446978;
      v8 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDestinationLink.mm";
      v9 = 1024;
      v10 = 39;
      v11 = 2082;
      v12 = "[MapsSuggestionsDestinationLink addLinkOption:]";
      v13 = 2082;
      v14 = "nil == (linkOption)";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a linkOption", &v7, 0x26u);
    }
  }
}

- (void)addETA:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self->_destinationLinkOptions;
    objc_sync_enter(v5);
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = self->_destinationLinkOptions;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v7)
    {
      v8 = *v11;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v6);
        }

        if ([*(*(&v10 + 1) + 8 * v9) updateETA:{v4, v10}])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:

      v6 = [[MapsSuggestionsDestinationLinkOption alloc] initWithETA:v4];
      [(MapsSuggestionsDestinationLink *)self addLinkOption:v6];
    }

    objc_sync_exit(v5);
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(&v5->super.super, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v16 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDestinationLink.mm";
      v17 = 1024;
      v18 = 47;
      v19 = 2082;
      v20 = "[MapsSuggestionsDestinationLink addETA:]";
      v21 = 2082;
      v22 = "nil == (eta)";
      _os_log_impl(&_mh_execute_header, &v5->super.super, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires ETA", buf, 0x26u);
    }
  }
}

- (void)addRoute:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self->_destinationLinkOptions;
    objc_sync_enter(v5);
    v6 = [[MapsSuggestionsDestinationLinkOption alloc] initWithRoute:v4];
    [(MapsSuggestionsDestinationLink *)self addLinkOption:v6];

    objc_sync_exit(v5);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = 136446978;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDestinationLink.mm";
      v10 = 1024;
      v11 = 65;
      v12 = 2082;
      v13 = "[MapsSuggestionsDestinationLink addRoute:]";
      v14 = 2082;
      v15 = "nil == (route)";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a route", &v8, 0x26u);
    }
  }
}

- (BOOL)addBreadCrumbIfWithin:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self->_breadcrumbs;
    objc_sync_enter(v5);
    v6 = [v4 location];
    [(MapsSuggestionsDestinationLink *)self containsLocation:v6];
    v8 = v7;
    MapsSuggestionsConfidenceLevelFromPrecent(0.75);
    v10 = v9;

    if (v8 > v10)
    {
      [(NSMutableArray *)self->_breadcrumbs addObject:v4];
      objc_sync_exit(v5);

      v12 = 1;
      goto LABEL_9;
    }

    objc_sync_exit(v5);
  }

  else
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v14 = 136446978;
      v15 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDestinationLink.mm";
      v16 = 1024;
      v17 = 74;
      v18 = 2082;
      v19 = "[MapsSuggestionsDestinationLink addBreadCrumbIfWithin:]";
      v20 = 2082;
      v21 = "nil == (breadcrumb)";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a breadcrumb", &v14, 0x26u);
    }
  }

  v12 = 0;
LABEL_9:

  return v12;
}

- (double)containsLocation:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = MapsSuggestionsConfidenceDontKnow();
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v6 = self->_destinationLinkOptions;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v54 objects:v58 count:16];
    if (v7)
    {
      v8 = *v55;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v55 != v8)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v54 + 1) + 8 * i) containsLocation:v4];
          v5 = MapsSuggestionsBestConfidence(v5, v10);
        }

        v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v54 objects:v58 count:16];
      }

      while (v7);
    }

    if (v5 == MapsSuggestionsConfidenceDontKnow())
    {
      WeakRetained = objc_loadWeakRetained(&self->_from);
      v12 = objc_loadWeakRetained(&self->_to);
      if (WeakRetained)
      {
        v13 = [WeakRetained location];
        v14 = v13 == 0;

        if (v12)
        {
          v15 = v14;
        }

        else
        {
          v15 = 1;
        }

        if ((v15 & 1) == 0)
        {
          v16 = [v12 location];
          v17 = v16 == 0;

          if (!v17)
          {
            [v4 coordinate];
            v19 = v18;
            v20 = [WeakRetained location];
            v53 = v19;
            [v20 coordinate];
            v52 = v21;

            [v4 coordinate];
            v23 = v22;
            v24 = [v12 location];
            v51 = v23;
            [v24 coordinate];
            v50 = v25;

            v26 = [v12 location];
            [v26 coordinate];
            v28 = v27;
            v29 = [WeakRetained location];
            [v29 coordinate];
            v31 = v30;

            [v4 coordinate];
            v33 = v32;
            v34 = [WeakRetained location];
            [v34 coordinate];
            v36 = v35;

            [v4 coordinate];
            v38 = v37;
            v39 = [v12 location];
            [v39 coordinate];
            v41 = v40;

            v42 = [v12 location];
            [v42 coordinate];
            v44 = v43;
            v45 = [WeakRetained location];
            [v45 coordinate];
            v47 = v46;

            v48 = sqrt((v44 - v47) * (v44 - v47) + (v28 - v31) * (v28 - v31)) / (sqrt((v33 - v36) * (v33 - v36) + (v53 - v52) * (v53 - v52)) + sqrt((v38 - v41) * (v38 - v41) + (v51 - v50) * (v51 - v50))) * 2.0 + -1.0;
            if (v48 <= 0.0)
            {
              v5 = MapsSuggestionsConfidenceDefinitelyFalse();
            }

            else
            {
              v5 = v48 * MapsSuggestionsConfidenceDefinitelyTrue();
            }
          }
        }
      }
    }
  }

  else
  {
    v5 = MapsSuggestionsConfidenceDontKnow();
  }

  return v5;
}

- (double)containsTime:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = MapsSuggestionsConfidenceDontKnow();
    v6 = self->_destinationLinkOptions;
    objc_sync_enter(v6);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = self->_destinationLinkOptions;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v13 + 1) + 8 * i) containsTime:{v4, v13}];
          v5 = MapsSuggestionsBestConfidence(v5, v11);
        }

        v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    objc_sync_exit(v6);
  }

  else
  {
    v5 = MapsSuggestionsConfidenceDontKnow();
  }

  return v5;
}

- (double)confidenceOfHavingBeenOnDestinationLink
{
  v3 = self->_breadcrumbs;
  objc_sync_enter(v3);
  v4 = [(NSMutableArray *)self->_breadcrumbs count];
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = MapsSuggestionsConfidenceDontKnow();
    }

    else
    {
      v5 = MapsSuggestionsConfidenceDefinitelyTrue();
    }
  }

  else
  {
    v5 = MapsSuggestionsConfidenceDefinitelyFalse();
  }

  v6 = v5;
  objc_sync_exit(v3);

  return v6;
}

- (BOOL)hasLinkOptions
{
  v2 = self;
  v3 = self->_destinationLinkOptions;
  objc_sync_enter(v3);
  LOBYTE(v2) = [(NSMutableArray *)v2->_destinationLinkOptions count]!= 0;
  objc_sync_exit(v3);

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(MapsSuggestionsDestinationLink *)self from];
      if (!v5)
      {
        v8 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v15 = 136446722;
          v16 = "MapsSuggestionsDestinationLink.mm";
          v17 = 1026;
          v18 = 175;
          v19 = 2082;
          v20 = "[MapsSuggestionsDestinationLink isEqual:]";
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: lhsFrom went away in %{public}s", &v15, 0x1Cu);
        }

        v12 = 0;
        v7 = v8;
        goto LABEL_31;
      }

      v6 = [(MapsSuggestionsDestinationLink *)v4 from];
      v7 = v6;
      if (!v6)
      {
        v10 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v15 = 136446722;
          v16 = "MapsSuggestionsDestinationLink.mm";
          v17 = 1026;
          v18 = 176;
          v19 = 2082;
          v20 = "[MapsSuggestionsDestinationLink isEqual:]";
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: rhsFrom went away in %{public}s", &v15, 0x1Cu);
        }

        v12 = 0;
        v8 = v10;
        goto LABEL_30;
      }

      if (v5 != v6 && ([v5 isEqualToDestination:v6] & 1) == 0)
      {
        v12 = 0;
LABEL_32:

        goto LABEL_33;
      }

      v8 = [(MapsSuggestionsDestinationLink *)self to];
      if (v8)
      {
        v9 = [(MapsSuggestionsDestinationLink *)v4 to];
        v10 = v9;
        if (v9)
        {
          if (v8 == v9 || ([v8 isEqualToDestination:v9]& 1) != 0)
          {
            destinationLinkOptions = self->_destinationLinkOptions;
            if (destinationLinkOptions == v4->_destinationLinkOptions || [(NSMutableArray *)destinationLinkOptions isEqualToArray:?])
            {
              v12 = 1;
LABEL_30:

LABEL_31:
              goto LABEL_32;
            }
          }
        }

        else
        {
          v13 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v15 = 136446722;
            v16 = "MapsSuggestionsDestinationLink.mm";
            v17 = 1026;
            v18 = 182;
            v19 = 2082;
            v20 = "[MapsSuggestionsDestinationLink isEqual:]";
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: rhsTo went away in %{public}s", &v15, 0x1Cu);
          }
        }
      }

      else
      {
        v10 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v15 = 136446722;
          v16 = "MapsSuggestionsDestinationLink.mm";
          v17 = 1026;
          v18 = 181;
          v19 = 2082;
          v20 = "[MapsSuggestionsDestinationLink isEqual:]";
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: lhsTo went away in %{public}s", &v15, 0x1Cu);
        }
      }

      v12 = 0;
      goto LABEL_30;
    }

    v12 = 0;
  }

LABEL_33:

  return v12;
}

- (NSString)description
{
  v3 = [NSString alloc];
  v11.receiver = self;
  v11.super_class = MapsSuggestionsDestinationLink;
  v4 = [(MapsSuggestionsDestinationLink *)&v11 description];
  WeakRetained = objc_loadWeakRetained(&self->_from);
  v6 = [WeakRetained label];
  v7 = objc_loadWeakRetained(&self->_to);
  v8 = [v7 label];
  v9 = [v3 initWithFormat:@"%@ from '%@' to '%@'", v4, v6, v8];

  return v9;
}

- (id)objectForJSON
{
  WeakRetained = objc_loadWeakRetained(&self->_from);
  v4 = objc_loadWeakRetained(&self->_to);
  v27 = WeakRetained;
  v5 = [NSString alloc];
  v6 = [WeakRetained label];
  v7 = [v4 label];
  v28 = [v5 initWithFormat:@"'%@' to '%@'", v6, v7];

  v8 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_breadcrumbs, "count")}];
  v9 = self->_breadcrumbs;
  objc_sync_enter(v9);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v10 = self->_breadcrumbs;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v33 objects:v40 count:16];
  if (v11)
  {
    v12 = *v34;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v34 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = MSg::jsonFor();
        [v8 addObject:v14];
      }

      v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v33 objects:v40 count:16];
    }

    while (v11);
  }

  objc_sync_exit(v9);
  v15 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_destinationLinkOptions, "count")}];
  v16 = self->_destinationLinkOptions;
  objc_sync_enter(v16);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v17 = self->_destinationLinkOptions;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v18)
  {
    v19 = *v30;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v30 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = MSg::jsonFor();
        [v15 addObject:v21];
      }

      v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v29 objects:v39 count:16];
    }

    while (v18);
  }

  objc_sync_exit(v16);
  v37[0] = @"label";
  v22 = MSg::jsonFor();
  v38[0] = v22;
  v37[1] = @"from";
  v23 = MSg::jsonFor();
  v38[1] = v23;
  v37[2] = @"to";
  v24 = MSg::jsonFor();
  v38[2] = v24;
  v38[3] = v8;
  v37[3] = @"breadcrumbs";
  v37[4] = @"options";
  v38[4] = v15;
  v25 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:5];

  return v25;
}

- (MapsSuggestionsDestination)from
{
  WeakRetained = objc_loadWeakRetained(&self->_from);

  return WeakRetained;
}

- (MapsSuggestionsDestination)to
{
  WeakRetained = objc_loadWeakRetained(&self->_to);

  return WeakRetained;
}

@end