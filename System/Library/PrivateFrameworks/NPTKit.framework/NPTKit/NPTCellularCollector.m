@interface NPTCellularCollector
+ (id)calculateMaxCellularTPutEstimates:(id)a3;
+ (id)getPreferredDataSlot;
+ (void)getPreferredDataSlot;
- (NPTCellularCollector)init;
- (NPTCellularCollector)initWithSlotID:(id)a3;
- (NSArray)cellChanges;
- (NSArray)dataStatusChanges;
- (NSDictionary)metadata;
- (id)dualSimStatus;
- (id)fetchCellularTPutEstimates;
- (id)getCellInfoForSlot:(id)a3;
- (id)getCellularMNCMCCDE;
- (id)getEstimateFromPath:(id)a3;
- (id)signalStrengthMeasurements;
- (id)wrmBasebandMetrics;
- (void)cellChanged:(id)a3 cell:(id)a4;
- (void)dataStatus:(id)a3 dataStatusInfo:(id)a4;
- (void)estimateDidChange:(id)a3;
- (void)getCellularMNCMCCDE;
- (void)setUpPathMonitor:(id)a3;
- (void)signalStrengthMeasurements;
- (void)startCollectingWithCompletion:(id)a3;
- (void)stopCollecting;
@end

@implementation NPTCellularCollector

- (NPTCellularCollector)init
{
  v3 = +[NPTCellularCollector getPreferredDataSlot];
  v4 = [(NPTCellularCollector *)self initWithSlotID:v3];

  return v4;
}

- (NPTCellularCollector)initWithSlotID:(id)a3
{
  v5 = a3;
  v25.receiver = self;
  v25.super_class = NPTCellularCollector;
  v6 = [(NPTCellularCollector *)&v25 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mutableCellChanges = v6->_mutableCellChanges;
    v6->_mutableCellChanges = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mutableDataStatusChanges = v6->_mutableDataStatusChanges;
    v6->_mutableDataStatusChanges = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mutableMetadata = v6->_mutableMetadata;
    v6->_mutableMetadata = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    servingCellInfo = v6->_servingCellInfo;
    v6->_servingCellInfo = v13;

    v15 = objc_alloc(MEMORY[0x277CC37B0]);
    v16 = dispatch_get_global_queue(2, 0);
    v17 = [v15 initWithQueue:v16];
    ctClient = v6->_ctClient;
    v6->_ctClient = v17;

    [(CoreTelephonyClient *)v6->_ctClient setDelegate:v6];
    objc_storeStrong(&v6->_slotID, a3);
    v19 = objc_alloc_init(MEMORY[0x277CC3790]);
    networkInfo = v6->_networkInfo;
    v6->_networkInfo = v19;

    if ([v5 isEqualToNumber:&unk_2848CF158])
    {
      v21 = 1;
    }

    else if ([v5 isEqualToNumber:&unk_2848CF170])
    {
      v21 = 2;
    }

    else
    {
      NSLog(&cfstr_ExpectingSloti.isa, v5);
      v21 = 0;
    }

    v22 = [objc_alloc(MEMORY[0x277CC3798]) initWithSlot:v21];
    context = v6->_context;
    v6->_context = v22;
  }

  return v6;
}

- (NSDictionary)metadata
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [(NPTCellularCollector *)self mutableMetadata];
  v4 = [v2 dictionaryWithDictionary:v3];

  return v4;
}

- (id)dualSimStatus
{
  v3 = [(NPTCellularCollector *)self ctClient];

  if (!v3)
  {
    return @"Unknown";
  }

  v4 = [(NPTCellularCollector *)self ctClient];
  v8 = 0;
  v5 = [v4 getDualSimCapability:&v8];
  v6 = v8;

  result = @"Unknown";
  if (!v6 && v5 <= 4)
  {
    return off_2789D3D80[v5];
  }

  return result;
}

