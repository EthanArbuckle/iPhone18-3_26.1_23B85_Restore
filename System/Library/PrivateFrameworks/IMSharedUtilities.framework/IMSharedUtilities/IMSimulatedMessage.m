@interface IMSimulatedMessage
- (IMSimulatedMessage)initWithCoder:(id)a3;
- (NSString)guid;
- (id)_copyDictionaryRepresentation;
- (id)_initWithDictionaryRepresentation:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithIMRemoteObjectSerializedDictionary:(id)a3;
@end

@implementation IMSimulatedMessage

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IMSimulatedMessage *)self item];
  [v4 encodeObject:v5 forKey:@"item"];

  v6 = [(IMSimulatedMessage *)self groupID];
  [v4 encodeObject:v6 forKey:@"groupID"];

  v7 = [(IMSimulatedMessage *)self chatGUID];
  [v4 encodeObject:v7 forKey:@"chatGUID"];

  v8 = [(IMSimulatedMessage *)self handles];
  [v4 encodeObject:v8 forKey:@"handles"];

  v9 = [(IMSimulatedMessage *)self lastAddressedHandle];
  [v4 encodeObject:v9 forKey:@"lastAddressedHandle"];
}

- (IMSimulatedMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"item"];
  [(IMSimulatedMessage *)self setItem:v5];

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"groupID"];
  [(IMSimulatedMessage *)self setGroupID:v6];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"chatGUID"];
  [(IMSimulatedMessage *)self setChatGUID:v7];

  v8 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"handles"];
  [(IMSimulatedMessage *)self setHandles:v8];

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastAddressedHandle"];

  [(IMSimulatedMessage *)self setLastAddressedHandle:v9];
  return self;
}

- (void)encodeWithIMRemoteObjectSerializedDictionary:(id)a3
{
  v4 = a3;
  v5 = [(IMSimulatedMessage *)self _copyDictionaryRepresentation];
  [v4 setValuesForKeysWithDictionary:v5];
}

- (id)_initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = IMSimulatedMessage;
  v5 = [(IMSimulatedMessage *)&v14 init];
  if (v5)
  {
    v6 = objc_alloc([IMItem classForMessageItemDictionary:v4]);
    v7 = [v4 objectForKeyedSubscript:@"item"];
    v8 = [v6 initWithDictionary:v7];
    [(IMSimulatedMessage *)v5 setItem:v8];

    v9 = [v4 objectForKeyedSubscript:@"groupID"];
    [(IMSimulatedMessage *)v5 setGroupID:v9];

    v10 = [v4 objectForKeyedSubscript:@"chatGUID"];
    [(IMSimulatedMessage *)v5 setChatGUID:v10];

    v11 = [v4 objectForKeyedSubscript:@"handles"];
    [(IMSimulatedMessage *)v5 setHandles:v11];

    v12 = [v4 objectForKeyedSubscript:@"lastAddressedHandle"];
    [(IMSimulatedMessage *)v5 setLastAddressedHandle:v12];
  }

  return v5;
}

- (id)_copyDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(IMSimulatedMessage *)self item];
  [v3 setObject:v4 forKeyedSubscript:@"item"];

  v5 = [(IMSimulatedMessage *)self groupID];

  if (v5)
  {
    v6 = [(IMSimulatedMessage *)self groupID];
    [v3 setObject:v6 forKeyedSubscript:@"groupID"];
  }

  v7 = [(IMSimulatedMessage *)self chatGUID];

  if (v7)
  {
    v8 = [(IMSimulatedMessage *)self chatGUID];
    [v3 setObject:v8 forKeyedSubscript:@"chatGUID"];
  }

  v9 = [(IMSimulatedMessage *)self handles];

  if (v9)
  {
    v10 = [(IMSimulatedMessage *)self handles];
    [v3 setObject:v10 forKeyedSubscript:@"handles"];
  }

  v11 = [(IMSimulatedMessage *)self lastAddressedHandle];

  if (v11)
  {
    v12 = [(IMSimulatedMessage *)self lastAddressedHandle];
    [v3 setObject:v12 forKeyedSubscript:@"lastAddressedHandle"];
  }

  v13 = [v3 copy];

  return v13;
}

- (NSString)guid
{
  v2 = [(IMSimulatedMessage *)self item];
  v3 = [v2 guid];

  return v3;
}

@end