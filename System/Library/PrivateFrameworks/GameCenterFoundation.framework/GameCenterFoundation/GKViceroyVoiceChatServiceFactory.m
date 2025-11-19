@interface GKViceroyVoiceChatServiceFactory
+ (id)makeService;
@end

@implementation GKViceroyVoiceChatServiceFactory

+ (id)makeService
{
  v2 = objc_alloc_init(DefaultGKVoiceChatService);

  return v2;
}

@end