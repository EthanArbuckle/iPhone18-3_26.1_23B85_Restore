@interface NPTPerformanceTest
+ (id)performanceTestWithConfiguration:(id)configuration;
+ (id)performanceTestWithDefaultConfiguration;
- (BOOL)inTimedMode;
- (NPTPerformanceTest)init;
- (NPTPerformanceTest)initWithCoder:(id)coder;
- (NPTPerformanceTest)initWithConfiguration:(id)configuration;
- (NSDictionary)dictionary;
- (NSDictionary)metadata;
- (id)NQRatingFromEnum:(int64_t)enum;
- (id)collectorsWithoutCDNDebug;
- (id)convertDateToISO8601String:(id)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)delegate;
- (id)fetchAWDMetric;
- (id)getFlattenedDictionary;
- (id)getFlattenedMetadataDictionary:(id)dictionary;
- (id)getTransformedDataForCoreAnalytics;
- (id)timestampMasked;
- (id)timestampMaskedString;
- (void)activateActivity;
- (void)cancelAllNetworking;
- (void)completeActivityWithReason:(int)reason;
- (void)dealloc;
- (void)download:(id)download didFinishWithError:(id)error;
- (void)download:(id)download didFinishWithResults:(id)results;
- (void)download:(id)download didReceiveSpeedMetric:(id)metric;
- (void)downloadWillStart;
- (void)encodeWithCoder:(id)coder;
- (void)fetchAndSaveWRMMetrics;
- (void)pingDidFinishWithError:(id)error;
- (void)pingDidFinishWithResults:(id)results;
- (void)pingWillStartPinging;
- (void)save;
- (void)saveToAWD;
- (void)setMetadataDidChangeHandler:(id)handler;
- (void)startDownloadWithCompletion:(id)completion;
- (void)startMetadataCollectionWithCompletion:(id)completion;
- (void)startPingWithCompletion:(id)completion;
- (void)startTestWithCompletion:(id)completion;
- (void)startUploadWithCompletion:(id)completion;
- (void)upload:(id)upload didFinishWithError:(id)error;
- (void)upload:(id)upload didFinishWithResults:(id)results;
- (void)upload:(id)upload didReceiveSpeedMetric:(id)metric;
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

    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v22 = [uUIDString stringByReplacingOccurrencesOfString:@"-" withString:&stru_2848BD380];
    uuid = v2->uuid;
    v2->uuid = v22;

    [(NPTPerformanceTest *)v2 set_additionalMetadata:0];
  }

  return v2;
}

- (NPTPerformanceTest)initWithConfiguration:(id)configuration
{
  v33 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v30.receiver = self;
  v30.super_class = NPTPerformanceTest;
  v5 = [(NPTPerformanceTest *)&v30 init];
  if (v5)
  {
    v6 = nw_activity_create();
    performanceTestActivity = v5->performanceTestActivity;
    v5->performanceTestActivity = v6;

    v8 = [[NPTDownload alloc] initWithNetworkActivityParent:v5->performanceTestActivity testConfiguration:configurationCopy];
    download = v5->download;
    v5->download = v8;

    v10 = [[NPTUpload alloc] initWithNetworkActivityParent:v5->performanceTestActivity testConfiguration:configurationCopy];
    upload = v5->upload;
    v5->upload = v10;

    v12 = [NPTPing alloc];
    v13 = v5->performanceTestActivity;
    pingHost = [configurationCopy pingHost];
    v15 = [(NPTPing *)v12 initWithNetworkActivityParent:v13 pingTarget:pingHost];
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

    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v22 = [uUIDString stringByReplacingOccurrencesOfString:@"-" withString:&stru_2848BD380];
    uuid = v5->uuid;
    v5->uuid = v22;

    [(NPTPerformanceTest *)v5 setConfiguration:configurationCopy];
    v24 = v5->uuid;
    configuration = [(NPTPerformanceTest *)v5 configuration];
    [configuration setUuid:v24];

    [(NPTPerformanceTest *)v5 set_additionalMetadata:0];
    if (([configurationCopy legacyMode] & 1) == 0)
    {
      [(NPTPerformanceTest *)v5 logFrameworkUsage:3];
    }

    v26 = +[NPTLogger network];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [configurationCopy description];
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

+ (id)performanceTestWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = [[NPTPerformanceTest alloc] initWithConfiguration:configurationCopy];

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
  metadata = [(NPTPerformanceTest *)self metadata];
  v5 = [v3 dictionaryWithDictionary:metadata];

  results = [(NPTPerformanceTest *)self results];
  asDictionary = [results asDictionary];
  [v5 setValue:asDictionary forKey:@"results"];

  v8 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v5];

  return v8;
}

