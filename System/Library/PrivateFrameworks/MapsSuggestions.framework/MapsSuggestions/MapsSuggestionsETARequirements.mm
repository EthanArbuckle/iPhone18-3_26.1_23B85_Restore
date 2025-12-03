@interface MapsSuggestionsETARequirements
- (MapsSuggestionsETARequirements)initWithMaxAge:(double)age maxDistance:(double)distance minAccuracy:(double)accuracy;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MapsSuggestionsETARequirements

- (MapsSuggestionsETARequirements)initWithMaxAge:(double)age maxDistance:(double)distance minAccuracy:(double)accuracy
{
  selfCopy = self;
  v22 = *MEMORY[0x1E69E9840];
  if (age == 0.0)
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v15 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsETA.mm";
      v16 = 1024;
      v17 = 37;
      v18 = 2082;
      v19 = "[MapsSuggestionsETARequirements initWithMaxAge:maxDistance:minAccuracy:]";
      v20 = 2082;
      v21 = "0.0 == maxAge";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires maximum age", buf, 0x26u);
    }

LABEL_8:

    v8 = 0;
    goto LABEL_9;
  }

  if (distance == 0.0)
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v15 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsETA.mm";
      v16 = 1024;
      v17 = 38;
      v18 = 2082;
      v19 = "[MapsSuggestionsETARequirements initWithMaxAge:maxDistance:minAccuracy:]";
      v20 = 2082;
      v21 = "0.0 == maxDistance";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires maximum distance", buf, 0x26u);
    }

    goto LABEL_8;
  }

  v13.receiver = self;
  v13.super_class = MapsSuggestionsETARequirements;
  v12 = [(MapsSuggestionsETARequirements *)&v13 init];
  if (v12)
  {
    v12->_maxAge = age;
    v12->_maxDistance = distance;
    v12->_minAccuracy = accuracy;
  }

  selfCopy = v12;
  v8 = selfCopy;
LABEL_9:

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MapsSuggestionsETARequirements allocWithZone:zone];
  maxAge = self->_maxAge;
  maxDistance = self->_maxDistance;
  minAccuracy = self->_minAccuracy;

  return [(MapsSuggestionsETARequirements *)v4 initWithMaxAge:maxAge maxDistance:maxDistance minAccuracy:minAccuracy];
}

@end