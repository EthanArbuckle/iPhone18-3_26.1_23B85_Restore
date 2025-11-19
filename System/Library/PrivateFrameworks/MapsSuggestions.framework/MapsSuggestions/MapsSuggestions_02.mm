id MapsSuggestionsShortcutTypeStyleAttributes(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1 <= 2)
  {
    if (a1 >= 2)
    {
      if (a1 == 2)
      {
        v1 = [MEMORY[0x1E69A1DB0] homeStyleAttributes];
        goto LABEL_12;
      }

      goto LABEL_8;
    }

    goto LABEL_11;
  }

  if (a1 == 3)
  {
    v1 = [MEMORY[0x1E69A1DB0] workStyleAttributes];
  }

  else
  {
    if (a1 != 5)
    {
      if (a1 != 6)
      {
LABEL_8:
        v2 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
        {
          v4 = 136446978;
          v5 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsShortcut.m";
          v6 = 1024;
          v7 = 743;
          v8 = 2082;
          v9 = "GEOFeatureStyleAttributes * _Nonnull MapsSuggestionsShortcutTypeStyleAttributes(MapsSuggestionsShortcutType)";
          v10 = 2082;
          v11 = "YES";
          _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Detected an unsupported MapsSuggestionsShortcutType!", &v4, 0x26u);
        }
      }

LABEL_11:
      v1 = [MEMORY[0x1E69A1DB0] addressMarkerStyleAttributes];
      goto LABEL_12;
    }

    v1 = [MEMORY[0x1E69A1DB0] schoolStyleAttributes];
  }

LABEL_12:

  return v1;
}

void sub_1C521CF44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v33 + 32));

  objc_destroyWeak((v32 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1C521D4A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1C521E39C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23, void *a24, uint64_t a25, void *a26, void *a27, void *a28, id a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36)
{

  _Unwind_Resume(a1);
}

void sub_1C521FC2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23, uint64_t a24, void *a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, id a42)
{

  _Unwind_Resume(a1);
}

void sub_1C52219A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23, uint64_t a24, void *a25, void *a26, id a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  _Unwind_Resume(a1);
}

uint64_t ___ZL30_minVisitsForProposedShortcutsv_block_invoke()
{
  result = GEOConfigGetInteger();
  _minVisitsForProposedShortcuts(void)::s_value = result;
  return result;
}

uint64_t ___ZL27_maxAgeForProposedShortcutsv_block_invoke()
{
  result = GEOConfigGetDouble();
  _maxAgeForProposedShortcuts(void)::s_value = v1;
  return result;
}

uint64_t ___visitCountLimit_block_invoke()
{
  result = GEOConfigGetInteger();
  s_lowVisitCountImproverVisitLimit = result;
  return result;
}

uint64_t MSgVisitTypeForRTVisitType(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_1C52A8DD8[a1 - 1];
  }
}

uint64_t rtVisitTypeForMSgVisitType(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_1C52A8DD8[a1 - 1];
  }
}

uint64_t MSgVisitSourceForRTVisitSource(uint64_t result)
{
  if ((result - 1) >= 3)
  {
    return 0;
  }

  return result;
}

uint64_t rtVisitSourceForMSgVisitSource(uint64_t result)
{
  if ((result - 1) >= 3)
  {
    return 0;
  }

  return result;
}

id RTVisitConfidenceForMSgVisitConfidence(uint64_t a1)
{
  if (!a1)
  {
    v3 = MEMORY[0x1E69990D8];
LABEL_5:
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:{*v3, v1}];

    return v4;
  }

  if (a1 == 1)
  {
    v3 = MEMORY[0x1E69990D0];
    goto LABEL_5;
  }

  v4 = 0;

  return v4;
}

uint64_t MSgVisitConfidenceForRTVisitConfidence(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    [v1 doubleValue];
    if (fabs(v3) >= 0.01)
    {
      [v2 doubleValue];
      if (fabs(v5 + -1.0) < 0.01)
      {
        v4 = 1;
      }

      else
      {
        v4 = -1;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

id MapsSuggestionsMostRecentLocation()
{
  if (_initLockIfNeeded_s_onceToken != -1)
  {
    MapsSuggestionsCurrentBestLocation_cold_1();
  }

  v0 = _initLockIfNeeded_s_lock;
  objc_sync_enter(v0);
  v1 = s_mostRecentLocation;
  objc_sync_exit(v0);

  return v1;
}

void MapsSuggestionsSetInCoarseLocation(char a1)
{
  if (_initLockIfNeeded_s_onceToken != -1)
  {
    MapsSuggestionsCurrentBestLocation_cold_1();
  }

  obj = _initLockIfNeeded_s_lock;
  objc_sync_enter(obj);
  s_inCoarseMode = a1;
  objc_sync_exit(obj);
}

void MapsSuggestionsResetCurrentLocation()
{
  if (_initLockIfNeeded_s_onceToken != -1)
  {
    MapsSuggestionsCurrentBestLocation_cold_1();
  }

  obj = _initLockIfNeeded_s_lock;
  objc_sync_enter(obj);
  v0 = s_mostRecentLocation;
  s_mostRecentLocation = 0;

  v1 = s_currentBestLocation;
  s_currentBestLocation = 0;

  objc_sync_exit(obj);
}

uint64_t __MapsSuggestionsBestLocation_block_invoke()
{
  GEOConfigGetDouble();
  MapsSuggestionsBestLocation_s_tooOld = v0;
  result = GEOConfigGetDouble();
  MapsSuggestionsBestLocation_s_sameTimeThreshold = v2;
  return result;
}

BOOL MapsSuggestionsIsValidVisit(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 hasArrivalDate] && (objc_msgSend(MEMORY[0x1E695DF00], "distantPast"), v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "arrivalDate"), v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v3 != v4) && (objc_msgSend(v2, "horizontalAccuracy"), v5 >= 0.0))
  {
    [v2 coordinate];
    v6 = CLLocationCoordinate2DIsValid(v8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t MapsSuggestionsAlmostSameLocation(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = 0;
    if (v3 && v4)
    {
      [v3 coordinate];
      v8 = v7;
      v10 = v9;
      [v5 coordinate];
      v12 = vabdd_f64(v8, v11) < 0.000001;
      v6 = vabdd_f64(v10, v13) < 0.000001 && v12;
    }
  }

  return v6;
}

uint64_t MapsSuggestionsCoordinateFromMapItem(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 136446978;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsLocation.m";
      v13 = 1024;
      v14 = 240;
      v15 = 2082;
      v16 = "BOOL MapsSuggestionsCoordinateFromMapItem(MapsSuggestionsMapItem *__strong _Nonnull, CLLocationCoordinate2D * _Nonnull)";
      v17 = 2082;
      v18 = "nil == (mapItem)";
      v9 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an mapItem";
LABEL_8:
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, v9, &v11, 0x26u);
    }

LABEL_9:

    v7 = 0;
    goto LABEL_10;
  }

  if (!a2)
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 136446978;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsLocation.m";
      v13 = 1024;
      v14 = 241;
      v15 = 2082;
      v16 = "BOOL MapsSuggestionsCoordinateFromMapItem(MapsSuggestionsMapItem *__strong _Nonnull, CLLocationCoordinate2D * _Nonnull)";
      v17 = 2082;
      v18 = "NULL == outCoordinate";
      v9 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a coordinate as output parameter";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  [v3 coordinate];
  *a2 = v5;
  a2[1] = v6;
  v7 = 1;
LABEL_10:

  return v7;
}

uint64_t MapsSuggestionsCoordinateFromEntry(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v15 = 136446978;
      v16 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsLocation.m";
      v17 = 1024;
      v18 = 251;
      v19 = 2082;
      v20 = "BOOL MapsSuggestionsCoordinateFromEntry(MapsSuggestionsEntry *__strong _Nonnull, CLLocationCoordinate2D * _Nonnull)";
      v21 = 2082;
      v22 = "nil == (entry)";
      v11 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an entry";
LABEL_12:
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, v11, &v15, 0x26u);
    }

LABEL_13:

    goto LABEL_14;
  }

  if (!a2)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v15 = 136446978;
      v16 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsLocation.m";
      v17 = 1024;
      v18 = 252;
      v19 = 2082;
      v20 = "BOOL MapsSuggestionsCoordinateFromEntry(MapsSuggestionsEntry *__strong _Nonnull, CLLocationCoordinate2D * _Nonnull)";
      v21 = 2082;
      v22 = "NULL == outCoordinate";
      v11 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a coordinate as output parameter";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (![v3 containsKey:@"MapsSuggestionsLatitudeKey"] || !objc_msgSend(v4, "containsKey:", @"MapsSuggestionsLongitudeKey"))
  {
    v12 = [v4 geoMapItem];

    if (v12)
    {
      v13 = [v4 geoMapItem];
      v9 = MapsSuggestionsCoordinateFromMapItem(v13, a2);

      goto LABEL_15;
    }

LABEL_14:
    v9 = 0;
    goto LABEL_15;
  }

  v5 = [v4 numberForKey:@"MapsSuggestionsLatitudeKey"];
  [v5 doubleValue];
  *a2 = v6;

  v7 = [v4 numberForKey:@"MapsSuggestionsLongitudeKey"];
  [v7 doubleValue];
  a2[1] = v8;

  v9 = 1;
LABEL_15:

  return v9;
}

uint64_t MapsSuggestionsDistanceBetweenEntries(void *a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (!v5)
  {
    v14 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v17 = 136446978;
    v18 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsLocation.m";
    v19 = 1024;
    v20 = 269;
    v21 = 2082;
    v22 = "BOOL MapsSuggestionsDistanceBetweenEntries(MapsSuggestionsEntry *__strong _Nonnull, MapsSuggestionsEntry *__strong _Nonnull, CLLocationDistance * _Nonnull)";
    v23 = 2082;
    v24 = "nil == (a)";
    v15 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an entry A";
LABEL_19:
    _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_ERROR, v15, &v17, 0x26u);
    goto LABEL_20;
  }

  if (!v6)
  {
    v14 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v17 = 136446978;
    v18 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsLocation.m";
    v19 = 1024;
    v20 = 270;
    v21 = 2082;
    v22 = "BOOL MapsSuggestionsDistanceBetweenEntries(MapsSuggestionsEntry *__strong _Nonnull, MapsSuggestionsEntry *__strong _Nonnull, CLLocationDistance * _Nonnull)";
    v23 = 2082;
    v24 = "nil == (b)";
    v15 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an entry B";
    goto LABEL_19;
  }

  if (!a3)
  {
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = 136446978;
      v18 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsLocation.m";
      v19 = 1024;
      v20 = 271;
      v21 = 2082;
      v22 = "BOOL MapsSuggestionsDistanceBetweenEntries(MapsSuggestionsEntry *__strong _Nonnull, MapsSuggestionsEntry *__strong _Nonnull, CLLocationDistance * _Nonnull)";
      v23 = 2082;
      v24 = "NULL == outDistance";
      v15 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a distance as output parameter";
      goto LABEL_19;
    }

LABEL_20:

    v12 = 0;
    goto LABEL_21;
  }

  v8 = MapsSuggestionsLocationForEntry(v5);
  v9 = MapsSuggestionsLocationForEntry(v7);
  v10 = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (!v11)
  {
    [v8 distanceFromLocation:v9];
    *a3 = v13;
  }

LABEL_21:
  return v12;
}

id MapsSuggestionsLocationForEntry(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *v6 = 0;
    *&v6[8] = 0;
    v1 = MapsSuggestionsCoordinateFromEntry(a1, v6);
    v2 = 0;
    if (v1)
    {
      v3 = objc_alloc(MEMORY[0x1E6985C40]);
      v2 = [v3 initWithLatitude:*v6 longitude:*&v6[8]];
    }
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v6 = 136446978;
      *&v6[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsLocation.m";
      *&v6[12] = 1024;
      *&v6[14] = 351;
      v7 = 2082;
      v8 = "CLLocation * _Nullable MapsSuggestionsLocationForEntry(MapsSuggestionsEntry *__strong _Nonnull)";
      v9 = 2082;
      v10 = "nil == (entry)";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an entry", v6, 0x26u);
    }

    v2 = 0;
  }

  return v2;
}

id MapsSuggestionsLocationForMapItem(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    [v1 coordinate];
    v5 = [objc_alloc(MEMORY[0x1E6985C40]) initWithLatitude:v3 longitude:v4];
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446978;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsLocation.m";
      v10 = 1024;
      v11 = 337;
      v12 = 2082;
      v13 = "CLLocation * _Nullable MapsSuggestionsLocationForMapItem(MapsSuggestionsMapItem *__strong _Nonnull)";
      v14 = 2082;
      v15 = "nil == (mapItem)";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a mapItem", &v8, 0x26u);
    }

    v5 = 0;
  }

  return v5;
}

BOOL MapsSuggestionsDistanceFromHereToEntry(void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!v3)
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v12 = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsLocation.m";
      v14 = 1024;
      v15 = 306;
      v16 = 2082;
      v17 = "BOOL MapsSuggestionsDistanceFromHereToEntry(MapsSuggestionsEntry *__strong _Nonnull, CLLocationDistance * _Nonnull)";
      v18 = 2082;
      v19 = "nil == (entry)";
      v9 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an entry";
LABEL_11:
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, v9, &v12, 0x26u);
    }

LABEL_15:
    v7 = 0;
    goto LABEL_16;
  }

  if (!a2)
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v12 = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsLocation.m";
      v14 = 1024;
      v15 = 307;
      v16 = 2082;
      v17 = "BOOL MapsSuggestionsDistanceFromHereToEntry(MapsSuggestionsEntry *__strong _Nonnull, CLLocationDistance * _Nonnull)";
      v18 = 2082;
      v19 = "NULL == outDistance";
      v9 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a distance as output parameter";
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  v4 = MapsSuggestionsCurrentBestLocation();
  if (!v4)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "Current Location is nil. Cannot calculate distance from CurrentLocation", &v12, 2u);
    }

    goto LABEL_15;
  }

  v5 = MapsSuggestionsLocationForEntry(v3);
  v6 = v5;
  v7 = v5 != 0;
  if (v5)
  {
    [v5 distanceFromLocation:v4];
    *a2 = v8;
  }

LABEL_16:
  return v7;
}

void MapsSuggestionsDistanceBetweenCoordinates(double a1, double a2, CLLocationDegrees a3, CLLocationDegrees a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if (CLLocationCoordinate2DIsValid(*&a1))
  {
    v21.latitude = a3;
    v21.longitude = a4;
    if (CLLocationCoordinate2DIsValid(v21))
    {
      v8 = [objc_alloc(MEMORY[0x1E6985C40]) initWithLatitude:a1 longitude:a2];
      v9 = [objc_alloc(MEMORY[0x1E6985C40]) initWithLatitude:a3 longitude:a4];
      [v8 distanceFromLocation:v9];

      return;
    }

    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsLocation.m";
      v14 = 1024;
      v15 = 327;
      v16 = 2082;
      v17 = "CLLocationDistance MapsSuggestionsDistanceBetweenCoordinates(CLLocationCoordinate2D, CLLocationCoordinate2D)";
      v18 = 2082;
      v19 = "!CLLocationCoordinate2DIsValid(end)";
      v11 = "At %{public}s:%d, %{public}s forbids: %{public}s. End coordinate is invalid. Returning CLLocationDistanceMax.";
      goto LABEL_8;
    }
  }

  else
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsLocation.m";
      v14 = 1024;
      v15 = 326;
      v16 = 2082;
      v17 = "CLLocationDistance MapsSuggestionsDistanceBetweenCoordinates(CLLocationCoordinate2D, CLLocationCoordinate2D)";
      v18 = 2082;
      v19 = "!CLLocationCoordinate2DIsValid(start)";
      v11 = "At %{public}s:%d, %{public}s forbids: %{public}s. Start coordinate is invalid. Returning CLLocationDistanceMax.";
LABEL_8:
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, v11, &v12, 0x26u);
    }
  }
}

id NSDataFromCLLocationCoordinate(double a1, double a2)
{
  v18[2] = *MEMORY[0x1E69E9840];
  if (CLLocationCoordinate2DIsValid(*&a1))
  {
    v17[0] = @"latitude";
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:a1];
    v17[1] = @"longitude";
    v18[0] = v4;
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
    v18[1] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];

    v12 = 0;
    v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v12];
    v8 = v12;
    if (!v7)
    {
      v9 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%+.8f, %+.8f", *&a1, *&a2];
        *buf = 138412546;
        v14 = v10;
        v15 = 2112;
        v16 = v8;
        _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "Error archiving coordinate %@: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "This is not a valid coordinate", buf, 2u);
    }

    v7 = 0;
  }

  return v7;
}

double CLLocationCoordinateFromNSData(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = objc_alloc(MEMORY[0x1E695DFD8]);
    v3 = objc_opt_class();
    v4 = objc_opt_class();
    v5 = objc_opt_class();
    v6 = [v2 initWithObjects:{v3, v4, v5, objc_opt_class(), 0}];
    v23 = 0;
    v7 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v6 fromData:v1 error:&v23];
    v8 = v23;
    if (v8)
    {
      v9 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v25 = v8;
        _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "Error decoding CoordinateData - %@", buf, 0xCu);
      }

      latitude = *MEMORY[0x1E6985CC0];
    }

    else
    {
      latitude = *MEMORY[0x1E6985CC0];
      v13 = [v7 objectForKeyedSubscript:@"latitude"];
      if (v13)
      {
        v14 = v13;
        v15 = [v7 objectForKeyedSubscript:@"longitude"];

        if (v15)
        {
          v16 = [v7 objectForKeyedSubscript:@"latitude"];
          [v16 doubleValue];
          v18 = v17;
          v19 = [v7 objectForKeyedSubscript:@"longitude"];
          [v19 doubleValue];
          v21 = CLLocationCoordinate2DMake(v18, v20);

          if (CLLocationCoordinate2DIsValid(v21))
          {
            latitude = v21.latitude;
          }

          else
          {
            v22 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v25 = v7;
              _os_log_impl(&dword_1C5126000, v22, OS_LOG_TYPE_ERROR, "Unarchived an NSDictionary but it doesn't contain valid coordinates. Dictionary: %@", buf, 0xCu);
            }
          }
        }
      }
    }
  }

  else
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, "coordinateData should not be nil", buf, 2u);
    }

    latitude = *MEMORY[0x1E6985CC0];
  }

  return latitude;
}

__CFString *NSStringFromCLLocationCoordinate(double a1, double a2)
{
  if (CLLocationCoordinate2DIsValid(*&a1))
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<%+.6f, %+.6f>", *&a1, *&a2];
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "This is not a valid coordinate", buf, 2u);
    }

    v4 = @"Invalid";
  }

  return v4;
}

id NSStringFromCLLocationDistance(double a1)
{
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%f", *&a1];

  return v1;
}

__CFString *NSStringFromMapsSuggestionsCurrentBestLocation()
{
  v0 = MapsSuggestionsCurrentBestLocation();
  v1 = v0;
  if (v0)
  {
    [v0 coordinate];
    v4 = NSStringFromCLLocationCoordinate(v2, v3);
  }

  else
  {
    v4 = @"<Unknown>";
  }

  return v4;
}

id CLLocationFromGEOLocationCoordinate2D(double a1, double a2)
{
  v4 = objc_alloc(MEMORY[0x1E6985C40]);
  v5 = [MEMORY[0x1E695DF00] date];
  v6 = [v4 initWithCoordinate:v5 altitude:a1 horizontalAccuracy:a2 verticalAccuracy:0.0 timestamp:{0.0, -1.0}];

  return v6;
}

id GEOLocationFromCLLocationCoordinate2D(double a1, double a2)
{
  if (CLLocationCoordinate2DIsValid(*&a1))
  {
    v4 = objc_alloc_init(MEMORY[0x1E69A1E50]);
    [v4 setLat:a1];
    [v4 setLng:a2];
    v5 = objc_alloc_init(MEMORY[0x1E69A1E70]);
    [v5 setLatLng:v4];
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "This is not a valid coordinate", v8, 2u);
    }

    v5 = 0;
  }

  return v5;
}

id CLLocationFromGEOLocation(void *a1)
{
  v1 = a1;
  [v1 coordinate];
  v3 = 0;
  if (fabs(v4) <= 180.0 && fabs(v2) <= 90.0)
  {
    v5 = objc_alloc(MEMORY[0x1E6985C40]);
    [v1 coordinate];
    v27 = v6;
    [v1 coordinate];
    v8 = v7;
    v9 = [v1 altitude];
    [v1 speed];
    v11 = v10;
    [v1 course];
    v13 = v12;
    [v1 horizontalAccuracy];
    v15 = v14;
    [v1 verticalAccuracy];
    v17 = v16;
    [v1 speedAccuracy];
    v19 = v18;
    [v1 courseAccuracy];
    v21 = v20;
    v22 = [v1 type] - 1;
    if (v22 > 2)
    {
      v23 = 0;
    }

    else
    {
      v23 = dword_1C52A8E00[v22];
    }

    v24 = objc_alloc(MEMORY[0x1E695DF00]);
    [v1 timestamp];
    v25 = [v24 initWithTimeIntervalSinceReferenceDate:?];
    v3 = [v5 initWithLatitude:v23 longitude:v25 altitude:v27 speed:v8 course:v9 horizontalAccuracy:v11 verticalAccuracy:v13 speedAccuracy:v15 courseAccuracy:v17 type:v19 timestamp:v21];
  }

  return v3;
}

id MapsSuggestionsAgeAsStringForLocation(void *a1)
{
  v1 = a1;
  if (MapsSuggestionsAgeAsStringForLocation_onceToken != -1)
  {
    MapsSuggestionsAgeAsStringForLocation_cold_1();
  }

  [v1 timeIntervalSinceNow];
  if (v2 <= -60.0)
  {
    v3 = [MapsSuggestionsAgeAsStringForLocation_formatter localizedStringFromTimeInterval:?];
  }

  else
  {
    v3 = MapsSuggestionsAgeAsStringForLocation_justNow;
  }

  v4 = v3;

  return v4;
}

uint64_t __MapsSuggestionsAgeAsStringForLocation_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_6;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "Location";
  if (_MapsSuggestionsBundle_s_msgBundleToken_6 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_6, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_6;
  v1 = [v0 localizedStringForKey:@"Just Now" value:@"Just Now<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);
  v3 = MapsSuggestionsAgeAsStringForLocation_justNow;
  MapsSuggestionsAgeAsStringForLocation_justNow = v2;

  v4 = objc_alloc_init(MEMORY[0x1E696AE78]);
  v5 = MapsSuggestionsAgeAsStringForLocation_formatter;
  MapsSuggestionsAgeAsStringForLocation_formatter = v4;

  v6 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [MapsSuggestionsAgeAsStringForLocation_formatter setLocale:v6];

  return [MapsSuggestionsAgeAsStringForLocation_formatter setDateTimeStyle:1];
}

void sub_1C52257C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C52277EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1C52281F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void MSg::Queue::async<MapsSuggestionsPLCRoutineSource>(NSObject **a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = v5;
    v8 = *a1;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = ___ZNK3MSg5Queue5asyncI31MapsSuggestionsPLCRoutineSourceEEvPT_U13block_pointerFvS4_E_block_invoke;
    v10[3] = &unk_1E81F5528;
    v11 = v7;
    v12 = v6;
    dispatch_async(v8, v10);

    v9 = v11;
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v14 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsQueue.hpp";
      v15 = 1024;
      v16 = 177;
      v17 = 2082;
      v18 = "void MSg::Queue::async(S *, void (^__strong)(S *)) const [S = MapsSuggestionsPLCRoutineSource]";
      v19 = 2082;
      v20 = "nil == (callerSelf)";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires self", buf, 0x26u);
    }
  }
}

void ___ZNK3MSg5Queue5asyncI31MapsSuggestionsPLCRoutineSourceEEvPT_U13block_pointerFvS4_E_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "self went away in MSg::Queue::async()", v4, 2u);
    }
  }
}

id MapsSuggestionsLocalizedETAFormatStringWithTime(void *a1, void *a2, void *a3)
{
  v5 = MapsSuggestionsLocalizedETAFormatStringWithTime_s_onceToken;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  if (v5 != -1)
  {
    MapsSuggestionsLocalizedETAFormatStringWithTime_cold_1();
  }

  v9 = (*(MapsSuggestionsLocalizedETAFormatStringWithTime_s_formatter + 16))(MapsSuggestionsLocalizedETAFormatStringWithTime_s_formatter, v8, v7, v6);

  return v9;
}

void __MapsSuggestionsLocalizedETAFormatStringWithTime_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"MSG_EVENT_TIME_WITH_ETA_WITH_TRANSPORT_MODE" value:@"%@ table:{%@ %@<unlocalized>", 0}];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __MapsSuggestionsLocalizedETAFormatStringWithTime_block_invoke_2;
  v6[3] = &unk_1E81F8390;
  v7 = v2;
  v3 = v2;
  v4 = _Block_copy(v6);
  v5 = MapsSuggestionsLocalizedETAFormatStringWithTime_s_formatter;
  MapsSuggestionsLocalizedETAFormatStringWithTime_s_formatter = v4;
}

id __MapsSuggestionsLocalizedETAFormatStringWithTime_block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = MEMORY[0x1E696AEC0];
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = [[v7 alloc] initWithFormat:*(a1 + 32), v10, v9, v8];

  return v11;
}

id MapsSuggestionsLocalizedETAFormatString(void *a1, void *a2)
{
  v3 = MapsSuggestionsLocalizedETAFormatString_s_onceToken;
  v4 = a2;
  v5 = a1;
  if (v3 != -1)
  {
    MapsSuggestionsLocalizedETAFormatString_cold_1();
  }

  v6 = (*(MapsSuggestionsLocalizedETAFormatString_s_formatter + 16))(MapsSuggestionsLocalizedETAFormatString_s_formatter, v5, v4);

  return v6;
}

