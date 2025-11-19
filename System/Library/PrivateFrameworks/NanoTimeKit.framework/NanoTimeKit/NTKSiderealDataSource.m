@interface NTKSiderealDataSource
+ ($F24F406B2B787EFB06265DBA3D28CBD5)_geoLocationForLocation:(id)a3;
+ (BOOL)_date:(id)a3 isBetweenDate:(id)a4 andDate:(id)a5;
+ (double)reverseInterpolateBetweenCalendricalMidnights:(id)a3;
+ (id)_dayEventsFromEvents:(id)a3;
+ (id)_eventWithType:(int64_t)a3 time:(id)a4;
+ (id)_solarEventsForLocation:(id)a3 atDate:(id)a4;
+ (id)_solarSectorsForEvents:(id)a3;
+ (id)_waypointsForTransitInfo:(id)a3 andEvents:(id)a4;
+ (id)siderealDataForLocation:(id)a3 atDate:(id)a4 useXR:(BOOL)a5;
+ (int64_t)_endOfDayEventFollowingSolarEvent:(int64_t)a3;
+ (int64_t)_startOfDayEventPreceedingFirstSolarEvent:(int64_t)a3;
- (BOOL)_didLocationChangeSignificantlyFromOldLocation:(id)a3 toNewLocation:(id)a4;
- (NTKSiderealDataSource)initWithXR:(BOOL)a3;
- (void)_locationManagerUpdatedLocation:(id)a3 error:(id)a4;
- (void)_notifySiderealDataDidUpdate:(id)a3;
- (void)_updateData;
- (void)_updateDataIfNeededToDate:(id)a3 atLocation:(id)a4;
- (void)_updateForSignificantTimeChange:(id)a3;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)startLocationUpdates;
- (void)stopLocationUpdates;
@end

@implementation NTKSiderealDataSource

- (NTKSiderealDataSource)initWithXR:(BOOL)a3
{
  v27.receiver = self;
  v27.super_class = NTKSiderealDataSource;
  v4 = [(NTKSiderealDataSource *)&v27 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v4->_observers;
    v4->_observers = v5;

    v4->_useXR = a3;
    v4->_locationManagerRefCount = 0;
    v7 = +[NTKSiderealData loadCached];
    v8 = v7;
    if (v7 && v4->_useXR == [v7 useXR])
    {
      v9 = _NTKLoggingObjectForDomain(36, "NTKLoggingDomainSidereal");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22D9C5000, v9, OS_LOG_TYPE_DEFAULT, "NTKSiderealDataSource: found cached data.", buf, 2u);
      }

      v10 = [v8 referenceLocation];
      currentReferenceLocation = v4->_currentReferenceLocation;
      v4->_currentReferenceLocation = v10;

      v12 = [v8 referenceDate];
      currentReferenceDate = v4->_currentReferenceDate;
      v4->_currentReferenceDate = v12;

      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __36__NTKSiderealDataSource_initWithXR___block_invoke;
      v24[3] = &unk_278780600;
      v25 = v8;
      v14 = [NTKPromise promiseNamed:@"Cached Sidereal Data" withBlock:v24];
      currentData = v4->_currentData;
      v4->_currentData = v14;
    }

    else
    {
      v16 = _NTKLoggingObjectForDomain(36, "NTKLoggingDomainSidereal");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22D9C5000, v16, OS_LOG_TYPE_DEFAULT, "NTKSiderealDataSource: could not find cached data.", buf, 2u);
      }

      v17 = +[NTKLocationManager sharedLocationManager];
      v18 = [v17 anyLocation];
      v19 = v4->_currentReferenceLocation;
      v4->_currentReferenceLocation = v18;

      v20 = +[NTKDate faceDate];
      v21 = v4->_currentReferenceDate;
      v4->_currentReferenceDate = v20;

      [(NTKSiderealDataSource *)v4 _updateData];
    }

    v22 = [MEMORY[0x277CCAB98] defaultCenter];
    [v22 addObserver:v4 selector:sel__updateForSignificantTimeChange_ name:*MEMORY[0x277CBE780] object:0];
    [v22 addObserver:v4 selector:sel__updateForSignificantTimeChange_ name:*MEMORY[0x277D766F0] object:0];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277CBE780] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D766F0] object:0];

  v4.receiver = self;
  v4.super_class = NTKSiderealDataSource;
  [(NTKSiderealDataSource *)&v4 dealloc];
}

