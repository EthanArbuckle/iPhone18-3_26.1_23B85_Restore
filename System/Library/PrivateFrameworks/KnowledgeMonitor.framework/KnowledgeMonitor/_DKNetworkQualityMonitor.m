@interface _DKNetworkQualityMonitor
- (id)initForInterfaceType:(int64_t)a3 connectionStatusKeyPath:(id)a4 qualityKeyPath:(id)a5 predictedQualityKeyPath:(id)a6 discretionaryInvitedPath:(id)a7;
- (id)predictionTimelineFromNOIPredictions:(id)a3;
- (void)deactivate;
- (void)dealloc;
- (void)didStartTrackingNOI:(id)a3;
- (void)didStopTrackingAllNOIs:(id)a3;
- (void)didStopTrackingNOI:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)start;
- (void)stop;
- (void)synchronouslyReflectCurrentValue;
- (void)updateDiscretionaryTrafficInvited;
- (void)updateInstantQuality;
- (void)updateInterfaceClass;
- (void)updatePowerCostDL;
- (void)updatePowerCostUL;
- (void)updatePredictionAsync;
@end

@implementation _DKNetworkQualityMonitor

- (id)initForInterfaceType:(int64_t)a3 connectionStatusKeyPath:(id)a4 qualityKeyPath:(id)a5 predictedQualityKeyPath:(id)a6 discretionaryInvitedPath:(id)a7
{
  v34[5] = *MEMORY[0x277D85DE8];
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v32.receiver = self;
  v32.super_class = _DKNetworkQualityMonitor;
  v17 = [(_DKMonitor *)&v32 init];
  v18 = v17;
  if (v17)
  {
    v17->_interfaceType = a3;
    v17->_initialized = 0;
    objc_storeStrong(&v17->_statusKeyPath, a4);
    v18->_previousQuality = 0;
    objc_storeStrong(&v18->_qualityKeyPath, a5);
    objc_storeStrong(&v18->_predictedQualityKeyPath, a6);
    objc_storeStrong(&v18->_discretionaryInvitedKeyPath, a7);
    v19 = [MEMORY[0x277CBEB38] dictionary];
    statusDictionary = v18->_statusDictionary;
    v18->_statusDictionary = v19;

    if (a3 == 2)
    {
      v34[0] = @"predictionsGeneratedAt";
      v34[1] = @"linkQuality";
      v34[2] = @"discretionaryTrafficInvited";
      v34[3] = @"powerCostUL";
      v34[4] = @"interfaceClass";
      v21 = MEMORY[0x277CBEA60];
      v22 = v34;
      v23 = 5;
    }

    else
    {
      v33[0] = @"predictionsGeneratedAt";
      v33[1] = @"linkQuality";
      v33[2] = @"interfaceClass";
      v21 = MEMORY[0x277CBEA60];
      v22 = v33;
      v23 = 3;
    }

    v24 = [v21 arrayWithObjects:v22 count:v23];
    noiKeyPaths = v18->_noiKeyPaths;
    v18->_noiKeyPaths = v24;

    v26 = dispatch_queue_create("com.apple.duetknowledgecollector.networkQualityMonitorQueue", 0);
    noiManagerQueue = v18->_noiManagerQueue;
    v18->_noiManagerQueue = v26;

    v28 = objc_alloc_init(MEMORY[0x277D6B6D8]);
    noiManager = v18->_noiManager;
    v18->_noiManager = v28;

    [(NWNetworkOfInterestManager *)v18->_noiManager setQueue:v18->_noiManagerQueue];
    [(NWNetworkOfInterestManager *)v18->_noiManager setDelegate:v18];
  }

  v30 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)dealloc
{
  [(_DKNetworkQualityMonitor *)self deactivate];
  v3.receiver = self;
  v3.super_class = _DKNetworkQualityMonitor;
  [(_DKMonitor *)&v3 dealloc];
}

