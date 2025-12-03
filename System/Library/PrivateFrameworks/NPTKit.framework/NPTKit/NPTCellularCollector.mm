@interface NPTCellularCollector
+ (id)calculateMaxCellularTPutEstimates:(id)estimates;
+ (id)getPreferredDataSlot;
+ (void)getPreferredDataSlot;
- (NPTCellularCollector)init;
- (NPTCellularCollector)initWithSlotID:(id)d;
- (NSArray)cellChanges;
- (NSArray)dataStatusChanges;
- (NSDictionary)metadata;
- (id)dualSimStatus;
- (id)fetchCellularTPutEstimates;
- (id)getCellInfoForSlot:(id)slot;
- (id)getCellularMNCMCCDE;
- (id)getEstimateFromPath:(id)path;
- (id)signalStrengthMeasurements;
- (id)wrmBasebandMetrics;
- (void)cellChanged:(id)changed cell:(id)cell;
- (void)dataStatus:(id)status dataStatusInfo:(id)info;
- (void)estimateDidChange:(id)change;
- (void)getCellularMNCMCCDE;
- (void)setUpPathMonitor:(id)monitor;
- (void)signalStrengthMeasurements;
- (void)startCollectingWithCompletion:(id)completion;
- (void)stopCollecting;
@end

@implementation NPTCellularCollector

- (NPTCellularCollector)init
{
  v3 = +[NPTCellularCollector getPreferredDataSlot];
  v4 = [(NPTCellularCollector *)self initWithSlotID:v3];

  return v4;
}

- (NPTCellularCollector)initWithSlotID:(id)d
{
  dCopy = d;
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
    objc_storeStrong(&v6->_slotID, d);
    v19 = objc_alloc_init(MEMORY[0x277CC3790]);
    networkInfo = v6->_networkInfo;
    v6->_networkInfo = v19;

    if ([dCopy isEqualToNumber:&unk_2848CF158])
    {
      v21 = 1;
    }

    else if ([dCopy isEqualToNumber:&unk_2848CF170])
    {
      v21 = 2;
    }

    else
    {
      NSLog(&cfstr_ExpectingSloti.isa, dCopy);
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
  mutableMetadata = [(NPTCellularCollector *)self mutableMetadata];
  v4 = [v2 dictionaryWithDictionary:mutableMetadata];

  return v4;
}

- (id)dualSimStatus
{
  ctClient = [(NPTCellularCollector *)self ctClient];

  if (!ctClient)
  {
    return @"Unknown";
  }

  ctClient2 = [(NPTCellularCollector *)self ctClient];
  v8 = 0;
  v5 = [ctClient2 getDualSimCapability:&v8];
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
          selfCopy = self;
          objc_sync_enter(selfCopy);
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

          objc_sync_exit(selfCopy);
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
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  ctClient = [(NPTCellularCollector *)self ctClient];
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
  context = [(NPTCellularCollector *)self context];
  v8 = [v6 descriptorWithSubscriptionContext:context];

  ctClient2 = [(NPTCellularCollector *)self ctClient];
  v23 = 0;
  v10 = [ctClient2 getSignalStrengthMeasurements:v8 error:&v23];
  v11 = v23;

  if (!v11)
  {
    rssi = [v10 rssi];
    [dictionary setObject:rssi forKeyedSubscript:@"cellular_rssi"];

    rscp = [v10 rscp];
    [dictionary setObject:rscp forKeyedSubscript:@"cellular_rscp"];

    ecn0 = [v10 ecn0];
    [dictionary setObject:ecn0 forKeyedSubscript:@"cellular_ecn0"];

    rsrp = [v10 rsrp];
    [dictionary setObject:rsrp forKeyedSubscript:@"cellular_rsrp"];

    rsrq = [v10 rsrq];
    [dictionary setObject:rsrq forKeyedSubscript:@"cellular_rsrq"];

    v19 = [v10 snr];
    [dictionary setObject:v19 forKeyedSubscript:@"cellular_snr"];

    ecio = [v10 ecio];
    [dictionary setObject:ecio forKeyedSubscript:@"cellular_ecio"];

    rxagc = [v10 rxagc];
    [dictionary setObject:rxagc forKeyedSubscript:@"cellular_rxagc"];

LABEL_9:
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:dictionary];
    goto LABEL_10;
  }

  v12 = +[NPTLogger cellular];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [(NPTCellularCollector *)self signalStrengthMeasurements];
  }

  v13 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:dictionary];

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

