@interface ICURLPerformanceMetrics(MPCPlaybackEngineEventPayload)
+ (id)payloadValueFromJSONValue:()MPCPlaybackEngineEventPayload;
@end

@implementation ICURLPerformanceMetrics(MPCPlaybackEngineEventPayload)

+ (id)payloadValueFromJSONValue:()MPCPlaybackEngineEventPayload
{
  v3 = MEMORY[0x1E69E4660];
  v4 = a3;
  v5 = [[v3 alloc] initWithDictionaryRepresentation:v4];

  return v5;
}

@end