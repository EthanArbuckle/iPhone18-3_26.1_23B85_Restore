@interface UIDevice(sfHelpers)
- (BOOL)bkui_isRTL;
- (uint64_t)bkui_IsInternalInstall;
@end

@implementation UIDevice(sfHelpers)

- (uint64_t)bkui_IsInternalInstall
{
  if (bkui_IsInternalInstall___onceToken != -1)
  {
    [UIDevice(sfHelpers) bkui_IsInternalInstall];
  }

  return bkui_IsInternalInstall___internalInstall;
}

- (BOOL)bkui_isRTL
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v1 = [mEMORY[0x277D75128] userInterfaceLayoutDirection] == 1;

  return v1;
}

@end