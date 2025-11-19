@interface CCMergeableDeltaFileTransferMessageMetadata
+ (id)mergeableDeltaFileTransferMessageMetadataFromPeerToPeerMessage:(id)a3 set:(id)a4 mergeableDeltaMetadataVectors:(id)a5 fileFormatVersion:(unint64_t)a6 deviceSite:(id)a7 relayedDeviceSites:(id)a8;
- (id)dictionaryRepresentation;
- (id)initFromDictionary:(id)a3;
@end

@implementation CCMergeableDeltaFileTransferMessageMetadata

+ (id)mergeableDeltaFileTransferMessageMetadataFromPeerToPeerMessage:(id)a3 set:(id)a4 mergeableDeltaMetadataVectors:(id)a5 fileFormatVersion:(unint64_t)a6 deviceSite:(id)a7 relayedDeviceSites:(id)a8
{
  v13 = a8;
  v14 = a7;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [CCMergeableDeltaFileTransferMessageMetadata alloc];
  v19 = [v17 syncReason];
  v20 = [v17 senderDeviceUUID];
  v21 = [v17 protocolVersion];
  [v17 walltime];
  v23 = v22;

  v24 = [(CCPeerToPeerMessage *)v18 initWithSyncReason:v19 senderDeviceUUID:v20 protocolVersion:v21 wallTime:v23];
  [(CCMergeableDeltaFileTransferMessageMetadata *)v24 setSet:v16];

  [(CCMergeableDeltaFileTransferMessageMetadata *)v24 setMergeableDeltaMetadataVectors:v15];
  [(CCMergeableDeltaFileTransferMessageMetadata *)v24 setFileFormatVersion:a6];
  [(CCMergeableDeltaFileTransferMessageMetadata *)v24 setDeviceSite:v14];

  [(CCMergeableDeltaFileTransferMessageMetadata *)v24 setRelayedDeviceSites:v13];

  return v24;
}

- (id)initFromDictionary:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v35.receiver = self;
  v35.super_class = CCMergeableDeltaFileTransferMessageMetadata;
  v5 = [(CCPeerToPeerMessage *)&v35 initFromDictionary:v4];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E69939E0]);
    v7 = [v4 objectForKeyedSubscript:@"deviceSite"];
    v8 = [v6 initFromDictionary:v7];
    v9 = v5[8];
    v5[8] = v8;

    v10 = objc_alloc(MEMORY[0x1E6993A50]);
    v11 = [v4 objectForKeyedSubscript:@"set"];
    v12 = [v10 initFromDictionary:v11];
    v13 = v5[5];
    v5[5] = v12;

    v14 = [v4 objectForKeyedSubscript:@"fileFormatVersion"];
    v5[6] = [v14 unsignedIntegerValue];

    v15 = [v4 objectForKeyedSubscript:@"mergeableDeltaMetadataVectors"];
    v16 = v5[7];
    v29 = v5;
    v5[7] = v15;

    v17 = objc_opt_new();
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v30 = v4;
    v18 = [v4 objectForKeyedSubscript:@"relayedDeviceSites"];
    v19 = [v18 countByEnumeratingWithState:&v31 objects:v38 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v32;
      do
      {
        v22 = 0;
        do
        {
          if (*v32 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v31 + 1) + 8 * v22);
          v24 = [objc_alloc(MEMORY[0x1E69939E0]) initFromDictionary:v23];
          if (v24)
          {
            [v17 addObject:v24];
          }

          else
          {
            v25 = __biome_log_for_category();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v37 = v23;
              _os_log_error_impl(&dword_1DA444000, v25, OS_LOG_TYPE_ERROR, "Failed to decode deviceSite from opack encoding %@", buf, 0xCu);
            }
          }

          ++v22;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v31 objects:v38 count:16];
      }

      while (v20);
    }

    v5 = v29;
    v26 = v29[9];
    v29[9] = v17;

    v4 = v30;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)dictionaryRepresentation
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = self->_relayedDeviceSites;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
        [v3 addObject:v9];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v6);
  }

  v24[0] = @"fileFormatVersion";
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_fileFormatVersion];
  mergeableDeltaMetadataVectors = self->_mergeableDeltaMetadataVectors;
  v25[0] = v10;
  v25[1] = mergeableDeltaMetadataVectors;
  v24[1] = @"mergeableDeltaMetadataVectors";
  v24[2] = @"relayedDeviceSites";
  v25[2] = v3;
  v24[3] = @"set";
  v12 = [(CCSet *)self->_set dictionaryRepresentation];
  v25[3] = v12;
  v24[4] = @"deviceSite";
  v13 = [(CCDeviceSite *)self->_deviceSite dictionaryRepresentation];
  v25[4] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:5];
  v15 = [v14 mutableCopy];

  v19.receiver = self;
  v19.super_class = CCMergeableDeltaFileTransferMessageMetadata;
  v16 = [(CCPeerToPeerMessage *)&v19 dictionaryRepresentation];
  [v15 addEntriesFromDictionary:v16];

  v17 = *MEMORY[0x1E69E9840];

  return v15;
}

@end