- (id)getCellInfoForSlot:(id)slot
{
  slotCopy = slot;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = objc_alloc(MEMORY[0x277CC37B0]);
  v5 = dispatch_get_global_queue(2, 0);
  v6 = [v4 initWithQueue:v5];

  if ([slotCopy isEqualToNumber:&unk_2848CF158])
  {
    v7 = objc_alloc(MEMORY[0x277CC3798]);
    v8 = 1;
  }

  else if ([slotCopy isEqualToNumber:&unk_2848CF170])
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

- (void)startCollectingWithCompletion:(id)completion
{
  completionCopy = completion;
  v62 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(NPTCellularCollector *)self setStopCollectingMetadata:0];
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(NPTCellularCollector *)self setCachedMetadata:v5];

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  cachedMetadata = [(NPTCellularCollector *)self cachedMetadata];
  [cachedMetadata setObject:v6 forKeyedSubscript:?];

  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  cachedMetadata2 = [(NPTCellularCollector *)self cachedMetadata];
  [cachedMetadata2 setObject:v8 forKeyedSubscript:@"events"];

  dualSimStatus = [(NPTCellularCollector *)self dualSimStatus];
  [v4 setObject:dualSimStatus forKeyedSubscript:@"cellular_dual_sim_capability"];

  slotID = [(NPTCellularCollector *)self slotID];
  v12 = [(NPTCellularCollector *)self getCellInfoForSlot:slotID];

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
  signalStrengthMeasurements = [(NPTCellularCollector *)self signalStrengthMeasurements];
  [v4 addEntriesFromDictionary:signalStrengthMeasurements];

  networkInfo = [(NPTCellularCollector *)self networkInfo];
  dataServiceIdentifier = [networkInfo dataServiceIdentifier];

  networkInfo2 = [(NPTCellularCollector *)self networkInfo];
  serviceCurrentRadioAccessTechnology = [networkInfo2 serviceCurrentRadioAccessTechnology];
  v60 = dataServiceIdentifier;
  v18 = [serviceCurrentRadioAccessTechnology objectForKeyedSubscript:dataServiceIdentifier];

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
    uppercaseString = [v22 uppercaseString];
    [v4 setObject:uppercaseString forKeyedSubscript:@"cellular_mobile_country_code"];

    v26 = self->_ctClient;
    v71 = 0;
    v27 = [(CoreTelephonyClient *)v26 copyMobileSubscriberIsoCountryCode:v22 error:&v71];
    v28 = v71;
    v24 = v28;
    if (v27 && !v28)
    {
      uppercaseString2 = [v27 uppercaseString];
      [v4 setObject:uppercaseString2 forKeyedSubscript:@"cellular_iso_country_code"];
    }
  }

  v30 = self->_ctClient;
  v31 = self->_context;
  v70 = v24;
  v32 = [(CoreTelephonyClient *)v30 copyMobileSubscriberNetworkCode:v31 error:&v70];
  v33 = v70;

  if (v32 && !v33)
  {
    uppercaseString3 = [v32 uppercaseString];
    [v4 setObject:uppercaseString3 forKeyedSubscript:@"cellular_mobile_network_code"];
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

  ctClient = [(NPTCellularCollector *)self ctClient];
  context = [(NPTCellularCollector *)self context];
  v67 = 0;
  v47 = [ctClient getDataStatus:context error:&v67];
  v48 = v67;

  if (v48)
  {
    v49 = +[NPTLogger cellular];
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      [NPTCellularCollector startCollectingWithCompletion:v48];
    }
  }

  dictionary = [v47 dictionary];
  [v4 addEntriesFromDictionary:dictionary];

  getCellularMNCMCCDE = [(NPTCellularCollector *)self getCellularMNCMCCDE];
  [v4 addEntriesFromDictionary:getCellularMNCMCCDE];

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

  if (completionCopy)
  {
    v52 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v4];
    v53 = [v62 copy];
    completionCopy[2](completionCopy, v52, v53);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  cachedMetadata3 = [(NPTCellularCollector *)selfCopy cachedMetadata];
  [cachedMetadata3 setObject:v4 forKeyedSubscript:@"initial_state"];

  [(NPTCellularCollector *)selfCopy setMutableMetadata:v4];
  objc_sync_exit(selfCopy);

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
    subscriptions = [v5 subscriptions];
    v10 = [subscriptions countByEnumeratingWithState:&v22 objects:v27 count:16];
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
            objc_enumerationMutation(subscriptions);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          uuid = [v14 uuid];
          dataPreferred = [v5 dataPreferred];
          v17 = [uuid isEqual:dataPreferred];

          if (v17)
          {
            v18 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v14, "slotID")}];
            v4 = v21;
            goto LABEL_16;
          }
        }

        v11 = [subscriptions countByEnumeratingWithState:&v22 objects:v27 count:16];
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

