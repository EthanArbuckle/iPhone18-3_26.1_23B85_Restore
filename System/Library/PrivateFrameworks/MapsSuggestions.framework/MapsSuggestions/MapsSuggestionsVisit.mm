@interface MapsSuggestionsVisit
- (MapsSuggestionsVisit)initWithRTVisit:(id)visit;
- (NSString)uniqueName;
@end

@implementation MapsSuggestionsVisit

- (MapsSuggestionsVisit)initWithRTVisit:(id)visit
{
  v36 = *MEMORY[0x1E69E9840];
  visitCopy = visit;
  if (visitCopy)
  {
    v27.receiver = self;
    v27.super_class = MapsSuggestionsVisit;
    v5 = [(MapsSuggestionsVisit *)&v27 init];
    if (v5)
    {
      date = [visitCopy date];
      date = v5->_date;
      v5->_date = date;

      type = [visitCopy type];
      if ((type - 1) > 2)
      {
        v9 = 0;
      }

      else
      {
        v9 = qword_1C52A8DD8[type - 1];
      }

      v5->_type = v9;
      location = [visitCopy location];
      location = v5->_location;
      v5->_location = location;

      source = [visitCopy source];
      if ((source - 1) >= 3)
      {
        v15 = 0;
      }

      else
      {
        v15 = source;
      }

      v5->_source = v15;
      exit = [visitCopy exit];
      exit = v5->_exit;
      v5->_exit = exit;

      v18 = MEMORY[0x1E696AD98];
      [visitCopy confidence];
      v19 = [v18 numberWithDouble:?];
      v5->_confidence = MSgVisitConfidenceForRTVisitConfidence(v19);

      entry = [visitCopy entry];
      entry = v5->_entry;
      v5->_entry = entry;

      placeInference = [visitCopy placeInference];
      placeInference = v5->_placeInference;
      v5->_placeInference = placeInference;

      identifier = [visitCopy identifier];
      identifier = v5->_identifier;
      v5->_identifier = identifier;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v29 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/MapsSuggestionsVisits.mm";
      v30 = 1024;
      v31 = 167;
      v32 = 2082;
      v33 = "[MapsSuggestionsVisit initWithRTVisit:]";
      v34 = 2082;
      v35 = "nil == (visit)";
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. requires an RTVisit", buf, 0x26u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

@end