@interface FBScene(InstrumentClusterSceneSettings)
- (void)updateClusterSceneSettingsWithBlock:()InstrumentClusterSceneSettings;
@end

@implementation FBScene(InstrumentClusterSceneSettings)

- (void)updateClusterSceneSettingsWithBlock:()InstrumentClusterSceneSettings
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __79__FBScene_InstrumentClusterSceneSettings__updateClusterSceneSettingsWithBlock___block_invoke;
    v6[3] = &unk_278DA0C18;
    v7 = v4;
    [self updateSettingsWithBlock:v6];
  }
}

@end