- (NSDictionary)metadata
{
  v46 = *MEMORY[0x277D85DE8];
  cachedMetadata = [(NPTMetadataCollector *)self->collector cachedMetadata];
  if (cachedMetadata)
  {
    v4 = cachedMetadata;
    configuration = [(NPTPerformanceTest *)self configuration];
    collectMetadata = [configuration collectMetadata];

    if (collectMetadata)
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

      cachedMetadata2 = [(NPTMetadataCollector *)self->collector cachedMetadata];
      [(NSMutableDictionary *)restoredMetadata addEntriesFromDictionary:cachedMetadata2];

      v11 = [(NSMutableDictionary *)self->restoredMetadata objectForKeyedSubscript:@"device_states"];
      v12 = [(NSMutableDictionary *)self->snapshots objectForKeyedSubscript:@"wrmMetrics"];
      [v11 addEntriesFromDictionary:v12];

      v13 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:self->restoredMetadata];
      results = [(NPTPerformanceTest *)self results];
      [results setMetadata:v13];
    }
  }

  v15 = self->restoredMetadata;
  if (!v15)
  {
    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v17 = self->restoredMetadata;
    self->restoredMetadata = v16;

    configuration2 = [(NPTPerformanceTest *)self configuration];
    collectMetadata2 = [configuration2 collectMetadata];

    if (collectMetadata2)
    {
      v20 = self->restoredMetadata;
      v21 = +[NPTMetadataCollector fetch];
      [(NSMutableDictionary *)v20 addEntriesFromDictionary:v21];

      _additionalMetadata = [(NPTPerformanceTest *)self _additionalMetadata];

      if (_additionalMetadata)
      {
        v23 = [(NSMutableDictionary *)self->restoredMetadata objectForKeyedSubscript:@"metadata"];
        _additionalMetadata2 = [(NPTPerformanceTest *)self _additionalMetadata];
        [v23 addEntriesFromDictionary:_additionalMetadata2];

        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        _additionalMetadata3 = [(NPTPerformanceTest *)self _additionalMetadata];
        v26 = [_additionalMetadata3 countByEnumeratingWithState:&v41 objects:v45 count:16];
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
                objc_enumerationMutation(_additionalMetadata3);
              }

              v30 = *(*(&v41 + 1) + 8 * v29);
              v31 = [(NSMutableDictionary *)self->restoredMetadata objectForKeyedSubscript:@"metadata"];
              v32 = [v31 objectForKey:v30];

              if (!v32)
              {
                _additionalMetadata4 = [(NPTPerformanceTest *)self _additionalMetadata];
                v34 = [_additionalMetadata4 objectForKeyedSubscript:v30];
                v35 = [(NSMutableDictionary *)self->restoredMetadata objectForKeyedSubscript:@"metadata"];
                [v35 setObject:v34 forKeyedSubscript:v30];
              }

              ++v29;
            }

            while (v27 != v29);
            v27 = [_additionalMetadata3 countByEnumeratingWithState:&v41 objects:v45 count:16];
          }

          while (v27);
        }
      }
    }

    [(NSMutableDictionary *)self->restoredMetadata setObject:self->uuid forKeyedSubscript:@"uuid"];
    v36 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:self->restoredMetadata];
    results2 = [(NPTPerformanceTest *)self results];
    [results2 setMetadata:v36];

    v15 = self->restoredMetadata;
  }

  v38 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v15];
  v39 = *MEMORY[0x277D85DE8];

  return v38;
}

