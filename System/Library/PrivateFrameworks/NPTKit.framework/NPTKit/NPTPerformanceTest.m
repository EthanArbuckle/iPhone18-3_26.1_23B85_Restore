@interface NPTPerformanceTest
+ (id)performanceTestWithConfiguration:(id)a3;
+ (id)performanceTestWithDefaultConfiguration;
- (BOOL)inTimedMode;
- (NPTPerformanceTest)init;
- (NPTPerformanceTest)initWithCoder:(id)a3;
- (NPTPerformanceTest)initWithConfiguration:(id)a3;
- (NSDictionary)dictionary;
- (NSDictionary)metadata;
- (id)NQRatingFromEnum:(int64_t)a3;
- (id)collectorsWithoutCDNDebug;
- (id)convertDateToISO8601String:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)delegate;
- (id)fetchAWDMetric;
- (id)getFlattenedDictionary;
- (id)getFlattenedMetadataDictionary:(id)a3;
- (id)getTransformedDataForCoreAnalytics;
- (id)timestampMasked;
- (id)timestampMaskedString;
- (void)activateActivity;
- (void)cancelAllNetworking;
- (void)completeActivityWithReason:(int)a3;
- (void)dealloc;
- (void)download:(id)a3 didFinishWithError:(id)a4;
- (void)download:(id)a3 didFinishWithResults:(id)a4;
- (void)download:(id)a3 didReceiveSpeedMetric:(id)a4;
- (void)downloadWillStart;
- (void)encodeWithCoder:(id)a3;
- (void)fetchAndSaveWRMMetrics;
- (void)pingDidFinishWithError:(id)a3;
- (void)pingDidFinishWithResults:(id)a3;
- (void)pingWillStartPinging;
- (void)save;
- (void)saveToAWD;
- (void)setMetadataDidChangeHandler:(id)a3;
- (void)startDownloadWithCompletion:(id)a3;
- (void)startMetadataCollectionWithCompletion:(id)a3;
- (void)startPingWithCompletion:(id)a3;
- (void)startTestWithCompletion:(id)a3;
- (void)startUploadWithCompletion:(id)a3;
- (void)upload:(id)a3 didFinishWithError:(id)a4;
- (void)upload:(id)a3 didFinishWithResults:(id)a4;
- (void)upload:(id)a3 didReceiveSpeedMetric:(id)a4;
- (void)uploadWillStart;
@end

@implementation NPTPerformanceTest

- (NPTPerformanceTest)init
{
  v25.receiver = self;
  v25.super_class = NPTPerformanceTest;
  v2 = [(NPTPerformanceTest *)&v25 init];
  if (v2)
  {
    v3 = nw_activity_create();
    performanceTestActivity = v2->performanceTestActivity;
    v2->performanceTestActivity = v3;

    v5 = [NPTDownload alloc];
    v6 = v2->performanceTestActivity;
    v7 = objc_alloc_init(NPTPerformanceTestConfiguration);
    v8 = [(NPTDownload *)v5 initWithNetworkActivityParent:v6 testConfiguration:v7];
    download = v2->download;
    v2->download = v8;

    v10 = [NPTUpload alloc];
    v11 = v2->performanceTestActivity;
    v12 = objc_alloc_init(NPTPerformanceTestConfiguration);
    v13 = [(NPTUpload *)v10 initWithNetworkActivityParent:v11 testConfiguration:v12];
    upload = v2->upload;
    v2->upload = v13;

    v15 = [[NPTPing alloc] initWithNetworkActivityParent:v2->performanceTestActivity];
    ping = v2->ping;
    v2->ping = v15;

    [(NPTPing *)v2->ping setDelegate:v2];
    [(NPTDownload *)v2->download setDelegate:v2];
    [(NPTUpload *)v2->upload setDelegate:v2];
    v17 = objc_alloc_init(NPTResults);
    [(NPTPerformanceTest *)v2 setResults:v17];

    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    snapshots = v2->snapshots;
    v2->snapshots = v18;

    v20 = [MEMORY[0x277CCAD78] UUID];
    v21 = [v20 UUIDString];
    v22 = [v21 stringByReplacingOccurrencesOfString:@"-" withString:&stru_2848BD380];
    uuid = v2->uuid;
    v2->uuid = v22;

    [(NPTPerformanceTest *)v2 set_additionalMetadata:0];
  }

  return v2;
}

- (NPTPerformanceTest)initWithConfiguration:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v30.receiver = self;
  v30.super_class = NPTPerformanceTest;
  v5 = [(NPTPerformanceTest *)&v30 init];
  if (v5)
  {
    v6 = nw_activity_create();
    performanceTestActivity = v5->performanceTestActivity;
    v5->performanceTestActivity = v6;

    v8 = [[NPTDownload alloc] initWithNetworkActivityParent:v5->performanceTestActivity testConfiguration:v4];
    download = v5->download;
    v5->download = v8;

    v10 = [[NPTUpload alloc] initWithNetworkActivityParent:v5->performanceTestActivity testConfiguration:v4];
    upload = v5->upload;
    v5->upload = v10;

    v12 = [NPTPing alloc];
    v13 = v5->performanceTestActivity;
    v14 = [v4 pingHost];
    v15 = [(NPTPing *)v12 initWithNetworkActivityParent:v13 pingTarget:v14];
    ping = v5->ping;
    v5->ping = v15;

    [(NPTPing *)v5->ping setDelegate:v5];
    [(NPTDownload *)v5->download setDelegate:v5];
    [(NPTUpload *)v5->upload setDelegate:v5];
    v17 = objc_alloc_init(NPTResults);
    [(NPTPerformanceTest *)v5 setResults:v17];

    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    snapshots = v5->snapshots;
    v5->snapshots = v18;

    v20 = [MEMORY[0x277CCAD78] UUID];
    v21 = [v20 UUIDString];
    v22 = [v21 stringByReplacingOccurrencesOfString:@"-" withString:&stru_2848BD380];
    uuid = v5->uuid;
    v5->uuid = v22;

    [(NPTPerformanceTest *)v5 setConfiguration:v4];
    v24 = v5->uuid;
    v25 = [(NPTPerformanceTest *)v5 configuration];
    [v25 setUuid:v24];

    [(NPTPerformanceTest *)v5 set_additionalMetadata:0];
    if (([v4 legacyMode] & 1) == 0)
    {
      [(NPTPerformanceTest *)v5 logFrameworkUsage:3];
    }

    v26 = +[NPTLogger network];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [v4 description];
      *buf = 138412290;
      v32 = v27;
      _os_log_impl(&dword_233421000, v26, OS_LOG_TYPE_DEFAULT, "Configuration settings: %@", buf, 0xCu);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)dealloc
{
  [(NPTPerformanceTest *)self completeActivityWithReason:1];
  v3.receiver = self;
  v3.super_class = NPTPerformanceTest;
  [(NPTPerformanceTest *)&v3 dealloc];
}

