@interface UARPDynamicAssetAnalyticsEvent
+ (id)tag;
- (BOOL)decomposeUARP;
- (UARPDynamicAssetAnalyticsEvent)init;
- (UARPDynamicAssetAnalyticsEvent)initWithURL:(id)a3;
- (id)description;
- (void)send;
@end

@implementation UARPDynamicAssetAnalyticsEvent

- (UARPDynamicAssetAnalyticsEvent)init
{
  [(UARPDynamicAssetAnalyticsEvent *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (UARPDynamicAssetAnalyticsEvent)initWithURL:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = UARPDynamicAssetAnalyticsEvent;
  v5 = [(UARPDynamicAssetAnalyticsEvent *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
    url = v5->_url;
    v5->_url = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    events = v5->_events;
    v5->_events = v8;
  }

  return v5;
}

- (id)description
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v3 appendFormat:@"Analytics Events %@\n", self->_events];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_events;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 appendFormat:@"Analytics Event %@\n", *(*(&v11 + 1) + 8 * i)];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)decomposeUARP
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [[UARPSuperBinaryAsset alloc] initWithURL:self->_url];
  asset = self->_asset;
  self->_asset = v3;

  if (![(UARPSuperBinaryAsset *)self->_asset expandHeadersAndTLVs:0])
  {
LABEL_28:
    v21 = 0;
    goto LABEL_29;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = [(UARPSuperBinaryAsset *)self->_asset payloads];
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (!v6)
  {
    goto LABEL_19;
  }

  v8 = v6;
  v9 = *v27;
  v10 = MEMORY[0x277D86220];
  *&v7 = 138412290;
  v25 = v7;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v27 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v12 = *(*(&v26 + 1) + 8 * i);
      v13 = [(NSMutableArray *)v12 tlvs];
      v14 = [UARPSuperBinaryAssetTLV findTLVWithType:1483412481 tlvs:v13];

      if (v14)
      {
        v15 = [v14 valueAsNumber];
        if (!v15)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [UARPDynamicAssetAnalyticsEvent decomposeUARP];
          }

          goto LABEL_27;
        }

        v16 = v15;
        if ([v15 unsignedIntegerValue])
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [UARPDynamicAssetAnalyticsEvent decomposeUARP];
          }

          goto LABEL_27;
        }
      }

      else if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = v25;
        v31 = v12;
        _os_log_impl(&dword_247AA7000, v10, OS_LOG_TYPE_INFO, "Process TICS assuming JSON : %@", buf, 0xCu);
      }

      [(NSMutableArray *)v12 rangePayload];
      v18 = [(UARPSuperBinaryAsset *)self->_asset payloadData:v12 range:0 error:v17, 0];
      v19 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v18 options:0 error:0];
      if (!v19 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {

LABEL_27:
        goto LABEL_28;
      }

      v20 = v19;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = v25;
        v31 = v20;
        _os_log_impl(&dword_247AA7000, v10, OS_LOG_TYPE_INFO, "Analytics object : %@", buf, 0xCu);
      }

      [(NSMutableArray *)self->_events addObject:v20];
    }

    v8 = [v5 countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_19:

  v21 = 1;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    events = self->_events;
    *buf = 138412290;
    v31 = events;
    _os_log_impl(&dword_247AA7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "All Analytics objects for this asset: %@", buf, 0xCu);
  }

LABEL_29:
  v23 = *MEMORY[0x277D85DE8];
  return v21;
}

- (void)send
{
  v33 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = self->_events;
  v16 = [(NSMutableArray *)obj countByEnumeratingWithState:&v23 objects:v32 count:16];
  if (v16)
  {
    v15 = *v24;
    v2 = MEMORY[0x277D86220];
    do
    {
      v3 = 0;
      do
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = v3;
        v4 = *(*(&v23 + 1) + 8 * v3);
        v5 = [v4 allKeys];
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v6 = [v5 countByEnumeratingWithState:&v19 objects:v31 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v20;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v20 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v19 + 1) + 8 * i);
              v11 = [v4 objectForKeyedSubscript:v10];
              if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v28 = v10;
                v29 = 2112;
                v30 = v11;
                _os_log_impl(&dword_247AA7000, v2, OS_LOG_TYPE_INFO, "Posting Analytics %@ : %@", buf, 0x16u);
              }

              v18 = v11;
              v12 = v11;
              AnalyticsSendEventLazy();
            }

            v7 = [v5 countByEnumeratingWithState:&v19 objects:v31 count:16];
          }

          while (v7);
        }

        v3 = v17 + 1;
      }

      while (v17 + 1 != v16);
      v16 = [(NSMutableArray *)obj countByEnumeratingWithState:&v23 objects:v32 count:16];
    }

    while (v16);
  }

  v13 = *MEMORY[0x277D85DE8];
}

+ (id)tag
{
  v2 = uarpAssetTagStructAnalytics();
  v3 = [[UARPAssetTag alloc] initWithChar1:*v2 char2:v2[1] char3:v2[2] char4:v2[3]];

  return v3;
}

@end