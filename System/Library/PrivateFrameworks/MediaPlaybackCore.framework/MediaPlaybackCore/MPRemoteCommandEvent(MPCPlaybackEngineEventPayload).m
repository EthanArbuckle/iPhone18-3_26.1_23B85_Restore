@interface MPRemoteCommandEvent(MPCPlaybackEngineEventPayload)
+ (id)payloadValueFromJSONValue:()MPCPlaybackEngineEventPayload;
- (id)mpc_jsonValue;
@end

@implementation MPRemoteCommandEvent(MPCPlaybackEngineEventPayload)

- (id)mpc_jsonValue
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = @"mrCommand";
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(a1, "mediaRemoteCommandType")}];
  v8[1] = @"options";
  v9[0] = v2;
  v3 = [a1 mediaRemoteOptions];
  v4 = v3;
  if (!v3)
  {
    v3 = MEMORY[0x1E695E0F8];
  }

  v5 = _coerceJSONValueFromValue(v3, 0);
  v9[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

+ (id)payloadValueFromJSONValue:()MPCPlaybackEngineEventPayload
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 objectForKeyedSubscript:@"mrCommand"];
    v6 = [v5 integerValue];

    v7 = [objc_alloc(MEMORY[0x1E69708D0]) initWithMediaRemoteCommandType:v6];
    v8 = [v4 objectForKeyedSubscript:@"options"];

    v9 = [v8 mutableCopy];
    v10 = *MEMORY[0x1E69B1268];
    v11 = [v9 objectForKeyedSubscript:*MEMORY[0x1E69B1268]];
    if (_NSIsNSString())
    {
      v12 = [MEMORY[0x1E695DEF0] payloadValueFromJSONValue:v11];
      [v9 setObject:v12 forKeyedSubscript:v10];
    }

    v13 = _coercePayloadFromJSONValue(v9, &stru_1F454A698);
    v14 = [a1 eventWithCommand:v7 mediaRemoteType:v6 options:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end