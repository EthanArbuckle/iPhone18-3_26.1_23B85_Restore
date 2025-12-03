@interface MPRemoteCommandStatus(MPCPlaybackEngineEventPayload)
+ (id)payloadValueFromJSONValue:()MPCPlaybackEngineEventPayload;
- (id)mpc_jsonValue;
@end

@implementation MPRemoteCommandStatus(MPCPlaybackEngineEventPayload)

- (id)mpc_jsonValue
{
  v2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(self, "type")}];
  [v2 setObject:v3 forKeyedSubscript:@"type"];

  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(self, "statusCode")}];
  [v2 setObject:v4 forKeyedSubscript:@"code"];

  type = [self type];
  if (type == 999)
  {
    customData = [self customData];
    mpc_jsonValue = [customData mpc_jsonValue];
    [v2 setObject:mpc_jsonValue forKeyedSubscript:@"data"];

    customDataType = [self customDataType];
    [v2 setObject:customDataType forKeyedSubscript:@"dataType"];
  }

  else
  {
    if (type == 3)
    {
      customDataType = [self error];
      mpc_jsonValue2 = [customDataType mpc_jsonValue];
      v10 = @"error";
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_9;
      }

      error = [self error];
      mpc_jsonValue3 = [error mpc_jsonValue];
      [v2 setObject:mpc_jsonValue3 forKeyedSubscript:@"error"];

      customDataType = [self dialog];
      mpc_jsonValue2 = [customDataType mpc_jsonValue];
      v10 = @"dialog";
    }

    [v2 setObject:mpc_jsonValue2 forKeyedSubscript:v10];
  }

LABEL_9:

  return v2;
}

+ (id)payloadValueFromJSONValue:()MPCPlaybackEngineEventPayload
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"code"];
  integerValue = [v5 integerValue];

  v7 = [v4 objectForKeyedSubscript:@"type"];
  integerValue2 = [v7 integerValue];

  v9 = 0;
  if (integerValue2 <= 2)
  {
    if (integerValue2 == 1)
    {
      v9 = [self statusWithCode:integerValue];
      goto LABEL_11;
    }

    if (integerValue2 != 2)
    {
      goto LABEL_11;
    }

    v10 = MEMORY[0x1E696ABC0];
    v11 = [v4 objectForKeyedSubscript:@"error"];
    v12 = [v10 payloadValueFromJSONValue:v11];

    v13 = MEMORY[0x1E69708E8];
    v14 = [v4 objectForKeyedSubscript:@"dialog"];
    v15 = [v13 payloadValueFromJSONValue:v14];

    v9 = [self statusWithCode:integerValue dialog:v15 error:v12];

    goto LABEL_10;
  }

  if (integerValue2 == 3)
  {
    v20 = MEMORY[0x1E696ABC0];
    v21 = [v4 objectForKeyedSubscript:@"error"];
    v12 = [v20 payloadValueFromJSONValue:v21];

    v9 = [self statusWithCode:integerValue error:v12];
LABEL_10:

    goto LABEL_11;
  }

  if (integerValue2 == 999)
  {
    v16 = MEMORY[0x1E695DEF0];
    v17 = [v4 objectForKeyedSubscript:@"data"];
    v18 = [v16 payloadValueFromJSONValue:v17];
    v19 = [v4 objectForKeyedSubscript:@"dataType"];
    v9 = [self statusWithCode:integerValue customData:v18 type:v19];
  }

LABEL_11:

  return v9;
}

@end