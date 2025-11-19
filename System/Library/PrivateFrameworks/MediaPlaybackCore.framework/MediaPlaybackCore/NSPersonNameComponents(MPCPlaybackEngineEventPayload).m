@interface NSPersonNameComponents(MPCPlaybackEngineEventPayload)
+ (id)payloadValueFromJSONValue:()MPCPlaybackEngineEventPayload;
- (id)mpc_jsonValue;
@end

@implementation NSPersonNameComponents(MPCPlaybackEngineEventPayload)

- (id)mpc_jsonValue
{
  v2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:5];
  v3 = [a1 namePrefix];
  [v2 setObject:v3 forKeyedSubscript:@"prefix"];

  v4 = [a1 givenName];
  [v2 setObject:v4 forKeyedSubscript:@"given"];

  v5 = [a1 middleName];
  [v2 setObject:v5 forKeyedSubscript:@"middle"];

  v6 = [a1 familyName];
  [v2 setObject:v6 forKeyedSubscript:@"family"];

  v7 = [a1 nameSuffix];
  [v2 setObject:v7 forKeyedSubscript:@"suffix"];

  v8 = [a1 nickname];
  [v2 setObject:v8 forKeyedSubscript:@"nick"];

  v9 = [v2 copy];

  return v9;
}

+ (id)payloadValueFromJSONValue:()MPCPlaybackEngineEventPayload
{
  if (a3)
  {
    v3 = MEMORY[0x1E696ADF0];
    v4 = a3;
    v5 = objc_alloc_init(v3);
    v6 = [v4 objectForKeyedSubscript:@"prefix"];
    [v5 setNamePrefix:v6];

    v7 = [v4 objectForKeyedSubscript:@"given"];
    [v5 setGivenName:v7];

    v8 = [v4 objectForKeyedSubscript:@"middle"];
    [v5 setMiddleName:v8];

    v9 = [v4 objectForKeyedSubscript:@"family"];
    [v5 setFamilyName:v9];

    v10 = [v4 objectForKeyedSubscript:@"suffix"];
    [v5 setNameSuffix:v10];

    v11 = [v4 objectForKeyedSubscript:@"nick"];

    [v5 setNickname:v11];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end