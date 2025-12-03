@interface GKViewServiceInterface
+ (id)challengeIssueHostViewControllerInterface;
+ (id)challengeIssueServiceViewControllerInterface;
+ (id)extensionHostInterface;
+ (id)extensionInterface;
+ (id)gameCenterHostViewControllerInterface;
+ (id)gameCenterServiceViewControllerInterface;
+ (id)matchmakerHostViewControllerInterface;
+ (id)matchmakerServiceViewControllerInterface;
+ (id)remoteFriendRequestViewControllerInterface;
+ (id)remoteSignInViewControllerInterface;
+ (id)serviceFriendRequestViewControllerInterface;
+ (id)signInServiceViewControllerInterface;
+ (id)turnBasedHostViewControllerInterface;
+ (id)turnBasedServiceViewControllerInterface;
+ (void)_configureKVOTypes:(id)types;
+ (void)setClassesForExtensionInterface:(id)interface;
+ (void)setClassesForHostInterface:(id)interface;
@end

@implementation GKViewServiceInterface

+ (void)setClassesForHostInterface:(id)interface
{
  v3 = MEMORY[0x277D0C210];
  interfaceCopy = interface;
  plistClasses = [v3 plistClasses];
  [interfaceCopy setClasses:plistClasses forSelector:sel_messageFromExtension_ argumentIndex:0 ofReply:0];
}

+ (void)setClassesForExtensionInterface:(id)interface
{
  v4 = MEMORY[0x277D0C210];
  interfaceCopy = interface;
  plistClasses = [v4 plistClasses];
  [interfaceCopy setClasses:plistClasses forSelector:sel_messageFromClient_ argumentIndex:0 ofReply:0];
  [self _configureKVOTypes:interfaceCopy];
}

+ (id)extensionHostInterface
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__GKViewServiceInterface_extensionHostInterface__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (extensionHostInterface_onceToken != -1)
  {
    dispatch_once(&extensionHostInterface_onceToken, block);
  }

  v2 = extensionHostInterface_sHostInterface;

  return v2;
}

uint64_t __48__GKViewServiceInterface_extensionHostInterface__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) interfaceWithProtocol:&unk_2861D2CF8];
  v3 = extensionHostInterface_sHostInterface;
  extensionHostInterface_sHostInterface = v2;

  v4 = *(a1 + 32);
  v5 = extensionHostInterface_sHostInterface;

  return [v4 setClassesForHostInterface:v5];
}

+ (id)extensionInterface
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__GKViewServiceInterface_extensionInterface__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (extensionInterface_onceToken != -1)
  {
    dispatch_once(&extensionInterface_onceToken, block);
  }

  v2 = extensionInterface_sExtensionInterface;

  return v2;
}

uint64_t __44__GKViewServiceInterface_extensionInterface__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) interfaceWithProtocol:&unk_2861D4868];
  v3 = extensionInterface_sExtensionInterface;
  extensionInterface_sExtensionInterface = v2;

  v4 = *(a1 + 32);
  v5 = extensionInterface_sExtensionInterface;

  return [v4 setClassesForExtensionInterface:v5];
}

+ (id)gameCenterHostViewControllerInterface
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__GKViewServiceInterface_gameCenterHostViewControllerInterface__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (gameCenterHostViewControllerInterface_onceToken != -1)
  {
    dispatch_once(&gameCenterHostViewControllerInterface_onceToken, block);
  }

  v2 = gameCenterHostViewControllerInterface_sServiceInterface;

  return v2;
}

uint64_t __63__GKViewServiceInterface_gameCenterHostViewControllerInterface__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) interfaceWithProtocol:&unk_2861F2B38];
  v3 = gameCenterHostViewControllerInterface_sServiceInterface;
  gameCenterHostViewControllerInterface_sServiceInterface = v2;

  v4 = *(a1 + 32);
  v5 = gameCenterHostViewControllerInterface_sServiceInterface;

  return [v4 setClassesForHostInterface:v5];
}

+ (id)gameCenterServiceViewControllerInterface
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__GKViewServiceInterface_gameCenterServiceViewControllerInterface__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (gameCenterServiceViewControllerInterface_onceToken != -1)
  {
    dispatch_once(&gameCenterServiceViewControllerInterface_onceToken, block);
  }

  v2 = gameCenterServiceViewControllerInterface_sRemoteInterface;

  return v2;
}