+ (id)performanceTestWithConfiguration:(id)a3
{
  v3 = a3;
  v4 = [[NPTPerformanceTest alloc] initWithConfiguration:v3];

  return v4;
}

+ (id)performanceTestWithDefaultConfiguration
{
  v2 = +[NPTPerformanceTestConfiguration defaultConfiguration];
  v3 = [NPTPerformanceTest performanceTestWithConfiguration:v2];

  return v3;
}

- (NSDictionary)dictionary
{
  v3 = MEMORY[0x277CBEB38];
  v4 = [(NPTPerformanceTest *)self metadata];
  v5 = [v3 dictionaryWithDictionary:v4];

  v6 = [(NPTPerformanceTest *)self results];
  v7 = [v6 asDictionary];
  [v5 setValue:v7 forKey:@"results"];

  v8 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v5];

  return v8;
}

- (NSDictionary)metadata
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = [(NPTMetadataCollector *)self->collector cachedMetadata];
  if (v3)
  {
    v4 = v3;
    v5 = [(NPTPerformanceTest *)self configuration];
    v6 = [v5 collectMetadata];

    if (v6)
    {
      restoredMetadata = self->restoredMetadata;
      if (!restoredMetadata)
      {
        v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v9 = self->restoredMetadata;
        self->restoredMetadata = v8;

        [(NSMutableDictionary *)self->restoredMetadata setObject:self->uuid forKeyedSubscript:@"uuid"];
        restoredMetadata = self->restoredMetadata;
      }

      v10 = [(NPTMetadataCollector *)self->collector cachedMetadata];
      [(NSMutableDictionary *)restoredMetadata addEntriesFromDictionary:v10];

      v11 = [(NSMutableDictionary *)self->restoredMetadata objectForKeyedSubscript:@"device_states"];
      v12 = [(NSMutableDictionary *)self->snapshots objectForKeyedSubscript:@"wrmMetrics"];
      [v11 addEntriesFromDictionary:v12];

      v13 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:self->restoredMetadata];
      v14 = [(NPTPerformanceTest *)self results];
      [v14 setMetadata:v13];
    }
  }

  v15 = self->restoredMetadata;
  if (!v15)
  {
    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v17 = self->restoredMetadata;
    self->restoredMetadata = v16;

    v18 = [(NPTPerformanceTest *)self configuration];
    v19 = [v18 collectMetadata];

    if (v19)
    {
      v20 = self->restoredMetadata;
      v21 = +[NPTMetadataCollector fetch];
      [(NSMutableDictionary *)v20 addEntriesFromDictionary:v21];

      v22 = [(NPTPerformanceTest *)self _additionalMetadata];

      if (v22)
      {
        v23 = [(NSMutableDictionary *)self->restoredMetadata objectForKeyedSubscript:@"metadata"];
        v24 = [(NPTPerformanceTest *)self _additionalMetadata];
        [v23 addEntriesFromDictionary:v24];

        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v25 = [(NPTPerformanceTest *)self _additionalMetadata];
        v26 = [v25 countByEnumeratingWithState:&v41 objects:v45 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v42;
          do
          {
            v29 = 0;
            do
            {
              if (*v42 != v28)
              {
                objc_enumerationMutation(v25);
              }

              v30 = *(*(&v41 + 1) + 8 * v29);
              v31 = [(NSMutableDictionary *)self->restoredMetadata objectForKeyedSubscript:@"metadata"];
              v32 = [v31 objectForKey:v30];

              if (!v32)
              {
                v33 = [(NPTPerformanceTest *)self _additionalMetadata];
                v34 = [v33 objectForKeyedSubscript:v30];
                v35 = [(NSMutableDictionary *)self->restoredMetadata objectForKeyedSubscript:@"metadata"];
                [v35 setObject:v34 forKeyedSubscript:v30];
              }

              ++v29;
            }

            while (v27 != v29);
            v27 = [v25 countByEnumeratingWithState:&v41 objects:v45 count:16];
          }

          while (v27);
        }
      }
    }

    [(NSMutableDictionary *)self->restoredMetadata setObject:self->uuid forKeyedSubscript:@"uuid"];
    v36 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:self->restoredMetadata];
    v37 = [(NPTPerformanceTest *)self results];
    [v37 setMetadata:v36];

    v15 = self->restoredMetadata;
  }

  v38 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v15];
  v39 = *MEMORY[0x277D85DE8];

  return v38;
}

- (void)startPingWithCompletion:(id)a3
{
  v4 = a3;
  [(NPTPerformanceTest *)self activateActivity];
  [(NPTPerformanceTest *)self logFrameworkUsage:0];
  v5 = [(NPTPerformanceTest *)self configuration];
  v6 = [v5 pingAddressStyle];
  v7 = v6 == 0;
  v8 = v6 != 0;

  ping = self->ping;
  v10 = [(NPTPerformanceTest *)self configuration];
  -[NPTPing startWithNumberOfPings:forcingIPv4:forcingIPv6:completion:](ping, "startWithNumberOfPings:forcingIPv4:forcingIPv6:completion:", [v10 pingCount], v7, v8, v4);
}

