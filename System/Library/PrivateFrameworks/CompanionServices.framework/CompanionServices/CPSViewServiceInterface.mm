@interface CPSViewServiceInterface
+ (NSXPCInterface)presenterInterface;
@end

@implementation CPSViewServiceInterface

+ (NSXPCInterface)presenterInterface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2856FF800];
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_self();
  v5 = [v3 setWithObject:v4];
  [v2 setClasses:v5 forSelector:sel_deactivateWithError_ argumentIndex:0 ofReply:0];

  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_self();
  v8 = [v6 setWithObject:v7];
  [v2 setClasses:v8 forSelector:sel_webAuthenticationFinishedWithCallbackURL_ argumentIndex:0 ofReply:0];

  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_self();
  v11 = [v9 setWithObject:v10];
  [v2 setClasses:v11 forSelector:sel_webAuthenticationFailedWithError_ argumentIndex:0 ofReply:0];

  v12 = MEMORY[0x277CBEB98];
  getAMSDelegateAuthenticateResultClass();
  v13 = objc_opt_self();
  v14 = [v12 setWithObject:v13];
  [v2 setClasses:v14 forSelector:sel_storeAuthenticationFinishedWithResult_ argumentIndex:0 ofReply:0];

  v15 = MEMORY[0x277CBEB98];
  v16 = objc_opt_self();
  v17 = [v15 setWithObject:v16];
  [v2 setClasses:v17 forSelector:sel_storeAuthenticationFailedWithError_ argumentIndex:0 ofReply:0];

  return v2;
}

@end