void __MapsSuggestionsLocalizedETAFormatString_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"MSG_ETA_WITH_TRANSPORT_MODE" value:@"%@ %@<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __MapsSuggestionsLocalizedETAFormatString_block_invoke_2;
  v6[3] = &unk_1E81F6430;
  v7 = v2;
  v3 = v2;
  v4 = _Block_copy(v6);
  v5 = MapsSuggestionsLocalizedETAFormatString_s_formatter;
  MapsSuggestionsLocalizedETAFormatString_s_formatter = v4;
}

id __MapsSuggestionsLocalizedETAFormatString_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithFormat:*(a1 + 32), v7, v6];

  return v8;
}

id MapsSuggestionsLocalizedETAToHomeString(void *a1)
{
  v1 = MapsSuggestionsLocalizedETAToHomeString_s_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    MapsSuggestionsLocalizedETAToHomeString_cold_1();
  }

  v3 = (*(MapsSuggestionsLocalizedETAToHomeString_s_formatter + 16))(MapsSuggestionsLocalizedETAToHomeString_s_formatter, v2);

  return v3;
}

void __MapsSuggestionsLocalizedETAToHomeString_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"MAPS_ETA_TO_HOME" value:@"%@ to get home<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __MapsSuggestionsLocalizedETAToHomeString_block_invoke_2;
  v6[3] = &unk_1E81F83B8;
  v7 = v2;
  v3 = v2;
  v4 = _Block_copy(v6);
  v5 = MapsSuggestionsLocalizedETAToHomeString_s_formatter;
  MapsSuggestionsLocalizedETAToHomeString_s_formatter = v4;
}

id __MapsSuggestionsLocalizedETAToHomeString_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [[v3 alloc] initWithFormat:*(a1 + 32), v4];

  return v5;
}

id MapsSuggestionsLocalizedETAToWorkString(void *a1)
{
  v1 = MapsSuggestionsLocalizedETAToWorkString_s_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    MapsSuggestionsLocalizedETAToWorkString_cold_1();
  }

  v3 = (*(MapsSuggestionsLocalizedETAToWorkString_s_formatter + 16))(MapsSuggestionsLocalizedETAToWorkString_s_formatter, v2);

  return v3;
}

void __MapsSuggestionsLocalizedETAToWorkString_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"MAPS_ETA_TO_WORK" value:@"%@ to work<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __MapsSuggestionsLocalizedETAToWorkString_block_invoke_2;
  v6[3] = &unk_1E81F83B8;
  v7 = v2;
  v3 = v2;
  v4 = _Block_copy(v6);
  v5 = MapsSuggestionsLocalizedETAToWorkString_s_formatter;
  MapsSuggestionsLocalizedETAToWorkString_s_formatter = v4;
}

id __MapsSuggestionsLocalizedETAToWorkString_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [[v3 alloc] initWithFormat:*(a1 + 32), v4];

  return v5;
}

id MapsSuggestionsLocalizedETAToDestinationString(void *a1, void *a2)
{
  v3 = MapsSuggestionsLocalizedETAToDestinationString_s_onceToken;
  v4 = a2;
  v5 = a1;
  if (v3 != -1)
  {
    MapsSuggestionsLocalizedETAToDestinationString_cold_1();
  }

  v6 = (*(MapsSuggestionsLocalizedETAToDestinationString_s_formatter + 16))(MapsSuggestionsLocalizedETAToDestinationString_s_formatter, v5, v4);

  return v6;
}

void __MapsSuggestionsLocalizedETAToDestinationString_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"MAPS_ETA_TO_CUSTOM" value:@"%@ to %@<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __MapsSuggestionsLocalizedETAToDestinationString_block_invoke_2;
  v6[3] = &unk_1E81F6430;
  v7 = v2;
  v3 = v2;
  v4 = _Block_copy(v6);
  v5 = MapsSuggestionsLocalizedETAToDestinationString_s_formatter;
  MapsSuggestionsLocalizedETAToDestinationString_s_formatter = v4;
}

id __MapsSuggestionsLocalizedETAToDestinationString_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithFormat:*(a1 + 32), v7, v6];

  return v8;
}

id MapsSuggestionsLocalizedWalletFlightAndAirportNumberString(void *a1, void *a2)
{
  v3 = MapsSuggestionsLocalizedWalletFlightAndAirportNumberString_s_onceToken;
  v4 = a2;
  v5 = a1;
  if (v3 != -1)
  {
    MapsSuggestionsLocalizedWalletFlightAndAirportNumberString_cold_1();
  }

  v6 = (*(MapsSuggestionsLocalizedWalletFlightAndAirportNumberString_s_formatter + 16))(MapsSuggestionsLocalizedWalletFlightAndAirportNumberString_s_formatter, v5, v4);

  return v6;
}

void __MapsSuggestionsLocalizedWalletFlightAndAirportNumberString_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"MAPS_WALLET_FLIGHT_AIRPORT_AND_NUMBER" value:@"%@ Flight %@<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __MapsSuggestionsLocalizedWalletFlightAndAirportNumberString_block_invoke_2;
  v5[3] = &unk_1E81F6430;
  v5[4] = v2;
  v3 = _Block_copy(v5);
  v4 = MapsSuggestionsLocalizedWalletFlightAndAirportNumberString_s_formatter;
  MapsSuggestionsLocalizedWalletFlightAndAirportNumberString_s_formatter = v3;
}

id __MapsSuggestionsLocalizedWalletFlightAndAirportNumberString_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithFormat:*(a1 + 32), v7, v6];

  return v8;
}

id MapsSuggestionsLocalizedWalletFlightAirportString(void *a1)
{
  v1 = MapsSuggestionsLocalizedWalletFlightAirportString_s_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    MapsSuggestionsLocalizedWalletFlightAirportString_cold_1();
  }

  v3 = (*(MapsSuggestionsLocalizedWalletFlightAirportString_s_formatter + 16))(MapsSuggestionsLocalizedWalletFlightAirportString_s_formatter, v2);

  return v3;
}

void __MapsSuggestionsLocalizedWalletFlightAirportString_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"MAPS_WALLET_FLIGHT_AIRPORT" value:@"%@ Flight<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __MapsSuggestionsLocalizedWalletFlightAirportString_block_invoke_2;
  v5[3] = &unk_1E81F83B8;
  v5[4] = v2;
  v3 = _Block_copy(v5);
  v4 = MapsSuggestionsLocalizedWalletFlightAirportString_s_formatter;
  MapsSuggestionsLocalizedWalletFlightAirportString_s_formatter = v3;
}

id __MapsSuggestionsLocalizedWalletFlightAirportString_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [[v3 alloc] initWithFormat:*(a1 + 32), v4];

  return v5;
}

id MapsSuggestionsLocalizedWalletFlightNumberString(void *a1)
{
  v1 = MapsSuggestionsLocalizedWalletFlightNumberString_s_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    MapsSuggestionsLocalizedWalletFlightNumberString_cold_1();
  }

  v3 = (*(MapsSuggestionsLocalizedWalletFlightNumberString_s_formatter + 16))(MapsSuggestionsLocalizedWalletFlightNumberString_s_formatter, v2);

  return v3;
}

void __MapsSuggestionsLocalizedWalletFlightNumberString_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"MAPS_WALLET_FLIGHT_NUMBER" value:@"Flight %@<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __MapsSuggestionsLocalizedWalletFlightNumberString_block_invoke_2;
  v5[3] = &unk_1E81F83B8;
  v5[4] = v2;
  v3 = _Block_copy(v5);
  v4 = MapsSuggestionsLocalizedWalletFlightNumberString_s_formatter;
  MapsSuggestionsLocalizedWalletFlightNumberString_s_formatter = v3;
}

id __MapsSuggestionsLocalizedWalletFlightNumberString_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [[v3 alloc] initWithFormat:*(a1 + 32), v4];

  return v5;
}

id MapsSuggestionsLocalizedWorkString()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = [_MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7 localizedStringForKey:@"Work_POI" value:@"Work<unlocalized>" table:0];
  v1 = MapsSuggestionsNonNilString(v0, &stru_1F444C108);

  return v1;
}

id MapsSuggestionsLocalizedSchoolString()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = [_MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7 localizedStringForKey:@"School_POI" value:@"School<unlocalized>" table:0];
  v1 = MapsSuggestionsNonNilString(v0, &stru_1F444C108);

  return v1;
}

id MapsSuggestionsLocalizedGymString()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = [_MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7 localizedStringForKey:@"Gym label type [Home Work editor]" value:@"Gym<unlocalized>" table:0];
  v1 = MapsSuggestionsNonNilString(v0, &stru_1F444C108);

  return v1;
}

id MapsSuggestionsLocalizedMyHomeString()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = [_MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7 localizedStringForKey:@"MyHome_Label" value:@"My home<unlocalized>" table:0];
  v1 = MapsSuggestionsNonNilString(v0, &stru_1F444C108);

  return v1;
}

id MapsSuggestionsLocalizedMyWorkString()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = [_MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7 localizedStringForKey:@"MyWork_Label" value:@"My work<unlocalized>" table:0];
  v1 = MapsSuggestionsNonNilString(v0, &stru_1F444C108);

  return v1;
}

id MapsSuggestionsLocalizedMySchoolString()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = [_MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7 localizedStringForKey:@"MySchool_Label" value:@"My school<unlocalized>" table:0];
  v1 = MapsSuggestionsNonNilString(v0, &stru_1F444C108);

  return v1;
}

id MapsSuggestionsLocalizedParkedCarString()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = [_MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7 localizedStringForKey:@"Parked car [Widget/Proactive Tray FmC row title]" value:@"Parked Car<unlocalized>" table:0];
  v1 = MapsSuggestionsNonNilString(v0, &stru_1F444C108);

  return v1;
}

id MapsSuggestionsLocalizedParkedCarRemoveString()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = [_MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7 localizedStringForKey:@"Remove Car [Parked Car Action Sheet]" value:@"Remove Car<unlocalized>" table:0];
  v1 = MapsSuggestionsNonNilString(v0, &stru_1F444C108);

  return v1;
}

id MapsSuggestionsLocalizedStopShowingParkedCarString()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = [_MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7 localizedStringForKey:@"Stop Showing Parked Car [Parked Car Action Sheet]" value:@"Stop Showing Parked Car<unlocalized>" table:0];
  v1 = MapsSuggestionsNonNilString(v0, &stru_1F444C108);

  return v1;
}

id MapsSuggestionsLocalizedYoureNearbyString()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = [_MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7 localizedStringForKey:@"You’re nearby" value:@"You’re nearby<unlocalized>" table:0];
  v1 = MapsSuggestionsNonNilString(v0, &stru_1F444C108);

  return v1;
}

id MapsSuggestionsSeePlacesYouveVisitedString()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = [_MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7 localizedStringForKey:@"See Places You’ve Visited" value:@"See Places You’ve Visited<unlocalized>" table:0];
  v1 = MapsSuggestionsNonNilString(v0, &stru_1F444C108);

  return v1;
}

id MapsSuggestionsSufficientVisitsMessageString()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = [_MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7 localizedStringForKey:@"Get a recap of where you’ve been value:grouped by theme and city." table:{@"Get a recap of where you’ve been, grouped by theme and city.<unlocalized>", 0}];
  v1 = MapsSuggestionsNonNilString(v0, &stru_1F444C108);

  return v1;
}

id MapsSuggestionsLocalizedSiriSuggestionsString()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = [_MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7 localizedStringForKey:@"Siri suggestion [Portrait Tray Entries]" value:@"Siri suggestion<unlocalized>" table:0];
  v1 = MapsSuggestionsNonNilString(v0, &stru_1F444C108);

  return v1;
}

id MapsSuggestionsLocalizedSiriFoundOnString(void *a1)
{
  v1 = MapsSuggestionsLocalizedSiriFoundOnString_s_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    MapsSuggestionsLocalizedSiriFoundOnString_cold_1();
  }

  v3 = (*(MapsSuggestionsLocalizedSiriFoundOnString_s_formatter + 16))(MapsSuggestionsLocalizedSiriFoundOnString_s_formatter, v2);

  return v3;
}

void __MapsSuggestionsLocalizedSiriFoundOnString_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"Siri found on [originating website url from DuetExpertCenter donation]" value:@"Siri found on %@<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __MapsSuggestionsLocalizedSiriFoundOnString_block_invoke_2;
  v5[3] = &unk_1E81F83B8;
  v5[4] = v2;
  v3 = _Block_copy(v5);
  v4 = MapsSuggestionsLocalizedSiriFoundOnString_s_formatter;
  MapsSuggestionsLocalizedSiriFoundOnString_s_formatter = v3;
}

id __MapsSuggestionsLocalizedSiriFoundOnString_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [[v3 alloc] initWithFormat:*(a1 + 32), v4];

  return v5;
}

id MapsSuggestionsLocalizedSiriFoundInString(void *a1)
{
  v1 = MapsSuggestionsLocalizedSiriFoundInString_s_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    MapsSuggestionsLocalizedSiriFoundInString_cold_1();
  }

  v3 = (*(MapsSuggestionsLocalizedSiriFoundInString_s_formatter + 16))(MapsSuggestionsLocalizedSiriFoundInString_s_formatter, v2);

  return v3;
}

void __MapsSuggestionsLocalizedSiriFoundInString_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"Siri found in [appName from DuetExpertCenter donation]" value:@"Siri found in %@<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __MapsSuggestionsLocalizedSiriFoundInString_block_invoke_2;
  v5[3] = &unk_1E81F83B8;
  v5[4] = v2;
  v3 = _Block_copy(v5);
  v4 = MapsSuggestionsLocalizedSiriFoundInString_s_formatter;
  MapsSuggestionsLocalizedSiriFoundInString_s_formatter = v3;
}

id __MapsSuggestionsLocalizedSiriFoundInString_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [[v3 alloc] initWithFormat:*(a1 + 32), v4];

  return v5;
}

id MapsSuggestionsLocalizedFoundInAppString()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = [_MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7 localizedStringForKey:@"MAPS_APPCONNECTION_TITLE" value:@"Found in app<unlocalized>" table:0];
  v1 = MapsSuggestionsNonNilString(v0, &stru_1F444C108);

  return v1;
}

id MapsSuggestionsLocalizedSharedByString(void *a1)
{
  v1 = MapsSuggestionsLocalizedSharedByString_s_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    MapsSuggestionsLocalizedSharedByString_cold_1();
  }

  v3 = (*(MapsSuggestionsLocalizedSharedByString_s_formatter + 16))(MapsSuggestionsLocalizedSharedByString_s_formatter, v2);

  return v3;
}

void __MapsSuggestionsLocalizedSharedByString_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"Shared by [contactName]" value:@"Shared by %@<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __MapsSuggestionsLocalizedSharedByString_block_invoke_2;
  v5[3] = &unk_1E81F83B8;
  v5[4] = v2;
  v3 = _Block_copy(v5);
  v4 = MapsSuggestionsLocalizedSharedByString_s_formatter;
  MapsSuggestionsLocalizedSharedByString_s_formatter = v3;
}

id __MapsSuggestionsLocalizedSharedByString_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [[v3 alloc] initWithFormat:*(a1 + 32), v4];

  return v5;
}

id MapsSuggestionsLocalizedSharedLocationString()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = [_MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7 localizedStringForKey:@"MAPS_APPCONNECTION_TITLE_SHARED_LOCATION" value:@"Shared Location<unlocalized>" table:0];
  v1 = MapsSuggestionsNonNilString(v0, &stru_1F444C108);

  return v1;
}

id MapsSuggestionsLocalizedSiriFoundInCalendarString()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = [_MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7 localizedStringForKey:@"MAPS_FIM_EVENT_FOUND_BY_SIRI" value:@"Siri found this in Calendar<unlocalized>" table:0];
  v1 = MapsSuggestionsNonNilString(v0, &stru_1F444C108);

  return v1;
}

id MapsSuggestionsLocalizedAddYourHomeShortcutString()
{
  if (MapsSuggestionsLocalizedAddYourHomeShortcutString_s_onceToken != -1)
  {
    MapsSuggestionsLocalizedAddYourHomeShortcutString_cold_1();
  }

  v1 = MapsSuggestionsLocalizedAddYourHomeShortcutString_s_string;

  return v1;
}

void __MapsSuggestionsLocalizedAddYourHomeShortcutString_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"SHORTCUT_SETUP_HOME_LONG" value:@"Add your Home<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);
  v3 = MapsSuggestionsLocalizedAddYourHomeShortcutString_s_string;
  MapsSuggestionsLocalizedAddYourHomeShortcutString_s_string = v2;
}

id MapsSuggestionsLocalizedAddYourWorkShortcutString()
{
  if (MapsSuggestionsLocalizedAddYourWorkShortcutString_s_onceToken != -1)
  {
    MapsSuggestionsLocalizedAddYourWorkShortcutString_cold_1();
  }

  v1 = MapsSuggestionsLocalizedAddYourWorkShortcutString_s_string;

  return v1;
}

void __MapsSuggestionsLocalizedAddYourWorkShortcutString_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"SHORTCUT_SETUP_WORK_LONG" value:@"Add your Work<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);
  v3 = MapsSuggestionsLocalizedAddYourWorkShortcutString_s_string;
  MapsSuggestionsLocalizedAddYourWorkShortcutString_s_string = v2;
}

id MapsSuggestionsLocalizedAddYourSchoolShortcutString()
{
  if (MapsSuggestionsLocalizedAddYourSchoolShortcutString_s_onceToken != -1)
  {
    MapsSuggestionsLocalizedAddYourSchoolShortcutString_cold_1();
  }

  v1 = MapsSuggestionsLocalizedAddYourSchoolShortcutString_s_string;

  return v1;
}

void __MapsSuggestionsLocalizedAddYourSchoolShortcutString_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"SHORTCUT_SETUP_SCHOOL_LONG" value:@"Add your School<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);
  v3 = MapsSuggestionsLocalizedAddYourSchoolShortcutString_s_string;
  MapsSuggestionsLocalizedAddYourSchoolShortcutString_s_string = v2;
}

id MapsSuggestionsLocalizedAddShortcutString()
{
  if (MapsSuggestionsLocalizedAddShortcutString_s_onceToken != -1)
  {
    MapsSuggestionsLocalizedAddShortcutString_cold_1();
  }

  v1 = MapsSuggestionsLocalizedAddShortcutString_s_string;

  return v1;
}

void __MapsSuggestionsLocalizedAddShortcutString_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"SHORTCUT_SETUP_SHORT" value:@"Add<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);
  v3 = MapsSuggestionsLocalizedAddShortcutString_s_string;
  MapsSuggestionsLocalizedAddShortcutString_s_string = v2;
}

id MapsSuggestionsLocalizedRecentlyViewedString()
{
  if (MapsSuggestionsLocalizedRecentlyViewedString_s_onceToken != -1)
  {
    MapsSuggestionsLocalizedRecentlyViewedString_cold_1();
  }

  v1 = MapsSuggestionsLocalizedRecentlyViewedString_s_recentHistorySubtitle;

  return v1;
}

void __MapsSuggestionsLocalizedRecentlyViewedString_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"[Proactive Tray] Recently viewed" value:@"Recently viewed<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);
  v3 = MapsSuggestionsLocalizedRecentlyViewedString_s_recentHistorySubtitle;
  MapsSuggestionsLocalizedRecentlyViewedString_s_recentHistorySubtitle = v2;
}

id MapsSuggestionsLocalizedRestaurantReservationStringConfirmed(void *a1)
{
  v1 = MapsSuggestionsLocalizedRestaurantReservationStringConfirmed_s_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    MapsSuggestionsLocalizedRestaurantReservationStringConfirmed_cold_1();
  }

  v3 = (*(MapsSuggestionsLocalizedRestaurantReservationStringConfirmed_s_formatter + 16))(MapsSuggestionsLocalizedRestaurantReservationStringConfirmed_s_formatter, v2);

  return v3;
}

void __MapsSuggestionsLocalizedRestaurantReservationStringConfirmed_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"MSG_RESERVATION_ENTRY_SUBTITLE" value:@"Reservation at %@<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __MapsSuggestionsLocalizedRestaurantReservationStringConfirmed_block_invoke_2;
  v5[3] = &unk_1E81F83B8;
  v5[4] = v2;
  v3 = _Block_copy(v5);
  v4 = MapsSuggestionsLocalizedRestaurantReservationStringConfirmed_s_formatter;
  MapsSuggestionsLocalizedRestaurantReservationStringConfirmed_s_formatter = v3;
}

id __MapsSuggestionsLocalizedRestaurantReservationStringConfirmed_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [[v3 alloc] initWithFormat:*(a1 + 32), v4];

  return v5;
}

id MapsSuggestionsLocalizedRestaurantReservationStringCancelled()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = [_MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7 localizedStringForKey:@"reservation_suggestion_subtitle_denied" value:@"Your reservation was denied<unlocalized>" table:0];
  v1 = MapsSuggestionsNonNilString(v0, &stru_1F444C108);

  return v1;
}

id MapsSuggestionsLocalizedRestaurantReservationStringPending()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = [_MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7 localizedStringForKey:@"reservation_suggestion_subtitle_pending" value:@"Your reservation is pending<unlocalized>" table:0];
  v1 = MapsSuggestionsNonNilString(v0, &stru_1F444C108);

  return v1;
}

id MapsSuggestionsLocalizedHotelCheckInString(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (MapsSuggestionsLocalizedHotelCheckInString_s_onceToken != -1)
  {
    MapsSuggestionsLocalizedHotelCheckInString_cold_1();
  }

  v5 = MapsSuggestionsLocalizedHotelCheckInString_s_formatter;
  v22 = NSStringFromMapsSuggestionsEventTimeWithTimeZone(v3, v4);
  v6 = v3;
  v7 = v4;
  v8 = v7;
  if (!v7)
  {
    v8 = MapsSuggestionsTimeZone();
  }

  v9 = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
  v10 = [v9 componentsInTimeZone:v8 fromDate:v6];

  v11 = [v10 hour];
  if (_isSystemIn24hours_onceToken != -1)
  {
    MapsSuggestionsLocalizedHotelCheckInString_cold_2();
  }

  v12 = _isSystemIn24hours_dateFormatter;
  v13 = [MEMORY[0x1E695DF00] date];
  v14 = [v12 stringFromDate:v13];

  v15 = [_isSystemIn24hours_dateFormatter AMSymbol];
  v16 = [v14 rangeOfString:v15];

  v17 = [_isSystemIn24hours_dateFormatter PMSymbol];
  v18 = [v14 rangeOfString:v17];

  if (v16 != 0x7FFFFFFFFFFFFFFFLL || v18 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = v11 - 12;
    if (v11 < 12)
    {
      v19 = v11;
    }

    if (v11 == 12)
    {
      v19 = 12;
    }

    if (v11)
    {
      v11 = v19;
    }

    else
    {
      v11 = 12;
    }
  }

  v20 = (*(v5 + 16))(v5, v22, v11);

  return v20;
}

void __MapsSuggestionsLocalizedHotelCheckInString_block_invoke()
{
  block = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = ___MapsSuggestionsBundle_block_invoke_7;
  v26 = &__block_descriptor_40_e5_v8__0l;
  v27 = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, &block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"MSG_HOTEL_ENTRY_SUBTITLE_CHECK_IN_AT_0" value:@"Check in at %@<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);

  block = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = ___MapsSuggestionsBundle_block_invoke_7;
  v26 = &__block_descriptor_40_e5_v8__0l;
  v27 = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, &block);
  }

  v3 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v4 = [v3 localizedStringForKey:@"MSG_HOTEL_ENTRY_SUBTITLE_CHECK_IN_AT_1" value:@"Check in at %@<unlocalized>" table:0];
  v5 = MapsSuggestionsNonNilString(v4, &stru_1F444C108);

  block = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = ___MapsSuggestionsBundle_block_invoke_7;
  v26 = &__block_descriptor_40_e5_v8__0l;
  v27 = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, &block);
  }

  v6 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v7 = [v6 localizedStringForKey:@"MSG_HOTEL_ENTRY_SUBTITLE_CHECK_IN_AT_13" value:@"Check in at %@<unlocalized>" table:0];
  v8 = MapsSuggestionsNonNilString(v7, &stru_1F444C108);

  block = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = ___MapsSuggestionsBundle_block_invoke_7;
  v26 = &__block_descriptor_40_e5_v8__0l;
  v27 = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, &block);
  }

  v9 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v10 = [v9 localizedStringForKey:@"MSG_HOTEL_ENTRY_SUBTITLE_CHECK_IN" value:@"Check in at %@<unlocalized>" table:0];
  v11 = MapsSuggestionsNonNilString(v10, &stru_1F444C108);

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __MapsSuggestionsLocalizedHotelCheckInString_block_invoke_2;
  aBlock[3] = &unk_1E81F83E0;
  v19 = v2;
  v20 = v5;
  v21 = v8;
  v22 = v11;
  v12 = v11;
  v13 = v8;
  v14 = v5;
  v15 = v2;
  v16 = _Block_copy(aBlock);
  v17 = MapsSuggestionsLocalizedHotelCheckInString_s_formatter;
  MapsSuggestionsLocalizedHotelCheckInString_s_formatter = v16;
}

id __MapsSuggestionsLocalizedHotelCheckInString_block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7 = 32;
  v8 = 48;
  v9 = 56;
  if (a3 == 1)
  {
    v9 = 40;
  }

  if (a3 != 13)
  {
    v8 = v9;
  }

  if (a3)
  {
    v7 = v8;
  }

  v10 = *(a1 + v7);
  v11 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  v12 = [v6 initWithFormat:v10 locale:v11, v5];

  return v12;
}