- (void)startPingWithCompletion:(id)completion
{
  completionCopy = completion;
  [(NPTPerformanceTest *)self activateActivity];
  [(NPTPerformanceTest *)self logFrameworkUsage:0];
  configuration = [(NPTPerformanceTest *)self configuration];
  pingAddressStyle = [configuration pingAddressStyle];
  v7 = pingAddressStyle == 0;
  v8 = pingAddressStyle != 0;

  ping = self->ping;
  configuration2 = [(NPTPerformanceTest *)self configuration];
  -[NPTPing startWithNumberOfPings:forcingIPv4:forcingIPv6:completion:](ping, "startWithNumberOfPings:forcingIPv4:forcingIPv6:completion:", [configuration2 pingCount], v7, v8, completionCopy);
}

- (void)startDownloadWithCompletion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  [(NPTPerformanceTest *)self activateActivity];
  [(NPTPerformanceTest *)self logFrameworkUsage:1];
  configuration = [(NPTPerformanceTest *)self configuration];
  collectMetadata = [configuration collectMetadata];

  if (collectMetadata)
  {
    v9 = +[NPTMetadataCollector fetch];
    snapshots = self->snapshots;
    v3 = [v9 objectForKeyedSubscript:@"metadata"];
    [(NSMutableDictionary *)snapshots setValue:v3 forKey:@"beforeDownloadSnapshot"];
  }

  v11 = +[NPTLogger network];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    inTimedMode = [(NPTPerformanceTest *)self inTimedMode];
    if (inTimedMode && (-[NPTPerformanceTest configuration](self, "configuration"), v3 = objc_claimAutoreleasedReturnValue(), [v3 downloadSize] == 1001))
    {
      v13 = 0;
      downloadSize = 1000;
    }

    else
    {
      configuration2 = [(NPTPerformanceTest *)self configuration];
      downloadSize = [configuration2 downloadSize];
      v13 = 1;
    }

    v16[0] = 67109120;
    v16[1] = downloadSize;
    _os_log_impl(&dword_233421000, v11, OS_LOG_TYPE_DEFAULT, "Will test download speed by downloading %u megabytes from Apple CDN Server", v16, 8u);
    if (v13)
    {
    }

    if (inTimedMode)
    {
    }
  }

  [(NPTDownload *)self->download startDownloadWithCompletion:completionCopy];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)startUploadWithCompletion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  [(NPTPerformanceTest *)self activateActivity];
  [(NPTPerformanceTest *)self logFrameworkUsage:2];
  configuration = [(NPTPerformanceTest *)self configuration];
  collectMetadata = [configuration collectMetadata];

  if (collectMetadata)
  {
    v9 = +[NPTMetadataCollector fetch];
    snapshots = self->snapshots;
    v3 = [v9 objectForKeyedSubscript:@"metadata"];
    [(NSMutableDictionary *)snapshots setValue:v3 forKey:@"beforeUploadSnapshot"];
  }

  v11 = +[NPTLogger network];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    inTimedMode = [(NPTPerformanceTest *)self inTimedMode];
    if (inTimedMode && (-[NPTPerformanceTest configuration](self, "configuration"), v3 = objc_claimAutoreleasedReturnValue(), [v3 uploadSize] == 1001))
    {
      v13 = 0;
      uploadSize = 50;
    }

    else
    {
      configuration2 = [(NPTPerformanceTest *)self configuration];
      uploadSize = [configuration2 uploadSize];
      v13 = 1;
    }

    v16[0] = 67109120;
    v16[1] = uploadSize;
    _os_log_impl(&dword_233421000, v11, OS_LOG_TYPE_DEFAULT, "Will test upload speed by uploading %u megabytes to Apple CDN Server", v16, 8u);
    if (v13)
    {
    }

    if (inTimedMode)
    {
    }
  }

  [(NPTUpload *)self->upload startUploadWithCompletion:completionCopy];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)startTestWithCompletion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = +[NPTLogger network];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    configuration = [(NPTPerformanceTest *)self configuration];
    uuid = [configuration uuid];
    *buf = 138412290;
    v18 = uuid;
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
  v11 = completionCopy;
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
  configuration = [(NPTPerformanceTest *)self configuration];
  collectMetadata = [configuration collectMetadata];

  if (collectMetadata)
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
  configuration = [(NPTPerformanceTest *)self configuration];
  if (([configuration collectMetadata] & 1) == 0)
  {

LABEL_8:
    fetchAWDMetric = +[NPTLogger fileSystem];
    if (os_log_type_enabled(fetchAWDMetric, OS_LOG_TYPE_DEBUG))
    {
      [(NPTPerformanceTest *)fetchAWDMetric saveToAWD:v14];
    }

    goto LABEL_10;
  }

  metadata = [(NPTPerformanceTest *)self metadata];

  if (!metadata)
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
    fetchAWDMetric = [(NPTPerformanceTest *)self fetchAWDMetric];
    WISPostMetric();
