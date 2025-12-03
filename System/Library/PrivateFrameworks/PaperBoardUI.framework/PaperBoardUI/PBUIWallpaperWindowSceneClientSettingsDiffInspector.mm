@interface PBUIWallpaperWindowSceneClientSettingsDiffInspector
- (void)_observeOtherSetting:(unint64_t)setting withBlock:(id)block;
@end

@implementation PBUIWallpaperWindowSceneClientSettingsDiffInspector

- (void)_observeOtherSetting:(unint64_t)setting withBlock:(id)block
{
  blockCopy = block;
  v7 = blockCopy;
  if (blockCopy)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __86__PBUIWallpaperWindowSceneClientSettingsDiffInspector__observeOtherSetting_withBlock___block_invoke;
    v8[3] = &unk_278362F80;
    v9 = blockCopy;
    [(FBSSettingsDiffInspector *)self observeOtherSetting:setting withBlock:v8];
  }
}

@end