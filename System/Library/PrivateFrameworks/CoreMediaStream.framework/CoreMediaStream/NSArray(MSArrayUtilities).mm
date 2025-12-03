@interface NSArray(MSArrayUtilities)
- (void)MSMutableDeepCopyWithZone:()MSArrayUtilities;
@end

@implementation NSArray(MSArrayUtilities)

- (void)MSMutableDeepCopyWithZone:()MSArrayUtilities
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(self, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(selfCopy);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v12 = [v11 MSMutableDeepCopyWithZone:{a3, v17}];
LABEL_9:
          v13 = v12;
          [v5 addObject:v12];

          goto LABEL_10;
        }

        if ([v11 conformsToProtocol:{&unk_2858D0650, v17}])
        {
          v12 = [v11 copyWithZone:a3];
          goto LABEL_9;
        }

        [v5 addObject:v11];
LABEL_10:
        ++v10;
      }

      while (v8 != v10);
      v14 = [selfCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
      v8 = v14;
    }

    while (v14);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

@end