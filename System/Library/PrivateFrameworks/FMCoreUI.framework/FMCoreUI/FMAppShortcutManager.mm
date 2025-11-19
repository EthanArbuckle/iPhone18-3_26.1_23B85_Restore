@interface FMAppShortcutManager
+ (id)sharedInstance;
- (BOOL)hasShortcutItems;
- (id)createShortcutForItem:(id)a3;
- (void)clearShortcutItems;
- (void)removeShortcutItemWithIentifier:(id)a3;
- (void)setShortcutItem:(id)a3;
- (void)setShortcutItems:(id)a3;
@end

@implementation FMAppShortcutManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[FMAppShortcutManager sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

uint64_t __38__FMAppShortcutManager_sharedInstance__block_invoke()
{
  sharedInstance_instance = objc_alloc_init(FMAppShortcutManager);

  return MEMORY[0x2821F96F8]();
}

- (void)setShortcutItems:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D75128] sharedApplication];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 shortcutItems];
    if ([v7 count])
    {
LABEL_19:

      goto LABEL_20;
    }

    v8 = [v4 count];

    if (v8)
    {
      v7 = [MEMORY[0x277CBEB18] array];
      v9 = LogCategory_Unspecified();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [FMAppShortcutManager setShortcutItems:v9];
      }

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v10 = v4;
      v11 = [v10 countByEnumeratingWithState:&v21 objects:v27 count:16];
      if (v11)
      {
        v12 = v11;
        v20 = v4;
        v13 = 0;
        v14 = *v22;
        do
        {
          v15 = 0;
          v16 = v13;
          do
          {
            if (*v22 != v14)
            {
              objc_enumerationMutation(v10);
            }

            v17 = *(*(&v21 + 1) + 8 * v15);
            v13 = [v17 shortcutIdentifier];

            if ([v13 length])
            {
              v18 = LogCategory_Unspecified();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
              {
                [(FMAppShortcutManager *)v25 setShortcutItems:v17, &v26, v18];
              }

              v19 = [(FMAppShortcutManager *)self createShortcutForItem:v17];
              [v7 addObject:v19];
            }

            ++v15;
            v16 = v13;
          }

          while (v12 != v15);
          v12 = [v10 countByEnumeratingWithState:&v21 objects:v27 count:16];
        }

        while (v12);

        v4 = v20;
      }

      [v6 setShortcutItems:v7];
      goto LABEL_19;
    }
  }

LABEL_20:
}

- (BOOL)hasShortcutItems
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = [v2 shortcutItems];
  v4 = [v3 count] != 0;

  return v4;
}

- (void)setShortcutItem:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D75128] sharedApplication];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [v5 shortcutItems];
    v8 = [v7 mutableCopy];

    v9 = [v4 shortcutIdentifier];
    if ([v9 length])
    {
      v24 = self;
      v25 = v8;
      v26 = v6;
      v27 = v4;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = 0;
        v14 = *v29;
        while (2)
        {
          v15 = 0;
          v16 = v13;
          do
          {
            if (*v29 != v14)
            {
              objc_enumerationMutation(v10);
            }

            v17 = *(*(&v28 + 1) + 8 * v15);
            v13 = [v17 userInfo];

            v18 = [v13 objectForKeyedSubscript:@"FMShortcutItemIdentifierKey"];
            v19 = [v9 isEqualToString:v18];

            if (v19)
            {
              v20 = v17;

              if (v20)
              {
                [v10 removeObject:v20];
              }

              goto LABEL_17;
            }

            ++v15;
            v16 = v13;
          }

          while (v12 != v15);
          v12 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v13 = 0;
      }

      v20 = 0;
LABEL_17:
      v6 = v26;
      v4 = v27;
      v8 = v25;
      v21 = [(FMAppShortcutManager *)v24 createShortcutForItem:v27, v24, v25, v26, v27];
      [v10 insertObject:v21 atIndex:0];
      if ([v10 count] < 5)
      {
        [v6 setShortcutItems:v10];
      }

      else
      {
        v22 = [v10 subarrayWithRange:{0, 4}];
        [v6 setShortcutItems:v22];
      }

      v23 = LogCategory_Unspecified();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [(FMAppShortcutManager *)v4 setShortcutItem:v23];
      }
    }
  }
}

- (void)removeShortcutItemWithIentifier:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277D75128] sharedApplication];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 shortcutItems];
    v7 = [v6 mutableCopy];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v19 = v5;
      v11 = 0;
      v12 = *v21;
LABEL_4:
      v13 = 0;
      v14 = v11;
      while (1)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v20 + 1) + 8 * v13);
        v11 = [v15 userInfo];

        v16 = [v11 objectForKeyedSubscript:@"FMShortcutItemIdentifierKey"];
        v17 = [v3 isEqualToString:v16];

        if (v17)
        {
          break;
        }

        ++v13;
        v14 = v11;
        if (v10 == v13)
        {
          v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v10)
          {
            goto LABEL_4;
          }

          v18 = v8;
          v5 = v19;
          goto LABEL_14;
        }
      }

      v18 = v15;

      if (v18)
      {
        [v8 removeObject:v18];
        v5 = v19;
        [v19 setShortcutItems:v8];
        goto LABEL_14;
      }

      v5 = v19;
    }

    else
    {
      v11 = 0;
      v18 = v8;
LABEL_14:
    }
  }
}

- (id)createShortcutForItem:(id)a3
{
  v3 = a3;
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v3 shortcutUserInfo], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "mutableCopy"), v4, !v5))
  {
    v5 = objc_opt_new();
  }

  v6 = [v3 shortcutIdentifier];
  [v5 setObject:v6 forKeyedSubscript:@"FMShortcutItemIdentifierKey"];

  v7 = [v3 shortcutTitle];
  if (objc_opt_respondsToSelector())
  {
    v8 = [v3 shortcutSubTitle];
  }

  else
  {
    v8 = 0;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v3 shortcutIconContact], (v9 = objc_claimAutoreleasedReturnValue()) == 0) || (v10 = v9, objc_msgSend(MEMORY[0x277D75190], "iconWithContact:", v9), v11 = objc_claimAutoreleasedReturnValue(), v10, !v11))
  {
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([v3 shortcutIconImage], (v12 = objc_claimAutoreleasedReturnValue()) == 0) || (v13 = v12, objc_msgSend(MEMORY[0x277D75190], "iconWithCustomImage:", v12), v11 = objc_claimAutoreleasedReturnValue(), v13, !v11))
    {
      if (objc_opt_respondsToSelector())
      {
        v14 = [v3 shortcutIconImageName];
        if ([v14 length])
        {
          v11 = [MEMORY[0x277D75190] iconWithTemplateImageName:v14];
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }
  }

  v15 = objc_alloc(MEMORY[0x277D75760]);
  v16 = [v3 shortcutType];
  v17 = [v15 initWithType:v16 localizedTitle:v7 localizedSubtitle:v8 icon:v11 userInfo:v5];

  return v17;
}

- (void)clearShortcutItems
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = v2;
  if (v2)
  {
    [v2 setShortcutItems:0];
  }

  v4 = LogCategory_Unspecified();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(FMAppShortcutManager *)v4 clearShortcutItems];
  }
}

- (void)setShortcutItems:(void *)a3 .cold.2(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 shortcutType];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&dword_24A315000, a4, OS_LOG_TYPE_DEBUG, "Item is - %@", a1, 0xCu);
}

- (void)setShortcutItem:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 shortcutIdentifier];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_24A315000, a2, OS_LOG_TYPE_DEBUG, "New shortcut item passed - %@", &v4, 0xCu);
}

@end