- (void)addObserver:(id)a3
{
  observers = self->_observers;
  v5 = a3;
  [(NSHashTable *)observers addObject:v5];
  v6 = [(NTKPromise *)self->_currentData object];
  [v5 dataSourceDidUpdateSolarData:v6];
}

- (void)_updateData
{
  v3 = _NTKLoggingObjectForDomain(36, "NTKLoggingDomainSidereal");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "NTKSiderealDataSource: Updating data", buf, 2u);
  }

  v4 = self->_currentReferenceLocation;
  v5 = self->_currentReferenceDate;
  useXR = self->_useXR;
  objc_initWeak(buf, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __36__NTKSiderealDataSource__updateData__block_invoke;
  v11[3] = &unk_278780628;
  objc_copyWeak(&v14, buf);
  v7 = v4;
  v12 = v7;
  v8 = v5;
  v13 = v8;
  v15 = useXR;
  v9 = [NTKPromise promiseNamed:@"Sidereal Data Source Load" withBlock:v11];
  currentData = self->_currentData;
  self->_currentData = v9;

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

id __36__NTKSiderealDataSource__updateData__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [NTKSiderealDataSource siderealDataForLocation:*(a1 + 32) atDate:*(a1 + 40) useXR:*(a1 + 56)];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __36__NTKSiderealDataSource__updateData__block_invoke_2;
    v7[3] = &unk_27877E438;
    v4 = v3;
    v8 = v4;
    v9 = WeakRetained;
    dispatch_async(MEMORY[0x277D85CD0], v7);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __36__NTKSiderealDataSource__updateData__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) save];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  return [v2 _notifySiderealDataDidUpdate:v3];
}

- (void)_updateDataIfNeededToDate:(id)a3 atLocation:(id)a4
{
  v10 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = [v8 isDate:v10 inSameDayAsDate:self->_currentReferenceDate];

  if ((v9 & 1) == 0)
  {
    objc_storeStrong(&self->_currentReferenceDate, a3);
  }

  if (!v7 || !self->_currentReferenceDate || [(NTKSiderealDataSource *)self _didLocationChangeSignificantlyFromOldLocation:self->_currentReferenceLocation toNewLocation:v7])
  {
    objc_storeStrong(&self->_currentReferenceLocation, a4);
LABEL_7:
    [(NTKSiderealDataSource *)self _updateData];
    goto LABEL_8;
  }

  if ((v9 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_8:
}

- (void)_notifySiderealDataDidUpdate:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _NTKLoggingObjectForDomain(36, "NTKLoggingDomainSidereal");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 solarEvents];
    v7 = [v4 daytimeEvents];
    v8 = [v4 waypoints];
    *buf = 138412802;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    v23 = 2112;
    v24 = v8;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_INFO, "[NTKSiderealDataSource] _notifyDidUpdate: solarEvents: %@ dayAngles: %@ waypoints: %@", buf, 0x20u);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = self->_observers;
  v10 = [(NSHashTable *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v13++) dataSourceDidUpdateSolarData:{v4, v14}];
      }

      while (v11 != v13);
      v11 = [(NSHashTable *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)_updateForSignificantTimeChange:(id)a3
{
  v5 = +[NTKTimeOffsetManager sharedManager];
  v4 = [v5 faceDisplayTime];
  [(NTKSiderealDataSource *)self updateModelWithDate:v4];
}

- (void)_locationManagerUpdatedLocation:(id)a3 error:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _NTKLoggingObjectForDomain(36, "NTKLoggingDomainSidereal");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138478083;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_22D9C5000, v8, OS_LOG_TYPE_DEFAULT, "[NTKSiderealDataSource] _locationManagerUpdatedLocation with location:%{private}@ and error:%@", &v9, 0x16u);
  }

  [(NTKSiderealDataSource *)self _updateDataIfNeededToDate:self->_currentReferenceDate atLocation:v6];
}