- (id)wrmBasebandMetrics
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v26 = v3;
  if (objc_opt_class())
  {
    v4 = objc_alloc_init(MEMORY[0x277D7BC40]);
    queue = dispatch_queue_create("com.apple.Client.queueBB.wirelesscoexmanager", 0);
    [v4 registerClient:33 queue:?];
    v5 = dispatch_semaphore_create(0);
    v44[0] = 0;
    v44[1] = v44;
    v44[2] = 0x2020000000;
    v45 = 0;
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy_;
    v42 = __Block_byref_object_dispose_;
    v43 = objc_alloc_init(MEMORY[0x277CBEB38]);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __42__NPTCellularCollector_wrmBasebandMetrics__block_invoke;
    aBlock[3] = &unk_2789D3C48;
    aBlock[4] = self;
    v36 = &v38;
    v37 = v44;
    dsema = v5;
    v35 = dsema;
    v6 = _Block_copy(aBlock);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__NPTCellularCollector_wrmBasebandMetrics__block_invoke_2;
    block[3] = &unk_2789D3C70;
    v7 = v4;
    v32 = v7;
    v23 = v6;
    v33 = v23;
    dispatch_async(queue, block);
    v8 = dispatch_walltime(0, 1000000000);
    dispatch_semaphore_wait(dsema, v8);
    v22 = v7;
    [v7 unregisterClient];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v9 = [&unk_2848CF440 countByEnumeratingWithState:&v27 objects:v46 count:16];
    if (v9)
    {
      v10 = *v28;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(&unk_2848CF440);
          }

          v12 = *(*(&v27 + 1) + 8 * i);
          v13 = self;
          objc_sync_enter(v13);
          v14 = [v39[5] valueForKey:v12];
          if (v14)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || (v15 = v14, [MEMORY[0x277CCA980] notANumber], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "isEqualToNumber:", v16), v16, v15, (v17 & 1) == 0))
            {
              v18 = [&unk_2848CF440 objectForKey:v12];
              [v26 setObject:v14 forKey:v18];
            }
          }

          objc_sync_exit(v13);
        }

        v9 = [&unk_2848CF440 countByEnumeratingWithState:&v27 objects:v46 count:16];
      }

      while (v9);
    }

    v19 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v26];

    _Block_object_dispose(&v38, 8);
    _Block_object_dispose(v44, 8);
  }

  else
  {
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v3];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

void __42__NPTCellularCollector_wrmBasebandMetrics__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  [*(*(*(a1 + 48) + 8) + 40) addEntriesFromDictionary:v6];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 24);
  *(v4 + 24) = v5 + 1;
  if (v5 >= 3)
  {
    dispatch_semaphore_signal(*(a1 + 40));
  }

  objc_sync_exit(v3);
}

uint64_t __42__NPTCellularCollector_wrmBasebandMetrics__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) getNRPhyMetrics:*(a1 + 40)];
  [*(a1 + 32) getCellularDataMetrics:*(a1 + 40)];
  v2 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) getWiFiBWEstimationMetrics:*(a1 + 40)];
  }

  v3 = *(a1 + 32);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    return [v5 getQSHMetrics:v6];
  }

  return result;
}

- (id)signalStrengthMeasurements
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(NPTCellularCollector *)self ctClient];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    v8 = +[NPTLogger cellular];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [NPTCellularCollector signalStrengthMeasurements];
    }

    goto LABEL_9;
  }

  v6 = MEMORY[0x277CC3718];
  v7 = [(NPTCellularCollector *)self context];
  v8 = [v6 descriptorWithSubscriptionContext:v7];

  v9 = [(NPTCellularCollector *)self ctClient];
  v23 = 0;
  v10 = [v9 getSignalStrengthMeasurements:v8 error:&v23];
  v11 = v23;

  if (!v11)
  {
    v14 = [v10 rssi];
    [v3 setObject:v14 forKeyedSubscript:@"cellular_rssi"];

    v15 = [v10 rscp];
    [v3 setObject:v15 forKeyedSubscript:@"cellular_rscp"];

    v16 = [v10 ecn0];
    [v3 setObject:v16 forKeyedSubscript:@"cellular_ecn0"];

    v17 = [v10 rsrp];
    [v3 setObject:v17 forKeyedSubscript:@"cellular_rsrp"];

    v18 = [v10 rsrq];
    [v3 setObject:v18 forKeyedSubscript:@"cellular_rsrq"];

    v19 = [v10 snr];
    [v3 setObject:v19 forKeyedSubscript:@"cellular_snr"];

    v20 = [v10 ecio];
    [v3 setObject:v20 forKeyedSubscript:@"cellular_ecio"];

    v21 = [v10 rxagc];
    [v3 setObject:v21 forKeyedSubscript:@"cellular_rxagc"];

LABEL_9:
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v3];
    goto LABEL_10;
  }

  v12 = +[NPTLogger cellular];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [(NPTCellularCollector *)self signalStrengthMeasurements];
  }

  v13 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v3];

