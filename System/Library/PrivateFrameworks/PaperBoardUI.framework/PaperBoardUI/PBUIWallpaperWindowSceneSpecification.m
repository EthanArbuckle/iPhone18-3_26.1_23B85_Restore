@interface PBUIWallpaperWindowSceneSpecification
- (id)initialActionHandlers;
- (id)initialSettingsDiffActions;
@end

@implementation PBUIWallpaperWindowSceneSpecification

- (id)initialActionHandlers
{
  v6.receiver = self;
  v6.super_class = PBUIWallpaperWindowSceneSpecification;
  v2 = [(UIApplicationSceneSpecification *)&v6 initialActionHandlers];
  v3 = objc_alloc_init(PBUIWallpaperWindowSceneBSActionHandler);
  v4 = [v2 arrayByAddingObject:v3];

  return v4;
}

- (id)initialSettingsDiffActions
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = PBUIWallpaperWindowSceneSpecification;
  v2 = [(UIApplicationSceneSpecification *)&v8 initialSettingsDiffActions];
  v3 = objc_opt_new();
  v9[0] = v3;
  v4 = objc_opt_new();
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  v6 = [v2 arrayByAddingObjectsFromArray:v5];

  return v6;
}

@end