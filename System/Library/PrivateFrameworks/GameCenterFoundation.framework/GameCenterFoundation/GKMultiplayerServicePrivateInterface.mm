@interface GKMultiplayerServicePrivateInterface
+ (void)configureInterface:(id)interface;
@end

@implementation GKMultiplayerServicePrivateInterface

+ (void)configureInterface:(id)interface
{
  v3 = MEMORY[0x277CBEB98];
  interfaceCopy = interface;
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v5 forSelector:sel_invitePlayersV2_toGame_handler_ argumentIndex:0 ofReply:0];

  [interfaceCopy setClass:objc_opt_class() forSelector:sel_invitePlayersV2_toGame_handler_ argumentIndex:1 ofReply:0];
}

@end