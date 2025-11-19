@interface SUUIShareTemplateViewElement
- (NSArray)activities;
- (id)activityForShareSheetActivityType:(id)a3;
- (id)activityForUIActivityType:(id)a3;
@end

@implementation SUUIShareTemplateViewElement

- (NSArray)activities
{
  v3 = [MEMORY[0x277CBEB18] array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__SUUIShareTemplateViewElement_activities__block_invoke;
  v6[3] = &unk_2798F5B20;
  v4 = v3;
  v7 = v4;
  [(SUUIViewElement *)self enumerateChildrenUsingBlock:v6];

  return v4;
}

void __42__SUUIShareTemplateViewElement_activities__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 elementType] == 116)
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (id)activityForShareSheetActivityType:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(SUUIShareTemplateViewElement *)self activities];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 activityType];
        if ([v10 isEqualToString:v4])
        {
          v6 = v9;

          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)activityForUIActivityType:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = SUUIShareSheetActivityTypeForUIActivityType(a3);
  [(SUUIShareTemplateViewElement *)self activities];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v21 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 activityType];
        if ([v12 isEqualToString:@"*"])
        {
          v13 = v11;

          v8 = v13;
        }

        if ([v12 isEqualToString:v4])
        {
          v14 = v11;

          goto LABEL_15;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0;
  }

  v14 = 0;
LABEL_15:

  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v8;
  }

  v16 = v15;

  return v15;
}

@end