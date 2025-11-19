@interface GKClientInterface
+ (id)interface;
@end

@implementation GKClientInterface

+ (id)interface
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = [GKClientInterface interfaceWithProtocol:&unk_283B46A50];
  v3 = MEMORY[0x277CBEB98];
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = objc_opt_class();
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v26 = objc_opt_class();
  v27 = objc_opt_class();
  v28 = objc_opt_class();
  v29 = objc_opt_class();
  v30 = objc_opt_class();
  v31 = objc_opt_class();
  v32 = objc_opt_class();
  v33 = objc_opt_class();
  v34 = objc_opt_class();
  v35 = objc_opt_class();
  v36 = objc_opt_class();
  v37 = objc_opt_class();
  v38 = objc_opt_class();
  v39 = objc_opt_class();
  v40 = objc_opt_class();
  v41 = objc_opt_class();
  v42 = objc_opt_class();
  v43 = objc_opt_class();
  v44 = objc_opt_class();
  v45 = objc_opt_class();
  v46 = objc_opt_class();
  v47 = objc_opt_class();
  v48 = objc_opt_class();
  v49 = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:33];
  v5 = [v3 setWithArray:v4];

  [v2 setClasses:v5 forSelector:sel_refreshContentsForDataType_userInfo_ argumentIndex:1 ofReply:0];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48}];
  [v2 setClasses:v8 forSelector:sel_authenticatedPlayersDidChange_authenticatingBundleID_reply_ argumentIndex:0 ofReply:0];

  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  [v2 setClasses:v11 forSelector:sel_requestSandboxExtension_ argumentIndex:0 ofReply:1];

  v12 = MEMORY[0x277CBEB98];
  v13 = objc_opt_class();
  objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  [v2 setClasses:v14 forSelector:sel_presentBannerWithNotification_ argumentIndex:0 ofReply:0];

  v15 = *MEMORY[0x277D85DE8];

  return v2;
}

@end