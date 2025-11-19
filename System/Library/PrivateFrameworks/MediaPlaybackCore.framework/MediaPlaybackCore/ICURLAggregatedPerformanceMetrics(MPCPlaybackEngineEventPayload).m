@interface ICURLAggregatedPerformanceMetrics(MPCPlaybackEngineEventPayload)
+ (id)payloadValueFromJSONValue:()MPCPlaybackEngineEventPayload;
- (id)mpc_jsonValue;
@end

@implementation ICURLAggregatedPerformanceMetrics(MPCPlaybackEngineEventPayload)

- (id)mpc_jsonValue
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"urlMetrics";
  v1 = [a1 urlMetrics];
  v2 = [v1 msv_map:&__block_literal_global_340];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

+ (id)payloadValueFromJSONValue:()MPCPlaybackEngineEventPayload
{
  v3 = [a3 objectForKeyedSubscript:@"urlMetrics"];
  v4 = objc_alloc(MEMORY[0x1E69E4648]);
  v5 = [v3 msv_map:&__block_literal_global_336];
  v6 = [v4 initWithURLMetrics:v5];

  return v6;
}

@end