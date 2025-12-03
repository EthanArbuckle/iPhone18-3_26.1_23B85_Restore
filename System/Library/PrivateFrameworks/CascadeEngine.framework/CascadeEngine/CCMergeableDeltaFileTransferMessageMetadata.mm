@interface CCMergeableDeltaFileTransferMessageMetadata
+ (id)mergeableDeltaFileTransferMessageMetadataFromPeerToPeerMessage:(id)message set:(id)set mergeableDeltaMetadataVectors:(id)vectors fileFormatVersion:(unint64_t)version deviceSite:(id)site relayedDeviceSites:(id)sites;
- (id)dictionaryRepresentation;
- (id)initFromDictionary:(id)dictionary;
@end

@implementation CCMergeableDeltaFileTransferMessageMetadata

+ (id)mergeableDeltaFileTransferMessageMetadataFromPeerToPeerMessage:(id)message set:(id)set mergeableDeltaMetadataVectors:(id)vectors fileFormatVersion:(unint64_t)version deviceSite:(id)site relayedDeviceSites:(id)sites
{
  sitesCopy = sites;
  siteCopy = site;
  vectorsCopy = vectors;
  setCopy = set;
  messageCopy = message;
  v18 = [CCMergeableDeltaFileTransferMessageMetadata alloc];
  syncReason = [messageCopy syncReason];
  senderDeviceUUID = [messageCopy senderDeviceUUID];
  protocolVersion = [messageCopy protocolVersion];
  [messageCopy walltime];
  v23 = v22;

  v24 = [(CCPeerToPeerMessage *)v18 initWithSyncReason:syncReason senderDeviceUUID:senderDeviceUUID protocolVersion:protocolVersion wallTime:v23];
  [(CCMergeableDeltaFileTransferMessageMetadata *)v24 setSet:setCopy];

  [(CCMergeableDeltaFileTransferMessageMetadata *)v24 setMergeableDeltaMetadataVectors:vectorsCopy];
  [(CCMergeableDeltaFileTransferMessageMetadata *)v24 setFileFormatVersion:version];
  [(CCMergeableDeltaFileTransferMessageMetadata *)v24 setDeviceSite:siteCopy];

  [(CCMergeableDeltaFileTransferMessageMetadata *)v24 setRelayedDeviceSites:sitesCopy];

  return v24;
}

- (id)initFromDictionary:(id)dictionary
{
  v39 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v35.receiver = self;
  v35.super_class = CCMergeableDeltaFileTransferMessageMetadata;
  v5 = [(CCPeerToPeerMessage *)&v35 initFromDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E69939E0]);
    v7 = [dictionaryCopy objectForKeyedSubscript:@"deviceSite"];
    v8 = [v6 initFromDictionary:v7];
    v9 = v5[8];
    v5[8] = v8;

    v10 = objc_alloc(MEMORY[0x1E6993A50]);
    v11 = [dictionaryCopy objectForKeyedSubscript:@"set"];
    v12 = [v10 initFromDictionary:v11];
    v13 = v5[5];
    v5[5] = v12;

    v14 = [dictionaryCopy objectForKeyedSubscript:@"fileFormatVersion"];
    v5[6] = [v14 unsignedIntegerValue];

    v15 = [dictionaryCopy objectForKeyedSubscript:@"mergeableDeltaMetadataVectors"];
    v16 = v5[7];
    v29 = v5;
    v5[7] = v15;

    v17 = objc_opt_new();
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v30 = dictionaryCopy;
    v18 = [dictionaryCopy objectForKeyedSubscript:@"relayedDeviceSites"];
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

    dictionaryCopy = v30;
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

        dictionaryRepresentation = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
        [v3 addObject:dictionaryRepresentation];
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
  dictionaryRepresentation2 = [(CCSet *)self->_set dictionaryRepresentation];
  v25[3] = dictionaryRepresentation2;
  v24[4] = @"deviceSite";
  dictionaryRepresentation3 = [(CCDeviceSite *)self->_deviceSite dictionaryRepresentation];
  v25[4] = dictionaryRepresentation3;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:5];
  v15 = [v14 mutableCopy];

  v19.receiver = self;
  v19.super_class = CCMergeableDeltaFileTransferMessageMetadata;
  dictionaryRepresentation4 = [(CCPeerToPeerMessage *)&v19 dictionaryRepresentation];
  [v15 addEntriesFromDictionary:dictionaryRepresentation4];

  v17 = *MEMORY[0x1E69E9840];

  return v15;
}

@end