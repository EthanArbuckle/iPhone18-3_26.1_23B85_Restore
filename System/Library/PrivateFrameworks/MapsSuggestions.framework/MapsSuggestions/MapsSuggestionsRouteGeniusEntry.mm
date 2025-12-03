@interface MapsSuggestionsRouteGeniusEntry
+ (id)entryWithData:(id)data;
- (MapsSuggestionsRouteGeniusEntry)initWithCoder:(id)coder;
- (MapsSuggestionsRouteGeniusEntry)initWithEntry:(id)entry route:(id)route;
- (double)etaInSeconds;
- (id)data;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MapsSuggestionsRouteGeniusEntry

- (MapsSuggestionsRouteGeniusEntry)initWithEntry:(id)entry route:(id)route
{
  entryCopy = entry;
  routeCopy = route;
  v12.receiver = self;
  v12.super_class = MapsSuggestionsRouteGeniusEntry;
  v9 = [(MapsSuggestionsRouteGeniusEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_entry, entry);
    objc_storeStrong(&v10->_route, route);
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  entry = self->_entry;
  uniqueRouteID = [(GEOComposedRoute *)self->_route uniqueRouteID];
  v7 = [v3 stringWithFormat:@"<%@: %p>\n{entry:\n%@\nroute:\n%@}", v4, self, entry, uniqueRouteID];

  return v7;
}

- (id)data
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  if (!v3)
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "Error archiving entry %@", &v6, 0xCu);
    }
  }

  return v3;
}

+ (id)entryWithData:(id)data
{
  v19 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (dataCopy)
  {
    v10 = 0;
    v4 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v10];
    v5 = v10;
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = v4 == 0;
    }

    if (v6)
    {
      v7 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v12 = v5;
        _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "Error decoding MapsSuggestionsEntry - %@", buf, 0xCu);
      }

      v8 = 0;
    }

    else
    {
      v8 = v4;
    }
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRouteGenius.m";
      v13 = 1024;
      v14 = 43;
      v15 = 2082;
      v16 = "+[MapsSuggestionsRouteGeniusEntry entryWithData:]";
      v17 = 2082;
      v18 = "nil == (data)";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. data should not be nil", buf, 0x26u);
    }

    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  entry = self->_entry;
  coderCopy = coder;
  [coderCopy encodeObject:entry forKey:@"entry"];
  [coderCopy encodeObject:self->_route forKey:@"route"];
}

- (MapsSuggestionsRouteGeniusEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MapsSuggestionsRouteGeniusEntry;
  v5 = [(MapsSuggestionsRouteGeniusEntry *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entry"];
    entry = v5->_entry;
    v5->_entry = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"route"];
    route = v5->_route;
    v5->_route = v8;
  }

  return v5;
}

- (double)etaInSeconds
{
  if (![(MapsSuggestionsEntry *)self->_entry containsKey:@"MapsSuggestionsETAKey"])
  {
    return [(GEOComposedRoute *)self->_route expectedTime];
  }

  v3 = [(MapsSuggestionsEntry *)self->_entry ETAForKey:@"MapsSuggestionsETAKey"];
  [v3 seconds];
  v5 = v4;

  return v5;
}

@end