- (void)startDownloadWithCompletion:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  [(NPTPerformanceTest *)self activateActivity];
  [(NPTPerformanceTest *)self logFrameworkUsage:1];
  v7 = [(NPTPerformanceTest *)self configuration];
  v8 = [v7 collectMetadata];

  if (v8)
  {
    v9 = +[NPTMetadataCollector fetch];
    snapshots = self->snapshots;
    v3 = [v9 objectForKeyedSubscript:@"metadata"];
    [(NSMutableDictionary *)snapshots setValue:v3 forKey:@"beforeDownloadSnapshot"];
  }

  v11 = +[NPTLogger network];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(NPTPerformanceTest *)self inTimedMode];
    if (v12 && (-[NPTPerformanceTest configuration](self, "configuration"), v3 = objc_claimAutoreleasedReturnValue(), [v3 downloadSize] == 1001))
    {
      v13 = 0;
      v14 = 1000;
    }

    else
    {
      v4 = [(NPTPerformanceTest *)self configuration];
      v14 = [v4 downloadSize];
      v13 = 1;
    }

    v16[0] = 67109120;
    v16[1] = v14;
    _os_log_impl(&dword_233421000, v11, OS_LOG_TYPE_DEFAULT, "Will test download speed by downloading %u megabytes from Apple CDN Server", v16, 8u);
    if (v13)
    {
    }

    if (v12)
    {
    }
  }

  [(NPTDownload *)self->download startDownloadWithCompletion:v6];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)startUploadWithCompletion:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  [(NPTPerformanceTest *)self activateActivity];
  [(NPTPerformanceTest *)self logFrameworkUsage:2];
  v7 = [(NPTPerformanceTest *)self configuration];
  v8 = [v7 collectMetadata];

  if (v8)
  {
    v9 = +[NPTMetadataCollector fetch];
    snapshots = self->snapshots;
    v3 = [v9 objectForKeyedSubscript:@"metadata"];
    [(NSMutableDictionary *)snapshots setValue:v3 forKey:@"beforeUploadSnapshot"];
  }

  v11 = +[NPTLogger network];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(NPTPerformanceTest *)self inTimedMode];
    if (v12 && (-[NPTPerformanceTest configuration](self, "configuration"), v3 = objc_claimAutoreleasedReturnValue(), [v3 uploadSize] == 1001))
    {
      v13 = 0;
      v14 = 50;
    }

    else
    {
      v4 = [(NPTPerformanceTest *)self configuration];
      v14 = [v4 uploadSize];
      v13 = 1;
    }

    v16[0] = 67109120;
    v16[1] = v14;
    _os_log_impl(&dword_233421000, v11, OS_LOG_TYPE_DEFAULT, "Will test upload speed by uploading %u megabytes to Apple CDN Server", v16, 8u);
    if (v13)
    {
    }

    if (v12)
    {
    }
  }

  [(NPTUpload *)self->upload startUploadWithCompletion:v6];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)startTestWithCompletion:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[NPTLogger network];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(NPTPerformanceTest *)self configuration];
    v7 = [v6 uuid];
    *buf = 138412290;
    v18 = v7;
    _os_log_impl(&dword_233421000, v5, OS_LOG_TYPE_DEFAULT, "Performance test %@ will start", buf, 0xCu);
  }

  [(NPTPerformanceTest *)self activateActivity];
  objc_initWeak(buf, self);
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  WeakRetained = objc_loadWeakRetained(buf);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __46__NPTPerformanceTest_startTestWithCompletion___block_invoke;
  v13[3] = &unk_2789D3FE8;
  v10 = v8;
  v14 = v10;
  objc_copyWeak(&v16, buf);
  v11 = v4;
  v15 = v11;
  [WeakRetained startPingWithCompletion:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);

  v12 = *MEMORY[0x277D85DE8];
}

void __46__NPTPerformanceTest_startTestWithCompletion___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    [a1[4] addObject:v6];
  }

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__NPTPerformanceTest_startTestWithCompletion___block_invoke_2;
  v8[3] = &unk_2789D3FC0;
  v9 = a1[4];
  objc_copyWeak(&v11, a1 + 6);
  v10 = a1[5];
  [WeakRetained startDownloadWithCompletion:v8];

  objc_destroyWeak(&v11);
}

void __46__NPTPerformanceTest_startTestWithCompletion___block_invoke_2(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    [a1[4] addObject:v6];
  }

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__NPTPerformanceTest_startTestWithCompletion___block_invoke_3;
  v8[3] = &unk_2789D3FC0;
  v9 = a1[4];
  objc_copyWeak(&v11, a1 + 6);
  v10 = a1[5];
  [WeakRetained startUploadWithCompletion:v8];

  objc_destroyWeak(&v11);
}

void __46__NPTPerformanceTest_startTestWithCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    [*(a1 + 32) addObject:v6];
  }

  if ([*(a1 + 32) count])
  {
    v7 = [MEMORY[0x277CBEA60] arrayWithArray:*(a1 + 32)];
  }

  else
  {
    v7 = 0;
  }

  if ([v7 count])
  {
    v8 = 3;
  }

  else
  {
    v8 = 2;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained completeActivityWithReason:v8];

  v10 = +[NPTLogger network];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_loadWeakRetained((a1 + 48));
    v12 = [v11 configuration];
    v13 = [v12 uuid];
    v18 = 138412290;
    v19 = v13;
    _os_log_impl(&dword_233421000, v10, OS_LOG_TYPE_DEFAULT, "Performance test %@ has finished", &v18, 0xCu);
  }

  v14 = *(a1 + 40);
  v15 = objc_loadWeakRetained((a1 + 48));
  v16 = [v15 results];
  (*(v14 + 16))(v14, v16, v7);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)save
{
  v2 = [(NPTPerformanceTest *)self configuration];
  v3 = [v2 collectMetadata];

  if (v3)
  {
    AnalyticsSendEventLazy();
  }

  else
  {
    v4 = +[NPTLogger fileSystem];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(NPTPerformanceTest *)v4 save:v5];
    }
  }
}

