@interface NSObject(CCUIGroupRenderingSupport)
- (id)_ccui_punchOutRenderingViews;
- (uint64_t)ccui_configureForGroupRenderingMode:()CCUIGroupRenderingSupport;
@end

@implementation NSObject(CCUIGroupRenderingSupport)

- (id)_ccui_punchOutRenderingViews
{
  if (objc_opt_respondsToSelector())
  {
    punchOutRenderingViews = [self punchOutRenderingViews];
  }

  else
  {
    punchOutRenderingViews = 0;
  }

  return punchOutRenderingViews;
}

- (uint64_t)ccui_configureForGroupRenderingMode:()CCUIGroupRenderingSupport
{
  v17 = *MEMORY[0x1E69E9840];
  if (a3 <= 1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    _ccui_punchOutRenderingViews = [self _ccui_punchOutRenderingViews];
    v6 = [_ccui_punchOutRenderingViews countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(_ccui_punchOutRenderingViews);
          }

          v8 |= [*(*(&v12 + 1) + 8 * i) ccui_configureForPunchOutRendering:a3 == 1];
        }

        v7 = [_ccui_punchOutRenderingViews countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

@end