- (void)startLocationUpdates
{
  locationManagerRefCount = self->_locationManagerRefCount;
  if (!locationManagerRefCount)
  {
    v4 = _NTKLoggingObjectForDomain(36, "NTKLoggingDomainSidereal");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_22D9C5000, v4, OS_LOG_TYPE_INFO, "[NTKSiderealDataSource] startLocationUpdates", buf, 2u);
    }

    objc_initWeak(buf, self);
    v5 = +[NTKLocationManager sharedLocationManager];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __45__NTKSiderealDataSource_startLocationUpdates__block_invoke;
    v8[3] = &unk_278780650;
    objc_copyWeak(&v9, buf);
    v6 = [v5 startLocationUpdatesWithIdentifier:@"ntk.sidereal.controller" handler:v8];
    locationManagerToken = self->_locationManagerToken;
    self->_locationManagerToken = v6;

    objc_destroyWeak(&v9);
    objc_destroyWeak(buf);
    locationManagerRefCount = self->_locationManagerRefCount;
  }

  self->_locationManagerRefCount = locationManagerRefCount + 1;
}

void __45__NTKSiderealDataSource_startLocationUpdates__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _locationManagerUpdatedLocation:v7 error:v6];
}

- (void)stopLocationUpdates
{
  v4 = self->_locationManagerRefCount - 1;
  self->_locationManagerRefCount = v4;
  if (!v4)
  {
    v10 = v2;
    v11 = v3;
    v6 = _NTKLoggingObjectForDomain(36, "NTKLoggingDomainSidereal");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_22D9C5000, v6, OS_LOG_TYPE_INFO, "[NTKSiderealDataSource] stopLocationUpdates", v9, 2u);
    }

    if (self->_locationManagerToken)
    {
      v7 = +[NTKLocationManager sharedLocationManager];
      [v7 stopLocationUpdatesForToken:self->_locationManagerToken];

      locationManagerToken = self->_locationManagerToken;
      self->_locationManagerToken = 0;
    }
  }
}

- (BOOL)_didLocationChangeSignificantlyFromOldLocation:(id)a3 toNewLocation:(id)a4
{
  v10 = *MEMORY[0x277D85DE8];
  [a3 distanceFromLocation:a4];
  v5 = v4;
  v6 = _NTKLoggingObjectForDomain(36, "NTKLoggingDomainSidereal");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 134217984;
    v9 = v5;
    _os_log_impl(&dword_22D9C5000, v6, OS_LOG_TYPE_INFO, "[NTKSiderealDataSource] _didLocationChangeSignificantlyFromOldLocation:newLocation: %f", &v8, 0xCu);
  }

  return v5 >= 250000.0;
}

+ (id)siderealDataForLocation:(id)a3 atDate:(id)a4 useXR:(BOOL)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _NTKLoggingObjectForDomain(36, "NTKLoggingDomainSidereal");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v40 = "+[NTKSiderealDataSource siderealDataForLocation:atDate:useXR:]";
    _os_log_impl(&dword_22D9C5000, v8, OS_LOG_TYPE_INFO, "[NTKSiderealDataSource] %s", buf, 0xCu);
  }

  v36 = v6;
  [NTKSiderealDataSource _geoLocationForLocation:v6];
  v10 = v9;
  v12 = v11;
  v13 = [off_27877BED8 transitInfoForDate:v7 location:? sunAltitude:?];
  v14 = _NTKLoggingObjectForDomain(36, "NTKLoggingDomainSidereal");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v40 = v13;
    _os_log_impl(&dword_22D9C5000, v14, OS_LOG_TYPE_INFO, "[NTKSiderealDataSource] Updated sunrise/sunset transit info: %@", buf, 0xCu);
  }

  v15 = v13;
  v16 = [v13 solarNoon];
  v17 = [objc_alloc(MEMORY[0x277D0EB38]) initWithLocation:v16 date:0 body:{v10, v12}];
  v18 = _NTKLoggingObjectForDomain(36, "NTKLoggingDomainSidereal");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    [v17 altitude];
    *buf = 134217984;
    v40 = v19;
    _os_log_impl(&dword_22D9C5000, v18, OS_LOG_TYPE_INFO, "[NTKSiderealDataSource] solar noon altitude: %f", buf, 0xCu);
  }

  v34 = v17;

  v20 = NTKStartOfDayForDate(v7);
  v21 = v7;
  v22 = NTKEndOfDayForDate(v7);
  v35 = v16;
  [NTKSiderealDataSource reverseInterpolateBetweenCalendricalMidnights:v16];
  v23 = malloc_type_malloc(0x5A4uLL, 0x100004052888210uLL);
  for (i = 0; i != 361; ++i)
  {
    v25 = NTKInterpolateBetweenDates(v20, v22, (i / 360.0));
    v26 = [objc_alloc(MEMORY[0x277D0EB38]) initWithLocation:v25 date:0 body:{v10, v12}];
    [v26 altitude];
    CLKMapFractionIntoRange();
    *&v27 = v27;
    v23[i] = LODWORD(v27);
  }

  v28 = [NTKSiderealDataSource _solarEventsForLocation:v21 atDate:v10, v12];
  v29 = [NTKSiderealDataSource _solarSectorsForEvents:v28];
  v30 = [NTKSiderealDataSource _dayEventsFromEvents:v28];
  v31 = [NTKSiderealDataSource _waypointsForTransitInfo:v15 andEvents:v28];
  LOBYTE(v33) = a5;
  v38 = [[NTKSiderealData alloc] initWithReferenceDate:v21 referenceLocation:v36 sunriseSunsetInfo:v15 solarEvents:v28 daytimeEvents:v30 sectors:v29 waypoints:v31 altitudes:v23 useXR:v33];
  free(v23);

  return v38;
}

