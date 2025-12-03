@interface CCFetchMergeableDeltasResponse
+ (id)fetchMergeableDeltasResponseFromPeerToPeerMessage:(id)message peerPublicKey:(id)key;
- (id)dictionaryRepresentation;
- (id)initFromDictionary:(id)dictionary;
@end

@implementation CCFetchMergeableDeltasResponse

+ (id)fetchMergeableDeltasResponseFromPeerToPeerMessage:(id)message peerPublicKey:(id)key
{
  keyCopy = key;
  messageCopy = message;
  v7 = [CCFetchMergeableDeltasResponse alloc];
  syncReason = [messageCopy syncReason];
  senderDeviceUUID = [messageCopy senderDeviceUUID];
  protocolVersion = [messageCopy protocolVersion];
  [messageCopy walltime];
  v12 = v11;

  v13 = [(CCPeerToPeerMessage *)v7 initWithSyncReason:syncReason senderDeviceUUID:senderDeviceUUID protocolVersion:protocolVersion wallTime:v12];
  [(CCFetchMergeableDeltasResponse *)v13 setPeerPublicKey:keyCopy];

  return v13;
}

- (id)initFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = CCFetchMergeableDeltasResponse;
  v5 = [(CCPeerToPeerMessage *)&v9 initFromDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"peerPublicKey"];
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
  data = peerPublicKey;
  if (!peerPublicKey)
  {
    data = [MEMORY[0x1E695DEF0] data];
  }

  v12[0] = data;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v6 = [v5 mutableCopy];

  if (!peerPublicKey)
  {
  }

  v10.receiver = self;
  v10.super_class = CCFetchMergeableDeltasResponse;
  dictionaryRepresentation = [(CCPeerToPeerMessage *)&v10 dictionaryRepresentation];
  [v6 addEntriesFromDictionary:dictionaryRepresentation];

  v8 = *MEMORY[0x1E69E9840];

  return v6;
}

@end