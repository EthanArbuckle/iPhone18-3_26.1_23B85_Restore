@interface HFCameraAnalyticsPayloadDecorator
+ (id)sharedDecorator;
- (HFCameraAnalyticsPayloadDecorator)init;
- (id)decoratePayload:(id)payload;
- (void)_initialiseAdditionalPayloadForNewHome;
- (void)_updateHomeInformation:(id)information;
- (void)homeManagerDidFinishInitialDatabaseLoad:(id)load;
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
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    additionalPayload = v2->_additionalPayload;
    v2->_additionalPayload = dictionary;

    [(HFCameraAnalyticsPayloadDecorator *)v2 _initialiseAdditionalPayload];
    v5 = +[HFHomeKitDispatcher sharedDispatcher];
    [v5 addHomeManagerObserver:v2];
    home = [v5 home];

    if (home)
    {
      home2 = [v5 home];
      [(HFCameraAnalyticsPayloadDecorator *)v2 _updateHomeInformation:home2];
    }
  }

  return v2;
}

- (void)_initialiseAdditionalPayloadForNewHome
{
  additionalPayload = [(HFCameraAnalyticsPayloadDecorator *)self additionalPayload];
  [additionalPayload setObject:@"Unknown" forKeyedSubscript:HFCameraAnalyticsISOCountryCode];

  additionalPayload2 = [(HFCameraAnalyticsPayloadDecorator *)self additionalPayload];
  [additionalPayload2 setObject:@"Unknown" forKeyedSubscript:HFCameraAnalyticsAdministrativeArea];
}

- (id)decoratePayload:(id)payload
{
  v4 = MEMORY[0x277CBEB38];
  payloadCopy = payload;
  dictionary = [v4 dictionary];
  [dictionary addEntriesFromDictionary:payloadCopy];

  additionalPayload = [(HFCameraAnalyticsPayloadDecorator *)self additionalPayload];
  [dictionary addEntriesFromDictionary:additionalPayload];

  return dictionary;
}

- (void)_updateHomeInformation:(id)information
{
  informationCopy = information;
  [(HFCameraAnalyticsPayloadDecorator *)self _initialiseAdditionalPayloadForNewHome];
  location = [informationCopy location];

  if (location)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBFBE8]);
    location2 = [informationCopy location];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __60__HFCameraAnalyticsPayloadDecorator__updateHomeInformation___block_invoke;
    v8[3] = &unk_277DFA638;
    v9 = informationCopy;
    selfCopy = self;
    [v6 reverseGeocodeLocation:location2 completionHandler:v8];
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

- (void)homeManagerDidFinishInitialDatabaseLoad:(id)load
{
  currentHome = [load currentHome];
  [(HFCameraAnalyticsPayloadDecorator *)self _updateHomeInformation:currentHome];
}

@end