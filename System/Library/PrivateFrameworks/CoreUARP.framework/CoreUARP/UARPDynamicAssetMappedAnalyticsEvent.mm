@interface UARPDynamicAssetMappedAnalyticsEvent
+ (id)tag;
- (BOOL)decomposeUARP;
- (BOOL)expandMTICPayloads;
- (BOOL)findMatchingTMAP;
- (BOOL)getAppleModelNumber:(id)number inPayload:(id)payload;
- (BOOL)getEventID:(unsigned int *)d inPayload:(id)payload;
- (BOOL)prepareAndSend;
- (UARPDynamicAssetMappedAnalyticsEvent)init;
- (UARPDynamicAssetMappedAnalyticsEvent)initWithURL:(id)l serialNumber:(id)number;
- (id)description;
- (void)decomposeUARP;
- (void)findMatchingTMAP;
- (void)send;
@end

@implementation UARPDynamicAssetMappedAnalyticsEvent

- (UARPDynamicAssetMappedAnalyticsEvent)init
{
  [(UARPDynamicAssetMappedAnalyticsEvent *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (UARPDynamicAssetMappedAnalyticsEvent)initWithURL:(id)l serialNumber:(id)number
{
  lCopy = l;
  numberCopy = number;
  v20.receiver = self;
  v20.super_class = UARPDynamicAssetMappedAnalyticsEvent;
  v9 = [(UARPDynamicAssetMappedAnalyticsEvent *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_url, l);
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    coreAnalyticsEvents = v10->_coreAnalyticsEvents;
    v10->_coreAnalyticsEvents = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    payloads = v10->_payloads;
    v10->_payloads = v13;

    v15 = os_log_create("com.apple.accessoryupdater.uarp", "tmap");
    log = v10->_log;
    v10->_log = v15;

    v17 = [numberCopy copy];
    serialNumber = v10->_serialNumber;
    v10->_serialNumber = v17;
  }

  return v10;
}

- (id)description
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if (self->_tmapDatabase)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v4 = self->_coreAnalyticsEvents;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v20;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [v3 appendFormat:@"Mapped Analytics Event %@\n", *(*(&v19 + 1) + 8 * i)];
        }

        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = self->_payloads;
    v9 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (j = 0; j != v10; ++j)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v4);
          }

          [v3 appendFormat:@"Mapped Analytics Payload %@\n", *(*(&v15 + 1) + 8 * j)];
        }

        v10 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v10);
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)send
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_coreAnalyticsEvents;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v9 + 1) + 8 * i) objectForKeyedSubscript:@"EventName"];
        AnalyticsSendEventLazy();
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)decomposeUARP
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [[UARPSuperBinaryAsset alloc] initWithURL:self->_url];
  asset = self->_asset;
  self->_asset = v3;

  if ([(UARPSuperBinaryAsset *)self->_asset expandHeadersAndTLVs:0])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = [(UARPSuperBinaryAsset *)self->_asset payloads];
    v5 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v24;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v24 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v23 + 1) + 8 * i);
          dictionary = [MEMORY[0x277CBEB38] dictionary];
          v22 = 0;
          if (![(UARPDynamicAssetMappedAnalyticsEvent *)self getEventID:&v22 inPayload:v9])
          {
            goto LABEL_18;
          }

          v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v22];
          [dictionary setObject:v11 forKeyedSubscript:@"EventID"];

          v12 = objc_alloc_init(MEMORY[0x277CCAB68]);
          if (![(UARPDynamicAssetMappedAnalyticsEvent *)self getAppleModelNumber:v12 inPayload:v9])
          {
            goto LABEL_17;
          }

          v13 = [v12 copy];
          [dictionary setObject:v13 forKeyedSubscript:@"AppleModelNumber"];

          [v9 rangePayload];
          v15 = [(UARPSuperBinaryAsset *)self->_asset payloadData:v9 range:0 error:v14, 0];
          if (!v15)
          {
            log = self->_log;
            if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
            {
              [(UARPDynamicAssetMappedAnalyticsEvent *)v9 decomposeUARP];
            }

LABEL_17:

LABEL_18:
            v17 = 0;
            goto LABEL_19;
          }

          v16 = v15;
          [dictionary setObject:v15 forKeyedSubscript:@"Events"];
          [(NSMutableArray *)self->_payloads addObject:dictionary];
        }

        v6 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
        v17 = 1;
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v17 = 1;
    }

