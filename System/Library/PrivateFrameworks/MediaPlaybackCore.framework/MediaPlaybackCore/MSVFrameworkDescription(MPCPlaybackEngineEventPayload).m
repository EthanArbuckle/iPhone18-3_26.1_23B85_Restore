@interface MSVFrameworkDescription(MPCPlaybackEngineEventPayload)
+ (id)payloadValueFromJSONValue:()MPCPlaybackEngineEventPayload;
- (id)mpc_jsonValue;
@end

@implementation MSVFrameworkDescription(MPCPlaybackEngineEventPayload)

- (id)mpc_jsonValue
{
  v13[5] = *MEMORY[0x1E69E9840];
  v12[0] = @"name";
  v2 = [a1 name];
  v13[0] = v2;
  v12[1] = @"uuid";
  v3 = [a1 uuid];
  v4 = [v3 UUIDString];
  v13[1] = v4;
  v12[2] = @"version";
  v5 = [a1 version];
  v6 = v5;
  v7 = &stru_1F454A698;
  if (v5)
  {
    v7 = v5;
  }

  v13[2] = v7;
  v12[3] = @"debug";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a1, "isDebug")}];
  v13[3] = v8;
  v12[4] = @"root";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a1, "isRoot")}];
  v13[4] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:5];

  return v10;
}

+ (id)payloadValueFromJSONValue:()MPCPlaybackEngineEventPayload
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [v4 objectForKeyedSubscript:@"name"];
  v7 = objc_alloc(MEMORY[0x1E696AFB0]);
  v8 = [v4 objectForKeyedSubscript:@"uuid"];
  v9 = [v7 initWithUUIDString:v8];
  v10 = [v4 objectForKeyedSubscript:@"version"];
  v11 = [v4 objectForKeyedSubscript:@"root"];
  v12 = [v11 BOOLValue];
  v13 = [v4 objectForKeyedSubscript:@"debug"];

  v14 = [v5 initWithName:v6 uuid:v9 version:v10 root:v12 debug:{objc_msgSend(v13, "BOOLValue")}];

  return v14;
}

@end