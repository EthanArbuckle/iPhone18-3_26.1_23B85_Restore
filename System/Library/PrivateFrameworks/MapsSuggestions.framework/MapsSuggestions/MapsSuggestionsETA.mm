@interface MapsSuggestionsETA
+ (id)ETAWithData:(id)data;
- (BOOL)isBetterThanETA:(id)a requirements:(id)requirements;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToETA:(id)a;
- (BOOL)isValidForLocation:(id)location requirements:(id)requirements;
- (MapsSuggestionsETA)initWithCoder:(id)coder;
- (MapsSuggestionsETA)initWithSeconds:(double)seconds shortTrafficString:(id)string longTrafficString:(id)trafficString writtenRouteName:(id)name spokenRouteName:(id)routeName transportType:(int)type location:(id)location time:(id)self0;
- (MapsSuggestionsETA)initWithSeconds:(double)seconds shortTrafficString:(id)string longTrafficString:(id)trafficString writtenRouteName:(id)name spokenRouteName:(id)routeName transportType:(int)type location:(id)location time:(id)self0 originator:(id)self1;
- (MapsSuggestionsETA)initWithSeconds:(double)seconds trafficString:(id)string transportType:(int)type location:(id)location;
- (MapsSuggestionsETA)initWithTrafficAndETAResult:(id)result transportType:(int)type location:(id)location time:(id)time;
- (NSString)description;
- (double)age;
- (id)data;
- (id)objectForJSON;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MapsSuggestionsETA

- (MapsSuggestionsETA)initWithSeconds:(double)seconds shortTrafficString:(id)string longTrafficString:(id)trafficString writtenRouteName:(id)name spokenRouteName:(id)routeName transportType:(int)type location:(id)location time:(id)self0 originator:(id)self1
{
  v53 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  trafficStringCopy = trafficString;
  nameCopy = name;
  routeNameCopy = routeName;
  locationCopy = location;
  timeCopy = time;
  originatorCopy = originator;
  if (!locationCopy)
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

  if (!timeCopy)
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

    selfCopy = 0;
    goto LABEL_12;
  }

  v44.receiver = self;
  v44.super_class = MapsSuggestionsETA;
  v25 = [(MapsSuggestionsETA *)&v44 init];
  v26 = v25;
  if (v25)
  {
    v25->_seconds = seconds;
    v27 = [stringCopy copy];
    shortTrafficString = v26->_shortTrafficString;
    v26->_shortTrafficString = v27;

    v29 = [trafficStringCopy copy];
    longTrafficString = v26->_longTrafficString;
    v26->_longTrafficString = v29;

    v31 = [nameCopy copy];
    writtenRouteName = v26->_writtenRouteName;
    v26->_writtenRouteName = v31;

    v33 = [routeNameCopy copy];
    spokenRouteName = v26->_spokenRouteName;
    v26->_spokenRouteName = v33;

    v26->_transportType = type;
    v35 = [locationCopy copy];
    location = v26->_location;
    v26->_location = v35;

    v37 = [timeCopy copy];
    time = v26->_time;
    v26->_time = v37;

    v39 = [originatorCopy copy];
    originator = v26->_originator;
    v26->_originator = v39;
  }

  self = v26;
  selfCopy = self;
LABEL_12:

  return selfCopy;
}

- (MapsSuggestionsETA)initWithSeconds:(double)seconds shortTrafficString:(id)string longTrafficString:(id)trafficString writtenRouteName:(id)name spokenRouteName:(id)routeName transportType:(int)type location:(id)location time:(id)self0
{
  v11 = *&type;
  stringCopy = string;
  trafficStringCopy = trafficString;
  nameCopy = name;
  routeNameCopy = routeName;
  locationCopy = location;
  timeCopy = time;
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  processName = [processInfo processName];
  v25 = [(MapsSuggestionsETA *)self initWithSeconds:stringCopy shortTrafficString:trafficStringCopy longTrafficString:nameCopy writtenRouteName:routeNameCopy spokenRouteName:v11 transportType:locationCopy location:seconds time:timeCopy originator:processName];

  return v25;
}

- (MapsSuggestionsETA)initWithSeconds:(double)seconds trafficString:(id)string transportType:(int)type location:(id)location
{
  v7 = *&type;
  stringCopy = string;
  locationCopy = location;
  v12 = MapsSuggestionsNow();
  v13 = [(MapsSuggestionsETA *)self initWithSeconds:stringCopy shortTrafficString:stringCopy longTrafficString:0 writtenRouteName:0 spokenRouteName:v7 transportType:locationCopy location:seconds time:v12];

  return v13;
}