- (void)setUpPathMonitor:(id)monitor
{
  monitorCopy = monitor;
  v5 = nw_path_monitor_create_with_type(nw_interface_type_cellular);
  [(NPTCellularCollector *)self setPathMonitor:v5];

  pathMonitor = [(NPTCellularCollector *)self pathMonitor];
  v7 = dispatch_get_global_queue(2, 0);
  nw_path_monitor_set_queue(pathMonitor, v7);

  pathMonitor2 = [(NPTCellularCollector *)self pathMonitor];
  nw_path_monitor_set_update_handler(pathMonitor2, monitorCopy);

  pathMonitor3 = [(NPTCellularCollector *)self pathMonitor];
  nw_path_monitor_start(pathMonitor3);
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

- (id)getEstimateFromPath:(id)path
{
  v3 = MEMORY[0x277CBEB38];
  pathCopy = path;
  v5 = objc_alloc_init(v3);
  estimated_download_throughput = nw_path_get_estimated_download_throughput();
  estimated_upload_throughput = nw_path_get_estimated_upload_throughput();

  v8 = [MEMORY[0x277CCABB0] numberWithDouble:estimated_download_throughput / 125000.0];
  [v5 setObject:v8 forKeyedSubscript:@"cellular_download_estimate"];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:estimated_upload_throughput / 125000.0];
  [v5 setObject:v9 forKeyedSubscript:@"cellular_upload_estimate"];

  return v5;
}

- (void)estimateDidChange:(id)change
{
  changeCopy = change;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [(NPTCellularCollector *)self getEstimateFromPath:changeCopy];
  [v5 addEntriesFromDictionary:v6];

  v7 = +[NPTLogger cellular];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [NPTCellularCollector estimateDidChange:];
  }

  if ([v5 count])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    mutableMetadata = [(NPTCellularCollector *)selfCopy mutableMetadata];
    [mutableMetadata addEntriesFromDictionary:v5];

    v10 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v10 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSxxx"];
    v11 = [NPTMetadataEvent alloc];
    v12 = objc_opt_class();
    v13 = [MEMORY[0x277CBEAA8] now];
    v14 = [(NPTMetadataEvent *)v11 initWithType:v12 eventType:27 timeStamp:v13 data:v5];

    cachedMetadata = [(NPTCellularCollector *)selfCopy cachedMetadata];
    v16 = [cachedMetadata objectForKeyedSubscript:@"events"];
    asDictionary = [(NPTMetadataEvent *)v14 asDictionary];
    [v16 addObject:asDictionary];

    objc_sync_exit(selfCopy);
    metadataDidChangeHandler = [(NPTCellularCollector *)selfCopy metadataDidChangeHandler];

    if (metadataDidChangeHandler)
    {
      metadataDidChangeHandler2 = [(NPTCellularCollector *)selfCopy metadataDidChangeHandler];
      (metadataDidChangeHandler2)[2](metadataDidChangeHandler2, v14, 0);
    }
  }
}

- (void)dataStatus:(id)status dataStatusInfo:(id)info
{
  statusCopy = status;
  infoCopy = info;
  uuid = [statusCopy uuid];
  context = [(NPTCellularCollector *)self context];
  uuid2 = [context uuid];
  if ([uuid isEqual:uuid2])
  {
    stopCollectingMetadata = [(NPTCellularCollector *)self stopCollectingMetadata];

    if (!stopCollectingMetadata)
    {
      v12 = +[NPTLogger cellular];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [NPTCellularCollector dataStatus:infoCopy dataStatusInfo:v12];
      }

      selfCopy = self;
      objc_sync_enter(selfCopy);
      [(NPTCellularCollector *)selfCopy setDataStatus:infoCopy];
      mutableDataStatusChanges = [(NPTCellularCollector *)selfCopy mutableDataStatusChanges];
      dataStatus = [(NPTCellularCollector *)selfCopy dataStatus];
      dictionary = [dataStatus dictionary];
      [mutableDataStatusChanges addObject:dictionary];

      mutableMetadata = [(NPTCellularCollector *)selfCopy mutableMetadata];
      dataStatus2 = [(NPTCellularCollector *)selfCopy dataStatus];
      dictionary2 = [dataStatus2 dictionary];
      [mutableMetadata addEntriesFromDictionary:dictionary2];

      v20 = objc_alloc_init(MEMORY[0x277CCA968]);
      [v20 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSxxx"];
      v21 = [NPTMetadataEvent alloc];
      v22 = objc_opt_class();
      v23 = [MEMORY[0x277CBEAA8] now];
      dataStatus3 = [(NPTCellularCollector *)selfCopy dataStatus];
      dictionary3 = [dataStatus3 dictionary];
      v26 = [(NPTMetadataEvent *)v21 initWithType:v22 eventType:1 timeStamp:v23 data:dictionary3];

      cachedMetadata = [(NPTCellularCollector *)selfCopy cachedMetadata];
      v28 = [cachedMetadata objectForKeyedSubscript:@"events"];

      if (v28)
      {
        cachedMetadata2 = [(NPTCellularCollector *)selfCopy cachedMetadata];
        v30 = [cachedMetadata2 objectForKeyedSubscript:@"events"];
        asDictionary = [(NPTMetadataEvent *)v26 asDictionary];
        [v30 addObject:asDictionary];
      }

      objc_sync_exit(selfCopy);
      metadataDidChangeHandler = [(NPTCellularCollector *)selfCopy metadataDidChangeHandler];

      if (metadataDidChangeHandler)
      {
        metadataDidChangeHandler2 = [(NPTCellularCollector *)selfCopy metadataDidChangeHandler];
        (metadataDidChangeHandler2)[2](metadataDidChangeHandler2, v26, 0);
      }
    }
  }

  else
  {
  }
}

