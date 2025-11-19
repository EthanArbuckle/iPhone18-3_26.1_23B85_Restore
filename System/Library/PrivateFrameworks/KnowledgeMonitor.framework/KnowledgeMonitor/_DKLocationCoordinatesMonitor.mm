@interface _DKLocationCoordinatesMonitor
+ (id)log;
- (_DKLocationCoordinatesMonitor)init;
- (int)altitudeRangeFrom:(double)a3;
- (int)distanceRangeFrom:(double)a3;
- (int)locationTypeFrom:(int)a3;
- (int)speedRangeFrom:(double)a3;
- (uint64_t)init;
- (void)_fetchAndCacheLOIs;
- (void)dealloc;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)locationManagerDidChangeAuthorization:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation _DKLocationCoordinatesMonitor

+ (id)log
{
  if (log_onceToken_1 != -1)
  {
    +[_DKLocationCoordinatesMonitor log];
  }

  v3 = log_log_1;

  return v3;
}

- (_DKLocationCoordinatesMonitor)init
{
  v31.receiver = self;
  v31.super_class = _DKLocationCoordinatesMonitor;
  v2 = [(_DKMonitor *)&v31 init];
  if (v2)
  {
    v3 = +[_DKLocationCoordinatesMonitor log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22595A000, v3, OS_LOG_TYPE_INFO, "Enabling location coordinates monitor", buf, 2u);
    }

    v4 = [(_DKMonitor *)v2 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37___DKLocationCoordinatesMonitor_init__block_invoke;
    block[3] = &unk_27856F060;
    v5 = v2;
    v30 = v5;
    dispatch_sync(v4, block);

    if (os_variant_has_internal_content())
    {
      if (BiomeLibraryInternalLibraryCore())
      {
        v37 = 0;
        v38 = &v37;
        v39 = 0x2020000000;
        v6 = getBiomeLibraryInternalSymbolLoc_ptr;
        v40 = getBiomeLibraryInternalSymbolLoc_ptr;
        if (!getBiomeLibraryInternalSymbolLoc_ptr)
        {
          *buf = MEMORY[0x277D85DD0];
          v33 = 3221225472;
          v34 = __getBiomeLibraryInternalSymbolLoc_block_invoke;
          v35 = &unk_27856F628;
          v36 = &v37;
          v7 = BiomeLibraryInternalLibrary();
          v8 = dlsym(v7, "BiomeLibraryInternal");
          *(v36[1] + 24) = v8;
          getBiomeLibraryInternalSymbolLoc_ptr = *(v36[1] + 24);
          v6 = v38[3];
        }

        _Block_object_dispose(&v37, 8);
        if (!v6)
        {
          v26 = [_DKLocationCoordinatesMonitor init];
          _Block_object_dispose(&v37, 8);
          _Unwind_Resume(v26);
        }

        v9 = v6();
        v10 = [v9 Location];
        v11 = [v10 Coordinates];
        locationCoordinatesStream = v5->_locationCoordinatesStream;
        v5->_locationCoordinatesStream = v11;

        v13 = [(BMStream *)v5->_locationCoordinatesStream source];
        locationCoordinatesStreamSource = v5->_locationCoordinatesStreamSource;
        v5->_locationCoordinatesStreamSource = v13;
      }

      else
      {
        locationCoordinatesStreamSource = +[_DKLocationCoordinatesMonitor log];
        if (os_log_type_enabled(locationCoordinatesStreamSource, OS_LOG_TYPE_ERROR))
        {
          [_DKLocationCoordinatesMonitor init];
        }
      }
    }

    v15 = BiomeLibrary();
    v16 = [v15 Location];
    v17 = [v16 HashedCoordinates];
    locationHashedCoordinatesStream = v5->_locationHashedCoordinatesStream;
    v5->_locationHashedCoordinatesStream = v17;

    v19 = [(BMStream *)v5->_locationHashedCoordinatesStream source];
    locationHashedCoordinatesStreamSource = v5->_locationHashedCoordinatesStreamSource;
    v5->_locationHashedCoordinatesStreamSource = v19;

    v21 = [(_DKMonitor *)v5 queue];
    v22 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v21);
    fetchLoiTimer = v5->_fetchLoiTimer;
    v5->_fetchLoiTimer = v22;

    dispatch_source_set_timer(v5->_fetchLoiTimer, 0, 0x4E94914F0000uLL, 0x7DBA8218000uLL);
    v24 = v5->_fetchLoiTimer;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __37___DKLocationCoordinatesMonitor_init__block_invoke_16;
    v27[3] = &unk_27856F060;
    v28 = v5;
    dispatch_source_set_event_handler(v24, v27);
  }

  return v2;
}

