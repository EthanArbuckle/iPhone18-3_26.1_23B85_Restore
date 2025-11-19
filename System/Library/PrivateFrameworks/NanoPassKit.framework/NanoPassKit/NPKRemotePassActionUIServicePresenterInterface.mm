@interface NPKRemotePassActionUIServicePresenterInterface
+ (id)interface;
@end

@implementation NPKRemotePassActionUIServicePresenterInterface

+ (id)interface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286D44D48];
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_self();
  v5 = [v3 setWithObject:v4];
  [v2 setClasses:v5 forSelector:sel_deactivateWithError_ argumentIndex:0 ofReply:0];

  return v2;
}

@end