- (void)saveToAWD
{
  v3 = [(NPTPerformanceTest *)self configuration];
  if (([v3 collectMetadata] & 1) == 0)
  {

LABEL_8:
    v13 = +[NPTLogger fileSystem];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [(NPTPerformanceTest *)v13 saveToAWD:v14];
    }

    goto LABEL_10;
  }

  v4 = [(NPTPerformanceTest *)self metadata];

  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = +[NPTLogger fileSystem];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(NPTPerformanceTest *)v5 saveToAWD:v6];
  }

  if (NSClassFromString(&cfstr_Pbdatareader.isa))
  {
    v13 = [(NPTPerformanceTest *)self fetchAWDMetric];
    WISPostMetric();
LABEL_10:
  }
}

- (id)fetchAWDMetric
{
  v2 = [(NPTPerformanceTest *)self getFlattenedDictionary];
  v3 = [AWDNetworkPerformanceMetricInitializer createPerformanceMetricFromDictionary:v2];

  return v3;
}

- (void)activateActivity
{
  if (self->performanceTestActivity && (nw_activity_is_activated() & 1) == 0)
  {
    v3 = +[NPTLogger network];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_233421000, v3, OS_LOG_TYPE_DEFAULT, "Activating performanceTestActivity", v5, 2u);
    }

    performanceTestActivity = self->performanceTestActivity;
    nw_activity_activate();
  }
}

- (void)completeActivityWithReason:(int)a3
{
  if (self->performanceTestActivity && nw_activity_is_activated())
  {
    v4 = +[NPTLogger network];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_233421000, v4, OS_LOG_TYPE_DEFAULT, "Completing performanceTestActivity", v7, 2u);
    }

    performanceTestActivity = self->performanceTestActivity;
    nw_activity_complete_with_reason();
    v6 = self->performanceTestActivity;
    self->performanceTestActivity = 0;
  }
}

- (id)timestampMasked
{
  v2 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  v3 = [MEMORY[0x277CBEA80] currentCalendar];
  v4 = [v3 components:62 fromDate:v2];
  [v4 setMinute:0];
  [v4 setSecond:0];
  v5 = [v3 dateFromComponents:v4];

  return v5;
}

- (id)convertDateToISO8601String:(id)a3
{
  v3 = MEMORY[0x277CCAA68];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [MEMORY[0x277CBEBB0] localTimeZone];
  [v5 setTimeZone:v6];

  v7 = [v5 stringForObjectValue:v4];

  return v7;
}

- (id)timestampMaskedString
{
  v3 = [(NPTPerformanceTest *)self timestampMasked];
  v4 = [(NPTPerformanceTest *)self convertDateToISO8601String:v3];

  return v4;
}