id MapsSuggestionsLocalizedHotelCheckOutString(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (MapsSuggestionsLocalizedHotelCheckOutString_s_onceToken != -1)
  {
    MapsSuggestionsLocalizedHotelCheckOutString_cold_1();
  }

  v5 = MapsSuggestionsLocalizedHotelCheckOutString_s_formatter;
  v22 = NSStringFromMapsSuggestionsEventTimeWithTimeZone(v3, v4);
  v6 = v3;
  v7 = v4;
  v8 = v7;
  if (!v7)
  {
    v8 = MapsSuggestionsTimeZone();
  }

  v9 = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
  v10 = [v9 componentsInTimeZone:v8 fromDate:v6];

  v11 = [v10 hour];
  if (_isSystemIn24hours_onceToken != -1)
  {
    MapsSuggestionsLocalizedHotelCheckInString_cold_2();
  }

  v12 = _isSystemIn24hours_dateFormatter;
  v13 = [MEMORY[0x1E695DF00] date];
  v14 = [v12 stringFromDate:v13];

  v15 = [_isSystemIn24hours_dateFormatter AMSymbol];
  v16 = [v14 rangeOfString:v15];

  v17 = [_isSystemIn24hours_dateFormatter PMSymbol];
  v18 = [v14 rangeOfString:v17];

  if (v16 != 0x7FFFFFFFFFFFFFFFLL || v18 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = v11 - 12;
    if (v11 < 12)
    {
      v19 = v11;
    }

    if (v11 == 12)
    {
      v19 = 12;
    }

    if (v11)
    {
      v11 = v19;
    }

    else
    {
      v11 = 12;
    }
  }

  v20 = (*(v5 + 16))(v5, v22, v11);

  return v20;
}

void __MapsSuggestionsLocalizedHotelCheckOutString_block_invoke()
{
  block = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = ___MapsSuggestionsBundle_block_invoke_7;
  v26 = &__block_descriptor_40_e5_v8__0l;
  v27 = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, &block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"MSG_HOTEL_ENTRY_SUBTITLE_CHECK_OUT_AT_0" value:@"Check out at %@<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);

  block = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = ___MapsSuggestionsBundle_block_invoke_7;
  v26 = &__block_descriptor_40_e5_v8__0l;
  v27 = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, &block);
  }

  v3 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v4 = [v3 localizedStringForKey:@"MSG_HOTEL_ENTRY_SUBTITLE_CHECK_OUT_AT_1" value:@"Check out at %@<unlocalized>" table:0];
  v5 = MapsSuggestionsNonNilString(v4, &stru_1F444C108);

  block = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = ___MapsSuggestionsBundle_block_invoke_7;
  v26 = &__block_descriptor_40_e5_v8__0l;
  v27 = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, &block);
  }

  v6 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v7 = [v6 localizedStringForKey:@"MSG_HOTEL_ENTRY_SUBTITLE_CHECK_OUT_AT_13" value:@"Check out at %@<unlocalized>" table:0];
  v8 = MapsSuggestionsNonNilString(v7, &stru_1F444C108);

  block = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = ___MapsSuggestionsBundle_block_invoke_7;
  v26 = &__block_descriptor_40_e5_v8__0l;
  v27 = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, &block);
  }

  v9 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v10 = [v9 localizedStringForKey:@"MSG_HOTEL_ENTRY_SUBTITLE_CHECK_OUT" value:@"Check out at %@<unlocalized>" table:0];
  v11 = MapsSuggestionsNonNilString(v10, &stru_1F444C108);

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __MapsSuggestionsLocalizedHotelCheckOutString_block_invoke_2;
  aBlock[3] = &unk_1E81F83E0;
  v19 = v2;
  v20 = v5;
  v21 = v8;
  v22 = v11;
  v12 = v11;
  v13 = v8;
  v14 = v5;
  v15 = v2;
  v16 = _Block_copy(aBlock);
  v17 = MapsSuggestionsLocalizedHotelCheckOutString_s_formatter;
  MapsSuggestionsLocalizedHotelCheckOutString_s_formatter = v16;
}

id __MapsSuggestionsLocalizedHotelCheckOutString_block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7 = 32;
  v8 = 48;
  v9 = 56;
  if (a3 == 1)
  {
    v9 = 40;
  }

  if (a3 != 13)
  {
    v8 = v9;
  }

  if (a3)
  {
    v7 = v8;
  }

  v10 = *(a1 + v7);
  v11 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  v12 = [v6 initWithFormat:v10 locale:v11, v5];

  return v12;
}

id MapsSuggestionsLocalizedHotelUntilCheckoutDateString(void *a1)
{
  v1 = MapsSuggestionsLocalizedHotelUntilCheckoutDateString_s_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    MapsSuggestionsLocalizedHotelUntilCheckoutDateString_cold_1();
  }

  v3 = (*(MapsSuggestionsLocalizedHotelUntilCheckoutDateString_s_formatter + 16))(MapsSuggestionsLocalizedHotelUntilCheckoutDateString_s_formatter, v2);

  return v3;
}

void __MapsSuggestionsLocalizedHotelUntilCheckoutDateString_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"MSG_HOTEL_ENTRY_SUBTITLE_CHECK_OUT_DATE" value:@"Until %@<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __MapsSuggestionsLocalizedHotelUntilCheckoutDateString_block_invoke_2;
  v6[3] = &unk_1E81F83B8;
  v7 = v2;
  v3 = v2;
  v4 = _Block_copy(v6);
  v5 = MapsSuggestionsLocalizedHotelUntilCheckoutDateString_s_formatter;
  MapsSuggestionsLocalizedHotelUntilCheckoutDateString_s_formatter = v4;
}

id __MapsSuggestionsLocalizedHotelUntilCheckoutDateString_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  v8 = [v5 initWithFormat:v6 locale:v7, v4];

  return v8;
}

id MapsSuggestionsLocalizedParkedCarNearString(void *a1)
{
  v1 = MapsSuggestionsLocalizedParkedCarNearString_s_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    MapsSuggestionsLocalizedParkedCarNearString_cold_1();
  }

  v3 = (*(MapsSuggestionsLocalizedParkedCarNearString_s_formatter + 16))(MapsSuggestionsLocalizedParkedCarNearString_s_formatter, v2);

  return v3;
}

void __MapsSuggestionsLocalizedParkedCarNearString_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"Near %@ [Widget/Proactive Tray FmC row subtitle value:with address]" table:{@"Near %@<unlocalized>", 0}];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __MapsSuggestionsLocalizedParkedCarNearString_block_invoke_2;
  v6[3] = &unk_1E81F83B8;
  v7 = v2;
  v3 = v2;
  v4 = _Block_copy(v6);
  v5 = MapsSuggestionsLocalizedParkedCarNearString_s_formatter;
  MapsSuggestionsLocalizedParkedCarNearString_s_formatter = v4;
}

id __MapsSuggestionsLocalizedParkedCarNearString_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  v8 = [v5 initWithFormat:v6 locale:v7, v4];

  return v8;
}

id MapsSuggestionsLocalizedParkedCarLowerCaseNearString(void *a1)
{
  v1 = MapsSuggestionsLocalizedParkedCarLowerCaseNearString_s_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    MapsSuggestionsLocalizedParkedCarLowerCaseNearString_cold_1();
  }

  v3 = (*(MapsSuggestionsLocalizedParkedCarLowerCaseNearString_s_formatter + 16))(MapsSuggestionsLocalizedParkedCarLowerCaseNearString_s_formatter, v2);

  return v3;
}

void __MapsSuggestionsLocalizedParkedCarLowerCaseNearString_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"near %@ [Widget/Proactive Tray FmC row subtitle value:with address]" table:{@"near %@<unlocalized>", 0}];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __MapsSuggestionsLocalizedParkedCarLowerCaseNearString_block_invoke_2;
  v6[3] = &unk_1E81F83B8;
  v7 = v2;
  v3 = v2;
  v4 = _Block_copy(v6);
  v5 = MapsSuggestionsLocalizedParkedCarLowerCaseNearString_s_formatter;
  MapsSuggestionsLocalizedParkedCarLowerCaseNearString_s_formatter = v4;
}

id __MapsSuggestionsLocalizedParkedCarLowerCaseNearString_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  v8 = [v5 initWithFormat:v6 locale:v7, v4];

  return v8;
}

id MapsSuggestionsLocalizedSnoozeInMapsString()
{
  if (MapsSuggestionsLocalizedSnoozeInMapsString_s_onceToken != -1)
  {
    MapsSuggestionsLocalizedSnoozeInMapsString_cold_1();
  }

  v1 = MapsSuggestionsLocalizedSnoozeInMapsString_s_str;

  return v1;
}

void __MapsSuggestionsLocalizedSnoozeInMapsString_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"MSG_DELETE_OPTION:SNOOZE_IN_MAPS" value:@"Hide for Today<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);
  v3 = MapsSuggestionsLocalizedSnoozeInMapsString_s_str;
  MapsSuggestionsLocalizedSnoozeInMapsString_s_str = v2;
}

id MapsSuggestionsLocalizedHideInMapsString()
{
  if (MapsSuggestionsLocalizedHideInMapsString_s_onceToken != -1)
  {
    MapsSuggestionsLocalizedHideInMapsString_cold_1();
  }

  v1 = MapsSuggestionsLocalizedHideInMapsString_s_str;

  return v1;
}

void __MapsSuggestionsLocalizedHideInMapsString_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"MSG_DELETE_OPTION:HIDE_IN_MAPS" value:@"Always Hide in Maps<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);
  v3 = MapsSuggestionsLocalizedHideInMapsString_s_str;
  MapsSuggestionsLocalizedHideInMapsString_s_str = v2;
}

id MapsSuggestionsLocalizedDeleteFromCalendarString()
{
  if (MapsSuggestionsLocalizedDeleteFromCalendarString_s_onceToken != -1)
  {
    MapsSuggestionsLocalizedDeleteFromCalendarString_cold_1();
  }

  v1 = MapsSuggestionsLocalizedDeleteFromCalendarString_s_str;

  return v1;
}

void __MapsSuggestionsLocalizedDeleteFromCalendarString_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"MSG_DELETE_OPTION:DELETE_FROM_CALENDAR" value:@"Delete from Calendar<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);
  v3 = MapsSuggestionsLocalizedDeleteFromCalendarString_s_str;
  MapsSuggestionsLocalizedDeleteFromCalendarString_s_str = v2;
}

id MapsSuggestionsLocalizedDeclineCalendarEventString()
{
  if (MapsSuggestionsLocalizedDeclineCalendarEventString_s_onceToken != -1)
  {
    MapsSuggestionsLocalizedDeclineCalendarEventString_cold_1();
  }

  v1 = MapsSuggestionsLocalizedDeclineCalendarEventString_s_str;

  return v1;
}

void __MapsSuggestionsLocalizedDeclineCalendarEventString_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"MSG_DELETE_OPTION:DECLINE_CALENDAR_EVENT" value:@"Decline in Calendar<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);
  v3 = MapsSuggestionsLocalizedDeclineCalendarEventString_s_str;
  MapsSuggestionsLocalizedDeclineCalendarEventString_s_str = v2;
}

id MapsSuggestionsLocalizedForgetMyVisitsString()
{
  if (MapsSuggestionsLocalizedForgetMyVisitsString_s_onceToken != -1)
  {
    MapsSuggestionsLocalizedForgetMyVisitsString_cold_1();
  }

  v1 = MapsSuggestionsLocalizedForgetMyVisitsString_s_str;

  return v1;
}

void __MapsSuggestionsLocalizedForgetMyVisitsString_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"MSG_DELETE_OPTION:FORGET_MY_VISITS" value:@"Forget my visits<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);
  v3 = MapsSuggestionsLocalizedForgetMyVisitsString_s_str;
  MapsSuggestionsLocalizedForgetMyVisitsString_s_str = v2;
}

id MapsSuggestionsLocalizedTitleFormatForVehicleSetup(void *a1)
{
  v1 = MapsSuggestionsLocalizedTitleFormatForVehicleSetup_s_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    MapsSuggestionsLocalizedTitleFormatForVehicleSetup_cold_1();
  }

  v3 = (*(MapsSuggestionsLocalizedTitleFormatForVehicleSetup_s_formatter + 16))(MapsSuggestionsLocalizedTitleFormatForVehicleSetup_s_formatter, v2);

  return v3;
}

void __MapsSuggestionsLocalizedTitleFormatForVehicleSetup_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"Plan EV trips with your %@" value:@"Plan EV trips with your %@<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __MapsSuggestionsLocalizedTitleFormatForVehicleSetup_block_invoke_2;
  v5[3] = &unk_1E81F83B8;
  v5[4] = v2;
  v3 = _Block_copy(v5);
  v4 = MapsSuggestionsLocalizedTitleFormatForVehicleSetup_s_formatter;
  MapsSuggestionsLocalizedTitleFormatForVehicleSetup_s_formatter = v3;
}

id __MapsSuggestionsLocalizedTitleFormatForVehicleSetup_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [[v3 alloc] initWithFormat:*(a1 + 32), v4];

  return v5;
}

id MapsSuggestionsLocalizedBackupTitleFormatForVehicleSetup()
{
  if (MapsSuggestionsLocalizedBackupTitleFormatForVehicleSetup_s_onceToken != -1)
  {
    MapsSuggestionsLocalizedBackupTitleFormatForVehicleSetup_cold_1();
  }

  v1 = MapsSuggestionsLocalizedBackupTitleFormatForVehicleSetup_s_titleFormat;

  return v1;
}

void __MapsSuggestionsLocalizedBackupTitleFormatForVehicleSetup_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"Plan trips with your EV" value:@"Plan trips with your EV<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);
  v3 = MapsSuggestionsLocalizedBackupTitleFormatForVehicleSetup_s_titleFormat;
  MapsSuggestionsLocalizedBackupTitleFormatForVehicleSetup_s_titleFormat = v2;
}

id MapsSuggestionsLocalizedSubtitleForVehicleSetup()
{
  if (MapsSuggestionsLocalizedSubtitleForVehicleSetup_s_onceToken != -1)
  {
    MapsSuggestionsLocalizedSubtitleForVehicleSetup_cold_1();
  }

  v1 = MapsSuggestionsLocalizedSubtitleForVehicleSetup_s_subtitle;

  return v1;
}

void __MapsSuggestionsLocalizedSubtitleForVehicleSetup_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"Get optimized routes and charging stop suggestions" value:@"Get optimized routes and charging stop suggestions<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);
  v3 = MapsSuggestionsLocalizedSubtitleForVehicleSetup_s_subtitle;
  MapsSuggestionsLocalizedSubtitleForVehicleSetup_s_subtitle = v2;
}

id MapsSuggestionsLocalizedSubtitleForRatingRequest()
{
  if (MapsSuggestionsLocalizedSubtitleForRatingRequest_s_onceToken != -1)
  {
    MapsSuggestionsLocalizedSubtitleForRatingRequest_cold_1();
  }

  v1 = MapsSuggestionsLocalizedSubtitleForRatingRequest_s_subtitle;

  return v1;
}

void __MapsSuggestionsLocalizedSubtitleForRatingRequest_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"Recommend this place" value:@"Recommend this place<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);
  v3 = MapsSuggestionsLocalizedSubtitleForRatingRequest_s_subtitle;
  MapsSuggestionsLocalizedSubtitleForRatingRequest_s_subtitle = v2;
}

uint64_t MapsSuggestionsLocalizedVisitedTimeAgo(__n128 a1)
{
  v1 = a1.n128_u64[0];
  if (MapsSuggestionsLocalizedVisitedTimeAgo_s_onceToken != -1)
  {
    MapsSuggestionsLocalizedVisitedTimeAgo_cold_1();
  }

  v2 = *(MapsSuggestionsLocalizedVisitedTimeAgo_s_stringFormatter + 16);
  a1.n128_u64[0] = v1;

  return v2(a1);
}

void __MapsSuggestionsLocalizedVisitedTimeAgo_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"Visited %@" value:@"Visited %@<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __MapsSuggestionsLocalizedVisitedTimeAgo_block_invoke_2;
  v6[3] = &unk_1E81F8408;
  v7 = v2;
  v3 = v2;
  v4 = _Block_copy(v6);
  v5 = MapsSuggestionsLocalizedVisitedTimeAgo_s_stringFormatter;
  MapsSuggestionsLocalizedVisitedTimeAgo_s_stringFormatter = v4;
}

id __MapsSuggestionsLocalizedVisitedTimeAgo_block_invoke_2(uint64_t a1, double a2)
{
  v4 = objc_alloc_init(MEMORY[0x1E696AE78]);
  v5 = MapsSuggestionsLocalizedVisitedTimeAgo_s_formatter;
  MapsSuggestionsLocalizedVisitedTimeAgo_s_formatter = v4;

  [MapsSuggestionsLocalizedVisitedTimeAgo_s_formatter setDateTimeStyle:1];
  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7 = *(a1 + 32);
  v8 = [MapsSuggestionsLocalizedVisitedTimeAgo_s_formatter localizedStringFromTimeInterval:-a2];
  v9 = [v6 initWithFormat:v7, v8];

  return v9;
}

id MapsSuggestionsLocalizedVisitedToday()
{
  if (MapsSuggestionsLocalizedVisitedToday_s_onceToken != -1)
  {
    MapsSuggestionsLocalizedVisitedToday_cold_1();
  }

  v1 = MapsSuggestionsLocalizedVisitedToday_s_subtitle;

  return v1;
}

void __MapsSuggestionsLocalizedVisitedToday_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"Visited today" value:@"Visited today<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);
  v3 = MapsSuggestionsLocalizedVisitedToday_s_subtitle;
  MapsSuggestionsLocalizedVisitedToday_s_subtitle = v2;
}

id MapsSuggestionsLocalizedTitleFormatForVenueWelcomeNotification(void *a1)
{
  v1 = MapsSuggestionsLocalizedTitleFormatForVenueWelcomeNotification_s_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    MapsSuggestionsLocalizedTitleFormatForVenueWelcomeNotification_cold_1();
  }

  v3 = (*(MapsSuggestionsLocalizedTitleFormatForVenueWelcomeNotification_s_formatter + 16))(MapsSuggestionsLocalizedTitleFormatForVenueWelcomeNotification_s_formatter, v2);

  return v3;
}

void __MapsSuggestionsLocalizedTitleFormatForVenueWelcomeNotification_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"MAPS_WELCOME_TO" value:@"Welcome to %@<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __MapsSuggestionsLocalizedTitleFormatForVenueWelcomeNotification_block_invoke_2;
  v6[3] = &unk_1E81F83B8;
  v7 = v2;
  v3 = v2;
  v4 = _Block_copy(v6);
  v5 = MapsSuggestionsLocalizedTitleFormatForVenueWelcomeNotification_s_formatter;
  MapsSuggestionsLocalizedTitleFormatForVenueWelcomeNotification_s_formatter = v4;
}

id __MapsSuggestionsLocalizedTitleFormatForVenueWelcomeNotification_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [[v3 alloc] initWithFormat:*(a1 + 32), v4];

  return v5;
}

id MapsSuggestionsLocalizedSubtitleForVenueWelcomeNotification()
{
  if (MapsSuggestionsLocalizedSubtitleForVenueWelcomeNotification_s_onceToken != -1)
  {
    MapsSuggestionsLocalizedSubtitleForVenueWelcomeNotification_cold_1();
  }

  v1 = MapsSuggestionsLocalizedSubtitleForVenueWelcomeNotification_s_subtitle;

  return v1;
}

void __MapsSuggestionsLocalizedSubtitleForVenueWelcomeNotification_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"Explore a detailed airport map to quickly find your gate value:baggage claim table:{shops, and more.", @"Explore a detailed airport map to quickly find your gate, baggage claim, shops, and more.<unlocalized>", 0}];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);
  v3 = MapsSuggestionsLocalizedSubtitleForVenueWelcomeNotification_s_subtitle;
  MapsSuggestionsLocalizedSubtitleForVenueWelcomeNotification_s_subtitle = v2;
}

id MapsSuggestionsLocalizedTitleFormatForAirportArrivalNotification(void *a1)
{
  v1 = MapsSuggestionsLocalizedTitleFormatForAirportArrivalNotification_s_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    MapsSuggestionsLocalizedTitleFormatForAirportArrivalNotification_cold_1();
  }

  v3 = (*(MapsSuggestionsLocalizedTitleFormatForAirportArrivalNotification_s_formatter + 16))(MapsSuggestionsLocalizedTitleFormatForAirportArrivalNotification_s_formatter, v2);

  return v3;
}

void __MapsSuggestionsLocalizedTitleFormatForAirportArrivalNotification_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"AIRPORT_ARRIVAL_NOTIFICATION_TITLE" value:@"Welcome to %@<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __MapsSuggestionsLocalizedTitleFormatForAirportArrivalNotification_block_invoke_2;
  v6[3] = &unk_1E81F83B8;
  v7 = v2;
  v3 = v2;
  v4 = _Block_copy(v6);
  v5 = MapsSuggestionsLocalizedTitleFormatForAirportArrivalNotification_s_formatter;
  MapsSuggestionsLocalizedTitleFormatForAirportArrivalNotification_s_formatter = v4;
}

id __MapsSuggestionsLocalizedTitleFormatForAirportArrivalNotification_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [[v3 alloc] initWithFormat:*(a1 + 32), v4];

  return v5;
}

id MapsSuggestionsLocalizedMessageForAirportArrivalNotification()
{
  if (MapsSuggestionsLocalizedMessageForAirportArrivalNotification_s_onceToken != -1)
  {
    MapsSuggestionsLocalizedMessageForAirportArrivalNotification_cold_1();
  }

  v1 = MapsSuggestionsLocalizedMessageForAirportArrivalNotification_s_message;

  return v1;
}

void __MapsSuggestionsLocalizedMessageForAirportArrivalNotification_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"AIRPORT_ARRIVAL_NOTIFICATION_MESSAGE" value:@"Download an offline map to get around without an internet connection.<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);
  v3 = MapsSuggestionsLocalizedMessageForAirportArrivalNotification_s_message;
  MapsSuggestionsLocalizedMessageForAirportArrivalNotification_s_message = v2;
}

id MapsSuggestionsLocalizedResumeRouteString()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = [_MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7 localizedStringForKey:@"MAPS_SUGG_TITLE_SAR" value:@"Resume route<unlocalized>" table:0];
  v1 = MapsSuggestionsNonNilString(v0, &stru_1F444C108);

  return v1;
}

id MapsSuggestionsLocalizedTitleFormatForStandardResumeRouteEntry(void *a1)
{
  v1 = MapsSuggestionsLocalizedTitleFormatForStandardResumeRouteEntry_s_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    MapsSuggestionsLocalizedTitleFormatForStandardResumeRouteEntry_cold_1();
  }

  v3 = (*(MapsSuggestionsLocalizedTitleFormatForStandardResumeRouteEntry_s_formatter + 16))(MapsSuggestionsLocalizedTitleFormatForStandardResumeRouteEntry_s_formatter, v2);

  return v3;
}

void __MapsSuggestionsLocalizedTitleFormatForStandardResumeRouteEntry_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"Resume Route to %@ [Widget/Proactive Tray Resume Route row title]" value:@"Resume Route to %@<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __MapsSuggestionsLocalizedTitleFormatForStandardResumeRouteEntry_block_invoke_2;
  v6[3] = &unk_1E81F83B8;
  v7 = v2;
  v3 = v2;
  v4 = _Block_copy(v6);
  v5 = MapsSuggestionsLocalizedTitleFormatForStandardResumeRouteEntry_s_formatter;
  MapsSuggestionsLocalizedTitleFormatForStandardResumeRouteEntry_s_formatter = v4;
}

id __MapsSuggestionsLocalizedTitleFormatForStandardResumeRouteEntry_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [[v3 alloc] initWithFormat:*(a1 + 32), v4];

  return v5;
}

uint64_t MapsSuggestionsLocalizedTitleFormatForEVResumeRouteEntryWithChargePercentage(__n128 a1)
{
  v1 = a1.n128_u32[0];
  if (MapsSuggestionsLocalizedTitleFormatForEVResumeRouteEntryWithChargePercentage_onceToken != -1)
  {
    MapsSuggestionsLocalizedTitleFormatForEVResumeRouteEntryWithChargePercentage_cold_1();
  }

  v2 = *(MapsSuggestionsLocalizedTitleFormatForEVResumeRouteEntryWithChargePercentage_s_formatter + 16);
  a1.n128_u32[0] = v1;

  return v2(a1);
}

void __MapsSuggestionsLocalizedTitleFormatForEVResumeRouteEntryWithChargePercentage_block_invoke()
{
  block = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = ___MapsSuggestionsBundle_block_invoke_7;
  v16 = &__block_descriptor_40_e5_v8__0l;
  v17 = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, &block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"Charge to at least %@%% [Proactive Tray EV Resume Route title when charging]" value:@"Charge to at least %@%%<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);

  block = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = ___MapsSuggestionsBundle_block_invoke_7;
  v16 = &__block_descriptor_40_e5_v8__0l;
  v17 = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, &block);
  }

  v3 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v4 = [v3 localizedStringForKey:@"Charge to %@%% [Proactive Tray EV Resume Route title when charging]" value:@"Charge to %@%%<unlocalized>" table:0];
  v5 = MapsSuggestionsNonNilString(v4, &stru_1F444C108);

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __MapsSuggestionsLocalizedTitleFormatForEVResumeRouteEntryWithChargePercentage_block_invoke_2;
  aBlock[3] = &unk_1E81F8430;
  v11 = v2;
  v12 = v5;
  v6 = v5;
  v7 = v2;
  v8 = _Block_copy(aBlock);
  v9 = MapsSuggestionsLocalizedTitleFormatForEVResumeRouteEntryWithChargePercentage_s_formatter;
  MapsSuggestionsLocalizedTitleFormatForEVResumeRouteEntryWithChargePercentage_s_formatter = v8;
}

id __MapsSuggestionsLocalizedTitleFormatForEVResumeRouteEntryWithChargePercentage_block_invoke_2(uint64_t a1, float a2)
{
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%d", (a2 * 100.0)];
  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  v6 = 40;
  if (a2 < 100.0)
  {
    v6 = 32;
  }

  v7 = [v5 initWithFormat:*(a1 + v6), v4];

  return v7;
}

