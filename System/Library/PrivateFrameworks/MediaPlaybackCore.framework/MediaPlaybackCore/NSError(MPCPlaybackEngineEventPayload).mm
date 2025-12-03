@interface NSError(MPCPlaybackEngineEventPayload)
+ (id)payloadValueFromJSONValue:()MPCPlaybackEngineEventPayload;
- (id)mpc_jsonValue;
- (id)mpc_userInfoJSONValue;
@end

@implementation NSError(MPCPlaybackEngineEventPayload)

- (id)mpc_userInfoJSONValue
{
  userInfo = [self userInfo];
  v2 = [userInfo msv_compactMapValues:&__block_literal_global_4788];

  return v2;
}

- (id)mpc_jsonValue
{
  v9[3] = *MEMORY[0x1E69E9840];
  v8[0] = @"domain";
  domain = [self domain];
  v9[0] = domain;
  v8[1] = @"code";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(self, "code")}];
  v9[1] = v3;
  v8[2] = @"userInfo";
  mpc_userInfoJSONValue = [self mpc_userInfoJSONValue];
  null = mpc_userInfoJSONValue;
  if (!mpc_userInfoJSONValue)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v9[2] = null;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];
  if (!mpc_userInfoJSONValue)
  {
  }

  return v6;
}

+ (id)payloadValueFromJSONValue:()MPCPlaybackEngineEventPayload
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [v4 objectForKeyedSubscript:@"domain"];
    v6 = [v4 objectForKeyedSubscript:@"code"];
    integerValue = [v6 integerValue];
    v8 = MEMORY[0x1E696ABC0];
    v9 = [v4 objectForKeyedSubscript:@"userInfo"];
    v10 = [v8 mpc_userInfoFromJSONValue:v9];
    v11 = [self errorWithDomain:v5 code:integerValue userInfo:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end