LABEL_10:

  return v13;
}

- (id)getCellularMNCMCCDE
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  ctClient = self->_ctClient;
  context = self->_context;
  v18 = 0;
  v6 = [(CoreTelephonyClient *)ctClient copyMobileCountryCode:context error:&v18];
  v7 = v18;
  [v3 setObject:v6 forKeyedSubscript:@"cellular_rn_mobile_country_code"];

  if (v7)
  {
    v8 = +[NPTLogger cellular];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [NPTCellularCollector getCellularMNCMCCDE];
    }
  }

  v9 = self->_ctClient;
  v10 = self->_context;
  v17 = v7;
  v11 = [(CoreTelephonyClient *)v9 copyMobileNetworkCode:v10 error:&v17];
  v12 = v17;

  [v3 setObject:v11 forKeyedSubscript:@"cellular_rn_mobile_network_code"];
  if (v12)
  {
    v13 = +[NPTLogger cellular];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [NPTCellularCollector getCellularMNCMCCDE];
    }
  }

  _CTServerConnectionCreate();
  if (_CTServerConnectionGetCellularDataIsEnabled())
  {
    v14 = +[NPTLogger cellular];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [NPTCellularCollector getCellularMNCMCCDE];
    }
  }

  else
  {
    [v3 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"cellular_data_is_enabled"];
  }

  v15 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v3];

  return v15;
}

- (id)getCellInfoForSlot:(id)a3
{
  v3 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = objc_alloc(MEMORY[0x277CC37B0]);
  v5 = dispatch_get_global_queue(2, 0);
  v6 = [v4 initWithQueue:v5];

  if ([v3 isEqualToNumber:&unk_2848CF158])
  {
    v7 = objc_alloc(MEMORY[0x277CC3798]);
    v8 = 1;
  }

  else if ([v3 isEqualToNumber:&unk_2848CF170])
  {
    v7 = objc_alloc(MEMORY[0x277CC3798]);
    v8 = 2;
  }

  else
  {
    v9 = +[NPTLogger cellular];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [NPTCellularCollector getCellInfoForSlot:];
    }

    v7 = objc_alloc(MEMORY[0x277CC3798]);
    v8 = 0;
  }

  v10 = [v7 initWithSlot:v8];
  v11 = dispatch_semaphore_create(0);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __43__NPTCellularCollector_getCellInfoForSlot___block_invoke;
  v19 = &unk_2789D3C98;
  v21 = &v22;
  v12 = v11;
  v20 = v12;
  [v6 copyCellInfo:v10 completion:&v16];
  v13 = dispatch_time(0, 500000000);
  dispatch_semaphore_wait(v12, v13);
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:{v23[5], v16, v17, v18, v19}];

  _Block_object_dispose(&v22, 8);

  return v14;
}

