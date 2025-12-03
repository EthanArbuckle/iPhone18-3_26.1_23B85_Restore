@interface CAWindowServer(LSS)
- (id)_lss_primaryDisplay;
- (id)lss_extendedDisplays;
- (void)lss_filterDisplays:()LSS into:;
@end

@implementation CAWindowServer(LSS)

- (id)lss_extendedDisplays
{
  v20 = *MEMORY[0x277D85DE8];
  _lss_primaryDisplay = [self _lss_primaryDisplay];
  clones = [_lss_primaryDisplay clones];
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  displays = [self displays];
  v6 = [displays countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(displays);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        [v10 nativeSize];
        if (v11 != 0.0)
        {
          [v10 nativeSize];
          if (v12 != 0.0 && ([v10 displayType] == 1 || objc_msgSend(v10, "displayType") == 2) && (objc_msgSend(clones, "containsObject:", v10) & 1) == 0)
          {
            [v4 addObject:v10];
          }
        }
      }

      v7 = [displays countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_lss_primaryDisplay
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  displays = [self displays];
  v2 = [displays countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = *v9;
    while (2)
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v9 != v3)
        {
          objc_enumerationMutation(displays);
        }

        v5 = *(*(&v8 + 1) + 8 * i);
        if (![v5 displayType])
        {
          v2 = v5;
          goto LABEL_11;
        }
      }

      v2 = [displays countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)lss_filterDisplays:()LSS into:
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  displays = [self displays];
  v9 = [displays countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(displays);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if (v6[2](v6, v13) && [v13 enabled])
        {
          [v7 addObject:v13];
        }
      }

      v10 = [displays countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end