+ (id)_solarEventsForLocation:(id)a3 atDate:(id)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v36 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = NTKStartOfDayForDate(v6);
  v8 = NTKEndOfDayForDate(v6);
  [v7 timeIntervalSinceReferenceDate];
  v10 = v9;
  [v8 timeIntervalSinceReferenceDate];
  v12 = v11;
  v13 = objc_alloc(MEMORY[0x277D0ED50]);
  v14 = [v13 initWithLocation:var0 time:var1 altitudeInDegrees:v10 accuracy:{*MEMORY[0x277D0E7C0], 60.0}];
  v15 = [MEMORY[0x277CBEB18] array];
  v16 = 0;
  do
  {
    v17 = v16 + 1;
    if (v16 + 1) <= 9 && ((0x1EFu >> v16))
    {
      [v14 nextEventOfType:dword_22DCE8338[v16]];
      if (v18 != 0.0 && v18 < v12)
      {
        v20 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
        v21 = [NTKSiderealDataSource _eventWithType:v17 time:v20];
        [v15 addObject:v21];
      }
    }

    v16 = v17;
  }

  while (v17 != 9);
  [v15 sortUsingComparator:&__block_literal_global_41];
  v22 = [MEMORY[0x277CBEB40] orderedSetWithArray:v15];
  if ([v22 count])
  {
    v23 = [v22 firstObject];
    v24 = +[NTKSiderealDataSource _startOfDayEventPreceedingFirstSolarEvent:](NTKSiderealDataSource, "_startOfDayEventPreceedingFirstSolarEvent:", [v23 type]);

    v25 = [v22 lastObject];
    v26 = +[NTKSiderealDataSource _endOfDayEventFollowingSolarEvent:](NTKSiderealDataSource, "_endOfDayEventFollowingSolarEvent:", [v25 type]);
  }

  else
  {
    if (geo_isDayLightForLocation())
    {
      v26 = 5;
    }

    else
    {
      v26 = 0;
    }

    v24 = v26;
  }

  v27 = [NTKSiderealSolarEvent eventWithType:v24 degree:0.0];
  [v22 insertObject:v27 atIndex:0];
  v28 = [NTKSiderealSolarEvent eventWithType:v26 degree:360.0];
  [v22 addObject:v28];
  v29 = _NTKLoggingObjectForDomain(36, "NTKLoggingDomainSidereal");
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v33 = "+[NTKSiderealDataSource _solarEventsForLocation:atDate:]";
    v34 = 2112;
    v35 = v22;
    _os_log_impl(&dword_22D9C5000, v29, OS_LOG_TYPE_INFO, "[NTKSiderealDataSource] %s: updated solar events: %@", buf, 0x16u);
  }

  v30 = [v22 copy];

  return v30;
}