uint64_t __66__GKViewServiceInterface_gameCenterServiceViewControllerInterface__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) interfaceWithProtocol:&unk_2861F2940];
  v3 = gameCenterServiceViewControllerInterface_sRemoteInterface;
  gameCenterServiceViewControllerInterface_sRemoteInterface = v2;

  v4 = *(a1 + 32);
  v5 = gameCenterServiceViewControllerInterface_sRemoteInterface;

  return [v4 setClassesForExtensionInterface:v5];
}

+ (id)remoteSignInViewControllerInterface
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__GKViewServiceInterface_remoteSignInViewControllerInterface__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (remoteSignInViewControllerInterface_onceToken != -1)
  {
    dispatch_once(&remoteSignInViewControllerInterface_onceToken, block);
  }

  v2 = remoteSignInViewControllerInterface_sServiceInterface;

  return v2;
}

uint64_t __61__GKViewServiceInterface_remoteSignInViewControllerInterface__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) interfaceWithProtocol:&unk_2861F4690];
  v3 = remoteSignInViewControllerInterface_sServiceInterface;
  remoteSignInViewControllerInterface_sServiceInterface = v2;

  v4 = *(a1 + 32);
  v5 = remoteSignInViewControllerInterface_sServiceInterface;

  return [v4 setClassesForHostInterface:v5];
}

+ (id)signInServiceViewControllerInterface
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__GKViewServiceInterface_signInServiceViewControllerInterface__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (signInServiceViewControllerInterface_onceToken != -1)
  {
    dispatch_once(&signInServiceViewControllerInterface_onceToken, block);
  }

  v2 = signInServiceViewControllerInterface_sRemoteInterface;

  return v2;
}

uint64_t __62__GKViewServiceInterface_signInServiceViewControllerInterface__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) interfaceWithProtocol:&unk_286226ED8];
  v3 = signInServiceViewControllerInterface_sRemoteInterface;
  signInServiceViewControllerInterface_sRemoteInterface = v2;

  v4 = *(a1 + 32);
  v5 = signInServiceViewControllerInterface_sRemoteInterface;

  return [v4 setClassesForExtensionInterface:v5];
}

+ (id)remoteFriendRequestViewControllerInterface
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__GKViewServiceInterface_remoteFriendRequestViewControllerInterface__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (remoteFriendRequestViewControllerInterface_onceToken != -1)
  {
    dispatch_once(&remoteFriendRequestViewControllerInterface_onceToken, block);
  }

  v2 = remoteFriendRequestViewControllerInterface_sServiceInterface;

  return v2;
}

void __68__GKViewServiceInterface_remoteFriendRequestViewControllerInterface__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) interfaceWithProtocol:&unk_286226F38];
  v3 = remoteFriendRequestViewControllerInterface_sServiceInterface;
  remoteFriendRequestViewControllerInterface_sServiceInterface = v2;

  v6 = [MEMORY[0x277D0C210] plistClasses];
  v4 = remoteFriendRequestViewControllerInterface_sServiceInterface;
  v5 = [v6 setByAddingObject:objc_opt_class()];
  [v4 setClasses:v5 forSelector:sel_didRequestFriends_ argumentIndex:0 ofReply:0];

  [*(a1 + 32) setClassesForHostInterface:remoteFriendRequestViewControllerInterface_sServiceInterface];
}

+ (id)serviceFriendRequestViewControllerInterface
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__GKViewServiceInterface_serviceFriendRequestViewControllerInterface__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (serviceFriendRequestViewControllerInterface_onceToken != -1)
  {
    dispatch_once(&serviceFriendRequestViewControllerInterface_onceToken, block);
  }

  v2 = serviceFriendRequestViewControllerInterface_sRemoteInterface;

  return v2;
}

void __69__GKViewServiceInterface_serviceFriendRequestViewControllerInterface__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) interfaceWithProtocol:&unk_286226F98];
  v3 = serviceFriendRequestViewControllerInterface_sRemoteInterface;
  serviceFriendRequestViewControllerInterface_sRemoteInterface = v2;

  v6 = [MEMORY[0x277D0C210] plistClasses];
  v4 = serviceFriendRequestViewControllerInterface_sRemoteInterface;
  v5 = [v6 setByAddingObject:objc_opt_class()];
  [v4 setClasses:v5 forSelector:sel_addRecipientPlayerInternals_ argumentIndex:0 ofReply:0];

  [*(a1 + 32) setClassesForExtensionInterface:serviceFriendRequestViewControllerInterface_sRemoteInterface];
}

