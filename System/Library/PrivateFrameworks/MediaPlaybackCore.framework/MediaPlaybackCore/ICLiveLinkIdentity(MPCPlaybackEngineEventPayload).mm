@interface ICLiveLinkIdentity(MPCPlaybackEngineEventPayload)
+ (id)payloadValueFromJSONValue:()MPCPlaybackEngineEventPayload;
- (id)mpc_jsonValue;
@end

@implementation ICLiveLinkIdentity(MPCPlaybackEngineEventPayload)

- (id)mpc_jsonValue
{
  v2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:5];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(self, "serverID")}];
  [v2 setObject:v3 forKeyedSubscript:@"serverID"];

  identifier = [self identifier];
  uUIDString = [identifier UUIDString];
  [v2 setObject:uUIDString forKeyedSubscript:@"identifier"];

  externalIdentifier = [self externalIdentifier];
  [v2 setObject:externalIdentifier forKeyedSubscript:@"externalID"];

  nameComponents = [self nameComponents];
  [v2 setObject:nameComponents forKeyedSubscript:@"nameComponents"];

  imageURL = [self imageURL];
  [v2 setObject:imageURL forKeyedSubscript:@"imageURL"];

  v9 = [v2 copy];

  return v9;
}

+ (id)payloadValueFromJSONValue:()MPCPlaybackEngineEventPayload
{
  v4 = a3;
  v5 = [self alloc];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__ICLiveLinkIdentity_MPCPlaybackEngineEventPayload__payloadValueFromJSONValue___block_invoke;
  v9[3] = &unk_1E8232430;
  v10 = v4;
  v6 = v4;
  v7 = [v5 _initWithBlock:v9];

  return v7;
}

@end