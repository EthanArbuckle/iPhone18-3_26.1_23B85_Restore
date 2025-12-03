@interface GEOAPLocationCollectionReporter
+ (BOOL)_fuzzCNProbes:(id)probes;
+ (BOOL)_fuzzINProbes:(id)probes;
+ (BOOL)_fuzzROWProbes:(id)probes;
+ (uint64_t)_fuzzProbes:(uint64_t)probes;
+ (void)_withCollectionRequest:(id)request fuzzBaseline:(BOOL)baseline fuzzCourseAccuracy:(BOOL)accuracy fuzzSpeedAccuracy:(BOOL)speedAccuracy fuzzHorizAccuracy:(BOOL)horizAccuracy fuzzVertAccuracy:(BOOL)vertAccuracy useOneSecondPrecision:(BOOL)precision;
+ (void)reportBatchLocationCollection:(id)collection;
+ (void)reportCalibratedPressureCollection:(id)collection;
+ (void)reportRealtimeLocationCollection:(id)collection;
@end

@implementation GEOAPLocationCollectionReporter

+ (void)reportCalibratedPressureCollection:(id)collection
{
  data = [collection data];
  [GEOAPPortal capturePressureDataWithPressureData:data];
}

+ (void)reportBatchLocationCollection:(id)collection
{
  collectionCopy = collection;
  if (([GEOAPLocationCollectionReporter _fuzzProbes:collectionCopy]& 1) != 0)
  {
    data = [collectionCopy data];
    [GEOAPPortal captureBatchTrafficWithLocationCollection:data];
  }

  else
  {
    v5 = GEOGetTrafficProbeAnalyticsLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1AB634000, v5, OS_LOG_TYPE_INFO, "dropping batch collection; no obfuscation ", v6, 2u);
    }
  }
}

+ (uint64_t)_fuzzProbes:(uint64_t)probes
{
  v2 = a2;
  v3 = objc_opt_self();
  mEMORY[0x1E69A1CD8] = [MEMORY[0x1E69A1CD8] sharedConfiguration];
  countryCode = [mEMORY[0x1E69A1CD8] countryCode];

  if ([countryCode isEqualToString:@"CN"])
  {
    v6 = GEOGetTrafficProbeAnalyticsLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1AB634000, v6, OS_LOG_TYPE_DEBUG, "blurring CN traffic data", buf, 2u);
    }

    v7 = [v3 _fuzzCNProbes:v2];
  }

  else
  {
    v8 = [countryCode isEqualToString:@"IN"];
    v9 = GEOGetTrafficProbeAnalyticsLog();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
    if (v8)
    {
      if (v10)
      {
        *v14 = 0;
        _os_log_impl(&dword_1AB634000, v9, OS_LOG_TYPE_DEBUG, "blurring IN traffic data", v14, 2u);
      }

      v7 = [v3 _fuzzINProbes:v2];
    }

    else
    {
      if (v10)
      {
        v13[0] = 0;
        _os_log_impl(&dword_1AB634000, v9, OS_LOG_TYPE_DEBUG, "blurring ROW traffic data", v13, 2u);
      }

      v7 = [v3 _fuzzROWProbes:v2];
    }
  }

  v11 = v7;

  return v11;
}

+ (void)reportRealtimeLocationCollection:(id)collection
{
  collectionCopy = collection;
  if (([GEOAPLocationCollectionReporter _fuzzProbes:collectionCopy]& 1) != 0)
  {
    v4 = GEOConfigGetDate();
    date = [MEMORY[0x1E695DF00] date];
    v6 = [v4 earlierDate:date];
    v7 = [v6 isEqualToDate:v4];

    if (v7)
    {
      GEOConfigGetDouble();
      v9 = [date dateByAddingTimeInterval:v8 * 60.0];

      GEOConfigSetDate();
      v10 = 1;
      v4 = v9;
    }

    else
    {
      v10 = GEOConfigGetUInteger() + 1;
    }

    if (v10 <= GEOConfigGetUInteger())
    {
      GEOConfigSetUInteger();
      data = [collectionCopy data];
      [GEOAPPortal captureRealTrafficWithLocationCollection:data];
    }

    else
    {
      v11 = GEOGetTrafficProbeAnalyticsLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_1AB634000, v11, OS_LOG_TYPE_INFO, "dropping realtime traffic probe - over budget", v13, 2u);
      }
    }
  }

  else
  {
    v4 = GEOGetTrafficProbeAnalyticsLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1AB634000, v4, OS_LOG_TYPE_INFO, "dropping realtime collection; no obfuscation ", buf, 2u);
    }
  }
}