- (id)getFlattenedMetadataDictionary:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [v3 objectForKeyedSubscript:@"device_states"];
  v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v3 objectForKeyedSubscript:@"device_states"];
        v11 = [v10 objectForKeyedSubscript:v9];
        v12 = [v11 objectForKeyedSubscript:@"initial_state"];
        [v4 addEntriesFromDictionary:v12];
      }

      v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)getFlattenedDictionary
{
  v168 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(NPTMetadataCollector *)self->collector cachedMetadata];
  if (v4)
  {
    v5 = [(NPTPerformanceTest *)self metadata];
    [(NPTPerformanceTest *)self getFlattenedMetadataDictionary:v5];
  }

  else
  {
    v5 = [(NPTPerformanceTest *)self dictionary];
    [v5 valueForKey:@"metadata"];
  }
  v145 = ;

  v146 = self;
  v6 = [(NPTPerformanceTest *)self dictionary];
  v7 = [v6 valueForKey:@"results"];

  v8 = [v7 valueForKey:@"download_results"];
  v9 = [v7 valueForKey:@"upload_results"];
  v10 = [v7 valueForKey:@"ping_results"];
  v141 = v7;
  v142 = [v7 valueForKey:@"network_quality_results"];
  v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.wifiqa.NPTKit"];
  v12 = [v11 infoDictionary];
  v144 = [v12 objectForKey:@"CFBundleShortVersionString"];

  v162 = 0u;
  v163 = 0u;
  v160 = 0u;
  v161 = 0u;
  v13 = v8;
  v14 = [v13 countByEnumeratingWithState:&v160 objects:v167 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v161;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v161 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v160 + 1) + 8 * i);
        v19 = [v13 valueForKey:v18];
        if (v19)
        {
          v20 = [@"download_" stringByAppendingString:v18];
          [v3 setObject:v19 forKey:v20];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v160 objects:v167 count:16];
    }

    while (v15);
  }

  v158 = 0u;
  v159 = 0u;
  v156 = 0u;
  v157 = 0u;
  v21 = v9;
  v22 = [v21 countByEnumeratingWithState:&v156 objects:v166 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v157;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v157 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v156 + 1) + 8 * j);
        v27 = [v21 valueForKey:v26];
        if (v27)
        {
          v28 = [@"upload_" stringByAppendingString:v26];
          [v3 setObject:v27 forKey:v28];
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v156 objects:v166 count:16];
    }

    while (v23);
  }

  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  v29 = v10;
  v30 = [v29 countByEnumeratingWithState:&v152 objects:v165 count:16];
  v147 = v29;
  if (v30)
  {
    v31 = v30;
    v32 = *v153;
    do
    {
      for (k = 0; k != v31; ++k)
      {
        if (*v153 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v152 + 1) + 8 * k);
        if (([v34 isEqual:@"pings"] & 1) == 0)
        {
          v35 = [v29 valueForKey:v34];
          if (v35)
          {
            v36 = [@"ping_" stringByAppendingString:v34];
            [v3 setObject:v35 forKey:v36];
          }

          v29 = v147;
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v152 objects:v165 count:16];
    }

    while (v31);
  }

  v37 = v142;
  if (![v142 count])
  {
    v38 = [(NPTPerformanceTest *)v146 configuration];
    v39 = [v38 legacyMode];

    if ((v39 & 1) == 0)
    {
      v40 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v41 = [v13 objectForKeyedSubscript:@"responsiveness"];
      v42 = 0.0;
      v43 = 0.0;
      if (v41)
      {
        v44 = [v13 objectForKey:@"responsiveness"];
        [v44 doubleValue];
        v43 = v45;
      }

      v46 = [v21 objectForKeyedSubscript:@"responsiveness"];
      if (v46)
      {
        v47 = [v21 objectForKey:@"responsiveness"];
        [v47 doubleValue];
        v42 = v48;
      }

      v49 = v43 + v42;
      v51 = v42 <= 0.0;
      v50 = 0.0;
      v51 = v51 || v43 <= 0.0;
      if (v51)
      {
        v52 = v49;
      }

      else
      {
        v52 = v49 * 0.5;
      }

      v53 = -[NPTPerformanceTest NQRatingFromEnum:](v146, "NQRatingFromEnum:", [MEMORY[0x277D2C9B0] ratingForResponsivenessScore:v52]);
      [v40 setObject:v53 forKeyedSubscript:@"rating"];

      v54 = [v13 objectForKeyedSubscript:@"speed"];
      v55 = 0.0;
      if (v54)
      {
        v56 = [v13 objectForKey:@"speed"];
        [v56 doubleValue];
        v55 = v57;
      }

      v58 = [v21 objectForKeyedSubscript:@"speed"];
      if (v58)
      {
        v59 = [v21 objectForKey:@"speed"];
        [v59 doubleValue];
        v50 = v60;
      }

      v61 = [MEMORY[0x277CCABB0] numberWithDouble:v52];
      [v40 setObject:v61 forKeyedSubscript:@"responsiveness"];

      v62 = [MEMORY[0x277CCABB0] numberWithDouble:v55];
      [v40 setObject:v62 forKeyedSubscript:@"download_speed"];

      v63 = [MEMORY[0x277CCABB0] numberWithDouble:v50];
      [v40 setObject:v63 forKeyedSubscript:@"upload_speed"];

      v64 = [v13 objectForKeyedSubscript:@"error"];

      if (v64)
      {
        v65 = [v13 objectForKeyedSubscript:@"error"];
        [v40 setObject:v65 forKeyedSubscript:@"error"];

        v66 = [v13 objectForKeyedSubscript:@"error_domain"];
        [v40 setObject:v66 forKeyedSubscript:@"error_domain"];

        v67 = [v13 objectForKeyedSubscript:@"error_code"];
        [v40 setObject:v67 forKeyedSubscript:@"error_code"];
      }

      v68 = [v21 objectForKeyedSubscript:@"error"];

      if (v68)
      {
        v69 = [v21 objectForKeyedSubscript:@"error"];
        [v40 setObject:v69 forKeyedSubscript:@"error"];

        v70 = [v21 objectForKeyedSubscript:@"error_domain"];
        [v40 setObject:v70 forKeyedSubscript:@"error_domain"];

        v71 = [v21 objectForKeyedSubscript:@"error_code"];
        [v40 setObject:v71 forKeyedSubscript:@"error_code"];
      }

      v72 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v40];

      v37 = v72;
    }
  }

  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  v73 = v37;
  v74 = [v73 countByEnumeratingWithState:&v148 objects:v164 count:16];
  if (v74)
  {
    v75 = v74;
    v76 = *v149;
    do
    {
      for (m = 0; m != v75; ++m)
      {
        if (*v149 != v76)
        {
          objc_enumerationMutation(v73);
        }

        v78 = *(*(&v148 + 1) + 8 * m);
        v79 = [v73 valueForKey:v78];
        if (v79)
        {
          v80 = [@"network_quality_" stringByAppendingString:v78];
          [v3 setObject:v79 forKey:v80];
        }
      }

      v75 = [v73 countByEnumeratingWithState:&v148 objects:v164 count:16];
    }

    while (v75);
  }

  [v3 addEntriesFromDictionary:v145];
  p_isa = &v146->super.isa;
  [v3 setValue:v146->uuid forKey:@"npt_uuid"];
  v82 = MEMORY[0x277CCABB0];
  v83 = [(NPTPerformanceTest *)v146 configuration];
  v84 = [v82 numberWithBool:{objc_msgSend(v83, "interfaceType") == 1}];
  [v3 setValue:v84 forKey:@"use_wifi_was_specified"];

  [v3 setValue:v144 forKey:@"nptkit_framework_version"];
  v85 = [(NPTPerformanceTest *)v146 configuration];
  v86 = [v85 clientName];
  [v3 setValue:v86 forKey:@"calling_client"];

  v87 = MEMORY[0x277CCABB0];
  v88 = [(NPTPerformanceTest *)v146 configuration];
  v89 = [v87 numberWithBool:{objc_msgSend(v88, "legacyMode")}];
  [v3 setValue:v89 forKey:@"legacy_mode"];

  v90 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:&unk_2848CF480];
  v91 = [(NPTPerformanceTest *)v146 results];
  v92 = [v91 downloadResults];
  v93 = [v92 isCellular];
  v143 = v90;
  if ([v93 BOOLValue])
  {
  }

  else
  {
    v94 = [(NPTPerformanceTest *)v146 results];
    v95 = [v94 uploadResults];
    v96 = [v95 isCellular];
    v139 = [v96 BOOLValue];

    v90 = v143;
    p_isa = &v146->super.isa;

    if ((v139 & 1) == 0)
    {
      [v143 addObject:@"cellular_cellid"];
    }
  }

  [v3 removeObjectsForKeys:v90];
  if (!p_isa[7] || ([p_isa configuration], v97 = objc_claimAutoreleasedReturnValue(), v98 = objc_msgSend(v97, "collectMetadata"), v97, !v98))
  {
    v102 = 0;
    v103 = 0;
LABEL_73:
    v138 = 0;
    v140 = 0;
    goto LABEL_74;
  }

  v99 = [p_isa[7] objectForKeyedSubscript:@"beforeDownloadSnapshot"];
  if (v99 && (v100 = v99, [p_isa[7] objectForKeyedSubscript:@"afterDownloadSnapshot"], v101 = objc_claimAutoreleasedReturnValue(), v101, v100, v101))
  {
    v102 = [p_isa[7] valueForKey:@"beforeDownloadSnapshot"];
    v103 = [p_isa[7] valueForKey:@"afterDownloadSnapshot"];
  }

  else
  {
    v102 = 0;
    v103 = 0;
  }

  v134 = [p_isa[7] objectForKeyedSubscript:@"beforeUploadSnapshot"];
  if (!v134)
  {
    goto LABEL_73;
  }

  v135 = v134;
  v136 = [p_isa[7] objectForKeyedSubscript:@"afterUploadSnapshot"];

  if (!v136)
  {
    goto LABEL_73;
  }

  v140 = [p_isa[7] valueForKey:@"beforeUploadSnapshot"];
  v138 = [p_isa[7] valueForKey:@"afterUploadSnapshot"];
