@interface MRPlaybackQueueParticipantRequest
+ (id)defaultRequest;
@end

@implementation MRPlaybackQueueParticipantRequest

+ (id)defaultRequest
{
  v2 = objc_alloc_init(MRPlaybackQueueParticipantRequest);

  return v2;
}

@end