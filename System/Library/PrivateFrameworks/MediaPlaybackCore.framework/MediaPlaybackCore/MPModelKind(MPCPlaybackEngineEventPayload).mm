@interface MPModelKind(MPCPlaybackEngineEventPayload)
+ (id)payloadValueFromJSONValue:()MPCPlaybackEngineEventPayload;
- (id)mpc_jsonValue;
@end

@implementation MPModelKind(MPCPlaybackEngineEventPayload)

- (id)mpc_jsonValue
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"modelClass";
  v1 = NSStringFromClass([a1 modelClass]);
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

+ (id)payloadValueFromJSONValue:()MPCPlaybackEngineEventPayload
{
  v4 = [a3 objectForKeyedSubscript:@"modelClass"];
  v5 = NSClassFromString(v4);

  if (v5)
  {
    v6 = [a1 kindWithModelClass:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end