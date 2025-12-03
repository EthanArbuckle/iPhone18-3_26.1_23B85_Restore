@interface NSPersonNameComponents(MPCPlaybackEngineEventPayload)
+ (id)payloadValueFromJSONValue:()MPCPlaybackEngineEventPayload;
- (id)mpc_jsonValue;
@end

@implementation NSPersonNameComponents(MPCPlaybackEngineEventPayload)

- (id)mpc_jsonValue
{
  v2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:5];
  namePrefix = [self namePrefix];
  [v2 setObject:namePrefix forKeyedSubscript:@"prefix"];

  givenName = [self givenName];
  [v2 setObject:givenName forKeyedSubscript:@"given"];

  middleName = [self middleName];
  [v2 setObject:middleName forKeyedSubscript:@"middle"];

  familyName = [self familyName];
  [v2 setObject:familyName forKeyedSubscript:@"family"];

  nameSuffix = [self nameSuffix];
  [v2 setObject:nameSuffix forKeyedSubscript:@"suffix"];

  nickname = [self nickname];
  [v2 setObject:nickname forKeyedSubscript:@"nick"];

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