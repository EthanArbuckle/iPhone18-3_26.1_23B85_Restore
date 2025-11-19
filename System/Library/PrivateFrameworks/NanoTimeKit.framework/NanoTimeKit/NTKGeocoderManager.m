@interface NTKGeocoderManager
+ (id)sharedManager;
- (NTKGeocoderManager)init;
- (id)cachedPlacemarkForLocation:(id)a3;
- (void)_handlePlacemarks:(id)a3 fromLocation:(id)a4 error:(id)a5;
- (void)placemarkForLocation:(id)a3 handler:(id)a4;
@end

@implementation NTKGeocoderManager

+ (id)sharedManager
{
  if (sharedManager_onceToken_0 != -1)
  {
    +[NTKGeocoderManager sharedManager];
  }

  v3 = sharedManager_manager;

  return v3;
}

void __35__NTKGeocoderManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(NTKGeocoderManager);
  v1 = sharedManager_manager;
  sharedManager_manager = v0;
}

- (NTKGeocoderManager)init
{
  v8.receiver = self;
  v8.super_class = NTKGeocoderManager;
  v2 = [(NTKGeocoderManager *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBFBE8]);
    geocoder = v2->_geocoder;
    v2->_geocoder = v3;

    v5 = [MEMORY[0x277CBEB18] array];
    handlers = v2->_handlers;
    v2->_handlers = v5;
  }

  return v2;
}

- (id)cachedPlacemarkForLocation:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_cachedLocation && self->_cachedPlacemark && [v4 isEqual:?])
  {
    v6 = self->_cachedPlacemark;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)placemarkForLocation:(id)a3 handler:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(NTKGeocoderManager *)self cachedPlacemarkForLocation:v7];
  if (v9)
  {
    v10 = _NTKLoggingObjectForDomain(12, "NTKLoggingDomainLocation");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = v7;
      v29 = 2112;
      v30 = v9;
      _os_log_impl(&dword_22D9C5000, v10, OS_LOG_TYPE_DEFAULT, "Hitting cached placemark for location: %@ %@", buf, 0x16u);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__NTKGeocoderManager_placemarkForLocation_handler___block_invoke;
    block[3] = &unk_27877E570;
    v26 = v8;
    v25 = v9;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else if ([(CLLocation *)self->_cachedLocation isEqual:v7])
  {
    v11 = _NTKLoggingObjectForDomain(12, "NTKLoggingDomainLocation");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v7;
      _os_log_impl(&dword_22D9C5000, v11, OS_LOG_TYPE_DEFAULT, "Requesting the placemark for the same location. %@", buf, 0xCu);
    }

    handlers = self->_handlers;
    v13 = [v8 copy];
    v14 = _Block_copy(v13);
    [(NSMutableArray *)handlers addObject:v14];
  }

  else
  {
    if ([(CLGeocoder *)self->_geocoder isGeocoding])
    {
      v15 = _NTKLoggingObjectForDomain(12, "NTKLoggingDomainLocation");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v7;
        _os_log_impl(&dword_22D9C5000, v15, OS_LOG_TYPE_DEFAULT, "Canceling the previous geocode request. %@", buf, 0xCu);
      }

      [(CLGeocoder *)self->_geocoder cancelGeocode];
    }

    objc_storeStrong(&self->_cachedLocation, a3);
    [(NSMutableArray *)self->_handlers removeAllObjects];
    v16 = self->_handlers;
    v17 = [v8 copy];
    v18 = _Block_copy(v17);
    [(NSMutableArray *)v16 addObject:v18];

    v19 = _NTKLoggingObjectForDomain(12, "NTKLoggingDomainLocation");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v7;
      _os_log_impl(&dword_22D9C5000, v19, OS_LOG_TYPE_DEFAULT, "Sending geocode request for location %@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    geocoder = self->_geocoder;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __51__NTKGeocoderManager_placemarkForLocation_handler___block_invoke_4;
    v21[3] = &unk_2787818B0;
    objc_copyWeak(&v23, buf);
    v22 = v7;
    [(CLGeocoder *)geocoder reverseGeocodeLocation:v22 completionHandler:v21];

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }
}

void __51__NTKGeocoderManager_placemarkForLocation_handler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handlePlacemarks:v6 fromLocation:*(a1 + 32) error:v5];
}

- (void)_handlePlacemarks:(id)a3 fromLocation:(id)a4 error:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v10 code] != 10)
  {
    if (v10)
    {
      v12 = _NTKLoggingObjectForDomain(12, "NTKLoggingDomainLocation");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v21 = v9;
        v22 = 2112;
        v23 = v10;
        _os_log_impl(&dword_22D9C5000, v12, OS_LOG_TYPE_DEFAULT, "Reverse geocide with error: %@ %@.", buf, 0x16u);
      }

      v13 = 0;
    }

    else
    {
      v13 = [v8 firstObject];
      if (!v13)
      {
        goto LABEL_9;
      }

      objc_storeStrong(&self->_cachedPlacemark, v13);
      v12 = _NTKLoggingObjectForDomain(12, "NTKLoggingDomainLocation");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v21 = v9;
        v22 = 2112;
        v23 = v13;
        _os_log_impl(&dword_22D9C5000, v12, OS_LOG_TYPE_DEFAULT, "Updated the cached placemark for location %@-%@.", buf, 0x16u);
      }
    }

LABEL_9:
    v14 = [(NSMutableArray *)self->_handlers copy];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__NTKGeocoderManager__handlePlacemarks_fromLocation_error___block_invoke;
    block[3] = &unk_27877E238;
    v17 = v14;
    v18 = v13;
    v19 = v10;
    v15 = v13;
    v11 = v14;
    dispatch_async(MEMORY[0x277D85CD0], block);
    [(NSMutableArray *)self->_handlers removeAllObjects];

    goto LABEL_10;
  }

  v11 = _NTKLoggingObjectForDomain(12, "NTKLoggingDomainLocation");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v9;
    _os_log_impl(&dword_22D9C5000, v11, OS_LOG_TYPE_DEFAULT, "Reverse geocode request is cancelled. %@", buf, 0xCu);
  }

LABEL_10:
}

void __59__NTKGeocoderManager__handlePlacemarks_fromLocation_error___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

@end