+ (BOOL)_fuzzROWProbes:(id)probes
{
  probesCopy = probes;
  BOOL = GEOConfigGetBOOL();
  v6 = GEOConfigGetBOOL();
  v7 = GEOConfigGetBOOL();
  v8 = GEOConfigGetBOOL();
  v9 = GEOConfigGetBOOL();
  LOBYTE(v11) = GEOConfigGetBOOL();
  [self _withCollectionRequest:probesCopy fuzzBaseline:BOOL fuzzCourseAccuracy:v6 fuzzSpeedAccuracy:v7 fuzzHorizAccuracy:v8 fuzzVertAccuracy:v9 useOneSecondPrecision:v11];

  return 1;
}

+ (BOOL)_fuzzINProbes:(id)probes
{
  v51 = *MEMORY[0x1E69E9840];
  probesCopy = probes;
  if (GEOConfigGetBOOL())
  {
    v29 = probesCopy;
    _geoShifterObfuscationSeed = [self _geoShifterObfuscationSeed];
    v30 = _geoShifterObfuscationSeed != 0;
    if (_geoShifterObfuscationSeed)
    {
      v6 = _geoShifterObfuscationSeed;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      obj = [probesCopy locations];
      v7 = [obj countByEnumeratingWithState:&v35 objects:v50 count:16];
      if (!v7)
      {
        goto LABEL_19;
      }

      v8 = *v36;
      while (1)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v36 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v35 + 1) + 8 * i);
          v33 = 0.0;
          v34 = 0.0;
          v32 = 0.0;
          [v10 latitude];
          v12 = v11;
          [v10 longitude];
          v14 = v13;
          [v10 altitude];
          v16 = v15;
          v39 = 0;
          v40 = &v39;
          v41 = 0x2020000000;
          v17 = getGeoShifter_obfuscateSymbolLoc_ptr;
          v42 = getGeoShifter_obfuscateSymbolLoc_ptr;
          if (!getGeoShifter_obfuscateSymbolLoc_ptr)
          {
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __getGeoShifter_obfuscateSymbolLoc_block_invoke;
            v44 = COERCE_DOUBLE(&unk_1E79595B8);
            *v45 = &v39;
            v18 = GeoShifterLibrary();
            v19 = dlsym(v18, "GeoShifter_obfuscate");
            *(*(*v45 + 8) + 24) = v19;
            getGeoShifter_obfuscateSymbolLoc_ptr = *(*(*v45 + 8) + 24);
            v17 = v40[3];
          }

          _Block_object_dispose(&v39, 8);
          if (!v17)
          {
            dlerror();
            abort_report_np();
            __break(1u);
          }

          v20 = v16;
          v17(v6, &v34, &v33, &v32, v12, v14, v20);
          [v10 setLatitude:v34];
          [v10 setLongitude:v33];
          if ([v10 hasAltitude])
          {
            HIDWORD(v21) = HIDWORD(v32);
            *&v21 = v32;
            [v10 setAltitude:v21];
            v22 = GEOGetTrafficProbeAnalyticsLog();
            if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_17;
            }

            *buf = 134546945;
            *&buf[4] = v12;
            *&buf[12] = 2053;
            *&buf[14] = v14;
            *&buf[22] = 2053;
            v44 = v20;
            *v45 = 2053;
            *&v45[2] = v34;
            v46 = 2053;
            v47 = v33;
            v48 = 2053;
            v49 = v32;
            v23 = v22;
            v24 = "blurring result (%{sensitive}f, %{sensitive}f, %{sensitive}f) --> (%{sensitive}f, %{sensitive}f, %{sensitive}f)";
            v25 = 62;
          }

          else
          {
            v22 = GEOGetTrafficProbeAnalyticsLog();
            if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_17;
            }

            *buf = 134546433;
            *&buf[4] = v12;
            *&buf[12] = 2053;
            *&buf[14] = v14;
            *&buf[22] = 2053;
            v44 = v34;
            *v45 = 2053;
            *&v45[2] = v33;
            v23 = v22;
            v24 = "blurring result (%{sensitive}f, %{sensitive}f) --> (%{sensitive}f, %{sensitive}f)";
            v25 = 42;
          }

          _os_log_impl(&dword_1AB634000, v23, OS_LOG_TYPE_DEBUG, v24, buf, v25);