intptr_t __43__NPTCellularCollector_getCellInfoForSlot___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [a2 legacyInfo];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    v7 = *MEMORY[0x277CC3880];
    v8 = *MEMORY[0x277CC3890];
    v9 = *MEMORY[0x277CC3888];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 valueForKey:v7];
        if (([v12 isEqualToString:v8] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", v9))
        {
          [*(*(*(a1 + 40) + 8) + 40) addEntriesFromDictionary:v11];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  result = dispatch_semaphore_signal(*(a1 + 32));
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)startCollectingWithCompletion:(id)a3
{
  v63 = a3;
  v62 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(NPTCellularCollector *)self setStopCollectingMetadata:0];
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(NPTCellularCollector *)self setCachedMetadata:v5];

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = [(NPTCellularCollector *)self cachedMetadata];
  [v7 setObject:v6 forKeyedSubscript:?];

  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = [(NPTCellularCollector *)self cachedMetadata];
  [v9 setObject:v8 forKeyedSubscript:@"events"];

  v10 = [(NPTCellularCollector *)self dualSimStatus];
  [v4 setObject:v10 forKeyedSubscript:@"cellular_dual_sim_capability"];

  v11 = [(NPTCellularCollector *)self slotID];
  v12 = [(NPTCellularCollector *)self getCellInfoForSlot:v11];

  if (v12)
  {
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = __54__NPTCellularCollector_startCollectingWithCompletion___block_invoke;
    v73[3] = &unk_2789D3CC0;
    v74 = &unk_2848CF468;
    v75 = v4;
    [v12 enumerateKeysAndObjectsUsingBlock:v73];
  }

  v61 = v12;
  v13 = [(NPTCellularCollector *)self signalStrengthMeasurements];
  [v4 addEntriesFromDictionary:v13];

  v14 = [(NPTCellularCollector *)self networkInfo];
  v15 = [v14 dataServiceIdentifier];

  v16 = [(NPTCellularCollector *)self networkInfo];
  v17 = [v16 serviceCurrentRadioAccessTechnology];
  v60 = v15;
  v18 = [v17 objectForKeyedSubscript:v15];

  if (v18)
  {
    v19 = [v18 stringByReplacingOccurrencesOfString:@"CTRadioAccessTechnology" withString:&stru_2848BD380];
    [v4 setObject:v19 forKeyedSubscript:@"cellular_radio_access_technology"];
  }

  ctClient = self->_ctClient;
  context = self->_context;
  v72 = 0;
  v22 = [(CoreTelephonyClient *)ctClient copyMobileSubscriberCountryCode:context error:&v72];
  v23 = v72;
  v24 = v23;
  if (v22 && !v23)
  {
    v25 = [v22 uppercaseString];
    [v4 setObject:v25 forKeyedSubscript:@"cellular_mobile_country_code"];

    v26 = self->_ctClient;
    v71 = 0;
    v27 = [(CoreTelephonyClient *)v26 copyMobileSubscriberIsoCountryCode:v22 error:&v71];
    v28 = v71;
    v24 = v28;
    if (v27 && !v28)
    {
      v29 = [v27 uppercaseString];
      [v4 setObject:v29 forKeyedSubscript:@"cellular_iso_country_code"];
    }
  }

  v30 = self->_ctClient;
  v31 = self->_context;
  v70 = v24;
  v32 = [(CoreTelephonyClient *)v30 copyMobileSubscriberNetworkCode:v31 error:&v70];
  v33 = v70;

  if (v32 && !v33)
  {
    v34 = [v32 uppercaseString];
    [v4 setObject:v34 forKeyedSubscript:@"cellular_mobile_network_code"];
  }

  v57 = v32;
  v35 = [objc_alloc(MEMORY[0x277CC3620]) initWithBundleType:1];
  v36 = self->_ctClient;
  v37 = self->_context;
  v69 = v33;
  v38 = [(CoreTelephonyClient *)v36 copyCarrierBundleValue:v37 key:@"AllowVOIP" bundleType:v35 error:&v69];
  v39 = v69;

  if (!v39)
  {
    if (v38)
    {
      [v4 setObject:v38 forKeyedSubscript:@"cellular_allows_voip"];
    }

    else
    {
      v40 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:1];
      [v4 setObject:v40 forKeyedSubscript:@"cellular_allows_voip"];
    }
  }

  v56 = v38;
  v58 = v22;
  v59 = v18;
  v41 = self->_ctClient;
  v42 = self->_context;
  v68 = v39;
  v43 = [(CoreTelephonyClient *)v41 copyCarrierBundleValue:v42 key:@"CarrierName" bundleType:v35 error:&v68];
  v44 = v68;

  if (v43 && !v44)
  {
    [v4 setObject:v43 forKeyedSubscript:@"cellular_carrier_name"];
  }

  v45 = [(NPTCellularCollector *)self ctClient];
  v46 = [(NPTCellularCollector *)self context];
  v67 = 0;
  v47 = [v45 getDataStatus:v46 error:&v67];
  v48 = v67;

  if (v48)
  {
    v49 = +[NPTLogger cellular];
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      [NPTCellularCollector startCollectingWithCompletion:v48];
    }
  }

  v50 = [v47 dictionary];
  [v4 addEntriesFromDictionary:v50];

  v51 = [(NPTCellularCollector *)self getCellularMNCMCCDE];
  [v4 addEntriesFromDictionary:v51];

  v65[0] = 0;
  v65[1] = v65;
  v65[2] = 0x3042000000;
  v65[3] = __Block_byref_object_copy__249;
  v65[4] = __Block_byref_object_dispose__250;
  objc_initWeak(&v66, self);
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __54__NPTCellularCollector_startCollectingWithCompletion___block_invoke_251;
  v64[3] = &unk_2789D3D10;
  v64[4] = v65;
  [(NPTCellularCollector *)self setUpPathMonitor:v64];
  if (v48)
  {
    [v62 addObject:v48];
  }

  if (v63)
  {
    v52 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v4];
    v53 = [v62 copy];
    v63[2](v63, v52, v53);
  }

  v54 = self;
  objc_sync_enter(v54);
  v55 = [(NPTCellularCollector *)v54 cachedMetadata];
  [v55 setObject:v4 forKeyedSubscript:@"initial_state"];

  [(NPTCellularCollector *)v54 setMutableMetadata:v4];
  objc_sync_exit(v54);

  _Block_object_dispose(v65, 8);
  objc_destroyWeak(&v66);
}