- (void)_fetchAndCacheLOIs
{
  v3 = [MEMORY[0x277D01280] defaultManager];
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51___DKLocationCoordinatesMonitor__fetchAndCacheLOIs__block_invoke;
  v6[3] = &unk_27856F088;
  objc_copyWeak(&v7, &location);
  [v3 fetchLocationsOfInterestOfType:0 withHandler:v6];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51___DKLocationCoordinatesMonitor__fetchAndCacheLOIs__block_invoke_19;
  v4[3] = &unk_27856F088;
  objc_copyWeak(&v5, &location);
  [v3 fetchLocationsOfInterestOfType:1 withHandler:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)start
{
  v5.receiver = self;
  v5.super_class = _DKLocationCoordinatesMonitor;
  if ([(_DKMonitor *)&v5 instantMonitorNeedsActivation])
  {
    v3 = [(_DKMonitor *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38___DKLocationCoordinatesMonitor_start__block_invoke;
    block[3] = &unk_27856F060;
    block[4] = self;
    dispatch_sync(v3, block);

    dispatch_resume(self->_fetchLoiTimer);
  }
}

- (void)stop
{
  v5.receiver = self;
  v5.super_class = _DKLocationCoordinatesMonitor;
  if ([(_DKMonitor *)&v5 instantMonitorNeedsDeactivation])
  {
    v3 = [(_DKMonitor *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37___DKLocationCoordinatesMonitor_stop__block_invoke;
    block[3] = &unk_27856F060;
    block[4] = self;
    dispatch_sync(v3, block);
  }
}

- (void)dealloc
{
  [(_DKLocationCoordinatesMonitor *)self deactivate];
  fetchLoiTimer = self->_fetchLoiTimer;
  if (fetchLoiTimer)
  {
    dispatch_source_cancel(fetchLoiTimer);
    v4 = self->_fetchLoiTimer;
    self->_fetchLoiTimer = 0;
  }

  v5.receiver = self;
  v5.super_class = _DKLocationCoordinatesMonitor;
  [(_DKMonitor *)&v5 dealloc];
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v4 = a4;
  v5 = +[_DKLocationCoordinatesMonitor log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_DKLocationCoordinatesMonitor locationManager:didFailWithError:];
  }
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[_DKLocationCoordinatesMonitor log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v3, "authorizationStatus")}];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_22595A000, v4, OS_LOG_TYPE_INFO, "Authorization status changed %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_DKMonitor *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [v7 lastObject];
  v10 = +[_DKLocationCoordinatesMonitor log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [(_DKLocationCoordinatesMonitor *)v9 locationManager:v10 didUpdateLocations:?];
  }

  if (self->_lastLocation)
  {
    v11 = [v9 timestamp];
    v12 = [(CLLocation *)self->_lastLocation timestamp];
    [v11 timeIntervalSinceDate:v12];
    if (fabs(v13) >= 1.0)
    {
      goto LABEL_16;
    }

    [v9 coordinate];
    v15 = v14;
    [(CLLocation *)self->_lastLocation coordinate];
    if (v15 != v16)
    {
      goto LABEL_16;
    }

    [v9 coordinate];
    v18 = v17;
    [(CLLocation *)self->_lastLocation coordinate];
    if (v18 != v19)
    {
      goto LABEL_16;
    }

    [v9 horizontalAccuracy];
    v21 = v20;
    [(CLLocation *)self->_lastLocation horizontalAccuracy];
    if (v21 != v22)
    {
      goto LABEL_16;
    }

    [v9 altitude];
    v24 = v23;
    [(CLLocation *)self->_lastLocation altitude];
    if (v24 != v25)
    {
      goto LABEL_16;
    }

    [v9 verticalAccuracy];
    v27 = v26;
    [(CLLocation *)self->_lastLocation verticalAccuracy];
    if (v27 != v28)
    {
      goto LABEL_16;
    }

    [v9 speed];
    v30 = v29;
    [(CLLocation *)self->_lastLocation speed];
    if (v30 == v31 && ([v9 course], v33 = v32, -[CLLocation course](self->_lastLocation, "course"), v33 == v34) && (v35 = objc_msgSend(v9, "type"), v35 == -[CLLocation type](self->_lastLocation, "type")))
    {
      v36 = [v9 floor];
      v119 = [v36 level];
      [(CLLocation *)self->_lastLocation floor];
      v38 = v37 = v7;
      v39 = [v38 level];

      v7 = v37;
      if (v119 == v39)
      {
        v40 = +[_DKLocationCoordinatesMonitor log];
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          [_DKLocationCoordinatesMonitor locationManager:v9 didUpdateLocations:v40];
        }

        goto LABEL_54;
      }
    }

    else
    {
LABEL_16:
    }
  }

  v41 = [v9 timestamp];
  v42 = [(CLLocation *)self->_lastLocation timestamp];
  [v41 timeIntervalSinceDate:v42];
  v44 = v43;

  if (self->_lastLocation && fabs(v44) < 5.0)
  {
    v45 = +[_DKLocationCoordinatesMonitor log];
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      [(_DKLocationCoordinatesMonitor *)v45 locationManager:v46 didUpdateLocations:v47, v48, v49, v50, v51, v52];
    }

LABEL_33:

    goto LABEL_34;
  }

  objc_storeStrong(&self->_lastLocation, v9);
  if (os_variant_has_internal_content() && self->_locationCoordinatesStreamSource)
  {
    v126 = 0;
    v127 = &v126;
    v128 = 0x2050000000;
    v53 = getBMILocationCoordinatesClass_softClass;
    v129 = getBMILocationCoordinatesClass_softClass;
    if (!getBMILocationCoordinatesClass_softClass)
    {
      BiomeLibraryInternalLibraryCore();
      v127[3] = objc_getClass("BMILocationCoordinates");
      getBMILocationCoordinatesClass_softClass = v127[3];
      v53 = v127[3];
    }

    v124 = v6;
    v54 = v53;
    _Block_object_dispose(&v126, 8);
    v114 = [v53 alloc];
    v55 = MEMORY[0x277CCABB0];
    [v9 coordinate];
    v120 = [v55 numberWithDouble:?];
    v56 = MEMORY[0x277CCABB0];
    [v9 coordinate];
    v117 = [v56 numberWithDouble:v57];
    v58 = MEMORY[0x277CCABB0];
    [v9 altitude];
    v116 = [v58 numberWithDouble:?];
    v59 = MEMORY[0x277CCABB0];
    [v9 speed];
    v115 = [v59 numberWithDouble:?];
    v60 = MEMORY[0x277CCABB0];
    [v9 course];
    v61 = [v60 numberWithDouble:?];
    v62 = [v9 floor];
    v122 = v7;
    if (v62)
    {
      v63 = MEMORY[0x277CCABB0];
      v113 = [v9 floor];
      v64 = [v63 numberWithInteger:{objc_msgSend(v113, "level")}];
    }

    else
    {
      v64 = 0;
    }

    v65 = -[_DKLocationCoordinatesMonitor locationTypeFrom:](self, "locationTypeFrom:", [v9 type]);
    v66 = MEMORY[0x277CCABB0];
    [v9 horizontalAccuracy];
    v67 = [v66 numberWithDouble:?];
    v68 = MEMORY[0x277CCABB0];
    [v9 verticalAccuracy];
    v69 = [v68 numberWithDouble:?];
    v70 = MEMORY[0x277CCABB0];
    [v9 speedAccuracy];
    v71 = [v70 numberWithDouble:?];
    v72 = MEMORY[0x277CCABB0];
    [v9 courseAccuracy];
    v73 = [v72 numberWithDouble:?];
    LODWORD(v112) = v65;
    v45 = [v114 initWithLatitude:v120 longitude:v117 altitude:v116 speed:v115 course:v61 floor:v64 locationType:v112 horizontalAccuracy:v67 verticalAccuracy:v69 speedAccuracy:v71 courseAccuracy:v73];

    if (v62)
    {
    }

    locationCoordinatesStreamSource = self->_locationCoordinatesStreamSource;
    v75 = [v9 timestamp];
    [v75 timeIntervalSinceReferenceDate];
    [(BMSource *)locationCoordinatesStreamSource sendEvent:v45 timestamp:?];

    v76 = +[_DKLocationCoordinatesMonitor log];
    v7 = v122;
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
    {
      [_DKLocationCoordinatesMonitor locationManager:v76 didUpdateLocations:?];
    }

    v6 = v124;
    goto LABEL_33;
  }

LABEL_34:
  v77 = [v9 cd_privacyPreservingLocationHashWithLevel:16];
  v78 = v77;
  if (v77 == self->_lastLocationGeoHash300m)
  {
    v40 = +[_DKLocationCoordinatesMonitor log];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      [_DKLocationCoordinatesMonitor locationManager:didUpdateLocations:];
    }
  }

  else
  {
    self->_lastLocationGeoHash300m = v77;
    v79 = [(_DKLocationCoordinatesMonitor *)self home];

    if (v79)
    {
      v80 = objc_alloc(MEMORY[0x277CE41F8]);
      v81 = [(_DKLocationCoordinatesMonitor *)self home];
      [v81 latitude];
      v83 = v82;
      v84 = [(_DKLocationCoordinatesMonitor *)self home];
      [v84 longitude];
      v86 = [v80 initWithLatitude:v83 longitude:v85];
      [v9 distanceFromLocation:v86];
      v88 = v87;

      v121 = [(_DKLocationCoordinatesMonitor *)self distanceRangeFrom:v88];
    }

    else
    {
      v121 = 0;
    }

    v89 = [(_DKLocationCoordinatesMonitor *)self work];

    v123 = v7;
    v125 = v6;
    if (v89)
    {
      v90 = objc_alloc(MEMORY[0x277CE41F8]);
      v91 = [(_DKLocationCoordinatesMonitor *)self work];
      [v91 latitude];
      v93 = v92;
      v94 = [(_DKLocationCoordinatesMonitor *)self work];
      [v94 longitude];
      v96 = [v90 initWithLatitude:v93 longitude:v95];
      [v9 distanceFromLocation:v96];
      v98 = v97;

      v118 = [(_DKLocationCoordinatesMonitor *)self distanceRangeFrom:v98];
    }

    else
    {
      v118 = 0;
    }

    v99 = [v9 cd_privacyPreservingLocationHashWithLevel:7];
    v100 = [v9 cd_privacyPreservingLocationHashWithLevel:13];
    v101 = objc_alloc(MEMORY[0x277CF12A0]);
    v102 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v78];
    v103 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v100];
    v104 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v99];
    v105 = [v9 floor];
    if (v105)
    {
      v106 = MEMORY[0x277CCABB0];
      v99 = [v9 floor];
      v107 = [v106 numberWithInteger:{objc_msgSend(v99, "level")}];
    }

    else
    {
      v107 = 0;
    }

    [v9 speed];
    v108 = [(_DKLocationCoordinatesMonitor *)self speedRangeFrom:?];
    [v9 altitude];
    v40 = [v101 initWithLocationHashAt300Meters:v102 locationHashAt2500Meters:v103 locationHashAt156Kilometers:v104 distanceFromHomeOfCurrentLocationInMeters:0 distanceFromWorkOfCurrentLocationInMeters:0 distanceFromSchoolOfCurrentLocationInMeters:0 distanceFromGymOfCurrentLocationInMeters:0 floor:v107 speedBucket:__PAIR64__(-[_DKLocationCoordinatesMonitor altitudeRangeFrom:](self altitudeBucket:"altitudeRangeFrom:") distanceBucketFromHome:v108) distanceBucketFromWork:__PAIR64__(v118 distanceBucketFromGym:v121) distanceBucketFromSchool:0];
    if (v105)
    {
    }

    locationHashedCoordinatesStreamSource = self->_locationHashedCoordinatesStreamSource;
    v6 = v125;
    if (locationHashedCoordinatesStreamSource)
    {
      v110 = [v9 timestamp];
      [v110 timeIntervalSinceReferenceDate];
      [(BMSource *)locationHashedCoordinatesStreamSource sendEvent:v40 timestamp:?];

      v111 = +[_DKLocationCoordinatesMonitor log];
      v7 = v123;
      if (os_log_type_enabled(v111, OS_LOG_TYPE_DEBUG))
      {
        [_DKLocationCoordinatesMonitor locationManager:didUpdateLocations:];
      }
    }

    else
    {
      v111 = +[_DKLocationCoordinatesMonitor log];
      v7 = v123;
      if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
      {
        [_DKLocationCoordinatesMonitor locationManager:didUpdateLocations:];
      }
    }
  }