LABEL_74:
  v104 = [(NPTMetadataCollector *)v146->collector cachedMetadata];
  v105 = [v104 objectForKeyedSubscript:@"device_states"];
  v106 = [v105 objectForKeyedSubscript:@"cellular"];
  v107 = [NPTCellularCollector calculateMaxCellularTPutEstimates:v106];

  v137 = v107;
  v108 = [v107 objectForKeyedSubscript:@"cellular_max_download_estimate"];
  [v3 setObject:v108 forKeyedSubscript:@"download_max_cellular_estimate"];

  v109 = [v107 objectForKeyedSubscript:@"cellular_max_upload_estimate"];
  [v3 setObject:v109 forKeyedSubscript:@"upload_max_cellular_estimate"];

  v110 = [v102 objectForKeyedSubscript:@"cellular_radio_access_technology"];
  [v3 setObject:v110 forKeyedSubscript:@"download_start_rat"];

  v111 = [v103 objectForKeyedSubscript:@"cellular_radio_access_technology"];
  [v3 setObject:v111 forKeyedSubscript:@"download_end_rat"];

  v112 = [v102 objectForKeyedSubscript:@"network_primary_ipv4_interface_name"];
  [v3 setObject:v112 forKeyedSubscript:@"download_start_primary_ipv4_interface"];

  v113 = [v103 objectForKeyedSubscript:@"network_primary_ipv4_interface_name"];
  [v3 setObject:v113 forKeyedSubscript:@"download_end_primary_ipv4_interface"];

  v114 = [v102 objectForKeyedSubscript:@"cellular_data_bearer_technology"];
  [v3 setObject:v114 forKeyedSubscript:@"download_start_data_bearer_technology"];

  v115 = [v103 objectForKeyedSubscript:@"cellular_data_bearer_technology"];
  [v3 setObject:v115 forKeyedSubscript:@"download_end_data_bearer_technology"];

  v116 = [v102 objectForKeyedSubscript:@"cellular_radio_frequency"];
  [v3 setObject:v116 forKeyedSubscript:@"download_start_radio_frequency"];

  v117 = [v103 objectForKeyedSubscript:@"cellular_radio_frequency"];
  [v3 setObject:v117 forKeyedSubscript:@"download_end_radio_frequency"];

  v118 = [v102 objectForKeyedSubscript:@"cellular_download_estimate"];
  [v3 setObject:v118 forKeyedSubscript:@"download_start_cellular_estimate"];

  v119 = [v103 objectForKeyedSubscript:@"cellular_download_estimate"];
  [v3 setObject:v119 forKeyedSubscript:@"download_end_cellular_estimate"];

  v120 = [v140 objectForKeyedSubscript:@"cellular_radio_access_technology"];
  [v3 setObject:v120 forKeyedSubscript:@"upload_start_rat"];

  v121 = [v138 objectForKeyedSubscript:@"cellular_radio_access_technology"];
  [v3 setObject:v121 forKeyedSubscript:@"upload_end_rat"];

  v122 = [v140 objectForKeyedSubscript:@"network_primary_ipv4_interface_name"];
  [v3 setObject:v122 forKeyedSubscript:@"upload_start_primary_ipv4_interface"];

  v123 = [v138 objectForKeyedSubscript:@"network_primary_ipv4_interface_name"];
  [v3 setObject:v123 forKeyedSubscript:@"upload_end_primary_ipv4_interface"];

  v124 = [v140 objectForKeyedSubscript:@"cellular_data_bearer_technology"];
  [v3 setObject:v124 forKeyedSubscript:@"upload_start_data_bearer_technology"];

  v125 = [v138 objectForKeyedSubscript:@"cellular_data_bearer_technology"];
  [v3 setObject:v125 forKeyedSubscript:@"upload_end_data_bearer_technology"];

  v126 = [v140 objectForKeyedSubscript:@"cellular_radio_frequency"];
  [v3 setObject:v126 forKeyedSubscript:@"upload_start_radio_frequency"];

  v127 = [v138 objectForKeyedSubscript:@"cellular_radio_frequency"];
  [v3 setObject:v127 forKeyedSubscript:@"upload_end_radio_frequency"];

  v128 = [v140 objectForKeyedSubscript:@"cellular_upload_estimate"];
  [v3 setObject:v128 forKeyedSubscript:@"upload_start_cellular_estimate"];

  v129 = [v138 objectForKeyedSubscript:@"cellular_upload_estimate"];
  [v3 setObject:v129 forKeyedSubscript:@"upload_end_cellular_estimate"];

  v130 = [(NPTPerformanceTest *)v146 timestampMaskedString];
  [v3 setObject:v130 forKeyedSubscript:@"performance_test_start_time"];

  v131 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v3];

  v132 = *MEMORY[0x277D85DE8];

  return v131;
}

- (id)getTransformedDataForCoreAnalytics
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = [(NPTPerformanceTest *)self getDataForCoreAnalytics];
  v3 = [v2 mutableCopy];
  v26 = [MEMORY[0x277CBEB98] setWithArray:&unk_2848CF498];
  v4 = [MEMORY[0x277CBEB98] setWithArray:&unk_2848CF4B0];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = v2;
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:v10];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          if (([v10 containsString:@"_speed"] & 1) != 0 || objc_msgSend(v10, "containsString:", @"_estimate"))
          {
            v13 = [v5 objectForKeyedSubscript:v10];
            [v13 doubleValue];
            v15 = v14;

            v16 = [MEMORY[0x277CCABB0] numberWithDouble:v15 * 125000.0];
            [v3 setObject:v16 forKeyedSubscript:v10];
          }

          if (([v10 containsString:@"_time"] & 1) != 0 || objc_msgSend(v26, "containsObject:", v10))
          {
            v17 = [v5 objectForKeyedSubscript:v10];
            [v17 doubleValue];
            v19 = v18;

            v20 = [MEMORY[0x277CCABB0] numberWithDouble:v19 * 1000.0];
            [v3 setObject:v20 forKeyedSubscript:v10];
          }

          if ([v4 containsObject:v10])
          {
            v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_histogram", v10];
            v22 = [v3 objectForKeyedSubscript:v10];
            [v3 setObject:v22 forKeyedSubscript:v21];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v7);
  }

  v23 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v3];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (void)cancelAllNetworking
{
  [(NPTPing *)self->ping cancel];
  [(NPTDownload *)self->download cancel];
  [(NPTUpload *)self->upload cancel];

  [(NPTPerformanceTest *)self completeActivityWithReason:4];
}

