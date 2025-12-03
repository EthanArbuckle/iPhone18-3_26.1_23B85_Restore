@interface CPSClusterPausedCardView
+ (id)createPlatterView;
@end

@implementation CPSClusterPausedCardView

+ (id)createPlatterView
{
  v7[2] = self;
  v7[1] = a2;
  v3 = [CPSCardPlatterView alloc];
  crsui_clusterTurnCardETATrayBackgroundMaterial = [MEMORY[0x277D75D68] crsui_clusterTurnCardETATrayBackgroundMaterial];
  clearColor = [MEMORY[0x277D75348] clearColor];
  v7[0] = [(CPSCardPlatterView *)v3 initWithFrame:15 cornerRadius:crsui_clusterTurnCardETATrayBackgroundMaterial maskedCorners:*MEMORY[0x277CBF3A0] backgroundMaterial:*(MEMORY[0x277CBF3A0] + 8) backgroundColor:*(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  MEMORY[0x277D82BD8](clearColor);
  MEMORY[0x277D82BD8](crsui_clusterTurnCardETATrayBackgroundMaterial);
  [v7[0] setShadowWithRadius:20.0 opacity:0.4];
  v6 = MEMORY[0x277D82BE0](v7[0]);
  objc_storeStrong(v7, 0);

  return v6;
}

@end