@interface CPSAuthenticationServiceInterface
+ (NSXPCInterface)clientInterface;
+ (NSXPCInterface)daemonInterface;
@end

@implementation CPSAuthenticationServiceInterface

+ (NSXPCInterface)clientInterface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2856FCFC8];
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_self();
  v5 = [v3 setWithObject:v4];
  [v2 setClasses:v5 forSelector:sel_authenticationSessionPresentShieldWithStyle_device_ argumentIndex:1 ofReply:0];

  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_self();
  v8 = [v6 setWithObject:v7];
  v28 = v2;
  [v2 setClasses:v8 forSelector:sel_authenticationSessionDeviceTappedNotification_ argumentIndex:0 ofReply:0];

  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_self();
  v11 = [v9 setWithObject:v10];
  [v2 setClasses:v11 forSelector:sel_authenticationSessionDeviceStartedAuthentication_ argumentIndex:0 ofReply:0];

  v27 = MEMORY[0x277CBEB98];
  v12 = objc_opt_self();
  v26 = objc_opt_self();
  v13 = objc_opt_self();
  v14 = objc_opt_self();
  v15 = objc_opt_self();
  v16 = objc_opt_self();
  v17 = objc_opt_self();
  v18 = objc_opt_self();
  v19 = objc_opt_self();
  v20 = objc_opt_self();
  v21 = [v27 setWithObjects:{v12, v26, v13, v14, v15, v16, v17, v18, v19, v20, 0}];

  [v28 setClasses:v21 forSelector:sel_authenticationSessionDidFinishWithResponse_ argumentIndex:0 ofReply:0];
  v22 = MEMORY[0x277CBEB98];
  v23 = objc_opt_self();
  v24 = [v22 setWithObject:v23];
  [v28 setClasses:v24 forSelector:sel_authenticationSessionDidFailWithError_ argumentIndex:0 ofReply:0];

  return v28;
}

+ (NSXPCInterface)daemonInterface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2856FF740];
  v34 = MEMORY[0x277CBEB98];
  v35 = v2;
  v33 = objc_opt_self();
  v36 = objc_opt_self();
  v32 = objc_opt_self();
  v3 = objc_opt_self();
  v31 = objc_opt_self();
  v4 = objc_opt_self();
  v5 = objc_opt_self();
  v6 = objc_opt_self();
  v7 = objc_opt_self();
  v8 = objc_opt_self();
  v9 = objc_opt_self();
  v10 = objc_opt_self();
  v11 = [v34 setWithObjects:{v33, v36, v32, v3, v31, v4, v5, v6, v7, v8, v9, v10, 0}];

  [v35 setClasses:v11 forSelector:sel_startAuthenticationSessionWithRequest_completionHandler_ argumentIndex:0 ofReply:0];
  v12 = MEMORY[0x277CBEB98];
  v13 = objc_opt_self();
  v14 = [v12 setWithObject:v13];
  [v35 setClasses:v14 forSelector:sel_startAuthenticationSessionWithRequest_completionHandler_ argumentIndex:0 ofReply:1];

  v15 = MEMORY[0x277CBEB98];
  v16 = objc_opt_self();
  v17 = [v15 setWithObject:v16];
  [v35 setClasses:v17 forSelector:sel_fetchDaemonStatusWithCompletionHandler_ argumentIndex:0 ofReply:1];

  v18 = MEMORY[0x277CBEB98];
  v19 = objc_opt_self();
  v20 = [v18 setWithObject:v19];
  [v35 setClasses:v20 forSelector:sel_fetchDaemonStatusWithCompletionHandler_ argumentIndex:1 ofReply:1];

  v21 = MEMORY[0x277CBEB98];
  getAMSDelegatePurchaseRequestClass();
  v22 = objc_opt_self();
  v23 = [v21 setWithObject:v22];
  [v35 setClasses:v23 forSelector:sel_performAMSDelegatePurchaseWithRequest_isSandboxPurchase_completionHandler_ argumentIndex:0 ofReply:0];

  v24 = MEMORY[0x277CBEB98];
  getAMSDelegatePurchaseResultClass();
  v25 = objc_opt_self();
  v26 = [v24 setWithObject:v25];
  [v35 setClasses:v26 forSelector:sel_performAMSDelegatePurchaseWithRequest_isSandboxPurchase_completionHandler_ argumentIndex:0 ofReply:1];

  v27 = MEMORY[0x277CBEB98];
  v28 = objc_opt_self();
  v29 = [v27 setWithObject:v28];
  [v35 setClasses:v29 forSelector:sel_performAMSDelegatePurchaseWithRequest_isSandboxPurchase_completionHandler_ argumentIndex:1 ofReply:1];

  return v35;
}

@end