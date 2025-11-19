@interface NSMapTable(GKAdditions)
- (void)_gkEnumerateKeysAndObjectsUsingBlock:()GKAdditions;
@end

@implementation NSMapTable(GKAdditions)

- (void)_gkEnumerateKeysAndObjectsUsingBlock:()GKAdditions
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = NSStringFromSelector(a2);
    v8 = [v6 stringWithFormat:@"No block passed to NSMapTable's %@", v7];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/GKCollectionUtils.m"];
    v10 = [v9 lastPathComponent];
    v11 = [v6 stringWithFormat:@"%@ (block)\n[%s (%s:%d)]", v8, "-[NSMapTable(GKAdditions) _gkEnumerateKeysAndObjectsUsingBlock:]", objc_msgSend(v10, "UTF8String"), 517];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v11}];
  }

  v24 = 0;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = a1;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
LABEL_5:
    v16 = 0;
    while (1)
    {
      if (*v21 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v20 + 1) + 8 * v16);
      v18 = [v12 objectForKey:v17];
      v5[2](v5, v17, v18, &v24);

      if (v24)
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = [v12 countByEnumeratingWithState:&v20 objects:v25 count:16];
        if (v14)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

@end