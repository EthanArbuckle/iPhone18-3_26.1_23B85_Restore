@interface MapsSuggestionsSignalPackEvaluator
+ (id)evaluatorFromSignalPack:(id)a3;
- (BOOL)hasWeatherInfo;
- (BOOL)hasWeatherPrecipitationInfo;
- (BOOL)isBadWeather;
- (BOOL)isColdWeather;
- (BOOL)isEasilyWalkable;
- (BOOL)isHighChanceOfRaining;
- (BOOL)isHighChanceOfSnowing;
- (BOOL)isHotWeather;
- (BOOL)isLowChanceOfRaining;
- (BOOL)isLowChanceOfSnowing;
- (BOOL)isMildWeather;
- (BOOL)isWalkable;
- (MapsSuggestionsSignalPackEvaluator)initWithSignalPack:(id)a3;
- (double)isTransitUserConfidence;
- (double)isTransitUserHereConfidence;
@end

@implementation MapsSuggestionsSignalPackEvaluator

- (double)isTransitUserHereConfidence
{
  if (!GEOConfigGetBOOL())
  {
    goto LABEL_6;
  }

  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "IsTransitUser: MapsSuggestionsIsTransitAvailableHereEnabled is YES", buf, 2u);
  }

  if ([(MapsSuggestionsSignalPack *)self->_signalPack hasType:33])
  {
    [(MapsSuggestionsSignalPack *)self->_signalPack valueForSignalType:33];
    if (v4 != 0.0)
    {
LABEL_6:
      [(MapsSuggestionsSignalPackEvaluator *)self isTransitUserConfidence];
      return result;
    }

    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *v8 = 0;
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "IsTransitUser: MapsSuggestionsSignalTypeIsTransitAvailableHere is NO", v8, 2u);
    }

    return MapsSuggestionsConfidenceDefinitelyFalse();
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *v9 = 0;
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_DEBUG, "IsTransitUser: we don't have MapsSuggestionsSignalTypeIsTransitAvailableHere", v9, 2u);
    }

    return MapsSuggestionsConfidenceDontKnow();
  }
}

- (double)isTransitUserConfidence
{
  v48 = *MEMORY[0x1E69E9840];
  if ([(MapsSuggestionsSignalPack *)self->_signalPack hasType:19]&& [(MapsSuggestionsSignalPackEvaluator *)self isUserPreferenceTransit])
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v44) = 0;
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "IsTransitUser: Prefered Transport type is Transit", &v44, 2u);
    }

    return MapsSuggestionsConfidenceDefinitelyTrue();
  }

  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v44 = 134217984;
    v45 = 0.0;
    _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "IsTransitUser: startScore = %.2f", &v44, 0xCu);
  }

  v5 = 0.0;
  if ([(MapsSuggestionsSignalPack *)self->_signalPack hasType:28])
  {
    [(MapsSuggestionsSignalPack *)self->_signalPack valueForSignalType:28];
    if (v6 != 0.0)
    {
      GEOConfigGetDouble();
      v5 = v7 + 0.0;
      v8 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v44 = 134217984;
        v45 = v5;
        _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "IsTransitUser: score after MapsSuggestionsSignalTypeHasTransitPass = %.2f", &v44, 0xCu);
      }
    }

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  if ([(MapsSuggestionsSignalPack *)self->_signalPack hasType:29])
  {
    ++v9;
    [(MapsSuggestionsSignalPack *)self->_signalPack valueForSignalType:29];
    if (v10 != 0.0)
    {
      GEOConfigGetDouble();
      v5 = v5 + v11;
      v12 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v44 = 134217984;
        v45 = v5;
        _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_DEBUG, "IsTransitUser: score after MapsSuggestionsSignalTypeHasFavoriteTransitPOI = %.2f", &v44, 0xCu);
      }
    }
  }

  if ([(MapsSuggestionsSignalPack *)self->_signalPack hasType:30])
  {
    ++v9;
    [(MapsSuggestionsSignalPack *)self->_signalPack valueForSignalType:30];
    if (v13 != 0.0)
    {
      GEOConfigGetDouble();
      v5 = v5 + v14;
      v15 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v44 = 134217984;
        v45 = v5;
        _os_log_impl(&dword_1C5126000, v15, OS_LOG_TYPE_DEBUG, "IsTransitUser: score after MapsSuggestionsSignalTypeHasFavoriteTransitLine = %.2f", &v44, 0xCu);
      }
    }
  }

  if ([(MapsSuggestionsSignalPack *)self->_signalPack hasType:31])
  {
    ++v9;
    [(MapsSuggestionsSignalPack *)self->_signalPack valueForSignalType:31];
    if (v16 != 0.0)
    {
      GEOConfigGetDouble();
      v5 = v5 + v17;
      v18 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v44 = 134217984;
        v45 = v5;
        _os_log_impl(&dword_1C5126000, v18, OS_LOG_TYPE_DEBUG, "IsTransitUser: score after MapsSuggestionsSignalTypeHasRecentTransitRoute = %.2f", &v44, 0xCu);
      }
    }
  }

  if ([(MapsSuggestionsSignalPack *)self->_signalPack hasType:32])
  {
    [(MapsSuggestionsSignalPack *)self->_signalPack valueForSignalType:32];
    v20 = v19;
    GEOConfigGetDouble();
    if (v21 >= v20)
    {
      GEOConfigGetDouble();
    }

    else
    {
      GEOConfigGetDouble();
      v23 = v22;
      GEOConfigGetDouble();
      if (v23 + v24 <= v20 || (GEOConfigGetDouble(), v25 == 0.0))
      {
        GEOConfigGetDouble();
        v27 = v26;
        GEOConfigGetDouble();
        v29 = v27 * v28;
      }

      else
      {
        GEOConfigGetDouble();
        v38 = v20 - v37;
        GEOConfigGetDouble();
        v40 = 1.0 - v38 / v39;
        GEOConfigGetDouble();
        v42 = v41;
        GEOConfigGetDouble();
        v29 = v40 * (v42 * (1.0 - v43));
      }
    }

    ++v9;
    v5 = v5 + v29;
    v31 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      v44 = 134217984;
      v45 = v5;
      _os_log_impl(&dword_1C5126000, v31, OS_LOG_TYPE_DEBUG, "IsTransitUser: score after MapsSuggestionsSignalTypeTimeSinceLastTransitRoute = %.2f", &v44, 0xCu);
    }
  }

  else if (!v9)
  {
    return MapsSuggestionsConfidenceDontKnow();
  }

  v32 = v5 / v9;
  v33 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    v44 = 134218240;
    v45 = v32;
    v46 = 1024;
    v47 = v9;
    _os_log_impl(&dword_1C5126000, v33, OS_LOG_TYPE_DEBUG, "IsTransitUser: finalScore = %.2f, number of signals: %d", &v44, 0x12u);
  }

  GEOConfigGetDouble();
  v35 = v34;
  Integer = GEOConfigGetInteger();
  if (v32 >= v35)
  {
    if (Integer > v9)
    {
      return MapsSuggestionsConfidenceLikelyTrue();
    }

    return MapsSuggestionsConfidenceDefinitelyTrue();
  }

  if (Integer <= v9)
  {
    return MapsSuggestionsConfidenceDefinitelyFalse();
  }

  else
  {
    return MapsSuggestionsConfidenceLikelyFalse();
  }
}

