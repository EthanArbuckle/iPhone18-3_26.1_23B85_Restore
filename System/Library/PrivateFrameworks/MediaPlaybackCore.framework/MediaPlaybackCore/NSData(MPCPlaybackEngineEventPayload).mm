@interface NSData(MPCPlaybackEngineEventPayload)
+ (id)payloadValueFromJSONValue:()MPCPlaybackEngineEventPayload;
@end

@implementation NSData(MPCPlaybackEngineEventPayload)

+ (id)payloadValueFromJSONValue:()MPCPlaybackEngineEventPayload
{
  v4 = a3;
  v5 = [[a1 alloc] initWithBase64EncodedString:v4 options:0];

  return v5;
}

@end