- (BOOL)inTimedMode
{
  v3 = [(NPTPerformanceTest *)self configuration];
  if ([v3 testDuration])
  {
    v4 = [(NPTPerformanceTest *)self configuration];
    v5 = [v4 stopAtFileSize] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)NQRatingFromEnum:(int64_t)a3
{
  if (a3 > 2)
  {
    return @"No Rating";
  }

  else
  {
    return off_2789D4080[a3];
  }
}

- (void)fetchAndSaveWRMMetrics
{
  v16[3] = *MEMORY[0x277D85DE8];
  v3 = +[NPTMetadataCollector fetchWRMMetrics];
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = objc_alloc_init(MEMORY[0x277CBEA60]);
  v15[0] = @"initial_state";
  v15[1] = @"events";
  v16[0] = v3;
  v16[1] = v5;
  v15[2] = @"errors";
  v16[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
  [v4 setObject:v6 forKeyedSubscript:@"wrm"];

  snapshots = self->snapshots;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v4];
  [(NSMutableDictionary *)snapshots setValue:v8 forKey:@"wrmMetrics"];

  v9 = [(NPTMetadataCollector *)self->collector cachedMetadata];

  v10 = [(NPTPerformanceTest *)self metadata];
  if (!v9)
  {
    v11 = [(NSMutableDictionary *)self->restoredMetadata objectForKeyedSubscript:@"metadata"];
    [v11 addEntriesFromDictionary:v3];

    restoredMetadata = self->restoredMetadata;
    v13 = [(NPTPerformanceTest *)self results];
    [v13 setMetadata:restoredMetadata];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)pingDidFinishWithResults:(id)a3
{
  v8 = a3;
  v4 = [(NPTPerformanceTest *)self results];
  [v4 setPingResults:v8];

  v5 = [(NPTPerformanceTest *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(NPTPerformanceTest *)self delegate];
    [v7 performanceTest:self didFinishWithPingResults:v8];
  }
}

- (void)pingWillStartPinging
{
  v3 = [(NPTPerformanceTest *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(NPTPerformanceTest *)self delegate];
    [v5 performanceTestWillStartPing];
  }
}

- (void)pingDidFinishWithError:(id)a3
{
  v8 = a3;
  v4 = [(NPTPing *)self->ping results];
  v5 = [(NPTPerformanceTest *)self results];
  [v5 setPingResults:v4];

  v6 = [(NPTPerformanceTest *)self delegate];
  LOBYTE(v5) = objc_opt_respondsToSelector();

  if (v5)
  {
    v7 = [(NPTPerformanceTest *)self delegate];
    [v7 performanceTest:self didFinishPingWithError:v8];
  }
}

- (void)download:(id)a3 didFinishWithResults:(id)a4
{
  v16 = a4;
  v5 = [(NPTPerformanceTest *)self results];
  [v5 setDownloadResults:v16];

  v6 = [(NPTPerformanceTest *)self configuration];
  v7 = [v6 collectMetadata];

  if (v7)
  {
    v8 = +[NPTMetadataCollector fetch];
    snapshots = self->snapshots;
    v10 = [v8 objectForKeyedSubscript:@"metadata"];
    [(NSMutableDictionary *)snapshots setValue:v10 forKey:@"afterDownloadSnapshot"];

    v11 = [(NPTPerformanceTest *)self configuration];
    if ([v11 collectWRMMetrics])
    {
      v12 = [(NSMutableDictionary *)self->snapshots objectForKeyedSubscript:@"wrmMetrics"];

      if (!v12)
      {
        [(NPTPerformanceTest *)self fetchAndSaveWRMMetrics];
      }
    }

    else
    {
    }
  }

  v13 = [(NPTPerformanceTest *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = [(NPTPerformanceTest *)self delegate];
    [v15 performanceTest:self didFinishWithDownloadResults:v16];
  }
}

- (void)downloadWillStart
{
  v3 = [(NPTPerformanceTest *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(NPTPerformanceTest *)self delegate];
    [v5 performanceTestWillStartDownload];
  }
}

- (void)download:(id)a3 didReceiveSpeedMetric:(id)a4
{
  v8 = a4;
  v5 = [(NPTPerformanceTest *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(NPTPerformanceTest *)self delegate];
    [v7 performanceTest:self didReceiveDownloadSpeedMetric:v8];
  }
}

- (void)download:(id)a3 didFinishWithError:(id)a4
{
  v10 = a4;
  v6 = [a3 results];
  v7 = [(NPTPerformanceTest *)self results];
  [v7 setDownloadResults:v6];

  v8 = [(NPTPerformanceTest *)self delegate];
  LOBYTE(v7) = objc_opt_respondsToSelector();

  if (v7)
  {
    v9 = [(NPTPerformanceTest *)self delegate];
    [v9 performanceTest:self didFinishDownloadWithError:v10];
  }
}

- (void)upload:(id)a3 didFinishWithResults:(id)a4
{
  v16 = a4;
  v5 = [(NPTPerformanceTest *)self results];
  [v5 setUploadResults:v16];

  v6 = [(NPTPerformanceTest *)self configuration];
  v7 = [v6 collectMetadata];

  if (v7)
  {
    v8 = +[NPTMetadataCollector fetch];
    snapshots = self->snapshots;
    v10 = [v8 objectForKeyedSubscript:@"metadata"];
    [(NSMutableDictionary *)snapshots setValue:v10 forKey:@"afterUploadSnapshot"];

    v11 = [(NPTPerformanceTest *)self configuration];
    if ([v11 collectWRMMetrics])
    {
      v12 = [(NSMutableDictionary *)self->snapshots objectForKeyedSubscript:@"wrmMetrics"];

      if (!v12)
      {
        [(NPTPerformanceTest *)self fetchAndSaveWRMMetrics];
      }
    }

    else
    {
    }
  }

  v13 = [(NPTPerformanceTest *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = [(NPTPerformanceTest *)self delegate];
    [v15 performanceTest:self didFinishWithUploadResults:v16];
  }
}

- (void)uploadWillStart
{
  v3 = [(NPTPerformanceTest *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(NPTPerformanceTest *)self delegate];
    [v5 performanceTestWillStartUpload];
  }
}

- (void)upload:(id)a3 didReceiveSpeedMetric:(id)a4
{
  v8 = a4;
  v5 = [(NPTPerformanceTest *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(NPTPerformanceTest *)self delegate];
    [v7 performanceTest:self didReceiveUploadSpeedMetric:v8];
  }
}

- (void)upload:(id)a3 didFinishWithError:(id)a4
{
  v10 = a4;
  v6 = [a3 results];
  v7 = [(NPTPerformanceTest *)self results];
  [v7 setUploadResults:v6];

  v8 = [(NPTPerformanceTest *)self delegate];
  LOBYTE(v7) = objc_opt_respondsToSelector();

  if (v7)
  {
    v9 = [(NPTPerformanceTest *)self delegate];
    [v9 performanceTest:self didFinishUploadWithError:v10];
  }
}

- (void)encodeWithCoder:(id)a3
{
  download = self->download;
  v7 = a3;
  [v7 encodeObject:download forKey:@"download"];
  [v7 encodeObject:self->upload forKey:@"upload"];
  [v7 encodeObject:self->ping forKey:@"ping"];
  v5 = [(NPTPerformanceTest *)self metadata];
  [v7 encodeObject:v5 forKey:@"metadata"];

  v6 = [(NPTPerformanceTest *)self results];
  [v7 encodeObject:v6 forKey:@"results"];

  [v7 encodeObject:self->uuid forKey:@"npt_uuid"];
}

- (NPTPerformanceTest)initWithCoder:(id)a3
{
  v20.receiver = self;
  v20.super_class = NPTPerformanceTest;
  v3 = a3;
  v4 = [(NPTPerformanceTest *)&v20 init];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"download"];
  download = v4->download;
  v4->download = v5;

  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"upload"];
  upload = v4->upload;
  v4->upload = v7;

  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"ping"];
  ping = v4->ping;
  v4->ping = v9;

  v11 = MEMORY[0x277CBEB98];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0, v20.receiver, v20.super_class}];
  v14 = [v3 decodeObjectOfClasses:v13 forKey:@"metadata"];
  restoredMetadata = v4->restoredMetadata;
  v4->restoredMetadata = v14;

  v16 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"results"];
  [(NPTPerformanceTest *)v4 setResults:v16];

  v17 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"npt_uuid"];

  uuid = v4->uuid;
  v4->uuid = v17;

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [(NPTPerformanceTest *)self configuration];

  v6 = [NPTPerformanceTest allocWithZone:a3];
  v7 = v6;
  if (v5)
  {
    v8 = [(NPTPerformanceTest *)self configuration];
    v9 = [(NPTPerformanceTest *)v7 initWithConfiguration:v8];

    v10 = [(NPTPerformanceTest *)self configuration];
    [(NPTPerformanceTest *)v9 setConfiguration:v10];

    return v9;
  }

  else
  {

    return [(NPTPerformanceTest *)v6 init];
  }
}