id MapsSuggestionsLocalizedSubtitleFormatForEVResumeRouteEntry(void *a1)
{
  v1 = MapsSuggestionsLocalizedSubtitleFormatForEVResumeRouteEntry_s_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    MapsSuggestionsLocalizedSubtitleFormatForEVResumeRouteEntry_cold_1();
  }

  v3 = (*(MapsSuggestionsLocalizedSubtitleFormatForEVResumeRouteEntry_s_formatter + 16))(MapsSuggestionsLocalizedSubtitleFormatForEVResumeRouteEntry_s_formatter, v2);

  return v3;
}

void __MapsSuggestionsLocalizedSubtitleFormatForEVResumeRouteEntry_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"Then resume route to %@ [Proactive Tray EV Resume Route subtitle when charging]" value:@"Then resume route to %@<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __MapsSuggestionsLocalizedSubtitleFormatForEVResumeRouteEntry_block_invoke_2;
  v6[3] = &unk_1E81F83B8;
  v7 = v2;
  v3 = v2;
  v4 = _Block_copy(v6);
  v5 = MapsSuggestionsLocalizedSubtitleFormatForEVResumeRouteEntry_s_formatter;
  MapsSuggestionsLocalizedSubtitleFormatForEVResumeRouteEntry_s_formatter = v4;
}

id __MapsSuggestionsLocalizedSubtitleFormatForEVResumeRouteEntry_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [[v3 alloc] initWithFormat:*(a1 + 32), v4];

  return v5;
}

id MapsSuggestionsLocalizedSubtitleFormatForPortraitSiriSuggestionEntry()
{
  if (MapsSuggestionsLocalizedSubtitleFormatForPortraitSiriSuggestionEntry_onceToken != -1)
  {
    MapsSuggestionsLocalizedSubtitleFormatForPortraitSiriSuggestionEntry_cold_1();
  }

  v1 = MapsSuggestionsLocalizedSubtitleFormatForPortraitSiriSuggestionEntry_s_formatString_subtitlePortraitSiriSuggestion;

  return v1;
}

void __MapsSuggestionsLocalizedSubtitleFormatForPortraitSiriSuggestionEntry_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"Siri Suggestion" value:@"Siri Suggestion<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);
  v3 = MapsSuggestionsLocalizedSubtitleFormatForPortraitSiriSuggestionEntry_s_formatString_subtitlePortraitSiriSuggestion;
  MapsSuggestionsLocalizedSubtitleFormatForPortraitSiriSuggestionEntry_s_formatString_subtitlePortraitSiriSuggestion = v2;
}

id MapsSuggestionsLocalizedSubtitleFormatForPortraitHomePodEntry()
{
  if (MapsSuggestionsLocalizedSubtitleFormatForPortraitHomePodEntry_onceToken != -1)
  {
    MapsSuggestionsLocalizedSubtitleFormatForPortraitHomePodEntry_cold_1();
  }

  v1 = MapsSuggestionsLocalizedSubtitleFormatForPortraitHomePodEntry_s_formatString_subtitlePortraitHomePod;

  return v1;
}

void __MapsSuggestionsLocalizedSubtitleFormatForPortraitHomePodEntry_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"From your HomePod" value:@"From your HomePod<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);
  v3 = MapsSuggestionsLocalizedSubtitleFormatForPortraitHomePodEntry_s_formatString_subtitlePortraitHomePod;
  MapsSuggestionsLocalizedSubtitleFormatForPortraitHomePodEntry_s_formatString_subtitlePortraitHomePod = v2;
}

id MapsSuggestionsLocalizedNearbyTransitShortString()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = [_MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7 localizedStringForKey:@"Nearby_Transit" value:@"Transit<unlocalized>" table:0];
  v1 = MapsSuggestionsNonNilString(v0, &stru_1F444C108);

  return v1;
}

id MapsSuggestionsLocalizedNearbyTransitShortSubtitleString()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = [_MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7 localizedStringForKey:@"Nearby_Transit_Subtitle" value:@"Nearby<unlocalized>" table:0];
  v1 = MapsSuggestionsNonNilString(v0, &stru_1F444C108);

  return v1;
}

id MapsSuggestionsLocalizedNearbyTransitFullString()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = [_MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7 localizedStringForKey:@"Nearby_Transit_Setup" value:@"Nearby Transit<unlocalized>" table:0];
  v1 = MapsSuggestionsNonNilString(v0, &stru_1F444C108);

  return v1;
}

id MapsSuggestionsLocalizedNearbyTransitFullSubtitleString()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = [_MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7 localizedStringForKey:@"Nearby_Transit_Setup_Subtitle" value:@"Options for all nearby departures<unlocalized>" table:0];
  v1 = MapsSuggestionsNonNilString(v0, &stru_1F444C108);

  return v1;
}

id MapsSuggestionsLocalizedCarPlayLowEVString()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = [_MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7 localizedStringForKey:@"Low EV Battery" value:@"Low EV Battery<unlocalized>" table:0];
  v1 = MapsSuggestionsNonNilString(v0, &stru_1F444C108);

  return v1;
}

id MapsSuggestionsLocalizedCarPlayLowFuelAndEVBatteryString()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = [_MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7 localizedStringForKey:@"Low Fuel and EV Battery" value:@"Low Fuel and EV Battery<unlocalized>" table:0];
  v1 = MapsSuggestionsNonNilString(v0, &stru_1F444C108);

  return v1;
}

id MapsSuggestionsLocalizedCarPlayLowFuelString()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = [_MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7 localizedStringForKey:@"Low Fuel" value:@"Low Fuel<unlocalized>" table:0];
  v1 = MapsSuggestionsNonNilString(v0, &stru_1F444C108);

  return v1;
}

id MapsSuggestionsLocalizedFindEVChargerString()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = [_MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7 localizedStringForKey:@"Find an EV Charger" value:@"Find an EV Charger<unlocalized>" table:0];
  v1 = MapsSuggestionsNonNilString(v0, &stru_1F444C108);

  return v1;
}

id MapsSuggestionsLocalizedFindStationString()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = [_MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7 localizedStringForKey:@"Find a Station" value:@"Find a Station<unlocalized>" table:0];
  v1 = MapsSuggestionsNonNilString(v0, &stru_1F444C108);

  return v1;
}

id MapsSuggestionsLocalizedFindStationForDieselCNGHybridString()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = [_MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7 localizedStringForKey:@"Find a Station (diesel value:CNG table:{or hybrid)", @"Find a Station<unlocalized>", 0}];
  v1 = MapsSuggestionsNonNilString(v0, &stru_1F444C108);

  return v1;
}

id MapsSuggestionsLocalizedTicketedEvent_SectionString(void *a1)
{
  v1 = MapsSuggestionsLocalizedTicketedEvent_SectionString_s_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    MapsSuggestionsLocalizedTicketedEvent_SectionString_cold_1();
  }

  v3 = (*(MapsSuggestionsLocalizedTicketedEvent_SectionString_s_formatter + 16))(MapsSuggestionsLocalizedTicketedEvent_SectionString_s_formatter, v2);

  return v3;
}

id MapsSuggestionsLocalizedTicketedEvent_SeatRowString(void *a1)
{
  v1 = MapsSuggestionsLocalizedTicketedEvent_SeatRowString_s_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    MapsSuggestionsLocalizedTicketedEvent_SeatRowString_cold_1();
  }

  v3 = (*(MapsSuggestionsLocalizedTicketedEvent_SeatRowString_s_formatter + 16))(MapsSuggestionsLocalizedTicketedEvent_SeatRowString_s_formatter, v2);

  return v3;
}

id MapsSuggestionsLocalizedTicketedEvent_SeatNumberString(void *a1)
{
  v1 = MapsSuggestionsLocalizedTicketedEvent_SeatNumberString_s_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    MapsSuggestionsLocalizedTicketedEvent_SeatNumberString_cold_1();
  }

  v3 = (*(MapsSuggestionsLocalizedTicketedEvent_SeatNumberString_s_formatter + 16))(MapsSuggestionsLocalizedTicketedEvent_SeatNumberString_s_formatter, v2);

  return v3;
}

id MapsSuggestionsLocalizedCalendarEventAllDayString()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = [_MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7 localizedStringForKey:@"MAPS_SUGGESTIONS_ALL_DAY_EVENT_STRING" value:@"All day<unlocalized>" table:0];
  v1 = MapsSuggestionsNonNilString(v0, &stru_1F444C108);

  return v1;
}

id MapsSuggestionsLocalizedCalendarEventTimeAndLocationString(void *a1, void *a2)
{
  v3 = MapsSuggestionsLocalizedCalendarEventTimeAndLocationString_s_onceToken;
  v4 = a2;
  v5 = a1;
  if (v3 != -1)
  {
    MapsSuggestionsLocalizedCalendarEventTimeAndLocationString_cold_1();
  }

  v6 = (*(MapsSuggestionsLocalizedCalendarEventTimeAndLocationString_s_formatter + 16))(MapsSuggestionsLocalizedCalendarEventTimeAndLocationString_s_formatter, v5, v4);

  return v6;
}

void __MapsSuggestionsLocalizedCalendarEventTimeAndLocationString_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"MAPS_EVENT_TIME_AND_LOCATION" value:@"%@ at %@<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __MapsSuggestionsLocalizedCalendarEventTimeAndLocationString_block_invoke_2;
  v6[3] = &unk_1E81F6430;
  v7 = v2;
  v3 = v2;
  v4 = _Block_copy(v6);
  v5 = MapsSuggestionsLocalizedCalendarEventTimeAndLocationString_s_formatter;
  MapsSuggestionsLocalizedCalendarEventTimeAndLocationString_s_formatter = v4;
}

id __MapsSuggestionsLocalizedCalendarEventTimeAndLocationString_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithFormat:*(a1 + 32), v7, v6];

  return v8;
}

id MapsSuggestionsLocalizedCalendarEventPOIAdornmentString(void *a1, void *a2)
{
  v24 = a1;
  v3 = a2;
  if (MapsSuggestionsLocalizedCalendarEventPOIAdornmentString_s_onceToken != -1)
  {
    MapsSuggestionsLocalizedCalendarEventPOIAdornmentString_cold_1();
  }

  v4 = MapsSuggestionsLocalizedCalendarEventPOIAdornmentString_s_formatter;
  v22 = NSStringFromMapsSuggestionsEventTime(v3);
  v5 = MapsSuggestionsTimeZone();
  v6 = v3;
  v7 = v5;
  v8 = v7;
  if (!v7)
  {
    v8 = MapsSuggestionsTimeZone();
  }

  v9 = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
  v10 = [v9 componentsInTimeZone:v8 fromDate:v6];

  v11 = [v10 hour];
  if (_isSystemIn24hours_onceToken != -1)
  {
    MapsSuggestionsLocalizedHotelCheckInString_cold_2();
  }

  v12 = _isSystemIn24hours_dateFormatter;
  v13 = [MEMORY[0x1E695DF00] date];
  v14 = [v12 stringFromDate:v13];

  v15 = [_isSystemIn24hours_dateFormatter AMSymbol];
  v16 = [v14 rangeOfString:v15];

  v17 = [_isSystemIn24hours_dateFormatter PMSymbol];
  v18 = [v14 rangeOfString:v17];

  if (v16 != 0x7FFFFFFFFFFFFFFFLL || v18 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = v11 - 12;
    if (v11 < 12)
    {
      v19 = v11;
    }

    if (v11 == 12)
    {
      v19 = 12;
    }

    if (v11)
    {
      v11 = v19;
    }

    else
    {
      v11 = 12;
    }
  }

  v20 = (*(v4 + 16))(v4, v23, v24, v11);

  return v20;
}

void __MapsSuggestionsLocalizedCalendarEventPOIAdornmentString_block_invoke()
{
  block = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = ___MapsSuggestionsBundle_block_invoke_7;
  v26 = &__block_descriptor_40_e5_v8__0l;
  v27 = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, &block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"MSg_CALENDAR_EVENT_POI_ADORNMENT_AT_0" value:@"%1$@ at %2$@<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);

  block = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = ___MapsSuggestionsBundle_block_invoke_7;
  v26 = &__block_descriptor_40_e5_v8__0l;
  v27 = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, &block);
  }

  v3 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v4 = [v3 localizedStringForKey:@"MSg_CALENDAR_EVENT_POI_ADORNMENT_AT_1" value:@"%1$@ at %2$@<unlocalized>" table:0];
  v5 = MapsSuggestionsNonNilString(v4, &stru_1F444C108);

  block = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = ___MapsSuggestionsBundle_block_invoke_7;
  v26 = &__block_descriptor_40_e5_v8__0l;
  v27 = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, &block);
  }

  v6 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v7 = [v6 localizedStringForKey:@"MSg_CALENDAR_EVENT_POI_ADORNMENT_AT_13" value:@"%1$@ at %2$@<unlocalized>" table:0];
  v8 = MapsSuggestionsNonNilString(v7, &stru_1F444C108);

  block = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = ___MapsSuggestionsBundle_block_invoke_7;
  v26 = &__block_descriptor_40_e5_v8__0l;
  v27 = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, &block);
  }

  v9 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v10 = [v9 localizedStringForKey:@"MSg_CALENDAR_EVENT_POI_ADORNMENT" value:@"%1$@ at %2$@<unlocalized>" table:0];
  v11 = MapsSuggestionsNonNilString(v10, &stru_1F444C108);

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __MapsSuggestionsLocalizedCalendarEventPOIAdornmentString_block_invoke_2;
  aBlock[3] = &unk_1E81F8458;
  v19 = v2;
  v20 = v5;
  v21 = v8;
  v22 = v11;
  v12 = v11;
  v13 = v8;
  v14 = v5;
  v15 = v2;
  v16 = _Block_copy(aBlock);
  v17 = MapsSuggestionsLocalizedCalendarEventPOIAdornmentString_s_formatter;
  MapsSuggestionsLocalizedCalendarEventPOIAdornmentString_s_formatter = v16;
}

id __MapsSuggestionsLocalizedCalendarEventPOIAdornmentString_block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = objc_alloc(MEMORY[0x1E696AEC0]);
  v10 = 32;
  v11 = 48;
  v12 = 56;
  if (a4 == 1)
  {
    v12 = 40;
  }

  if (a4 != 13)
  {
    v11 = v12;
  }

  if (a4)
  {
    v10 = v11;
  }

  v13 = [v9 initWithFormat:*(a1 + v10), v8, v7];

  return v13;
}

id MapsSuggestionsLocalizedCalendarEventPOIAdornmentAllDayString(void *a1)
{
  v1 = MapsSuggestionsLocalizedCalendarEventPOIAdornmentAllDayString_s_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    MapsSuggestionsLocalizedCalendarEventPOIAdornmentAllDayString_cold_1();
  }

  v3 = (*(MapsSuggestionsLocalizedCalendarEventPOIAdornmentAllDayString_s_formatter + 16))(MapsSuggestionsLocalizedCalendarEventPOIAdornmentAllDayString_s_formatter, v2);

  return v3;
}

void __MapsSuggestionsLocalizedCalendarEventPOIAdornmentAllDayString_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"MSg_CALENDAR_EVENT_POI_ADORNMENT_ALL_DAY" value:@"%@ table:{All day<unlocalized>", 0}];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __MapsSuggestionsLocalizedCalendarEventPOIAdornmentAllDayString_block_invoke_2;
  v6[3] = &unk_1E81F83B8;
  v7 = v2;
  v3 = v2;
  v4 = _Block_copy(v6);
  v5 = MapsSuggestionsLocalizedCalendarEventPOIAdornmentAllDayString_s_formatter;
  MapsSuggestionsLocalizedCalendarEventPOIAdornmentAllDayString_s_formatter = v4;
}

id __MapsSuggestionsLocalizedCalendarEventPOIAdornmentAllDayString_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [[v3 alloc] initWithFormat:*(a1 + 32), v4];

  return v5;
}

id MapsSuggestionsLocalizedMultipointRouteStopsString(uint64_t a1)
{
  if (a1 == 1)
  {
    if (MapsSuggestionsLocalizedMultipointRouteStopsString_s_onceTokenForOneStop != -1)
    {
      MapsSuggestionsLocalizedMultipointRouteStopsString_cold_2();
    }

    v1 = (*(MapsSuggestionsLocalizedMultipointRouteStopsString_s_formatterForOneStop + 16))();
  }

  else
  {
    if (MapsSuggestionsLocalizedMultipointRouteStopsString_s_onceTokenForMultiple != -1)
    {
      MapsSuggestionsLocalizedMultipointRouteStopsString_cold_1();
    }

    v1 = (*(MapsSuggestionsLocalizedMultipointRouteStopsString_s_formatterForMultiple + 16))(MapsSuggestionsLocalizedMultipointRouteStopsString_s_formatterForMultiple, a1);
  }

  return v1;
}

void __MapsSuggestionsLocalizedMultipointRouteStopsString_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"MSg_RESUME_MULTIPOINT_ROUTE_WITH_ONE_STOP" value:@"with 1 stop<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __MapsSuggestionsLocalizedMultipointRouteStopsString_block_invoke_2;
  v6[3] = &unk_1E81F8480;
  v7 = v2;
  v3 = v2;
  v4 = _Block_copy(v6);
  v5 = MapsSuggestionsLocalizedMultipointRouteStopsString_s_formatterForOneStop;
  MapsSuggestionsLocalizedMultipointRouteStopsString_s_formatterForOneStop = v4;
}

void __MapsSuggestionsLocalizedMultipointRouteStopsString_block_invoke_3()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"MSg_RESUME_MULTIPOINT_ROUTE_WITH_STOPS" value:@"with %lu stops<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __MapsSuggestionsLocalizedMultipointRouteStopsString_block_invoke_4;
  v6[3] = &unk_1E81F84A8;
  v7 = v2;
  v3 = v2;
  v4 = _Block_copy(v6);
  v5 = MapsSuggestionsLocalizedMultipointRouteStopsString_s_formatterForMultiple;
  MapsSuggestionsLocalizedMultipointRouteStopsString_s_formatterForMultiple = v4;
}

id __MapsSuggestionsLocalizedMultipointRouteStopsString_block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:*(a1 + 32), a2];

  return v2;
}

id MapsSuggestionsLocalizedTicketedEventWithTimeAndNameFormatString(void *a1, void *a2)
{
  v3 = MapsSuggestionsLocalizedTicketedEventWithTimeAndNameFormatString_s_onceToken;
  v4 = a2;
  v5 = a1;
  if (v3 != -1)
  {
    MapsSuggestionsLocalizedTicketedEventWithTimeAndNameFormatString_cold_1();
  }

  v6 = (*(MapsSuggestionsLocalizedTicketedEventWithTimeAndNameFormatString_s_formatter + 16))(MapsSuggestionsLocalizedTicketedEventWithTimeAndNameFormatString_s_formatter, v5, v4);

  return v6;
}

void __MapsSuggestionsLocalizedTicketedEventWithTimeAndNameFormatString_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"MAPS_SUGGESTIONS_TICKETED_EVENT_SHOW" value:@"%@ table:{%@<unlocalized>", 0}];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __MapsSuggestionsLocalizedTicketedEventWithTimeAndNameFormatString_block_invoke_2;
  v5[3] = &unk_1E81F6430;
  v5[4] = v2;
  v3 = _Block_copy(v5);
  v4 = MapsSuggestionsLocalizedTicketedEventWithTimeAndNameFormatString_s_formatter;
  MapsSuggestionsLocalizedTicketedEventWithTimeAndNameFormatString_s_formatter = v3;
}

id __MapsSuggestionsLocalizedTicketedEventWithTimeAndNameFormatString_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithFormat:*(a1 + 32), v7, v6];

  return v8;
}

id MapsSuggestionsLocalizedParkedCarAtLocationString(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (MapsSuggestionsLocalizedParkedCarAtLocationString_s_onceToken != -1)
  {
    MapsSuggestionsLocalizedParkedCarAtLocationString_cold_1();
  }

  if ([v4 length])
  {
    (*(MapsSuggestionsLocalizedParkedCarAtLocationString_s_formatterLocationNameAndDistance + 16))(MapsSuggestionsLocalizedParkedCarAtLocationString_s_formatterLocationNameAndDistance, v3, v4);
  }

  else
  {
    (*(MapsSuggestionsLocalizedParkedCarAtLocationString_s_formatterDistance + 16))(MapsSuggestionsLocalizedParkedCarAtLocationString_s_formatterDistance, v3);
  }
  v5 = ;

  return v5;
}

void __MapsSuggestionsLocalizedParkedCarAtLocationString_block_invoke()
{
  block = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = ___MapsSuggestionsBundle_block_invoke_7;
  v19 = &__block_descriptor_40_e5_v8__0l;
  v20 = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, &block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"MAPS_PARKED_LOCATION_NAME_AND_DISTANCE" value:@"%@ away table:{%@<unlocalized>", 0}];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);

  block = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = ___MapsSuggestionsBundle_block_invoke_7;
  v19 = &__block_descriptor_40_e5_v8__0l;
  v20 = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, &block);
  }

  v3 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v4 = [v3 localizedStringForKey:@"MAPS_PARKED_DISTANCE" value:@"%@ away<unlocalized>" table:0];
  v5 = MapsSuggestionsNonNilString(v4, &stru_1F444C108);

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __MapsSuggestionsLocalizedParkedCarAtLocationString_block_invoke_2;
  aBlock[3] = &unk_1E81F83B8;
  v15 = v5;
  v6 = v5;
  v7 = _Block_copy(aBlock);
  v8 = MapsSuggestionsLocalizedParkedCarAtLocationString_s_formatterDistance;
  MapsSuggestionsLocalizedParkedCarAtLocationString_s_formatterDistance = v7;

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __MapsSuggestionsLocalizedParkedCarAtLocationString_block_invoke_3;
  v12[3] = &unk_1E81F6430;
  v13 = v2;
  v9 = v2;
  v10 = _Block_copy(v12);
  v11 = MapsSuggestionsLocalizedParkedCarAtLocationString_s_formatterLocationNameAndDistance;
  MapsSuggestionsLocalizedParkedCarAtLocationString_s_formatterLocationNameAndDistance = v10;
}

id __MapsSuggestionsLocalizedParkedCarAtLocationString_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [[v3 alloc] initWithFormat:*(a1 + 32), v4];

  return v5;
}

id __MapsSuggestionsLocalizedParkedCarAtLocationString_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithFormat:*(a1 + 32), v7, v6];

  return v8;
}

id MapsSuggestionsLocalizedFrequentLocationTitleString(void *a1, void *a2)
{
  v3 = MapsSuggestionsLocalizedFrequentLocationTitleString_s_onceToken;
  v4 = a2;
  v5 = a1;
  if (v3 != -1)
  {
    MapsSuggestionsLocalizedFrequentLocationTitleString_cold_1();
  }

  v6 = (*(MapsSuggestionsLocalizedFrequentLocationTitleString_s_formatter + 16))(MapsSuggestionsLocalizedFrequentLocationTitleString_s_formatter, v5, v4);

  return v6;
}

void __MapsSuggestionsLocalizedFrequentLocationTitleString_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"MAPS_ETA_TO" value:@"%@ to %@<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __MapsSuggestionsLocalizedFrequentLocationTitleString_block_invoke_2;
  v6[3] = &unk_1E81F6430;
  v7 = v2;
  v3 = v2;
  v4 = _Block_copy(v6);
  v5 = MapsSuggestionsLocalizedFrequentLocationTitleString_s_formatter;
  MapsSuggestionsLocalizedFrequentLocationTitleString_s_formatter = v4;
}

id __MapsSuggestionsLocalizedFrequentLocationTitleString_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithFormat:*(a1 + 32), v6, v7];

  return v8;
}

id MapsSuggestionsLocalizedFrequentLocationNearTitleString(void *a1, void *a2)
{
  v3 = MapsSuggestionsLocalizedFrequentLocationNearTitleString_s_onceToken;
  v4 = a2;
  v5 = a1;
  if (v3 != -1)
  {
    MapsSuggestionsLocalizedFrequentLocationNearTitleString_cold_1();
  }

  v6 = (*(MapsSuggestionsLocalizedFrequentLocationNearTitleString_s_formatter + 16))(MapsSuggestionsLocalizedFrequentLocationNearTitleString_s_formatter, v5, v4);

  return v6;
}

void __MapsSuggestionsLocalizedFrequentLocationNearTitleString_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"MAPS_ETA_TO_NEAR" value:@"%@ to near %@<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __MapsSuggestionsLocalizedFrequentLocationNearTitleString_block_invoke_2;
  v6[3] = &unk_1E81F6430;
  v7 = v2;
  v3 = v2;
  v4 = _Block_copy(v6);
  v5 = MapsSuggestionsLocalizedFrequentLocationNearTitleString_s_formatter;
  MapsSuggestionsLocalizedFrequentLocationNearTitleString_s_formatter = v4;
}

id __MapsSuggestionsLocalizedFrequentLocationNearTitleString_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithFormat:*(a1 + 32), v6, v7];

  return v8;
}

id MapsSuggestionsLocalizedFrequentLocationNearStreetTitleString(void *a1)
{
  v1 = MapsSuggestionsLocalizedFrequentLocationNearStreetTitleString_s_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    MapsSuggestionsLocalizedFrequentLocationNearStreetTitleString_cold_1();
  }

  v3 = (*(MapsSuggestionsLocalizedFrequentLocationNearStreetTitleString_s_formatter + 16))(MapsSuggestionsLocalizedFrequentLocationNearStreetTitleString_s_formatter, v2);

  return v3;
}

void __MapsSuggestionsLocalizedFrequentLocationNearStreetTitleString_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"MAPS_SUGG_FREQ_LOC_TITLE" value:@"Near %@<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __MapsSuggestionsLocalizedFrequentLocationNearStreetTitleString_block_invoke_2;
  v6[3] = &unk_1E81F83B8;
  v7 = v2;
  v3 = v2;
  v4 = _Block_copy(v6);
  v5 = MapsSuggestionsLocalizedFrequentLocationNearStreetTitleString_s_formatter;
  MapsSuggestionsLocalizedFrequentLocationNearStreetTitleString_s_formatter = v4;
}

