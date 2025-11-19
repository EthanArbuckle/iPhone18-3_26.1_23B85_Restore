@interface BLServiceInterface
+ (NSXPCInterface)mainInterface;
@end

@implementation BLServiceInterface

+ (NSXPCInterface)mainInterface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2853F83C8];
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_fetchDownloadListWithReply_ argumentIndex:0 ofReply:1];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  [v2 setClasses:v8 forSelector:sel_requestDownloadsWithRestoreContentRequestItems_reply_ argumentIndex:0 ofReply:0];
  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  [v2 setClasses:v11 forSelector:sel_requestDownloadsWithRestoreContentRequestItems_reply_ argumentIndex:0 ofReply:1];
  v12 = MEMORY[0x277CBEB98];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  [v2 setClasses:v14 forSelector:sel_migrationInfosWithStoreIDs_withReply_ argumentIndex:0 ofReply:1];
  [v2 setClasses:v14 forSelector:sel_migrationInfosWithStates_withReply_ argumentIndex:0 ofReply:1];
  v15 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2853FA9B8];
  [v2 setInterface:v15 forSelector:sel_purchaseWithRequest_uiHostProxy_reply_ argumentIndex:1 ofReply:0];
  [v2 setInterface:v15 forSelector:sel_requestDownloadsWithManifestRequest_uiHostProxy_reply_ argumentIndex:1 ofReply:0];
  [v2 setInterface:v15 forSelector:sel_setAutomaticDownloadEnabled_uiHostProxy_reply_ argumentIndex:1 ofReply:0];

  return v2;
}

@end