- (MapsSuggestionsETA)initWithTrafficAndETAResult:(id)result transportType:(int)type location:(id)location time:(id)time
{
  v7 = *&type;
  resultCopy = result;
  locationCopy = location;
  if (resultCopy)
  {
    [resultCopy seconds];
    v12 = v11;
    shortTrafficString = [resultCopy shortTrafficString];
    longTrafficString = [resultCopy longTrafficString];
    writtenRouteName = [resultCopy writtenRouteName];
    spokenRouteName = [resultCopy spokenRouteName];
    v17 = MapsSuggestionsNow();
    self = [(MapsSuggestionsETA *)self initWithSeconds:shortTrafficString shortTrafficString:longTrafficString longTrafficString:writtenRouteName writtenRouteName:spokenRouteName spokenRouteName:v7 transportType:locationCopy location:v12 time:v17];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(MapsSuggestionsETA *)self isEqualToETA:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToETA:(id)a
{
  aCopy = a;
  v18 = 1;
  if (self != aCopy)
  {
    if ((-[MapsSuggestionsETA seconds](self, "seconds"), v6 = v5, -[MapsSuggestionsETA seconds](aCopy, "seconds"), vabdd_f64(v6, v7) > 2.22044605e-16) || (-[MapsSuggestionsETA shortTrafficString](self, "shortTrafficString"), v8 = objc_claimAutoreleasedReturnValue(), -[MapsSuggestionsETA shortTrafficString](aCopy, "shortTrafficString"), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v8 != v9) && (-[MapsSuggestionsETA shortTrafficString](self, "shortTrafficString"), v10 = objc_claimAutoreleasedReturnValue(), -[MapsSuggestionsETA shortTrafficString](aCopy, "shortTrafficString"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v10 isEqualToString:v11], v11, v10, (v12 & 1) == 0) || (-[MapsSuggestionsETA longTrafficString](self, "longTrafficString"), v13 = objc_claimAutoreleasedReturnValue(), -[MapsSuggestionsETA longTrafficString](aCopy, "longTrafficString"), v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v13 != v14) && (-[MapsSuggestionsETA longTrafficString](self, "longTrafficString"), v15 = objc_claimAutoreleasedReturnValue(), -[MapsSuggestionsETA longTrafficString](aCopy, "longTrafficString"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "isEqualToString:", v16), v16, v15, (v17 & 1) == 0))
    {
      v18 = 0;
    }
  }

  return v18;
}

- (double)age
{
  v3 = MapsSuggestionsNow();
  time = [(MapsSuggestionsETA *)self time];
  [v3 timeIntervalSinceDate:time];
  v6 = v5;

  return v6;
}

- (BOOL)isValidForLocation:(id)location requirements:(id)requirements
{
  v36 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  requirementsCopy = requirements;
  if (requirementsCopy)
  {
    [(MapsSuggestionsETA *)self age];
    v9 = v8;
    [requirementsCopy maxAge];
    if (v9 <= v10)
    {
      location = [(MapsSuggestionsETA *)self location];
      [location horizontalAccuracy];
      v18 = v17;

      [requirementsCopy minAccuracy];
      if (v18 <= v19)
      {
        if (!locationCopy)
        {
          goto LABEL_21;
        }

        location2 = [(MapsSuggestionsETA *)self location];
        v23 = MapsSuggestionsBestLocation(locationCopy, location2);

        if (v23 != locationCopy)
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

        location3 = [(MapsSuggestionsETA *)self location];
        [location3 distanceFromLocation:locationCopy];
        v26 = v25;

        [requirementsCopy maxDistance];
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

- (BOOL)isBetterThanETA:(id)a requirements:(id)requirements
{
  v35 = *MEMORY[0x1E69E9840];
  aCopy = a;
  requirementsCopy = requirements;
  if (!requirementsCopy)
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

  if (aCopy)
  {
    location = [(MapsSuggestionsETA *)self location];
    location2 = [aCopy location];
    v10 = MapsSuggestionsBestLocation(location, location2);

    if (([aCopy isValidForLocation:v10 requirements:requirementsCopy] & 1) == 0)
    {
      v23 = 1;
      goto LABEL_12;
    }

    if ([(MapsSuggestionsETA *)self isValidForLocation:v10 requirements:requirementsCopy])
    {
      v11 = aCopy;
      v12 = requirementsCopy;
      location3 = [(MapsSuggestionsETA *)self location];
      [location3 coordinate];
      *buf = v14;
      *&buf[8] = v15;

      location4 = [v11 location];
      [location4 coordinate];
      v28 = v17;
      v29 = v18;

      CLLocationCoordinate2DGetDistanceFrom();
      v20 = v19;
      [v12 maxDistance];
      LODWORD(location4) = v20 > v21;

      if (location4)
      {
        location5 = [(MapsSuggestionsETA *)self location];
        v23 = v10 == location5;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeDouble:@"MapsSuggestionsETASecondsKey" forKey:self->_seconds];
  [coderCopy encodeObject:self->_shortTrafficString forKey:@"MapsSuggestionsETAShortTrafficStringKey"];
  [coderCopy encodeObject:self->_longTrafficString forKey:@"MapsSuggestionsETALongTrafficStringKey"];
  [coderCopy encodeObject:self->_writtenRouteName forKey:@"MapsSuggestionsETAWrittenRouteNameKey"];
  [coderCopy encodeObject:self->_spokenRouteName forKey:@"MapsSuggestionsETASpokenRouteNameKey"];
  [coderCopy encodeInteger:self->_transportType forKey:@"MapsSuggestionsETATransportTypeKey"];
  [coderCopy encodeObject:self->_time forKey:@"MapsSuggestionsETATimeKey"];
  [coderCopy encodeObject:self->_location forKey:@"MapsSuggestionsETALocationKey"];
  [coderCopy encodeObject:self->_originator forKey:@"MapsSuggestionsETAOriginatorKey"];
}

- (MapsSuggestionsETA)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"MapsSuggestionsETASecondsKey"];
  v6 = v5;
  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MapsSuggestionsETAShortTrafficStringKey"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MapsSuggestionsETALongTrafficStringKey"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MapsSuggestionsETAWrittenRouteNameKey"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MapsSuggestionsETASpokenRouteNameKey"];
  v10 = [coderCopy decodeIntegerForKey:@"MapsSuggestionsETATransportTypeKey"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MapsSuggestionsETATimeKey"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MapsSuggestionsETALocationKey"];
  processName = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MapsSuggestionsETAOriginatorKey"];
  if (!processName)
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    processName = [processInfo processName];
  }

  v15 = [(MapsSuggestionsETA *)self initWithSeconds:v17 shortTrafficString:v7 longTrafficString:v8 writtenRouteName:v9 spokenRouteName:v10 transportType:v12 location:v6 time:v11 originator:processName];

  return v15;
}

- (id)data
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [v3 encodeObject:self forKey:*MEMORY[0x1E696A508]];
  [v3 finishEncoding];
  encodedData = [v3 encodedData];

  if (encodedData)
  {
    encodedData2 = [v3 encodedData];
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "Could not serialize ETA: %@", &v8, 0xCu);
    }

    encodedData2 = 0;
  }

  return encodedData2;
}

+ (id)ETAWithData:(id)data
{
  v21 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (dataCopy)
  {
    v12 = 0;
    v4 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:dataCopy error:&v12];
    v5 = v12;
    [v4 setRequiresSecureCoding:1];
    [v4 setDecodingFailurePolicy:1];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E696A508]];
    [v4 finishDecoding];
    error = [v4 error];
    if (error | v5)
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
      error2 = v5;
      if (!v5)
      {
        error2 = [v4 error];
      }

      *buf = 138412290;
      v14 = error2;
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
  seconds = [(MapsSuggestionsETA *)self seconds];
  v5 = MSg::jsonFor(seconds, v4);
  v15[0] = v5;
  v14[1] = @"age";
  v6 = [(MapsSuggestionsETA *)self age];
  v8 = MSg::jsonFor(v6, v7);
  v15[1] = v8;
  v14[2] = @"from";
  location = [(MapsSuggestionsETA *)self location];
  v11 = MSg::jsonFor(location, v10);
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
  writtenRouteName = [(MapsSuggestionsETA *)self writtenRouteName];
  trafficString = [(MapsSuggestionsETA *)self trafficString];
  transportType = [(MapsSuggestionsETA *)self transportType];
  if (transportType >= 7)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", transportType];
  }

  else
  {
    v10 = off_1E81F5D20[transportType];
  }

  location = [(MapsSuggestionsETA *)self location];
  [location coordinate];
  v13 = v12;
  location2 = [(MapsSuggestionsETA *)self location];
  [location2 coordinate];
  v16 = v15;
  location3 = [(MapsSuggestionsETA *)self location];
  [location3 horizontalAccuracy];
  v19 = v18;
  time = [(MapsSuggestionsETA *)self time];
  originator = [(MapsSuggestionsETA *)self originator];
  v22 = [v3 initWithFormat:@"%@ %.0fs over @%@, %@ (%@ / <%.8f, %.8f> ±%.2fm / %@ / %@)", v4, v6, writtenRouteName, trafficString, v10, v13, v16, v19, time, originator];

  return v22;
}

@end