void __54__NPTCellularCollector_startCollectingWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = a2;
  v6 = [v5 stringByReplacingOccurrencesOfString:@"kCTCellMonitor" withString:&stru_2848BD380];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"cellular_%@", v6];
  v8 = [v7 lowercaseString];

  LOBYTE(v6) = [*(a1 + 32) containsObject:v5];
  if ((v6 & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v10 stringByReplacingOccurrencesOfString:@"kCTCellMonitor" withString:&stru_2848BD380];
      [*(a1 + 40) setObject:v9 forKeyedSubscript:v8];
    }

    else
    {
      [*(a1 + 40) setObject:v10 forKeyedSubscript:v8];
    }
  }
}

void __54__NPTCellularCollector_startCollectingWithCompletion___block_invoke_251(uint64_t a1, void *a2)
{
  v3 = a2;
  if (nw_path_get_status(v3) == nw_path_status_satisfied)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __54__NPTCellularCollector_startCollectingWithCompletion___block_invoke_2;
    v4[3] = &unk_2789D3CE8;
    v6 = *(a1 + 32);
    v5 = v3;
    nw_path_enumerate_interfaces(v5, v4);
  }
}

BOOL __54__NPTCellularCollector_startCollectingWithCompletion___block_invoke_2(uint64_t a1, nw_interface_t interface)
{
  type = nw_interface_get_type(interface);
  if (type == nw_interface_type_cellular)
  {
    WeakRetained = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
    [WeakRetained estimateDidChange:*(a1 + 32)];
  }

  return type != nw_interface_type_cellular;
}

- (void)stopCollecting
{
  [(CTTelephonyNetworkInfo *)self->_networkInfo setServiceSubscriberCellularProvidersDidUpdateNotifier:0];

  [(NPTCellularCollector *)self setStopCollectingMetadata:1];
}

+ (id)getPreferredDataSlot
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CC37B0]);
  v3 = dispatch_get_global_queue(2, 0);
  v4 = [v2 initWithQueue:v3];

  v26 = 0;
  v5 = [v4 getActiveContexts:&v26];
  v6 = v26;
  if (v6)
  {
    v7 = +[NPTLogger cellular];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[(NPTCellularCollector *)v6];
    }

    v8 = &unk_2848CF158;
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = [v5 subscriptions];
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v21 = v4;
      v12 = *v23;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          v15 = [v14 uuid];
          v16 = [v5 dataPreferred];
          v17 = [v15 isEqual:v16];

          if (v17)
          {
            v18 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v14, "slotID")}];
            v4 = v21;
            goto LABEL_16;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v22 objects:v27 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      v4 = v21;
    }

    v18 = &unk_2848CF158;