LABEL_19:
  }

  else
  {
    v17 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)findMatchingTMAP
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [[UARPDynamicAssetTmapDatabase alloc] initTmapDatabase:0];
  tmapDatabase = self->_tmapDatabase;
  self->_tmapDatabase = v3;

  if (self->_tmapDatabase)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = self->_payloads;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v17 + 1) + 8 * i) objectForKeyedSubscript:{@"AppleModelNumber", v17}];
          v11 = [v10 copy];

          v12 = [(UARPDynamicAssetTmapDatabase *)self->_tmapDatabase findTmapforAppleModel:v11];
          if (!v12)
          {
            log = self->_log;
            if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
            {
              [(UARPDynamicAssetMappedAnalyticsEvent *)v11 findMatchingTMAP];
            }

            v13 = 0;
            goto LABEL_14;
          }
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v13 = 1;
LABEL_14:
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPDynamicAssetMappedAnalyticsEvent findMatchingTMAP];
    }

    v13 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)expandMTICPayloads
{
  v29 = *MEMORY[0x277D85DE8];
  if ([(UARPDynamicAssetMappedAnalyticsEvent *)self findMatchingTMAP])
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = self->_payloads;
    v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v3)
    {
      v4 = v3;
      v21 = *v23;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v23 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v22 + 1) + 8 * i);
          v7 = [v6 objectForKeyedSubscript:@"Events"];
          v8 = [v7 copy];

          v9 = [v6 objectForKeyedSubscript:@"AppleModelNumber"];
          v10 = [v9 copy];

          v11 = [v6 objectForKeyedSubscript:@"EventID"];
          unsignedIntValue = [v11 unsignedIntValue];

          v13 = [(UARPDynamicAssetTmapDatabase *)self->_tmapDatabase expandMticData:v8 withEventID:unsignedIntValue appleModelNumber:v10 serialNumber:self->_serialNumber];
          if (!v13)
          {
            if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
            {
              [UARPDynamicAssetMappedAnalyticsEvent expandMTICPayloads];
            }

            goto LABEL_15;
          }

          v14 = v13;
          [(NSMutableArray *)self->_coreAnalyticsEvents addObject:v13];
        }

        v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v22 objects:v28 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    log = self->_log;
    v16 = 1;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      coreAnalyticsEvents = self->_coreAnalyticsEvents;
      *buf = 138412290;
      v27 = coreAnalyticsEvents;
      _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "All MTIC data for this asset: %@", buf, 0xCu);
    }
  }

  else
  {
LABEL_15:
    v16 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)prepareAndSend
{
  if (![(UARPDynamicAssetMappedAnalyticsEvent *)self decomposeUARP])
  {
    v3 = os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR);
    if (!v3)
    {
      return v3;
    }

    [UARPDynamicAssetMappedAnalyticsEvent prepareAndSend];
    goto LABEL_9;
  }

  if (![(UARPDynamicAssetMappedAnalyticsEvent *)self expandMTICPayloads])
  {
    v3 = os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR);
    if (!v3)
    {
      return v3;
    }

    [UARPDynamicAssetMappedAnalyticsEvent prepareAndSend];
LABEL_9:
    LOBYTE(v3) = 0;
    return v3;
  }

  [(UARPDynamicAssetMappedAnalyticsEvent *)self send];
  LOBYTE(v3) = 1;
  return v3;
}

- (BOOL)getEventID:(unsigned int *)d inPayload:(id)payload
{
  tlvs = [payload tlvs];
  v7 = [UARPSuperBinaryAssetTLV findTLVWithType:538280449 tlvs:tlvs];

  if (v7)
  {
    valueAsNumber = [v7 valueAsNumber];
    v9 = valueAsNumber;
    v10 = valueAsNumber != 0;
    if (valueAsNumber)
    {
      *d = [valueAsNumber unsignedIntValue];
    }

    else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPDynamicAssetMappedAnalyticsEvent getEventID:inPayload:];
    }
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPDynamicAssetMappedAnalyticsEvent getEventID:inPayload:];
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)getAppleModelNumber:(id)number inPayload:(id)payload
{
  numberCopy = number;
  tlvs = [payload tlvs];
  v7 = [UARPSuperBinaryAssetTLV findTLVWithType:538280448 tlvs:tlvs];

  if (v7)
  {
    valueAsString = [v7 valueAsString];
    v9 = valueAsString != 0;
    if (valueAsString)
    {
      [numberCopy setString:valueAsString];
    }

    else
    {
      v18 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v18)
      {
        [(UARPDynamicAssetMappedAnalyticsEvent *)v18 getAppleModelNumber:v19 inPayload:v20, v21, v22, v23, v24, v25];
      }
    }
  }

  else
  {
    v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v10)
    {
      [(UARPDynamicAssetMappedAnalyticsEvent *)v10 getAppleModelNumber:v11 inPayload:v12, v13, v14, v15, v16, v17];
    }

    v9 = 0;
  }

  return v9;
}

+ (id)tag
{
  v2 = uarpAssetTagStructMappedAnalytics();
  v3 = [[UARPAssetTag alloc] initWithChar1:*v2 char2:v2[1] char3:v2[2] char4:v2[3]];

  return v3;
}

- (void)decomposeUARP
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_247AA7000, a2, OS_LOG_TYPE_ERROR, "MTIC has no Payload Data: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)findMatchingTMAP
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_247AA7000, a2, OS_LOG_TYPE_ERROR, "Unable to find Matching TMAP for Apple Model Number: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end