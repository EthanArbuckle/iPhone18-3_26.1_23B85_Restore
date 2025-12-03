@interface MPRemoteCommandHandlerDialogAction(MPCPlaybackEngineEventPayload)
+ (id)payloadValueFromJSONValue:()MPCPlaybackEngineEventPayload;
- (id)mpc_jsonValue;
@end

@implementation MPRemoteCommandHandlerDialogAction(MPCPlaybackEngineEventPayload)

- (id)mpc_jsonValue
{
  v2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
  title = [self title];
  [v2 setObject:title forKeyedSubscript:@"title"];

  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(self, "type")}];
  [v2 setObject:v4 forKeyedSubscript:@"type"];

  event = [self event];
  mpc_jsonValue = [event mpc_jsonValue];
  [v2 setObject:mpc_jsonValue forKeyedSubscript:@"event"];

  return v2;
}

+ (id)payloadValueFromJSONValue:()MPCPlaybackEngineEventPayload
{
  v4 = MEMORY[0x1E69708E0];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"event"];
  v7 = [v4 payloadValueFromJSONValue:v6];

  v8 = [v5 objectForKeyedSubscript:@"title"];
  v9 = [v5 objectForKeyedSubscript:@"type"];

  v10 = [self actionWithTitle:v8 type:objc_msgSend(v9 commandEvent:{"integerValue"), v7}];

  return v10;
}

@end