- (MapsSuggestionsSignalPackEvaluator)initWithSignalPack:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v11.receiver = self;
    v11.super_class = MapsSuggestionsSignalPackEvaluator;
    v6 = [(MapsSuggestionsSignalPackEvaluator *)&v11 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_signalPack, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSignalPackEvaluator.mm";
      v14 = 1024;
      v15 = 144;
      v16 = 2082;
      v17 = "[MapsSuggestionsSignalPackEvaluator initWithSignalPack:]";
      v18 = 2082;
      v19 = "nil == (signalPack)";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires signal pack", buf, 0x26u);
    }

    v8 = 0;
  }

  return v8;
}

+ (id)evaluatorFromSignalPack:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [[a1 alloc] initWithSignalPack:v4];
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446978;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSignalPackEvaluator.mm";
      v10 = 1024;
      v11 = 155;
      v12 = 2082;
      v13 = "+[MapsSuggestionsSignalPackEvaluator evaluatorFromSignalPack:]";
      v14 = 2082;
      v15 = "nil == (signalPack)";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires signal pack", &v8, 0x26u);
    }

    v5 = 0;
  }

  return v5;
}

- (BOOL)hasWeatherInfo
{
  if ([(MapsSuggestionsSignalPackEvaluator *)self hasWeatherTemperatureInfo])
  {
    return 1;
  }

  return [(MapsSuggestionsSignalPackEvaluator *)self hasWeatherPrecipitationInfo];
}

- (BOOL)isColdWeather
{
  [(MapsSuggestionsSignalPack *)self->_signalPack valueForSignalType:6];
  v3 = v2;
  GEOConfigGetDouble();
  return v4 > v3;
}

- (BOOL)isHotWeather
{
  [(MapsSuggestionsSignalPack *)self->_signalPack valueForSignalType:6];
  v3 = v2;
  GEOConfigGetDouble();
  return v4 < v3;
}

- (BOOL)isMildWeather
{
  if ([(MapsSuggestionsSignalPackEvaluator *)self isHotWeather])
  {
    return 0;
  }

  else
  {
    return ![(MapsSuggestionsSignalPackEvaluator *)self isHotWeather];
  }
}

- (BOOL)hasWeatherPrecipitationInfo
{
  if ([(MapsSuggestionsSignalPack *)self->_signalPack hasType:8])
  {
    return 1;
  }

  signalPack = self->_signalPack;

  return [(MapsSuggestionsSignalPack *)signalPack hasType:9];
}