id __MapsSuggestionsLocalizedFrequentLocationNearStreetTitleString_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [[v3 alloc] initWithFormat:*(a1 + 32), v4];

  return v5;
}

id MapsSuggestionsLocalizedFlightGate(void *a1)
{
  v1 = MapsSuggestionsLocalizedFlightGate_s_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    MapsSuggestionsLocalizedFlightGate_cold_1();
  }

  v3 = (*(MapsSuggestionsLocalizedFlightGate_s_formatter + 16))(MapsSuggestionsLocalizedFlightGate_s_formatter, v2);

  return v3;
}

void __MapsSuggestionsLocalizedFlightGate_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"MAPS_FLIGHT_GATE" value:@"Gate %@<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __MapsSuggestionsLocalizedFlightGate_block_invoke_2;
  v6[3] = &unk_1E81F83B8;
  v7 = v2;
  v3 = v2;
  v4 = _Block_copy(v6);
  v5 = MapsSuggestionsLocalizedFlightGate_s_formatter;
  MapsSuggestionsLocalizedFlightGate_s_formatter = v4;
}

id __MapsSuggestionsLocalizedFlightGate_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [[v3 alloc] initWithFormat:*(a1 + 32), v4];

  return v5;
}

id MapsSuggestionsLocalizedFlightDepatureTime(void *a1, void *a2)
{
  v24 = a1;
  v3 = a2;
  if (MapsSuggestionsLocalizedFlightDepatureTime_s_onceToken != -1)
  {
    MapsSuggestionsLocalizedFlightDepatureTime_cold_1();
  }

  v4 = MapsSuggestionsLocalizedFlightDepatureTime_s_formatter;
  v22 = NSStringFromMapsSuggestionsEventTime(v3);
  v5 = MapsSuggestionsTimeZone();
  v6 = v3;
  v7 = v5;
  v8 = v7;
  if (!v7)
  {
    v8 = MapsSuggestionsTimeZone();
  }

  v9 = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
  v10 = [v9 componentsInTimeZone:v8 fromDate:v6];

  v11 = [v10 hour];
  if (_isSystemIn24hours_onceToken != -1)
  {
    MapsSuggestionsLocalizedHotelCheckInString_cold_2();
  }

  v12 = _isSystemIn24hours_dateFormatter;
  v13 = [MEMORY[0x1E695DF00] date];
  v14 = [v12 stringFromDate:v13];

  v15 = [_isSystemIn24hours_dateFormatter AMSymbol];
  v16 = [v14 rangeOfString:v15];

  v17 = [_isSystemIn24hours_dateFormatter PMSymbol];
  v18 = [v14 rangeOfString:v17];

  if (v16 != 0x7FFFFFFFFFFFFFFFLL || v18 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = v11 - 12;
    if (v11 < 12)
    {
      v19 = v11;
    }

    if (v11 == 12)
    {
      v19 = 12;
    }

    if (v11)
    {
      v11 = v19;
    }

    else
    {
      v11 = 12;
    }
  }

  v20 = (*(v4 + 16))(v4, v24, v23, v11);

  return v20;
}

void __MapsSuggestionsLocalizedFlightDepatureTime_block_invoke()
{
  block = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = ___MapsSuggestionsBundle_block_invoke_7;
  v26 = &__block_descriptor_40_e5_v8__0l;
  v27 = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, &block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"MAPS_FLIGHT_DEPARTURE_TIME_AT_0" value:@"Flight %1$@ departs at %2$@<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);

  block = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = ___MapsSuggestionsBundle_block_invoke_7;
  v26 = &__block_descriptor_40_e5_v8__0l;
  v27 = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, &block);
  }

  v3 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v4 = [v3 localizedStringForKey:@"MAPS_FLIGHT_DEPARTURE_TIME_AT_1" value:@"Flight %1$@ departs at %2$@<unlocalized>" table:0];
  v5 = MapsSuggestionsNonNilString(v4, &stru_1F444C108);

  block = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = ___MapsSuggestionsBundle_block_invoke_7;
  v26 = &__block_descriptor_40_e5_v8__0l;
  v27 = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, &block);
  }

  v6 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v7 = [v6 localizedStringForKey:@"MAPS_FLIGHT_DEPARTURE_TIME_AT_13" value:@"Flight %1$@ departs at %2$@<unlocalized>" table:0];
  v8 = MapsSuggestionsNonNilString(v7, &stru_1F444C108);

  block = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = ___MapsSuggestionsBundle_block_invoke_7;
  v26 = &__block_descriptor_40_e5_v8__0l;
  v27 = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, &block);
  }

  v9 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v10 = [v9 localizedStringForKey:@"MAPS_FLIGHT_DEPARTURE_TIME" value:@"Flight %1$@ departs at %2$@<unlocalized>" table:0];
  v11 = MapsSuggestionsNonNilString(v10, &stru_1F444C108);

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __MapsSuggestionsLocalizedFlightDepatureTime_block_invoke_2;
  aBlock[3] = &unk_1E81F8458;
  v19 = v2;
  v20 = v5;
  v21 = v8;
  v22 = v11;
  v12 = v11;
  v13 = v8;
  v14 = v5;
  v15 = v2;
  v16 = _Block_copy(aBlock);
  v17 = MapsSuggestionsLocalizedFlightDepatureTime_s_formatter;
  MapsSuggestionsLocalizedFlightDepatureTime_s_formatter = v16;
}

id __MapsSuggestionsLocalizedFlightDepatureTime_block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = objc_alloc(MEMORY[0x1E696AEC0]);
  v10 = 32;
  v11 = 48;
  v12 = 56;
  if (a4 == 1)
  {
    v12 = 40;
  }

  if (a4 != 13)
  {
    v11 = v12;
  }

  if (a4)
  {
    v10 = v11;
  }

  v13 = [v9 initWithFormat:*(a1 + v10), v7, v8];

  return v13;
}

id MapsSuggestionsLocalizedFlightDepatureTodaySoonString(void *a1, void *a2)
{
  v24 = a1;
  v3 = a2;
  if (MapsSuggestionsLocalizedFlightDepatureTodaySoonString_s_onceToken != -1)
  {
    MapsSuggestionsLocalizedFlightDepatureTodaySoonString_cold_1();
  }

  v4 = MapsSuggestionsLocalizedFlightDepatureTodaySoonString_s_formatter;
  v22 = NSStringFromMapsSuggestionsEventTime(v3);
  v5 = MapsSuggestionsTimeZone();
  v6 = v3;
  v7 = v5;
  v8 = v7;
  if (!v7)
  {
    v8 = MapsSuggestionsTimeZone();
  }

  v9 = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
  v10 = [v9 componentsInTimeZone:v8 fromDate:v6];

  v11 = [v10 hour];
  if (_isSystemIn24hours_onceToken != -1)
  {
    MapsSuggestionsLocalizedHotelCheckInString_cold_2();
  }

  v12 = _isSystemIn24hours_dateFormatter;
  v13 = [MEMORY[0x1E695DF00] date];
  v14 = [v12 stringFromDate:v13];

  v15 = [_isSystemIn24hours_dateFormatter AMSymbol];
  v16 = [v14 rangeOfString:v15];

  v17 = [_isSystemIn24hours_dateFormatter PMSymbol];
  v18 = [v14 rangeOfString:v17];

  if (v16 != 0x7FFFFFFFFFFFFFFFLL || v18 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = v11 - 12;
    if (v11 < 12)
    {
      v19 = v11;
    }

    if (v11 == 12)
    {
      v19 = 12;
    }

    if (v11)
    {
      v11 = v19;
    }

    else
    {
      v11 = 12;
    }
  }

  v20 = (*(v4 + 16))(v4, v24, v23, v11);

  return v20;
}

void __MapsSuggestionsLocalizedFlightDepatureTodaySoonString_block_invoke()
{
  block = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = ___MapsSuggestionsBundle_block_invoke_7;
  v26 = &__block_descriptor_40_e5_v8__0l;
  v27 = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, &block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"MAPS_FLIGHT_DEPARTS_SOON_AT_0" value:@"Flight %1$@ departs at %2$@<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);

  block = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = ___MapsSuggestionsBundle_block_invoke_7;
  v26 = &__block_descriptor_40_e5_v8__0l;
  v27 = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, &block);
  }

  v3 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v4 = [v3 localizedStringForKey:@"MAPS_FLIGHT_DEPARTS_SOON_AT_1" value:@"Flight %1$@ departs at %2$@<unlocalized>" table:0];
  v5 = MapsSuggestionsNonNilString(v4, &stru_1F444C108);

  block = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = ___MapsSuggestionsBundle_block_invoke_7;
  v26 = &__block_descriptor_40_e5_v8__0l;
  v27 = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, &block);
  }

  v6 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v7 = [v6 localizedStringForKey:@"MAPS_FLIGHT_DEPARTS_SOON_AT_13" value:@"Flight %1$@ departs at %2$@<unlocalized>" table:0];
  v8 = MapsSuggestionsNonNilString(v7, &stru_1F444C108);

  block = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = ___MapsSuggestionsBundle_block_invoke_7;
  v26 = &__block_descriptor_40_e5_v8__0l;
  v27 = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, &block);
  }

  v9 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v10 = [v9 localizedStringForKey:@"MAPS_FLIGHT_DEPARTS_SOON" value:@"Flight %1$@ departs at %2$@<unlocalized>" table:0];
  v11 = MapsSuggestionsNonNilString(v10, &stru_1F444C108);

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __MapsSuggestionsLocalizedFlightDepatureTodaySoonString_block_invoke_2;
  aBlock[3] = &unk_1E81F8458;
  v19 = v2;
  v20 = v5;
  v21 = v8;
  v22 = v11;
  v12 = v11;
  v13 = v8;
  v14 = v5;
  v15 = v2;
  v16 = _Block_copy(aBlock);
  v17 = MapsSuggestionsLocalizedFlightDepatureTodaySoonString_s_formatter;
  MapsSuggestionsLocalizedFlightDepatureTodaySoonString_s_formatter = v16;
}

id __MapsSuggestionsLocalizedFlightDepatureTodaySoonString_block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = objc_alloc(MEMORY[0x1E696AEC0]);
  v10 = 32;
  v11 = 48;
  v12 = 56;
  if (a4 == 1)
  {
    v12 = 40;
  }

  if (a4 != 13)
  {
    v11 = v12;
  }

  if (a4)
  {
    v10 = v11;
  }

  v13 = [v9 initWithFormat:*(a1 + v10), v7, v8];

  return v13;
}

id MapsSuggestionsLocalizedFlightDepatureTodayString(void *a1)
{
  v1 = a1;
  if (MapsSuggestionsLocalizedFlightDepatureTodayString_s_onceToken != -1)
  {
    MapsSuggestionsLocalizedFlightDepatureTodayString_cold_1();
  }

  v2 = MapsSuggestionsLocalizedFlightDepatureTodayString_s_formatter;
  v20 = NSStringFromMapsSuggestionsEventTime(v1);
  v3 = MapsSuggestionsTimeZone();
  v4 = v1;
  v5 = v3;
  v6 = v5;
  if (!v5)
  {
    v6 = MapsSuggestionsTimeZone();
  }

  v7 = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
  v8 = [v7 componentsInTimeZone:v6 fromDate:v4];

  v9 = [v8 hour];
  if (_isSystemIn24hours_onceToken != -1)
  {
    MapsSuggestionsLocalizedHotelCheckInString_cold_2();
  }

  v10 = _isSystemIn24hours_dateFormatter;
  v11 = [MEMORY[0x1E695DF00] date];
  v12 = [v10 stringFromDate:v11];

  v13 = [_isSystemIn24hours_dateFormatter AMSymbol];
  v14 = [v12 rangeOfString:v13];

  v15 = [_isSystemIn24hours_dateFormatter PMSymbol];
  v16 = [v12 rangeOfString:v15];

  if (v14 != 0x7FFFFFFFFFFFFFFFLL || v16 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = v9 - 12;
    if (v9 < 12)
    {
      v17 = v9;
    }

    if (v9 == 12)
    {
      v17 = 12;
    }

    if (v9)
    {
      v9 = v17;
    }

    else
    {
      v9 = 12;
    }
  }

  v18 = (*(v2 + 16))(v2, v20, v9);

  return v18;
}

void __MapsSuggestionsLocalizedFlightDepatureTodayString_block_invoke()
{
  block = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = ___MapsSuggestionsBundle_block_invoke_7;
  v26 = &__block_descriptor_40_e5_v8__0l;
  v27 = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, &block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"MAPS_FLIGHT_DEPARTS_TODAY_AT_0" value:@"Departs today at %1$@<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);

  block = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = ___MapsSuggestionsBundle_block_invoke_7;
  v26 = &__block_descriptor_40_e5_v8__0l;
  v27 = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, &block);
  }

  v3 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v4 = [v3 localizedStringForKey:@"MAPS_FLIGHT_DEPARTS_TODAY_AT_1" value:@"Departs today at %1$@<unlocalized>" table:0];
  v5 = MapsSuggestionsNonNilString(v4, &stru_1F444C108);

  block = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = ___MapsSuggestionsBundle_block_invoke_7;
  v26 = &__block_descriptor_40_e5_v8__0l;
  v27 = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, &block);
  }

  v6 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v7 = [v6 localizedStringForKey:@"MAPS_FLIGHT_DEPARTS_TODAY_AT_13" value:@"Departs today at %1$@<unlocalized>" table:0];
  v8 = MapsSuggestionsNonNilString(v7, &stru_1F444C108);

  block = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = ___MapsSuggestionsBundle_block_invoke_7;
  v26 = &__block_descriptor_40_e5_v8__0l;
  v27 = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, &block);
  }

  v9 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v10 = [v9 localizedStringForKey:@"MAPS_FLIGHT_DEPARTS_TODAY" value:@"Departs today at %1$@<unlocalized>" table:0];
  v11 = MapsSuggestionsNonNilString(v10, &stru_1F444C108);

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __MapsSuggestionsLocalizedFlightDepatureTodayString_block_invoke_2;
  aBlock[3] = &unk_1E81F83E0;
  v19 = v2;
  v20 = v5;
  v21 = v8;
  v22 = v11;
  v12 = v11;
  v13 = v8;
  v14 = v5;
  v15 = v2;
  v16 = _Block_copy(aBlock);
  v17 = MapsSuggestionsLocalizedFlightDepatureTodayString_s_formatter;
  MapsSuggestionsLocalizedFlightDepatureTodayString_s_formatter = v16;
}

id __MapsSuggestionsLocalizedFlightDepatureTodayString_block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7 = 32;
  v8 = 48;
  v9 = 56;
  if (a3 == 1)
  {
    v9 = 40;
  }

  if (a3 != 13)
  {
    v8 = v9;
  }

  if (a3)
  {
    v7 = v8;
  }

  v10 = [v6 initWithFormat:*(a1 + v7), v5];

  return v10;
}

id MapsSuggestionsLocalizedFlightDepatureTomorrowString(void *a1)
{
  v1 = a1;
  if (MapsSuggestionsLocalizedFlightDepatureTomorrowString_s_onceToken != -1)
  {
    MapsSuggestionsLocalizedFlightDepatureTomorrowString_cold_1();
  }

  v2 = MapsSuggestionsLocalizedFlightDepatureTomorrowString_s_formatter;
  v20 = NSStringFromMapsSuggestionsEventTime(v1);
  v3 = MapsSuggestionsTimeZone();
  v4 = v1;
  v5 = v3;
  v6 = v5;
  if (!v5)
  {
    v6 = MapsSuggestionsTimeZone();
  }

  v7 = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
  v8 = [v7 componentsInTimeZone:v6 fromDate:v4];

  v9 = [v8 hour];
  if (_isSystemIn24hours_onceToken != -1)
  {
    MapsSuggestionsLocalizedHotelCheckInString_cold_2();
  }

  v10 = _isSystemIn24hours_dateFormatter;
  v11 = [MEMORY[0x1E695DF00] date];
  v12 = [v10 stringFromDate:v11];

  v13 = [_isSystemIn24hours_dateFormatter AMSymbol];
  v14 = [v12 rangeOfString:v13];

  v15 = [_isSystemIn24hours_dateFormatter PMSymbol];
  v16 = [v12 rangeOfString:v15];

  if (v14 != 0x7FFFFFFFFFFFFFFFLL || v16 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = v9 - 12;
    if (v9 < 12)
    {
      v17 = v9;
    }

    if (v9 == 12)
    {
      v17 = 12;
    }

    if (v9)
    {
      v9 = v17;
    }

    else
    {
      v9 = 12;
    }
  }

  v18 = (*(v2 + 16))(v2, v20, v9);

  return v18;
}

void __MapsSuggestionsLocalizedFlightDepatureTomorrowString_block_invoke()
{
  block = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = ___MapsSuggestionsBundle_block_invoke_7;
  v26 = &__block_descriptor_40_e5_v8__0l;
  v27 = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, &block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"MAPS_FLIGHT_DEPARTS_TOMORROW_AT_0" value:@"Departs tomorrow at %@<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);

  block = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = ___MapsSuggestionsBundle_block_invoke_7;
  v26 = &__block_descriptor_40_e5_v8__0l;
  v27 = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, &block);
  }

  v3 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v4 = [v3 localizedStringForKey:@"MAPS_FLIGHT_DEPARTS_TOMORROW_AT_1" value:@"Departs tomorrow at %@<unlocalized>" table:0];
  v5 = MapsSuggestionsNonNilString(v4, &stru_1F444C108);

  block = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = ___MapsSuggestionsBundle_block_invoke_7;
  v26 = &__block_descriptor_40_e5_v8__0l;
  v27 = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, &block);
  }

  v6 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v7 = [v6 localizedStringForKey:@"MAPS_FLIGHT_DEPARTS_TOMORROW_AT_13" value:@"Departs tomorrow at %@<unlocalized>" table:0];
  v8 = MapsSuggestionsNonNilString(v7, &stru_1F444C108);

  block = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = ___MapsSuggestionsBundle_block_invoke_7;
  v26 = &__block_descriptor_40_e5_v8__0l;
  v27 = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, &block);
  }

  v9 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v10 = [v9 localizedStringForKey:@"MAPS_FLIGHT_DEPARTS_TOMORROW" value:@"Departs tomorrow at %@<unlocalized>" table:0];
  v11 = MapsSuggestionsNonNilString(v10, &stru_1F444C108);

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __MapsSuggestionsLocalizedFlightDepatureTomorrowString_block_invoke_2;
  aBlock[3] = &unk_1E81F83E0;
  v19 = v2;
  v20 = v5;
  v21 = v8;
  v22 = v11;
  v12 = v11;
  v13 = v8;
  v14 = v5;
  v15 = v2;
  v16 = _Block_copy(aBlock);
  v17 = MapsSuggestionsLocalizedFlightDepatureTomorrowString_s_formatter;
  MapsSuggestionsLocalizedFlightDepatureTomorrowString_s_formatter = v16;
}

id __MapsSuggestionsLocalizedFlightDepatureTomorrowString_block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7 = 32;
  v8 = 48;
  v9 = 56;
  if (a3 == 1)
  {
    v9 = 40;
  }

  if (a3 != 13)
  {
    v8 = v9;
  }

  if (a3)
  {
    v7 = v8;
  }

  v10 = [v6 initWithFormat:*(a1 + v7), v5];

  return v10;
}

id MapsSuggestionsLocalizedFlightETAString(void *a1, void *a2)
{
  v3 = MapsSuggestionsLocalizedFlightETAString_s_onceToken;
  v4 = a2;
  v5 = a1;
  if (v3 != -1)
  {
    MapsSuggestionsLocalizedFlightETAString_cold_1();
  }

  v6 = (*(MapsSuggestionsLocalizedFlightETAString_s_formatter + 16))(MapsSuggestionsLocalizedFlightETAString_s_formatter, v5, v4);

  return v6;
}

void __MapsSuggestionsLocalizedFlightETAString_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"MAPS_ETA_TO_FLIGHT" value:@"%@ to %@<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __MapsSuggestionsLocalizedFlightETAString_block_invoke_2;
  v6[3] = &unk_1E81F6430;
  v7 = v2;
  v3 = v2;
  v4 = _Block_copy(v6);
  v5 = MapsSuggestionsLocalizedFlightETAString_s_formatter;
  MapsSuggestionsLocalizedFlightETAString_s_formatter = v4;
}

id __MapsSuggestionsLocalizedFlightETAString_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithFormat:*(a1 + 32), v7, v6];

  return v8;
}

id MapsSuggestionsLocalizedContactLocationTitle(void *a1)
{
  v1 = MapsSuggestionsLocalizedContactLocationTitle_s_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    MapsSuggestionsLocalizedContactLocationTitle_cold_1();
  }

  v3 = (*(MapsSuggestionsLocalizedContactLocationTitle_s_formatter + 16))(MapsSuggestionsLocalizedContactLocationTitle_s_formatter, v2);

  return v3;
}

void __MapsSuggestionsLocalizedContactLocationTitle_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"MAPS_LOCALIZED_CONTACT_LOCATION_TITLE" value:@"%@’s Location<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __MapsSuggestionsLocalizedContactLocationTitle_block_invoke_2;
  v6[3] = &unk_1E81F83B8;
  v7 = v2;
  v3 = v2;
  v4 = _Block_copy(v6);
  v5 = MapsSuggestionsLocalizedContactLocationTitle_s_formatter;
  MapsSuggestionsLocalizedContactLocationTitle_s_formatter = v4;
}

id __MapsSuggestionsLocalizedContactLocationTitle_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [[v3 alloc] initWithFormat:*(a1 + 32), v4];

  return v5;
}

id MapsSuggestionsLocalizedRecentlySharedContactActivityTitle(void *a1)
{
  v1 = MapsSuggestionsLocalizedRecentlySharedContactActivityTitle_s_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    MapsSuggestionsLocalizedRecentlySharedContactActivityTitle_cold_1();
  }

  v3 = (*(MapsSuggestionsLocalizedRecentlySharedContactActivityTitle_s_formatter + 16))(MapsSuggestionsLocalizedRecentlySharedContactActivityTitle_s_formatter, v2);

  return v3;
}

void __MapsSuggestionsLocalizedRecentlySharedContactActivityTitle_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"MAPS_RECENTLY_SHARED_CONTACT_ACTIVITY_TITLE" value:@"View %@’s Location<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __MapsSuggestionsLocalizedRecentlySharedContactActivityTitle_block_invoke_2;
  v6[3] = &unk_1E81F83B8;
  v7 = v2;
  v3 = v2;
  v4 = _Block_copy(v6);
  v5 = MapsSuggestionsLocalizedRecentlySharedContactActivityTitle_s_formatter;
  MapsSuggestionsLocalizedRecentlySharedContactActivityTitle_s_formatter = v4;
}

id __MapsSuggestionsLocalizedRecentlySharedContactActivityTitle_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [[v3 alloc] initWithFormat:*(a1 + 32), v4];

  return v5;
}

id MapsSuggestionsLocalizedLikelyMeetupContactActivityTitle(void *a1)
{
  v1 = MapsSuggestionsLocalizedLikelyMeetupContactActivityTitle_s_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    MapsSuggestionsLocalizedLikelyMeetupContactActivityTitle_cold_1();
  }

  v3 = (*(MapsSuggestionsLocalizedLikelyMeetupContactActivityTitle_s_formatter + 16))(MapsSuggestionsLocalizedLikelyMeetupContactActivityTitle_s_formatter, v2);

  return v3;
}

void __MapsSuggestionsLocalizedLikelyMeetupContactActivityTitle_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"MAPS_LIKELY_MEETUP_CONTACT_ACTIVITY_TITLE" value:@"Directions to %@’s Location<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __MapsSuggestionsLocalizedLikelyMeetupContactActivityTitle_block_invoke_2;
  v6[3] = &unk_1E81F83B8;
  v7 = v2;
  v3 = v2;
  v4 = _Block_copy(v6);
  v5 = MapsSuggestionsLocalizedLikelyMeetupContactActivityTitle_s_formatter;
  MapsSuggestionsLocalizedLikelyMeetupContactActivityTitle_s_formatter = v4;
}

id __MapsSuggestionsLocalizedLikelyMeetupContactActivityTitle_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [[v3 alloc] initWithFormat:*(a1 + 32), v4];

  return v5;
}

id MapsSuggestionsLocalizedAddressStringContactActivitySubTitle(void *a1, void *a2)
{
  v3 = MapsSuggestionsLocalizedAddressStringContactActivitySubTitle_s_onceToken;
  v4 = a2;
  v5 = a1;
  if (v3 != -1)
  {
    MapsSuggestionsLocalizedAddressStringContactActivitySubTitle_cold_1();
  }

  v6 = (*(MapsSuggestionsLocalizedAddressStringContactActivitySubTitle_s_formatter + 16))(MapsSuggestionsLocalizedAddressStringContactActivitySubTitle_s_formatter, v5, v4);

  return v6;
}

void __MapsSuggestionsLocalizedAddressStringContactActivitySubTitle_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"MAPS_SUGG_LAST_SEEN_NEAR_ADDRESS" value:@"%@ • Near %@<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __MapsSuggestionsLocalizedAddressStringContactActivitySubTitle_block_invoke_2;
  v6[3] = &unk_1E81F6430;
  v7 = v2;
  v3 = v2;
  v4 = _Block_copy(v6);
  v5 = MapsSuggestionsLocalizedAddressStringContactActivitySubTitle_s_formatter;
  MapsSuggestionsLocalizedAddressStringContactActivitySubTitle_s_formatter = v4;
}

id __MapsSuggestionsLocalizedAddressStringContactActivitySubTitle_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithFormat:*(a1 + 32), v7, v6];

  return v8;
}

id MapsSuggestionsLocalizedOrderPickupFromMerchantTitle(void *a1)
{
  v1 = MapsSuggestionsLocalizedOrderPickupFromMerchantTitle_s_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    MapsSuggestionsLocalizedOrderPickupFromMerchantTitle_cold_1();
  }

  v3 = (*(MapsSuggestionsLocalizedOrderPickupFromMerchantTitle_s_formatter + 16))(MapsSuggestionsLocalizedOrderPickupFromMerchantTitle_s_formatter, v2);

  return v3;
}

