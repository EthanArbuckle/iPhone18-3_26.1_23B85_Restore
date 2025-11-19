@interface MapsSuggestionsDestinationLinkOption
- (BOOL)isEqual:(id)a3;
- (BOOL)updateETA:(id)a3;
- (MapsSuggestionsDestinationLinkOption)initWithETA:(id)a3;
- (MapsSuggestionsDestinationLinkOption)initWithRoute:(id)a3;
- (double)containsLocation:(id)a3;
- (double)containsTime:(id)a3;
- (id)objectForJSON;
@end

@implementation MapsSuggestionsDestinationLinkOption

- (MapsSuggestionsDestinationLinkOption)initWithRoute:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v11.receiver = self;
    v11.super_class = MapsSuggestionsDestinationLinkOption;
    v6 = [(MapsSuggestionsDestinationLinkOption *)&v11 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_route, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDestinationLinkOption.mm";
      v14 = 1024;
      v15 = 24;
      v16 = 2082;
      v17 = "[MapsSuggestionsDestinationLinkOption initWithRoute:]";
      v18 = 2082;
      v19 = "nil == (route)";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a route", buf, 0x26u);
    }

    v8 = 0;
  }

  return v8;
}

- (MapsSuggestionsDestinationLinkOption)initWithETA:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v11.receiver = self;
    v11.super_class = MapsSuggestionsDestinationLinkOption;
    v6 = [(MapsSuggestionsDestinationLinkOption *)&v11 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_eta, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDestinationLinkOption.mm";
      v14 = 1024;
      v15 = 34;
      v16 = 2082;
      v17 = "[MapsSuggestionsDestinationLinkOption initWithETA:]";
      v18 = 2082;
      v19 = "nil == (eta)";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a ETA", buf, 0x26u);
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)updateETA:(id)a3
{
  v5 = a3;
  eta = self->_eta;
  p_eta = &self->_eta;
  v8 = eta;
  objc_sync_enter(v8);
  if (*(p_eta - 1))
  {
    goto LABEL_2;
  }

  if (!*p_eta)
  {
LABEL_10:
    objc_storeStrong(p_eta, a3);
    v9 = 1;
    goto LABEL_3;
  }

  v11 = [(MapsSuggestionsETA *)*p_eta transportType];
  if (v11 == [v5 transportType])
  {
    v12 = [(MapsSuggestionsETA *)*p_eta time];
    v13 = [v5 time];
    v14 = [v12 laterDate:v13];
    v15 = [v5 time];

    if (v14 != v15)
    {
      v16 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "ETA provided is not more recent than what we had!?", v17, 2u);
      }

      goto LABEL_2;
    }

    goto LABEL_10;
  }

LABEL_2:
  v9 = 0;
LABEL_3:
  objc_sync_exit(v8);

  return v9;
}

- (double)containsLocation:(id)a3
{
  v4 = a3;
  v5 = self->_route;
  objc_sync_enter(v5);
  if (v4 && self->_route)
  {
    v6 = [[GEORouteMatcher alloc] initWithRoute:self->_route auditToken:0];
    [v4 coordinate];
    [v6 distanceToRouteFrom:?];
    v8 = v7;
    v9 = MapsSuggestionsConfidenceDefinitelyTrue();
    v10 = v9 - v8 * v8 / MapsSuggestionsDistanceToRouteConfidenceFactor();
    if (v10 <= 0.0)
    {
      v10 = MapsSuggestionsConfidenceDefinitelyFalse();
    }
  }

  else
  {
    v10 = MapsSuggestionsConfidenceDontKnow();
  }

  objc_sync_exit(v5);

  return v10;
}

- (double)containsTime:(id)a3
{
  v5 = a3;
  v6 = self->_eta;
  objc_sync_enter(v6);
  if (!v5 || !self->_eta)
  {
    v12 = MapsSuggestionsConfidenceDontKnow();
    goto LABEL_8;
  }

  v7 = objc_autoreleasePoolPush();
  v8 = [(MapsSuggestionsETA *)self->_eta time];
  [(MapsSuggestionsETA *)self->_eta seconds];
  v9 = [v8 dateByAddingTimeInterval:?];
  [v9 timeIntervalSinceDate:v5];
  v11 = v10;

  if (v11 > 0.0)
  {
    v3 = MapsSuggestionsConfidenceDefinitelyTrue();
  }

  objc_autoreleasePoolPop(v7);
  if (v11 <= 0.0)
  {
    v12 = MapsSuggestionsConfidenceDefinitelyFalse();
LABEL_8:
    v3 = v12;
  }

  objc_sync_exit(v6);

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(MapsSuggestionsDestinationLinkOption *)self eta];
      v6 = [v5 transportType];
      v7 = [(MapsSuggestionsDestinationLinkOption *)v4 eta];
      v8 = v6 == [v7 transportType];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)objectForJSON
{
  v14[0] = @"transportMode";
  transportMode = self->_transportMode;
  if (transportMode >= 7)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", transportMode];
  }

  else
  {
    v4 = *(&off_100075FB8 + transportMode);
  }

  v5 = MSg::jsonFor();
  v14[1] = @"eta";
  v15[0] = v5;
  v12 = @"seconds";
  v6 = [(MapsSuggestionsETA *)self->_eta seconds];
  v8 = MSg::jsonFor(v6, v7);
  v13 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v15[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];

  return v10;
}

@end