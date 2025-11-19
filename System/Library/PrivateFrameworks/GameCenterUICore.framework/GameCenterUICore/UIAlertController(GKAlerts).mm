@interface UIAlertController(GKAlerts)
- (void)_gkAddCancelButtonWithAction:()GKAlerts;
@end

@implementation UIAlertController(GKAlerts)

- (void)_gkAddCancelButtonWithAction:()GKAlerts
{
  v4 = a3;
  v5 = MEMORY[0x277D750F8];
  v6 = GKGameCenterUIFrameworkBundle();
  v7 = GKGetLocalizedStringFromTableInBundle();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__UIAlertController_GKAlerts___gkAddCancelButtonWithAction___block_invoke;
  v10[3] = &unk_27967F710;
  v11 = v4;
  v8 = v4;
  v9 = [v5 actionWithTitle:v7 style:1 handler:v10];

  [a1 addAction:v9];
}

@end