void __MapsSuggestionsLocalizedOrderPickupFromMerchantTitle_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"MAPS_SUGG_PICKUP_ORDER_FROM_MERCHANT" value:@"Pick up your %@ order<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __MapsSuggestionsLocalizedOrderPickupFromMerchantTitle_block_invoke_2;
  v6[3] = &unk_1E81F83B8;
  v7 = v2;
  v3 = v2;
  v4 = _Block_copy(v6);
  v5 = MapsSuggestionsLocalizedOrderPickupFromMerchantTitle_s_formatter;
  MapsSuggestionsLocalizedOrderPickupFromMerchantTitle_s_formatter = v4;
}

id __MapsSuggestionsLocalizedOrderPickupFromMerchantTitle_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [[v3 alloc] initWithFormat:*(a1 + 32), v4];

  return v5;
}

id MapsSuggestionsLocalizedOrderPickupTitle()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = [_MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7 localizedStringForKey:@"MAPS_SUGG_PICKUP_ORDER" value:@"Pick up your order<unlocalized>" table:0];
  v1 = MapsSuggestionsNonNilString(v0, &stru_1F444C108);

  return v1;
}

id MapsSuggestionsLocalizedOrderPickupReadyAt(void *a1)
{
  v1 = a1;
  if (MapsSuggestionsLocalizedOrderPickupReadyAt_s_onceToken != -1)
  {
    MapsSuggestionsLocalizedOrderPickupReadyAt_cold_1();
  }

  v2 = MapsSuggestionsLocalizedOrderPickupReadyAt_s_formatter;
  v20 = NSStringFromMapsSuggestionsEventTime(v1);
  v3 = MapsSuggestionsTimeZone();
  v4 = v1;
  v5 = v3;
  v6 = v5;
  if (!v5)
  {
    v6 = MapsSuggestionsTimeZone();
  }

  v7 = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
  v8 = [v7 componentsInTimeZone:v6 fromDate:v4];

  v9 = [v8 hour];
  if (_isSystemIn24hours_onceToken != -1)
  {
    MapsSuggestionsLocalizedHotelCheckInString_cold_2();
  }

  v10 = _isSystemIn24hours_dateFormatter;
  v11 = [MEMORY[0x1E695DF00] date];
  v12 = [v10 stringFromDate:v11];

  v13 = [_isSystemIn24hours_dateFormatter AMSymbol];
  v14 = [v12 rangeOfString:v13];

  v15 = [_isSystemIn24hours_dateFormatter PMSymbol];
  v16 = [v12 rangeOfString:v15];

  if (v14 != 0x7FFFFFFFFFFFFFFFLL || v16 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = v9 - 12;
    if (v9 < 12)
    {
      v17 = v9;
    }

    if (v9 == 12)
    {
      v17 = 12;
    }

    if (v9)
    {
      v9 = v17;
    }

    else
    {
      v9 = 12;
    }
  }

  v18 = (*(v2 + 16))(v2, v20, v9);

  return v18;
}

void __MapsSuggestionsLocalizedOrderPickupReadyAt_block_invoke()
{
  block = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = ___MapsSuggestionsBundle_block_invoke_7;
  v26 = &__block_descriptor_40_e5_v8__0l;
  v27 = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, &block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"MAPS_SUGG_ORDER_READY_AT_0" value:@"Ready at %1$@<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);

  block = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = ___MapsSuggestionsBundle_block_invoke_7;
  v26 = &__block_descriptor_40_e5_v8__0l;
  v27 = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, &block);
  }

  v3 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v4 = [v3 localizedStringForKey:@"MAPS_SUGG_ORDER_READY_AT_1" value:@"Ready at %1$@<unlocalized>" table:0];
  v5 = MapsSuggestionsNonNilString(v4, &stru_1F444C108);

  block = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = ___MapsSuggestionsBundle_block_invoke_7;
  v26 = &__block_descriptor_40_e5_v8__0l;
  v27 = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, &block);
  }

  v6 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v7 = [v6 localizedStringForKey:@"MAPS_SUGG_ORDER_READY_AT_13" value:@"Ready at %1$@<unlocalized>" table:0];
  v8 = MapsSuggestionsNonNilString(v7, &stru_1F444C108);

  block = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = ___MapsSuggestionsBundle_block_invoke_7;
  v26 = &__block_descriptor_40_e5_v8__0l;
  v27 = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, &block);
  }

  v9 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v10 = [v9 localizedStringForKey:@"MAPS_SUGG_ORDER_READY_AT" value:@"Ready at %1$@<unlocalized>" table:0];
  v11 = MapsSuggestionsNonNilString(v10, &stru_1F444C108);

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __MapsSuggestionsLocalizedOrderPickupReadyAt_block_invoke_2;
  aBlock[3] = &unk_1E81F83E0;
  v19 = v2;
  v20 = v5;
  v21 = v8;
  v22 = v11;
  v12 = v11;
  v13 = v8;
  v14 = v5;
  v15 = v2;
  v16 = _Block_copy(aBlock);
  v17 = MapsSuggestionsLocalizedOrderPickupReadyAt_s_formatter;
  MapsSuggestionsLocalizedOrderPickupReadyAt_s_formatter = v16;
}

id __MapsSuggestionsLocalizedOrderPickupReadyAt_block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7 = 32;
  v8 = 48;
  v9 = 56;
  if (a3 == 1)
  {
    v9 = 40;
  }

  if (a3 != 13)
  {
    v8 = v9;
  }

  if (a3)
  {
    v7 = v8;
  }

  v10 = [v6 initWithFormat:*(a1 + v7), v5];

  return v10;
}

id MapsSuggestionsLocalizedOrderPickupReadyUntil(void *a1)
{
  v1 = a1;
  if (MapsSuggestionsLocalizedOrderPickupReadyUntil_s_onceToken != -1)
  {
    MapsSuggestionsLocalizedOrderPickupReadyUntil_cold_1();
  }

  v2 = MapsSuggestionsLocalizedOrderPickupReadyUntil_s_formatter;
  v20 = NSStringFromMapsSuggestionsEventTime(v1);
  v3 = MapsSuggestionsTimeZone();
  v4 = v1;
  v5 = v3;
  v6 = v5;
  if (!v5)
  {
    v6 = MapsSuggestionsTimeZone();
  }

  v7 = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
  v8 = [v7 componentsInTimeZone:v6 fromDate:v4];

  v9 = [v8 hour];
  if (_isSystemIn24hours_onceToken != -1)
  {
    MapsSuggestionsLocalizedHotelCheckInString_cold_2();
  }

  v10 = _isSystemIn24hours_dateFormatter;
  v11 = [MEMORY[0x1E695DF00] date];
  v12 = [v10 stringFromDate:v11];

  v13 = [_isSystemIn24hours_dateFormatter AMSymbol];
  v14 = [v12 rangeOfString:v13];

  v15 = [_isSystemIn24hours_dateFormatter PMSymbol];
  v16 = [v12 rangeOfString:v15];

  if (v14 != 0x7FFFFFFFFFFFFFFFLL || v16 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = v9 - 12;
    if (v9 < 12)
    {
      v17 = v9;
    }

    if (v9 == 12)
    {
      v17 = 12;
    }

    if (v9)
    {
      v9 = v17;
    }

    else
    {
      v9 = 12;
    }
  }

  v18 = (*(v2 + 16))(v2, v20, v9);

  return v18;
}

void __MapsSuggestionsLocalizedOrderPickupReadyUntil_block_invoke()
{
  block = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = ___MapsSuggestionsBundle_block_invoke_7;
  v26 = &__block_descriptor_40_e5_v8__0l;
  v27 = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, &block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"MAPS_SUGG_ORDER_READY_UNTIL_0" value:@"Ready until %1$@<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);

  block = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = ___MapsSuggestionsBundle_block_invoke_7;
  v26 = &__block_descriptor_40_e5_v8__0l;
  v27 = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, &block);
  }

  v3 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v4 = [v3 localizedStringForKey:@"MAPS_SUGG_ORDER_READY_UNTIL_1" value:@"Ready until %1$@<unlocalized>" table:0];
  v5 = MapsSuggestionsNonNilString(v4, &stru_1F444C108);

  block = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = ___MapsSuggestionsBundle_block_invoke_7;
  v26 = &__block_descriptor_40_e5_v8__0l;
  v27 = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, &block);
  }

  v6 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v7 = [v6 localizedStringForKey:@"MAPS_SUGG_ORDER_READY_UNTIL_13" value:@"Ready until %1$@<unlocalized>" table:0];
  v8 = MapsSuggestionsNonNilString(v7, &stru_1F444C108);

  block = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = ___MapsSuggestionsBundle_block_invoke_7;
  v26 = &__block_descriptor_40_e5_v8__0l;
  v27 = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, &block);
  }

  v9 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v10 = [v9 localizedStringForKey:@"MAPS_SUGG_ORDER_READY_UNTIL" value:@"Ready until %1$@<unlocalized>" table:0];
  v11 = MapsSuggestionsNonNilString(v10, &stru_1F444C108);

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __MapsSuggestionsLocalizedOrderPickupReadyUntil_block_invoke_2;
  aBlock[3] = &unk_1E81F83E0;
  v19 = v2;
  v20 = v5;
  v21 = v8;
  v22 = v11;
  v12 = v11;
  v13 = v8;
  v14 = v5;
  v15 = v2;
  v16 = _Block_copy(aBlock);
  v17 = MapsSuggestionsLocalizedOrderPickupReadyUntil_s_formatter;
  MapsSuggestionsLocalizedOrderPickupReadyUntil_s_formatter = v16;
}

id __MapsSuggestionsLocalizedOrderPickupReadyUntil_block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7 = 32;
  v8 = 48;
  v9 = 56;
  if (a3 == 1)
  {
    v9 = 40;
  }

  if (a3 != 13)
  {
    v8 = v9;
  }

  if (a3)
  {
    v7 = v8;
  }

  v10 = [v6 initWithFormat:*(a1 + v7), v5];

  return v10;
}

id MapsSuggestionsLocalizedOrderPickupReady()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = [_MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7 localizedStringForKey:@"MAPS_SUGG_ORDER_READY" value:@"Ready<unlocalized>" table:0];
  v1 = MapsSuggestionsNonNilString(v0, &stru_1F444C108);

  return v1;
}

void ___isSystemIn24hours_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _isSystemIn24hours_dateFormatter;
  _isSystemIn24hours_dateFormatter = v0;

  [_isSystemIn24hours_dateFormatter setTimeStyle:0];
  [_isSystemIn24hours_dateFormatter setTimeStyle:1];
  v2 = _isSystemIn24hours_dateFormatter;
  v3 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v2 setLocale:v3];
}

void sub_1C52365F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ___dateFormatter_block_invoke_0()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _MergedGlobals_5;
  _MergedGlobals_5 = v0;

  [_MergedGlobals_5 setDateFormat:@"yyyy-MM-dd HH:mm:ss Z"];
  v2 = _MergedGlobals_5;
  v3 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"en_US"];
  [v2 setLocale:v3];

  v4 = _MergedGlobals_5;
  v5 = [MEMORY[0x1E695DFE8] systemTimeZone];
  [v4 setTimeZone:v5];
}

void sub_1C5238FC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak(&a19);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t isExtensionHidden(void *a1)
{
  v1 = appForBundleID(a1);
  v2 = [v1 isHidden];

  return v2;
}

uint64_t isExtensionLocked(void *a1)
{
  v1 = appForBundleID(a1);
  v2 = [v1 isLocked];

  return v2;
}

__CFString *NSStringFromMapsSuggestionsJSON(void *a1, unsigned int a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  if ([v3 conformsToProtocol:&unk_1F4472AC8])
  {
    v4 = [v3 nameForJSON];
    v15 = v4;
    v5 = MSg::jsonFor(v3);
    v16[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  }

  else
  {
    v6 = MSg::jsonFor(v3);
  }

  v12 = 0;
  v7 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v6 options:a2 error:&v12];
  v8 = v12;
  if (v8 || !v7)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v8;
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "Failed to encode to JSON: %@", buf, 0xCu);
    }

    v9 = &stru_1F444C108;
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v7 encoding:4];
  }

  return v9;
}

id MSg::jsonFor(MSg *this, NSDateInterval *a2)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v2 = this;
  v3 = v2;
  if (v2)
  {
    v12[0] = @"start";
    v4 = [(MSg *)v2 startDate];
    v6 = MSg::jsonFor(v4, v5);
    v12[1] = @"end";
    v13[0] = v6;
    v7 = [(MSg *)v3 endDate];
    v9 = MSg::jsonFor(v7, v8);
    v13[1] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  }

  else
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  return v10;
}

id MSg::jsonFor(MSg *this, NSAttributedString *a2)
{
  v2 = [(MSg *)this string];
  v3 = MSg::jsonFor(v2);

  return v3;
}

void ___ZN3MSg7jsonForEP7NSArrayIPU33objcproto22MapsSuggestionsAnyJSON11objc_objectE_block_invoke(uint64_t a1, void *a2)
{
  v3 = MSg::jsonFor(a2);
  [*(a1 + 32) setObject:? atIndexedSubscript:?];
}

id MapsSuggestionsTransportModesToNSData(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a1 requiringSecureCoding:1 error:a2];

  return v2;
}

id NSDataToMapsSuggestionsTransportModes(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = objc_alloc(MEMORY[0x1E695DFD8]);
  v5 = objc_opt_class();
  v6 = [v4 initWithObjects:{v5, objc_opt_class(), 0}];
  v7 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v6 fromData:v3 error:a2];

  return v7;
}

void MapsSuggestionsLogPredictedTransportModeForEntry(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (a1 == a2)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [v8 uniqueIdentifier];
      v11 = NSStringFromMapsSuggestionsEntryType([v8 type]);
      v12 = [v8 title];
      if (a1 >= 7)
      {
        v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
      }

      else
      {
        v13 = off_1E81F8568[a1];
        v14 = v13;
      }

      *buf = 138413570;
      v22 = v7;
      v23 = 2112;
      v24 = v10;
      v25 = 2112;
      v26 = v11;
      v27 = 2112;
      v28 = v12;
      v29 = 2112;
      v30 = v14;
      v31 = 2112;
      v32 = v13;
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_DEBUG, "PTM in %@ for entry with ID: %@, Type: %@, Title: %@, Predicted: %@, Actual: %@", buf, 0x3Eu);
    }
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v15 = [v8 uniqueIdentifier];
      v16 = NSStringFromMapsSuggestionsEntryType([v8 type]);
      v17 = [v8 title];
      if (a1 >= 7)
      {
        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
      }

      else
      {
        v18 = off_1E81F8568[a1];
      }

      v19 = v18;
      if (a2 >= 7)
      {
        v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a2];
      }

      else
      {
        v20 = off_1E81F8568[a2];
      }

      *buf = 138413570;
      v22 = v7;
      v23 = 2112;
      v24 = v15;
      v25 = 2112;
      v26 = v16;
      v27 = 2112;
      v28 = v17;
      v29 = 2112;
      v30 = v19;
      v31 = 2112;
      v32 = v20;
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "PTM difference in %@ for entry with ID: %@, Type: %@, Title: %@, Predicted: %@, Actual: %@", buf, 0x3Eu);
    }
  }
}

void MapsSuggestionsLogPredictedTransportModeForMapItem(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (a1 == a2)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [v8 _muid];
      v11 = [v8 name];
      if (a1 >= 7)
      {
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
      }

      else
      {
        v12 = off_1E81F8568[a1];
        v13 = v12;
      }

      *buf = 138413314;
      v20 = v7;
      v21 = 2048;
      v22 = v10;
      v23 = 2112;
      v24 = v11;
      v25 = 2112;
      v26 = v13;
      v27 = 2112;
      v28 = v12;
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_DEBUG, "PTM in %@ for MapItem with MUID: %llu, Title: %@, Predicted: %@, Actual: %@", buf, 0x34u);
    }
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = [v8 _muid];
      v15 = [v8 name];
      if (a1 >= 7)
      {
        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
      }

      else
      {
        v16 = off_1E81F8568[a1];
      }

      v17 = v16;
      if (a2 >= 7)
      {
        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a2];
      }

      else
      {
        v18 = off_1E81F8568[a2];
      }

      *buf = 138413314;
      v20 = v7;
      v21 = 2048;
      v22 = v14;
      v23 = 2112;
      v24 = v15;
      v25 = 2112;
      v26 = v17;
      v27 = 2112;
      v28 = v18;
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "PTM difference in %@ for MapItem with MUID: %llu, Title: %@, Predicted: %@, Actual: %@", buf, 0x34u);
    }
  }
}

void sub_1C523C938(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void MapsSuggestionsLogPredictedTransportMode(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a1 == a2)
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      if (a1 >= 7)
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
      }

      else
      {
        v7 = off_1E81F8568[a1];
        v8 = v7;
      }

      *buf = 138412802;
      v13 = v5;
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_DEBUG, "PTM in %@ Predicted: %@, Actual: %@", buf, 0x20u);
    }
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      if (a1 >= 7)
      {
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
      }

      else
      {
        v9 = off_1E81F8568[a1];
      }

      v10 = v9;
      if (a2 >= 7)
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a2];
      }

      else
      {
        v11 = off_1E81F8568[a2];
      }

      *buf = 138412802;
      v13 = v5;
      v14 = 2112;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "PTM difference in %@ Predicted: %@, Actual: %@", buf, 0x20u);
    }
  }
}

uint64_t MapsSuggestionsTransportModeForOriginAndDestinationMapItem(void *a1, CLLocationDegrees a2, CLLocationDegrees a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v30.latitude = a2;
  v30.longitude = a3;
  if (!CLLocationCoordinate2DIsValid(v30))
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsTransportMode.mm";
      *&buf[12] = 1024;
      *&buf[14] = 99;
      *&buf[18] = 2082;
      *&buf[20] = "GEOTransportType MapsSuggestionsTransportModeForOriginAndDestinationMapItem(CLLocationCoordinate2D, MapsSuggestionsMapItem *__strong _Nonnull)";
      v27 = 2082;
      v28 = "!CLLocationCoordinate2DIsValid(originCoordinate)";
      v13 = "At %{public}s:%d, %{public}s forbids: %{public}s. Need a valid origin coordinate";
LABEL_13:
      v14 = v8;
      v15 = 38;
LABEL_14:
      _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
    }

LABEL_15:
    v12 = 4;
    goto LABEL_16;
  }

  if (!v5)
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsTransportMode.mm";
      *&buf[12] = 1024;
      *&buf[14] = 100;
      *&buf[18] = 2082;
      *&buf[20] = "GEOTransportType MapsSuggestionsTransportModeForOriginAndDestinationMapItem(CLLocationCoordinate2D, MapsSuggestionsMapItem *__strong _Nonnull)";
      v27 = 2082;
      v28 = "nil == (destinationMapItem)";
      v13 = "At %{public}s:%d, %{public}s forbids: %{public}s. destinationMapItem should be non-nil";
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  if ((GEOConfigGetBOOL() & 1) == 0)
  {
    v8 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v13 = "MSg Transport Mode Prediction is not enabled. Returning GEOTransportType_UNKNOWN_TRANSPORT_TYPE.";
    v14 = v8;
    v15 = 2;
    goto LABEL_14;
  }

  v6 = dispatch_group_create();
  dispatch_group_enter(v6);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  *&buf[24] = 4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v7 = +[MapsSuggestionsPredictor sharedPredictor];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __MapsSuggestionsTransportModeForOriginAndDestinationMapItem_block_invoke;
  v18[3] = &unk_1E81F8548;
  v20 = &v22;
  v21 = buf;
  v8 = v6;
  v19 = v8;
  [v7 predictedTransportModeForDestinationMapItem:v5 originCoordinate:v18 handler:{a2, a3}];

  GEOConfigGetDouble();
  v10 = dispatch_time(0, (v9 * 1000000000.0));
  dispatch_group_wait(v8, v10);
  if ((v23[3] & 1) == 0)
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, "MapsSuggestionsPredictor did not call back in time. destinationd is likely not running.", v17, 2u);
    }
  }

  v12 = *(*&buf[8] + 24);

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(buf, 8);
LABEL_16:

  return v12;
}

void sub_1C523CFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);

  _Unwind_Resume(a1);
}

void __MapsSuggestionsTransportModeForOriginAndDestinationMapItem_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  if (v6 || ![v5 count])
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = v6;
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "Could not predict transport mode. Error: %@", &v15, 0xCu);
    }

    goto LABEL_5;
  }

  v8 = [v5 objectAtIndexedSubscript:0];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v5 objectAtIndexedSubscript:0];
      v15 = 138412290;
      v16 = objc_opt_class();
      v14 = v16;
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, "Unexpected class type for predicted transport mode. Error: %@", &v15, 0xCu);
    }

LABEL_5:
    *(*(*(a1 + 48) + 8) + 24) = 4;
    goto LABEL_6;
  }

  v10 = [v5 objectAtIndexedSubscript:0];
  *(*(*(a1 + 48) + 8) + 24) = [v10 intValue];

  if (*(*(*(a1 + 48) + 8) + 24) == 4)
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, "Could not set predicted transport mode. We predicted GEOTransportType_UNKNOWN_TRANSPORT_TYPE.", &v15, 2u);
    }
  }

LABEL_6:
  dispatch_group_leave(*(a1 + 32));
}

uint64_t MapsSuggestionsTransportModeForOriginAndDestination(CLLocationDegrees a1, CLLocationDegrees a2, CLLocationDegrees a3, CLLocationDegrees a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!CLLocationCoordinate2DIsValid(*&a1))
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 136446978;
      v14 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsTransportMode.mm";
      v15 = 1024;
      v16 = 153;
      v17 = 2082;
      v18 = "GEOTransportType MapsSuggestionsTransportModeForOriginAndDestination(CLLocationCoordinate2D, CLLocationCoordinate2D)";
      v19 = 2082;
      v20 = "!CLLocationCoordinate2DIsValid(origin)";
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Need a valid origin coordinate", &v13, 0x26u);
    }

    goto LABEL_9;
  }

  v22.latitude = a3;
  v22.longitude = a4;
  if (!CLLocationCoordinate2DIsValid(v22))
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 136446978;
      v14 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsTransportMode.mm";
      v15 = 1024;
      v16 = 154;
      v17 = 2082;
      v18 = "GEOTransportType MapsSuggestionsTransportModeForOriginAndDestination(CLLocationCoordinate2D, CLLocationCoordinate2D)";
      v19 = 2082;
      v20 = "!CLLocationCoordinate2DIsValid(destination)";
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Need a valid destination coordinate", &v13, 0x26u);
    }

LABEL_9:

    return 4;
  }

  v8 = [objc_alloc(MEMORY[0x1E69A2348]) initWithLatitude:a3 longitude:a4];
  v9 = [MEMORY[0x1E69A21E0] mapItemStorageForPlace:v8];
  v10 = MapsSuggestionsTransportModeForOriginAndDestinationMapItem(v9, a1, a2);

  return v10;
}

id MapsSuggestionsLocalizedStringFromGEOTransportType(int a1)
{
  v1 = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        block = MEMORY[0x1E69E9820];
        v6 = 3221225472;
        v7 = ___ZL22_MapsSuggestionsBundlePKc_block_invoke_0;
        v8 = &__block_descriptor_40_e5_v8__0l;
        v9 = "TransportMode";
        if (_MapsSuggestionsBundle(char const*)::s_msgBundleToken != -1)
        {
          dispatch_once(&_MapsSuggestionsBundle(char const*)::s_msgBundleToken, &block);
        }

        v2 = [_MapsSuggestionsBundle(char const*)::s_bundleWithMapsSuggestionsIdentifier localizedStringForKey:@"MSg_Proactive_tray_bicycling" value:@"bike ride<unlocalized>" table:0];
        v3 = MapsSuggestionsNonNilString(v2, &stru_1F444C108);
        break;
      case 5:
        block = MEMORY[0x1E69E9820];
        v6 = 3221225472;
        v7 = ___ZL22_MapsSuggestionsBundlePKc_block_invoke_0;
        v8 = &__block_descriptor_40_e5_v8__0l;
        v9 = "TransportMode";
        if (_MapsSuggestionsBundle(char const*)::s_msgBundleToken != -1)
        {
          dispatch_once(&_MapsSuggestionsBundle(char const*)::s_msgBundleToken, &block);
        }

        v2 = [_MapsSuggestionsBundle(char const*)::s_bundleWithMapsSuggestionsIdentifier localizedStringForKey:@"MSg_Proactive_tray_ferry_ride" value:@"ferry ride<unlocalized>" table:0];
        v3 = MapsSuggestionsNonNilString(v2, &stru_1F444C108);
        break;
      case 6:
        block = MEMORY[0x1E69E9820];
        v6 = 3221225472;
        v7 = ___ZL22_MapsSuggestionsBundlePKc_block_invoke_0;
        v8 = &__block_descriptor_40_e5_v8__0l;
        v9 = "TransportMode";
        if (_MapsSuggestionsBundle(char const*)::s_msgBundleToken != -1)
        {
          dispatch_once(&_MapsSuggestionsBundle(char const*)::s_msgBundleToken, &block);
        }

        v2 = [_MapsSuggestionsBundle(char const*)::s_bundleWithMapsSuggestionsIdentifier localizedStringForKey:@"MSg_Proactive_tray_rideshare" value:@"rideshare<unlocalized>" table:0];
        v3 = MapsSuggestionsNonNilString(v2, &stru_1F444C108);
        break;
      default:
        goto LABEL_27;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      block = MEMORY[0x1E69E9820];
      v6 = 3221225472;
      v7 = ___ZL22_MapsSuggestionsBundlePKc_block_invoke_0;
      v8 = &__block_descriptor_40_e5_v8__0l;
      v9 = "TransportMode";
      if (_MapsSuggestionsBundle(char const*)::s_msgBundleToken != -1)
      {
        dispatch_once(&_MapsSuggestionsBundle(char const*)::s_msgBundleToken, &block);
      }

      v2 = [_MapsSuggestionsBundle(char const*)::s_bundleWithMapsSuggestionsIdentifier localizedStringForKey:@"MSg_Proactive_tray_transit" value:@"by transit<unlocalized>" table:0];
      v3 = MapsSuggestionsNonNilString(v2, &stru_1F444C108);
    }

    else
    {
      if (a1 != 2)
      {
        goto LABEL_27;
      }

      block = MEMORY[0x1E69E9820];
      v6 = 3221225472;
      v7 = ___ZL22_MapsSuggestionsBundlePKc_block_invoke_0;
      v8 = &__block_descriptor_40_e5_v8__0l;
      v9 = "TransportMode";
      if (_MapsSuggestionsBundle(char const*)::s_msgBundleToken != -1)
      {
        dispatch_once(&_MapsSuggestionsBundle(char const*)::s_msgBundleToken, &block);
      }

      v2 = [_MapsSuggestionsBundle(char const*)::s_bundleWithMapsSuggestionsIdentifier localizedStringForKey:@"MSg_Proactive_tray_walk" value:@"walk<unlocalized>" table:0];
      v3 = MapsSuggestionsNonNilString(v2, &stru_1F444C108);
    }
  }

  else
  {
    block = MEMORY[0x1E69E9820];
    v6 = 3221225472;
    v7 = ___ZL22_MapsSuggestionsBundlePKc_block_invoke_0;
    v8 = &__block_descriptor_40_e5_v8__0l;
    v9 = "TransportMode";
    if (_MapsSuggestionsBundle(char const*)::s_msgBundleToken != -1)
    {
      dispatch_once(&_MapsSuggestionsBundle(char const*)::s_msgBundleToken, &block);
    }

    v2 = [_MapsSuggestionsBundle(char const*)::s_bundleWithMapsSuggestionsIdentifier localizedStringForKey:@"MSg_Proactive_tray_drive" value:@"drive<unlocalized>" table:0];
    v3 = MapsSuggestionsNonNilString(v2, &stru_1F444C108);
  }

  v1 = v3;