LABEL_10:
  }
}

- (id)fetchAWDMetric
{
  getFlattenedDictionary = [(NPTPerformanceTest *)self getFlattenedDictionary];
  v3 = [AWDNetworkPerformanceMetricInitializer createPerformanceMetricFromDictionary:getFlattenedDictionary];

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

- (void)completeActivityWithReason:(int)reason
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
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v4 = [currentCalendar components:62 fromDate:v2];
  [v4 setMinute:0];
  [v4 setSecond:0];
  v5 = [currentCalendar dateFromComponents:v4];

  return v5;
}

- (id)convertDateToISO8601String:(id)string
{
  v3 = MEMORY[0x277CCAA68];
  stringCopy = string;
  v5 = objc_alloc_init(v3);
  localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  [v5 setTimeZone:localTimeZone];

  v7 = [v5 stringForObjectValue:stringCopy];

  return v7;
}

- (id)timestampMaskedString
{
  timestampMasked = [(NPTPerformanceTest *)self timestampMasked];
  v4 = [(NPTPerformanceTest *)self convertDateToISO8601String:timestampMasked];

  return v4;
}

- (id)getFlattenedMetadataDictionary:(id)dictionary
{
  v21 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [dictionaryCopy objectForKeyedSubscript:@"device_states"];
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
        v10 = [dictionaryCopy objectForKeyedSubscript:@"device_states"];
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
  cachedMetadata = [(NPTMetadataCollector *)self->collector cachedMetadata];
  if (cachedMetadata)
  {
    metadata = [(NPTPerformanceTest *)self metadata];
    [(NPTPerformanceTest *)self getFlattenedMetadataDictionary:metadata];
  }

  else
  {
    metadata = [(NPTPerformanceTest *)self dictionary];
    [metadata valueForKey:@"metadata"];
  }
  v145 = ;

  selfCopy = self;
  dictionary = [(NPTPerformanceTest *)self dictionary];
  v7 = [dictionary valueForKey:@"results"];

  v8 = [v7 valueForKey:@"download_results"];
  v9 = [v7 valueForKey:@"upload_results"];
  v10 = [v7 valueForKey:@"ping_results"];
  v141 = v7;
  v142 = [v7 valueForKey:@"network_quality_results"];
  v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.wifiqa.NPTKit"];
  infoDictionary = [v11 infoDictionary];
  v144 = [infoDictionary objectForKey:@"CFBundleShortVersionString"];

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
    configuration = [(NPTPerformanceTest *)selfCopy configuration];
    legacyMode = [configuration legacyMode];

    if ((legacyMode & 1) == 0)
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

      v53 = -[NPTPerformanceTest NQRatingFromEnum:](selfCopy, "NQRatingFromEnum:", [MEMORY[0x277D2C9B0] ratingForResponsivenessScore:v52]);
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
  p_isa = &selfCopy->super.isa;
  [v3 setValue:selfCopy->uuid forKey:@"npt_uuid"];
  v82 = MEMORY[0x277CCABB0];
  configuration2 = [(NPTPerformanceTest *)selfCopy configuration];
  v84 = [v82 numberWithBool:{objc_msgSend(configuration2, "interfaceType") == 1}];
  [v3 setValue:v84 forKey:@"use_wifi_was_specified"];

  [v3 setValue:v144 forKey:@"nptkit_framework_version"];
  configuration3 = [(NPTPerformanceTest *)selfCopy configuration];
  clientName = [configuration3 clientName];
  [v3 setValue:clientName forKey:@"calling_client"];

  v87 = MEMORY[0x277CCABB0];
  configuration4 = [(NPTPerformanceTest *)selfCopy configuration];
  v89 = [v87 numberWithBool:{objc_msgSend(configuration4, "legacyMode")}];
  [v3 setValue:v89 forKey:@"legacy_mode"];

  v90 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:&unk_2848CF480];
  results = [(NPTPerformanceTest *)selfCopy results];
  downloadResults = [results downloadResults];
  isCellular = [downloadResults isCellular];
  v143 = v90;
  if ([isCellular BOOLValue])
  {
  }

  else
  {
    results2 = [(NPTPerformanceTest *)selfCopy results];
    uploadResults = [results2 uploadResults];
    isCellular2 = [uploadResults isCellular];
    bOOLValue = [isCellular2 BOOLValue];

    v90 = v143;
    p_isa = &selfCopy->super.isa;

    if ((bOOLValue & 1) == 0)
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
  cachedMetadata2 = [(NPTMetadataCollector *)selfCopy->collector cachedMetadata];
  v105 = [cachedMetadata2 objectForKeyedSubscript:@"device_states"];
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

  timestampMaskedString = [(NPTPerformanceTest *)selfCopy timestampMaskedString];
  [v3 setObject:timestampMaskedString forKeyedSubscript:@"performance_test_start_time"];

  v131 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v3];

  v132 = *MEMORY[0x277D85DE8];

  return v131;
}

