@interface NSArray(ExposureNotificationUI)
- (id)enui_filter:()ExposureNotificationUI;
- (id)enui_map:()ExposureNotificationUI;
@end

@implementation NSArray(ExposureNotificationUI)

- (id)enui_map:()ExposureNotificationUI
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = a1;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = v5[2](v5, *(*(&v15 + 1) + 8 * i));
          if (v12)
          {
            [v6 addObject:{v12, v15}];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v9);
    }
  }

  else
  {
    [(NSArray(ExposureNotificationUI) *)a2 enui_map:a1, &v19];
    v6 = v19;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)enui_filter:()ExposureNotificationUI
{
  v4 = a3;
  v5 = MEMORY[0x277CCAC30];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__NSArray_ExposureNotificationUI__enui_filter___block_invoke;
  v10[3] = &unk_2796C3038;
  v11 = v4;
  v6 = v4;
  v7 = [v5 predicateWithBlock:v10];
  v8 = [a1 filteredArrayUsingPredicate:v7];

  return v8;
}

- (uint64_t)enui_map:()ExposureNotificationUI .cold.1(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"NSArray+ExposureNotificationUI.m" lineNumber:14 description:{@"Invalid parameter not satisfying: %@", @"filter"}];

  result = [a2 copy];
  *a3 = result;
  return result;
}

@end