LABEL_17:
        }

        v7 = [obj countByEnumeratingWithState:&v35 objects:v50 count:16];
        if (!v7)
        {
LABEL_19:
          v26 = obj;
          goto LABEL_23;
        }
      }
    }

    v26 = GEOGetTrafficProbeAnalyticsLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1AB634000, v26, OS_LOG_TYPE_INFO, "shifting seed not available; must drop", buf, 2u);
    }

LABEL_23:

    probesCopy = v29;
  }

  else
  {
    v30 = 1;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v30;
}

+ (BOOL)_fuzzCNProbes:(id)probes
{
  LOBYTE(v4) = 1;
  [self _withCollectionRequest:probes fuzzBaseline:1 fuzzCourseAccuracy:1 fuzzSpeedAccuracy:1 fuzzHorizAccuracy:1 fuzzVertAccuracy:1 useOneSecondPrecision:v4];
  return 1;
}

+ (void)_withCollectionRequest:(id)request fuzzBaseline:(BOOL)baseline fuzzCourseAccuracy:(BOOL)accuracy fuzzSpeedAccuracy:(BOOL)speedAccuracy fuzzHorizAccuracy:(BOOL)horizAccuracy fuzzVertAccuracy:(BOOL)vertAccuracy useOneSecondPrecision:(BOOL)precision
{
  vertAccuracyCopy = vertAccuracy;
  horizAccuracyCopy = horizAccuracy;
  speedAccuracyCopy = speedAccuracy;
  accuracyCopy = accuracy;
  baselineCopy = baseline;
  v31 = *MEMORY[0x1E69E9840];
  if (baseline || accuracy || speedAccuracy || horizAccuracy || vertAccuracy || precision)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = [request locations];
    v14 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (!v14)
    {
      goto LABEL_34;
    }

    v15 = v14;
    v16 = *v27;
    while (1)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v26 + 1) + 8 * i);
        if (baselineCopy)
        {
          [*(*(&v26 + 1) + 8 * i) clearAppBundleIdIndices];
          [v18 setHasProvider:0];
          [v18 setHasFloor:0];
          [v18 setHasMotionVehicleConnectedStateChanged:0];
          [v18 setHasMotionVehicleConnected:0];
          [v18 setRawMotionActivity:0];
          [v18 setMotionActivity:0];
          [v18 setHasModeIndicator:0];
          [v18 setHasHorzUncSemiMaj:0];
          [v18 setHasHorzUncSemiMin:0];
          [v18 setHasHorzUncSemiMajAz:0];
          if (!precision)
          {
LABEL_14:
            if (!accuracyCopy)
            {
              goto LABEL_15;
            }

            goto LABEL_21;
          }
        }

        else if (!precision)
        {
          goto LABEL_14;
        }

        [v18 timestamp];
        [v18 setTimestamp:rint(v19)];
        if (!accuracyCopy)
        {
LABEL_15:
          if (!speedAccuracyCopy)
          {
            goto LABEL_16;
          }

          goto LABEL_22;
        }

LABEL_21:
        [v18 setHasCourseAccuracy:0];
        if (!speedAccuracyCopy)
        {
LABEL_16:
          if (horizAccuracyCopy)
          {
            goto LABEL_23;
          }

          goto LABEL_17;
        }

LABEL_22:
        [v18 setHasSpeedAccuracy:0];
        if (horizAccuracyCopy)
        {
LABEL_23:
          [v18 horizontalAccuracy];
          v21 = dword_1AB6C3090[*&v20 > 50.0];
          if (*&v20 <= 10.0)
          {
            *&v20 = 1111.0;
          }

          else
          {
            LODWORD(v20) = dword_1AB6C3090[*&v20 > 50.0];
          }

          [v18 setHorizontalAccuracy:v20];
          if (!vertAccuracyCopy)
          {
            continue;
          }

          goto LABEL_27;
        }

LABEL_17:
        if (!vertAccuracyCopy)
        {
          continue;
        }

LABEL_27:
        if ([v18 hasVerticalAccuracy])
        {
          [v18 verticalAccuracy];
          v23 = dword_1AB6C3090[*&v22 > 50.0];
          if (*&v22 <= 10.0)
          {
            *&v22 = 1111.0;
          }

          else
          {
            LODWORD(v22) = dword_1AB6C3090[*&v22 > 50.0];
          }

          [v18 setVerticalAccuracy:v22];
        }
      }

      v15 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (!v15)
      {
LABEL_34:

        break;
      }
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

@end