LABEL_16:

    v8 = v18;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)setUpPathMonitor:(id)a3
{
  v4 = a3;
  v5 = nw_path_monitor_create_with_type(nw_interface_type_cellular);
  [(NPTCellularCollector *)self setPathMonitor:v5];

  v6 = [(NPTCellularCollector *)self pathMonitor];
  v7 = dispatch_get_global_queue(2, 0);
  nw_path_monitor_set_queue(v6, v7);

  v8 = [(NPTCellularCollector *)self pathMonitor];
  nw_path_monitor_set_update_handler(v8, v4);

  v9 = [(NPTCellularCollector *)self pathMonitor];
  nw_path_monitor_start(v9);
}

- (id)fetchCellularTPutEstimates
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = dispatch_semaphore_create(0);
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3042000000;
  v15[3] = __Block_byref_object_copy__249;
  v15[4] = __Block_byref_object_dispose__250;
  objc_initWeak(&v16, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__NPTCellularCollector_fetchCellularTPutEstimates__block_invoke;
  v11[3] = &unk_2789D3D60;
  v5 = v3;
  v12 = v5;
  v14 = v15;
  v6 = v4;
  v13 = v6;
  [(NPTCellularCollector *)self setUpPathMonitor:v11];
  v7 = dispatch_walltime(0, 1000000000);
  dispatch_semaphore_wait(v6, v7);
  v8 = v13;
  v9 = v5;

  _Block_object_dispose(v15, 8);
  objc_destroyWeak(&v16);

  return v9;
}

void __50__NPTCellularCollector_fetchCellularTPutEstimates__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (nw_path_get_status(v3) == nw_path_status_satisfied)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __50__NPTCellularCollector_fetchCellularTPutEstimates__block_invoke_2;
    v6[3] = &unk_2789D3D38;
    v4 = *(a1 + 32);
    v5 = *(a1 + 48);
    v7 = v4;
    v10 = v5;
    v8 = v3;
    v9 = *(a1 + 40);
    nw_path_enumerate_interfaces(v8, v6);
  }
}

BOOL __50__NPTCellularCollector_fetchCellularTPutEstimates__block_invoke_2(uint64_t a1, nw_interface_t interface)
{
  type = nw_interface_get_type(interface);
  if (type == nw_interface_type_cellular)
  {
    v4 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((*(*(a1 + 56) + 8) + 40));
    v6 = [WeakRetained getEstimateFromPath:*(a1 + 40)];
    [v4 addEntriesFromDictionary:v6];

    dispatch_semaphore_signal(*(a1 + 48));
  }

  return type != nw_interface_type_cellular;
}

- (id)getEstimateFromPath:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  estimated_download_throughput = nw_path_get_estimated_download_throughput();
  estimated_upload_throughput = nw_path_get_estimated_upload_throughput();

  v8 = [MEMORY[0x277CCABB0] numberWithDouble:estimated_download_throughput / 125000.0];
  [v5 setObject:v8 forKeyedSubscript:@"cellular_download_estimate"];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:estimated_upload_throughput / 125000.0];
  [v5 setObject:v9 forKeyedSubscript:@"cellular_upload_estimate"];

  return v5;
}

