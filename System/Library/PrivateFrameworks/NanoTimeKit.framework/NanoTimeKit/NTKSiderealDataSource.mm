@interface NTKSiderealDataSource
+ ($F24F406B2B787EFB06265DBA3D28CBD5)_geoLocationForLocation:(id)location;
+ (BOOL)_date:(id)_date isBetweenDate:(id)date andDate:(id)andDate;
+ (double)reverseInterpolateBetweenCalendricalMidnights:(id)midnights;
+ (id)_dayEventsFromEvents:(id)events;
+ (id)_eventWithType:(int64_t)type time:(id)time;
+ (id)_solarEventsForLocation:(id)location atDate:(id)date;
+ (id)_solarSectorsForEvents:(id)events;
+ (id)_waypointsForTransitInfo:(id)info andEvents:(id)events;
+ (id)siderealDataForLocation:(id)location atDate:(id)date useXR:(BOOL)r;
+ (int64_t)_endOfDayEventFollowingSolarEvent:(int64_t)event;
+ (int64_t)_startOfDayEventPreceedingFirstSolarEvent:(int64_t)event;
- (BOOL)_didLocationChangeSignificantlyFromOldLocation:(id)location toNewLocation:(id)newLocation;
- (NTKSiderealDataSource)initWithXR:(BOOL)r;
- (void)_locationManagerUpdatedLocation:(id)location error:(id)error;
- (void)_notifySiderealDataDidUpdate:(id)update;
- (void)_updateData;
- (void)_updateDataIfNeededToDate:(id)date atLocation:(id)location;
- (void)_updateForSignificantTimeChange:(id)change;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)startLocationUpdates;
- (void)stopLocationUpdates;
@end

@implementation NTKSiderealDataSource

- (NTKSiderealDataSource)initWithXR:(BOOL)r
{
  v27.receiver = self;
  v27.super_class = NTKSiderealDataSource;
  v4 = [(NTKSiderealDataSource *)&v27 init];
  if (v4)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v4->_observers;
    v4->_observers = weakObjectsHashTable;

    v4->_useXR = r;
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

      referenceLocation = [v8 referenceLocation];
      currentReferenceLocation = v4->_currentReferenceLocation;
      v4->_currentReferenceLocation = referenceLocation;

      referenceDate = [v8 referenceDate];
      currentReferenceDate = v4->_currentReferenceDate;
      v4->_currentReferenceDate = referenceDate;

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
      anyLocation = [v17 anyLocation];
      v19 = v4->_currentReferenceLocation;
      v4->_currentReferenceLocation = anyLocation;

      v20 = +[NTKDate faceDate];
      v21 = v4->_currentReferenceDate;
      v4->_currentReferenceDate = v20;

      [(NTKSiderealDataSource *)v4 _updateData];
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__updateForSignificantTimeChange_ name:*MEMORY[0x277CBE780] object:0];
    [defaultCenter addObserver:v4 selector:sel__updateForSignificantTimeChange_ name:*MEMORY[0x277D766F0] object:0];
  }

  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CBE780] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D766F0] object:0];

  v4.receiver = self;
  v4.super_class = NTKSiderealDataSource;
  [(NTKSiderealDataSource *)&v4 dealloc];
}

