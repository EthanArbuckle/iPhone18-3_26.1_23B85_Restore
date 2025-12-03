@interface NSObject(IntentsUICardKitProvider)
+ (id)inuickp_interactiveBehaviorPrecedenceOrder;
- (uint64_t)inuickp_intrinsicInteractiveBehavior;
@end

@implementation NSObject(IntentsUICardKitProvider)

+ (id)inuickp_interactiveBehaviorPrecedenceOrder
{
  if (inuickp_interactiveBehaviorPrecedenceOrder_onceToken != -1)
  {
    +[NSObject(IntentsUICardKitProvider) inuickp_interactiveBehaviorPrecedenceOrder];
  }

  v1 = inuickp_interactiveBehaviorPrecedenceOrder_interactiveBehaviorPrecedenceOrder;

  return v1;
}

- (uint64_t)inuickp_intrinsicInteractiveBehavior
{
  v25 = *MEMORY[0x277D85DE8];
  if ([self conformsToProtocol:&unk_286786768])
  {
    inuickp_interactiveBehaviorPrecedenceOrder = [objc_opt_class() inuickp_interactiveBehaviorPrecedenceOrder];
    v18 = [inuickp_interactiveBehaviorPrecedenceOrder count];
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
    v19 = inuickp_interactiveBehaviorPrecedenceOrder;
    v4 = [inuickp_interactiveBehaviorPrecedenceOrder indexOfObject:v3];

    v5 = 0;
    if (objc_opt_respondsToSelector())
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      actionCommands = [self actionCommands];
      v7 = [actionCommands countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v7)
      {
        v8 = v7;
        v5 = 0;
        v9 = v18 - v4;
        v10 = *v21;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v21 != v10)
            {
              objc_enumerationMutation(actionCommands);
            }

            v12 = *(*(&v20 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              inuickp_intrinsicInteractiveBehavior = [v12 inuickp_intrinsicInteractiveBehavior];
              v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:inuickp_intrinsicInteractiveBehavior];
              v15 = v18 - [v19 indexOfObject:v14];

              if (v15 > v9)
              {
                v9 = v15;
                v5 = inuickp_intrinsicInteractiveBehavior;
              }
            }
          }

          v8 = [actionCommands countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v8);
      }

      else
      {
        v5 = 0;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

@end