uint64_t __56__NTKSiderealDataSource__solarEventsForLocation_atDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 time];
  v6 = [v4 time];

  v7 = [v5 compare:v6];
  return v7;
}

+ (id)_dayEventsFromEvents:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAC30];
  v4 = a3;
  v5 = [v3 predicateWithBlock:&__block_literal_global_193];
  v6 = [v4 filteredOrderedSetUsingPredicate:v5];

  if ([v6 count] < 2)
  {
    v11 = _NTKLoggingObjectForDomain(36, "NTKLoggingDomainSidereal");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [NTKSiderealDataSource _dayEventsFromEvents:v11];
    }

    v10 = [MEMORY[0x277CBEB70] orderedSet];
  }

  else
  {
    v7 = MEMORY[0x277CBEB70];
    v8 = [v6 firstObject];
    v9 = [v6 lastObject];
    v10 = [v7 orderedSetWithObjects:{v8, v9, 0}];
  }

  v12 = _NTKLoggingObjectForDomain(36, "NTKLoggingDomainSidereal");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = "+[NTKSiderealDataSource _dayEventsFromEvents:]";
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_22D9C5000, v12, OS_LOG_TYPE_INFO, "[NTKSiderealDataSource] %s: updated day events: %@", buf, 0x16u);
  }

  v13 = [v10 copy];

  return v13;
}

+ (id)_solarSectorsForEvents:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB40] orderedSet];
  if ([v3 count] != 1)
  {
    v5 = 0;
    do
    {
      v6 = [v3 objectAtIndexedSubscript:v5];
      v7 = [v3 objectAtIndexedSubscript:{++v5 % objc_msgSend(v3, "count")}];
      v8 = [[NTKSiderealSector alloc] initWithStartingEvent:v6 endingEvent:v7];
      if (![(NTKSiderealSector *)v8 type])
      {
        v9 = [(NTKSiderealSector *)v8 startingEvent];
        [v9 angle];
        v11 = 4.71238898 - v10;

        v12 = [(NTKSiderealSector *)v8 endingEvent];
        [v12 angle];
        v14 = 4.71238898 - v13;

        v15 = 0.0;
        if (vabds_f32(v14, v11) > 3.14159265)
        {
          v17 = __sincosf_stret(v11);
          *&v16 = __PAIR64__(LODWORD(v17.__sinval), LODWORD(v17.__cosval));
          v22 = v16;
          v18 = __sincosf_stret(v14);
          v15 = COERCE_DOUBLE(vmul_f32(vadd_f32(*&v22, __PAIR64__(LODWORD(v18.__sinval), LODWORD(v18.__cosval))), 0x3F0000003F000000));
        }

        [(NTKSiderealSector *)v8 setGradientStartPoint:v15, v22];
        v19 = __sincosf_stret((v11 + v14) * 0.5);
        [(NTKSiderealSector *)v8 setGradientEndPoint:COERCE_DOUBLE(__PAIR64__(LODWORD(v19.__sinval), LODWORD(v19.__cosval)))];
      }

      [v4 addObject:v8];
    }

    while ([v3 count] - 1 > v5);
  }

  v20 = [v4 copy];

  return v20;
}

+ (id)_waypointsForTransitInfo:(id)a3 andEvents:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB18] array];
  v8 = [v5 solarNoon];

  if (v8)
  {
    v9 = [v5 solarNoon];
    [NTKSiderealDataSource reverseInterpolateBetweenCalendricalMidnights:v9];
    [NTKSiderealDataSource _solarPercentageToDegree:?];
    v10 = [NTKSiderealWaypoint waypointWithType:0 degree:?];
    [v7 addObject:v10];
  }

  v11 = [v5 solarMidnight];

  if (v11)
  {
    v12 = [v5 solarMidnight];
    [NTKSiderealDataSource reverseInterpolateBetweenCalendricalMidnights:v12];
    [NTKSiderealDataSource _solarPercentageToDegree:?];
    v13 = [NTKSiderealWaypoint waypointWithType:1 degree:?];
    [v7 addObject:v13];
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __60__NTKSiderealDataSource__waypointsForTransitInfo_andEvents___block_invoke;
  v18[3] = &unk_2787806B8;
  v14 = v7;
  v19 = v14;
  [v6 enumerateObjectsUsingBlock:v18];
  v15 = _NTKLoggingObjectForDomain(36, "NTKLoggingDomainSidereal");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v21 = "+[NTKSiderealDataSource _waypointsForTransitInfo:andEvents:]";
    v22 = 2112;
    v23 = v14;
    _os_log_impl(&dword_22D9C5000, v15, OS_LOG_TYPE_INFO, "[NTKSiderealDataSource] %s: updated waypoints: %@", buf, 0x16u);
  }

  v16 = [v14 copy];

  return v16;
}

