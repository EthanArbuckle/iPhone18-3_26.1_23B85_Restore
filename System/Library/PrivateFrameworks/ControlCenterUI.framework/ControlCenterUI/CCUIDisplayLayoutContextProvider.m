@interface CCUIDisplayLayoutContextProvider
- (CCUIDisplayLayoutContextProvider)initWithDisplayLayoutMonitorConfiguration:(id)a3;
- (id)foregroundApplicationSceneBundleIdentifiers;
- (id)primaryApplicationSceneBundleIdentifier;
- (void)dealloc;
- (void)invalidate;
@end

@implementation CCUIDisplayLayoutContextProvider

- (CCUIDisplayLayoutContextProvider)initWithDisplayLayoutMonitorConfiguration:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CCUIDisplayLayoutContextProvider;
  v5 = [(CCUIDisplayLayoutContextProvider *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x277D0AD08] monitorWithConfiguration:v4];
    layoutMonitor = v5->_layoutMonitor;
    v5->_layoutMonitor = v6;
  }

  return v5;
}

- (void)dealloc
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CCUIDisplayLayoutContextProvider.m" lineNumber:28 description:@"CCUIModuleInstanceDisplayLayoutProvider requires invalidation before destruction!"];
}

- (void)invalidate
{
  self->_invalidated = 1;
  [(FBSDisplayLayoutMonitor *)self->_layoutMonitor invalidate];
  layoutMonitor = self->_layoutMonitor;
  self->_layoutMonitor = 0;
}

- (id)primaryApplicationSceneBundleIdentifier
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [(FBSDisplayLayoutMonitor *)self->_layoutMonitor currentLayout];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v2 elements];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 isUIApplicationElement] && objc_msgSend(v7, "layoutRole") == 1)
        {
          v4 = [v7 bundleIdentifier];
          goto LABEL_12;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v4;
}

- (id)foregroundApplicationSceneBundleIdentifiers
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(FBSDisplayLayoutMonitor *)self->_layoutMonitor currentLayout];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 elements];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 isUIApplicationElement])
        {
          v11 = [v10 bundleIdentifier];
          [v3 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v3;
}

@end