- (BOOL)isLowChanceOfRaining
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(MapsSuggestionsSignalPackEvaluator *)self hasWeatherPrecipitationInfo])
  {
    [(MapsSuggestionsSignalPack *)self->_signalPack valueForSignalType:8];
    v4 = v3;
    GEOConfigGetDouble();
    return v5 > v4;
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446978;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSignalPackEvaluator.mm";
      v10 = 1024;
      v11 = 195;
      v12 = 2082;
      v13 = "[MapsSuggestionsSignalPackEvaluator isLowChanceOfRaining]";
      v14 = 2082;
      v15 = "! [self hasWeatherPrecipitationInfo]";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. You need to check -hasWeatherPrecipitationInfo first!", &v8, 0x26u);
    }

    return 0;
  }
}

- (BOOL)isHighChanceOfRaining
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(MapsSuggestionsSignalPackEvaluator *)self hasWeatherPrecipitationInfo])
  {
    [(MapsSuggestionsSignalPack *)self->_signalPack valueForSignalType:8];
    v4 = v3;
    GEOConfigGetDouble();
    return v5 < v4;
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446978;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSignalPackEvaluator.mm";
      v10 = 1024;
      v11 = 201;
      v12 = 2082;
      v13 = "[MapsSuggestionsSignalPackEvaluator isHighChanceOfRaining]";
      v14 = 2082;
      v15 = "! [self hasWeatherPrecipitationInfo]";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. You need to check -hasWeatherPrecipitationInfo first!", &v8, 0x26u);
    }

    return 0;
  }
}

- (BOOL)isLowChanceOfSnowing
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(MapsSuggestionsSignalPackEvaluator *)self hasWeatherPrecipitationInfo])
  {
    [(MapsSuggestionsSignalPack *)self->_signalPack valueForSignalType:9];
    v4 = v3;
    GEOConfigGetDouble();
    return v5 > v4;
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446978;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSignalPackEvaluator.mm";
      v10 = 1024;
      v11 = 207;
      v12 = 2082;
      v13 = "[MapsSuggestionsSignalPackEvaluator isLowChanceOfSnowing]";
      v14 = 2082;
      v15 = "! [self hasWeatherPrecipitationInfo]";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. You need to check -hasWeatherPrecipitationInfo first!", &v8, 0x26u);
    }

    return 0;
  }
}

- (BOOL)isHighChanceOfSnowing
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(MapsSuggestionsSignalPackEvaluator *)self hasWeatherPrecipitationInfo])
  {
    [(MapsSuggestionsSignalPack *)self->_signalPack valueForSignalType:9];
    v4 = v3;
    GEOConfigGetDouble();
    return v5 < v4;
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446978;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSignalPackEvaluator.mm";
      v10 = 1024;
      v11 = 213;
      v12 = 2082;
      v13 = "[MapsSuggestionsSignalPackEvaluator isHighChanceOfSnowing]";
      v14 = 2082;
      v15 = "! [self hasWeatherPrecipitationInfo]";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. You need to check -hasWeatherPrecipitationInfo first!", &v8, 0x26u);
    }

    return 0;
  }
}

- (BOOL)isBadWeather
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(MapsSuggestionsSignalPackEvaluator *)self hasWeatherTemperatureInfo];
  v4 = [(MapsSuggestionsSignalPack *)self->_signalPack hasType:8];
  v5 = [(MapsSuggestionsSignalPack *)self->_signalPack hasType:9];
  v6 = v5;
  if (v3 || v4 || v5)
  {
    if (v3 && [(MapsSuggestionsSignalPackEvaluator *)self isColdWeather]|| v4 && [(MapsSuggestionsSignalPackEvaluator *)self isHighChanceOfRaining]|| v6 && [(MapsSuggestionsSignalPackEvaluator *)self isHighChanceOfSnowing])
    {
      return 1;
    }
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 136446978;
      v10 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSignalPackEvaluator.mm";
      v11 = 1024;
      v12 = 223;
      v13 = 2082;
      v14 = "[MapsSuggestionsSignalPackEvaluator isBadWeather]";
      v15 = 2082;
      v16 = "! (hasTemperatureInfo || hasRainInfo || hasSnowInfo)";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. You need to check -hasWeatherTemperatureInfo or -hasWeatherPrecipitationInfo first!", &v9, 0x26u);
    }
  }

  return 0;
}

- (BOOL)isEasilyWalkable
{
  [(MapsSuggestionsSignalPack *)self->_signalPack valueForSignalType:13];
  v3 = v2;
  GEOConfigGetDouble();
  return v4 >= v3;
}

- (BOOL)isWalkable
{
  [(MapsSuggestionsSignalPack *)self->_signalPack valueForSignalType:13];
  v3 = v2;
  GEOConfigGetDouble();
  return v4 >= v3;
}

@end