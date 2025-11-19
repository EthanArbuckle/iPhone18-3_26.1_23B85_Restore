@interface UINavigationBar(DCI)
+ (BOOL)mf_shouldUseDesktopClassNavigationBarForTraitCollection:()DCI;
+ (uint64_t)mf_canUseDesktopClassNavigationBar;
@end

@implementation UINavigationBar(DCI)

+ (uint64_t)mf_canUseDesktopClassNavigationBar
{
  result = _UIBarsDesktopNavigationBarEnabled();
  if (result)
  {
    v1 = MEMORY[0x277D75418];

    return [v1 mf_isPadIdiom];
  }

  return result;
}

+ (BOOL)mf_shouldUseDesktopClassNavigationBarForTraitCollection:()DCI
{
  v3 = a3;
  if ([MEMORY[0x277D75780] mf_canUseDesktopClassNavigationBar])
  {
    v4 = [v3 horizontalSizeClass] == 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end