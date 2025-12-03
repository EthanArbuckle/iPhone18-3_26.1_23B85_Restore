@interface NACRoutingController
+ (id)localRoutingControllerWithAudioCategory:(id)category;
+ (id)proxyRoutingControllerWithAudioCategory:(id)category;
@end

@implementation NACRoutingController

+ (id)localRoutingControllerWithAudioCategory:(id)category
{
  categoryCopy = category;
  v4 = [[NACRoutingControllerLocal alloc] initWithAudioCategory:categoryCopy];

  return v4;
}

+ (id)proxyRoutingControllerWithAudioCategory:(id)category
{
  categoryCopy = category;
  v4 = [[NACRoutingControllerProxy alloc] initWithAudioCategory:categoryCopy];

  return v4;
}

@end