LABEL_54:
}

- (int)locationTypeFrom:(int)a3
{
  if (a3 < 0xE && ((0x3FDFu >> a3) & 1) != 0)
  {
    return dword_22598EEE0[a3];
  }

  v4 = +[_DKLocationCoordinatesMonitor log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [_DKLocationCoordinatesMonitor locationTypeFrom:];
  }

  return 0;
}

- (int)speedRangeFrom:(double)a3
{
  if (a3 < 0.0)
  {
    return 0;
  }

  if (a3 <= 2.0)
  {
    return 1;
  }

  if (a3 <= 4.0)
  {
    return 2;
  }

  if (a3 <= 6.0)
  {
    return 3;
  }

  if (a3 <= 8.0)
  {
    return 4;
  }

  if (a3 <= 10.0)
  {
    return 5;
  }

  if (a3 <= 12.0)
  {
    return 6;
  }

  if (a3 <= 16.0)
  {
    return 7;
  }

  if (a3 <= 20.0)
  {
    return 8;
  }

  if (a3 <= 24.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = 10;
  }

  if (a3 > 24.0)
  {
    return v4;
  }

  else
  {
    return 9;
  }
}

- (int)altitudeRangeFrom:(double)a3
{
  if (a3 < 0.0)
  {
    return 0;
  }

  if (a3 <= 100.0)
  {
    return 1;
  }

  if (a3 <= 200.0)
  {
    return 2;
  }

  if (a3 <= 500.0)
  {
    return 3;
  }

  if (a3 <= 1000.0)
  {
    return 4;
  }

  if (a3 <= 2000.0)
  {
    return 5;
  }

  if (a3 <= 3000.0)
  {
    return 6;
  }

  if (a3 <= 4000.0)
  {
    return 7;
  }

  if (a3 <= 5000.0)
  {
    return 8;
  }

  return 9;
}