LABEL_27:

  return v1;
}

uint64_t GEOTransportTypeFromGEOTransportTypePreference(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return dword_1C52A8E30[a1 - 1];
  }
}

uint64_t GEOTransportTypePreferenceFromGEOTransportType(int a1)
{
  if ((a1 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return qword_1C52A8E40[a1 - 1];
  }
}

uint64_t GEOTransportModeFromGEOTransportType(int a1)
{
  if ((a1 - 1) > 5)
  {
    return 1;
  }

  else
  {
    return dword_1C52A8E70[a1 - 1];
  }
}

uint64_t GEOTransportModeForTransportTypePreference(unint64_t a1)
{
  if (a1 < 5)
  {
    return (a1 + 1);
  }

  else
  {
    return 0;
  }
}

void ___ZL22_MapsSuggestionsBundlePKc_block_invoke_0()
{
  v11 = *MEMORY[0x1E69E9840];
  if (!_MapsSuggestionsBundle(char const*)::s_bundleWithMapsSuggestionsIdentifier)
  {
    v0 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MapsSuggestions"];
    v1 = _MapsSuggestionsBundle(char const*)::s_bundleWithMapsSuggestionsIdentifier;
    _MapsSuggestionsBundle(char const*)::s_bundleWithMapsSuggestionsIdentifier = v0;

    if (!_MapsSuggestionsBundle(char const*)::s_bundleWithMapsSuggestionsIdentifier)
    {
      v2 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v3 = 136446978;
        v4 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDefines.h";
        v5 = 1024;
        v6 = 341;
        v7 = 2082;
        v8 = "NSBundle * _Nonnull _MapsSuggestionsBundle(const char * _Nonnull)_block_invoke";
        v9 = 2082;
        v10 = "nil == s_bundleWithMapsSuggestionsIdentifier";
        _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires bundleWithIdentifier:@com.apple.MapsSuggestions", &v3, 0x26u);
      }
    }
  }
}

BOOL MapsSuggestionsSignalTypeEnumerate(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = 0;
    do
    {
      v3 = v1[2](v1, v2);
      if (v2++ >= 0x27)
      {
        v5 = 0;
      }

      else
      {
        v5 = v3;
      }
    }

    while ((v5 & 1) != 0);
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446978;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSignal.mm";
      v10 = 1024;
      v11 = 70;
      v12 = 2082;
      v13 = "BOOL MapsSuggestionsSignalTypeEnumerate(BOOL (^__strong _Nonnull)(MapsSuggestionsSignalType))";
      v14 = 2082;
      v15 = "nil == (block)";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a block", &v8, 0x26u);
    }
  }

  return v1 != 0;
}

__CFString *NSStringFromMapsSuggestionsSignalType(unint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1 < 0x28)
  {
    return off_1E8203A50[a1];
  }

  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 136446978;
    v4 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSignal.mm";
    v5 = 1024;
    v6 = 126;
    v7 = 2082;
    v8 = "NSString *NSStringFromMapsSuggestionsSignalType(MapsSuggestionsSignalType)";
    v9 = 2082;
    v10 = "YES";
    _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Detected an unsupported MapsSuggestionsSignalType!", &v3, 0x26u);
  }

  return @"UnsupportedType";
}

uint64_t MapsSuggestionsSignalTypeFromNSString(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v8 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSignal.mm";
      v9 = 1024;
      v10 = 141;
      v11 = 2082;
      v12 = "MapsSuggestionsSignalType MapsSuggestionsSignalTypeFromNSString(NSString *__strong _Nonnull)";
      v13 = 2082;
      v14 = "nil == (str)";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a key string", buf, 0x26u);
    }

LABEL_10:

LABEL_11:
    v3 = 0;
    goto LABEL_12;
  }

  if (![v1 length] || (objc_msgSend(v2, "isEqualToString:", @"Unknown") & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"MapsSuggestionsSignalTypeUnknown") & 1) != 0)
  {
    goto LABEL_11;
  }

  if (([v2 isEqualToString:@"Temperature"] & 1) == 0 && (objc_msgSend(v2, "isEqualToString:", @"MapsSuggestionsSignalTypeTemperature") & 1) == 0)
  {
    if ([v2 isEqualToString:@"ChanceOfPrecipitation"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"MapsSuggestionsSignalTypeChanceOfPrecipitation"))
    {
      v3 = 7;
      goto LABEL_12;
    }

    if ([v2 isEqualToString:@"ChanceOfRain"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"MapsSuggestionsSignalTypeChanceOfRain"))
    {
      v3 = 8;
      goto LABEL_12;
    }

    if ([v2 isEqualToString:@"ChanceOfSnow"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"MapsSuggestionsSignalTypeChanceOfSnow"))
    {
      v3 = 9;
      goto LABEL_12;
    }

    if ([v2 isEqualToString:@"CurrentTimeOfDay"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"MapsSuggestionsSignalTypeCurrentTimeOfDay"))
    {
      v3 = 10;
      goto LABEL_12;
    }

    if ([v2 isEqualToString:@"CurrentDayOfWeek"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"MapsSuggestionsSignalTypeCurrentDayOfWeek"))
    {
      v3 = 11;
      goto LABEL_12;
    }

    if ([v2 isEqualToString:@"DistanceFromHereToDestination"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"MapsSuggestionsSignalTypeDistanceFromHereToDestination"))
    {
      v3 = 13;
      goto LABEL_12;
    }

    if ([v2 isEqualToString:@"DistanceFromHereToOrigin"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"MapsSuggestionsSignalTypeDistanceFromHereToOrigin"))
    {
      v3 = 14;
      goto LABEL_12;
    }

    if ([v2 isEqualToString:@"DistanceFromOriginToDestination"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"MapsSuggestionsSignalTypeDistanceFromOriginToDestination"))
    {
      v3 = 15;
      goto LABEL_12;
    }

    if ([v2 isEqualToString:@"DistanceFromHereToWork"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"MapsSuggestionsSignalTypeDistanceFromHereToWork"))
    {
      v3 = 17;
      goto LABEL_12;
    }

    if ([v2 isEqualToString:@"DistanceFromHereToHome"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"MapsSuggestionsSignalTypeDistanceFromHereToHome"))
    {
      v3 = 16;
      goto LABEL_12;
    }

    if ([v2 isEqualToString:@"DistanceFromHereToParkedCar"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"MapsSuggestionsSignalTypeDistanceFromHereToParkedCar"))
    {
      v3 = 18;
      goto LABEL_12;
    }

    if ([v2 isEqualToString:@"SecondsUntilStart"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"MapsSuggestionsSignalTypeSecondsUntilStart"))
    {
      v3 = 2;
      goto LABEL_12;
    }

    if ([v2 isEqualToString:@"SecondsUntilEnd"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"MapsSuggestionsSignalTypeSecondsUntilEnd"))
    {
      v3 = 3;
      goto LABEL_12;
    }

    if ([v2 isEqualToString:@"StartTime"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"MapsSuggestionsSignalTypeStartTime"))
    {
      v3 = 4;
      goto LABEL_12;
    }

    if ([v2 isEqualToString:@"EndTime"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"MapsSuggestionsSignalTypeEndTime"))
    {
      v3 = 5;
      goto LABEL_12;
    }

    if ([v2 isEqualToString:@"EntryType"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"MapsSuggestionsSignalTypeEntryType"))
    {
      v3 = 1;
      goto LABEL_12;
    }

    if ([v2 isEqualToString:@"UserPreferenceForTransportType"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"MapsSuggestionsSignalTypeUserPreferenceForTransportType"))
    {
      v3 = 19;
      goto LABEL_12;
    }

    if ([v2 isEqualToString:@"CarPlayConnected"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"MapsSuggestionsSignalTypeCarPlayConnected"))
    {
      v3 = 20;
      goto LABEL_12;
    }

    if ([v2 isEqualToString:@"MapType"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"MapsSuggestionsSignalTypeMapType"))
    {
      v3 = 21;
      goto LABEL_12;
    }

    if ([v2 isEqualToString:@"TransitCurrentlyPossible"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"MapsSuggestionsSignalTypeTransitCurrentlyPossible"))
    {
      v3 = 22;
      goto LABEL_12;
    }

    if ([v2 isEqualToString:@"RidesharingAppsInstalled"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"MapsSuggestionsSignalTypeRidesharingAppsInstalled"))
    {
      v3 = 24;
      goto LABEL_12;
    }

    if ([v2 isEqualToString:@"TimeSinceMapsBackgrounded"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"MapsSuggestionsSignalTypeTimeSinceMapsBackgrounded"))
    {
      v3 = 23;
      goto LABEL_12;
    }

    if ([v2 isEqualToString:@"TouristBit"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"MapsSuggestionsSignalTypeTouristBit"))
    {
      v3 = 12;
      goto LABEL_12;
    }

    if ([v2 isEqualToString:@"IsRaining"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"MapsSuggestionsSignalTypeIsRaining"))
    {
      v3 = 26;
      goto LABEL_12;
    }

    if ([v2 isEqualToString:@"IsSnowing"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"MapsSuggestionsSignalTypeIsSnowing"))
    {
      v3 = 25;
      goto LABEL_12;
    }

    if ([v2 isEqualToString:@"WeatherCondition"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"MapsSuggestionsSignalTypeWeatherCondition"))
    {
      v3 = 27;
      goto LABEL_12;
    }

    if ([v2 isEqualToString:@"HasTransitPass"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"MapsSuggestionsSignalTypeHasTransitPass"))
    {
      v3 = 28;
      goto LABEL_12;
    }

    if ([v2 isEqualToString:@"IsTransitAvailableHere"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"MapsSuggestionsSignalTypeIsTransitAvailableHere"))
    {
      v3 = 33;
      goto LABEL_12;
    }

    if ([v2 isEqualToString:@"HasFavoriteTransitPOI"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"MapsSuggestionsSignalTypeHasFavoriteTransitPOI"))
    {
      v3 = 29;
      goto LABEL_12;
    }

    if ([v2 isEqualToString:@"HasFavoriteTransitLine"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"MapsSuggestionsSignalTypeHasFavoriteTransitLine"))
    {
      v3 = 30;
      goto LABEL_12;
    }

    if ([v2 isEqualToString:@"HasRecentTransitRoute"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"MapsSuggestionsSignalTypeHasRecentTransitRoute"))
    {
      v3 = 31;
      goto LABEL_12;
    }

    if ([v2 isEqualToString:@"TimeSinceLastTransitRoute"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"MapsSuggestionsSignalTypeTimeSinceLastTransitRoute"))
    {
      v3 = 32;
      goto LABEL_12;
    }

    if ([v2 isEqualToString:@"UserHasExpressPaymentCard"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"MapsSuggestionsSignalTypeUserHasExpressPaymentCard"))
    {
      v3 = 34;
      goto LABEL_12;
    }

    if ([v2 isEqualToString:@"UserHasPaymentCard"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"MapsSuggestionsSignalTypeUserHasPaymentCard"))
    {
      v3 = 35;
      goto LABEL_12;
    }

    if ([v2 isEqualToString:@"UserHasAnUpcomingTrip"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"MapsSuggestionsSignalTypeUserHasAnUpcomingTrip"))
    {
      v3 = 36;
      goto LABEL_12;
    }

    if ([v2 isEqualToString:@"UserIsCurrentlyInATrip"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"MapsSuggestionsSignalTypeUserIsCurrentlyInATrip"))
    {
      v3 = 37;
      goto LABEL_12;
    }

    if ([v2 isEqualToString:@"AirQualityIndex"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"MapsSuggestionsSignalTypeAirQualityIndex"))
    {
      v3 = 38;
      goto LABEL_12;
    }

    if ([v2 isEqualToString:@"IsVehicleBluetoothConnected"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"MapsSuggestionsSignalTypeIsVehicleBluetoothConnected"))
    {
      v3 = 39;
      goto LABEL_12;
    }

    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown MapsSuggestionsSignalType %@", v2];
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v8 = v4;
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    goto LABEL_10;
  }

  v3 = 6;
LABEL_12:

  return v3;
}

void sub_1C52413E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C52417C8(_Unwind_Exception *a1)
{
  MEMORY[0x1C6943A40](v2, 0x1012C405C87E9CELL);

  _Unwind_Resume(a1);
}

void MSg::NotificationSender::notify(MSg::NotificationSender *this, NSString *a2)
{
  v4 = a2;
  v3 = MapsSuggestionsIPCPayloadForNSString(v4);
  MSg::NotificationSender::notify(this, v3);
}

void sub_1C52419CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  MEMORY[0x1C6943A40](v17, 0x1092C40D553986CLL);

  _Unwind_Resume(a1);
}

MSg::NotificationReceiver *std::unique_ptr<MSg::NotificationReceiver>::reset[abi:ne200100](MSg::NotificationReceiver **a1, MSg::NotificationReceiver *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    MSg::NotificationReceiver::~NotificationReceiver(result);

    JUMPOUT(0x1C6943A40);
  }

  return result;
}

void sub_1C5241FC0(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1C5242130(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  MEMORY[0x1C6943A40](v17, 0x1092C40D553986CLL);

  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void std::default_delete<MSg::NotificationSender>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    JUMPOUT(0x1C6943A40);
  }
}

uint64_t MSg::NotificationReceiver::NotificationReceiver(uint64_t a1, __int128 *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = v7;
  *a1 = v9;
  v10 = (a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v11 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *v10 = v11;
  }

  if (*(a1 + 31) < 0)
  {
    v10 = *v10;
  }

  v12 = *a1;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = ___ZN3MSg20NotificationReceiverC2ERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFvNS_12NotificationEE_block_invoke;
  v15[3] = &unk_1E8203BE8;
  v17 = a1;
  v13 = v8;
  v16 = v13;
  notify_register_dispatch(v10, (a1 + 32), v12, v15);

  return a1;
}

void MSg::NotificationReceiver::~NotificationReceiver(MSg::NotificationReceiver *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    notify_cancel(v2);
    *(this + 8) = 0;
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void sub_1C5242A5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_sync_exit(v14);
  _Unwind_Resume(a1);
}

void MSg::Queue::async<MapsSuggestionsPortraitRelevanceScoreProvider>(NSObject **a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = v5;
    v8 = *a1;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = ___ZNK3MSg5Queue5asyncI45MapsSuggestionsPortraitRelevanceScoreProviderEEvPT_U13block_pointerFvS4_E_block_invoke;
    v10[3] = &unk_1E81F5528;
    v11 = v7;
    v12 = v6;
    dispatch_async(v8, v10);

    v9 = v11;
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v14 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsQueue.hpp";
      v15 = 1024;
      v16 = 177;
      v17 = 2082;
      v18 = "void MSg::Queue::async(S *, void (^__strong)(S *)) const [S = MapsSuggestionsPortraitRelevanceScoreProvider]";
      v19 = 2082;
      v20 = "nil == (callerSelf)";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires self", buf, 0x26u);
    }
  }
}

void ___ZNK3MSg5Queue5asyncI45MapsSuggestionsPortraitRelevanceScoreProviderEEvPT_U13block_pointerFvS4_E_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "self went away in MSg::Queue::async()", v4, 2u);
    }
  }
}

uint64_t std::vector<MapsSuggestionsEntryType>::__init_with_size[abi:ne200100]<MapsSuggestionsEntryType*,MapsSuggestionsEntryType*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MapsSuggestionsEntryType>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C5248740(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C5248AF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v17 + 40));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id MapsSuggestionsFindMy.__allocating_init(fromResourceDepot:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  result = [a1 oneFindMyConnector];
  if (result)
  {
    *&v3[OBJC_IVAR____TtC15MapsSuggestions21MapsSuggestionsFindMy__connector] = result;
    v6.receiver = v3;
    v6.super_class = v1;
    v5 = objc_msgSendSuper2(&v6, sel_init);
    swift_unknownObjectRelease();
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id MapsSuggestionsFindMy.init(fromResourceDepot:)(void *a1)
{
  result = [a1 oneFindMyConnector];
  if (result)
  {
    *&v1[OBJC_IVAR____TtC15MapsSuggestions21MapsSuggestionsFindMy__connector] = result;
    v4.receiver = v1;
    v4.super_class = type metadata accessor for MapsSuggestionsFindMy();
    v3 = objc_msgSendSuper2(&v4, sel_init);
    swift_unknownObjectRelease();
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C524CFF0(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C524D010, 0, 0);
}

uint64_t sub_1C524D010()
{
  v1 = *(v0[21] + OBJC_IVAR____TtC15MapsSuggestions21MapsSuggestionsFindMy__connector);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1C524D138;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC155DE8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1C524D5EC;
  v0[13] = &block_descriptor;
  v0[14] = v2;
  [v1 listOfFriendsWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C524D138()
{

  return MEMORY[0x1EEE6DFA0](sub_1C524D218, 0, 0);
}

uint64_t sub_1C524D218()
{
  v36 = v0;
  v1 = v0[18];
  if (qword_1EC155DB8 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v2 = sub_1C529D64C();
    __swift_project_value_buffer(v2, qword_1EC156ED8);

    v3 = sub_1C529D62C();
    v4 = sub_1C529D87C();

    v34 = v1;
    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[20];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v35 = v7;
      *v6 = 136315394;
      v8 = MEMORY[0x1E69E6158];
      v9 = MEMORY[0x1C6943290](v5, MEMORY[0x1E69E6158]);
      v11 = sub_1C524E7F4(v9, v10, &v35);

      *(v6 + 4) = v11;
      *(v6 + 12) = 2080;
      v12 = MEMORY[0x1C6943290](v34, v8);
      v14 = sub_1C524E7F4(v12, v13, &v35);
      v1 = v34;

      *(v6 + 14) = v14;
      _os_log_impl(&dword_1C5126000, v3, v4, "Checking %s against friends:%s", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C69445C0](v7, -1, -1);
      MEMORY[0x1C69445C0](v6, -1, -1);
    }

    v15 = v0[20];
    v31 = *(v15 + 16);
    if (!v31)
    {
      break;
    }

    v16 = 0;
    v17 = *(v1 + 16);
    v32 = v15 + 32;
    v30 = (v1 + 40);
    while (1)
    {
      v33 = v16;
      v18 = (v32 + 16 * v16);
      v19 = *v18;
      v20 = v18[1];

      if (v17)
      {
        break;
      }

LABEL_6:
      v16 = v33 + 1;

      if (v33 + 1 == v31)
      {
        goto LABEL_14;
      }
    }

    v21 = 0;
    v22 = v30;
    while (v21 < *(v1 + 16))
    {
      v24 = *(v22 - 1);
      v23 = *v22;
      v0[10] = v24;
      v0[11] = v23;
      v0[18] = v19;
      v0[19] = v20;
      sub_1C524E7A0();

      if (sub_1C529D9AC())
      {

        goto LABEL_17;
      }

      ++v21;
      v22 += 2;
      v1 = v34;
      if (v17 == v21)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_21:
    swift_once();
  }

LABEL_14:

  v25 = sub_1C529D62C();
  v26 = sub_1C529D87C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_1C5126000, v25, v26, "Verification failed", v27, 2u);
    MEMORY[0x1C69445C0](v27, -1, -1);
  }

  v24 = 0;
  v23 = 0;
LABEL_17:
  v28 = v0[1];

  return v28(v24, v23);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C524D5EC(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  **(*(v1 + 64) + 40) = sub_1C529D7DC();

  return MEMORY[0x1EEE6DED8](v1);
}

uint64_t sub_1C524D65C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1C524D88C(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_1C529D7DC();
  v3[4] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1C524D960;

  return sub_1C524CFF0(v5);
}

uint64_t sub_1C524D960(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (a2)
  {
    v7 = sub_1C529D71C();
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v4 + 24);
  (v8)[2](v8, v7);

  _Block_release(v8);
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_1C524DAE8(uint64_t a1)
{
  *(v2 + 216) = a1;
  *(v2 + 224) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C524DB08, 0, 0);
}

uint64_t sub_1C524DB08()
{
  v32 = v0;
  v1 = [*(v0 + 216) stringForKey_];
  *(v0 + 232) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = v0 + 208;
    v4 = *(v0 + 216);
    v5 = sub_1C529D72C();
    v7 = v6;
    if (isLikelyMeetup(v4))
    {
      if (qword_1EC155DB8 != -1)
      {
        swift_once();
      }

      v8 = sub_1C529D64C();
      __swift_project_value_buffer(v8, qword_1EC156ED8);

      v9 = sub_1C529D62C();
      v10 = sub_1C529D87C();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v31 = v12;
        *v11 = 136315138;
        v13 = sub_1C524E7F4(v5, v7, &v31);

        *(v11 + 4) = v13;
        _os_log_impl(&dword_1C5126000, v9, v10, "About the fetch location() for %s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v12);
        MEMORY[0x1C69445C0](v12, -1, -1);
        MEMORY[0x1C69445C0](v11, -1, -1);
      }

      else
      {
      }

      v26 = *(*(v0 + 224) + OBJC_IVAR____TtC15MapsSuggestions21MapsSuggestionsFindMy__connector);
      v27 = v0 + 80;
      *(v0 + 80) = v0;
      *(v0 + 120) = v3;
      *(v0 + 88) = sub_1C524E08C;
      v28 = swift_continuation_init();
      *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC155DF8);
      *(v0 + 144) = MEMORY[0x1E69E9820];
      *(v0 + 152) = 1107296256;
      *(v0 + 160) = sub_1C524E2B4;
      *(v0 + 168) = &block_descriptor_94;
      *(v0 + 176) = v28;
      [v26 locationFor:v2 completionHandler:v0 + 144];
    }

    else
    {
      if (qword_1EC155DB8 != -1)
      {
        swift_once();
      }

      v20 = sub_1C529D64C();
      __swift_project_value_buffer(v20, qword_1EC156ED8);

      v21 = sub_1C529D62C();
      v22 = sub_1C529D87C();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v31 = v24;
        *v23 = 136315138;
        v25 = sub_1C524E7F4(v5, v7, &v31);

        *(v23 + 4) = v25;
        _os_log_impl(&dword_1C5126000, v21, v22, "About the fetch latestLocation() for %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
        MEMORY[0x1C69445C0](v24, -1, -1);
        MEMORY[0x1C69445C0](v23, -1, -1);
      }

      else
      {
      }

      v29 = *(*(v0 + 224) + OBJC_IVAR____TtC15MapsSuggestions21MapsSuggestionsFindMy__connector);
      v27 = v0 + 16;
      *(v0 + 16) = v0;
      *(v0 + 56) = v3;
      *(v0 + 24) = sub_1C524E1D4;
      v30 = swift_continuation_init();
      *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC155DF8);
      *(v0 + 144) = MEMORY[0x1E69E9820];
      *(v0 + 152) = 1107296256;
      *(v0 + 160) = sub_1C524E2B4;
      *(v0 + 168) = &block_descriptor_91;
      *(v0 + 176) = v30;
      [v29 latestLocationFor:v2 completionHandler:v0 + 144];
    }

    return MEMORY[0x1EEE6DEC8](v27);
  }

  else
  {
    if (qword_1EC155DB8 != -1)
    {
      swift_once();
    }

    v14 = sub_1C529D64C();
    __swift_project_value_buffer(v14, qword_1EC156ED8);
    v15 = sub_1C529D62C();
    v16 = sub_1C529D89C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1C5126000, v15, v16, "identifier is nil. This cannot be happening. Returning nil as location.", v17, 2u);
      MEMORY[0x1C69445C0](v17, -1, -1);
    }

    v18 = *(v0 + 8);

    return v18(0);
  }
}

uint64_t sub_1C524E08C()
{

  return MEMORY[0x1EEE6DFA0](sub_1C524E16C, 0, 0);
}

uint64_t sub_1C524E16C()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1C524E1D4()
{

  return MEMORY[0x1EEE6DFA0](sub_1C524F810, 0, 0);
}

uint64_t sub_1C524E2B4(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x1EEE6DED8](v4);
}

uint64_t sub_1C524E4A0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1C524E564;

  return sub_1C524DAE8(v6);
}