void __60__NTKSiderealDataSource__waypointsForTransitInfo_andEvents___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 type] != 5 && objc_msgSend(v5, "type"))
  {
    v3 = *(a1 + 32);
    v4 = [NTKSiderealWaypoint waypointFromSolarEvent:v5];
    [v3 addObject:v4];
  }
}

+ (id)_eventWithType:(int64_t)a3 time:(id)a4
{
  v5 = a4;
  [NTKSiderealDataSource reverseInterpolateBetweenCalendricalMidnights:v5];
  v7 = [NTKSiderealSolarEvent eventWithType:a3 time:v5 degree:v6 * 360.0];

  return v7;
}

+ (int64_t)_startOfDayEventPreceedingFirstSolarEvent:(int64_t)a3
{
  if (a3 >= 1)
  {
    return a3 - 1;
  }

  else
  {
    return 9;
  }
}

+ (int64_t)_endOfDayEventFollowingSolarEvent:(int64_t)a3
{
  if (a3 <= 8)
  {
    return a3 + 1;
  }

  else
  {
    return 0;
  }
}

+ (BOOL)_date:(id)a3 isBetweenDate:(id)a4 andDate:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [v7 compare:a4] != -1 && objc_msgSend(v7, "compare:", v8) != 1;

  return v9;
}

+ (double)reverseInterpolateBetweenCalendricalMidnights:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  objc_sync_enter(v5);
  if (!reverseInterpolateBetweenCalendricalMidnights___currentCalendar)
  {
    v6 = [MEMORY[0x277CBEA80] autoupdatingCurrentCalendar];
    v7 = reverseInterpolateBetweenCalendricalMidnights___currentCalendar;
    reverseInterpolateBetweenCalendricalMidnights___currentCalendar = v6;
  }

  if (!reverseInterpolateBetweenCalendricalMidnights___cachedDate || ([reverseInterpolateBetweenCalendricalMidnights___currentCalendar isDate:v4 inSameDayAsDate:?] & 1) == 0)
  {
    objc_storeStrong(&reverseInterpolateBetweenCalendricalMidnights___cachedDate, a3);
    v8 = NTKStartOfDayForDate(v4);
    v9 = reverseInterpolateBetweenCalendricalMidnights___cachedStartOfDay;
    reverseInterpolateBetweenCalendricalMidnights___cachedStartOfDay = v8;

    v10 = NTKStartOfNextDayForDate(v4);
    v11 = reverseInterpolateBetweenCalendricalMidnights___cachedStartOfNextDay;
    reverseInterpolateBetweenCalendricalMidnights___cachedStartOfNextDay = v10;
  }

  v12 = NTKPercentageOfDayDoneForDateWithStartAndEnd(v4, reverseInterpolateBetweenCalendricalMidnights___cachedStartOfDay, reverseInterpolateBetweenCalendricalMidnights___cachedStartOfNextDay);
  objc_sync_exit(v5);

  return v12;
}

+ ($F24F406B2B787EFB06265DBA3D28CBD5)_geoLocationForLocation:(id)a3
{
  v3 = a3;
  [v3 coordinate];
  v5 = v4;
  [v3 coordinate];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.var1 = v9;
  result.var0 = v8;
  return result;
}

+ (void)_dayEventsFromEvents:(os_log_t)log .cold.1(os_log_t log)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136315394;
  v2 = "+[NTKSiderealDataSource _dayEventsFromEvents:]";
  v3 = 2112;
  v4 = 0;
  _os_log_error_impl(&dword_22D9C5000, log, OS_LOG_TYPE_ERROR, "[NTKSiderealDataSource] %s: Something has gone wrong calculating day events. We found none or 1, which isn't good. daytimeEvents: %@", &v1, 0x16u);
}

@end