@interface UIView(NAUIAutolayoutDebugging)
+ (void)_naui_beginDebuggingAutolayout;
- (void)naui_descendantsWithAmbiguousLayout;
@end

@implementation UIView(NAUIAutolayoutDebugging)

+ (void)_naui_beginDebuggingAutolayout
{
  v31 = *MEMORY[0x277D85DE8];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"NAUIDebugAutolayout"];

  if (v3)
  {
    _showAutolayoutIssues = 1;
    _logsAutolayoutIssues = 1;
  }

  else
  {
    standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    _showAutolayoutIssues = [standardUserDefaults2 BOOLForKey:@"NAUIDebugAutolayout_Visualize"];

    standardUserDefaults3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    _logsAutolayoutIssues = [standardUserDefaults3 BOOLForKey:@"NAUIDebugAutolayout_EnableLogs"];

    if ((_showAutolayoutIssues & 1) == 0 && _logsAutolayoutIssues != 1)
    {
      return;
    }
  }

  v6 = dispatch_time(0, 1500000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__UIView_NAUIAutolayoutDebugging___naui_beginDebuggingAutolayout__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  dispatch_after(v6, MEMORY[0x277D85CD0], block);
  _applicationKeyWindow = [MEMORY[0x277D75DA0] _applicationKeyWindow];
  if ([_applicationKeyWindow hasAmbiguousLayout])
  {
    v18 = _applicationKeyWindow;
    [_applicationKeyWindow naui_descendantsWithAmbiguousLayout];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = v27 = 0u;
    v8 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      do
      {
        v11 = 0;
        do
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v24 + 1) + 8 * v11);
          NSClassFromString(&cfstr_Uilayoutguide.isa);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v22 = 0u;
            v23 = 0u;
            v20 = 0u;
            v21 = 0u;
            _layoutVariablesWithAmbiguousValue = [v12 _layoutVariablesWithAmbiguousValue];
            v14 = [_layoutVariablesWithAmbiguousValue countByEnumeratingWithState:&v20 objects:v29 count:16];
            if (v14)
            {
              v15 = v14;
              v16 = *v21;
              do
              {
                v17 = 0;
                do
                {
                  if (*v21 != v16)
                  {
                    objc_enumerationMutation(_layoutVariablesWithAmbiguousValue);
                  }

                  [_NAUIAmbigousLayoutView installOnView:v12 forVariable:*(*(&v20 + 1) + 8 * v17++)];
                }

                while (v15 != v17);
                v15 = [_layoutVariablesWithAmbiguousValue countByEnumeratingWithState:&v20 objects:v29 count:16];
              }

              while (v15);
            }
          }

          ++v11;
        }

        while (v11 != v9);
        v9 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v9);
    }

    _applicationKeyWindow = v18;
  }
}

- (void)naui_descendantsWithAmbiguousLayout
{
  v18 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  subviews = [self subviews];
  v4 = [subviews countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(subviews);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        naui_descendantsWithAmbiguousLayout = [v8 naui_descendantsWithAmbiguousLayout];
        if ([naui_descendantsWithAmbiguousLayout count])
        {
          [array addObjectsFromArray:naui_descendantsWithAmbiguousLayout];
        }

        if ([v8 hasAmbiguousLayout])
        {
          [array addObject:v8];
        }
      }

      v5 = [subviews countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  if ([array count])
  {
    v10 = array;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  return v10;
}

@end