- (id)collectorsWithoutCDNDebug
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [NPTMetadataCollector alloc];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v7 count:7];
  v4 = [(NPTMetadataCollector *)v2 initWithCollectorTypes:v3, v7, v8, v9, v10, v11, v12];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)startMetadataCollectionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NPTMetadataCollector);
  collector = self->collector;
  self->collector = v5;

  v7 = [(NPTPerformanceTest *)self configuration];
  v8 = [v7 downloadURL];
  v9 = [v8 absoluteString];
  if ([v9 containsString:@"npt.cdn-apple.com"])
  {

LABEL_5:
    goto LABEL_6;
  }

  v10 = [(NPTPerformanceTest *)self configuration];
  v11 = [v10 uploadURL];
  v12 = [v11 absoluteString];
  v13 = [v12 containsString:@"npt.cdn-apple.com"];

  if ((v13 & 1) == 0)
  {
    v14 = [(NPTPerformanceTest *)self collectorsWithoutCDNDebug];
    v7 = self->collector;
    self->collector = v14;
    goto LABEL_5;
  }

LABEL_6:
  v15 = self->collector;
  v16 = [(NPTPerformanceTest *)self metadataDidChangeHandler];
  [(NPTMetadataCollector *)v15 setMetadataDidChangeHandler:v16];

  objc_initWeak(&location, self);
  v17 = self->collector;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __60__NPTPerformanceTest_startMetadataCollectionWithCompletion___block_invoke;
  v19[3] = &unk_2789D4038;
  objc_copyWeak(&v21, &location);
  v18 = v4;
  v20 = v18;
  [(NPTMetadataCollector *)v17 startCollectingWithCompletion:v19];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __60__NPTPerformanceTest_startMetadataCollectionWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained metadata];
  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v5, v7);
  }
}

- (void)setMetadataDidChangeHandler:(id)a3
{
  v4 = a3;
  [(NPTPerformanceTest *)self set_metadataDidChangeHandler:v4];
  if (self->collector)
  {
    objc_initWeak(&location, self);
    collector = self->collector;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __50__NPTPerformanceTest_setMetadataDidChangeHandler___block_invoke;
    v6[3] = &unk_2789D4060;
    objc_copyWeak(&v8, &location);
    v7 = v4;
    [(NPTMetadataCollector *)collector setMetadataDidChangeHandler:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __50__NPTPerformanceTest_setMetadataDidChangeHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained metadata];
  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v9, v5);
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end