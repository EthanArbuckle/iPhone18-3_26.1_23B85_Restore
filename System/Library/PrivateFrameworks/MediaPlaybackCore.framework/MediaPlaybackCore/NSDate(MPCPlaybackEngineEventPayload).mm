@interface NSDate(MPCPlaybackEngineEventPayload)
+ (uint64_t)payloadValueFromJSONValue:()MPCPlaybackEngineEventPayload;
- (uint64_t)mpc_jsonValue;
@end

@implementation NSDate(MPCPlaybackEngineEventPayload)

- (uint64_t)mpc_jsonValue
{
  v1 = MEMORY[0x1E696AD98];
  [a1 timeIntervalSinceReferenceDate];

  return [v1 numberWithDouble:?];
}

+ (uint64_t)payloadValueFromJSONValue:()MPCPlaybackEngineEventPayload
{
  v3 = MEMORY[0x1E695DF00];
  [a3 doubleValue];

  return [v3 dateWithTimeIntervalSinceReferenceDate:?];
}

@end