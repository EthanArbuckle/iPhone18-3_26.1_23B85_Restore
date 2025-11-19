@interface CCFetchMergeableDeltasResponse
+ (id)fetchMergeableDeltasResponseFromPeerToPeerMessage:(id)a3 peerPublicKey:(id)a4;
- (id)dictionaryRepresentation;
- (id)initFromDictionary:(id)a3;
@end

@implementation CCFetchMergeableDeltasResponse

+ (id)fetchMergeableDeltasResponseFromPeerToPeerMessage:(id)a3 peerPublicKey:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [CCFetchMergeableDeltasResponse alloc];
  v8 = [v6 syncReason];
  v9 = [v6 senderDeviceUUID];
  v10 = [v6 protocolVersion];
  [v6 walltime];
  v12 = v11;

  v13 = [(CCPeerToPeerMessage *)v7 initWithSyncReason:v8 senderDeviceUUID:v9 protocolVersion:v10 wallTime:v12];
  [(CCFetchMergeableDeltasResponse *)v13 setPeerPublicKey:v5];

  return v13;
}

- (id)initFromDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CCFetchMergeableDeltasResponse;
  v5 = [(CCPeerToPeerMessage *)&v9 initFromDictionary:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"peerPublicKey"];
    v7 = v5[5];
    v5[5] = v6;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11 = @"peerPublicKey";
  peerPublicKey = self->_peerPublicKey;
  v4 = peerPublicKey;
  if (!peerPublicKey)
  {
    v4 = [MEMORY[0x1E695DEF0] data];
  }

  v12[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v6 = [v5 mutableCopy];

  if (!peerPublicKey)
  {
  }

  v10.receiver = self;
  v10.super_class = CCFetchMergeableDeltasResponse;
  v7 = [(CCPeerToPeerMessage *)&v10 dictionaryRepresentation];
  [v6 addEntriesFromDictionary:v7];

  v8 = *MEMORY[0x1E69E9840];

  return v6;
}

@end