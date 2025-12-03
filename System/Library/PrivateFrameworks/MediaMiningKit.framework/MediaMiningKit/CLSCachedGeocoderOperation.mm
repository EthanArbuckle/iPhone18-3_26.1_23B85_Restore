@interface CLSCachedGeocoderOperation
+ (id)operationForceGeocoderWithLocation:(id)location;
+ (id)operationForceGeocoderWithLocation:(id)location withAccuracy:(double)accuracy;
+ (id)operationWithLocation:(id)location;
+ (id)operationWithLocation:(id)location withAccuracy:(double)accuracy;
- (CLSCachedGeocoderOperation)initWithLocation:(id)location withAccuracy:(double)accuracy;
- (id)performSynchronouslyWithLocationCache:(id)cache error:(id *)error;
- (void)_executeQueryWithResultBlock:(id)block;
- (void)_returnsResultsForPlacemarks:(id)placemarks error:(id)error resultBlock:(id)block;
- (void)_setupTimeOutForGeocoder:(id)geocoder resultBlock:(id)block;
- (void)_stopTimeOut;
- (void)_timedOutForGeocoder:(id)geocoder withResultBlock:(id)block;
@end

@implementation CLSCachedGeocoderOperation

- (void)_executeQueryWithResultBlock:(id)block
{
  v20[1] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v5 = self->_location;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_cancelled = 0;
  objc_sync_exit(selfCopy);

  objc_initWeak(&location, selfCopy);
  v7 = objc_alloc_init(MEMORY[0x277CBFBE8]);
  aBlock = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __59__CLSCachedGeocoderOperation__executeQueryWithResultBlock___block_invoke;
  v16 = &unk_2788A6FF0;
  objc_copyWeak(&v18, &location);
  v8 = blockCopy;
  v17 = v8;
  v9 = _Block_copy(&aBlock);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(CLSCachedGeocoderOperation *)selfCopy _setupTimeOutForGeocoder:v7 resultBlock:v8];
        v12 = [MEMORY[0x277CBDB78] postalAddressWithDictionaryRepresentation:v5];
        [v7 geocodePostalAddress:v12 completionHandler:v9];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(CLSCachedGeocoderOperation *)selfCopy _setupTimeOutForGeocoder:v7 resultBlock:v8];
          [v7 geocodeAddressString:v5 completionHandler:v9];
          goto LABEL_9;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(CLSCachedGeocoderOperation *)selfCopy _setupTimeOutForGeocoder:v7 resultBlock:v8];
          [v7 geocodePostalAddress:v5 completionHandler:v9];
          goto LABEL_9;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          (*(v8 + 2))(v8, MEMORY[0x277CBEBF8], 0);
          goto LABEL_9;
        }

        v20[0] = v5;
        v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
        (*(v8 + 2))(v8, v12, 0);
      }

      goto LABEL_8;
    }
  }

  if (!selfCopy->_forceQuery)
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Try to reverse geocode individual location: %@", v5, aBlock, v14, v15, v16];
    v12 = [v10 errorWithDescription:v11];

    (*(v8 + 2))(v8, 0, v12);
LABEL_8:

    goto LABEL_9;
  }

  [(CLSCachedGeocoderOperation *)selfCopy _setupTimeOutForGeocoder:v7 resultBlock:v8];
  [v7 reverseGeocodeLocation:v5 completionHandler:v9];
LABEL_9:

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __59__CLSCachedGeocoderOperation__executeQueryWithResultBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _returnsResultsForPlacemarks:v6 error:v5 resultBlock:*(a1 + 32)];
}

- (void)_returnsResultsForPlacemarks:(id)placemarks error:(id)error resultBlock:(id)block
{
  placemarksCopy = placemarks;
  errorCopy = error;
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_cancelled)
  {
    goto LABEL_11;
  }

  [(CLSCachedGeocoderOperation *)selfCopy _stopTimeOut];
  domain = [errorCopy domain];
  if (![domain isEqualToString:*MEMORY[0x277CBFCF0]])
  {

    goto LABEL_6;
  }

  if ([errorCopy code] != 8)
  {
    code = [errorCopy code];

    if (code == 9)
    {
      goto LABEL_8;
    }

LABEL_6:
    blockCopy[2](blockCopy, placemarksCopy, errorCopy);
    goto LABEL_11;
  }

LABEL_8:
  v14 = +[CLSLogging sharedLogging];
  loggingConnection = [v14 loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    v16[0] = 0;
    _os_log_impl(&dword_22F907000, loggingConnection, OS_LOG_TYPE_INFO, "Forward GEO lookup returned no result", v16, 2u);
  }

  blockCopy[2](blockCopy, MEMORY[0x277CBEBF8], 0);
LABEL_11:
  objc_sync_exit(selfCopy);
}

- (void)_stopTimeOut
{
  obj = self;
  objc_sync_enter(obj);
  timer = obj->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v3 = obj->_timer;
    obj->_timer = 0;
  }

  objc_sync_exit(obj);
}

