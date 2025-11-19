@interface BLTPBFileURLMetaData
- (BLTPBFileURLMetaData)initWithMetadata:(id)a3 sequenceNumberManager:(id)a4;
- (BLTPBFileURLMetaData)initWithSequenceNumberManager:(id)a3 extraMetadata:(id)a4;
- (id)transportData;
@end

@implementation BLTPBFileURLMetaData

- (BLTPBFileURLMetaData)initWithSequenceNumberManager:(id)a3 extraMetadata:(id)a4
{
  v29[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v25.receiver = self;
  v25.super_class = BLTPBFileURLMetaData;
  v8 = [(BLTPBFileURLMetaData *)&v25 init];
  if (v8)
  {
    v9 = [BLTPBTransportData transportDataWithSequenceNumberManager:v6];
    v10 = [v9 data];

    if (v7 && v10)
    {
      v28[0] = @"t";
      v28[1] = @"x";
      v29[0] = v10;
      v29[1] = v7;
      v11 = MEMORY[0x277CBEAC0];
      v12 = v29;
      v13 = v28;
      v14 = 2;
    }

    else
    {
      if (!v10)
      {
        p_super = blt_ids_log();
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
        {
          [(BLTPBFileURLMetaData *)v6 initWithSequenceNumberManager:v19 extraMetadata:v20, v21, v22, v23, v24];
        }

        goto LABEL_8;
      }

      v26 = @"t";
      v27 = v10;
      v11 = MEMORY[0x277CBEAC0];
      v12 = &v27;
      v13 = &v26;
      v14 = 1;
    }

    v15 = [v11 dictionaryWithObjects:v12 forKeys:v13 count:v14];
    p_super = &v8->_metadata->super;
    v8->_metadata = v15;
LABEL_8:

    objc_storeStrong(&v8->_extraMetadata, a4);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BLTPBFileURLMetaData)initWithMetadata:(id)a3 sequenceNumberManager:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [v7 objectForKeyedSubscript:@"t"];

  if (v9)
  {
    v10 = [BLTPBTransportData alloc];
    v11 = [v7 objectForKeyedSubscript:@"t"];
    v12 = [(BLTPBTransportData *)v10 initWithData:v11];

    if (v12)
    {
      v30.receiver = self;
      v30.super_class = BLTPBFileURLMetaData;
      v13 = [(BLTPBFileURLMetaData *)&v30 init];
      if (v13)
      {
        v14 = [v7 objectForKeyedSubscript:@"x"];
        extraMetadata = v13->_extraMetadata;
        v13->_extraMetadata = v14;

        objc_storeStrong(&v13->_metadata, a3);
        if ([(BLTPBTransportData *)v12 hasSequenceNumber])
        {
          v13->_sessionState = [(BLTPBTransportData *)v12 backwardsCompatibleSessionState];
          v16 = blt_ids_log();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v17 = [v8 serviceName];
            v18 = [(BLTPBTransportData *)v12 sequenceNumber];
            v19 = [(BLTPBTransportData *)v12 sessionUUID];
            v20 = [v19 UUIDString];
            v21 = v20;
            v22 = "startAck";
            sessionState = v13->_sessionState;
            if (sessionState == 1)
            {
              v22 = "start";
            }

            *buf = 138413058;
            v33 = 2048;
            v32 = v17;
            v34 = v18;
            if (!sessionState)
            {
              v22 = "normal";
            }

            v35 = 2112;
            v36 = v20;
            v37 = 2080;
            v38 = v22;
            _os_log_impl(&dword_241FB3000, v16, OS_LOG_TYPE_INFO, "Sequence number attached to incoming fileURL on service %@: %llu session: %@ state: %s", buf, 0x2Au);
          }

          v13->_sequenceNumberError = [(BLTPBTransportData *)v12 setSequenceNumberOnManager:v8];
        }

        else
        {
          v27 = blt_ids_log();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_241FB3000, v27, OS_LOG_TYPE_INFO, "Received message without sequence number", buf, 2u);
          }
        }
      }

      self = v13;
      v25 = self;
    }

    else
    {
      v26 = blt_ids_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v32 = v7;
        _os_log_impl(&dword_241FB3000, v26, OS_LOG_TYPE_ERROR, "No transport data. Metadata: %@", buf, 0xCu);
      }

      _BLTCaptureBug(@"BLTPBFileURLMetaDataMissingTransportData");
      v25 = 0;
    }
  }

  else
  {
    v24 = blt_ids_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v32 = v7;
      _os_log_impl(&dword_241FB3000, v24, OS_LOG_TYPE_ERROR, "No transport data. Metadata: %@", buf, 0xCu);
    }

    _BLTCaptureBug(@"BLTPBFileURLMetadataTransportDataKey is nil");
    v25 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v25;
}

- (id)transportData
{
  v3 = [BLTPBTransportData alloc];
  v4 = [(NSDictionary *)self->_metadata objectForKeyedSubscript:@"t"];
  v5 = [(BLTPBTransportData *)v3 initWithData:v4];

  return v5;
}

- (void)initWithSequenceNumberManager:(uint64_t)a3 extraMetadata:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2(&dword_241FB3000, a2, a3, "BLTPBFileURLMetaData initWithSequenceNumberManager %@: transportData was nil!", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end