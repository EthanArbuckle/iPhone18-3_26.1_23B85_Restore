@interface ICLiveLinkIdentity(MPCPlaybackEngineEventPayload)
+ (id)payloadValueFromJSONValue:()MPCPlaybackEngineEventPayload;
- (id)mpc_jsonValue;
@end

@implementation ICLiveLinkIdentity(MPCPlaybackEngineEventPayload)

- (id)mpc_jsonValue
{
  v2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:5];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "serverID")}];
  [v2 setObject:v3 forKeyedSubscript:@"serverID"];

  v4 = [a1 identifier];
  v5 = [v4 UUIDString];
  [v2 setObject:v5 forKeyedSubscript:@"identifier"];

  v6 = [a1 externalIdentifier];
  [v2 setObject:v6 forKeyedSubscript:@"externalID"];

  v7 = [a1 nameComponents];
  [v2 setObject:v7 forKeyedSubscript:@"nameComponents"];

  v8 = [a1 imageURL];
  [v2 setObject:v8 forKeyedSubscript:@"imageURL"];

  v9 = [v2 copy];

  return v9;
}

+ (id)payloadValueFromJSONValue:()MPCPlaybackEngineEventPayload
{
  v4 = a3;
  v5 = [a1 alloc];
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