- (void)addObserver:(id)observer
{
  observers = self->_observers;
  observerCopy = observer;
  [(NSHashTable *)observers addObject:observerCopy];
  object = [(NTKPromise *)self->_currentData object];
  [observerCopy dataSourceDidUpdateSolarData:object];
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

- (void)_updateDataIfNeededToDate:(id)date atLocation:(id)location
{
  dateCopy = date;
  locationCopy = location;
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = [currentCalendar isDate:dateCopy inSameDayAsDate:self->_currentReferenceDate];

  if ((v9 & 1) == 0)
  {
    objc_storeStrong(&self->_currentReferenceDate, date);
  }

  if (!locationCopy || !self->_currentReferenceDate || [(NTKSiderealDataSource *)self _didLocationChangeSignificantlyFromOldLocation:self->_currentReferenceLocation toNewLocation:locationCopy])
  {
    objc_storeStrong(&self->_currentReferenceLocation, location);
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

- (void)_notifySiderealDataDidUpdate:(id)update
{
  v25 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = _NTKLoggingObjectForDomain(36, "NTKLoggingDomainSidereal");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    solarEvents = [updateCopy solarEvents];
    daytimeEvents = [updateCopy daytimeEvents];
    waypoints = [updateCopy waypoints];
    *buf = 138412802;
    v20 = solarEvents;
    v21 = 2112;
    v22 = daytimeEvents;
    v23 = 2112;
    v24 = waypoints;
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

        [*(*(&v14 + 1) + 8 * v13++) dataSourceDidUpdateSolarData:{updateCopy, v14}];
      }

      while (v11 != v13);
      v11 = [(NSHashTable *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)_updateForSignificantTimeChange:(id)change
{
  v5 = +[NTKTimeOffsetManager sharedManager];
  faceDisplayTime = [v5 faceDisplayTime];
  [(NTKSiderealDataSource *)self updateModelWithDate:faceDisplayTime];
}

- (void)_locationManagerUpdatedLocation:(id)location error:(id)error
{
  v13 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  errorCopy = error;
  v8 = _NTKLoggingObjectForDomain(36, "NTKLoggingDomainSidereal");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138478083;
    v10 = locationCopy;
    v11 = 2112;
    v12 = errorCopy;
    _os_log_impl(&dword_22D9C5000, v8, OS_LOG_TYPE_DEFAULT, "[NTKSiderealDataSource] _locationManagerUpdatedLocation with location:%{private}@ and error:%@", &v9, 0x16u);
  }

  [(NTKSiderealDataSource *)self _updateDataIfNeededToDate:self->_currentReferenceDate atLocation:locationCopy];
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

- (BOOL)_didLocationChangeSignificantlyFromOldLocation:(id)location toNewLocation:(id)newLocation
{
  v10 = *MEMORY[0x277D85DE8];
  [location distanceFromLocation:newLocation];
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

+ (id)siderealDataForLocation:(id)location atDate:(id)date useXR:(BOOL)r
{
  v41 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  dateCopy = date;
  v8 = _NTKLoggingObjectForDomain(36, "NTKLoggingDomainSidereal");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v40 = "+[NTKSiderealDataSource siderealDataForLocation:atDate:useXR:]";
    _os_log_impl(&dword_22D9C5000, v8, OS_LOG_TYPE_INFO, "[NTKSiderealDataSource] %s", buf, 0xCu);
  }

  v36 = locationCopy;
  [NTKSiderealDataSource _geoLocationForLocation:locationCopy];
  v10 = v9;
  v12 = v11;
  v13 = [off_27877BED8 transitInfoForDate:dateCopy location:? sunAltitude:?];
  v14 = _NTKLoggingObjectForDomain(36, "NTKLoggingDomainSidereal");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v40 = v13;
    _os_log_impl(&dword_22D9C5000, v14, OS_LOG_TYPE_INFO, "[NTKSiderealDataSource] Updated sunrise/sunset transit info: %@", buf, 0xCu);
  }

  v15 = v13;
  solarNoon = [v13 solarNoon];
  v17 = [objc_alloc(MEMORY[0x277D0EB38]) initWithLocation:solarNoon date:0 body:{v10, v12}];
  v18 = _NTKLoggingObjectForDomain(36, "NTKLoggingDomainSidereal");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    [v17 altitude];
    *buf = 134217984;
    v40 = v19;
    _os_log_impl(&dword_22D9C5000, v18, OS_LOG_TYPE_INFO, "[NTKSiderealDataSource] solar noon altitude: %f", buf, 0xCu);
  }

  v34 = v17;

  v20 = NTKStartOfDayForDate(dateCopy);
  v21 = dateCopy;
  v22 = NTKEndOfDayForDate(dateCopy);
  v35 = solarNoon;
  [NTKSiderealDataSource reverseInterpolateBetweenCalendricalMidnights:solarNoon];
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
  LOBYTE(v33) = r;
  v38 = [[NTKSiderealData alloc] initWithReferenceDate:v21 referenceLocation:v36 sunriseSunsetInfo:v15 solarEvents:v28 daytimeEvents:v30 sectors:v29 waypoints:v31 altitudes:v23 useXR:v33];
  free(v23);

  return v38;
}

+ (id)_solarEventsForLocation:(id)location atDate:(id)date
{
  var1 = location.var1;
  var0 = location.var0;
  v36 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v7 = NTKStartOfDayForDate(dateCopy);
  v8 = NTKEndOfDayForDate(dateCopy);
  [v7 timeIntervalSinceReferenceDate];
  v10 = v9;
  [v8 timeIntervalSinceReferenceDate];
  v12 = v11;
  v13 = objc_alloc(MEMORY[0x277D0ED50]);
  v14 = [v13 initWithLocation:var0 time:var1 altitudeInDegrees:v10 accuracy:{*MEMORY[0x277D0E7C0], 60.0}];
  array = [MEMORY[0x277CBEB18] array];
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
        [array addObject:v21];
      }
    }

    v16 = v17;
  }

  while (v17 != 9);
  [array sortUsingComparator:&__block_literal_global_41];
  v22 = [MEMORY[0x277CBEB40] orderedSetWithArray:array];
  if ([v22 count])
  {
    firstObject = [v22 firstObject];
    v24 = +[NTKSiderealDataSource _startOfDayEventPreceedingFirstSolarEvent:](NTKSiderealDataSource, "_startOfDayEventPreceedingFirstSolarEvent:", [firstObject type]);

    lastObject = [v22 lastObject];
    v26 = +[NTKSiderealDataSource _endOfDayEventFollowingSolarEvent:](NTKSiderealDataSource, "_endOfDayEventFollowingSolarEvent:", [lastObject type]);
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

+ (id)_dayEventsFromEvents:(id)events
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAC30];
  eventsCopy = events;
  v5 = [v3 predicateWithBlock:&__block_literal_global_193];
  v6 = [eventsCopy filteredOrderedSetUsingPredicate:v5];

  if ([v6 count] < 2)
  {
    v11 = _NTKLoggingObjectForDomain(36, "NTKLoggingDomainSidereal");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [NTKSiderealDataSource _dayEventsFromEvents:v11];
    }

    orderedSet = [MEMORY[0x277CBEB70] orderedSet];
  }

  else
  {
    v7 = MEMORY[0x277CBEB70];
    firstObject = [v6 firstObject];
    lastObject = [v6 lastObject];
    orderedSet = [v7 orderedSetWithObjects:{firstObject, lastObject, 0}];
  }

  v12 = _NTKLoggingObjectForDomain(36, "NTKLoggingDomainSidereal");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = "+[NTKSiderealDataSource _dayEventsFromEvents:]";
    v17 = 2112;
    v18 = orderedSet;
    _os_log_impl(&dword_22D9C5000, v12, OS_LOG_TYPE_INFO, "[NTKSiderealDataSource] %s: updated day events: %@", buf, 0x16u);
  }

  v13 = [orderedSet copy];

  return v13;
}