- (void)cellChanged:(id)changed cell:(id)cell
{
  changedCopy = changed;
  cellCopy = cell;
  uuid = [changedCopy uuid];
  context = [(NPTCellularCollector *)self context];
  uuid2 = [context uuid];
  if ([uuid isEqual:uuid2])
  {
    stopCollectingMetadata = [(NPTCellularCollector *)self stopCollectingMetadata];

    if (!stopCollectingMetadata)
    {
      v12 = +[NPTLogger cellular];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [NPTCellularCollector cellChanged:cell:];
      }

      selfCopy = self;
      objc_sync_enter(selfCopy);
      servingCellInfo = [(NPTCellularCollector *)selfCopy servingCellInfo];
      [servingCellInfo addEntriesFromDictionary:cellCopy];

      servingCellInfo2 = [(NPTCellularCollector *)selfCopy servingCellInfo];
      slotID = [(NPTCellularCollector *)selfCopy slotID];
      v17 = [(NPTCellularCollector *)selfCopy getCellInfoForSlot:slotID];
      [servingCellInfo2 addEntriesFromDictionary:v17];

      mutableCellChanges = [(NPTCellularCollector *)selfCopy mutableCellChanges];
      [mutableCellChanges addObject:cellCopy];

      mutableMetadata = [(NPTCellularCollector *)selfCopy mutableMetadata];
      [mutableMetadata addEntriesFromDictionary:cellCopy];

      v20 = objc_alloc_init(MEMORY[0x277CCA968]);
      [v20 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSxxx"];
      v21 = [NPTMetadataEvent alloc];
      v22 = objc_opt_class();
      v23 = [MEMORY[0x277CBEAA8] now];
      v24 = MEMORY[0x277CBEAC0];
      servingCellInfo3 = [(NPTCellularCollector *)selfCopy servingCellInfo];
      v26 = [v24 dictionaryWithDictionary:servingCellInfo3];
      v27 = [(NPTMetadataEvent *)v21 initWithType:v22 eventType:2 timeStamp:v23 data:v26];

      cachedMetadata = [(NPTCellularCollector *)selfCopy cachedMetadata];
      v29 = [cachedMetadata objectForKeyedSubscript:@"events"];

      if (v29)
      {
        cachedMetadata2 = [(NPTCellularCollector *)selfCopy cachedMetadata];
        v31 = [cachedMetadata2 objectForKeyedSubscript:@"events"];
        asDictionary = [(NPTMetadataEvent *)v27 asDictionary];
        [v31 addObject:asDictionary];
      }

      objc_sync_exit(selfCopy);
      metadataDidChangeHandler = [(NPTCellularCollector *)selfCopy metadataDidChangeHandler];

      if (metadataDidChangeHandler)
      {
        metadataDidChangeHandler2 = [(NPTCellularCollector *)selfCopy metadataDidChangeHandler];
        (metadataDidChangeHandler2)[2](metadataDidChangeHandler2, v27, 0);
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
  mutableCellChanges = [(NPTCellularCollector *)self mutableCellChanges];
  v4 = [v2 arrayWithArray:mutableCellChanges];

  return v4;
}

- (NSArray)dataStatusChanges
{
  v2 = MEMORY[0x277CBEA60];
  mutableDataStatusChanges = [(NPTCellularCollector *)self mutableDataStatusChanges];
  v4 = [v2 arrayWithArray:mutableDataStatusChanges];

  return v4;
}

+ (id)calculateMaxCellularTPutEstimates:(id)estimates
{
  v39 = *MEMORY[0x277D85DE8];
  estimatesCopy = estimates;
  v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v31 = estimatesCopy;
  [estimatesCopy objectForKeyedSubscript:@"events"];
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
  slotID = [self slotID];
  localizedDescription = [a2 localizedDescription];
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
  localizedDescription = [self localizedDescription];
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