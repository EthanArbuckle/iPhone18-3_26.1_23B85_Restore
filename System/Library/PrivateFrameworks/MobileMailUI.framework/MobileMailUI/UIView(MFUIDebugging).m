@interface UIView(MFUIDebugging)
- (uint64_t)mf_activateDebugModeIfEnabled;
- (uint64_t)mf_debugModeEnabled;
- (void)mf_enableDebugModeInView;
@end

@implementation UIView(MFUIDebugging)

- (uint64_t)mf_activateDebugModeIfEnabled
{
  result = [a1 mf_debugModeEnabled];
  if (result)
  {

    return [a1 mf_enableDebugModeInView];
  }

  return result;
}

- (uint64_t)mf_debugModeEnabled
{
  v0 = +[MFInternalSettingsCache sharedCache];
  v1 = [v0 UIDebuggingEnabled];

  return v1;
}

- (void)mf_enableDebugModeInView
{
  v16 = *MEMORY[0x277D85DE8];
  if (objc_opt_respondsToSelector())
  {
    [a1 _setDrawsDebugBaselines:1];
  }

  v2 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.0 blue:0.0 alpha:0.25];
  v3 = [v2 CGColor];
  v4 = [a1 layer];
  [v4 setBorderColor:v3];

  v5 = [a1 layer];
  [v5 setBorderWidth:1.0];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [a1 subviews];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v9++) mf_enableDebugModeInView];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end