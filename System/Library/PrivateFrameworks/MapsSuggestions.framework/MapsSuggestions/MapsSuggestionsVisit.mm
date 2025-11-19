@interface MapsSuggestionsVisit
- (MapsSuggestionsVisit)initWithRTVisit:(id)a3;
- (NSString)uniqueName;
@end

@implementation MapsSuggestionsVisit

- (MapsSuggestionsVisit)initWithRTVisit:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v27.receiver = self;
    v27.super_class = MapsSuggestionsVisit;
    v5 = [(MapsSuggestionsVisit *)&v27 init];
    if (v5)
    {
      v6 = [v4 date];
      date = v5->_date;
      v5->_date = v6;

      v8 = [v4 type];
      if ((v8 - 1) > 2)
      {
        v9 = 0;
      }

      else
      {
        v9 = qword_1C52A8DD8[v8 - 1];
      }

      v5->_type = v9;
      v12 = [v4 location];
      location = v5->_location;
      v5->_location = v12;

      v14 = [v4 source];
      if ((v14 - 1) >= 3)
      {
        v15 = 0;
      }

      else
      {
        v15 = v14;
      }

      v5->_source = v15;
      v16 = [v4 exit];
      exit = v5->_exit;
      v5->_exit = v16;

      v18 = MEMORY[0x1E696AD98];
      [v4 confidence];
      v19 = [v18 numberWithDouble:?];
      v5->_confidence = MSgVisitConfidenceForRTVisitConfidence(v19);

      v20 = [v4 entry];
      entry = v5->_entry;
      v5->_entry = v20;

      v22 = [v4 placeInference];
      placeInference = v5->_placeInference;
      v5->_placeInference = v22;

      v24 = [v4 identifier];
      identifier = v5->_identifier;
      v5->_identifier = v24;
    }

    self = v5;
    v11 = self;
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

    v11 = 0;
  }

  return v11;
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

@end