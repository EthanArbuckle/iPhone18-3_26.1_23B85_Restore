@interface CPSClusterEstimatesViewController
+ (NSEdgeInsets)edgeInsets;
+ (id)createEstimatesView;
+ (id)createPlatterView;
@end

@implementation CPSClusterEstimatesViewController

+ (NSEdgeInsets)edgeInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

+ (id)createEstimatesView
{
  v2 = [CPSClusterEstimatesView alloc];
  v3 = [(CPSDashboardEstimatesView *)v2 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];

  return v3;
}

+ (id)createPlatterView
{
  v7[2] = a1;
  v7[1] = a2;
  v3 = [CPSCardPlatterView alloc];
  v5 = [MEMORY[0x277D75D68] crsui_clusterTurnCardETATrayBackgroundMaterial];
  v4 = [MEMORY[0x277D75348] clearColor];
  v7[0] = [(CPSCardPlatterView *)v3 initWithFrame:15 cornerRadius:v5 maskedCorners:*MEMORY[0x277CBF3A0] backgroundMaterial:*(MEMORY[0x277CBF3A0] + 8) backgroundColor:*(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24), 12.0];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  [v7[0] setShadowWithRadius:3.0 opacity:0.4];
  v6 = MEMORY[0x277D82BE0](v7[0]);
  objc_storeStrong(v7, 0);

  return v6;
}

@end