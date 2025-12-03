@interface MPRemoteCommandHandlerDialog(MPCPlaybackEngineEventPayload)
+ (id)payloadValueFromJSONValue:()MPCPlaybackEngineEventPayload;
- (id)mpc_jsonValue;
@end

@implementation MPRemoteCommandHandlerDialog(MPCPlaybackEngineEventPayload)

- (id)mpc_jsonValue
{
  v2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
  localizedTitle = [self localizedTitle];
  [v2 setObject:localizedTitle forKeyedSubscript:@"title"];

  localizedMessage = [self localizedMessage];
  [v2 setObject:localizedMessage forKeyedSubscript:@"message"];

  actions = [self actions];
  v6 = [actions msv_map:&__block_literal_global_282];
  [v2 setObject:v6 forKeyedSubscript:@"actions"];

  return v2;
}

+ (id)payloadValueFromJSONValue:()MPCPlaybackEngineEventPayload
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"title"];
  v6 = [v4 objectForKeyedSubscript:@"message"];
  v7 = [self dialogWithTitle:v5 message:v6];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v4 objectForKeyedSubscript:{@"actions", 0}];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [MEMORY[0x1E69708F0] payloadValueFromJSONValue:*(*(&v15 + 1) + 8 * i)];
        [v7 addAction:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v7;
}

@end