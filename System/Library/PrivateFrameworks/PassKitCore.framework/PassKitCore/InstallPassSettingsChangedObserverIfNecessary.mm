@interface InstallPassSettingsChangedObserverIfNecessary
@end

@implementation InstallPassSettingsChangedObserverIfNecessary

void ___InstallPassSettingsChangedObserverIfNecessary_block_invoke()
{
  v1 = [MEMORY[0x1E696ABB0] defaultCenter];
  v0 = [v1 addObserverForName:@"PKPassSettingsDidChangeNotification" object:0 queue:0 usingBlock:&__block_literal_global_740];
}

void ___InstallPassSettingsChangedObserverIfNecessary_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD88];
  v3 = a2;
  v5 = [v2 defaultCenter];
  v4 = [v3 userInfo];

  [v5 postNotificationName:@"PKPassSettingsDidChangeNotification" object:0 userInfo:v4];
}

@end