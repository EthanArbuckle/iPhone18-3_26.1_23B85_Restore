@interface NPTCDNDebugCollector
- (void)startCollectingWithCompletion:(id)completion;
- (void)stopCollecting;
@end

@implementation NPTCDNDebugCollector

- (void)startCollectingWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(NPTCDNDebugCollector *)self setCachedMetadata:v6];

  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  cachedMetadata = [(NPTCDNDebugCollector *)self cachedMetadata];
  [cachedMetadata setObject:v7 forKeyedSubscript:@"initial_state"];

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  cachedMetadata2 = [(NPTCDNDebugCollector *)self cachedMetadata];
  [cachedMetadata2 setObject:v9 forKeyedSubscript:@"events"];

  ephemeralSessionConfiguration = [MEMORY[0x277CBABC8] ephemeralSessionConfiguration];
  [ephemeralSessionConfiguration setTimeoutIntervalForRequest:2.0];
  [ephemeralSessionConfiguration setTimeoutIntervalForResource:2.0];
  v12 = [MEMORY[0x277CBABB8] sessionWithConfiguration:ephemeralSessionConfiguration];
  [(NPTCDNDebugCollector *)self setSession:v12];

  v13 = [MEMORY[0x277CBEBC0] URLWithString:@"http://504sfaa.map.apple-dns.net/json"];
  session = [(NPTCDNDebugCollector *)self session];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __54__NPTCDNDebugCollector_startCollectingWithCompletion___block_invoke;
  v18[3] = &unk_2789D4338;
  v19 = v5;
  selfCopy = self;
  v21 = completionCopy;
  v15 = completionCopy;
  v16 = v5;
  v17 = [session dataTaskWithURL:v13 completionHandler:v18];

  [v17 resume];
}

void __54__NPTCDNDebugCollector_startCollectingWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (v7)
  {
    v9 = [v7 localizedDescription];
    [v8 setValue:v9 forKey:@"Error"];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_6;
    }

    v9 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v6 options:0 error:0];
    [v8 addEntriesFromDictionary:v9];
  }

LABEL_6:
  v28 = v7;
  v29 = v6;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v31;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v30 + 1) + 8 * i);
        v16 = [v10 valueForKey:{v15, v28}];
        if (v16)
        {
          v17 = *(a1 + 32);
          v18 = [@"cdn_debug_" stringByAppendingString:v15];
          v19 = [v18 lowercaseString];
          [v17 setObject:v16 forKey:v19];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v12);
  }

  v20 = *(a1 + 32);
  v21 = [*(a1 + 40) cachedMetadata];
  [v21 setObject:v20 forKeyedSubscript:@"initial_state"];

  v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = v22;
  if (v28)
  {
    [v22 addObject:v28];
  }

  v24 = *(a1 + 48);
  if (v24)
  {
    v25 = *(a1 + 32);
    v26 = [v23 copy];
    (*(v24 + 16))(v24, v25, v26);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)stopCollecting
{
  session = [(NPTCDNDebugCollector *)self session];
  [session invalidateAndCancel];
}

@end