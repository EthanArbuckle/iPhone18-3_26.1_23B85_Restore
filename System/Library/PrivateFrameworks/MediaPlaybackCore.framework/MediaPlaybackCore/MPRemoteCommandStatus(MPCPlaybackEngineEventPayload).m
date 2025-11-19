@interface MPRemoteCommandStatus(MPCPlaybackEngineEventPayload)
+ (id)payloadValueFromJSONValue:()MPCPlaybackEngineEventPayload;
- (id)mpc_jsonValue;
@end

@implementation MPRemoteCommandStatus(MPCPlaybackEngineEventPayload)

- (id)mpc_jsonValue
{
  v2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "type")}];
  [v2 setObject:v3 forKeyedSubscript:@"type"];

  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "statusCode")}];
  [v2 setObject:v4 forKeyedSubscript:@"code"];

  v5 = [a1 type];
  if (v5 == 999)
  {
    v11 = [a1 customData];
    v12 = [v11 mpc_jsonValue];
    [v2 setObject:v12 forKeyedSubscript:@"data"];

    v8 = [a1 customDataType];
    [v2 setObject:v8 forKeyedSubscript:@"dataType"];
  }

  else
  {
    if (v5 == 3)
    {
      v8 = [a1 error];
      v9 = [v8 mpc_jsonValue];
      v10 = @"error";
    }

    else
    {
      if (v5 != 2)
      {
        goto LABEL_9;
      }

      v6 = [a1 error];
      v7 = [v6 mpc_jsonValue];
      [v2 setObject:v7 forKeyedSubscript:@"error"];

      v8 = [a1 dialog];
      v9 = [v8 mpc_jsonValue];
      v10 = @"dialog";
    }

    [v2 setObject:v9 forKeyedSubscript:v10];
  }

LABEL_9:

  return v2;
}

+ (id)payloadValueFromJSONValue:()MPCPlaybackEngineEventPayload
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"code"];
  v6 = [v5 integerValue];

  v7 = [v4 objectForKeyedSubscript:@"type"];
  v8 = [v7 integerValue];

  v9 = 0;
  if (v8 <= 2)
  {
    if (v8 == 1)
    {
      v9 = [a1 statusWithCode:v6];
      goto LABEL_11;
    }

    if (v8 != 2)
    {
      goto LABEL_11;
    }

    v10 = MEMORY[0x1E696ABC0];
    v11 = [v4 objectForKeyedSubscript:@"error"];
    v12 = [v10 payloadValueFromJSONValue:v11];

    v13 = MEMORY[0x1E69708E8];
    v14 = [v4 objectForKeyedSubscript:@"dialog"];
    v15 = [v13 payloadValueFromJSONValue:v14];

    v9 = [a1 statusWithCode:v6 dialog:v15 error:v12];

    goto LABEL_10;
  }

  if (v8 == 3)
  {
    v20 = MEMORY[0x1E696ABC0];
    v21 = [v4 objectForKeyedSubscript:@"error"];
    v12 = [v20 payloadValueFromJSONValue:v21];

    v9 = [a1 statusWithCode:v6 error:v12];
LABEL_10:

    goto LABEL_11;
  }

  if (v8 == 999)
  {
    v16 = MEMORY[0x1E695DEF0];
    v17 = [v4 objectForKeyedSubscript:@"data"];
    v18 = [v16 payloadValueFromJSONValue:v17];
    v19 = [v4 objectForKeyedSubscript:@"dataType"];
    v9 = [a1 statusWithCode:v6 customData:v18 type:v19];
  }

LABEL_11:

  return v9;
}

@end