+ (id)challengeIssueHostViewControllerInterface
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__GKViewServiceInterface_challengeIssueHostViewControllerInterface__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (challengeIssueHostViewControllerInterface_onceToken != -1)
  {
    dispatch_once(&challengeIssueHostViewControllerInterface_onceToken, block);
  }

  v2 = challengeIssueHostViewControllerInterface_sServiceInterface;

  return v2;
}

void __67__GKViewServiceInterface_challengeIssueHostViewControllerInterface__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) interfaceWithProtocol:&unk_2861E8930];
  v3 = challengeIssueHostViewControllerInterface_sServiceInterface;
  challengeIssueHostViewControllerInterface_sServiceInterface = v2;

  v4 = [MEMORY[0x277D0C210] plistClasses];
  [challengeIssueHostViewControllerInterface_sServiceInterface setClasses:v4 forSelector:sel_didFinishWithPlayerIDs_message_ argumentIndex:0 ofReply:0];
  [*(a1 + 32) setClassesForHostInterface:challengeIssueHostViewControllerInterface_sServiceInterface];
}

+ (id)challengeIssueServiceViewControllerInterface
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__GKViewServiceInterface_challengeIssueServiceViewControllerInterface__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (challengeIssueServiceViewControllerInterface_onceToken != -1)
  {
    dispatch_once(&challengeIssueServiceViewControllerInterface_onceToken, block);
  }

  v2 = challengeIssueServiceViewControllerInterface_sRemoteInterface;

  return v2;
}

void __70__GKViewServiceInterface_challengeIssueServiceViewControllerInterface__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) interfaceWithProtocol:&unk_286226FF8];
  v3 = challengeIssueServiceViewControllerInterface_sRemoteInterface;
  challengeIssueServiceViewControllerInterface_sRemoteInterface = v2;

  v4 = [MEMORY[0x277D0C210] plistClasses];
  v5 = challengeIssueServiceViewControllerInterface_sRemoteInterface;
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:3];
  v7 = [v4 setByAddingObjectsFromArray:{v6, v8, v9}];
  [v5 setClasses:v7 forSelector:sel_setValue_forKeyPath_withReply_ argumentIndex:0 ofReply:0];

  [*(a1 + 32) setClassesForExtensionInterface:challengeIssueServiceViewControllerInterface_sRemoteInterface];
}

+ (id)matchmakerHostViewControllerInterface
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__GKViewServiceInterface_matchmakerHostViewControllerInterface__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (matchmakerHostViewControllerInterface_onceToken != -1)
  {
    dispatch_once(&matchmakerHostViewControllerInterface_onceToken, block);
  }

  v2 = matchmakerHostViewControllerInterface_sServiceInterface;

  return v2;
}

void __63__GKViewServiceInterface_matchmakerHostViewControllerInterface__block_invoke(uint64_t a1)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) interfaceWithProtocol:&unk_2861F7628];
  v3 = matchmakerHostViewControllerInterface_sServiceInterface;
  matchmakerHostViewControllerInterface_sServiceInterface = v2;

  v4 = [MEMORY[0x277D0C210] plistClasses];
  v5 = matchmakerHostViewControllerInterface_sServiceInterface;
  v6 = [v4 setByAddingObject:objc_opt_class()];
  [v5 setClasses:v6 forSelector:sel_startMatchingWithRequest_ argumentIndex:0 ofReply:0];

  v7 = matchmakerHostViewControllerInterface_sServiceInterface;
  v8 = [v4 setByAddingObject:objc_opt_class()];
  [v7 setClasses:v8 forSelector:sel_cancelPendingInviteToPlayer_ argumentIndex:0 ofReply:0];

  v9 = matchmakerHostViewControllerInterface_sServiceInterface;
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v11 = [v4 setByAddingObjectsFromArray:v10];
  [v9 setClasses:v11 forSelector:sel_setShareInvitees_ argumentIndex:0 ofReply:0];

  [*(a1 + 32) setClassesForHostInterface:matchmakerHostViewControllerInterface_sServiceInterface];
}

