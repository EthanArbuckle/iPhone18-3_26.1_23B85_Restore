@interface GKDaemonInterface
+ (id)interface;
@end

@implementation GKDaemonInterface

+ (id)interface
{
  v2 = [a1 interfaceWithProtocol:&unk_283B6B350];
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_getAuthenticatedLocalPlayersWithStatus_handler_ argumentIndex:0 ofReply:1];

  v6 = +[(GKServiceInterface *)GKAccountServiceInterface];
  [v2 setInterface:v6 forSelector:sel_getServicesForPID_localPlayer_reply_ argumentIndex:0 ofReply:1];

  v7 = +[(GKServiceInterface *)GKProfileServiceInterface];
  [v2 setInterface:v7 forSelector:sel_getServicesForPID_localPlayer_reply_ argumentIndex:1 ofReply:1];

  v8 = +[(GKServiceInterface *)GKFriendServiceInterface];
  [v2 setInterface:v8 forSelector:sel_getServicesForPID_localPlayer_reply_ argumentIndex:2 ofReply:1];

  v9 = +[(GKServiceInterface *)GKGameServiceInterface];
  [v2 setInterface:v9 forSelector:sel_getServicesForPID_localPlayer_reply_ argumentIndex:3 ofReply:1];

  v10 = +[(GKServiceInterface *)GKGameStatServiceInterface];
  [v2 setInterface:v10 forSelector:sel_getServicesForPID_localPlayer_reply_ argumentIndex:4 ofReply:1];

  v11 = +[(GKServiceInterface *)GKChallengeServiceInterface];
  [v2 setInterface:v11 forSelector:sel_getServicesForPID_localPlayer_reply_ argumentIndex:5 ofReply:1];

  v12 = +[(GKServiceInterface *)GKMultiplayerServiceInterface];
  [v2 setInterface:v12 forSelector:sel_getServicesForPID_localPlayer_reply_ argumentIndex:6 ofReply:1];

  v13 = +[(GKServiceInterface *)GKTurnBasedServiceInterface];
  [v2 setInterface:v13 forSelector:sel_getServicesForPID_localPlayer_reply_ argumentIndex:7 ofReply:1];

  v14 = +[(GKServiceInterface *)GKUtilityServiceInterface];
  [v2 setInterface:v14 forSelector:sel_getServicesForPID_localPlayer_reply_ argumentIndex:8 ofReply:1];

  v15 = +[(GKServiceInterface *)GKBulletinServiceInterface];
  [v2 setInterface:v15 forSelector:sel_getServicesForPID_localPlayer_reply_ argumentIndex:9 ofReply:1];

  v16 = +[(GKServiceInterface *)GKAccountServicePrivateInterface];
  [v2 setInterface:v16 forSelector:sel_getPrivateServicesForPID_localPlayer_reply_ argumentIndex:1 ofReply:1];

  v17 = +[(GKServiceInterface *)GKProfileServicePrivateInterface];
  [v2 setInterface:v17 forSelector:sel_getPrivateServicesForPID_localPlayer_reply_ argumentIndex:2 ofReply:1];

  v18 = +[(GKServiceInterface *)GKFriendServicePrivateInterface];
  [v2 setInterface:v18 forSelector:sel_getPrivateServicesForPID_localPlayer_reply_ argumentIndex:3 ofReply:1];

  v19 = +[(GKServiceInterface *)GKGameKitDirectoryServicePrivateInterface];
  [v2 setInterface:v19 forSelector:sel_getPrivateServicesForPID_localPlayer_reply_ argumentIndex:4 ofReply:1];

  v20 = +[(GKServiceInterface *)GKGameServicePrivateInterface];
  [v2 setInterface:v20 forSelector:sel_getPrivateServicesForPID_localPlayer_reply_ argumentIndex:5 ofReply:1];

  v21 = +[(GKServiceInterface *)GKGameStatServicePrivateInterface];
  [v2 setInterface:v21 forSelector:sel_getPrivateServicesForPID_localPlayer_reply_ argumentIndex:6 ofReply:1];

  v22 = +[(GKServiceInterface *)GKChallengeServicePrivateInterface];
  [v2 setInterface:v22 forSelector:sel_getPrivateServicesForPID_localPlayer_reply_ argumentIndex:7 ofReply:1];

  v23 = +[(GKServiceInterface *)GKMultiplayerServicePrivateInterface];
  [v2 setInterface:v23 forSelector:sel_getPrivateServicesForPID_localPlayer_reply_ argumentIndex:8 ofReply:1];

  v24 = +[(GKServiceInterface *)GKTurnBasedServicePrivateInterface];
  [v2 setInterface:v24 forSelector:sel_getPrivateServicesForPID_localPlayer_reply_ argumentIndex:9 ofReply:1];

  v25 = +[(GKServiceInterface *)GKUtilityServicePrivateInterface];
  [v2 setInterface:v25 forSelector:sel_getPrivateServicesForPID_localPlayer_reply_ argumentIndex:10 ofReply:1];

  v26 = +[(GKServiceInterface *)GKBulletinServicePrivateInterface];
  [v2 setInterface:v26 forSelector:sel_getPrivateServicesForPID_localPlayer_reply_ argumentIndex:11 ofReply:1];

  return v2;
}

@end