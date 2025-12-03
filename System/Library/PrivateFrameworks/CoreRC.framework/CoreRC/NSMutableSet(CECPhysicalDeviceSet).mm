@interface NSMutableSet(CECPhysicalDeviceSet)
- (void)physicalDeviceWithAddress:()CECPhysicalDeviceSet;
@end

@implementation NSMutableSet(CECPhysicalDeviceSet)

- (void)physicalDeviceWithAddress:()CECPhysicalDeviceSet
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [self countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(self);
      }

      v9 = *(*(&v12 + 1) + 8 * v8);
      if ([v9 physicalAddress] == a3)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [self countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

@end