@interface CCSetDiscoveryRequest
- (id)dictionaryRepresentation;
- (id)initFromDictionary:(id)dictionary;
@end

@implementation CCSetDiscoveryRequest

- (id)initFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = CCSetDiscoveryRequest;
  v5 = [(CCPeerToPeerMessage *)&v14 initFromDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"setIdentifiersToDiscover"];
    v7 = v5[6];
    v5[6] = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"setDiscoveryRequestOptions"];
    *(v5 + 20) = v8;

    v9 = [dictionaryCopy objectForKeyedSubscript:@"startAfterSet"];
    v10 = v5[7];
    v5[7] = v9;

    v11 = [dictionaryCopy objectForKeyedSubscript:@"sizeThreshold"];
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
  dictionaryRepresentation = [(CCPeerToPeerMessage *)&v12 dictionaryRepresentation];
  [v5 addEntriesFromDictionary:dictionaryRepresentation];

  v10 = *MEMORY[0x1E69E9840];

  return v5;
}

@end