@interface GKGameServiceInterface
+ (void)configureInterface:(id)interface;
@end

@implementation GKGameServiceInterface

+ (void)configureInterface:(id)interface
{
  v3 = MEMORY[0x277CBEB98];
  interfaceCopy = interface;
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v5, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v6 forSelector:sel_getArcadeHighlightForAdamID_count_handler_ argumentIndex:0 ofReply:0];

  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v9 forSelector:sel_getArcadeHighlightForAdamID_count_handler_ argumentIndex:0 ofReply:1];

  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v12 forSelector:sel_getPerGameSettingsForBundleID_handler_ argumentIndex:0 ofReply:0];

  v13 = MEMORY[0x277CBEB98];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v15 forSelector:sel_getPerGameSettingsForBundleID_handler_ argumentIndex:0 ofReply:1];

  v16 = MEMORY[0x277CBEB98];
  v17 = objc_opt_class();
  v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v18 forSelector:sel_setPerGameSettings_handler_ argumentIndex:0 ofReply:0];

  v19 = MEMORY[0x277CBEB98];
  v20 = objc_opt_class();
  v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v21 forSelector:sel_getPerGameFriendsForBundleID_handler_ argumentIndex:0 ofReply:0];

  v22 = MEMORY[0x277CBEB98];
  v23 = objc_opt_class();
  v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v24 forSelector:sel_getPerGameFriendsForBundleID_handler_ argumentIndex:0 ofReply:1];

  v25 = MEMORY[0x277CBEB98];
  v26 = objc_opt_class();
  v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v27 forSelector:sel_storeGameForBundleIDs_completion_ argumentIndex:0 ofReply:1];
}

@end