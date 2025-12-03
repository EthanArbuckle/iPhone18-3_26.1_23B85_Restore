@interface CPSClusterManeuversCardView
+ (id)createPlatterView;
+ (id)maneuverViewWithManeuver:(id)maneuver;
- (CPSClusterManeuversCardView)initWithManeuvers:(id)maneuvers;
@end

@implementation CPSClusterManeuversCardView

- (CPSClusterManeuversCardView)initWithManeuvers:(id)maneuvers
{
  v13[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, maneuvers);
  if ([location[0] count])
  {
    v6 = selfCopy;
    firstObject = [location[0] firstObject];
    v13[0] = firstObject;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    selfCopy = 0;
    v10.receiver = v6;
    v10.super_class = CPSClusterManeuversCardView;
    selfCopy = [(CPSManeuversCardView *)&v10 initWithManeuvers:?];
    objc_storeStrong(&selfCopy, selfCopy);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](firstObject);
  }

  else
  {
    v3 = selfCopy;
    selfCopy = 0;
    v9.receiver = v3;
    v9.super_class = CPSClusterManeuversCardView;
    selfCopy = [(CPSManeuversCardView *)&v9 initWithManeuvers:MEMORY[0x277CBEBF8]];
    objc_storeStrong(&selfCopy, selfCopy);
  }

  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

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
  [v7[0] setClipsToBounds:0];
  v6 = MEMORY[0x277D82BE0](v7[0]);
  objc_storeStrong(v7, 0);

  return v6;
}

+ (id)maneuverViewWithManeuver:(id)maneuver
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, maneuver);
  v3 = [CPSClusterPrimaryManeuverView alloc];
  v5 = [(CPSPrimaryManeuverView *)v3 initWithManeuver:location[0]];
  objc_storeStrong(location, 0);

  return v5;
}

@end