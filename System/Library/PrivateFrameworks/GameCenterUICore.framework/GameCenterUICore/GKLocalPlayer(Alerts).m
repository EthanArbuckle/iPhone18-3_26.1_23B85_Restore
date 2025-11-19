@interface GKLocalPlayer(Alerts)
- (uint64_t)alertUserInStoreDemoModeEnabled;
- (void)showCancelledAlertForPlayer:()Alerts;
@end

@implementation GKLocalPlayer(Alerts)

- (void)showCancelledAlertForPlayer:()Alerts
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = GKGameCenterUIFrameworkBundle();
  v6 = GKGetLocalizedStringFromTableInBundle();
  v7 = [v4 displayNameWithOptions:0];

  v12 = [v3 localizedStringWithFormat:v6, v7];

  v8 = [MEMORY[0x277D75D28] _gkKeyWindowRootViewController];
  v9 = GKGameCenterUIFrameworkBundle();
  v10 = GKGetLocalizedStringFromTableInBundle();
  v11 = [v8 _gkPresentAlertWithTitle:v12 message:0 buttonTitle:v10];
}

- (uint64_t)alertUserInStoreDemoModeEnabled
{
  v0 = [MEMORY[0x277D0C1D8] shared];
  v1 = [v0 isStoreDemoModeEnabled];

  if (v1)
  {
    v2 = [MEMORY[0x277D75D28] _gkKeyWindowRootViewController];
    v3 = GKGameCenterUIFrameworkBundle();
    v4 = GKGetLocalizedStringFromTableInBundle();
    v5 = GKGameCenterUIFrameworkBundle();
    v6 = GKGetLocalizedStringFromTableInBundle();
    v7 = GKGameCenterUIFrameworkBundle();
    v8 = GKGetLocalizedStringFromTableInBundle();
    v9 = [v2 _gkPresentAlertWithTitle:v4 message:v6 buttonTitle:v8];
  }

  return v1;
}

@end