- (id)predictionTimelineFromNOIPredictions:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v26 = v5;
    v8 = 0;
    v9 = 0;
    v10 = *v28;
    do
    {
      v11 = v6;
      v12 = 0;
      v13 = v9;
      do
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(v11);
        }

        v14 = *(*(&v27 + 1) + 8 * v12);
        v15 = [v14 changePointAt];
        v16 = v15;
        if (v8)
        {
          [v15 timeIntervalSinceDate:v13];
          v18 = v17;

          v19 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
          [v26 addObject:v19];
        }

        else
        {
          v8 = v15;
        }

        v9 = [v14 changePointAt];

        v20 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v14, "toQuality")}];
        [v4 addObject:v20];

        v21 = [v14 resolutionSeconds];
        v12 = v12 + 1;
        v13 = v9;
      }

      while (v7 != v12);
      v22 = v21;
      v6 = v11;
      v7 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v7);

    if (v8)
    {
      v23 = [MEMORY[0x277CCABB0] numberWithDouble:(2 * v22)];
      v5 = v26;
      [v26 addObject:v23];

      v7 = [objc_alloc(MEMORY[0x277D06A20]) initWithValues:v4 forDurations:v26 startingAt:v8];
    }

    else
    {
      v7 = 0;
      v5 = v26;
    }
  }

  else
  {

    v9 = 0;
    v8 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)updatePredictionAsync
{
  if (self->_predictedQualityKeyPath)
  {
    v3 = [(NWNetworkOfInterest *)self->_noi predictions];
    if (v3)
    {
      v4 = [(NWNetworkOfInterest *)self->_noi predictions];
      v9 = [(_DKNetworkQualityMonitor *)self predictionTimelineFromNOIPredictions:v4];
    }

    else
    {
      v9 = 0;
    }

    v5 = [MEMORY[0x277CFE318] userContext];
    [v5 setObject:v9 forKeyedSubscript:self->_predictedQualityKeyPath];

    statusDictionary = self->_statusDictionary;
    if (v9)
    {
      [(NSMutableDictionary *)statusDictionary setObject:v9 forKeyedSubscript:@"prediction"];
    }

    else
    {
      [(NSMutableDictionary *)statusDictionary removeObjectForKey:@"prediction"];
    }

    v7 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:self->_statusDictionary];
    v8 = [MEMORY[0x277CFE318] userContext];
    [v8 setObject:v7 forKeyedSubscript:self->_statusKeyPath];
  }
}

- (void)updateInstantQuality
{
  v26 = *MEMORY[0x277D85DE8];
  noi = self->_noi;
  if (noi)
  {
    v4 = [(NWNetworkOfInterest *)noi linkQuality];
    v5 = v4;
    if (!self->_initialized || v4 != self->_previousQuality)
    {
      v6 = [MEMORY[0x277CFE0C8] contextChannel];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        qualityKeyPath = self->_qualityKeyPath;
        v8 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
        v22 = 138412546;
        v23 = qualityKeyPath;
        v24 = 2112;
        v25 = v8;
        _os_log_impl(&dword_22595A000, v6, OS_LOG_TYPE_DEFAULT, "Network quality for %@ is %@", &v22, 0x16u);
      }

      v9 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
      v10 = [MEMORY[0x277CFE318] userContext];
      [v10 setObject:v9 forKeyedSubscript:self->_qualityKeyPath];

      v11 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
      statusDictionary = self->_statusDictionary;
      v13 = [MEMORY[0x277CFE388] connectionQualityKey];
      [(NSMutableDictionary *)statusDictionary setObject:v11 forKeyedSubscript:v13];

      v14 = [(NWNetworkOfInterest *)self->_noi atHomeScopedNOI];
      v15 = [(NWNetworkOfInterest *)self->_noi atWorkScopedNOI];
      if ((v14 & 1) != 0 || v15)
      {
        if (v14)
        {
          v16 = &unk_2838F78E8;
        }

        else
        {
          v16 = &unk_2838F7900;
        }

        v17 = self->_statusDictionary;
        v18 = [MEMORY[0x277CFE388] loiKey];
        [(NSMutableDictionary *)v17 setObject:v16 forKeyedSubscript:v18];
      }

      v19 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:self->_statusDictionary];
      v20 = [MEMORY[0x277CFE318] userContext];
      [v20 setObject:v19 forKeyedSubscript:self->_statusKeyPath];

      self->_previousQuality = v5;
      self->_initialized = 1;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)updateDiscretionaryTrafficInvited
{
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{-[NWNetworkOfInterest discretionaryTrafficInvited](self->_noi, "discretionaryTrafficInvited")}];
  v4 = [MEMORY[0x277CFE318] userContext];
  [v4 setObject:v3 forKeyedSubscript:self->_discretionaryInvitedKeyPath];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[NWNetworkOfInterest discretionaryTrafficInvited](self->_noi, "discretionaryTrafficInvited")}];
  statusDictionary = self->_statusDictionary;
  v7 = [MEMORY[0x277CFE388] interfaceUpKey];
  [(NSMutableDictionary *)statusDictionary setObject:v5 forKeyedSubscript:v7];

  v9 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:self->_statusDictionary];
  v8 = [MEMORY[0x277CFE318] userContext];
  [v8 setObject:v9 forKeyedSubscript:self->_statusKeyPath];
}

- (void)updatePowerCostDL
{
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NWNetworkOfInterest powerCostDL](self->_noi, "powerCostDL")}];
  statusDictionary = self->_statusDictionary;
  v5 = [MEMORY[0x277CFE388] downloadPowerCostKey];
  [(NSMutableDictionary *)statusDictionary setObject:v3 forKeyedSubscript:v5];

  v7 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:self->_statusDictionary];
  v6 = [MEMORY[0x277CFE318] userContext];
  [v6 setObject:v7 forKeyedSubscript:self->_statusKeyPath];
}

