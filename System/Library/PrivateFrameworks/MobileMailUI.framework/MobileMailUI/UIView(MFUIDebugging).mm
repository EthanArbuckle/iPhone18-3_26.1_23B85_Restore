@interface UIView(MFUIDebugging)
- (uint64_t)mf_activateDebugModeIfEnabled;
- (uint64_t)mf_debugModeEnabled;
- (void)mf_enableDebugModeInView;
@end

@implementation UIView(MFUIDebugging)

- (uint64_t)mf_activateDebugModeIfEnabled
{
  result = [self mf_debugModeEnabled];
  if (result)
  {

    return [self mf_enableDebugModeInView];
  }

  return result;
}

- (uint64_t)mf_debugModeEnabled
{
  v0 = +[MFInternalSettingsCache sharedCache];
  uIDebuggingEnabled = [v0 UIDebuggingEnabled];

  return uIDebuggingEnabled;
}

- (void)mf_enableDebugModeInView
{
  v16 = *MEMORY[0x277D85DE8];
  if (objc_opt_respondsToSelector())
  {
    [self _setDrawsDebugBaselines:1];
  }

  v2 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.0 blue:0.0 alpha:0.25];
  cGColor = [v2 CGColor];
  layer = [self layer];
  [layer setBorderColor:cGColor];

  layer2 = [self layer];
  [layer2 setBorderWidth:1.0];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  subviews = [self subviews];
  v7 = [subviews countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(subviews);
        }

        [*(*(&v11 + 1) + 8 * v9++) mf_enableDebugModeInView];
      }

      while (v7 != v9);
      v7 = [subviews countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end