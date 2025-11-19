@interface CPSClusterManeuversCardView
+ (id)createPlatterView;
+ (id)maneuverViewWithManeuver:(id)a3;
- (CPSClusterManeuversCardView)initWithManeuvers:(id)a3;
@end

@implementation CPSClusterManeuversCardView

- (CPSClusterManeuversCardView)initWithManeuvers:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([location[0] count])
  {
    v6 = v12;
    v8 = [location[0] firstObject];
    v13[0] = v8;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v12 = 0;
    v10.receiver = v6;
    v10.super_class = CPSClusterManeuversCardView;
    v12 = [(CPSManeuversCardView *)&v10 initWithManeuvers:?];
    objc_storeStrong(&v12, v12);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
  }

  else
  {
    v3 = v12;
    v12 = 0;
    v9.receiver = v3;
    v9.super_class = CPSClusterManeuversCardView;
    v12 = [(CPSManeuversCardView *)&v9 initWithManeuvers:MEMORY[0x277CBEBF8]];
    objc_storeStrong(&v12, v12);
  }

  v5 = MEMORY[0x277D82BE0](v12);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v5;
}

+ (id)createPlatterView
{
  v7[2] = a1;
  v7[1] = a2;
  v3 = [CPSCardPlatterView alloc];
  v5 = [MEMORY[0x277D75D68] crsui_clusterTurnCardETATrayBackgroundMaterial];
  v4 = [MEMORY[0x277D75348] clearColor];
  v7[0] = [(CPSCardPlatterView *)v3 initWithFrame:15 cornerRadius:v5 maskedCorners:*MEMORY[0x277CBF3A0] backgroundMaterial:*(MEMORY[0x277CBF3A0] + 8) backgroundColor:*(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  [v7[0] setShadowWithRadius:20.0 opacity:0.4];
  [v7[0] setClipsToBounds:0];
  v6 = MEMORY[0x277D82BE0](v7[0]);
  objc_storeStrong(v7, 0);

  return v6;
}

+ (id)maneuverViewWithManeuver:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [CPSClusterPrimaryManeuverView alloc];
  v5 = [(CPSPrimaryManeuverView *)v3 initWithManeuver:location[0]];
  objc_storeStrong(location, 0);

  return v5;
}

@end