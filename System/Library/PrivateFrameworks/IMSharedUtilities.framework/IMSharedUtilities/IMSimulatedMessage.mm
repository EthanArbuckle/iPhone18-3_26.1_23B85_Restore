@interface IMSimulatedMessage
- (IMSimulatedMessage)initWithCoder:(id)coder;
- (NSString)guid;
- (id)_copyDictionaryRepresentation;
- (id)_initWithDictionaryRepresentation:(id)representation;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithIMRemoteObjectSerializedDictionary:(id)dictionary;
@end

@implementation IMSimulatedMessage

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  item = [(IMSimulatedMessage *)self item];
  [coderCopy encodeObject:item forKey:@"item"];

  groupID = [(IMSimulatedMessage *)self groupID];
  [coderCopy encodeObject:groupID forKey:@"groupID"];

  chatGUID = [(IMSimulatedMessage *)self chatGUID];
  [coderCopy encodeObject:chatGUID forKey:@"chatGUID"];

  handles = [(IMSimulatedMessage *)self handles];
  [coderCopy encodeObject:handles forKey:@"handles"];

  lastAddressedHandle = [(IMSimulatedMessage *)self lastAddressedHandle];
  [coderCopy encodeObject:lastAddressedHandle forKey:@"lastAddressedHandle"];
}

- (IMSimulatedMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"item"];
  [(IMSimulatedMessage *)self setItem:v5];

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupID"];
  [(IMSimulatedMessage *)self setGroupID:v6];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"chatGUID"];
  [(IMSimulatedMessage *)self setChatGUID:v7];

  v8 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"handles"];
  [(IMSimulatedMessage *)self setHandles:v8];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastAddressedHandle"];

  [(IMSimulatedMessage *)self setLastAddressedHandle:v9];
  return self;
}

- (void)encodeWithIMRemoteObjectSerializedDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  _copyDictionaryRepresentation = [(IMSimulatedMessage *)self _copyDictionaryRepresentation];
  [dictionaryCopy setValuesForKeysWithDictionary:_copyDictionaryRepresentation];
}

- (id)_initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v14.receiver = self;
  v14.super_class = IMSimulatedMessage;
  v5 = [(IMSimulatedMessage *)&v14 init];
  if (v5)
  {
    v6 = objc_alloc([IMItem classForMessageItemDictionary:representationCopy]);
    v7 = [representationCopy objectForKeyedSubscript:@"item"];
    v8 = [v6 initWithDictionary:v7];
    [(IMSimulatedMessage *)v5 setItem:v8];

    v9 = [representationCopy objectForKeyedSubscript:@"groupID"];
    [(IMSimulatedMessage *)v5 setGroupID:v9];

    v10 = [representationCopy objectForKeyedSubscript:@"chatGUID"];
    [(IMSimulatedMessage *)v5 setChatGUID:v10];

    v11 = [representationCopy objectForKeyedSubscript:@"handles"];
    [(IMSimulatedMessage *)v5 setHandles:v11];

    v12 = [representationCopy objectForKeyedSubscript:@"lastAddressedHandle"];
    [(IMSimulatedMessage *)v5 setLastAddressedHandle:v12];
  }

  return v5;
}

- (id)_copyDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  item = [(IMSimulatedMessage *)self item];
  [v3 setObject:item forKeyedSubscript:@"item"];

  groupID = [(IMSimulatedMessage *)self groupID];

  if (groupID)
  {
    groupID2 = [(IMSimulatedMessage *)self groupID];
    [v3 setObject:groupID2 forKeyedSubscript:@"groupID"];
  }

  chatGUID = [(IMSimulatedMessage *)self chatGUID];

  if (chatGUID)
  {
    chatGUID2 = [(IMSimulatedMessage *)self chatGUID];
    [v3 setObject:chatGUID2 forKeyedSubscript:@"chatGUID"];
  }

  handles = [(IMSimulatedMessage *)self handles];

  if (handles)
  {
    handles2 = [(IMSimulatedMessage *)self handles];
    [v3 setObject:handles2 forKeyedSubscript:@"handles"];
  }

  lastAddressedHandle = [(IMSimulatedMessage *)self lastAddressedHandle];

  if (lastAddressedHandle)
  {
    lastAddressedHandle2 = [(IMSimulatedMessage *)self lastAddressedHandle];
    [v3 setObject:lastAddressedHandle2 forKeyedSubscript:@"lastAddressedHandle"];
  }

  v13 = [v3 copy];

  return v13;
}

- (NSString)guid
{
  item = [(IMSimulatedMessage *)self item];
  guid = [item guid];

  return guid;
}

@end