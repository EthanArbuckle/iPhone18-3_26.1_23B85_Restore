@interface NACRoutingController
+ (id)localRoutingControllerWithAudioCategory:(id)a3;
+ (id)proxyRoutingControllerWithAudioCategory:(id)a3;
@end

@implementation NACRoutingController

+ (id)localRoutingControllerWithAudioCategory:(id)a3
{
  v3 = a3;
  v4 = [[NACRoutingControllerLocal alloc] initWithAudioCategory:v3];

  return v4;
}

+ (id)proxyRoutingControllerWithAudioCategory:(id)a3
{
  v3 = a3;
  v4 = [[NACRoutingControllerProxy alloc] initWithAudioCategory:v3];

  return v4;
}

@end