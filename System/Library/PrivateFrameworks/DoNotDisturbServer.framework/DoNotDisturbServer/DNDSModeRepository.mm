@interface DNDSModeRepository
- (id)modeDetailsForIdentifiers:(id)identifiers;
@end

@implementation DNDSModeRepository

- (id)modeDetailsForIdentifiers:(id)identifiers
{
  v24 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v4 = [MEMORY[0x277CBEB58] set];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = identifiersCopy;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    v9 = *MEMORY[0x277D05830];
    v10 = *MEMORY[0x277D05868];
    v18 = *MEMORY[0x277D622D0];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        if ([v12 isEqualToString:v9])
        {
          v13 = 1;
LABEL_12:
          v14 = [[DNDSModeDetails alloc] initWithInterruptionSuppression:v13];
          [v4 addObject:v14];

          continue;
        }

        if (([v12 isEqualToString:@"com.apple.donotdisturb.mode.driving"] & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", v10) & 1) != 0 || objc_msgSend(v12, "isEqualToString:", v18))
        {
          v13 = 2;
          goto LABEL_12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  allObjects = [v4 allObjects];

  v16 = *MEMORY[0x277D85DE8];

  return allObjects;
}

@end