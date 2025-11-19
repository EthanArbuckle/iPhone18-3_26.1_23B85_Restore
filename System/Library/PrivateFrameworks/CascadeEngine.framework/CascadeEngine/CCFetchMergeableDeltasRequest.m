@interface CCFetchMergeableDeltasRequest
- (id)dictionaryRepresentation;
- (id)initFromDictionary:(id)a3;
- (void)dictionaryRepresentation;
@end

@implementation CCFetchMergeableDeltasRequest

- (id)initFromDictionary:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = CCFetchMergeableDeltasRequest;
  v5 = [(CCPeerToPeerMessage *)&v29 initFromDictionary:v4];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E6993A50]);
    v7 = [v4 objectForKeyedSubscript:@"set"];
    v8 = [v6 initFromDictionary:v7];
    v9 = v5[6];
    v5[6] = v8;

    v10 = [v4 objectForKeyedSubscript:@"atomBatchVersion"];
    v5[8] = [v10 unsignedIntegerValue];

    v11 = [v4 objectForKeyedSubscript:@"stateVector"];
    v12 = MEMORY[0x1E696ACD0];
    v13 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v28 = 0;
    v14 = [v12 unarchivedObjectOfClasses:v13 fromData:v11 error:&v28];
    v15 = v28;
    v16 = v5[7];
    v5[7] = v14;

    if (v15)
    {
      v17 = __biome_log_for_category();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        [(CCFetchMergeableDeltasRequest *)v15 initFromDictionary:v17];
      }
    }

    v18 = [v4 objectForKeyedSubscript:@"fetchDeltasRequestOptions"];
    *(v5 + 20) = [v18 unsignedIntValue];

    v19 = [v4 objectForKeyedSubscript:@"peerPublicKey"];
    v20 = v5[9];
    v5[9] = v19;

    v21 = [v5 senderDeviceUUID];

    if (!v21)
    {
      v22 = objc_alloc(MEMORY[0x1E69939E0]);
      v23 = [v4 objectForKeyedSubscript:@"deviceSite"];
      v24 = [v22 initFromDictionary:v23];

      v25 = [v24 device];
      v26 = [v25 deviceUUID];
      [v5 setSenderDeviceUUID:v26];
    }
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v22[5] = *MEMORY[0x1E69E9840];
  stateVector = self->_stateVector;
  v20 = 0;
  v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:stateVector requiringSecureCoding:1 error:&v20];
  v5 = v20;
  if (v5)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(CCFetchMergeableDeltasRequest *)v5 dictionaryRepresentation];
    }
  }

  v18 = v5;
  v21[0] = @"stateVector";
  v7 = v4;
  if (!v4)
  {
    v7 = [MEMORY[0x1E695DEF0] data];
  }

  v22[0] = v7;
  v21[1] = @"atomBatchVersion";
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_atomBatchVersion];
  v22[1] = v8;
  v21[2] = @"fetchDeltasRequestOptions";
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:self->_requestOptions];
  v22[2] = v9;
  v21[3] = @"peerPublicKey";
  peerPublicKey = self->_peerPublicKey;
  v11 = peerPublicKey;
  if (!peerPublicKey)
  {
    v11 = [MEMORY[0x1E695DEF0] data];
  }

  v22[3] = v11;
  v21[4] = @"set";
  v12 = [(CCSet *)self->_set dictionaryRepresentation];
  v22[4] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:5];
  v14 = [v13 mutableCopy];

  if (!peerPublicKey)
  {
  }

  if (!v4)
  {
  }

  v19.receiver = self;
  v19.super_class = CCFetchMergeableDeltasRequest;
  v15 = [(CCPeerToPeerMessage *)&v19 dictionaryRepresentation];
  [v14 addEntriesFromDictionary:v15];

  v16 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)initFromDictionary:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_1DA444000, a2, OS_LOG_TYPE_FAULT, "failed to unarchive CKDistributedTimestampStateVector with error %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)dictionaryRepresentation
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_1DA444000, a2, OS_LOG_TYPE_FAULT, "failed to archive CKDistributedTimestampStateVector with error %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end