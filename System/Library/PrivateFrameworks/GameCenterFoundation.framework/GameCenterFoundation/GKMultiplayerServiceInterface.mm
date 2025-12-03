@interface GKMultiplayerServiceInterface
+ (void)configureInterface:(id)interface;
@end

@implementation GKMultiplayerServiceInterface

+ (void)configureInterface:(id)interface
{
  v3 = MEMORY[0x277CBEB98];
  interfaceCopy = interface;
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v5 forSelector:sel_getCompatibilityMatrix_handler_ argumentIndex:0 ofReply:1];

  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v8 forSelector:sel_removePlayersFromGameInviteV2_handler_ argumentIndex:0 ofReply:0];

  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v11 forSelector:sel_getPlayersToInviteWithHandlerV2_ argumentIndex:0 ofReply:1];

  v12 = MEMORY[0x277CBEB98];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v14 forSelector:sel_putMultiPlayerGroup_participants_playedAt_bundleID_numberOfAutomatched_isSharedLink_completionHandler_ argumentIndex:0 ofReply:0];

  v15 = MEMORY[0x277CBEB98];
  v16 = objc_opt_class();
  v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v17 forSelector:sel_putMultiPlayerGroup_participants_playedAt_bundleID_numberOfAutomatched_isSharedLink_completionHandler_ argumentIndex:1 ofReply:0];

  v18 = MEMORY[0x277CBEB98];
  v19 = objc_opt_class();
  v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v20 forSelector:sel_putMultiPlayerGroup_participants_playedAt_bundleID_numberOfAutomatched_isSharedLink_completionHandler_ argumentIndex:3 ofReply:0];

  v21 = MEMORY[0x277CBEB98];
  v22 = objc_opt_class();
  v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v23 forSelector:sel_getMultiPlayerGroups_ argumentIndex:0 ofReply:1];

  [interfaceCopy setClass:objc_opt_class() forSelector:sel_fileMultiplayerTTRWithCallBackIdentifier_descriptionAddition_handler_ argumentIndex:0 ofReply:0];
  [interfaceCopy setClass:objc_opt_class() forSelector:sel_fileMultiplayerTTRWithCallBackIdentifier_descriptionAddition_handler_ argumentIndex:1 ofReply:0];
  [interfaceCopy setClass:objc_opt_class() forSelector:sel_uploadLogsForRadar_from_handler_ argumentIndex:0 ofReply:0];
  [interfaceCopy setClass:objc_opt_class() forSelector:sel_uploadLogsForRadar_from_handler_ argumentIndex:1 ofReply:0];
}

@end