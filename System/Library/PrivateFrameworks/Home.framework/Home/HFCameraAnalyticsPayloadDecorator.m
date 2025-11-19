@interface HFCameraAnalyticsPayloadDecorator
+ (id)sharedDecorator;
- (HFCameraAnalyticsPayloadDecorator)init;
- (id)decoratePayload:(id)a3;
- (void)_initialiseAdditionalPayloadForNewHome;
- (void)_updateHomeInformation:(id)a3;
- (void)homeManagerDidFinishInitialDatabaseLoad:(id)a3;
@end

@implementation HFCameraAnalyticsPayloadDecorator

+ (id)sharedDecorator
{
  if (qword_280E02F98 != -1)
  {
    dispatch_once(&qword_280E02F98, &__block_literal_global_94);
  }

  v3 = _MergedGlobals_251;

  return v3;
}

void __52__HFCameraAnalyticsPayloadDecorator_sharedDecorator__block_invoke()
{
  v0 = objc_alloc_init(HFCameraAnalyticsPayloadDecorator);
  v1 = _MergedGlobals_251;
  _MergedGlobals_251 = v0;
}

- (HFCameraAnalyticsPayloadDecorator)init
{
  v9.receiver = self;
  v9.super_class = HFCameraAnalyticsPayloadDecorator;
  v2 = [(HFCameraAnalyticsPayloadDecorator *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    additionalPayload = v2->_additionalPayload;
    v2->_additionalPayload = v3;

    [(HFCameraAnalyticsPayloadDecorator *)v2 _initialiseAdditionalPayload];
    v5 = +[HFHomeKitDispatcher sharedDispatcher];
    [v5 addHomeManagerObserver:v2];
    v6 = [v5 home];

    if (v6)
    {
      v7 = [v5 home];
      [(HFCameraAnalyticsPayloadDecorator *)v2 _updateHomeInformation:v7];
    }
  }

  return v2;
}

- (void)_initialiseAdditionalPayloadForNewHome
{
  v3 = [(HFCameraAnalyticsPayloadDecorator *)self additionalPayload];
  [v3 setObject:@"Unknown" forKeyedSubscript:HFCameraAnalyticsISOCountryCode];

  v4 = [(HFCameraAnalyticsPayloadDecorator *)self additionalPayload];
  [v4 setObject:@"Unknown" forKeyedSubscript:HFCameraAnalyticsAdministrativeArea];
}

- (id)decoratePayload:(id)a3
{
  v4 = MEMORY[0x277CBEB38];
  v5 = a3;
  v6 = [v4 dictionary];
  [v6 addEntriesFromDictionary:v5];

  v7 = [(HFCameraAnalyticsPayloadDecorator *)self additionalPayload];
  [v6 addEntriesFromDictionary:v7];

  return v6;
}

- (void)_updateHomeInformation:(id)a3
{
  v4 = a3;
  [(HFCameraAnalyticsPayloadDecorator *)self _initialiseAdditionalPayloadForNewHome];
  v5 = [v4 location];

  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBFBE8]);
    v7 = [v4 location];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __60__HFCameraAnalyticsPayloadDecorator__updateHomeInformation___block_invoke;
    v8[3] = &unk_277DFA638;
    v9 = v4;
    v10 = self;
    [v6 reverseGeocodeLocation:v7 completionHandler:v8];
  }
}

void __60__HFCameraAnalyticsPayloadDecorator__updateHomeInformation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = HFLogForCategory(6uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v31 = 138412546;
      v32 = v8;
      v33 = 2112;
      v34 = v6;
      v9 = "Unable to reverse geocode home location for home:%@ error:%@";
      v10 = v7;
      v11 = 22;
LABEL_15:
      _os_log_error_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_ERROR, v9, &v31, v11);
    }
  }

  else if (v5 && [v5 count])
  {
    v7 = [v5 objectAtIndex:0];
    v12 = [*(a1 + 32) location];
    [v12 coordinate];
    v14 = v13;
    v15 = [v7 location];
    [v15 coordinate];
    v17 = vabdd_f64(v14, v16);

    v18 = [*(a1 + 32) location];
    [v18 coordinate];
    v20 = v19;
    v21 = [v7 location];
    [v21 coordinate];
    v23 = vabdd_f64(v20, v22);

    if (v17 <= 0.00000011920929 && v23 <= 0.00000011920929)
    {
      v25 = [v7 ISOcountryCode];
      v26 = [*(a1 + 40) additionalPayload];
      [v26 setObject:v25 forKeyedSubscript:HFCameraAnalyticsISOCountryCode];

      v27 = [v7 administrativeArea];
      v28 = [*(a1 + 40) additionalPayload];
      [v28 setObject:v27 forKeyedSubscript:HFCameraAnalyticsAdministrativeArea];
    }
  }

  else
  {
    v7 = HFLogForCategory(6uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v30 = *(a1 + 32);
      v31 = 138412290;
      v32 = v30;
      v9 = "No placemarks from reverse geocode home location for home:%@";
      v10 = v7;
      v11 = 12;
      goto LABEL_15;
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)homeManagerDidFinishInitialDatabaseLoad:(id)a3
{
  v4 = [a3 currentHome];
  [(HFCameraAnalyticsPayloadDecorator *)self _updateHomeInformation:v4];
}

@end