@interface ICMusicSubscriptionStatus(MPCPlaybackEngineEventPayload)
+ (id)payloadValueFromJSONValue:()MPCPlaybackEngineEventPayload;
@end

@implementation ICMusicSubscriptionStatus(MPCPlaybackEngineEventPayload)

+ (id)payloadValueFromJSONValue:()MPCPlaybackEngineEventPayload
{
  v4 = a3;
  v5 = [[a1 alloc] initWithResponseDictionary:v4];

  return v5;
}

@end