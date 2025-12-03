@interface GKLocalPlayer(GKFaceTimeSupport)
+ (id)accountName;
@end

@implementation GKLocalPlayer(GKFaceTimeSupport)

+ (id)accountName
{
  daemonProxy = [MEMORY[0x277D0C010] daemonProxy];
  accountName = [daemonProxy accountName];

  return accountName;
}

@end