@interface GKMultiplayerServicePrivateInterface
+ (void)configureInterface:(id)a3;
@end

@implementation GKMultiplayerServicePrivateInterface

+ (void)configureInterface:(id)a3
{
  v3 = MEMORY[0x277CBEB98];
  v6 = a3;
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v6 setClasses:v5 forSelector:sel_invitePlayersV2_toGame_handler_ argumentIndex:0 ofReply:0];

  [v6 setClass:objc_opt_class() forSelector:sel_invitePlayersV2_toGame_handler_ argumentIndex:1 ofReply:0];
}

@end