@interface CCSetDiscoveryRequest
- (id)dictionaryRepresentation;
- (id)initFromDictionary:(id)a3;
@end

@implementation CCSetDiscoveryRequest

- (id)initFromDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CCSetDiscoveryRequest;
  v5 = [(CCPeerToPeerMessage *)&v14 initFromDictionary:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"setIdentifiersToDiscover"];
    v7 = v5[6];
    v5[6] = v6;

    v8 = [v4 objectForKeyedSubscript:@"setDiscoveryRequestOptions"];
    *(v5 + 20) = v8;

    v9 = [v4 objectForKeyedSubscript:@"startAfterSet"];
    v10 = v5[7];
    v5[7] = v9;

    v11 = [v4 objectForKeyedSubscript:@"sizeThreshold"];
    v12 = v5[8];
    v5[8] = v11;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v14[1] = *MEMORY[0x1E69E9840];
  setUUIDsToDiscover = self->_setUUIDsToDiscover;
  v13 = @"setIdentifiersToDiscover";
  v14[0] = setUUIDsToDiscover;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v5 = [v4 mutableCopy];

  if (self->_requestOptions)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:?];
    [v5 setObject:v6 forKey:@"setDiscoveryRequestOptions"];
  }

  startAfterSet = self->_startAfterSet;
  if (startAfterSet)
  {
    [v5 setObject:startAfterSet forKey:@"startAfterSet"];
  }

  sizeThreshold = self->_sizeThreshold;
  if (sizeThreshold)
  {
    [v5 setObject:sizeThreshold forKey:@"sizeThreshold"];
  }

  v12.receiver = self;
  v12.super_class = CCSetDiscoveryRequest;
  v9 = [(CCPeerToPeerMessage *)&v12 dictionaryRepresentation];
  [v5 addEntriesFromDictionary:v9];

  v10 = *MEMORY[0x1E69E9840];

  return v5;
}

@end