+ (id)_solarSectorsForEvents:(id)events
{
  eventsCopy = events;
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  if ([eventsCopy count] != 1)
  {
    v5 = 0;
    do
    {
      v6 = [eventsCopy objectAtIndexedSubscript:v5];
      v7 = [eventsCopy objectAtIndexedSubscript:{++v5 % objc_msgSend(eventsCopy, "count")}];
      v8 = [[NTKSiderealSector alloc] initWithStartingEvent:v6 endingEvent:v7];
      if (![(NTKSiderealSector *)v8 type])
      {
        startingEvent = [(NTKSiderealSector *)v8 startingEvent];
        [startingEvent angle];
        v11 = 4.71238898 - v10;

        endingEvent = [(NTKSiderealSector *)v8 endingEvent];
        [endingEvent angle];
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

      [orderedSet addObject:v8];
    }

    while ([eventsCopy count] - 1 > v5);
  }

  v20 = [orderedSet copy];

  return v20;
}

+ (id)_waypointsForTransitInfo:(id)info andEvents:(id)events
{
  v24 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  eventsCopy = events;
  array = [MEMORY[0x277CBEB18] array];
  solarNoon = [infoCopy solarNoon];

  if (solarNoon)
  {
    solarNoon2 = [infoCopy solarNoon];
    [NTKSiderealDataSource reverseInterpolateBetweenCalendricalMidnights:solarNoon2];
    [NTKSiderealDataSource _solarPercentageToDegree:?];
    v10 = [NTKSiderealWaypoint waypointWithType:0 degree:?];
    [array addObject:v10];
  }

  solarMidnight = [infoCopy solarMidnight];

  if (solarMidnight)
  {
    solarMidnight2 = [infoCopy solarMidnight];
    [NTKSiderealDataSource reverseInterpolateBetweenCalendricalMidnights:solarMidnight2];
    [NTKSiderealDataSource _solarPercentageToDegree:?];
    v13 = [NTKSiderealWaypoint waypointWithType:1 degree:?];
    [array addObject:v13];
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __60__NTKSiderealDataSource__waypointsForTransitInfo_andEvents___block_invoke;
  v18[3] = &unk_2787806B8;
  v14 = array;
  v19 = v14;
  [eventsCopy enumerateObjectsUsingBlock:v18];
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

+ (id)_eventWithType:(int64_t)type time:(id)time
{
  timeCopy = time;
  [NTKSiderealDataSource reverseInterpolateBetweenCalendricalMidnights:timeCopy];
  v7 = [NTKSiderealSolarEvent eventWithType:type time:timeCopy degree:v6 * 360.0];

  return v7;
}

+ (int64_t)_startOfDayEventPreceedingFirstSolarEvent:(int64_t)event
{
  if (event >= 1)
  {
    return event - 1;
  }

  else
  {
    return 9;
  }
}

+ (int64_t)_endOfDayEventFollowingSolarEvent:(int64_t)event
{
  if (event <= 8)
  {
    return event + 1;
  }

  else
  {
    return 0;
  }
}

+ (BOOL)_date:(id)_date isBetweenDate:(id)date andDate:(id)andDate
{
  _dateCopy = _date;
  andDateCopy = andDate;
  v9 = [_dateCopy compare:date] != -1 && objc_msgSend(_dateCopy, "compare:", andDateCopy) != 1;

  return v9;
}

+ (double)reverseInterpolateBetweenCalendricalMidnights:(id)midnights
{
  midnightsCopy = midnights;
  v5 = objc_opt_class();
  objc_sync_enter(v5);
  if (!reverseInterpolateBetweenCalendricalMidnights___currentCalendar)
  {
    autoupdatingCurrentCalendar = [MEMORY[0x277CBEA80] autoupdatingCurrentCalendar];
    v7 = reverseInterpolateBetweenCalendricalMidnights___currentCalendar;
    reverseInterpolateBetweenCalendricalMidnights___currentCalendar = autoupdatingCurrentCalendar;
  }

  if (!reverseInterpolateBetweenCalendricalMidnights___cachedDate || ([reverseInterpolateBetweenCalendricalMidnights___currentCalendar isDate:midnightsCopy inSameDayAsDate:?] & 1) == 0)
  {
    objc_storeStrong(&reverseInterpolateBetweenCalendricalMidnights___cachedDate, midnights);
    v8 = NTKStartOfDayForDate(midnightsCopy);
    v9 = reverseInterpolateBetweenCalendricalMidnights___cachedStartOfDay;
    reverseInterpolateBetweenCalendricalMidnights___cachedStartOfDay = v8;

    v10 = NTKStartOfNextDayForDate(midnightsCopy);
    v11 = reverseInterpolateBetweenCalendricalMidnights___cachedStartOfNextDay;
    reverseInterpolateBetweenCalendricalMidnights___cachedStartOfNextDay = v10;
  }

  v12 = NTKPercentageOfDayDoneForDateWithStartAndEnd(midnightsCopy, reverseInterpolateBetweenCalendricalMidnights___cachedStartOfDay, reverseInterpolateBetweenCalendricalMidnights___cachedStartOfNextDay);
  objc_sync_exit(v5);

  return v12;
}

+ ($F24F406B2B787EFB06265DBA3D28CBD5)_geoLocationForLocation:(id)location
{
  locationCopy = location;
  [locationCopy coordinate];
  v5 = v4;
  [locationCopy coordinate];
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