- (int)distanceRangeFrom:(double)a3
{
  if (a3 < 0.0)
  {
    return 0;
  }

  if (a3 <= 50.0)
  {
    return 1;
  }

  if (a3 <= 200.0)
  {
    return 2;
  }

  if (a3 <= 500.0)
  {
    return 3;
  }

  if (a3 <= 1000.0)
  {
    return 4;
  }

  if (a3 <= 2000.0)
  {
    return 5;
  }

  if (a3 <= 3000.0)
  {
    return 6;
  }

  if (a3 <= 4000.0)
  {
    return 7;
  }

  if (a3 <= 5000.0)
  {
    return 8;
  }

  return 9;
}

- (uint64_t)init
{
  dlerror();
  v0 = abort_report_np();
  return [(_DKLocationCoordinatesMonitor *)v0 init];
}

- (void)locationManager:didFailWithError:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:(NSObject *)a3 didUpdateLocations:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 timestamp];
  v6 = [*(a2 + 168) timestamp];
  [v5 timeIntervalSinceDate:v6];
  v9 = 134217984;
  v10 = fabs(v7);
  _os_log_debug_impl(&dword_22595A000, a3, OS_LOG_TYPE_DEBUG, "Location manager received location. Time since last location: %f", &v9, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:(void *)a1 didUpdateLocations:(NSObject *)a2 .cold.2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 timestamp];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(&dword_22595A000, a2, OS_LOG_TYPE_DEBUG, "Dropping duplicate location with timestamp: %@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:(uint64_t)a3 didUpdateLocations:(uint64_t)a4 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_22595A000, a1, a3, "Skipping internal location since the time interval is less than minimum time : %f", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:didUpdateLocations:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_0(&dword_22595A000, v0, v1, "Wrote location to external biome stream,GeoHashAt300m: %llu", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:didUpdateLocations:.cold.7()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_0(&dword_22595A000, v0, v1, "Skipping hashed location since the hash value is the same : %llu", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)locationTypeFrom:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

@end