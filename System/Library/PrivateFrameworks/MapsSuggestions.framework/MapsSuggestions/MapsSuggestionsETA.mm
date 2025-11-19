@interface MapsSuggestionsETA
+ (id)ETAWithData:(id)a3;
- (BOOL)isBetterThanETA:(id)a3 requirements:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToETA:(id)a3;
- (BOOL)isValidForLocation:(id)a3 requirements:(id)a4;
- (MapsSuggestionsETA)initWithCoder:(id)a3;
- (MapsSuggestionsETA)initWithSeconds:(double)a3 shortTrafficString:(id)a4 longTrafficString:(id)a5 writtenRouteName:(id)a6 spokenRouteName:(id)a7 transportType:(int)a8 location:(id)a9 time:(id)a10;
- (MapsSuggestionsETA)initWithSeconds:(double)a3 shortTrafficString:(id)a4 longTrafficString:(id)a5 writtenRouteName:(id)a6 spokenRouteName:(id)a7 transportType:(int)a8 location:(id)a9 time:(id)a10 originator:(id)a11;
- (MapsSuggestionsETA)initWithSeconds:(double)a3 trafficString:(id)a4 transportType:(int)a5 location:(id)a6;
- (MapsSuggestionsETA)initWithTrafficAndETAResult:(id)a3 transportType:(int)a4 location:(id)a5 time:(id)a6;
- (NSString)description;
- (double)age;
- (id)data;
- (id)objectForJSON;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MapsSuggestionsETA

- (MapsSuggestionsETA)initWithSeconds:(double)a3 shortTrafficString:(id)a4 longTrafficString:(id)a5 writtenRouteName:(id)a6 spokenRouteName:(id)a7 transportType:(int)a8 location:(id)a9 time:(id)a10 originator:(id)a11
{
  v53 = *MEMORY[0x1E69E9840];
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  if (!v22)
  {
    v42 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v46 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsETA.mm";
      v47 = 1024;
      v48 = 71;
      v49 = 2082;
      v50 = "[MapsSuggestionsETA initWithSeconds:shortTrafficString:longTrafficString:writtenRouteName:spokenRouteName:transportType:location:time:originator:]";
      v51 = 2082;
      v52 = "nil == (location)";
      _os_log_impl(&dword_1C5126000, v42, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires location", buf, 0x26u);
    }

    goto LABEL_11;
  }

  if (!v23)
  {
    v42 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v46 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsETA.mm";
      v47 = 1024;
      v48 = 72;
      v49 = 2082;
      v50 = "[MapsSuggestionsETA initWithSeconds:shortTrafficString:longTrafficString:writtenRouteName:spokenRouteName:transportType:location:time:originator:]";
      v51 = 2082;
      v52 = "nil == (time)";
      _os_log_impl(&dword_1C5126000, v42, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires time", buf, 0x26u);
    }

LABEL_11:

    v41 = 0;
    goto LABEL_12;
  }

  v44.receiver = self;
  v44.super_class = MapsSuggestionsETA;
  v25 = [(MapsSuggestionsETA *)&v44 init];
  v26 = v25;
  if (v25)
  {
    v25->_seconds = a3;
    v27 = [v18 copy];
    shortTrafficString = v26->_shortTrafficString;
    v26->_shortTrafficString = v27;

    v29 = [v19 copy];
    longTrafficString = v26->_longTrafficString;
    v26->_longTrafficString = v29;

    v31 = [v20 copy];
    writtenRouteName = v26->_writtenRouteName;
    v26->_writtenRouteName = v31;

    v33 = [v21 copy];
    spokenRouteName = v26->_spokenRouteName;
    v26->_spokenRouteName = v33;

    v26->_transportType = a8;
    v35 = [v22 copy];
    location = v26->_location;
    v26->_location = v35;

    v37 = [v23 copy];
    time = v26->_time;
    v26->_time = v37;

    v39 = [v24 copy];
    originator = v26->_originator;
    v26->_originator = v39;
  }

  self = v26;
  v41 = self;
LABEL_12:

  return v41;
}