uint64_t sub_1C524E564(void *a1)
{
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v8 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v6 = *(v8 + 8);

  return v6();
}

id MapsSuggestionsFindMy.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MapsSuggestionsFindMy.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSuggestionsFindMy();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C524E7A0()
{
  result = qword_1EC155DF0;
  if (!qword_1EC155DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC155DF0);
  }

  return result;
}

unint64_t sub_1C524E7F4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1C524E8C0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1C524D65C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1C524E8C0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1C524E9CC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1C529DA7C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1C524E9CC(uint64_t a1, unint64_t a2)
{
  v3 = sub_1C524EA18(a1, a2);
  sub_1C524EB48(&unk_1F4449E90);
  return v3;
}

uint64_t sub_1C524EA18(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1C524EC34(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1C529DA7C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1C529D78C();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1C524EC34(v10, 0);
        result = sub_1C529DA2C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1C524EB48(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1C524ECA8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1C524EC34(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC155E00);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1C524ECA8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC155E00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t dispatch thunk of MapsSuggestionsFindMy.verifyFriendship(with:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C524EEF8;

  return v7(a1);
}

uint64_t sub_1C524EEF8(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t dispatch thunk of MapsSuggestionsFindMy.location(of:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x68);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C524F12C;

  return v7(a1);
}

uint64_t sub_1C524F12C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1C524F228()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1C524F814;

  return sub_1C524E4A0(v2, v3, v4);
}

uint64_t sub_1C524F2DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C524F814;

  return sub_1C5264B30(a1, v4, v5, v6);
}

uint64_t objectdestroyTm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C524F3F0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1C524F4A4;

  return sub_1C524D88C(v2, v3, v4);
}

uint64_t sub_1C524F4A4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C524F598()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1C524F814;

  return sub_1C5264A48(v2, v3, v4);
}

uint64_t objectdestroy_101Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1C524F6F0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C524F710(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1C524F758(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C524F778(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_1C524F7B4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

id MapsSuggestionsBluetoothCondition.__allocating_init(name:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_1C529D71C();

  v3 = [v1 initWithName_];

  return v3;
}

char *MapsSuggestionsBluetoothCondition.init(name:)(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v32 = a2;
  v30 = sub_1C529D8EC();
  v3 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C529D8CC();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1C529D69C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  *&v2[OBJC_IVAR____TtC15MapsSuggestions33MapsSuggestionsBluetoothCondition__notificationTokenConnect] = 0;
  *&v2[OBJC_IVAR____TtC15MapsSuggestions33MapsSuggestionsBluetoothCondition__notificationTokenDisconnect] = 0;
  *&v2[OBJC_IVAR____TtC15MapsSuggestions33MapsSuggestionsBluetoothCondition__notificationTokenExit] = 0;
  v2[OBJC_IVAR____TtC15MapsSuggestions33MapsSuggestionsBluetoothCondition__connected] = 0;
  v29 = OBJC_IVAR____TtC15MapsSuggestions33MapsSuggestionsBluetoothCondition__queue;
  sub_1C525006C();
  sub_1C529D68C();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1C52500B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1562F0);
  sub_1C5250110();
  sub_1C529D9CC();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8090], v30);
  *&v2[v29] = sub_1C529D92C();
  v8 = sub_1C529D71C();

  v9 = type metadata accessor for MapsSuggestionsBluetoothCondition();
  v39.receiver = v2;
  v39.super_class = v9;
  v10 = objc_msgSendSuper2(&v39, sel_initWithName_, v8);

  v11 = OBJC_IVAR____TtC15MapsSuggestions33MapsSuggestionsBluetoothCondition__queue;
  v12 = *&v10[OBJC_IVAR____TtC15MapsSuggestions33MapsSuggestionsBluetoothCondition__queue];
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = sub_1C52501E0;
  v38 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = sub_1C5250208;
  v36 = &block_descriptor_0;
  v14 = _Block_copy(&aBlock);
  v15 = v10;
  v16 = v12;

  v17 = OBJC_IVAR____TtC15MapsSuggestions33MapsSuggestionsBluetoothCondition__notificationTokenConnect;
  swift_beginAccess();
  notify_register_dispatch("com.apple.locationd.vehicle.connected", &v15[v17], v16, v14);
  swift_endAccess();
  _Block_release(v14);

  v18 = *&v10[v11];
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = sub_1C525025C;
  v38 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = sub_1C5250208;
  v36 = &block_descriptor_4;
  v20 = _Block_copy(&aBlock);
  v21 = v18;

  v22 = OBJC_IVAR____TtC15MapsSuggestions33MapsSuggestionsBluetoothCondition__notificationTokenDisconnect;
  swift_beginAccess();
  notify_register_dispatch("com.apple.locationd.vehicle.disconnected", &v15[v22], v21, v20);
  swift_endAccess();
  _Block_release(v20);

  v23 = *&v10[v11];
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = v23;

  v37 = sub_1C52503A4;
  v38 = v24;
  aBlock = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = sub_1C5250208;
  v36 = &block_descriptor_8;
  v26 = _Block_copy(&aBlock);

  v27 = OBJC_IVAR____TtC15MapsSuggestions33MapsSuggestionsBluetoothCondition__notificationTokenExit;
  swift_beginAccess();
  notify_register_dispatch("com.apple.locationd.vehicle.exit", &v15[v27], v25, v26);
  swift_endAccess();
  _Block_release(v26);

  return v15;
}

unint64_t sub_1C525006C()
{
  result = qword_1EDC51AF0;
  if (!qword_1EDC51AF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC51AF0);
  }

  return result;
}

unint64_t sub_1C52500B8()
{
  result = qword_1EDC51B00;
  if (!qword_1EDC51B00)
  {
    sub_1C529D8CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC51B00);
  }

  return result;
}

unint64_t sub_1C5250110()
{
  result = qword_1EDC51B10;
  if (!qword_1EDC51B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC1562F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC51B10);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C5250208(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_1C5250284(uint64_t a1, uint64_t a2, const char *a3, char a4)
{
  if (qword_1EDC51978 != -1)
  {
    swift_once();
  }

  v6 = sub_1C529D64C();
  __swift_project_value_buffer(v6, qword_1EDC51F30);
  v7 = sub_1C529D62C();
  v8 = sub_1C529D87C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1C5126000, v7, v8, a3, v9, 2u);
    MEMORY[0x1C69445C0](v9, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC15MapsSuggestions33MapsSuggestionsBluetoothCondition__connected] = a4;
  }
}

id MapsSuggestionsBluetoothCondition.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSuggestionsBluetoothCondition();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id TimerClass.__allocating_init(name:estimatedDownload:estimatedUpload:queue:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v13 = objc_allocWithZone(v7);
  v14 = sub_1C529D71C();

  v18[4] = a6;
  v18[5] = a7;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1C5139244;
  v18[3] = &block_descriptor_1;
  v15 = _Block_copy(v18);
  v16 = [v13 initWithName:v14 estimatedDownload:a3 estimatedUpload:a4 queue:a5 block:v15];

  _Block_release(v15);

  return v16;
}

id TimerClass.init(name:estimatedDownload:estimatedUpload:queue:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_1C529D71C();

  aBlock[4] = a6;
  aBlock[5] = a7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C5139244;
  aBlock[3] = &block_descriptor_3;
  v14 = _Block_copy(aBlock);

  v17.receiver = v7;
  v17.super_class = type metadata accessor for TimerClass();
  v15 = objc_msgSendSuper2(&v17, sel_initWithName_estimatedDownload_estimatedUpload_queue_block_, v13, a3, a4, a5, v14);

  _Block_release(v14);

  return v15;
}

id TimerClass.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TimerClass();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C52508D8()
{
  v1 = (v0 + OBJC_IVAR____TtC15MapsSuggestions28MapsSuggestionsEventStreamer_uniqueName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1C52509AC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15MapsSuggestions28MapsSuggestionsEventStreamer_uniqueName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1C5250A0C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC15MapsSuggestions28MapsSuggestionsEventStreamer_uniqueName);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t MapsSuggestionsEventStreamer.notificationName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15MapsSuggestions28MapsSuggestionsEventStreamer_notificationName);

  return v1;
}

char *MapsSuggestionsEventStreamer.init(lookAheadPeriod:pingInterval:notificationName:identifyingName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v7 = v6;
  v43 = a1;
  v44 = a2;
  v12 = sub_1C529D8EC();
  v41 = *(v12 - 8);
  v42 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C529D8CC();
  MEMORY[0x1EEE9AC00](v15);
  v16 = sub_1C529D69C();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v17 = &v7[OBJC_IVAR____TtC15MapsSuggestions28MapsSuggestionsEventStreamer_uniqueName];
  *v17 = 0;
  *(v17 + 1) = 0;
  *&v7[OBJC_IVAR____TtC15MapsSuggestions28MapsSuggestionsEventStreamer__scanTimer] = 0;
  v40[1] = sub_1C5143DC8(0, &qword_1EDC51AF0);
  aBlock = a3;
  v46 = a4;

  MEMORY[0x1C6943220](0x6575657551, 0xE500000000000000);

  v40[0] = v46;
  sub_1C529D68C();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1C513A534(&qword_1EDC51B00, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1562F0);
  sub_1C5139198(&qword_1EDC51B10, &unk_1EC1562F0);
  sub_1C529D9CC();
  (*(v41 + 104))(v14, *MEMORY[0x1E69E8090], v42);
  *&v7[OBJC_IVAR____TtC15MapsSuggestions28MapsSuggestionsEventStreamer__queue] = sub_1C529D92C();
  *&v7[OBJC_IVAR____TtC15MapsSuggestions28MapsSuggestionsEventStreamer_lookAheadPeriod] = a5;
  *&v7[OBJC_IVAR____TtC15MapsSuggestions28MapsSuggestionsEventStreamer_pingInterval] = a6;
  v18 = &v7[OBJC_IVAR____TtC15MapsSuggestions28MapsSuggestionsEventStreamer_notificationName];
  v19 = v44;
  *v18 = v43;
  *(v18 + 1) = v19;
  *&v7[OBJC_IVAR____TtC15MapsSuggestions28MapsSuggestionsEventStreamer__notifyTimers] = MEMORY[0x1E69E7CC0];
  GEOConfigGetDouble();
  *&v7[OBJC_IVAR____TtC15MapsSuggestions28MapsSuggestionsEventStreamer__delay] = v20;
  v21 = type metadata accessor for MapsSuggestionsEventStreamer();
  v51.receiver = v7;
  v51.super_class = v21;
  v22 = objc_msgSendSuper2(&v51, sel_init);
  type metadata accessor for TimerClass();
  v23 = *&v22[OBJC_IVAR____TtC15MapsSuggestions28MapsSuggestionsEventStreamer__queue];
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  v25 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v26 = v22;
  v27 = v23;
  v28 = sub_1C529D71C();
  v49 = sub_1C52512A0;
  v50 = v24;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_1C5139244;
  v48 = &block_descriptor_6;
  v29 = _Block_copy(&aBlock);
  v30 = [v25 initWithName:v28 queue:v27 block:v29];

  _Block_release(v29);

  v31 = OBJC_IVAR____TtC15MapsSuggestions28MapsSuggestionsEventStreamer__scanTimer;
  v32 = *&v26[OBJC_IVAR____TtC15MapsSuggestions28MapsSuggestionsEventStreamer__scanTimer];
  *&v26[OBJC_IVAR____TtC15MapsSuggestions28MapsSuggestionsEventStreamer__scanTimer] = v30;

  v33 = *&v26[v31];
  if (v33)
  {
    [v33 scheduleWithTimeInterval:*&v26[OBJC_IVAR____TtC15MapsSuggestions28MapsSuggestionsEventStreamer__delay] repeatAfter:a5 leeway:0.0];
  }

  v34 = [v26 description];
  v35 = sub_1C529D72C();
  v37 = v36;

  v38 = &v26[OBJC_IVAR____TtC15MapsSuggestions28MapsSuggestionsEventStreamer_uniqueName];
  swift_beginAccess();
  *v38 = v35;
  v38[1] = v37;

  return v26;
}

uint64_t sub_1C5251364(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v26[0] = a1;
  v29 = sub_1C529D66C();
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v27 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1C529D69C();
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C529D3AC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v12 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v26 - v13;
  v26[1] = *(v3 + OBJC_IVAR____TtC15MapsSuggestions28MapsSuggestionsEventStreamer__queue);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = *(v9 + 16);
  v16(v14, v26[0], v8);
  v16(v12, a2, v8);
  v17 = *(v9 + 80);
  v18 = (v17 + 24) & ~v17;
  v19 = (v10 + v17 + v18) & ~v17;
  v20 = swift_allocObject();
  *(v20 + 16) = v15;
  v21 = *(v9 + 32);
  v21(v20 + v18, v14, v8);
  v21(v20 + v19, v12, v8);
  aBlock[4] = sub_1C5251ECC;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C5139244;
  aBlock[3] = &block_descriptor_15;
  v22 = _Block_copy(aBlock);

  sub_1C529D68C();
  v32 = MEMORY[0x1E69E7CC0];
  sub_1C513A534(qword_1EDC51A50, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1566E0);
  sub_1C5139198(&unk_1EDC51A40, &unk_1EC1566E0);
  v23 = v27;
  v24 = v29;
  sub_1C529D9CC();
  MEMORY[0x1C69433C0](0, v7, v23, v22);
  _Block_release(v22);
  (*(v31 + 8))(v23, v24);
  (*(v28 + 8))(v7, v30);
}

void sub_1C5251794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C529D3AC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v45[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v45[-v11];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v45[-v13];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_1EDC519A0 != -1)
    {
      swift_once();
    }

    v22 = sub_1C529D64C();
    __swift_project_value_buffer(v22, qword_1EDC51F78);
    v23 = sub_1C529D62C();
    v24 = sub_1C529D88C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1C5126000, v23, v24, "self became nil. Returning, and not invalidating timers", v25, 2u);
      MEMORY[0x1C69445C0](v25, -1, -1);
    }

    goto LABEL_17;
  }

  v16 = Strong;
  if ((sub_1C529D33C() & 1) == 0)
  {
    if (qword_1EDC519A0 != -1)
    {
      swift_once();
    }

    v26 = sub_1C529D64C();
    __swift_project_value_buffer(v26, qword_1EDC51F78);
    v23 = sub_1C529D62C();
    v27 = sub_1C529D88C();
    if (os_log_type_enabled(v23, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1C5126000, v23, v27, "from > to. Not good.", v28, 2u);
      MEMORY[0x1C69445C0](v28, -1, -1);
    }

LABEL_17:
    return;
  }

  v17 = MapsSuggestionsNow();
  sub_1C529D37C();

  if (sub_1C529D33C())
  {
    if (qword_1EDC519A0 != -1)
    {
      swift_once();
    }

    v18 = sub_1C529D64C();
    __swift_project_value_buffer(v18, qword_1EDC51F78);
    v19 = sub_1C529D62C();
    v20 = sub_1C529D87C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1C5126000, v19, v20, "Event is in the past. Nothing to do, returning.", v21, 2u);
      MEMORY[0x1C69445C0](v21, -1, -1);
    }

    else
    {
    }

    (*(v6 + 8))(v14, v5);
  }

  else
  {
    v48 = v6;
    v29 = *(v6 + 16);
    v29(v12, a2, v5);
    if (sub_1C529D33C() & 1) != 0 && (sub_1C529D32C())
    {
      if (qword_1EDC519A0 != -1)
      {
        swift_once();
      }

      v30 = sub_1C529D64C();
      __swift_project_value_buffer(v30, qword_1EDC51F78);
      v31 = sub_1C529D62C();
      v46 = sub_1C529D87C();
      v47 = v31;
      if (os_log_type_enabled(v31, v46))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_1C5126000, v47, v46, "Event is ongoing, resetting start date to now", v32, 2u);
        MEMORY[0x1C69445C0](v32, -1, -1);
      }

      (*(v48 + 8))(v12, v5);
      v29(v12, v14, v5);
    }

    type metadata accessor for TimerClass();
    v47 = *&v16[OBJC_IVAR____TtC15MapsSuggestions28MapsSuggestionsEventStreamer__queue];
    v29(v9, a3, v5);
    v33 = v48;
    v34 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v35 = swift_allocObject();
    (*(v33 + 32))(v35 + v34, v9, v5);
    *(v35 + ((v7 + v34 + 7) & 0xFFFFFFFFFFFFFFF8)) = v16;
    v36 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v37 = v47;
    v38 = v16;
    v39 = sub_1C529D71C();
    aBlock[4] = sub_1C52589B8;
    aBlock[5] = v35;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C52582DC;
    aBlock[3] = &block_descriptor_192;
    v40 = _Block_copy(aBlock);
    v41 = [v36 initWithName:v39 queue:v37 timerReturningBlock:v40];

    _Block_release(v40);

    [v41 scheduleWithTimeInterval:*&v38[OBJC_IVAR____TtC15MapsSuggestions28MapsSuggestionsEventStreamer__delay] repeatAfter:*&v38[OBJC_IVAR____TtC15MapsSuggestions28MapsSuggestionsEventStreamer_pingInterval] leeway:0.0];
    v42 = OBJC_IVAR____TtC15MapsSuggestions28MapsSuggestionsEventStreamer__notifyTimers;
    swift_beginAccess();
    v43 = v41;
    MEMORY[0x1C6943260]();
    if (*((*&v38[v42] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v38[v42] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C529D7FC();
    }

    sub_1C529D81C();
    swift_endAccess();

    v44 = *(v48 + 8);
    v44(v12, v5);
    v44(v14, v5);
  }
}

void sub_1C5251ECC()
{
  v1 = *(sub_1C529D3AC() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v0 + 16);
  v5 = v0 + ((*(v1 + 64) + v2 + v3) & ~v2);

  sub_1C5251794(v4, v0 + v3, v5);
}

uint64_t sub_1C5251F5C(NSObject *a1, char *a2, char *a3)
{
  v6 = sub_1C529D3AC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v75 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v80 = &v72 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v79 = &v72 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v72 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v72 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v72 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v72 - v23;
  v25 = MapsSuggestionsNow();
  sub_1C529D37C();

  v76 = a2;
  sub_1C529D2FC();
  v77 = a3;
  v78 = v16;
  v26 = *&a3[OBJC_IVAR____TtC15MapsSuggestions28MapsSuggestionsEventStreamer_pingInterval];
  v27 = MapsSuggestionsCoarseLocationFilter;
  if (v28 < v26)
  {
    if (qword_1EDC519A0 != -1)
    {
      swift_once();
    }

    v29 = sub_1C529D64C();
    __swift_project_value_buffer(v29, qword_1EDC51F78);
    (*(v7 + 16))(v22, v24, v6);
    v30 = sub_1C529D62C();
    v31 = sub_1C529D87C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v74 = a1;
      v33 = v32;
      v73 = swift_slowAlloc();
      v81 = v73;
      *v33 = 136315138;
      sub_1C513A534(&unk_1EC156160, MEMORY[0x1E6969530]);
      v34 = sub_1C529DB2C();
      v35 = v24;
      v37 = v36;
      (*(v7 + 8))(v22, v6);
      v38 = sub_1C524E7F4(v34, v37, &v81);
      v24 = v35;
      v27 = MapsSuggestionsCoarseLocationFilter;

      *(v33 + 4) = v38;
      _os_log_impl(&dword_1C5126000, v30, v31, "Event has ended. Canceling timer. Broadcasting notification for the last time. %s", v33, 0xCu);
      v39 = v73;
      __swift_destroy_boxed_opaque_existential_0(v73);
      MEMORY[0x1C69445C0](v39, -1, -1);
      v40 = v33;
      a1 = v74;
      MEMORY[0x1C69445C0](v40, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v22, v6);
    }

    v16 = v78;
    [a1 unschedule];
  }

  if (v27[61].vtable != -1)
  {
    swift_once();
  }

  v41 = sub_1C529D64C();
  __swift_project_value_buffer(v41, qword_1EDC51F78);
  v42 = *(v7 + 16);
  v42(v19, v24, v6);
  v43 = v76;
  v42(v16, v76, v6);
  v44 = v79;
  v42(v79, v43, v6);
  v45 = v80;
  v42(v80, v24, v6);
  v46 = v77;
  v47 = sub_1C529D62C();
  v48 = sub_1C529D87C();
  if (!os_log_type_enabled(v47, v48))
  {
    v54 = *(v7 + 8);
    v54(v44, v6);
    v54(v45, v6);

    v54(v78, v6);
    v54(v19, v6);
    goto LABEL_16;
  }

  LODWORD(v73) = v48;
  v74 = v47;
  v77 = v24;
  v49 = swift_slowAlloc();
  v72 = swift_slowAlloc();
  v81 = v72;
  *v49 = 136315906;
  v76 = v46;
  *(v49 + 4) = sub_1C524E7F4(*&v46[OBJC_IVAR____TtC15MapsSuggestions28MapsSuggestionsEventStreamer_notificationName], *&v46[OBJC_IVAR____TtC15MapsSuggestions28MapsSuggestionsEventStreamer_notificationName + 8], &v81);
  *(v49 + 12) = 2080;
  v50 = v75;
  sub_1C529D34C();
  sub_1C513A534(&unk_1EC156160, MEMORY[0x1E6969530]);
  v51 = sub_1C529DB2C();
  v53 = v52;
  v54 = *(v7 + 8);
  v54(v50, v6);
  v54(v19, v6);
  v55 = sub_1C524E7F4(v51, v53, &v81);

  *(v49 + 14) = v55;
  *(v49 + 22) = 2080;
  v56 = v78;
  v57 = sub_1C529DB2C();
  v59 = v58;
  v54(v56, v6);
  v60 = sub_1C524E7F4(v57, v59, &v81);

  *(v49 + 24) = v60;
  *(v49 + 32) = 2048;
  v61 = v79;
  v62 = v80;
  result = sub_1C529D2FC();
  v65 = v64 / v26;
  if ((*&v65 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v65 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v65 < 9.22337204e18)
  {
    v66 = v61;
    v67 = v65;
    v54(v66, v6);
    v54(v62, v6);
    v68 = v76;

    *(v49 + 34) = v67;
    v69 = v74;
    _os_log_impl(&dword_1C5126000, v74, v73, "Posting: %s. Next one around: %s. Will stream until: %s. Possible notifications left: %ld", v49, 0x2Au);
    v70 = v72;
    swift_arrayDestroy();
    MEMORY[0x1C69445C0](v70, -1, -1);
    MEMORY[0x1C69445C0](v49, -1, -1);

    v24 = v77;
LABEL_16:
    v71 = sub_1C529D75C();
    notify_post((v71 + 32));
    v54(v24, v6);
  }

LABEL_19:
  __break(1u);
  return result;
}

void sub_1C5252874()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1C525297C();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0xF0))();
  }
}

uint64_t sub_1C525299C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C529D66C();
  v16 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C529D69C();
  v8 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + OBJC_IVAR____TtC15MapsSuggestions28MapsSuggestionsEventStreamer__queue);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = a1;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C5139244;
  aBlock[3] = a2;
  v12 = _Block_copy(aBlock);

  sub_1C529D68C();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1C513A534(qword_1EDC51A50, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1566E0);
  sub_1C5139198(&unk_1EDC51A40, &unk_1EC1566E0);
  sub_1C529D9CC();
  MEMORY[0x1C69433C0](0, v10, v7, v12);
  _Block_release(v12);
  (*(v16 + 8))(v7, v5);
  (*(v8 + 8))(v10, v15);
}

void sub_1C5252C68()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_1EDC519A0 != -1)
    {
      swift_once();
    }

    v2 = sub_1C529D64C();
    __swift_project_value_buffer(v2, qword_1EDC51F78);
    v3 = sub_1C529D62C();
    v4 = sub_1C529D87C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1C5126000, v3, v4, "Inside _invalidateAllTimers.", v5, 2u);
      MEMORY[0x1C69445C0](v5, -1, -1);
    }

    v6 = OBJC_IVAR____TtC15MapsSuggestions28MapsSuggestionsEventStreamer__scanTimer;
    v7 = *&v1[OBJC_IVAR____TtC15MapsSuggestions28MapsSuggestionsEventStreamer__scanTimer];
    if (v7)
    {
      [v7 unschedule];
      v8 = *&v1[v6];
    }

    else
    {
      v8 = 0;
    }

    *&v1[v6] = 0;

    v13 = OBJC_IVAR____TtC15MapsSuggestions28MapsSuggestionsEventStreamer__notifyTimers;
    swift_beginAccess();
    v14 = *&v1[v13];
    if (v14 >> 62)
    {
      v15 = sub_1C529DA9C();
      if (v15)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
LABEL_15:
        if (v15 >= 1)
        {

          for (i = 0; i != v15; ++i)
          {
            if ((v14 & 0xC000000000000001) != 0)
            {
              v17 = MEMORY[0x1C69434E0](i, v14);
            }

            else
            {
              v17 = *(v14 + 8 * i + 32);
            }

            v18 = v17;
            [v17 unschedule];
          }

          goto LABEL_22;
        }

        __break(1u);
        goto LABEL_26;
      }
    }

LABEL_22:
    *&v1[v13] = MEMORY[0x1E69E7CC0];

    return;
  }

  if (qword_1EDC519A0 != -1)
  {
LABEL_26:
    swift_once();
  }

  v9 = sub_1C529D64C();
  __swift_project_value_buffer(v9, qword_1EDC51F78);
  v10 = sub_1C529D62C();
  v11 = sub_1C529D88C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1C5126000, v10, v11, "self became nil. Returning, and not invalidating timers", v12, 2u);
    MEMORY[0x1C69445C0](v12, -1, -1);
  }
}

id MapsSuggestionsEventStreamer.__deallocating_deinit()
{
  sub_1C525297C();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSuggestionsEventStreamer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id MapsSuggestionsEventStreamer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t MapsSuggestionsFakeStreamer.callBackBlock.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC15MapsSuggestions27MapsSuggestionsFakeStreamer_callBackBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_1C513B684(*v1);
  return v2;
}