- (id)getTransformedDataForCoreAnalytics
{
  v32 = *MEMORY[0x277D85DE8];
  getDataForCoreAnalytics = [(NPTPerformanceTest *)self getDataForCoreAnalytics];
  v3 = [getDataForCoreAnalytics mutableCopy];
  v26 = [MEMORY[0x277CBEB98] setWithArray:&unk_2848CF498];
  v4 = [MEMORY[0x277CBEB98] setWithArray:&unk_2848CF4B0];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = getDataForCoreAnalytics;
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
  configuration = [(NPTPerformanceTest *)self configuration];
  if ([configuration testDuration])
  {
    configuration2 = [(NPTPerformanceTest *)self configuration];
    v5 = [configuration2 stopAtFileSize] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)NQRatingFromEnum:(int64_t)enum
{
  if (enum > 2)
  {
    return @"No Rating";
  }

  else
  {
    return off_2789D4080[enum];
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

  cachedMetadata = [(NPTMetadataCollector *)self->collector cachedMetadata];

  metadata = [(NPTPerformanceTest *)self metadata];
  if (!cachedMetadata)
  {
    v11 = [(NSMutableDictionary *)self->restoredMetadata objectForKeyedSubscript:@"metadata"];
    [v11 addEntriesFromDictionary:v3];

    restoredMetadata = self->restoredMetadata;
    results = [(NPTPerformanceTest *)self results];
    [results setMetadata:restoredMetadata];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)pingDidFinishWithResults:(id)results
{
  resultsCopy = results;
  results = [(NPTPerformanceTest *)self results];
  [results setPingResults:resultsCopy];

  delegate = [(NPTPerformanceTest *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(NPTPerformanceTest *)self delegate];
    [delegate2 performanceTest:self didFinishWithPingResults:resultsCopy];
  }
}

- (void)pingWillStartPinging
{
  delegate = [(NPTPerformanceTest *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(NPTPerformanceTest *)self delegate];
    [delegate2 performanceTestWillStartPing];
  }
}

- (void)pingDidFinishWithError:(id)error
{
  errorCopy = error;
  results = [(NPTPing *)self->ping results];
  results2 = [(NPTPerformanceTest *)self results];
  [results2 setPingResults:results];

  delegate = [(NPTPerformanceTest *)self delegate];
  LOBYTE(results2) = objc_opt_respondsToSelector();

  if (results2)
  {
    delegate2 = [(NPTPerformanceTest *)self delegate];
    [delegate2 performanceTest:self didFinishPingWithError:errorCopy];
  }
}

- (void)download:(id)download didFinishWithResults:(id)results
{
  resultsCopy = results;
  results = [(NPTPerformanceTest *)self results];
  [results setDownloadResults:resultsCopy];

  configuration = [(NPTPerformanceTest *)self configuration];
  collectMetadata = [configuration collectMetadata];

  if (collectMetadata)
  {
    v8 = +[NPTMetadataCollector fetch];
    snapshots = self->snapshots;
    v10 = [v8 objectForKeyedSubscript:@"metadata"];
    [(NSMutableDictionary *)snapshots setValue:v10 forKey:@"afterDownloadSnapshot"];

    configuration2 = [(NPTPerformanceTest *)self configuration];
    if ([configuration2 collectWRMMetrics])
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

  delegate = [(NPTPerformanceTest *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    delegate2 = [(NPTPerformanceTest *)self delegate];
    [delegate2 performanceTest:self didFinishWithDownloadResults:resultsCopy];
  }
}

- (void)downloadWillStart
{
  delegate = [(NPTPerformanceTest *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(NPTPerformanceTest *)self delegate];
    [delegate2 performanceTestWillStartDownload];
  }
}

- (void)download:(id)download didReceiveSpeedMetric:(id)metric
{
  metricCopy = metric;
  delegate = [(NPTPerformanceTest *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(NPTPerformanceTest *)self delegate];
    [delegate2 performanceTest:self didReceiveDownloadSpeedMetric:metricCopy];
  }
}

- (void)download:(id)download didFinishWithError:(id)error
{
  errorCopy = error;
  results = [download results];
  results2 = [(NPTPerformanceTest *)self results];
  [results2 setDownloadResults:results];

  delegate = [(NPTPerformanceTest *)self delegate];
  LOBYTE(results2) = objc_opt_respondsToSelector();

  if (results2)
  {
    delegate2 = [(NPTPerformanceTest *)self delegate];
    [delegate2 performanceTest:self didFinishDownloadWithError:errorCopy];
  }
}

- (void)upload:(id)upload didFinishWithResults:(id)results
{
  resultsCopy = results;
  results = [(NPTPerformanceTest *)self results];
  [results setUploadResults:resultsCopy];

  configuration = [(NPTPerformanceTest *)self configuration];
  collectMetadata = [configuration collectMetadata];

  if (collectMetadata)
  {
    v8 = +[NPTMetadataCollector fetch];
    snapshots = self->snapshots;
    v10 = [v8 objectForKeyedSubscript:@"metadata"];
    [(NSMutableDictionary *)snapshots setValue:v10 forKey:@"afterUploadSnapshot"];

    configuration2 = [(NPTPerformanceTest *)self configuration];
    if ([configuration2 collectWRMMetrics])
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

  delegate = [(NPTPerformanceTest *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    delegate2 = [(NPTPerformanceTest *)self delegate];
    [delegate2 performanceTest:self didFinishWithUploadResults:resultsCopy];
  }
}

- (void)uploadWillStart
{
  delegate = [(NPTPerformanceTest *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(NPTPerformanceTest *)self delegate];
    [delegate2 performanceTestWillStartUpload];
  }
}

- (void)upload:(id)upload didReceiveSpeedMetric:(id)metric
{
  metricCopy = metric;
  delegate = [(NPTPerformanceTest *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(NPTPerformanceTest *)self delegate];
    [delegate2 performanceTest:self didReceiveUploadSpeedMetric:metricCopy];
  }
}

- (void)upload:(id)upload didFinishWithError:(id)error
{
  errorCopy = error;
  results = [upload results];
  results2 = [(NPTPerformanceTest *)self results];
  [results2 setUploadResults:results];

  delegate = [(NPTPerformanceTest *)self delegate];
  LOBYTE(results2) = objc_opt_respondsToSelector();

  if (results2)
  {
    delegate2 = [(NPTPerformanceTest *)self delegate];
    [delegate2 performanceTest:self didFinishUploadWithError:errorCopy];
  }
}

- (void)encodeWithCoder:(id)coder
{
  download = self->download;
  coderCopy = coder;
  [coderCopy encodeObject:download forKey:@"download"];
  [coderCopy encodeObject:self->upload forKey:@"upload"];
  [coderCopy encodeObject:self->ping forKey:@"ping"];
  metadata = [(NPTPerformanceTest *)self metadata];
  [coderCopy encodeObject:metadata forKey:@"metadata"];

  results = [(NPTPerformanceTest *)self results];
  [coderCopy encodeObject:results forKey:@"results"];

  [coderCopy encodeObject:self->uuid forKey:@"npt_uuid"];
}

- (NPTPerformanceTest)initWithCoder:(id)coder
{
  v20.receiver = self;
  v20.super_class = NPTPerformanceTest;
  coderCopy = coder;
  v4 = [(NPTPerformanceTest *)&v20 init];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"download"];
  download = v4->download;
  v4->download = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"upload"];
  upload = v4->upload;
  v4->upload = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ping"];
  ping = v4->ping;
  v4->ping = v9;

  v11 = MEMORY[0x277CBEB98];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0, v20.receiver, v20.super_class}];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"metadata"];
  restoredMetadata = v4->restoredMetadata;
  v4->restoredMetadata = v14;

  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"results"];
  [(NPTPerformanceTest *)v4 setResults:v16];

  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"npt_uuid"];

  uuid = v4->uuid;
  v4->uuid = v17;

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  configuration = [(NPTPerformanceTest *)self configuration];

  v6 = [NPTPerformanceTest allocWithZone:zone];
  v7 = v6;
  if (configuration)
  {
    configuration2 = [(NPTPerformanceTest *)self configuration];
    v9 = [(NPTPerformanceTest *)v7 initWithConfiguration:configuration2];

    configuration3 = [(NPTPerformanceTest *)self configuration];
    [(NPTPerformanceTest *)v9 setConfiguration:configuration3];

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

- (void)startMetadataCollectionWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(NPTMetadataCollector);
  collector = self->collector;
  self->collector = v5;

  configuration = [(NPTPerformanceTest *)self configuration];
  downloadURL = [configuration downloadURL];
  absoluteString = [downloadURL absoluteString];
  if ([absoluteString containsString:@"npt.cdn-apple.com"])
  {

LABEL_5:
    goto LABEL_6;
  }

  configuration2 = [(NPTPerformanceTest *)self configuration];
  uploadURL = [configuration2 uploadURL];
  absoluteString2 = [uploadURL absoluteString];
  v13 = [absoluteString2 containsString:@"npt.cdn-apple.com"];

  if ((v13 & 1) == 0)
  {
    collectorsWithoutCDNDebug = [(NPTPerformanceTest *)self collectorsWithoutCDNDebug];
    configuration = self->collector;
    self->collector = collectorsWithoutCDNDebug;
    goto LABEL_5;
  }

LABEL_6:
  v15 = self->collector;
  metadataDidChangeHandler = [(NPTPerformanceTest *)self metadataDidChangeHandler];
  [(NPTMetadataCollector *)v15 setMetadataDidChangeHandler:metadataDidChangeHandler];

  objc_initWeak(&location, self);
  v17 = self->collector;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __60__NPTPerformanceTest_startMetadataCollectionWithCompletion___block_invoke;
  v19[3] = &unk_2789D4038;
  objc_copyWeak(&v21, &location);
  v18 = completionCopy;
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

- (void)setMetadataDidChangeHandler:(id)handler
{
  handlerCopy = handler;
  [(NPTPerformanceTest *)self set_metadataDidChangeHandler:handlerCopy];
  if (self->collector)
  {
    objc_initWeak(&location, self);
    collector = self->collector;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __50__NPTPerformanceTest_setMetadataDidChangeHandler___block_invoke;
    v6[3] = &unk_2789D4060;
    objc_copyWeak(&v8, &location);
    v7 = handlerCopy;
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