- (MapsSuggestionsETA)initWithSeconds:(double)a3 shortTrafficString:(id)a4 longTrafficString:(id)a5 writtenRouteName:(id)a6 spokenRouteName:(id)a7 transportType:(int)a8 location:(id)a9 time:(id)a10
{
  v11 = *&a8;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a9;
  v22 = a10;
  v23 = [MEMORY[0x1E696AE30] processInfo];
  v24 = [v23 processName];
  v25 = [(MapsSuggestionsETA *)self initWithSeconds:v17 shortTrafficString:v18 longTrafficString:v19 writtenRouteName:v20 spokenRouteName:v11 transportType:v21 location:a3 time:v22 originator:v24];

  return v25;
}

- (MapsSuggestionsETA)initWithSeconds:(double)a3 trafficString:(id)a4 transportType:(int)a5 location:(id)a6
{
  v7 = *&a5;
  v10 = a4;
  v11 = a6;
  v12 = MapsSuggestionsNow();
  v13 = [(MapsSuggestionsETA *)self initWithSeconds:v10 shortTrafficString:v10 longTrafficString:0 writtenRouteName:0 spokenRouteName:v7 transportType:v11 location:a3 time:v12];

  return v13;
}

- (MapsSuggestionsETA)initWithTrafficAndETAResult:(id)a3 transportType:(int)a4 location:(id)a5 time:(id)a6
{
  v7 = *&a4;
  v9 = a3;
  v10 = a5;
  if (v9)
  {
    [v9 seconds];
    v12 = v11;
    v13 = [v9 shortTrafficString];
    v14 = [v9 longTrafficString];
    v15 = [v9 writtenRouteName];
    v16 = [v9 spokenRouteName];
    v17 = MapsSuggestionsNow();
    self = [(MapsSuggestionsETA *)self initWithSeconds:v13 shortTrafficString:v14 longTrafficString:v15 writtenRouteName:v16 spokenRouteName:v7 transportType:v10 location:v12 time:v17];

    v18 = self;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(MapsSuggestionsETA *)self isEqualToETA:v4];
  }

  return v5;
}

- (BOOL)isEqualToETA:(id)a3
{
  v4 = a3;
  v18 = 1;
  if (self != v4)
  {
    if ((-[MapsSuggestionsETA seconds](self, "seconds"), v6 = v5, -[MapsSuggestionsETA seconds](v4, "seconds"), vabdd_f64(v6, v7) > 2.22044605e-16) || (-[MapsSuggestionsETA shortTrafficString](self, "shortTrafficString"), v8 = objc_claimAutoreleasedReturnValue(), -[MapsSuggestionsETA shortTrafficString](v4, "shortTrafficString"), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v8 != v9) && (-[MapsSuggestionsETA shortTrafficString](self, "shortTrafficString"), v10 = objc_claimAutoreleasedReturnValue(), -[MapsSuggestionsETA shortTrafficString](v4, "shortTrafficString"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v10 isEqualToString:v11], v11, v10, (v12 & 1) == 0) || (-[MapsSuggestionsETA longTrafficString](self, "longTrafficString"), v13 = objc_claimAutoreleasedReturnValue(), -[MapsSuggestionsETA longTrafficString](v4, "longTrafficString"), v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v13 != v14) && (-[MapsSuggestionsETA longTrafficString](self, "longTrafficString"), v15 = objc_claimAutoreleasedReturnValue(), -[MapsSuggestionsETA longTrafficString](v4, "longTrafficString"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "isEqualToString:", v16), v16, v15, (v17 & 1) == 0))
    {
      v18 = 0;
    }
  }

  return v18;
}

- (double)age
{
  v3 = MapsSuggestionsNow();
  v4 = [(MapsSuggestionsETA *)self time];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5;

  return v6;
}

