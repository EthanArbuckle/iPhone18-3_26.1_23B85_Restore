@interface MSVFrameworkDescription(MPCPlaybackEngineEventPayload)
+ (id)payloadValueFromJSONValue:()MPCPlaybackEngineEventPayload;
- (id)mpc_jsonValue;
@end

@implementation MSVFrameworkDescription(MPCPlaybackEngineEventPayload)

- (id)mpc_jsonValue
{
  v13[5] = *MEMORY[0x1E69E9840];
  v12[0] = @"name";
  name = [self name];
  v13[0] = name;
  v12[1] = @"uuid";
  uuid = [self uuid];
  uUIDString = [uuid UUIDString];
  v13[1] = uUIDString;
  v12[2] = @"version";
  version = [self version];
  v6 = version;
  v7 = &stru_1F454A698;
  if (version)
  {
    v7 = version;
  }

  v13[2] = v7;
  v12[3] = @"debug";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "isDebug")}];
  v13[3] = v8;
  v12[4] = @"root";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "isRoot")}];
  v13[4] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:5];

  return v10;
}

+ (id)payloadValueFromJSONValue:()MPCPlaybackEngineEventPayload
{
  v4 = a3;
  v5 = [self alloc];
  v6 = [v4 objectForKeyedSubscript:@"name"];
  v7 = objc_alloc(MEMORY[0x1E696AFB0]);
  v8 = [v4 objectForKeyedSubscript:@"uuid"];
  v9 = [v7 initWithUUIDString:v8];
  v10 = [v4 objectForKeyedSubscript:@"version"];
  v11 = [v4 objectForKeyedSubscript:@"root"];
  bOOLValue = [v11 BOOLValue];
  v13 = [v4 objectForKeyedSubscript:@"debug"];

  v14 = [v5 initWithName:v6 uuid:v9 version:v10 root:bOOLValue debug:{objc_msgSend(v13, "BOOLValue")}];

  return v14;
}

@end