- (void)updatePowerCostUL
{
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NWNetworkOfInterest powerCostUL](self->_noi, "powerCostUL")}];
  statusDictionary = self->_statusDictionary;
  v5 = [MEMORY[0x277CFE388] uploadPowerCostKey];
  [(NSMutableDictionary *)statusDictionary setObject:v3 forKeyedSubscript:v5];

  v7 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:self->_statusDictionary];
  v6 = [MEMORY[0x277CFE318] userContext];
  [v6 setObject:v7 forKeyedSubscript:self->_statusKeyPath];
}

- (void)updateInterfaceClass
{
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NWNetworkOfInterest interfaceClass](self->_noi, "interfaceClass")}];
  statusDictionary = self->_statusDictionary;
  v5 = [MEMORY[0x277CFE388] interfaceClassKey];
  [(NSMutableDictionary *)statusDictionary setObject:v3 forKeyedSubscript:v5];

  v7 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:self->_statusDictionary];
  v6 = [MEMORY[0x277CFE318] userContext];
  [v6 setObject:v7 forKeyedSubscript:self->_statusKeyPath];
}

- (void)didStartTrackingNOI:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!self->_noi)
  {
    objc_storeStrong(&self->_noi, a3);
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = self->_noiKeyPaths;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v18 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          if ((![v11 isEqualToString:@"predictionsGeneratedAt"] || self->_predictedQualityKeyPath) && (!objc_msgSend(v11, "isEqualToString:", @"discretionaryTrafficInvited") || self->_discretionaryInvitedKeyPath))
          {
            [v5 addObserver:self forKeyPath:v11 options:1 context:0];
          }
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v18 objects:v25 count:16];
      }

      while (v8);
    }

    v12 = [(_DKMonitor *)self queue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __48___DKNetworkQualityMonitor_didStartTrackingNOI___block_invoke;
    v17[3] = &unk_27856F060;
    v17[4] = self;
    v13 = v17;
    v14 = os_transaction_create();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __cd_dispatch_async_capture_tx_block_invoke_7;
    block[3] = &unk_27856F178;
    v23 = v14;
    v24 = v13;
    v15 = v14;
    dispatch_async(v12, block);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)didStopTrackingNOI:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isEqual:self->_noi])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = self->_noiKeyPaths;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          if ((![v10 isEqualToString:@"predictionsGeneratedAt"] || self->_predictedQualityKeyPath) && (!objc_msgSend(v10, "isEqualToString:", @"discretionaryTrafficInvited") || self->_discretionaryInvitedKeyPath))
          {
            [v4 removeObserver:self forKeyPath:v10];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    noi = self->_noi;
    self->_noi = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)didStopTrackingAllNOIs:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(_DKNetworkQualityMonitor *)self didStopTrackingNOI:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  if (self->_enabled)
  {
    [(NWNetworkOfInterestManager *)self->_noiManager trackNOIAnyForInterfaceType:self->_interfaceType options:0];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v8 = a3;
  if ([a4 isEqual:self->_noi])
  {
    v9 = [(_DKMonitor *)self queue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __75___DKNetworkQualityMonitor_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v13[3] = &unk_27856F0B0;
    v14 = v8;
    v15 = self;
    v10 = v13;
    v11 = os_transaction_create();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __cd_dispatch_async_capture_tx_block_invoke_7;
    block[3] = &unk_27856F178;
    v17 = v11;
    v18 = v10;
    v12 = v11;
    dispatch_async(v9, block);
  }
}

- (void)start
{
  v3.receiver = self;
  v3.super_class = _DKNetworkQualityMonitor;
  if ([(_DKMonitor *)&v3 instantMonitorNeedsActivation])
  {
    self->_enabled = 1;
    [(NWNetworkOfInterestManager *)self->_noiManager trackNOIAnyForInterfaceType:self->_interfaceType options:0];
  }
}

- (void)stop
{
  v3.receiver = self;
  v3.super_class = _DKNetworkQualityMonitor;
  if ([(_DKMonitor *)&v3 instantMonitorNeedsDeactivation])
  {
    [(_DKNetworkQualityMonitor *)self deactivate];
  }
}

- (void)deactivate
{
  if (self->_enabled)
  {
    self->_enabled = 0;
    self->_initialized = 0;
    noiManager = self->_noiManager;
    v4 = [MEMORY[0x277CBEB98] setWithObjects:{self->_noi, 0}];
    [(NWNetworkOfInterestManager *)noiManager stopTrackingNOIs:v4];
  }
}

- (void)synchronouslyReflectCurrentValue
{
  if (![(_DKNetworkQualityMonitor *)self initialized])
  {
    v3 = [(_DKMonitor *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60___DKNetworkQualityMonitor_synchronouslyReflectCurrentValue__block_invoke;
    block[3] = &unk_27856F060;
    block[4] = self;
    dispatch_sync(v3, block);
  }
}

@end