- (BOOL)isValidForLocation:(id)a3 requirements:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    [(MapsSuggestionsETA *)self age];
    v9 = v8;
    [v7 maxAge];
    if (v9 <= v10)
    {
      v16 = [(MapsSuggestionsETA *)self location];
      [v16 horizontalAccuracy];
      v18 = v17;

      [v7 minAccuracy];
      if (v18 <= v19)
      {
        if (!v6)
        {
          goto LABEL_21;
        }

        v22 = [(MapsSuggestionsETA *)self location];
        v23 = MapsSuggestionsBestLocation(v6, v22);

        if (v23 != v6)
        {
          v11 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(v28) = 0;
            _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_DEBUG, "The provided currentLocation was not better than the used one", &v28, 2u);
          }

          v20 = 1;
          goto LABEL_13;
        }

        v24 = [(MapsSuggestionsETA *)self location];
        [v24 distanceFromLocation:v6];
        v26 = v25;

        [v7 maxDistance];
        if (v26 <= v27)
        {
LABEL_21:
          v20 = 1;
          goto LABEL_14;
        }

        v11 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v28 = 134217984;
          v29 = *&v26;
          v12 = "ETA invalid: moved too much (distance = %.2fm).";
          goto LABEL_10;
        }
      }

      else
      {
        v11 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v28 = 134217984;
          v29 = *&v18;
          v12 = "ETA invalid: not accurate enough (accuracy = %.2fm).";
          goto LABEL_10;
        }
      }
    }

    else
    {
      v11 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v28 = 134217984;
        v29 = *&v9;
        v12 = "ETA invalid: too old (age = %.2fs).";
LABEL_10:
        v13 = v11;
        v14 = OS_LOG_TYPE_DEBUG;
        v15 = 12;
        goto LABEL_11;
      }
    }
  }

  else
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v28 = 136446978;
      v29 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsETA.mm";
      v30 = 1024;
      v31 = 199;
      v32 = 2082;
      v33 = "[MapsSuggestionsETA isValidForLocation:requirements:]";
      v34 = 2082;
      v35 = "nil == (requirements)";
      v12 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires requirements";
      v13 = v11;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 38;
LABEL_11:
      _os_log_impl(&dword_1C5126000, v13, v14, v12, &v28, v15);
    }
  }

  v20 = 0;
LABEL_13:

LABEL_14:
  return v20;
}

- (BOOL)isBetterThanETA:(id)a3 requirements:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsETA.mm";
      *&buf[12] = 1024;
      *&buf[14] = 247;
      v31 = 2082;
      v32 = "[MapsSuggestionsETA isBetterThanETA:requirements:]";
      v33 = 2082;
      v34 = "nil == (requirements)";
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires ETA requirements", buf, 0x26u);
    }

    goto LABEL_9;
  }

  if (v6)
  {
    v8 = [(MapsSuggestionsETA *)self location];
    v9 = [v6 location];
    v10 = MapsSuggestionsBestLocation(v8, v9);

    if (([v6 isValidForLocation:v10 requirements:v7] & 1) == 0)
    {
      v23 = 1;
      goto LABEL_12;
    }

    if ([(MapsSuggestionsETA *)self isValidForLocation:v10 requirements:v7])
    {
      v11 = v6;
      v12 = v7;
      v13 = [(MapsSuggestionsETA *)self location];
      [v13 coordinate];
      *buf = v14;
      *&buf[8] = v15;

      v16 = [v11 location];
      [v16 coordinate];
      v28 = v17;
      v29 = v18;

      CLLocationCoordinate2DGetDistanceFrom();
      v20 = v19;
      [v12 maxDistance];
      LODWORD(v16) = v20 > v21;

      if (v16)
      {
        v22 = [(MapsSuggestionsETA *)self location];
        v23 = v10 == v22;
      }

      else
      {
        [(MapsSuggestionsETA *)self age];
        v26 = v25;
        [v11 age];
        v23 = v26 < v27;
      }

      goto LABEL_12;
    }

LABEL_9:
    v23 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v23 = 1;
LABEL_13:

  return v23;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeDouble:@"MapsSuggestionsETASecondsKey" forKey:self->_seconds];
  [v4 encodeObject:self->_shortTrafficString forKey:@"MapsSuggestionsETAShortTrafficStringKey"];
  [v4 encodeObject:self->_longTrafficString forKey:@"MapsSuggestionsETALongTrafficStringKey"];
  [v4 encodeObject:self->_writtenRouteName forKey:@"MapsSuggestionsETAWrittenRouteNameKey"];
  [v4 encodeObject:self->_spokenRouteName forKey:@"MapsSuggestionsETASpokenRouteNameKey"];
  [v4 encodeInteger:self->_transportType forKey:@"MapsSuggestionsETATransportTypeKey"];
  [v4 encodeObject:self->_time forKey:@"MapsSuggestionsETATimeKey"];
  [v4 encodeObject:self->_location forKey:@"MapsSuggestionsETALocationKey"];
  [v4 encodeObject:self->_originator forKey:@"MapsSuggestionsETAOriginatorKey"];
}