- (void)_setupTimeOutForGeocoder:(id)geocoder resultBlock:(id)block
{
  geocoderCopy = geocoder;
  blockCopy = block;
  objc_initWeak(&location, self);
  v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, 0);
  timer = self->_timer;
  self->_timer = v8;

  v10 = self->_timer;
  v11 = dispatch_time(0, 2000000000);
  dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __67__CLSCachedGeocoderOperation__setupTimeOutForGeocoder_resultBlock___block_invoke;
  v15[3] = &unk_2788A6FC8;
  objc_copyWeak(&v18, &location);
  v16 = geocoderCopy;
  v17 = blockCopy;
  v12 = blockCopy;
  v13 = geocoderCopy;
  v14 = _Block_copy(v15);
  dispatch_source_set_event_handler(self->_timer, v14);
  dispatch_activate(self->_timer);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __67__CLSCachedGeocoderOperation__setupTimeOutForGeocoder_resultBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _timedOutForGeocoder:*(a1 + 32) withResultBlock:*(a1 + 40)];
}

- (void)_timedOutForGeocoder:(id)geocoder withResultBlock:(id)block
{
  geocoderCopy = geocoder;
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_cancelled = 1;
  timer = selfCopy->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v9 = selfCopy->_timer;
    selfCopy->_timer = 0;

    [geocoderCopy cancelGeocode];
    v10 = MEMORY[0x277CCA9B8];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Hit timeout of %ld getting person address", 2];
    v12 = [v10 errorWithDescription:v11];
    blockCopy[2](blockCopy, 0, v12);
  }

  objc_sync_exit(selfCopy);
}

- (id)performSynchronouslyWithLocationCache:(id)cache error:(id *)error
{
  cacheCopy = cache;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__839;
  v34 = __Block_byref_object_dispose__840;
  v35 = [cacheCopy placemarksForLocation:self->_location];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__839;
  v28 = __Block_byref_object_dispose__840;
  v29 = 0;
  if (!v31[5])
  {
    v7 = 0;
    accuracy = self->_accuracy;
    if (accuracy != 0.0 && accuracy != *MEMORY[0x277CE4208] && accuracy != *MEMORY[0x277CE4210])
    {
      v10 = [cacheCopy placemarksForLocation:self->_location withQueryAccuracy:?];
      v11 = v31[5];
      v31[5] = v10;

      v7 = v31[5];
    }

    if (![v7 count])
    {
      v12 = dispatch_semaphore_create(0);
      v13 = self->_location;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __74__CLSCachedGeocoderOperation_performSynchronouslyWithLocationCache_error___block_invoke;
      v18[3] = &unk_2788A6FA0;
      v22 = &v24;
      v19 = cacheCopy;
      v14 = v13;
      v20 = v14;
      v23 = &v30;
      v15 = v12;
      v21 = v15;
      [(CLSCachedGeocoderOperation *)self _executeQueryWithResultBlock:v18];
      dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  if (error)
  {
    *error = v25[5];
  }

  v16 = v31[5];
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);

  return v16;
}

void __74__CLSCachedGeocoderOperation_performSynchronouslyWithLocationCache_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        v12 = 0;
        do
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * v12);
          v14 = [CLSLitePlacemark alloc];
          v15 = [(CLSLitePlacemark *)v14 initWithCLPlacemark:v13, v18];
          [v7 addObject:v15];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    [*(a1 + 32) setPlacemarks:v7 forLocation:*(a1 + 40)];
    v16 = *(*(a1 + 64) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v7;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

- (CLSCachedGeocoderOperation)initWithLocation:(id)location withAccuracy:(double)accuracy
{
  locationCopy = location;
  v11.receiver = self;
  v11.super_class = CLSCachedGeocoderOperation;
  v8 = [(CLSCachedGeocoderOperation *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_location, location);
    v9->_accuracy = accuracy;
  }

  return v9;
}

+ (id)operationForceGeocoderWithLocation:(id)location withAccuracy:(double)accuracy
{
  result = [self operationWithLocation:location withAccuracy:accuracy];
  *(result + 8) = 1;
  return result;
}

+ (id)operationForceGeocoderWithLocation:(id)location
{
  result = [self operationWithLocation:location];
  *(result + 8) = 1;
  return result;
}

+ (id)operationWithLocation:(id)location withAccuracy:(double)accuracy
{
  locationCopy = location;
  v6 = [[CLSCachedGeocoderOperation alloc] initWithLocation:locationCopy withAccuracy:accuracy];

  return v6;
}

+ (id)operationWithLocation:(id)location
{
  locationCopy = location;
  v4 = [CLSCachedGeocoderOperation alloc];
  v5 = [(CLSCachedGeocoderOperation *)v4 initWithLocation:locationCopy withAccuracy:*MEMORY[0x277CE4208]];

  return v5;
}

@end