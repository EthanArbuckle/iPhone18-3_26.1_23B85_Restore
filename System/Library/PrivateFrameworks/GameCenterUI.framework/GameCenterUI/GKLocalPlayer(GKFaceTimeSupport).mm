@interface GKLocalPlayer(GKFaceTimeSupport)
+ (id)accountName;
@end

@implementation GKLocalPlayer(GKFaceTimeSupport)

+ (id)accountName
{
  v0 = [MEMORY[0x277D0C010] daemonProxy];
  v1 = [v0 accountName];

  return v1;
}

@end