- (MapsSuggestionsETA)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"MapsSuggestionsETASecondsKey"];
  v6 = v5;
  v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MapsSuggestionsETAShortTrafficStringKey"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MapsSuggestionsETALongTrafficStringKey"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MapsSuggestionsETAWrittenRouteNameKey"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MapsSuggestionsETASpokenRouteNameKey"];
  v10 = [v4 decodeIntegerForKey:@"MapsSuggestionsETATransportTypeKey"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MapsSuggestionsETATimeKey"];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MapsSuggestionsETALocationKey"];
  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MapsSuggestionsETAOriginatorKey"];
  if (!v13)
  {
    v14 = [MEMORY[0x1E696AE30] processInfo];
    v13 = [v14 processName];
  }

  v15 = [(MapsSuggestionsETA *)self initWithSeconds:v17 shortTrafficString:v7 longTrafficString:v8 writtenRouteName:v9 spokenRouteName:v10 transportType:v12 location:v6 time:v11 originator:v13];

  return v15;
}

- (id)data
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [v3 encodeObject:self forKey:*MEMORY[0x1E696A508]];
  [v3 finishEncoding];
  v4 = [v3 encodedData];

  if (v4)
  {
    v5 = [v3 encodedData];
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = self;
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "Could not serialize ETA: %@", &v8, 0xCu);
    }

    v5 = 0;
  }

  return v5;
}

+ (id)ETAWithData:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v12 = 0;
    v4 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v3 error:&v12];
    v5 = v12;
    [v4 setRequiresSecureCoding:1];
    [v4 setDecodingFailurePolicy:1];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E696A508]];
    [v4 finishDecoding];
    v7 = [v4 error];
    if (v7 | v5)
    {
    }

    else if (v6)
    {
      v8 = v6;
LABEL_15:

      goto LABEL_16;
    }

    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = v5;
      if (!v5)
      {
        v10 = [v4 error];
      }

      *buf = 138412290;
      v14 = v10;
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "Could not deserialize MapsSuggestionsETA, error: %@", buf, 0xCu);
      if (!v5)
      {
      }
    }

    v8 = 0;
    goto LABEL_15;
  }

  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v14 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsETA.mm";
    v15 = 1024;
    v16 = 350;
    v17 = 2082;
    v18 = "+[MapsSuggestionsETA ETAWithData:]";
    v19 = 2082;
    v20 = "data == nil";
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires serialized data", buf, 0x26u);
  }

  v8 = 0;
LABEL_16:

  return v8;
}

- (id)objectForJSON
{
  v15[3] = *MEMORY[0x1E69E9840];
  v14[0] = @"value";
  v3 = [(MapsSuggestionsETA *)self seconds];
  v5 = MSg::jsonFor(v3, v4);
  v15[0] = v5;
  v14[1] = @"age";
  v6 = [(MapsSuggestionsETA *)self age];
  v8 = MSg::jsonFor(v6, v7);
  v15[1] = v8;
  v14[2] = @"from";
  v9 = [(MapsSuggestionsETA *)self location];
  v11 = MSg::jsonFor(v9, v10);
  v15[2] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];

  return v12;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v24.receiver = self;
  v24.super_class = MapsSuggestionsETA;
  v4 = [(MapsSuggestionsETA *)&v24 description];
  [(MapsSuggestionsETA *)self seconds];
  v6 = v5;
  v7 = [(MapsSuggestionsETA *)self writtenRouteName];
  v8 = [(MapsSuggestionsETA *)self trafficString];
  v9 = [(MapsSuggestionsETA *)self transportType];
  if (v9 >= 7)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v9];
  }

  else
  {
    v10 = off_1E81F5D20[v9];
  }

  v11 = [(MapsSuggestionsETA *)self location];
  [v11 coordinate];
  v13 = v12;
  v14 = [(MapsSuggestionsETA *)self location];
  [v14 coordinate];
  v16 = v15;
  v17 = [(MapsSuggestionsETA *)self location];
  [v17 horizontalAccuracy];
  v19 = v18;
  v20 = [(MapsSuggestionsETA *)self time];
  v21 = [(MapsSuggestionsETA *)self originator];
  v22 = [v3 initWithFormat:@"%@ %.0fs over @%@, %@ (%@ / <%.8f, %.8f> ±%.2fm / %@ / %@)", v4, v6, v7, v8, v10, v13, v16, v19, v20, v21];

  return v22;
}

@end