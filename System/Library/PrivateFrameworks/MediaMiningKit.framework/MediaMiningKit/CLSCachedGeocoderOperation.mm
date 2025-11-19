@interface CLSCachedGeocoderOperation
+ (id)operationForceGeocoderWithLocation:(id)a3;
+ (id)operationForceGeocoderWithLocation:(id)a3 withAccuracy:(double)a4;
+ (id)operationWithLocation:(id)a3;
+ (id)operationWithLocation:(id)a3 withAccuracy:(double)a4;
- (CLSCachedGeocoderOperation)initWithLocation:(id)a3 withAccuracy:(double)a4;
- (id)performSynchronouslyWithLocationCache:(id)a3 error:(id *)a4;
- (void)_executeQueryWithResultBlock:(id)a3;
- (void)_returnsResultsForPlacemarks:(id)a3 error:(id)a4 resultBlock:(id)a5;
- (void)_setupTimeOutForGeocoder:(id)a3 resultBlock:(id)a4;
- (void)_stopTimeOut;
- (void)_timedOutForGeocoder:(id)a3 withResultBlock:(id)a4;
@end

@implementation CLSCachedGeocoderOperation

- (void)_executeQueryWithResultBlock:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self->_location;
  v6 = self;
  objc_sync_enter(v6);
  v6->_cancelled = 0;
  objc_sync_exit(v6);

  objc_initWeak(&location, v6);
  v7 = objc_alloc_init(MEMORY[0x277CBFBE8]);
  aBlock = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __59__CLSCachedGeocoderOperation__executeQueryWithResultBlock___block_invoke;
  v16 = &unk_2788A6FF0;
  objc_copyWeak(&v18, &location);
  v8 = v4;
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
        [(CLSCachedGeocoderOperation *)v6 _setupTimeOutForGeocoder:v7 resultBlock:v8];
        v12 = [MEMORY[0x277CBDB78] postalAddressWithDictionaryRepresentation:v5];
        [v7 geocodePostalAddress:v12 completionHandler:v9];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(CLSCachedGeocoderOperation *)v6 _setupTimeOutForGeocoder:v7 resultBlock:v8];
          [v7 geocodeAddressString:v5 completionHandler:v9];
          goto LABEL_9;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(CLSCachedGeocoderOperation *)v6 _setupTimeOutForGeocoder:v7 resultBlock:v8];
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

  if (!v6->_forceQuery)
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Try to reverse geocode individual location: %@", v5, aBlock, v14, v15, v16];
    v12 = [v10 errorWithDescription:v11];

    (*(v8 + 2))(v8, 0, v12);
LABEL_8:

    goto LABEL_9;
  }

  [(CLSCachedGeocoderOperation *)v6 _setupTimeOutForGeocoder:v7 resultBlock:v8];
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

- (void)_returnsResultsForPlacemarks:(id)a3 error:(id)a4 resultBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  objc_sync_enter(v11);
  if (v11->_cancelled)
  {
    goto LABEL_11;
  }

  [(CLSCachedGeocoderOperation *)v11 _stopTimeOut];
  v12 = [v9 domain];
  if (![v12 isEqualToString:*MEMORY[0x277CBFCF0]])
  {

    goto LABEL_6;
  }

  if ([v9 code] != 8)
  {
    v13 = [v9 code];

    if (v13 == 9)
    {
      goto LABEL_8;
    }

LABEL_6:
    v10[2](v10, v8, v9);
    goto LABEL_11;
  }

LABEL_8:
  v14 = +[CLSLogging sharedLogging];
  v15 = [v14 loggingConnection];

  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16[0] = 0;
    _os_log_impl(&dword_22F907000, v15, OS_LOG_TYPE_INFO, "Forward GEO lookup returned no result", v16, 2u);
  }

  v10[2](v10, MEMORY[0x277CBEBF8], 0);
LABEL_11:
  objc_sync_exit(v11);
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

- (void)_setupTimeOutForGeocoder:(id)a3 resultBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v16 = v6;
  v17 = v7;
  v12 = v7;
  v13 = v6;
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

- (void)_timedOutForGeocoder:(id)a3 withResultBlock:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v7->_cancelled = 1;
  timer = v7->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v9 = v7->_timer;
    v7->_timer = 0;

    [v13 cancelGeocode];
    v10 = MEMORY[0x277CCA9B8];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Hit timeout of %ld getting person address", 2];
    v12 = [v10 errorWithDescription:v11];
    v6[2](v6, 0, v12);
  }

  objc_sync_exit(v7);
}

- (id)performSynchronouslyWithLocationCache:(id)a3 error:(id *)a4
{
  v6 = a3;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__839;
  v34 = __Block_byref_object_dispose__840;
  v35 = [v6 placemarksForLocation:self->_location];
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
      v10 = [v6 placemarksForLocation:self->_location withQueryAccuracy:?];
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
      v19 = v6;
      v14 = v13;
      v20 = v14;
      v23 = &v30;
      v15 = v12;
      v21 = v15;
      [(CLSCachedGeocoderOperation *)self _executeQueryWithResultBlock:v18];
      dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  if (a4)
  {
    *a4 = v25[5];
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

- (CLSCachedGeocoderOperation)initWithLocation:(id)a3 withAccuracy:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = CLSCachedGeocoderOperation;
  v8 = [(CLSCachedGeocoderOperation *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_location, a3);
    v9->_accuracy = a4;
  }

  return v9;
}

+ (id)operationForceGeocoderWithLocation:(id)a3 withAccuracy:(double)a4
{
  result = [a1 operationWithLocation:a3 withAccuracy:a4];
  *(result + 8) = 1;
  return result;
}

+ (id)operationForceGeocoderWithLocation:(id)a3
{
  result = [a1 operationWithLocation:a3];
  *(result + 8) = 1;
  return result;
}

+ (id)operationWithLocation:(id)a3 withAccuracy:(double)a4
{
  v5 = a3;
  v6 = [[CLSCachedGeocoderOperation alloc] initWithLocation:v5 withAccuracy:a4];

  return v6;
}

+ (id)operationWithLocation:(id)a3
{
  v3 = a3;
  v4 = [CLSCachedGeocoderOperation alloc];
  v5 = [(CLSCachedGeocoderOperation *)v4 initWithLocation:v3 withAccuracy:*MEMORY[0x277CE4208]];

  return v5;
}

@end