+ (id)matchmakerServiceViewControllerInterface
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__GKViewServiceInterface_matchmakerServiceViewControllerInterface__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (matchmakerServiceViewControllerInterface_onceToken != -1)
  {
    dispatch_once(&matchmakerServiceViewControllerInterface_onceToken, block);
  }

  v2 = matchmakerServiceViewControllerInterface_sRemoteInterface;

  return v2;
}

void __66__GKViewServiceInterface_matchmakerServiceViewControllerInterface__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) interfaceWithProtocol:&unk_2861F7738];
  v3 = matchmakerServiceViewControllerInterface_sRemoteInterface;
  matchmakerServiceViewControllerInterface_sRemoteInterface = v2;

  [*(a1 + 32) setClassesForExtensionInterface:matchmakerServiceViewControllerInterface_sRemoteInterface];
  v4 = [MEMORY[0x277D0C210] plistClasses];
  v5 = matchmakerServiceViewControllerInterface_sRemoteInterface;
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:3];
  v7 = [v4 setByAddingObjectsFromArray:{v6, v8, v9}];
  [v5 setClasses:v7 forSelector:sel_setValue_forKeyPath_withReply_ argumentIndex:0 ofReply:0];
}

+ (id)turnBasedHostViewControllerInterface
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__GKViewServiceInterface_turnBasedHostViewControllerInterface__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (turnBasedHostViewControllerInterface_onceToken != -1)
  {
    dispatch_once(&turnBasedHostViewControllerInterface_onceToken, block);
  }

  v2 = turnBasedHostViewControllerInterface_sServiceInterface;

  return v2;
}

void __62__GKViewServiceInterface_turnBasedHostViewControllerInterface__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) interfaceWithProtocol:&unk_2861F2D28];
  v3 = turnBasedHostViewControllerInterface_sServiceInterface;
  turnBasedHostViewControllerInterface_sServiceInterface = v2;

  v8 = [MEMORY[0x277D0C210] plistClasses];
  v4 = turnBasedHostViewControllerInterface_sServiceInterface;
  v5 = [v8 setByAddingObject:objc_opt_class()];
  [v4 setClasses:v5 forSelector:sel_finishWithMatch_ argumentIndex:0 ofReply:0];

  v6 = turnBasedHostViewControllerInterface_sServiceInterface;
  v7 = [v8 setByAddingObject:objc_opt_class()];
  [v6 setClasses:v7 forSelector:sel_playerQuitMatch_ argumentIndex:0 ofReply:0];

  [*(a1 + 32) setClassesForHostInterface:turnBasedHostViewControllerInterface_sServiceInterface];
}

+ (id)turnBasedServiceViewControllerInterface
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__GKViewServiceInterface_turnBasedServiceViewControllerInterface__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (turnBasedServiceViewControllerInterface_onceToken != -1)
  {
    dispatch_once(&turnBasedServiceViewControllerInterface_onceToken, block);
  }

  v2 = turnBasedServiceViewControllerInterface_sRemoteInterface;

  return v2;
}

void __65__GKViewServiceInterface_turnBasedServiceViewControllerInterface__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) interfaceWithProtocol:&unk_2861F2DF8];
  v3 = turnBasedServiceViewControllerInterface_sRemoteInterface;
  turnBasedServiceViewControllerInterface_sRemoteInterface = v2;

  [*(a1 + 32) setClassesForExtensionInterface:turnBasedServiceViewControllerInterface_sRemoteInterface];
  v6 = [MEMORY[0x277D0C210] plistClasses];
  v4 = turnBasedServiceViewControllerInterface_sRemoteInterface;
  v5 = [v6 setByAddingObject:objc_opt_class()];
  [v4 setClasses:v5 forSelector:sel_setValue_forKeyPath_withReply_ argumentIndex:0 ofReply:0];
}

+ (void)_configureKVOTypes:(id)types
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D0C210];
  typesCopy = types;
  plistClasses = [v3 plistClasses];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:7];
  v7 = [plistClasses setByAddingObjectsFromArray:{v6, v8, v9, v10, v11, v12, v13}];

  [typesCopy setClasses:v7 forSelector:sel_setValue_forKeyPath_withReply_ argumentIndex:0 ofReply:0];
  [typesCopy setClasses:v7 forSelector:sel_setInitialState_withReply_ argumentIndex:0 ofReply:0];
}

@end