- (void)estimateDidChange:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [(NPTCellularCollector *)self getEstimateFromPath:v4];
  [v5 addEntriesFromDictionary:v6];

  v7 = +[NPTLogger cellular];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [NPTCellularCollector estimateDidChange:];
  }

  if ([v5 count])
  {
    v8 = self;
    objc_sync_enter(v8);
    v9 = [(NPTCellularCollector *)v8 mutableMetadata];
    [v9 addEntriesFromDictionary:v5];

    v10 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v10 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSxxx"];
    v11 = [NPTMetadataEvent alloc];
    v12 = objc_opt_class();
    v13 = [MEMORY[0x277CBEAA8] now];
    v14 = [(NPTMetadataEvent *)v11 initWithType:v12 eventType:27 timeStamp:v13 data:v5];

    v15 = [(NPTCellularCollector *)v8 cachedMetadata];
    v16 = [v15 objectForKeyedSubscript:@"events"];
    v17 = [(NPTMetadataEvent *)v14 asDictionary];
    [v16 addObject:v17];

    objc_sync_exit(v8);
    v18 = [(NPTCellularCollector *)v8 metadataDidChangeHandler];

    if (v18)
    {
      v19 = [(NPTCellularCollector *)v8 metadataDidChangeHandler];
      (v19)[2](v19, v14, 0);
    }
  }
}

- (void)dataStatus:(id)a3 dataStatusInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 uuid];
  v9 = [(NPTCellularCollector *)self context];
  v10 = [v9 uuid];
  if ([v8 isEqual:v10])
  {
    v11 = [(NPTCellularCollector *)self stopCollectingMetadata];

    if (!v11)
    {
      v12 = +[NPTLogger cellular];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [NPTCellularCollector dataStatus:v7 dataStatusInfo:v12];
      }

      v13 = self;
      objc_sync_enter(v13);
      [(NPTCellularCollector *)v13 setDataStatus:v7];
      v14 = [(NPTCellularCollector *)v13 mutableDataStatusChanges];
      v15 = [(NPTCellularCollector *)v13 dataStatus];
      v16 = [v15 dictionary];
      [v14 addObject:v16];

      v17 = [(NPTCellularCollector *)v13 mutableMetadata];
      v18 = [(NPTCellularCollector *)v13 dataStatus];
      v19 = [v18 dictionary];
      [v17 addEntriesFromDictionary:v19];

      v20 = objc_alloc_init(MEMORY[0x277CCA968]);
      [v20 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSxxx"];
      v21 = [NPTMetadataEvent alloc];
      v22 = objc_opt_class();
      v23 = [MEMORY[0x277CBEAA8] now];
      v24 = [(NPTCellularCollector *)v13 dataStatus];
      v25 = [v24 dictionary];
      v26 = [(NPTMetadataEvent *)v21 initWithType:v22 eventType:1 timeStamp:v23 data:v25];

      v27 = [(NPTCellularCollector *)v13 cachedMetadata];
      v28 = [v27 objectForKeyedSubscript:@"events"];

      if (v28)
      {
        v29 = [(NPTCellularCollector *)v13 cachedMetadata];
        v30 = [v29 objectForKeyedSubscript:@"events"];
        v31 = [(NPTMetadataEvent *)v26 asDictionary];
        [v30 addObject:v31];
      }

      objc_sync_exit(v13);
      v32 = [(NPTCellularCollector *)v13 metadataDidChangeHandler];

      if (v32)
      {
        v33 = [(NPTCellularCollector *)v13 metadataDidChangeHandler];
        (v33)[2](v33, v26, 0);
      }
    }
  }

  else
  {
  }
}

- (void)cellChanged:(id)a3 cell:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 uuid];
  v9 = [(NPTCellularCollector *)self context];
  v10 = [v9 uuid];
  if ([v8 isEqual:v10])
  {
    v11 = [(NPTCellularCollector *)self stopCollectingMetadata];

    if (!v11)
    {
      v12 = +[NPTLogger cellular];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [NPTCellularCollector cellChanged:cell:];
      }

      v13 = self;
      objc_sync_enter(v13);
      v14 = [(NPTCellularCollector *)v13 servingCellInfo];
      [v14 addEntriesFromDictionary:v7];

      v15 = [(NPTCellularCollector *)v13 servingCellInfo];
      v16 = [(NPTCellularCollector *)v13 slotID];
      v17 = [(NPTCellularCollector *)v13 getCellInfoForSlot:v16];
      [v15 addEntriesFromDictionary:v17];

      v18 = [(NPTCellularCollector *)v13 mutableCellChanges];
      [v18 addObject:v7];

      v19 = [(NPTCellularCollector *)v13 mutableMetadata];
      [v19 addEntriesFromDictionary:v7];

      v20 = objc_alloc_init(MEMORY[0x277CCA968]);
      [v20 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSxxx"];
      v21 = [NPTMetadataEvent alloc];
      v22 = objc_opt_class();
      v23 = [MEMORY[0x277CBEAA8] now];
      v24 = MEMORY[0x277CBEAC0];
      v25 = [(NPTCellularCollector *)v13 servingCellInfo];
      v26 = [v24 dictionaryWithDictionary:v25];
      v27 = [(NPTMetadataEvent *)v21 initWithType:v22 eventType:2 timeStamp:v23 data:v26];

      v28 = [(NPTCellularCollector *)v13 cachedMetadata];
      v29 = [v28 objectForKeyedSubscript:@"events"];

      if (v29)
      {
        v30 = [(NPTCellularCollector *)v13 cachedMetadata];
        v31 = [v30 objectForKeyedSubscript:@"events"];
        v32 = [(NPTMetadataEvent *)v27 asDictionary];
        [v31 addObject:v32];
      }

      objc_sync_exit(v13);
      v33 = [(NPTCellularCollector *)v13 metadataDidChangeHandler];

      if (v33)
      {
        v34 = [(NPTCellularCollector *)v13 metadataDidChangeHandler];
        (v34)[2](v34, v27, 0);
      }
    }
  }

  else
  {
  }
}

- (NSArray)cellChanges
{
  v2 = MEMORY[0x277CBEA60];
  v3 = [(NPTCellularCollector *)self mutableCellChanges];
  v4 = [v2 arrayWithArray:v3];

  return v4;
}

- (NSArray)dataStatusChanges
{
  v2 = MEMORY[0x277CBEA60];
  v3 = [(NPTCellularCollector *)self mutableDataStatusChanges];
  v4 = [v2 arrayWithArray:v3];

  return v4;
}

+ (id)calculateMaxCellularTPutEstimates:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v31 = v3;
  [v3 objectForKeyedSubscript:@"events"];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v37 = 0u;
  v4 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v35;
    v7 = 0.0;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v35 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v34 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"event_type"];
        v12 = [NPTMetadataEventTypeConverter getTypeAsString:27];

        if (v11 == v12)
        {
          v13 = [v10 objectForKeyedSubscript:@"data"];
          v14 = [v13 objectForKeyedSubscript:@"cellular_download_estimate"];
          [v14 doubleValue];
          v16 = v15;

          if (v16 > v8)
          {
            v17 = [v10 objectForKeyedSubscript:@"data"];
            v18 = [v17 objectForKeyedSubscript:@"cellular_download_estimate"];
            [v18 doubleValue];
            v8 = v19;
          }

          v20 = [v10 objectForKeyedSubscript:@"data"];
          v21 = [v20 objectForKeyedSubscript:@"cellular_upload_estimate"];
          [v21 doubleValue];
          v23 = v22;

          if (v23 > v7)
          {
            v24 = [v10 objectForKeyedSubscript:@"data"];
            v25 = [v24 objectForKeyedSubscript:@"cellular_upload_estimate"];
            [v25 doubleValue];
            v7 = v26;
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
    v8 = 0.0;
  }

  v27 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
  [v32 setObject:v27 forKeyedSubscript:@"cellular_max_download_estimate"];

  v28 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
  [v32 setObject:v28 forKeyedSubscript:@"cellular_max_upload_estimate"];

  v29 = *MEMORY[0x277D85DE8];

  return v32;
}

- (void)signalStrengthMeasurements
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [a1 slotID];
  v10 = [a2 localizedDescription];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)getCellularMNCMCCDE
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getCellInfoForSlot:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)startCollectingWithCompletion:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)getPreferredDataSlot
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)estimateDidChange:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_233421000, v0, OS_LOG_TYPE_DEBUG, "Cellular Throughput Estimate Changed: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)dataStatus:(void *)a1 dataStatusInfo:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 dictionary];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_233421000, a2, OS_LOG_TYPE_DEBUG, "Data Status Changed: %@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)cellChanged:cell:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_233421000, v0, OS_LOG_TYPE_DEBUG, "Cell changed: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end